%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebx, [x]
    mov eax, [y]
    mov ecx, [z]
    mov edx, 2 ;тип
    call min
    ret
    min:
        cmp edx, 2
        je L8
        jne L7
    L7: cmp eax, ecx
        jl L2
        mov eax, ebx
    L2: cmp eax, ecx
        jl L3
        mov eax, ecx
    L3: mov [rez], eax
        PRINT_STRING 'ћинимальное число: '
        PRINT_DEC 4, rez
        PRINT_STRING ', количество байт в числе: 4'
        ret
    L8: cmp ax, bx
        jl L5
        mov ax, bx
    L5: cmp ax, cx
        jl L6
        mov ax, bx
    L6: mov [rezb], ax
        PRINT_STRING 'ћинимальное число: '
        PRINT_DEC 2, rezb
        PRINT_STRING ', количество байт в числе: 2'
    ret

section .data
    x dd 3
    y dd -5
    z dd 3
    rez dd 0
    rezb dd 0