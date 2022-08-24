.model small
.stack
.data
    c  db "abcdef","$" ;guardamos la variable c en la directiva db que es de 8 bits
    m  dw 11148 ;guardamos la variable m en la directiva dw que es de 16 bits
    x  dw ?
    y  dw ?
    z  dw ?
    rpt dw ?
    rpt2 dw ?
;funcion div1
div1 macro x, y
    mov ax, m ;movemos la varible m al registro ax
    mov bx, y
    div bx ;tomara ax y bx y se devidira
endm

div4 macro x
    mov ax, m
    mov bx, 4
    div bx 
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

div4 5
mov rpt, bx

div4 5,4; llamada ala funcion div1
mov rpt2, bx ; movemos el resultado de la division a rpt2

mov ax, 4c00h
int 21h
main endp
end main
.exit