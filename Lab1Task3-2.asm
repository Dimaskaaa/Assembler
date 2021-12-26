%include "io.inc"
;вычислить наименьшее из трех чисел a, b, c 
;29, -9, 13
section .text
global CMAIN
CMAIN:
       
    ;записываем числа в регистры
    MOV AX, 0x1D
    MOV BX, 0xFFF7
    MOV CX, 0x0D
    ;Сравниваем a и b
    CMP AX, BX
    JNL l1 ;если больше то переходим на метку
    ;если меньше, то сравниваем с третьим
    CMP AX, CX ;Сравниваем a и с
    JNL l2 ; если больше, то с наименьшее
    ;если меньше, то а наименьшее
    PRINT_DEC 2, AX ;выводим а 
    JMP quit        ;выходим из программы
l1:
    CMP BX, CX ;Сравниваем b и с
    JNL l2 ; если больше, то с наименьшее
    ;если меньше, то b наименьшее
    PRINT_DEC 2, BX ;выводим b
    JMP quit        ;выходим из программы
l2:
    PRINT_DEC 2, CX ;выводим c
    JMP quit        ;выходим из программы
quit:  
    ret