.model small
.stack
.data
    c  db "abcdef","$" ;guardamos la variable c en la directiva db que es de 8 bits
    m  dw 11148 ;guardamos la variable m en la directiva dw que es de 16 bits
    x  dw ?
.code
main proc
mov ax, @data
mov ds, ax

;division entre 8
mov ax, m ;movemos la varible m al registro ax
mov bx, 8
div bx ;tomara ax y bx y se devidira

mov x, bx ; movemos el resultado de la division a x

mov ax, 4c00h
int 21h
main endp
end main
.exit