.model small
.stack
.data
    c  db "abcdef","$" ;guardamos la variable c en la directiva db que es de 8 bits
    m  dw 11148 ;guardamos la variable m en la directiva dw que es de 16 bits
    x  dw ?
    y  dw ?
    z  dw ?
    rpt dw ?
;funcion div4
div4 macro x
    mov ax, m ;movemos la varible m al registro ax
    mov bx, 4
    div bx ;tomara ax y bx y se devidira
endm

.code
main proc
mov ax, @data
mov ds, ax

mov ax, m
mov bx, 8
div bx

mov x, bx

mov ax, m
mov bx, 4
div bx

mov y, bx

mov ax, m
mov bx, 2
div bx 

mov z, bx 

div4 5; llamada ala funcion div4
mov rpt, bx ; movemos el resultado de la division a rp

mov ax, 4c00h
int 21h
main endp
end main
.exit