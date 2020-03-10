data segment
first db "Enter the First number$"
second db "Enter the Second number$"
sum db "Sum is :$"
new db 0ah,"$"

data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
lea dx,first
mov ah,09h
int 21h
mov ah,01h
int 21h
mov bl,al
lea dx,new
mov ah,09h
int 21h

lea dx,second
mov ah,09h
int 21h
mov ah,01h
int 21h
lea dx,new
mov ah,09h
int 21h

add bl,al
sub bl,30h
lea dx,sum
mov ah,09h
int 21h
mov dl,bl
mov ah,02h
int 21h
mov ah,4ch
int 21h

code ends
end start


