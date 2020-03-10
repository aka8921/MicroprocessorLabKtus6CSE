pstring macro msg
lea dx,msg
mov ah,09h
int 21h
endm

data segment
first db "Enter the First Number:$"
second db "Enter the Second Number:$"
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
call frt
mov cl,bl
pstring new

pstring second
call frt
pstring new
pstring sum

disp proc

mov dl,cl
mov ah,02h
int 21h
mov ah,4ch
int 21h

 disp endp

frt proc
mov ah,01h
int 21h
sub al,30h
mov bl,10d
mul bl
mov bl,al
mov ah,01h
int 21h
mov dl,al
sub dl,30h
add bl,dl
ret
frt endp

code ends
end start


