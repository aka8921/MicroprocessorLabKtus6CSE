data segment
num1 dw 0065h
num2 dw 0043h
result dw ?
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,num1
mov bx,num2
sub ax,bx
mov result,ax
mov ah,4ch
int 21h
code ends
end start
