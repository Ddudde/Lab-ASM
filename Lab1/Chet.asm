%include "io.inc"


section .data
    chot db "׸���� �����", 0
    nechot db "�������� �����", 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_DEC 4, eax
    ;mov ax, 2
    test eax, 1
    jnz no
    jz yes
yes:
    PRINT_STRING chot
    NEWLINE
no:
    PRINT_STRING nechot
    NEWLINE
    xor eax, eax
    ret