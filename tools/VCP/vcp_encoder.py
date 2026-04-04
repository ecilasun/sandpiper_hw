# VCP Instruction Encoder
# Implements all VCP instruction encodings per VCP_ISA_v0.1.md

def encode_instruction(opcode, rd, rs1, rs2, imm8=0, imm16=0, imm24=0):
    """
    Encode a 32-bit VCP instruction.
    
    Packing equation (from ISA):
    insn = ((imm24 & 0xFFFFFF) << 8) |
           ((rs2 & 0xF) << 12) |
           ((rs1 & 0xF) << 8) |
           ((rd & 0xF) << 4) |
           (opcode & 0xF)
    
    Note: imm16 is implicit as insn[31:16], imm8 as insn[31:24]
    """
    assert 0 <= opcode <= 0xF, f"opcode must be 4-bit (0-15), got {opcode}"
    assert 0 <= rd <= 0xF, f"rd must be 4-bit (0-15), got {rd}"
    assert 0 <= rs1 <= 0xF, f"rs1 must be 4-bit (0-15), got {rs1}"
    assert 0 <= rs2 <= 0xF, f"rs2 must be 4-bit (0-15), got {rs2}"
    assert 0 <= imm8 <= 0xFF, f"imm8 must be 8-bit (0-255), got {imm8}"
    assert 0 <= imm16 <= 0xFFFF, f"imm16 must be 16-bit (0-65535), got {imm16}"
    assert 0 <= imm24 <= 0xFFFFFF, f"imm24 must be 24-bit (0-16777215), got {imm24}"
    
    insn = (
        ((imm24 & 0xFFFFFF) << 8) |
        ((rs2 & 0xF) << 12) |
        ((rs1 & 0xF) << 8) |
        ((rd & 0xF) << 4) |
        (opcode & 0xF)
    )
    return insn


def encode_nop():
    """Encode NOP instruction (opcode=0x0)"""
    return encode_instruction(0x0, 0, 0, 0)


def encode_load_imm(rd, imm24):
    """Encode LOAD_IMM (opcode=0x1)"""
    return encode_instruction(0x1, rd, 0, 0, imm8=0, imm16=0, imm24=imm24)


def encode_pal_write(rs1, rs2):
    """Encode PAL_WRITE (opcode=0x2)"""
    return encode_instruction(0x2, 0, rs1, rs2)


def encode_scanline_wait(rs1):
    """Encode SCANLINE_WAIT (opcode=0x3)"""
    return encode_instruction(0x3, 0, rs1, 0)


def encode_scanpixel_wait(rs1):
    """Encode SCANPIXEL_WAIT (opcode=0x4)"""
    return encode_instruction(0x4, 0, rs1, 0)


def encode_mathop(opcode, rd, rs1, rs2, sub_op):
    """
    Encode MATHOP (opcode=0x5) with sub-op.
    
    Sub-ops:
    - 0x00: ADD
    - 0x01: SUB
    - 0x02: INC
    - 0x03: DEC
    
    The sub_op is encoded in imm8 (bits [31:24]) which overlaps with imm24.
    Since imm24 is shifted by 8, we need to shift sub_op by 16 to place it
    in bits [31:24] of the final instruction.
    """
    assert sub_op in (0x00, 0x01, 0x02, 0x03), f"Invalid math sub-op: {sub_op}"
    # imm24 contains sub_op in upper 8 bits, so shift sub_op left by 16
    imm24 = sub_op << 16
    return encode_instruction(0x5, rd, rs1, rs2, imm8=sub_op, imm24=imm24)


def encode_add(rd, rs1, rs2):
    """Encode ADD rd, rs1, rs2"""
    return encode_mathop(0x5, rd, rs1, rs2, 0x00)


def encode_sub(rd, rs1, rs2):
    """Encode SUB rd, rs1, rs2"""
    return encode_mathop(0x5, rd, rs1, rs2, 0x01)


def encode_inc(rd, rs1):
    """Encode INC rd, rs1"""
    return encode_mathop(0x5, rd, rs1, 0, 0x02)


def encode_dec(rd, rs1):
    """Encode DEC rd, rs1"""
    return encode_mathop(0x5, rd, rs1, 0, 0x03)


