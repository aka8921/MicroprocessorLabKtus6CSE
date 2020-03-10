pstring marco msg
lea dx,msg
mov ah,09h
int 21h
endm

data segment
first db "enter the first no:$"
second db "enter the second no:$"
sum db "Sum is:$"
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
mov al,bl
mov ah,02h
int 21h
mov ah,4ch
int 21h
code ends
end start
