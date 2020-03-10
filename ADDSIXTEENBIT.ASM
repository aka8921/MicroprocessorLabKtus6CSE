data segment
num1 dw 0004h
num2 dw 0005h
result dw ?
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,num1
mov bx,num2
add ax,bx
mov result,ax
mov ah,4ch
int 21h
code ends
end start
