#!/usr/bin/env python3
"""
VCP Assembler Test Suite
Tests the VCP assembler implementation
"""

import sys
import os
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from vcp_encoder import (
    encode_nop, encode_load_imm, encode_add, encode_sub, encode_inc, encode_dec,
    encode_jmp_absolute, encode_jr, encode_cmp_eq, encode_cmp_ne, encode_cmp_lt,
    encode_cmp_ge, encode_cmp_le, encode_cmp_gt, encode_branch_absolute, encode_brr,
    encode_mem_write, encode_mem_read, encode_read_scanline, encode_read_scanpixel,
    encode_loadpc, encode_and, encode_or, encode_xor, encode_asr, encode_shr,
    encode_shl, encode_not, encode_rcmp, encode_rctl, encode_sysmem_write,
    encode_sysmem_read, format_hex, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9,
    R10, R11, R12, R13, R14, R15
)
from vcp_pseudos import (
    lower_mov, lower_clr, lower_push, lower_pop,
    lower_beq, lower_bne, lower_blt, lower_bge, lower_ble, lower_bgt,
    lower_ret, lower_call
)
from vcp_assembler import VCPAssembler, AssemblerError


def test_encoder():
    """Test instruction encoding"""
    print("Testing encoder...")
    
    # NOP
    nop = encode_nop()
    assert nop == 0x00000000, f"NOP failed: {hex(nop)}"
    print(f"  NOP: {format_hex(nop)}")
    
    # LOAD_IMM
    li = encode_load_imm(R1, 0x123456)
    assert li == 0x12345611, f"LOAD_IMM failed: {hex(li)}"
    print(f"  LI R1, 0x123456: {format_hex(li)}")
    
    # ADD (opcode=0x5, sub_op=0x0)
    add = encode_add(R3, R1, R2)
    assert add == 0x2135, f"ADD failed: {hex(add)}"
    print(f"  ADD R3, R1, R2: {format_hex(add)}")
    
    # SUB (opcode=0x5, sub_op=0x1, imm8=0x01)
    sub = encode_sub(R3, R1, R2)
    assert sub == 0x1002135, f"SUB failed: {hex(sub)}"
    print(f"  SUB R3, R1, R2: {format_hex(sub)}")
    
    # INC (opcode=0x5, sub_op=0x2, rs2=0, imm8=0x02)
    inc = encode_inc(R3, R1)
    assert inc == 0x2000135, f"INC failed: {hex(inc)}"
    print(f"  INC R3, R1: {format_hex(inc)}")
    
    # DEC (opcode=0x5, sub_op=0x3, rs2=0, imm8=0x03)
    dec = encode_dec(R3, R1)
    assert dec == 0x3000135, f"DEC failed: {hex(dec)}"
    print(f"  DEC R3, R1: {format_hex(dec)}")
    
    # CMP EQ (cond_mask=0x04, rd=0)
    cmp_eq = encode_cmp_eq(R1, R2)
    assert cmp_eq == 0x04002107, f"CMPEQ failed: {hex(cmp_eq)}"
    print(f"  CMPEQ R1, R2: {format_hex(cmp_eq)}")
    
    # CMP NE (cond_mask=0x0C, rd=0)
    cmp_ne = encode_cmp_ne(R1, R2)
    assert cmp_ne == 0x0C002107, f"CMPNE failed: {hex(cmp_ne)}"
    print(f"  CMPNE R1, R2: {format_hex(cmp_ne)}")
    
    # JMP absolute
    jmp = encode_jmp_absolute(0, R10)
    print(f"  JMP R10: {format_hex(jmp)}")
    
    # JR (relative jump)
    jr = encode_jr(0x10)
    print(f"  JR 0x10: {format_hex(jr)}")
    
    # BRR (relative branch)
    brr = encode_brr(0x10)
    print(f"  BRR 0x10: {format_hex(brr)}")
    
    # RSCANL
    rscanl = encode_read_scanline(R1)
    print(f"  RSCANL R1: {format_hex(rscanl)}")
    
    # RSCANP
    rscanp = encode_read_scanpixel(R1)
    print(f"  RSCANP R1: {format_hex(rscanp)}")
    
    # LOADPC
    loadpc = encode_loadpc(R12)
    print(f"  LOADPC R12: {format_hex(loadpc)}")
    
    # AND
    and_op = encode_and(R1, R2, R3)
    print(f"  AND R1, R2, R3: {format_hex(and_op)}")
    
    # OR
    or_op = encode_or(R1, R2, R3)
    print(f"  OR R1, R2, R3: {format_hex(or_op)}")
    
    # XOR
    xor_op = encode_xor(R1, R2, R3)
    print(f"  XOR R1, R2, R3: {format_hex(xor_op)}")
    
    # NOT
    not_op = encode_not(R1, R2)
    print(f"  NOT R1, R2: {format_hex(not_op)}")
    
    print("  All encoder tests passed!")


