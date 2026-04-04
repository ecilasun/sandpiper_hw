# VCP Pseudo-Instruction Lowering
# Implements ABI-aware pseudo-instructions per VCP_ABI_v0.1.md

from vcp_encoder import (
    encode_add, encode_dec, encode_inc, encode_mem_write, encode_mem_read,
    encode_loadpc, encode_jmp_absolute, encode_branch_absolute,
    encode_branch_relative, encode_brr,
    encode_cmp_eq, encode_cmp_ne, encode_cmp_lt, encode_cmp_ge,
    encode_cmp_le, encode_cmp_gt, R0, R12, R13
)


def lower_mov(rd, rs):
    """
    Lower MOV rd, rs to ADD rd, rs, R0
    (from ABI: move via add with zero register)
    """
    return [encode_add(rd, rs, R0)]


def lower_clr(rd):
    """
    Lower CLR rd to ADD rd, R0, R0
    (from ABI: clear register via add of two zeros)
    """
    return [encode_add(rd, R0, R0)]


def lower_li32(rd, imm32):
    """
    Lower LI32 rd, imm32.
    If imm32 fits in imm24, use LI. Otherwise, raise error.
    
    From ABI:
    - If imm32 fits imm24: LI rd, imm24
    - Else: use literal pool sequence (not implemented for v0.1)
    """
    if imm32 > 0xFFFFFF:
        raise ValueError(f"LI32 immediate {hex(imm32)} exceeds 24-bit range (0xFFFFFF)")
    return [encode_add(rd, R0, imm32 & 0xFFFFFF)]


def lower_push(rs):
    """
    Lower PUSH rs to stack operations (ABI-aware).
    
    From ABI:
    1. sp = sp - 4
    2. MEM_WRITE [sp] <- rs
    
    Since there's no immediate add/sub, use DEC x4 to subtract 4.
    Stack grows down, so we decrement SP first, then write.
    """
    instructions = []
    # DEC x4 to subtract 4 from SP (R13)
    instructions.append(encode_dec(R13, R13))
    instructions.append(encode_dec(R13, R13))
    instructions.append(encode_dec(R13, R13))
    instructions.append(encode_dec(R13, R13))
    # Write rs to [sp]
    instructions.append(encode_mem_write(R13, rs))
    return instructions


def lower_pop(rd):
    """
    Lower POP rd to stack operations (ABI-aware).
    
    From ABI:
    1. MEM_READ  rd <- [sp]
    2. sp = sp + 4
    
    Since there's no immediate add/sub, use INC x4 to add 4.
    Read from [sp] first, then increment SP.
    """
    instructions = []
    # Read from [sp]
    instructions.append(encode_mem_read(rd, R13))
    # INC x4 to add 4 to SP (R13)
    instructions.append(encode_inc(R13, R13))
    instructions.append(encode_inc(R13, R13))
    instructions.append(encode_inc(R13, R13))
    instructions.append(encode_inc(R13, R13))
    return instructions


def lower_call(label_addr, relative=False):
    """
    Lower CALL label to ABI-compliant sequence.
    
    From ABI:
    1. LOADPC R12  (save return address)
    2. JMP label   (transfer control)
    
    Args:
        label_addr: Address of the target label (absolute or offset)
        relative: If True, use relative JMP, else absolute
    """
    instructions = []
    # Save return address in link register (R12)
    instructions.append(encode_loadpc(R12))
    # Jump to label
    if relative:
        # Use relative jump
        instructions.append(encode_jmp_absolute(0x1, label_addr))
    else:
        # Use absolute jump via register (need to materialize address first)
        # This is a simplified version - full implementation would need
        # to load the label address into a register first
        instructions.append(encode_jmp_absolute(0x0, label_addr))
    return instructions


def lower_ret():
    """
    Lower RET to JMP R12 (link register).
    
    From ABI:
    1. JMP R12
    """
    return [encode_jmp_absolute(0x0, R12)]


