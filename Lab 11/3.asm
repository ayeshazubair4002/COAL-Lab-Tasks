.model small
.stack 100h
.data
arr db 'Hellooooo$'
.code

main proc
    
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    
    mov cx,9
    l1:
    push [si]
    inc si
    loop l1
    
    mov cx,9
    
    l2:
    pop [si]
    mov dx,[si]
    mov ah,2
    int 21h
    inc si
    loop l2
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    