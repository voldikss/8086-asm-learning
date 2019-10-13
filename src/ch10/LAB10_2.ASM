assume cs:code

code segment

start:
    mov ax,4240h
    mov dx,000fh
    mov cx,0Ah
    call divdw

    mov ax,4c00h
    int 21h
divdw:
    mov bx,ax
    mov ax,dx
    mov dx,0
    div bx
    ; ax  dx
    
code ends

end start
