%include "io.inc"

section .bss
    N equ 300

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ecx, N
    lea esi, [a]
    lea edi, [b]
    PRINT_STRING '��������� ������������:'
    NEWLINE
    L1:
        lodsd;������ ��������� ������� � eax �� esi
        mov ebx,[edi]
        mul ebx
        add [sum], eax
        PRINT_DEC   4, eax
        PRINT_CHAR  ' '
        ADD edi,4
        DEC ecx
    jnz L1
    NEWLINE
    PRINT_STRING '��������� �������: '
    PRINT_DEC 4, sum
    ret
    
    
section .data
    a: times 100 dd 2,5,2
    b: times 100 dd 5,2,5
    sum: dq  0