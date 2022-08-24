.model small
.stack
.data
    c  db "abcdef","$" ;guardamos la variable c en la directiva db que es de 8 bits
    m  dw 11148 ;guardamos la variable m en la directiva dw que es de 16 bits
.code
main proc
mov ax, @data
mov ds, ax

mov ah, 09
lea dx, c
int 21h

mov ax, 4c00h
int 21h
main endp
end main
.exit