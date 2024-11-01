.model small
.stack 100h
.data
arr db , 49,50,51,52,53,54,55,56,57
.code
main proc
    
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    mov cx,9
    l1:
    mov dl,[si+8]
    mov ah,2
    int 21h
    dec si;
    loop l1
    
    mov ah,4ch
    int 21h
    main endp
end main