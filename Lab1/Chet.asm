%include "io.inc"


section .data
    chot db "Чётное число", 0
    nechot db "Нечётное число", 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_DEC 4, eax
    ;mov ax, 2
    test eax, 1
    jz yes
    jnz no
yes:
    PRINT_STRING chot
    NEWLINE
    ret
no:
    PRINT_STRING nechot
    NEWLINE
    xor eax, eax
    ret