assume cs:code,ds:data
data segment
    db 'DEC'
    db 'Ken Oslen'
    dw 137
    dw 40
    db 'PDP'
data ends

code segment
start:
    mov ax,data
    mov ds,ax
    mov bx,0

    mov word ptr [bx+0ch],38
    mov word ptr [bx+0eh],70

    mov si,0
    mov byte ptr [bx+si+10h],'V'
    inc si
    mov byte ptr [bx+si+10h],'A'
    inc si
    mov byte ptr [bx+si+10h],'X'

    mov ax,4c00h
    int 21h
code ends
end start
