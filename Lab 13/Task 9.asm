.model small
.stack 100h
.data
.code
main proc
    
    mov bx,1
    mov cx,5
    l1:
    push cx
    mov cx,bx 
    mov dl,49
    l2:
    mov al,dl
    add al,48
    mov ah,2
    int 21h 
    inc dl
    loop l2
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h 
    
    inc bx
    pop cx
    loop l1
    
    mov ah,4ch
    int 21h
    main endp
end main