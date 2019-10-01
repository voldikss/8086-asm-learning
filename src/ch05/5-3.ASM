assume cs:code
code segment
    mov ax,0ffffh ;0ffffh not ffffh(wrong)
    mov ds,ax
    mov bx,0006h

    mov al,[bx]  ;mov ax,[bx] is wrong!!! 
    mov ah,0     ;important

    mov dx,0

    mov cx,3

s:
    add dx,ax ;cannot use al here, because the two regs' size must be equal
    loop s

    mov ax,4c00h
    int 21h
code ends
end
