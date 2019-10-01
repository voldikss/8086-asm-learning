assume cs:code
code segment
    mov ax,0ffffh
    mov ds,ax

    mov ax,0
    mov bx,ax

    mov dx,0
s:
    mov al,[bx]
    mov ah,0

    add 