def encode_jmp_absolute(rd, rs1):
    """Encode JMP via absolute register (rd bit0=0)"""
    return encode_instruction(0x6, rd, rs1, 0)


def encode_jmp_relative(imm16):
    """Encode JMP via PC-relative offset (rd bit0=1)"""
    # imm16 must be signed 13-bit
    assert -0x1000 <= imm16 <= 0xFFF, f"imm16 must be signed 13-bit, got {imm16}"
    # Convert to unsigned 16-bit representation
    if imm16 < 0:
        imm16 = (1 << 16) + imm16
    return encode_instruction(0x6, 0x1, 0, 0, imm8=0, imm16=imm16, imm24=0)


def encode_jr(off13):
    """Encode JR off13 - PC-relative jump"""
    return encode_jmp_relative(off13)


def encode_cmp(rs1, rs2, cond_mask):
    """
    Encode CMP with condition mask.
    
    cond_mask encodes:
    - bit3: inv (invert)
    - bit2: mEQ
    - bit1: mLT
    - bit0: mLE
    
    The cond_mask is encoded in imm8 (bits [31:24]), which overlaps with imm24.
    Since imm24 is shifted by 8, we need to pass cond_mask << 16 as imm24.
    """
    assert 0 <= cond_mask <= 0xF, f"cond_mask must be 4-bit, got {cond_mask}"
    # imm24 contains cond_mask in upper 8 bits (bits [31:24] of instruction)
    # So we shift cond_mask left by 16 to place it correctly
    imm24 = cond_mask << 16
    return encode_instruction(0x7, 0, rs1, rs2, imm8=cond_mask, imm24=imm24)


def encode_branch_absolute(rs1):
    """Encode BR via absolute register (rd bit0=0)"""
    return encode_instruction(0x8, 0, rs1, 0)


def encode_branch_relative(imm16):
    """Encode BR via PC-relative offset (rd bit0=1)"""
    assert -0x1000 <= imm16 <= 0xFFF, f"imm16 must be signed 13-bit, got {imm16}"
    if imm16 < 0:
        imm16 = (1 << 16) + imm16
    return encode_instruction(0x8, 0x1, 0, 0, imm8=0, imm16=imm16, imm24=0)


def encode_brr(off13):
    """Encode BRR off13 - PC-relative conditional branch"""
    return encode_branch_relative(off13)


def encode_mem_write(rs1, rs2):
    """Encode MEM_WRITE (opcode=0x9)"""
    return encode_instruction(0x9, 0, rs1, rs2)


def encode_mem_read(rd, rs1):
    """Encode MEM_READ (opcode=0xA)"""
    return encode_instruction(0xA, rd, rs1, 0)


def encode_read_scanline(rd):
    """Encode RSCANL rd - read scanline into rd"""
    return encode_instruction(0xB, rd, 0, 0, imm8=0)


def encode_read_scanpixel(rd):
    """Encode RSCANP rd - read scanpixel into rd"""
    return encode_instruction(0xB, rd, 1, 0, imm8=0)


def encode_loadpc(rd):
    """Encode LOADPC rd - copy PC+4 to register"""
    return encode_instruction(0xC, rd, 0, 0)


def encode_logicop(rd, rs1, rs2, sub_op):
    """
    Encode LOGICOP (opcode=0xD) with sub-op.
    
    Sub-ops:
    - 0x00: AND
    - 0x01: OR
    - 0x02: XOR
    - 0x03: ASR
    - 0x04: SHR
    - 0x05: SHL
    - 0x06: NOT
    - 0x07: RCMP
    - 0x08: RCTL
    """
    assert 0 <= sub_op <= 0x08, f"Invalid logic sub-op: {sub_op}"
    return encode_instruction(0xD, rd, rs1, rs2, imm8=sub_op)


def encode_and(rd, rs1, rs2):
    """Encode AND rd, rs1, rs2"""
    return encode_logicop(rd, rs1, rs2, 0x00)


def encode_or(rd, rs1, rs2):
    """Encode OR rd, rs1, rs2"""
    return encode_logicop(rd, rs1, rs2, 0x01)


def encode_xor(rd, rs1, rs2):
    """Encode XOR rd, rs1, rs2"""
    return encode_logicop(rd, rs1, rs2, 0x02)


