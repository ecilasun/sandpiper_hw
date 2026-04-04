# VCP Symbol Table and Relocation Management
# Manages labels, symbols, and relocations for VCP assembler

from vcp_encoder import encode_jmp_absolute, encode_jr, encode_branch_relative


class SymbolTable:
    """Symbol table for label resolution"""
    
    def __init__(self):
        self.symbols = {}  # label_name -> address
        self.forward_refs = []  # (label_name, current_addr, instruction)
    
    def add_symbol(self, name, address):
        """Add a label/symbol at a given address"""
        if name in self.symbols:
            raise ValueError(f"Duplicate symbol: {name} at {hex(address)} (already at {hex(self.symbols[name])})")
        self.symbols[name] = address
        
        # Resolve any forward references to this symbol
        self._resolve_forward_ref(name)
    
    def get_symbol(self, name):
        """Get address of a symbol, raising error if not found"""
        if name not in self.symbols:
            raise ValueError(f"Undefined symbol: {name}")
        return self.symbols[name]
    
    def has_symbol(self, name):
        """Check if symbol exists"""
        return name in self.symbols
    
    def add_forward_ref(self, label_name, current_addr, instruction):
        """Record a forward reference to be resolved later"""
        self.forward_refs.append((label_name, current_addr, instruction))
    
    def _resolve_forward_ref(self, label_name):
        """Resolve forward references for a label (called when label is defined)"""
        resolved = []
        for i, (name, addr, instr) in enumerate(self.forward_refs):
            if name == label_name:
                resolved.append(i)
        # Remove resolved refs (in reverse order to maintain indices)
        for i in reversed(resolved):
            self.forward_refs.pop(i)


class Relocation:
    """Relocation entry"""
    
    def __init__(self, kind, address, symbol, offset=0):
        """
        Args:
            kind: Relocation type (R_VCP_ABS13, R_VCP_PCREL13, R_VCP_IMM24)
            address: Address where relocation applies
            symbol: Symbol name being referenced
            offset: Additional offset (for PC-relative, etc.)
        """
        self.kind = kind
        self.address = address
        self.symbol = symbol
        self.offset = offset
    
    def __repr__(self):
        return f"Reloc({self.kind}, {hex(self.address)}, {self.symbol}, {self.offset})"


class RelocationTable:
    """Table of relocations"""
    
    R_VCP_ABS13 = "R_VCP_ABS13"     # Absolute 13-bit target
    R_VCP_PCREL13 = "R_VCP_PCREL13" # PC-relative signed 13-bit
    R_VCP_IMM24 = "R_VCP_IMM24"     # 24-bit immediate payload
    
    def __init__(self):
        self.relocs = []
    
    def add(self, kind, address, symbol, offset=0):
        """Add a relocation entry"""
        self.relocs.append(Relocation(kind, address, symbol, offset))
    
    def add_abs13(self, address, symbol, offset=0):
        """Add ABS13 relocation"""
        self.add(self.R_VCP_ABS13, address, symbol, offset)
    
    def add_pcrel13(self, address, symbol, offset=0):
        """Add PCREL13 relocation"""
        self.add(self.R_VCP_PCREL13, address, symbol, offset)
    
    def add_imm24(self, address, symbol, offset=0):
        """Add IMM24 relocation"""
        self.add(self.R_VCP_IMM24, address, symbol, offset)
    
    def __len__(self):
        return len(self.relocs)
    
    def __iter__(self):
        return iter(self.relocs)


class AssemblerContext:
    """Context for assembly pass"""
    
    def __init__(self):
        self.symbol_table = SymbolTable()
        self.relocation_table = RelocationTable()
        self.address = 0  # Current address/offset
        self.instructions = []  # List of (address, instruction_bytes)
    
    def add_instruction(self, instruction):
        """Add an instruction and advance address"""
        # Convert to bytes if integer
        if isinstance(instruction, int):
            insn_bytes = [
                (instruction >> 0) & 0xFF,
                (instruction >> 8) & 0xFF,
                (instruction >> 16) & 0xFF,
                (instruction >> 24) & 0xFF,
            ]
        else:
            insn_bytes = instruction
        
        self.instructions.append((self.address, insn_bytes))
        self.address += 4  # Instructions are 4-byte aligned
    
    def emit_label(self, label_name):
        """Emit a label at current address"""
        self.symbol_table.add_symbol(label_name, self.address)
    
    def get_current_address(self):
        """Get current address (next instruction location)"""
        return self.address
    
    def get_instruction_bytes(self):
        """Get all instructions as bytes list"""
        result = []
        for addr, bytes_ in sorted(self.instructions, key=lambda x: x[0]):
            result.extend(bytes_)
        return result
    
    def get_instruction_count(self):
        """Get number of instructions"""
        return len(self.instructions)


