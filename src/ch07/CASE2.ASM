assume cs:code,ds:data
data segment
   db 'BaSiC'
   db 'MinIX'
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov bx,0
    mov cx,5

s:
    mov al,[bx]
    and al,11011111b
    mov [bx],al

    mov al,[bx+5]
    or al,00100000b
    mov [bx+5],al

    inc bx
    loop s

    mov ax,4c00h
    int 21h
code ends
end start
