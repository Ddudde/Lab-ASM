%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebx, [x]
    mov eax, [y]
    mov ecx, [z]
    call min
    PRINT_STRING 'Минимальное число: '
    PRINT_DEC 4, rez
    ret
    min:cmp eax, ebx
        jl L1
        mov eax, ebx
    L1: cmp eax, ecx
        jl L2
        mov eax, ecx
    L2: mov [rez], eax
    ret

section .data
    x dd 3
    y dd -5
    z dd 3
    rez dd 0