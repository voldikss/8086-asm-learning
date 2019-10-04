assume cs:code
code segment
start:
s:
    mov ax,bx
    mov si,offset s
    mov di,offset s0
    mov ax,cs:[si]
    mov cs:[di],ax
s0:
    nop
    nop

    mov ax,4c00h
    int 21h
code ends
end start
