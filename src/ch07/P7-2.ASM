assume cs:code,ds:data
data segment
    db 'welcome to masm'
    db '...............'
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov bx,0
    mov cx,16
s:
    mov al,[bx]
    mov 16[bx],al
    inc bx
    loop s

    mov ax,4c00h
    int 21h
code ends
end start
