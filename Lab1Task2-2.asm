%include "io.inc"
;a*b-c
;29, -9, 13
;29*(-9)-13=-274
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
a: DD 0x41E80000
b: DD 0xC1100000
c: DD 0x41500000
r: DD 0x00000000