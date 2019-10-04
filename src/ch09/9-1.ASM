assume cs:code

code segment

start:
    mov ax,0
    jmp short s
    add ax,1

s:
    inc ax

    mov ax,4c00h
    int 21h
code ends

end start
