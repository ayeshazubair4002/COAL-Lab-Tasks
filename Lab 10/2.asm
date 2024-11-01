.model small
.stack 100h
.data
arr db , 49,50,51,52,53,54,55
.code
main proc
    
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    mov cx,7
    l1:
    mov dl,[si]
    mov ah,2
    int 21h
    inc si;
    loop l1
    
    mov ah,4ch
    int 21h
    main endp
end main