assume cs:code

code segment

start:
    mov ax,0
    mov bx,0
    jmp far ptr s
    db 256 dup (0)  ; 256 ---- far

s:
    add ax,1
    inc ax

    mov ax,4c00h
    int 21h
code ends

end start
