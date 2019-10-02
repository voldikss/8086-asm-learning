assume cs:code,ds:data
data segment
    db 'BaSiC'
    db 'iNfOrMaTiOn'
data ends

code segment
start:
    mov ax,data
    mov ds,ax

    mov cx,5
    mov bx,0
s:
    mov al,[bx]
    and al,11011111b ;011111b is wrong !!! (it means 00011111b!!!)
    mov [bx],al

    inc bx
    loop s

    mov cx,11
    mov bx,5
s0:
    mov al,[bx]
    or al,00100000b  ;even though 100000b is right,it not good enough...
    mov [bx],al

    inc bx
    loop s0

    mov ax,4c00h
    int 21h
code ends
end start
