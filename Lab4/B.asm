%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov eax, [x]
    mov ebx, [y]
    mov ecx, [z]
    mov edx, 4 ;тип
    call min
    PRINT_STRING 'Минимальное число: '
    PRINT_DEC 4, eax
    ret
    min:
        cmp edx, 2
        je L1
        jne L2
    L2: cmp eax, ebx
        jb L3
        mov eax, ebx
    L3: cmp eax, ecx
        jb end
        mov eax, ecx
    L1: cmp ax, bx
        jb L4
        mov ax, bx
    L4: cmp ax, cx
        jb end
        mov ax, cx
    end: ret

section .data
    x dd 5
    y dd 10
    z dd 3000000