%include "io.inc"

section .bss
    N equ 5

section .text
global CMAIN
CMAIN:
    mov ecx, N
    mov eax, summ
    lea esi,[mass+4]
    mov eax,0
    input:
        mov ebx,[esi]
        add eax, ebx
        PRINT_DEC 4, ebx
        ADD esi,4
    loop input
    NEWLINE
    PRINT_DEC 4, eax
    ret
    
    
section .data
    mass dd 5, 5,4,-6,3,6
    summ    dd 0