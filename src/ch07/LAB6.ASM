assume cs:code,ds:data,ss:stack
data segment
    db '1. display      '
    db '2. brows        '
    db '3. replace      '
    db '4. modify       '
data ends

stack segment
    dw 0,0,0,0,0,0,0,0
stack ends

code segment
start:
    mov ax,stack
    mov ss,ax
    mov sp,16

    mov ax,data
    mov ds,ax

    mov cx,4
    mov bx,0
s:
    push cx
    mov si,3
    mov cx,4
s0:
    mov al,[bx+si]
    and al,11011111b
    mov [bx+si],al
    add si,1
    loop s0

    pop cx
    add bx,16
    loop s

    mov ax,4c00h
    int 21h
code ends
end start
