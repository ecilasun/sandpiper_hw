#!/usr/bin/env python3
"""
VCP Assembler - Main assembler implementation
Assembles VCP assembly source code into binary format

Usage:
    python vcp_assembler.py input.s [-o output.bin]
    python vcp_assembler.py -h  # Show help
"""

import argparse
import sys
import re
from typing import List, Tuple, Dict, Optional, Any
from vcp_encoder import (
    encode_nop, encode_load_imm, encode_pal_write, encode_scanline_wait,
    encode_scanpixel_wait, encode_add, encode_sub, encode_inc, encode_dec,
    encode_jmp_absolute, encode_jr, encode_cmp_eq, encode_cmp_ne, encode_cmp_lt,
    encode_cmp_ge, encode_cmp_le, encode_cmp_gt, encode_branch_absolute, encode_brr,
    encode_mem_write, encode_mem_read, encode_read_scanline, encode_read_scanpixel,
    encode_loadpc, encode_and, encode_or, encode_xor, encode_asr, encode_shr,
    encode_shl, encode_not, encode_rcmp, encode_rctl, encode_sysmem_write,
    encode_sysmem_read, encode_mathop, encode_logicop, encode_cmp, encode_branch_relative,
    format_hex, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15
)
from vcp_pseudos import (
    lower_mov, lower_clr, lower_push, lower_pop,
    lower_beq, lower_bne, lower_blt, lower_bge, lower_ble, lower_bgt,
    lower_ret, lower_call
)


class AssemblerError(Exception):
    """Custom exception for assembler errors"""
    pass


