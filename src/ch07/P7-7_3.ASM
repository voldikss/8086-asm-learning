; use stack to temporary data(cx here)
assume cs:code,ds:data
data segment
    db 'ibm             '
    db 'dec             '
    db 'dos             '
    db 'vax             '
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
    mov si,0    ; inner loop variable
    push cx   ; store cx temporarily
    mov cx,3    ; inner count
s0:
    mov al,[bx+si]
    and al,11011111b
    mov [bx+si],al
    inc si
    loop s0

    pop cx   ; restore outer cx
    add bx,16
    loop s

    mov ax,4c00h
    int 21h
code ends
end start
