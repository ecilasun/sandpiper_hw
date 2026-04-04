# VCP ISA v0.1 (Assembler Encoding Spec)

This document defines instruction encodings and lowering rules for assembler implementation.

Companion ABI document:
- tools/vcpcompiler/VCP_ABI_v0.1.md

Primary RTL sources:
- sandpiper.srcs/sources_1/new/vcpexec.sv
- sandpiper.srcs/sources_1/new/vcpregisterfile.sv

---

## 1. Machine Model

- Word size: 32 bits
- Register count: 16 (R0-R15)
- Register width: 32 bits
- Instruction width: 32 bits
- PC: byte addressed, 4-byte aligned instruction fetch

Program memory execution address width is 13 bits in executor path.

---

## 2. Bit Layout

Instruction bit fields:
- opcode: [3:0]
- rd:     [7:4]
- rs1:    [11:8]
- rs2:    [15:12]
- imm8:   [31:24]
- imm16:  [31:16]
- imm24:  [31:8]

Packing equation:

insn =
  ((imm24 & 0xFFFFFF) << 8) |
  ((rs2   & 0xF)      << 12) |
  ((rs1   & 0xF)      << 8)  |
  ((rd    & 0xF)      << 4)  |
  (opcode & 0xF)

Notes:
- imm16 is implicit as insn[31:16].
- imm8 is implicit as insn[31:24].
- Immediate fields overlap intentionally.

---

## 3. Register Numbering

- R0 = 0
- R1 = 1
- ...
- R15 = 15

R0 is hardwired zero; writes are ignored.

---

## 4. Core Opcodes

### 0x0 NOP
Encoding:
- opcode=0x0
- Other fields ignored

Semantics:
- No architectural state change except normal PC advance.

Assembler form:
- NOP

---

### 0x1 LOAD_IMM
Encoding:
- opcode=0x1
- rd used
- imm24 used (zero-extended to 32-bit)

Semantics:
- rd <- ZeroExtend24(imm24)

Assembler form:
- LI rd, imm24

Range:
- imm24 in [0, 0xFFFFFF]

---

### 0x2 PAL_WRITE
Encoding:
- opcode=0x2
- rs1: palette address source
- rs2: palette data source

Semantics:
- paladdr <- rs1[7:0]
- paldout <- rs2[23:0]
- palwe asserted by core

Assembler form:
- PALW rs_addr, rs_data

---

### 0x3 SCANLINE_WAIT
Encoding:
- opcode=0x3
- rs1 used

Semantics:
- Stall/retry this instruction until scanline == rs1[9:0].

Assembler form:
- WSCANL rs_line

---

### 0x4 SCANPIXEL_WAIT
Encoding:
- opcode=0x4
- rs1 used

Semantics:
- Stall/retry this instruction until scanpixel == rs1[9:0].

Assembler form:
- WSCANP rs_pixel

---

### 0x5 MATHOP
Encoding:
- opcode=0x5
- rd, rs1, rs2 used
- imm8 selects sub-op

Sub-ops:
- imm8=0x00: ADD, rd <- rs1 + rs2
- imm8=0x01: SUB, rd <- rs1 - rs2
- imm8=0x02: INC, rd <- rs1 + 1
- imm8=0x03: DEC, rd <- rs1 - 1

Assembler forms:
- ADD rd, rs1, rs2
- SUB rd, rs1, rs2
- INC rd, rs1
- DEC rd, rs1

---

### 0x6 JMP
Encoding:
- opcode=0x6
- mode selected by rd bit0

Mode A (absolute register jump):
- if rd[0]==0
- nextPC <- rs1[12:0]

Mode B (PC-relative jump):
- if rd[0]==1
- nextPC <- PC + SignExtend13(imm16[12:0])

Assembler forms:
- JMP rs_target         ; absolute via register
- JR off13             ; PC-relative signed byte offset

Notes:
- Offsets are byte-domain deltas.
- Target should remain instruction aligned.

---

### 0x7 CMP
Encoding:
- opcode=0x7
- rs1, rs2 used
- imm8 used as condition mask/invert control

Internal relations:
- EQ = (rs1 == rs2)
- LT = (rs1 <  rs2) unsigned compare in RTL
- LE = (rs1 <= rs2) unsigned compare in RTL

cmpreg generation:
- cmpreg <- ((EQ xor inv) & mEQ) | ((LT xor inv) & mLT) | ((LE xor inv) & mLE)
where:
- inv = imm8[3]
- mEQ = imm8[2]
- mLT = imm8[1]
- mLE = imm8[0]

Recommended condition immediates:
- EQ: 0x04
- NE: 0x0C
- LT: 0x02
- GE: 0x0A
- LE: 0x01
- GT: 0x09

Assembler forms:
- CMP rs1, rs2, cond
- CMPEQ rs1, rs2
- CMPNE rs1, rs2
- CMPLT rs1, rs2
- CMPGE rs1, rs2
- CMPLE rs1, rs2
- CMPGT rs1, rs2

---

### 0x8 BRANCH
Encoding:
- opcode=0x8
- mode selected by rd bit0

Semantics:
- If cmpreg == 1:
  - if rd[0]==0: nextPC <- rs1[12:0]
  - if rd[0]==1: nextPC <- PC + SignExtend13(imm16[12:0])
- If cmpreg == 0: fall-through

Assembler forms:
- BR rs_target         ; absolute conditional branch via register
- BRR off13            ; PC-relative conditional branch

Pseudo forms (lowering to CMP + BRANCH):
- BEQ rs1, rs2, label
- BNE rs1, rs2, label
- BLT rs1, rs2, label
- BGE rs1, rs2, label
- BLE rs1, rs2, label
- BGT rs1, rs2, label

---