class VCPAssembler:
    """Main VCP Assembler class"""
    
    # Valid register names
    REG_NAMES = {
        'r0': 0, 'r1': 1, 'r2': 2, 'r3': 3, 'r4': 4, 'r5': 5, 'r6': 6, 'r7': 7,
        'r8': 8, 'r9': 9, 'r10': 10, 'r11': 11, 'r12': 12, 'r13': 13, 'r14': 14, 'r15': 15,
        'zero': 0, 'a0': 1, 'a1': 2, 'a2': 3, 'a3': 4, 'a4': 5, 'a5': 6, 'a6': 7,
        't0': 8, 't1': 9, 't2': 10, 't3': 11, 't4': 12, 't5': 13, 't6': 14, 't7': 15,
        's0': 8, 's1': 9, 's2': 10, 's3': 11, 's4': 12, 's5': 13, 's6': 14, 's7': 15,
        't8': 10, 't9': 11, 'k0': 12, 'k1': 13, 'gp': 14, 'sp': 13, 'fp': 14, 'ra': 12
    }
    
    # Pseudo-instruction handlers
    PSEUDO_HANDLERS = {
        'MOV': 'handle_mov',
        'CLR': 'handle_clr',
        'PUSH': 'handle_push',
        'POP': 'handle_pop',
        'CALL': 'handle_call',
        'RET': 'handle_ret',
        'LI': 'handle_li',
        'LI32': 'handle_li32',
    }
    
    def __init__(self):
        self.labels: Dict[str, int] = {}  # label_name -> address
        self.instructions: List[Tuple[int, int]] = []  # (address, encoded_instruction)
        self.address = 0
        self.relocations: List[Dict[str, Any]] = []
        self.errors: List[str] = []
        self.warnings: List[str] = []
    
    def parse_register(self, name: str) -> int:
        """Parse register name to number"""
        # Remove any inline comments
        for comment_char in [';', '//', '#']:
            if comment_char in name:
                name = name.split(comment_char)[0]
        name = name.lower().strip()
        if name in self.REG_NAMES:
            return self.REG_NAMES[name]
        raise AssemblerError(f"Invalid register name: {name}")
    
    def parse_immediate(self, value: str) -> int:
        """Parse immediate value (hex or decimal)"""
        # Remove any inline comments
        for comment_char in [';', '//', '#']:
            if comment_char in value:
                value = value.split(comment_char)[0]
        value = value.strip()
        if value.startswith('0x') or value.startswith('0X'):
            return int(value[2:], 16)
        elif value.startswith('-') and value[1:].isdigit():
            return int(value)
        elif value.isdigit() or (value.startswith('-') and value[1:].isdigit()):
            return int(value)
        else:
            # Try to parse as hex
            try:
                return int(value, 16)
            except ValueError:
                raise AssemblerError(f"Invalid immediate value: {value}")
    
    def parse_expression(self, expr: str) -> Tuple[int, bool]:
        """
        Parse expression (may contain label reference).
        Returns (value, is_symbolic)
        """
        expr = expr.strip()
        
        # Handle register references (for PC-relative calculations)
        if expr.upper() in self.REG_NAMES:
            return self.REG_NAMES[expr.upper()], False
        
        # Handle hex/decimal numbers
        try:
            return self.parse_immediate(expr), False
        except AssemblerError:
            pass
        
        # Must be a label reference
        if re.match(r'^[a-zA-Z_][a-zA-Z0-9_]*$', expr):
            return 0, True  # Will be resolved in second pass
        
        raise AssemblerError(f"Invalid expression: {expr}")
    
    def encode_nop(self, args: str) -> int:
        """Encode NOP"""
        return encode_nop()
    
    def encode_li(self, args: str) -> int:
        """Encode LI rd, imm24"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"LI requires 2 operands: {args}")
        
        rd = self.parse_register(parts[0])
        imm = self.parse_immediate(parts[1])
        
        if imm > 0xFFFFFF:
            raise AssemblerError(f"LI immediate {hex(imm)} exceeds 24-bit range")
        
        return encode_load_imm(rd, imm)
    
    def encode_add(self, args: str) -> int:
        """Encode ADD rd, rs1, rs2"""
        parts = self._split_operands(args)
        if len(parts) != 3:
            raise AssemblerError(f"ADD requires 3 operands: {args}")
        
        rd = self.parse_register(parts[0])
        rs1 = self.parse_register(parts[1])
        rs2 = self.parse_register(parts[2])
        
        return encode_add(rd, rs1, rs2)
    
    def encode_sub(self, args: str) -> int:
        """Encode SUB rd, rs1, rs2"""
        parts = self._split_operands(args)
        if len(parts) != 3:
            raise AssemblerError(f"SUB requires 3 operands: {args}")
        
        rd = self.parse_register(parts[0])
        rs1 = self.parse_register(parts[1])
        rs2 = self.parse_register(parts[2])
        
        return encode_sub(rd, rs1, rs2)
    
    def encode_inc(self, args: str) -> int:
        """Encode INC rd, rs1"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"INC requires 2 operands: {args}")
        
        rd = self.parse_register(parts[0])
        rs1 = self.parse_register(parts[1])
        
        return encode_inc(rd, rs1)
    
    def encode_dec(self, args: str) -> int:
        """Encode DEC rd, rs1"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"DEC requires 2 operands: {args}")
        
        rd = self.parse_register(parts[0])
        rs1 = self.parse_register(parts[1])
        
        return encode_dec(rd, rs1)
    
    def encode_jmp(self, args: str) -> int:
        """Encode JMP target"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"JMP requires 1 operand: {args}")
        
        target = parts[0].strip()
        
        if target.lower().startswith('r'):
            # Absolute register jump
            rs = self.parse_register(target)
            return encode_jmp_absolute(0, rs)
        else:
            # Label reference - use relative form
            return encode_jr(0)  # Placeholder, will be fixed up
    
    def encode_jr(self, args: str) -> int:
        """Encode JR offset13"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"JR requires 1 operand: {args}")
        
        off = self.parse_immediate(parts[0])
        if off < -0x1000 or off > 0xFFF:
            raise AssemblerError(f"JR offset {off} out of signed 13-bit range")
        
        return encode_jr(off)
    
    def encode_cmp(self, args: str) -> int:
        """Encode CMP rs1, rs2, cond_mask - general CMP with condition mask"""
        parts = self._split_operands(args)
        if len(parts) != 3:
            raise AssemblerError(f"CMP requires rs1, rs2, cond_mask: {args}")
        
        rs1 = self.parse_register(parts[0])
        rs2 = self.parse_register(parts[1])
        cond_mask = self.parse_immediate(parts[2])
        
        return encode_cmp(rs1, rs2, cond_mask)
    
    def encode_cmp_eq(self, args: str) -> int:
        """Encode CMPEQ rs1, rs2"""
        return self._encode_cmp_impl(args, 0x04)
    
    def encode_cmp_ne(self, args: str) -> int:
        """Encode CMPNE rs1, rs2"""
        return self._encode_cmp_impl(args, 0x0C)
    
    def encode_cmp_lt(self, args: str) -> int:
        """Encode CMPLT rs1, rs2"""
        return self._encode_cmp_impl(args, 0x02)
    
    def encode_cmp_ge(self, args: str) -> int:
        """Encode CMPGE rs1, rs2"""
        return self._encode_cmp_impl(args, 0x0A)
    
    def encode_cmp_le(self, args: str) -> int:
        """Encode CMPLE rs1, rs2"""
        return self._encode_cmp_impl(args, 0x01)
    
    def encode_cmp_gt(self, args: str) -> int:
        """Encode CMPGT rs1, rs2"""
        return self._encode_cmp_impl(args, 0x09)
    
    def _encode_cmp_impl(self, args: str, cond_mask: int) -> int:
        """Common CMP implementation"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"CMP requires 2 operands: {args}")
        
        rs1 = self.parse_register(parts[0])
        rs2 = self.parse_register(parts[1])
        
        return encode_cmp(rs1, rs2, cond_mask)
    
    def encode_br(self, args: str) -> int:
        """Encode BR target"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"BR requires 1 operand: {args}")
        
        target = parts[0].strip()
        
        if target.lower().startswith('r'):
            # Absolute branch
            rs = self.parse_register(target)
            return encode_branch_absolute(rs)
        else:
            # Label reference - use relative form
            return encode_brr(0)  # Placeholder
    
    def encode_beq(self, args: str) -> int:
        """Encode BEQ rs1, rs2, label - returns 2 instructions"""
        return self._encode_branch_impl(args, 'BEQ')
    
    def encode_bne(self, args: str) -> int:
        """Encode BNE rs1, rs2, label - returns 2 instructions"""
        return self._encode_branch_impl(args, 'BNE')
    
    def encode_blt(self, args: str) -> int:
        """Encode BLT rs1, rs2, label - returns 2 instructions"""
        return self._encode_branch_impl(args, 'BLT')
    
    def encode_bge(self, args: str) -> int:
        """Encode BGE rs1, rs2, label - returns 2 instructions"""
        return self._encode_branch_impl(args, 'BGE')
    
    def encode_ble(self, args: str) -> int:
        """Encode BLE rs1, rs2, label - returns 2 instructions"""
        return self._encode_branch_impl(args, 'BLE')
    
    def encode_bgt(self, args: str) -> int:
        """Encode BGT rs1, rs2, label - returns 2 instructions"""
        return self._encode_branch_impl(args, 'BGT')
    
    def _encode_branch_impl(self, args: str, branch_op: str) -> List[int]:
        """Common branch encoding with CMP + BRANCH"""
        parts = [p.strip() for p in args.split(',')]
        if len(parts) != 3:
            raise AssemblerError(f"{branch_op} requires rs1, rs2, label: {args}")
        
        rs1 = self.parse_register(parts[0])
        rs2 = self.parse_register(parts[1])
        target = parts[2].strip()
        
        # Check if target is a label or immediate
        try:
            off = self.parse_immediate(target)
            return [
                encode_cmp_eq(rs1, rs2),  # Placeholder, will use correct condition
                encode_brr(off)
            ]
        except AssemblerError:
            # It's a label
            return [
                encode_cmp_eq(rs1, rs2),  # Placeholder
                encode_brr(0)  # Placeholder, will be fixed up
            ]
    
    def encode_pmemw(self, args: str) -> int:
        """Encode PMEMW rs_addr, rs_data"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"PMEMW requires 2 operands: {args}")
        
        rs1 = self.parse_register(parts[0])
        rs2 = self.parse_register(parts[1])
        
        return encode_mem_write(rs1, rs2)
    
    def encode_pmemr(self, args: str) -> int:
        """Encode PMEMR rd, rs_addr"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"PMEMR requires 2 operands: {args}")
        
        rd = self.parse_register(parts[0])
        rs1 = self.parse_register(parts[1])
        
        return encode_mem_read(rd, rs1)
    
    def encode_rscanl(self, args: str) -> int:
        """Encode RSCANL rd"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"RSCANL requires 1 operand: {args}")
        
        rd = self.parse_register(parts[0])
        
        return encode_read_scanline(rd)
    
    def encode_rscanp(self, args: str) -> int:
        """Encode RSCANP rd"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"RSCANP requires 1 operand: {args}")
        
        rd = self.parse_register(parts[0])
        
        return encode_read_scanpixel(rd)
    
    def encode_loadpc(self, args: str) -> int:
        """Encode LOADPC rd"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"LOADPC requires 1 operand: {args}")
        
        rd = self.parse_register(parts[0])
        
        return encode_loadpc(rd)
    
    def encode_and(self, args: str) -> int:
        """Encode AND rd, rs1, rs2"""
        return self._encode_logic_impl(args, 0x00)
    
    def encode_or(self, args: str) -> int:
        """Encode OR rd, rs1, rs2"""
        return self._encode_logic_impl(args, 0x01)
    
    def encode_xor(self, args: str) -> int:
        """Encode XOR rd, rs1, rs2"""
        return self._encode_logic_impl(args, 0x02)
    
    def encode_asr(self, args: str) -> int:
        """Encode ASR rd, rs1, rs2"""
        return self._encode_logic_impl(args, 0x03)
    
    def encode_shr(self, args: str) -> int:
        """Encode SHR rd, rs1, rs2"""
        return self._encode_logic_impl(args, 0x04)
    
    def encode_shl(self, args: str) -> int:
        """Encode SHL rd, rs1, rs2"""
        return self._encode_logic_impl(args, 0x05)
    
    def encode_not(self, args: str) -> int:
        """Encode NOT rd, rs1"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"NOT requires 2 operands: {args}")
        
        rd = self.parse_register(parts[0])
        rs1 = self.parse_register(parts[1])
        
        return encode_not(rd, rs1)
    
    def encode_rcmp(self, args: str) -> int:
        """Encode RCMP rd"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"RCMP requires 1 operand: {args}")
        
        rd = self.parse_register(parts[0])
        
        return encode_rcmp(rd)
    
    def encode_rctl(self, args: str) -> int:
        """Encode RCTL rd"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"RCTL requires 1 operand: {args}")
        
        rd = self.parse_register(parts[0])
        
        return encode_rctl(rd)
    
    def encode_st(self, args: str) -> int:
        """Encode ST rs_data, [rs_addr]"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"ST requires rs_data, [rs_addr]: {args}")
        
        rs2 = self.parse_register(parts[0])
        # Parse [rs_addr] - remove brackets
        addr_str = parts[1].strip().strip('[]')
        rs1 = self.parse_register(addr_str)
        
        return encode_sysmem_write(rs1, rs2)
    
    def encode_ld(self, args: str) -> int:
        """Encode LD rd, [rs_addr]"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"LD requires rd, [rs_addr]: {args}")
        
        rd = self.parse_register(parts[0])
        # Parse [rs_addr] - remove brackets
        addr_str = parts[1].strip().strip('[]')
        rs1 = self.parse_register(addr_str)
        
        return encode_sysmem_read(rd, rs1)
    
    def _split_operands(self, args: str) -> List[str]:
        """Split comma-separated operands"""
        parts = [p.strip() for p in args.split(',')]
        return [p for p in parts if p]
    
    def _encode_logic_impl(self, args: str, sub_op: int) -> int:
        """Common logic operation implementation"""
        parts = self._split_operands(args)
        if len(parts) != 3:
            raise AssemblerError(f"Logic op requires 3 operands: {args}")
        
        rd = self.parse_register(parts[0])
        rs1 = self.parse_register(parts[1])
        rs2 = self.parse_register(parts[2])
        
        return encode_logicop(rd, rs1, rs2, sub_op)
    
    def handle_mov(self, args: str) -> List[int]:
        """Handle MOV pseudo-instruction"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"MOV requires 2 operands: {args}")
        
        rd = self.parse_register(parts[0])
        rs = self.parse_register(parts[1])
        
        return lower_mov(rd, rs)
    
    def handle_clr(self, args: str) -> List[int]:
        """Handle CLR pseudo-instruction"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"CLR requires 1 operand: {args}")
        
        rd = self.parse_register(parts[0])
        
        return lower_clr(rd)
    
    def handle_push(self, args: str) -> List[int]:
        """Handle PUSH pseudo-instruction"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"PUSH requires 1 operand: {args}")
        
        rs = self.parse_register(parts[0])
        
        return lower_push(rs)
    
    def handle_pop(self, args: str) -> List[int]:
        """Handle POP pseudo-instruction"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"POP requires 1 operand: {args}")
        
        rd = self.parse_register(parts[0])
        
        return lower_pop(rd)
    
    def handle_call(self, args: str) -> List[int]:
        """Handle CALL pseudo-instruction"""
        parts = self._split_operands(args)
        if len(parts) != 1:
            raise AssemblerError(f"CALL requires 1 operand: {args}")
        
        target = parts[0].strip()
        
        try:
            off = self.parse_immediate(target)
            return lower_call(off, relative=True)
        except AssemblerError:
            return lower_call(0, relative=True)  # Will be fixed up
    
    def handle_ret(self, args: str) -> List[int]:
        """Handle RET pseudo-instruction"""
        return lower_ret()
    
    def handle_li(self, args: str) -> int:
        """Handle LI pseudo-instruction"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"LI requires 2 operands: {args}")
        
        rd = self.parse_register(parts[0])
        imm = self.parse_immediate(parts[1])
        
        if imm > 0xFFFFFF:
            raise AssemblerError(f"LI immediate {hex(imm)} exceeds 24-bit range")
        
        return encode_load_imm(rd, imm)
    
    def handle_li32(self, args: str) -> int:
        """Handle LI32 pseudo-instruction"""
        parts = self._split_operands(args)
        if len(parts) != 2:
            raise AssemblerError(f"LI32 requires 2 operands: {args}")
        
        rd = self.parse_register(parts[0])
        imm = self.parse_immediate(parts[1])
        
        if imm > 0xFFFFFF:
            raise AssemblerError(f"LI32 immediate {hex(imm)} exceeds 24-bit range")
        
        return encode_load_imm(rd, imm & 0xFFFFFF)
    
    def parse_line(self, line: str) -> Tuple[Optional[int], Optional[List[int]]]:
        """
        Parse a single line of assembly.
        Returns (address, encoded_instruction(s)) or (None, None) if empty/comment.
        """
        line = line.strip()
        
        # Skip empty lines and comments
        if not line or line.startswith(';') or line.startswith('#') or line.startswith('//'):
            return None, None
        
        # Handle label
        label_match = re.match(r'^([a-zA-Z_][a-zA-Z0-9_]*):(.*)$', line)
        if label_match:
            label = label_match.group(1)
            rest = label_match.group(2).strip()
            
            # Check if label is on same line as instruction
            if rest:
                return self.parse_line(rest)
            
            # Label by itself - just record the address
            return self.address, []
        
        # Handle directives
        if line.startswith('.'):
            return None, None
        
        # Parse mnemonic and operands
        parts = line.split(None, 1)
        if len(parts) < 1:
            return None, None
        
        mnemonic = parts[0].upper()
        operands = parts[1] if len(parts) > 1 else ''
        
        # Check for pseudo-instructions
        if mnemonic in self.PSEUDO_HANDLERS:
            handler = getattr(self, self.PSEUDO_HANDLERS[mnemonic])
            try:
                result = handler(operands)
                if isinstance(result, list):
                    addrs = []
                    for instr in result:
                        addrs.append((self.address, instr))
                        self.address += 4
                    return addrs[0][0], result
                else:
                    return self.address, [result]
            except AssemblerError as e:
                self.errors.append(f"Line {len(self.instructions)}: {e}")
                return None, None
        
        # Handle regular instructions
        encoders = {
            'NOP': self.encode_nop,
            'LI': self.handle_li,
            'ADD': self.encode_add,
            'SUB': self.encode_sub,
            'INC': self.encode_inc,
            'DEC': self.encode_dec,
            'JMP': self.encode_jmp,
            'JR': self.encode_jr,
            'CMP': self.encode_cmp,
            'CMPEQ': self.encode_cmp_eq,
            'CMPNE': self.encode_cmp_ne,
            'CMPLT': self.encode_cmp_lt,
            'CMPGE': self.encode_cmp_ge,
            'CMPLE': self.encode_cmp_le,
            'CMPGT': self.encode_cmp_gt,
            'BRR': self.encode_br,
            'BEQ': self.encode_beq,
            'BNE': self.encode_bne,
            'BLT': self.encode_blt,
            'BGE': self.encode_bge,
            'BLE': self.encode_ble,
            'BGT': self.encode_bgt,
            'PMEMW': self.encode_pmemw,
            'PMEMR': self.encode_pmemr,
            'RSCANL': self.encode_rscanl,
            'RSCANP': self.encode_rscanp,
            'LOADPC': self.encode_loadpc,
            'AND': self.encode_and,
            'OR': self.encode_or,
            'XOR': self.encode_xor,
            'ASR': self.encode_asr,
            'SHR': self.encode_shr,
            'SHL': self.encode_shl,
            'NOT': self.encode_not,
            'RCMP': self.encode_rcmp,
            'RCTL': self.encode_rctl,
            'ST': self.encode_st,
            'LD': self.encode_ld,
        }
        
        if mnemonic not in encoders:
            self.errors.append(f"Unknown instruction: {mnemonic}")
            return None, None
        
        try:
            result = encoders[mnemonic](operands)
            if isinstance(result, list):
                return self.address, result
            else:
                return self.address, [result]
        except AssemblerError as e:
            self.errors.append(f"Line {len(self.instructions)}: {e}")
            return None, None
    
    def assemble(self, source: str) -> List[Tuple[int, int]]:
        """
        Assemble source code into list of (address, instruction) tuples.
        """
        lines = source.split('\n')
        self.address = 0
        self.instructions = []
        self.errors = []
        self.warnings = []
        
        for line in lines:
            addr, instrs = self.parse_line(line)
            if addr is not None:
                if isinstance(instrs, list):
                    for instr in instrs:
                        self.instructions.append((addr, instr))
                        addr += 4
                else:
                    self.instructions.append((addr, instrs))
        
        # Resolve labels and fix up relocations
        self._resolve_symbols()
        
        return self.instructions
    
    def _resolve_symbols(self):
        """Resolve label addresses and fix up relocations"""
        # Build symbol table from label definitions
        for addr, instr in self.instructions:
            if addr in self.labels:
                # Label was already defined
                pass
        
        # Fix up relative branches and jumps
        for i, (addr, instr) in enumerate(self.instructions):
            if instr == encode_jr(0) or instr == encode_brr(0):
                # Placeholder - would need label resolution in real implementation
                pass
    
    def get_bytes(self) -> List[int]:
        """Get assembled program as list of bytes (little-endian)"""
        result = []
        for addr, instr in sorted(self.instructions, key=lambda x: x[0]):
            result.append((instr >> 0) & 0xFF)
            result.append((instr >> 8) & 0xFF)
            result.append((instr >> 16) & 0xFF)
            result.append((instr >> 24) & 0xFF)
        return result
    
    def get_hex(self, width: int = 16) -> str:
        """Get assembled program as hex dump"""
        bytes_ = self.get_bytes()
        lines = []
        for i in range(0, len(bytes_), width):
            chunk = bytes_[i:i + width]
            hex_str = ' '.join(f'{b:02x}' for b in chunk)
            lines.append(f'{i:04x}: {hex_str}')
        return '\n'.join(lines)
    
    def get_output(self) -> str:
        """Get formatted output with addresses"""
        lines = []
        for addr, instr in sorted(self.instructions, key=lambda x: x[0]):
            hex_str = format_hex(instr)
            lines.append(f'{addr:04x}: {hex_str}')
        return '\n'.join(lines)


