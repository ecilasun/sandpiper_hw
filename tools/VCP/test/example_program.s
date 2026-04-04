; VCP Assembler Example Program
; Simple test program demonstrating VCP assembly

; Initialize registers
    LI R1, 0x00000000    ; Clear R1
    MOV R2, R1           ; Copy to R2
    
    ; Load some values
    LI R3, 0x1000
    LI R4, 0x2000
    
    ; Add them together
    ADD R5, R3, R4       ; R5 = 0x3000
    
    ; Loop: increment and compare
loop:
    INC R5, R5           ; R5 = R5 + 1
    CMPEQ R5, R4         ; Set cmpreg if R5 == R4
    BEQ R5, R4, end      ; Branch if R5 == R4
    JR -4                ; Jump back to loop
end:
    NOP                  ; End of program
    
    ; Function call example
    CALL main
    MOV R10, R1          ; Move result to R10
    
    ; Return to caller
    RET

; Factorial function - simple implementation
factorial:
    ; Prologue: save registers
    PUSH R1              ; Save return value
    PUSH R2              ; Save loop counter
    
    ; R1 contains input (n), compute n!
    MOV R2, R1           ; R2 = n
    LI R1, 1             ; result = 1
    
factorial_loop:
    CMPEQ R2, R0         ; Set cmpreg if R2 == 0
    BEQ R2, R0, factorial_end
    ; Note: VCP doesn't have MUL - use repeated ADD or shift
    ADD R1, R1, R1       ; Simple double (for demo only)
    DEC R2, R2           ; n--
    JR -8                ; Jump to loop
factorial_end:
    POP R2               ; Restore R2
    POP R1               ; Restore R1 and return
    RET