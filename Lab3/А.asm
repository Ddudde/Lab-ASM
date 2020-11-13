%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    call primer4
    jo prikol
    jno prikol1
    prikol:
        PRINT_STRING 'OF = 1'
        ret
    prikol1:
        PRINT_STRING 'OF = 0'
        ret
    primer1:;есть переполнение
        mov al, 10000000b
        mov bl, 10000000b
        add al, bl
        ret
    primer2:;нет переполнения
        mov al, 00111111b
        mov bl, 00000001b
        add al, bl
        ret
    primer3:;есть переполнение
        mov al, 10000000b
        mov bl, 01000000b
        sub al, bl
        ret
    primer4:;нет переполнения
        mov al, 11100000b
        mov bl, 00100000b
        sub al, bl
        ret
    ret