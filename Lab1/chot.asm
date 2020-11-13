%include "io.inc"

section .bss
    N equ 5

section .text
global CMAIN
CMAIN:
    start:
    mov ecx, N
    lea esi,[x]
    lea esp,[y]
    lea edi,[z]
    mov eax, summ
    input:
        mov [esi], eax
    loop input
    NEWLINE
    PRINT_DEC 4, al
    ret
    
    
section .data
    x db 5,4,5,3,6
    y db 5,4,5,3,6
    z db 5,4,5,3,6
    summ db 1