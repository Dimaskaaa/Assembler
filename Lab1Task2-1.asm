%include "io.inc"
;a*b-c
;31, 16, 25
;31*16-25=471
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;заносим переменные в стек
    FLD DWORD [a]
    FLD DWORD [b]
    FMUL ;a*b
    FLD DWORD [c]
    FSUB ;a*b-c
    FST DWORD [r];выводим ответв переменную r
    ret
section .data
a: DD 0x41F80000
b: DD 0x41800000
c: DD 0x41C80000
r: DD 0x00000000    