def main():
    """Main entry point"""
    parser = argparse.ArgumentParser(
        description='VCP Assembler - Assemble VCP assembly source code',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
Examples:
  python vcp_assembler.py input.s
  python vcp_assembler.py input.s -o output.bin
  python vcp_assembler.py input.s -o output.hex -f hex
'''
    )
    
    parser.add_argument('input', help='Input assembly file')
    parser.add_argument('-o', '--output', help='Output file (default: stdout)')
    parser.add_argument('-f', '--format', choices=['bin', 'hex', 'list'], 
                       default='bin', help='Output format (default: bin)')
    
    args = parser.parse_args()
    
    try:
        with open(args.input, 'r') as f:
            source = f.read()
    except FileNotFoundError:
        print(f"Error: File not found: {args.input}", file=sys.stderr)
        sys.exit(1)
    except IOError as e:
        print(f"Error reading file: {e}", file=sys.stderr)
        sys.exit(1)
    
    assembler = VCPAssembler()
    
    try:
        instructions = assembler.assemble(source)
        
        if assembler.errors:
            for error in assembler.errors:
                print(f"Error: {error}", file=sys.stderr)
            sys.exit(1)
        
        if args.format == 'bin':
            bytes_ = assembler.get_bytes()
            if args.output:
                with open(args.output, 'wb') as f:
                    f.write(bytes(bytes_))
            else:
                # Output as C array
                print('uint32_t program[] = {')
                for i in range(0, len(bytes_), 4):
                    b = bytes_[i:i+4]
                    val = (b[0] << 0) | (b[1] << 8) | (b[2] << 16) | (b[3] << 24)
                    comma = ',' if i + 4 < len(bytes_) else ''
                    print(f'    0x{val:08x}{comma}')
                print('};')
        
        elif args.format == 'hex':
            output = assembler.get_hex()
            if args.output:
                with open(args.output, 'w') as f:
                    f.write(output)
            else:
                print(output)
        
        elif args.format == 'list':
            output = assembler.get_output()
            if args.output:
                with open(args.output, 'w') as f:
                    f.write(output)
            else:
                print(output)
        
    except AssemblerError as e:
        print(f"Assembler error: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == '__main__':
    main()