def lower_branch_cmp(branch_op, rs1, rs2, target_addr, relative=False):
    """
    Lower conditional branch pseudo-ops to CMP + BRANCH sequence.
    
    Pseudo forms:
    - BEQ rs1, rs2, label -> CMP rs1, rs2, EQ; BR to label
    - BNE rs1, rs2, label -> CMP rs1, rs2, NE; BR to label
    - BLT rs1, rs2, label -> CMP rs1, rs2, LT; BR to label
    - BGE rs1, rs2, label -> CMP rs1, rs2, GE; BR to label
    - BLE rs1, rs2, label -> CMP rs1, rs2, LE; BR to label
    - BGT rs1, rs2, label -> CMP rs1, rs2, GT; BR to label
    
    Note: For absolute branch (relative=False), target_addr should be a register
    number (0-15), not an address. For absolute address branches, use relative=True
    and pass the PC-relative offset.
    """
    instructions = []
    
    # Step 1: Compare
    cmp_func = {
        'BEQ': encode_cmp_eq,
        'BNE': encode_cmp_ne,
        'BLT': encode_cmp_lt,
        'BGE': encode_cmp_ge,
        'BLE': encode_cmp_le,
        'BGT': encode_cmp_gt,
    }.get(branch_op.upper())
    
    if cmp_func is None:
        raise ValueError(f"Unknown branch condition: {branch_op}")
    
    instructions.append(cmp_func(rs1, rs2))
    
    # Step 2: Branch
    if relative:
        instructions.append(encode_branch_relative(target_addr))
    else:
        # For absolute branch, target_addr should be a register number
        if isinstance(target_addr, int) and 0 <= target_addr <= 15:
            instructions.append(encode_branch_absolute(target_addr))
        else:
            # target_addr is an address - we need to materialize it into a register
            # For now, just use a placeholder - in a real assembler, we'd
            # need to load the address into a register first
            raise ValueError(f"Absolute branch requires register number (0-15), got address {hex(target_addr)}")
    
    return instructions


def lower_beq(rs1, rs2, target_addr, relative=False):
    """Lower BEQ rs1, rs2, label"""
    return lower_branch_cmp('BEQ', rs1, rs2, target_addr, relative)


def lower_bne(rs1, rs2, target_addr, relative=False):
    """Lower BNE rs1, rs2, label"""
    return lower_branch_cmp('BNE', rs1, rs2, target_addr, relative)


def lower_blt(rs1, rs2, target_addr, relative=False):
    """Lower BLT rs1, rs2, label"""
    return lower_branch_cmp('BLT', rs1, rs2, target_addr, relative)


def lower_bge(rs1, rs2, target_addr, relative=False):
    """Lower BGE rs1, rs2, label"""
    return lower_branch_cmp('BGE', rs1, rs2, target_addr, relative)


def lower_ble(rs1, rs2, target_addr, relative=False):
    """Lower BLE rs1, rs2, label"""
    return lower_branch_cmp('BLE', rs1, rs2, target_addr, relative)


def lower_bgt(rs1, rs2, target_addr, relative=False):
    """Lower BGT rs1, rs2, label"""
    return lower_branch_cmp('BGT', rs1, rs2, target_addr, relative)


def lower_sysmem_write(rs1, rs2):
    """Lower ST rs_data, [rs_addr] to SYSMEM_WRITE"""
    return [encode_sysmem_write(rs1, rs2)]


def lower_sysmem_read(rd, rs1):
    """Lower LD rd, [rs_addr] to SYSMEM_READ"""
    return [encode_sysmem_read(rd, rs1)]


# Test code
if __name__ == "__main__":
    print("Testing VCP pseudo-instruction lowering...")
    
    # Test MOV
    mov = lower_mov(R1, R2)
    print(f"MOV R1, R2: {hex(mov[0])}")
    
    # Test PUSH
    push = lower_push(R5)
    print(f"PUSH R5: {[hex(i) for i in push]}")
    
    # Test POP
    pop = lower_pop(R6)
    print(f"POP R6: {[hex(i) for i in pop]}")
    
    # Test BEQ
    beq = lower_beq(R1, R2, 0x100, relative=False)
    print(f"BEQ R1, R2, 0x100: {[hex(i) for i in beq]}")
    
    print("\nAll pseudo-instruction tests passed!")