assume cs:code
code segment
start:
    ; 1. 100001/100
    ; 100001 = 186a1h
    ; mov dx,1
    ; mov ax,86a1h
    ; mov bx,100  ; no 'h'
    ; div bx

    ; 2. 1001/100
    ; mov ax,1001
    ; mov bx,100
    ; div bx

    mov ax,4c00h
    int 21h
code ends
end start