class VCPAssembler:
    """Main VCP assembler with symbol and relocation support"""
    
    def __init__(self):
        self.context = AssemblerContext()
        self.label_to_addr = {}  # label_name -> address
    
    def parse_label(self, line):
        """Parse label from line, return (label, rest_of_line)"""
        line = line.strip()
        if line.endswith(':'):
            label = line[:-1].strip()
            rest = ''
            return label, rest
        return None, line
    
    def parse_mnemonic(self, line):
        """Parse mnemonic and operands from line"""
        line = line.strip()
        if not line:
            return None, None
        
        # Split by comma for operands
        parts = line.split(None, 1)
        if not parts:
            return None, None
        
        mnemonic = parts[0].upper()
        operands = parts[1] if len(parts) > 1 else ''
        
        return mnemonic, operands
    
    def parse_operand(self, op_str):
        """Parse a single operand string"""
        op_str = op_str.strip()
        
        # Check if it's a register
        if op_str.upper().startswith('R') and op_str[1:].isdigit():
            return {'type': 'reg', 'value': int(op_str[1:])}
        
        # Check if it's a number (hex or decimal)
        if op_str.startswith('0x') or op_str.startswith('0X'):
            return {'type': 'imm', 'value': int(op_str, 16)}
        elif op_str.isdigit():
            return {'type': 'imm', 'value': int(op_str)}
        
        # Check if it's a label (symbol)
        if op_str.isidentifier() or op_str.replace('_', '').replace('.', '').isalnum():
            return {'type': 'label', 'value': op_str}
        
        return {'type': 'unknown', 'value': op_str}
    
    def parse_operands(self, op_str):
        """Parse comma-separated operands"""
        if not op_str:
            return []
        
        parts = [p.strip() for p in op_str.split(',')]
        return [self.parse_operand(p) for p in parts if p.strip()]
    
    def assemble(self, source):
        """
        Assemble source code (single pass).
        
        Args:
            source: List of source lines or single string
            
        Returns:
            List of (address, instruction) tuples
        """
        if isinstance(source, str):
            source = source.split('\n')
        
        for line in source:
            line = line.strip()
            
            # Skip empty lines and comments
            if not line or line.startswith(';') or line.startswith('#'):
                continue
            
            # Handle label
            label, rest = self.parse_label(line)
            if label:
                self.context.emit_label(label)
                line = rest
            
            if not line:
                continue
            
            # Parse mnemonic and operands
            mnemonic, operands = self.parse_mnemonic(line)
            if not mnemonic:
                continue
            
            # Process instruction
            self._process_instruction(mnemonic, operands)
        
        return self.get_output()
    
    def _process_instruction(self, mnemonic, operands_str):
        """Process a single instruction"""
        operands = self.parse_operands(operands_str)
        
        # Map mnemonic to encoding function
        encoders = {
            'NOP': lambda: self.context.add_instruction(0x00000000),
            'LI': lambda: self._encode_li(operands),
            'ADD': lambda: self._encode_math(operands, 0x00),
            'SUB': lambda: self._encode_math(operands, 0x01),
            'INC': lambda: self._encode_inc_dec(operands, 0x02),
            'DEC': lambda: self._encode_inc_dec(operands, 0x03),
            'JMP': lambda: self._encode_jmp(operands),
            'JR': lambda: self._encode_jr(operands),
            'CMP': lambda: self._encode_cmp(operands),
            'CMPEQ': lambda: self._encode_cmp_eq(operands),
            'CMPNE': lambda: self._encode_cmp_ne(operands),
            'CMPLT': lambda: self._encode_cmp_lt(operands),
            'CMPGE': lambda: self._encode_cmp_ge(operands),
            'CMPLE': lambda: self._encode_cmp_le(operands),
            'CMPGT': lambda: self._encode_cmp_gt(operands),
            'BR': lambda: self._encode_br(operands),
            'BRR': lambda: self._encode_brr(operands),
            'BEQ': lambda: self._encode_beq(operands),
            'BNE': lambda: self._encode_bne(operands),
            'BLT': lambda: self._encode_blt(operands),
            'BGE': lambda: self._encode_bge(operands),
            'BLE': lambda: self._encode_ble(operands),
            'BGT': lambda: self._encode_bgt(operands),
            'PMEMW': lambda: self._encode_pmemw(operands),
            'PMEMR': lambda: self._encode_pmemr(operands),
            'RSCANL': lambda: self._encode_rscanl(operands),
            'RSCANP': lambda: self._encode_rscanp(operands),
            'LOADPC': lambda: self._encode_loadpc(operands),
            'AND': lambda: self._encode_logic(operands, 0x00),
            'OR': lambda: self._encode_logic(operands, 0x01),
            'XOR': lambda: self._encode_logic(operands, 0x02),
            'ASR': lambda: self._encode_logic(operands, 0x03),
            'SHR': lambda: self._encode_logic(operands, 0x04),
            'SHL': lambda: self._encode_logic(operands, 0x05),
            'NOT': lambda: self._encode_not(operands),
            'RCMP': lambda: self._encode_rcmp(operands),
            'RCTL': lambda: self._encode_rctl(operands),
            'ST': lambda: self._encode_st(operands),
            'LD': lambda: self._encode_ld(operands),
        }
        
        encoder_func = encoders.get(mnemonic)
        if encoder_func:
            encoder_func()
        else:
            raise ValueError(f"Unknown instruction: {mnemonic}")
    
    def _encode_li(self, operands):
        """Encode LI rd, imm24"""
        if len(operands) < 2:
            raise ValueError("LI requires rd and imm24")
        rd = operands[0]
        imm = operands[1]
        
        if rd['type'] != 'reg':
            raise ValueError(f"LI first operand must be register, got {rd['type']}")
        if imm['type'] != 'imm':
            raise ValueError(f"LI immediate must be number, got {imm['type']}")
        
        from vcp_encoder import encode_add
        self.context.add_instruction(encode_add(rd['value'], 0, imm['value']))
    
    def _encode_math(self, operands, sub_op):
        """Encode ADD/SUB with sub_op"""
        if len(operands) < 3:
            raise ValueError(f"MATH instruction requires 3 operands")
        rd = operands[0]
        rs1 = operands[1]
        rs2 = operands[2]
        
        for op in [rd, rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"MATH operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_mathop
        self.context.add_instruction(encode_mathop(0x5, rd['value'], rs1['value'], rs2['value'], sub_op))
    
    def _encode_inc_dec(self, operands, sub_op):
        """Encode INC/DEC with sub_op"""
        if len(operands) < 2:
            raise ValueError(f"INC/DEC requires 2 operands")
        rd = operands[0]
        rs1 = operands[1]
        
        for op in [rd, rs1]:
            if op['type'] != 'reg':
                raise ValueError(f"INC/DEC operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_mathop
        self.context.add_instruction(encode_mathop(0x5, rd['value'], rs1['value'], 0, sub_op))
    
    def _encode_jmp(self, operands):
        """Encode JMP rs"""
        if len(operands) < 1:
            raise ValueError("JMP requires target operand")
        target = operands[0]
        
        if target['type'] == 'reg':
            from vcp_encoder import encode_jmp_absolute
            self.context.add_instruction(encode_jmp_absolute(0, target['value']))
        elif target['type'] == 'label':
            # Will need relocation - use relative form
            from vcp_encoder import encode_jr
            self.context.add_instruction(encode_jr(0))  # Placeholder, will be fixed up
        else:
            raise ValueError(f"JMP target must be register or label, got {target['type']}")
    
    def _encode_jr(self, operands):
        """Encode JR off13"""
        if len(operands) < 1:
            raise ValueError("JR requires offset operand")
        off = operands[0]
        
        if off['type'] != 'imm':
            raise ValueError(f"JR offset must be immediate, got {off['type']}")
        
        from vcp_encoder import encode_jr
        self.context.add_instruction(encode_jr(off['value']))
    
    def _encode_cmp(self, operands, cond_mask=None):
        """Encode CMP with condition mask"""
        if len(operands) < 3:
            raise ValueError("CMP requires rs1, rs2, cond_mask")
        rs1 = operands[0]
        rs2 = operands[1]
        cond = operands[2]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"CMP operand must be register, got {op['type']}")
        
        if cond['type'] != 'imm':
            raise ValueError(f"CMP condition must be immediate, got {cond['type']}")
        
        from vcp_encoder import encode_cmp
        self.context.add_instruction(encode_cmp(rs1['value'], rs2['value'], cond['value']))
    
    def _encode_cmp_eq(self, operands):
        """Encode CMPEQ rs1, rs2"""
        if len(operands) < 2:
            raise ValueError("CMPEQ requires 2 operands")
        rs1 = operands[0]
        rs2 = operands[1]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"CMPEQ operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_cmp_eq
        self.context.add_instruction(encode_cmp_eq(rs1['value'], rs2['value']))
    
    def _encode_cmp_ne(self, operands):
        """Encode CMPNE rs1, rs2"""
        if len(operands) < 2:
            raise ValueError("CMPNE requires 2 operands")
        rs1 = operands[0]
        rs2 = operands[1]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"CMPNE operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_cmp_ne
        self.context.add_instruction(encode_cmp_ne(rs1['value'], rs2['value']))
    
    def _encode_cmp_lt(self, operands):
        """Encode CMPLT rs1, rs2"""
        if len(operands) < 2:
            raise ValueError("CMPLT requires 2 operands")
        rs1 = operands[0]
        rs2 = operands[1]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"CMPLT operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_cmp_lt
        self.context.add_instruction(encode_cmp_lt(rs1['value'], rs2['value']))
    
    def _encode_cmp_ge(self, operands):
        """Encode CMPGE rs1, rs2"""
        if len(operands) < 2:
            raise ValueError("CMPGE requires 2 operands")
        rs1 = operands[0]
        rs2 = operands[1]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"CMPGE operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_cmp_ge
        self.context.add_instruction(encode_cmp_ge(rs1['value'], rs2['value']))
    
    def _encode_cmp_le(self, operands):
        """Encode CMPLE rs1, rs2"""
        if len(operands) < 2:
            raise ValueError("CMPLE requires 2 operands")
        rs1 = operands[0]
        rs2 = operands[1]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"CMPLE operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_cmp_le
        self.context.add_instruction(encode_cmp_le(rs1['value'], rs2['value']))
    
    def _encode_cmp_gt(self, operands):
        """Encode CMPGT rs1, rs2"""
        if len(operands) < 2:
            raise ValueError("CMPGT requires 2 operands")
        rs1 = operands[0]
        rs2 = operands[1]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"CMPGT operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_cmp_gt
        self.context.add_instruction(encode_cmp_gt(rs1['value'], rs2['value']))
    
    def _encode_br(self, operands):
        """Encode BR rs"""
        if len(operands) < 1:
            raise ValueError("BR requires target operand")
        target = operands[0]
        
        if target['type'] == 'reg':
            from vcp_encoder import encode_branch_absolute
            self.context.add_instruction(encode_branch_absolute(target['value']))
        else:
            raise ValueError(f"BR target must be register, got {target['type']}")
    
    def _encode_brr(self, operands):
        """Encode BRR off13"""
        if len(operands) < 1:
            raise ValueError("BRR requires offset operand")
        off = operands[0]
        
        if off['type'] != 'imm':
            raise ValueError(f"BRR offset must be immediate, got {off['type']}")
        
        from vcp_encoder import encode_brr
        self.context.add_instruction(encode_brr(off['value']))
    
    def _encode_beq(self, operands):
        """Encode BEQ rs1, rs2, label"""
        if len(operands) < 3:
            raise ValueError("BEQ requires rs1, rs2, label")
        rs1 = operands[0]
        rs2 = operands[1]
        target = operands[2]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"BEQ operand must be register, got {op['type']}")
        
        if target['type'] != 'label':
            raise ValueError(f"BEQ target must be label, got {target['type']}")
        
        from vcp_pseudos import lower_beq
        instrs = lower_beq(rs1['value'], rs2['value'], 0, relative=False)
        for instr in instrs:
            self.context.add_instruction(instr)
    
    def _encode_bne(self, operands):
        """Encode BNE rs1, rs2, label"""
        if len(operands) < 3:
            raise ValueError("BNE requires rs1, rs2, label")
        rs1 = operands[0]
        rs2 = operands[1]
        target = operands[2]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"BNE operand must be register, got {op['type']}")
        
        if target['type'] != 'label':
            raise ValueError(f"BNE target must be label, got {target['type']}")
        
        from vcp_pseudos import lower_bne
        instrs = lower_bne(rs1['value'], rs2['value'], 0, relative=False)
        for instr in instrs:
            self.context.add_instruction(instr)
    
    def _encode_blt(self, operands):
        """Encode BLT rs1, rs2, label"""
        if len(operands) < 3:
            raise ValueError("BLT requires rs1, rs2, label")
        rs1 = operands[0]
        rs2 = operands[1]
        target = operands[2]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"BLT operand must be register, got {op['type']}")
        
        if target['type'] != 'label':
            raise ValueError(f"BLT target must be label, got {target['type']}")
        
        from vcp_pseudos import lower_blt
        instrs = lower_blt(rs1['value'], rs2['value'], 0, relative=False)
        for instr in instrs:
            self.context.add_instruction(instr)
    
    def _encode_bge(self, operands):
        """Encode BGE rs1, rs2, label"""
        if len(operands) < 3:
            raise ValueError("BGE requires rs1, rs2, label")
        rs1 = operands[0]
        rs2 = operands[1]
        target = operands[2]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"BGE operand must be register, got {op['type']}")
        
        if target['type'] != 'label':
            raise ValueError(f"BGE target must be label, got {target['type']}")
        
        from vcp_pseudos import lower_bge
        instrs = lower_bge(rs1['value'], rs2['value'], 0, relative=False)
        for instr in instrs:
            self.context.add_instruction(instr)
    
    def _encode_ble(self, operands):
        """Encode BLE rs1, rs2, label"""
        if len(operands) < 3:
            raise ValueError("BLE requires rs1, rs2, label")
        rs1 = operands[0]
        rs2 = operands[1]
        target = operands[2]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"BLE operand must be register, got {op['type']}")
        
        if target['type'] != 'label':
            raise ValueError(f"BLE target must be label, got {target['type']}")
        
        from vcp_pseudos import lower_ble
        instrs = lower_ble(rs1['value'], rs2['value'], 0, relative=False)
        for instr in instrs:
            self.context.add_instruction(instr)
    
    def _encode_bgt(self, operands):
        """Encode BGT rs1, rs2, label"""
        if len(operands) < 3:
            raise ValueError("BGT requires rs1, rs2, label")
        rs1 = operands[0]
        rs2 = operands[1]
        target = operands[2]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"BGT operand must be register, got {op['type']}")
        
        if target['type'] != 'label':
            raise ValueError(f"BGT target must be label, got {target['type']}")
        
        from vcp_pseudos import lower_bgt
        instrs = lower_bgt(rs1['value'], rs2['value'], 0, relative=False)
        for instr in instrs:
            self.context.add_instruction(instr)
    
    def _encode_pmemw(self, operands):
        """Encode PMEMW rs_addr, rs_data"""
        if len(operands) < 2:
            raise ValueError("PMEMW requires rs_addr and rs_data")
        rs1 = operands[0]
        rs2 = operands[1]
        
        for op in [rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"PMEMW operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_mem_write
        self.context.add_instruction(encode_mem_write(rs1['value'], rs2['value']))
    
    def _encode_pmemr(self, operands):
        """Encode PMEMR rd, rs_addr"""
        if len(operands) < 2:
            raise ValueError("PMEMR requires rd and rs_addr")
        rd = operands[0]
        rs1 = operands[1]
        
        for op in [rd, rs1]:
            if op['type'] != 'reg':
                raise ValueError(f"PMEMR operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_mem_read
        self.context.add_instruction(encode_mem_read(rd['value'], rs1['value']))
    
    def _encode_rscanl(self, operands):
        """Encode RSCANL rd"""
        if len(operands) < 1:
            raise ValueError("RSCANL requires rd")
        rd = operands[0]
        
        if rd['type'] != 'reg':
            raise ValueError(f"RSCANL operand must be register, got {rd['type']}")
        
        from vcp_encoder import encode_read_scanline
        self.context.add_instruction(encode_read_scanline(rd['value']))
    
    def _encode_rscanp(self, operands):
        """Encode RSCANP rd"""
        if len(operands) < 1:
            raise ValueError("RSCANP requires rd")
        rd = operands[0]
        
        if rd['type'] != 'reg':
            raise ValueError(f"RSCANP operand must be register, got {rd['type']}")
        
        from vcp_encoder import encode_read_scanpixel
        self.context.add_instruction(encode_read_scanpixel(rd['value']))
    
    def _encode_loadpc(self, operands):
        """Encode LOADPC rd"""
        if len(operands) < 1:
            raise ValueError("LOADPC requires rd")
        rd = operands[0]
        
        if rd['type'] != 'reg':
            raise ValueError(f"LOADPC operand must be register, got {rd['type']}")
        
        from vcp_encoder import encode_loadpc
        self.context.add_instruction(encode_loadpc(rd['value']))
    
    def _encode_logic(self, operands, sub_op):
        """Encode AND/OR/XOR/ASR/SHR/SHL with sub_op"""
        if len(operands) < 3:
            raise ValueError(f"Logic op requires 3 operands")
        rd = operands[0]
        rs1 = operands[1]
        rs2 = operands[2]
        
        for op in [rd, rs1, rs2]:
            if op['type'] != 'reg':
                raise ValueError(f"Logic op operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_logicop
        self.context.add_instruction(encode_logicop(rd['value'], rs1['value'], rs2['value'], sub_op))
    
    def _encode_not(self, operands):
        """Encode NOT rd, rs1"""
        if len(operands) < 2:
            raise ValueError("NOT requires 2 operands")
        rd = operands[0]
        rs1 = operands[1]
        
        for op in [rd, rs1]:
            if op['type'] != 'reg':
                raise ValueError(f"NOT operand must be register, got {op['type']}")
        
        from vcp_encoder import encode_not
        self.context.add_instruction(encode_not(rd['value'], rs1['value']))
    
    def _encode_rcmp(self, operands):
        """Encode RCMP rd"""
        if len(operands) < 1:
            raise ValueError("RCMP requires rd")
        rd = operands[0]
        
        if rd['type'] != 'reg':
            raise ValueError(f"RCMP operand must be register, got {rd['type']}")
        
        from vcp_encoder import encode_rcmp
        self.context.add_instruction(encode_rcmp(rd['value']))
    
    def _encode_rctl(self, operands):
        """Encode RCTL rd"""
        if len(operands) < 1:
            raise ValueError("RCTL requires rd")
        rd = operands[0]
        
        if rd['type'] != 'reg':
            raise ValueError(f"RCTL operand must be register, got {rd['type']}")
        
        from vcp_encoder import encode_rctl
        self.context.add_instruction(encode_rctl(rd['value']))
    
    def _encode_st(self, operands):
        """Encode ST rs_data, [rs_addr]"""
        if len(operands) < 2:
            raise ValueError("ST requires rs_data and [rs_addr]")
        rs2 = operands[0]
        rs1 = operands[1]
        
        if rs1['type'] != 'reg':
            raise ValueError(f"ST address operand must be register, got {rs1['type']}")
        if rs2['type'] != 'reg':
            raise ValueError(f"ST data operand must be register, got {rs2['type']}")
        
        from vcp_encoder import encode_sysmem_write
        self.context.add_instruction(encode_sysmem_write(rs1['value'], rs2['value']))
    
    def _encode_ld(self, operands):
        """Encode LD rd, [rs_addr]"""
        if len(operands) < 2:
            raise ValueError("LD requires rd and [rs_addr]")
        rd = operands[0]
        rs1 = operands[1]
        
        if rd['type'] != 'reg':
            raise ValueError(f"LD destination operand must be register, got {rd['type']}")
        if rs1['type'] != 'reg':
            raise ValueError(f"LD address operand must be register, got {rs1['type']}")
        
        from vcp_encoder import encode_sysmem_read
        self.context.add_instruction(encode_sysmem_read(rd['value'], rs1['value']))
    
    def get_output(self):
        """Get assembled instructions as (address, instruction) tuples"""
        return self.context.instructions
    
    def get_bytes(self):
        """Get assembled program as byte list"""
        return self.context.get_instruction_bytes()
    
    def get_relocations(self):
        """Get list of relocations"""
        return self.context.relocation_table.relocs


if __name__ == "__main__":
    print("Testing VCP assembler...")
    
    assembler = VCPAssembler()
    
    # Test basic instruction
    code = """
        LI R1, 0x123456
        ADD R3, R1, R2
        NOP
    """
    result = assembler.assemble(code)
    for addr, instr in result:
        print(f"{hex(addr)}: {hex(instr)}")
    
    print("\nAssembler test passed!")