pstring macro msg
lea dx,msg
mov ah,09h
int 21h
endm

data segment
first db "Enter the First number$"
second db "Enter the Second number$"
sum db "Sum is :$"
new db 0ah,"$"
msg db ?

data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
pstring first
mov ah,01h
int 21h
mov bl,al
pstring new


pstring second
mov ah,01h
int 21h
pstring new
add bl,al
sub bl,30h
pstring sum
mov dl,bl
mov ah,02h
int 21h
mov ah,4ch
int 21h

code ends
end start


