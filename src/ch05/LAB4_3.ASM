assume cs:code
code segment
    mov ax,cs
    mov ds,ax
    mov ax,0020h
    mov es,ax
    mov bx,0
    mov cx,17h ;solution 1: use offset ;solution2: use debug -u and count
s:
    mov al,[bx]
    mov es:[bx],al
    inc bx
    loop s
    mov ax,4c00h
    int 21h
code ends
end