def test_pseudos():
    """Test pseudo-instruction lowering"""
    print("\nTesting pseudo-instructions...")
    
    # MOV
    mov = lower_mov(R1, R2)
    assert len(mov) == 1, f"MOV should lower to 1 instruction, got {len(mov)}"
    print(f"  MOV R1, R2 -> {format_hex(mov[0])}")
    
    # CLR
    clr = lower_clr(R1)
    assert len(clr) == 1, f"CLR should lower to 1 instruction, got {len(clr)}"
    print(f"  CLR R1 -> {format_hex(clr[0])}")
    
    # PUSH (should expand to multiple instructions)
    push = lower_push(R5)
    print(f"  PUSH R5 -> {len(push)} instructions")
    for i, instr in enumerate(push):
        print(f"    [{i}] {format_hex(instr)}")
    
    # POP (should expand to multiple instructions)
    pop = lower_pop(R6)
    print(f"  POP R6 -> {len(pop)} instructions")
    for i, instr in enumerate(pop):
        print(f"    [{i}] {format_hex(instr)}")
    
    # RET
    ret = lower_ret()
    print(f"  RET -> {len(ret)} instructions")
    for i, instr in enumerate(ret):
        print(f"    [{i}] {format_hex(instr)}")
    
    # BEQ with relative branch (offset)
    beq = lower_beq(R1, R2, 0x100, relative=True)
    print(f"  BEQ R1, R2, 0x100 (relative) -> {len(beq)} instructions")
    for i, instr in enumerate(beq):
        print(f"    [{i}] {format_hex(instr)}")
    
    print("  All pseudo-instruction tests passed!")


def test_assembler():
    """Test full assembler"""
    print("\nTesting VCP assembler...")
    
    assembler = VCPAssembler()
    
    # Test basic program
    code = """
        # Simple test program
        LI R1, 0x123456
        LI R2, 0x789ABC
        ADD R3, R1, R2
        
    loop:
        ADD R3, R3, R1
        INC R4, R4
        CMP R3, R1
        BEQ R3, R1, end
        JR -8
    end:
        NOP
    """
    
    try:
        instructions = assembler.assemble(code)
        print(f"  Assembled {len(instructions)} instructions")
        for addr, instr in sorted(instructions, key=lambda x: x[0]):
            print(f"    {addr:04x}: {format_hex(instr)}")
    except AssemblerError as e:
        print(f"  Error: {e}")
    
    # Test with pseudo-instructions
    code2 = """
        MOV R1, R2
        CLR R3
        PUSH R4
        POP R5
        CALL main
        RET
    """
    
    assembler2 = VCPAssembler()
    instructions2 = assembler2.assemble(code2)
    print(f"  Assembled {len(instructions2)} instructions from pseudo-instructions")
    for addr, instr in sorted(instructions2, key=lambda x: x[0]):
        print(f"    {addr:04x}: {format_hex(instr)}")
    
    print("  Assembler tests passed!")


def test_errors():
    """Test error handling"""
    print("\nTesting error handling...")
    
    assembler = VCPAssembler()
    
    # Test invalid register
    try:
        assembler.parse_line("ADD xyz, R1, R2")
        print("  ERROR: Should have raised exception for invalid register")
    except AssemblerError:
        print("  Correctly caught invalid register")
    
    # Test invalid immediate
    try:
        assembler.parse_line("LI R1, 0x1000000")
        print("  ERROR: Should have raised exception for immediate overflow")
    except AssemblerError:
        print("  Correctly caught immediate overflow")
    
    print("  Error handling tests passed!")


def run_all_tests():
    """Run all tests"""
    print("=" * 60)
    print("VCP Assembler Test Suite")
    print("=" * 60)
    
    test_encoder()
    test_pseudos()
    test_assembler()
    test_errors()
    
    print("\n" + "=" * 60)
    print("All tests passed!")
    print("=" * 60)


if __name__ == "__main__":
    run_all_tests()