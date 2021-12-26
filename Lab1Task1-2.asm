%include "io.inc"
;a*b-c
;29, -9, 13
;29*(-9)-13=-274
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;записываем числа в регистры
    MOV AX, 0x1D
    MOV BX, 0xFFF7
    MOV CX, 0x0D
    IMUL BX ;перемножаем а и b
    SUB AX, CX ;вычитаем из a*b c
    PRINT_DEC 2, AX
    ret