def encode_asr(rd, rs1, rs2):
    """Encode ASR rd, rs1, rs2"""
    return encode_logicop(rd, rs1, rs2, 0x03)


def encode_shr(rd, rs1, rs2):
    """Encode SHR rd, rs1, rs2"""
    return encode_logicop(rd, rs1, rs2, 0x04)


def encode_shl(rd, rs1, rs2):
    """Encode SHL rd, rs1, rs2"""
    return encode_logicop(rd, rs1, rs2, 0x05)


def encode_not(rd, rs1):
    """Encode NOT rd, rs1"""
    return encode_logicop(rd, rs1, 0, 0x06)


def encode_rcmp(rd):
    """Encode RCMP rd - read compare flag"""
    return encode_logicop(rd, 0, 0, 0x07)


def encode_rctl(rd):
    """Encode RCTL rd - read VPU control register"""
    return encode_logicop(rd, 0, 0, 0x08)


def encode_sysmem_write(rs1, rs2):
    """Encode SYSMEM_WRITE (opcode=0xE)"""
    return encode_instruction(0xE, 0, rs1, rs2)


def encode_sysmem_read(rd, rs1):
    """Encode SYSMEM_READ (opcode=0xF)"""
    return encode_instruction(0xF, rd, rs1, 0)


# Condition code masks (from ABI)
COND_EQ = 0x04  # EQ: 0x04
COND_NE = 0x0C  # NE: 0x0C
COND_LT = 0x02  # LT: 0x02
COND_GE = 0x0A  # GE: 0x0A
COND_LE = 0x01  # LE: 0x01
COND_GT = 0x09  # GT: 0x09


def encode_cmp_eq(rs1, rs2):
    """Encode CMPEQ rs1, rs2"""
    return encode_cmp(rs1, rs2, COND_EQ)


def encode_cmp_ne(rs1, rs2):
    """Encode CMPNE rs1, rs2"""
    return encode_cmp(rs1, rs2, COND_NE)


def encode_cmp_lt(rs1, rs2):
    """Encode CMPLT rs1, rs2"""
    return encode_cmp(rs1, rs2, COND_LT)


def encode_cmp_ge(rs1, rs2):
    """Encode CMPGE rs1, rs2"""
    return encode_cmp(rs1, rs2, COND_GE)


def encode_cmp_le(rs1, rs2):
    """Encode CMPLE rs1, rs2"""
    return encode_cmp(rs1, rs2, COND_LE)


def encode_cmp_gt(rs1, rs2):
    """Encode CMPGT rs1, rs2"""
    return encode_cmp(rs1, rs2, COND_GT)


# Register numbering constants
R0 = 0
R1 = 1
R2 = 2
R3 = 3
R4 = 4
R5 = 5
R6 = 6
R7 = 7
R8 = 8
R9 = 9
R10 = 10
R11 = 11
R12 = 12  # Link register (lr)
R13 = 13  # Stack pointer (sp)
R14 = 14
R15 = 15


def encode_instruction_to_bytes(insn):
    """Convert 32-bit instruction to 4 bytes (little-endian)"""
    return [
        (insn >> 0) & 0xFF,
        (insn >> 8) & 0xFF,
        (insn >> 16) & 0xFF,
        (insn >> 24) & 0xFF
    ]


def format_hex(insn, width=8):
    """Format instruction as hex string"""
    return f"0x{insn:0{width}x}"


if __name__ == "__main__":
    # Test encoding
    print("Testing VCP encoder...")
    
    # Test NOP
    nop = encode_nop()
    print(f"NOP: {format_hex(nop)}")
    
    # Test LOAD_IMM
    li = encode_load_imm(R1, 0x123456)
    print(f"LI R1, 0x123456: {format_hex(li)}")
    
    # Test ADD
    add = encode_add(R3, R1, R2)
    print(f"ADD R3, R1, R2: {format_hex(add)}")
    
    # Test JMP
    jmp = encode_jmp_absolute(R1, R10)
    print(f"JMP R10: {format_hex(jmp)}")
    
    # Test CMP
    cmp = encode_cmp_eq(R1, R2)
    print(f"CMPEQ R1, R2: {format_hex(cmp)}")
    
    print("\nAll tests passed!")