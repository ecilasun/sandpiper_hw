# VCP ABI v0.1 (Draft)

This document defines a practical ABI for the Sandpiper Video Coprocessor (VCP), intended for assembler and early compiler backends.

Scope:
- Register conventions
- Calling convention
- Stack convention (program-memory stack)
- Condition-code usage model
- Recommended assembler pseudo-instructions

RTL references:
- Core execute engine: sandpiper.srcs/sources_1/new/vcpexec.sv
- Register file: sandpiper.srcs/sources_1/new/vcpregisterfile.sv
- Command/control wrapper: sandpiper.srcs/sources_1/new/vcpcore.sv

---

## 1. Architectural Model

### 1.1 Registers
- 16 general-purpose registers, 32-bit each: R0-R15.
- R0 is hard-wired to zero (writes ignored).

### 1.2 Program Counter
- PC is byte-addressed.
- Instructions are 32-bit words and should be 4-byte aligned.

### 1.3 Program Memory Address Space
- Effective address width in executor path: 13 bits.
- Addressable byte range: 0x0000..0x1FFF (8 KiB).

### 1.4 Instruction Field Layout
Instruction word bits:
- [3:0]   opcode
- [7:4]   rd
- [11:8]  rs1
- [15:12] rs2
- [31:24] imm8
- [31:16] imm16
- [31:8]  imm24

Immediate fields overlap by design.

---

## 2. Register ABI

### 2.1 Fixed Roles
- R0: zero (constant 0)
- R12: link register (lr)
- R13: stack pointer (sp)

### 2.2 Volatility Classes
Caller-saved:
- R1-R7, R12, R15

Callee-saved:
- R8-R11, R14

Special:
- R13 (sp) must be preserved by all code except explicit stack operations.

### 2.3 Return Values
- Primary return value: R1 (32-bit).
- Optional second word (future extension): R2.

### 2.4 Argument Registers
- R1, R2, R3 for first three 32-bit arguments.
- Additional arguments passed on stack by caller.

---

## 3. Stack ABI (Program Memory Stack)

### 3.1 Rationale
VCP supports both program-memory and system-memory read/write instructions. This ABI still places the stack in a reserved program-memory region because program-memory access is faster and has fixed, deterministic timing.

### 3.2 Growth Direction and Alignment
- Stack grows downward.
- Word granularity: 4 bytes.
- sp is always 4-byte aligned.

### 3.3 Initial SP
- Default reset-time toolchain convention: sp = 0x1FFC.
- This is the highest aligned word address inside 0x0000..0x1FFF.

### 3.4 Memory Partitioning Contract
The linker/script must reserve non-overlapping regions:
- Code/Text + constants: low addresses upward.
- Stack: high addresses downward.

Hard requirement:
- text_end + data_end + stack_reserve <= 0x2000

### 3.5 Safety
If stack overflows into text, self-corruption occurs (program-memory overwrite). Debug builds should optionally insert stack bound checks in prologues.

---

## 4. Calling Convention

### 4.1 Call
`CALL target` semantic expansion:
1. Capture return address in lr (R12).
2. Transfer control to target.

### 4.2 Return
`RET` semantic expansion:
1. Jump to lr (R12).

### 4.3 Typical Prologue/Epilogue
Prologue (minimal non-leaf):
1. push lr
2. push used callee-saved registers

Epilogue:
1. pop callee-saved registers in reverse order
2. pop lr
3. ret

Leaf functions that do not clobber callee-saved registers and do not need nested calls may omit stack frame setup.

---

## 5. Condition Model (CMP + BRANCH)

VCP has a latched predicate model:
- `CMP` computes EQ/LT/LE relations and writes one-bit result into internal `cmpreg` based on imm8 mask/invert bits.
- `BRANCH` tests `cmpreg`.

Recommended logical condition encodings (imm8 for CMP):
- EQ: 0x04
- NE: 0x0C
- LT: 0x02
- GE: 0x0A
- LE: 0x01
- GT: 0x09

Assembler should expose Bcc pseudo-ops by emitting CMP + BRANCH sequence.

---

## 6. Assembler Pseudo-Instructions (Recommended)

These pseudo-ops define ABI-level behavior. Exact lowering may vary by assembler implementation.

### 6.1 Stack Operations
- `PUSH rx`
  1. sp = sp - 4
  2. MEM_WRITE [sp] <- rx

- `POP rx`
  1. MEM_READ  rx <- [sp]
  2. sp = sp + 4

### 6.2 Control Flow
- `CALL label`
  1. LOADPC R12
  2. JMP label

- `RET`
  1. JMP R12

### 6.3 Branch Conditions
- `BEQ rA, rB, label` -> CMP(cond=EQ), BRANCH label
- `BNE rA, rB, label` -> CMP(cond=NE), BRANCH label
- `BLT rA, rB, label` -> CMP(cond=LT), BRANCH label
- `BGE rA, rB, label` -> CMP(cond=GE), BRANCH label
- `BLE rA, rB, label` -> CMP(cond=LE), BRANCH label
- `BGT rA, rB, label` -> CMP(cond=GT), BRANCH label

---

## 7. Host/Runtime Control Contract (Non-ISA but Tooling-Relevant)

Runtime host control is queue-based through VCP command interface:
- Command 0x0: configure program DMA size
- Command 0x1: start program DMA from source address
- Command 0x2: set exec control flags (run/stop via flag bits)

Toolchain output is a 32-bit word stream expected by VCP program memory DMA path.

---

## 8. Known Constraints for Compiler Backend

- No native multiply/divide instructions.
- No base+offset addressing mode; addresses must be materialized in registers.
- Program-memory stack uses executable address space; strict linker partitioning required.
- R0 is immutable zero, useful for moves/clears via arithmetic/logical idioms.

---

## 9. ABI Compliance Checklist

A function is ABI-compliant if:
- It preserves callee-saved registers (R8-R11, R14).
- It preserves sp integrity (R13).
- It returns via R12 when called through CALL/RET convention.
- It returns value in R1.
- It does not write outside allocated stack bounds.

---

## 10. Suggested Next Steps

1. Freeze opcode-level assembler syntax and exact instruction encodings in a separate ISA spec.
2. Define object format + relocation types:
   - ABS13/ABS32 style targets
   - PCREL13 for relative branches/jumps
3. Add an ABI test suite:
   - nested calls
   - recursion depth checks
   - caller/callee-saved clobber tests
   - stack overflow guard tests

---

Status: Draft, ready for implementation in assembler v0.
