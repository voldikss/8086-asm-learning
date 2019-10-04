; TODO...
assume cs:code,ds:data
data segment
data ends

code segment
start:

    mov ax,4c00h
    int 21h
code ends
end start
