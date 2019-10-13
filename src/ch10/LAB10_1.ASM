assume cs:code,ds:data

data segment
    db 'Welcome to masm!',0
data ends

code segment

start:
    mov dh,8
    mov dl,3
    mov cl,2
    mov ax,data
    mov ds,ax
    mov si,0
    call show_str

    mov ax,4c00h
    int 21h
show_str:
    ;TODO
code ends

end start