### 0x9 MEM_WRITE
Encoding:
- opcode=0x9
- rs1: program-memory byte address source
- rs2: data source

Semantics:
- Program memory write at address rs1[12:0] with data rs2[31:0].

Assembler form:
- PMEMW rs_addr, rs_data

Notes:
- Intended for self-modification/data scratch in BRAM.
- Address should be instruction aligned when writing instruction words.

---

### 0xA MEM_READ
Encoding:
- opcode=0xA
- rd destination
- rs1 address source

Semantics:
- rd <- ProgramMemory[rs1[12:0]] (32-bit word)

Assembler form:
- PMEMR rd, rs_addr

---

### 0xB READ_SCANINFO
Encoding:
- opcode=0xB
- rd destination
- rs1 bit0 selects source

Semantics:
- if rs1[0]==0: rd <- ZeroExtend(scanline[9:0])
- if rs1[0]==1: rd <- ZeroExtend(scanpixel[9:0])

Assembler forms:
- RSCANL rd
- RSCANP rd

---

### 0xC LOADPC
Encoding:
- opcode=0xC
- rd destination

Semantics:
- rd <- PC + 4

Assembler form:
- LOADPC rd

---

### 0xD LOGICOP
Encoding:
- opcode=0xD
- rd, rs1, rs2 used (sub-op dependent)
- imm8 selects sub-op

Sub-ops:
- 0x00 AND  rd <- rs1 & rs2
- 0x01 OR   rd <- rs1 | rs2
- 0x02 XOR  rd <- rs1 ^ rs2
- 0x03 ASR  rd <- rs1 >>> (rs2[4:0])
- 0x04 SHR  rd <- rs1 >>  (rs2[4:0])
- 0x05 SHL  rd <- rs1 <<  (rs2[4:0])
- 0x06 NOT  rd <- ~rs1
- 0x07 RCMP rd <- cmpreg (bit0), upper bits zero
- 0x08 RCTL rd <- vpucontrolregister in bits [7:0], upper bits zero

Assembler forms:
- AND rd, rs1, rs2
- OR  rd, rs1, rs2
- XOR rd, rs1, rs2
- ASR rd, rs1, rs2
- SHR rd, rs1, rs2
- SHL rd, rs1, rs2
- NOT rd, rs1
- RCMP rd
- RCTL rd

---

### 0xE SYSMEM_WRITE
Encoding:
- opcode=0xE
- rs1: system-memory byte address
- rs2: 32-bit data to write

Semantics:
- 32-bit write via 64-bit AXI bus lane selected by rs1 bit2.
- Address must be 4-byte aligned.

Assembler form:
- ST rs_data, [rs_addr]

Constraints:
- Enforce (addr % 4 == 0) where possible.

---

### 0xF SYSMEM_READ
Encoding:
- opcode=0xF
- rd destination
- rs1 address source

Semantics:
- rd <- 32-bit load from system memory at rs1.
- AXI lane selected by rs1 bit2.
- Address must be 4-byte aligned.

Assembler form:
- LD rd, [rs_addr]

---

## 5. Pseudo-Instructions and Lowering

### 5.1 Moves and Constants
- MOV rd, rs
  - Lower to ADD rd, rs, R0

- CLR rd
  - Lower to ADD rd, R0, R0

- LI32 rd, imm32
  - If imm32 fits imm24: LI rd, imm24
  - Else: use literal pool sequence (implementation-defined for v0.1)

### 5.2 Calls and Returns (ABI-aware)
- CALL label
  - LOADPC R12
  - Jump to label (absolute or relative form per assembler policy)

- RET
  - JMP R12

### 5.3 Stack Helpers (ABI-aware)
Assume R13 is SP, stack grows down.

- PUSH rs
  - DEC R13, R13
  - DEC R13, R13
  - DEC R13, R13
  - DEC R13, R13
  - PMEMW R13, rs

- POP rd
  - PMEMR rd, R13
  - INC R13, R13
  - INC R13, R13
  - INC R13, R13
  - INC R13, R13

Note:
- There is no immediate add/sub currently, so +/-4 uses four INC/DEC operations.
- A future ISA revision may add ADDI/SUBI and replace this expansion.

### 5.4 Conditional Branch Pseudos
Example lowering:
- BEQ rA, rB, label
  - CMP rA, rB, EQ
  - BR to label

Same pattern for BNE/BLT/BGE/BLE/BGT using condition table.

---

## 6. Relocations (Suggested for Object Format)

Recommended relocation kinds for assembler and linker:
- R_VCP_ABS13
  - Absolute 13-bit target address in register materialization flow.

- R_VCP_PCREL13
  - Signed 13-bit byte offset for relative JMP/BR mode.

- R_VCP_IMM24
  - 24-bit immediate payload (LI and similar).

Validation rules:
- R_VCP_PCREL13 target delta must fit signed 13-bit.
- Branch/jump targets should be 4-byte aligned.

---

## 7. Assembler Diagnostics (Required)

Emit errors for:
- Invalid register numbers
- Immediate overflow for selected field
- Misaligned target for control-flow if policy requires alignment
- Misaligned address for LD/ST when statically known
- Unsupported pseudo lowering due to range overflow

Emit warnings for:
- Writes to R0 (no effect)
- Potential code/stack overlap when stack symbols are configured

---

## 8. Conformance Tests (Minimum)

1. Encode/decode round-trip for all opcodes and sub-ops.
2. CMP condition truth table checks.
3. Absolute and PC-relative JMP/BR target checks.
4. PMEM read/write correctness and self-modifying code scenario.
5. ABI macro tests:
   - CALL/RET nested depth
   - PUSH/POP register preservation
6. LD/ST lane-selection checks using address bit2.

---

Status: Draft, implementation-ready for assembler v0.1.
