%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov eax,[x]
    mov ebx,[y]
    mov ecx,[z]
    call min
    PRINT_STRING 'Минимальное число: '
    PRINT_DEC 4, eax
    ret
    min:
        cmp eax,ebx
        jb next
        mov eax,ebx
    next:
        cmp eax,ecx
        jb end
        mov eax,ecx
    end:
        ret
        
section .data
    x dd 5000000
    y dd 3
    z dd 10