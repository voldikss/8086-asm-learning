assume cs:code
a segment
    db 1,2,3,4,5,6,7,8
a ends

b segment
    db 1,2,3,4,5,6,7,8
b ends

c segment
    db 0,0,0,0,0,0,0,0
c ends

code segment
start:
    mov bx,0
    mov cx,8
s:
    mov dx,0  ;store temp sum result 

    mov ax,a
    mov ds,ax
    mov dl,[bx]  ; put data of a to dl 
    

    mov ax,b
    mov ds,ax
    add dl,[bx]
    ; mov al,[bx]  ; use al to store data of b 

    ; add dx,ax    ; add ax to dx

    mov ax,c
    mov ds,ax
    ; mov [bx],dx  ; store dx to c
    mov [bx],dl  ; store dx to c

    inc bx
    loop s

    mov ax,4c00h
    int 21h
code ends
end start
