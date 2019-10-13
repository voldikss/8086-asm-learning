; use method methioned in ch08
assume cs:code,ds:data

data segment
    db 'word',0
    db 'unix',0
    db 'wind',0
    db 'good',0
data ends

code segment

start:
    mov ax,data
    mov ds,ax

    mov bx,0
    mov cx,4
s:
    mov si,0
    push cx
    mov cx,4
s0:
    and byte ptr [bx+si],11011111b
    inc si
    loop s0

    pop cx
    add bx,5
    loop s

    mov ax,4c00h
    int 21h
code ends

end start
