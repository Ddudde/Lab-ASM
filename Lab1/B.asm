%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ecx, N
    mov edx, mas1
    mov eax, mas2
    
    C1: test byte [edx], 1
        jnz C3
        jz C2
        
    C2: mov ebx, [edx]
        mov [eax], ebx
        add eax, 4
        add edx, 4
        sub ecx, 1
        CMP ecx, 0
        jne C1
        je PERE
        
    C3: add edx, 4
        sub ecx, 1
        CMP ecx, 0
        jne C1
        je PERE
        
    PERE: mov ecx, N
         mov edx, mas1
         
    NC1: test byte [edx], 1
        jnz NC2
        jz NC3
        
    NC2: mov ebx, [edx]
        mov [eax], ebx
        add eax, 4
        add edx, 4
        sub ecx, 1
        CMP ecx, 0
        jne NC1
        je end
        
    NC3: add edx, 4
        sub ecx, 1
        CMP ecx, 0
        jne NC1
        je end
    end:
        PRINT_STRING 'Конец'
        NEWLINE
        PRINT_STRING 'Массив: '
        mov ecx, N
        lea esi, [mas2]
        input:
            lodsd
            PRINT_DEC   4, eax
            PRINT_CHAR  ' '
            dec ecx
        jnz input
        ret
        
section .bss
    N equ 7

section .data
    mas1 dd 7, 1, 2, 3, 4, 5, 6
    mas2 dd 0, 0, 0, 0, 0, 0, 0