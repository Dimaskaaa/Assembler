%include "io.inc"
;a*b-c
;31, 16, 25
;31*16-25=471
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;записываем числа в регистры
    MOV AX, 0x1F
    MOV BX, 0x10
    MOV CX, 0x19
    IMUL BX ;перемножаем а и b
    SUB AX, CX ;вычитаем из a*b c
    PRINT_DEC 2, AX
    ret