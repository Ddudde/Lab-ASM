%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ecx, 300
    mov ebx, 0
    
    C1: mov eax,[mas1 + ebx]
        mov edx, [mas2 + ebx]
        mul edx
        ja C2
        jb C3
        
    C2: not edx
        neg eax
        sub [x1], eax
        sbb [x1 + 4], edx
        jmp C4
        
    C3: add [x1], eax
        adc [x1 + 4], edx
        
    C4: add ebx, 4
        loop C1
        
    end:
        PRINT_STRING 'Результат свертки: '
        PRINT_DEC 4, x1
    ret

section .data
    mas1 Times 100 dd -2,5,-2
    mas2 Times 100 dd 5,-2,5
    x1 dq 0