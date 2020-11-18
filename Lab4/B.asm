%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov edx, 2
    cmp edx, 2
    je L1
    ja L4
    L1: mov ax, [xb]
        mov bx, [yb]
        mov cx, [zb]
        call min
        ret
    L4: mov ebx, [x]
        mov eax, [y]
        mov ecx, [z]
        call min
        ret
    min:
        cmp edx, 2
        je L8
        ja L7
    L7: cmp eax, ecx
        jl L2
        mov eax, ebx
    L2: cmp eax, ecx
        jl L3
        mov eax, ecx
    L3: mov [rez], eax
        PRINT_DEC 4, rez
        ret
    L8: cmp ax, bx
        jl L5
        mov ax, bx
    L5: cmp ax, cx
        jl L6
        mov ax, bx
    L6: mov [rezb], ax
        PRINT_STRING 'Количество байт в числе: '
        PRINT_DEC 2, rezb
    ret

section .data
    x dd 3
    y dd -5
    z dd 3
    xb dd 4
    yb dd 4
    zb dd 4
    rez dd 0
    rezb dd 0