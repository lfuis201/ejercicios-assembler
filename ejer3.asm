.model small
.stack
.data
    c  db "abcdef","$" ;guardamos la variable c en la directiva db que es de 8 bits
    m  dw 11148 ;guardamos la variable m en la directiva dw que es de 16 bits
    x  dw ?
    y  dw ?
    z  dw ?
.code
main proc
mov ax, @data
mov ds, ax

mov ax, m ;movemos la varible m al registro ax
mov bx, 8
div bx ;tomara ax y bx y se devidira

mov x, bx ; movemos el resultado de la division a x

;division entre 4
mov ax, m ;movemos la varible m al registro ax
mov bx, 4
div bx ;tomara ax y bx y se devidira

mov y, bx ; movemos el resultado de la division a y

mov ax, m ;movemos la varible m al registro ax
mov bx, 4
div bx ;tomara ax y bx y se devidira

mov z, bx ; movemos el resultado de la division a z

mov ax, 4c00h
int 21h
main endp
end main
.exit