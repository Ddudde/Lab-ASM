%include "io.inc"

section .bss
    N equ 10

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    lea esi, [x]
    lea edi, [y]
    mov ecx, N
    L2:
        mov ebx, [edi]
        test ebx, 1
        jz yes
        add edi, 4
    jnz L2
    L1:
        lea esi, [y]
        ;чтение из массива
        mov ecx, N
        L3:
            lodsd
            PRINT_DEC   4, eax
            PRINT_CHAR  ' '
            DEC ecx
        jnz L3
ret
yes:
    PRINT_STRING "Чётное число"
    NEWLINE
    mov eax, ebx
    ;stosd
    DEC ecx
    jnz L2
    call L1
ret
no:
    PRINT_STRING "Нечётное число"
    NEWLINE
    DEC ecx
    jnz L2
    ret
    
section .data
    x dd 5,4,5,3,6
    y times 5 dd '%d'
    z times 5 dd '%d'
    summ dd 1