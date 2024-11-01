.model small
.stack 100h
.data 
arr1 db 2,5,7,9,0 

.code
main proc
    
    mov ax,@data
    mov ds,ax
    mov si,offset arr1  
    
    
    
    mov cx,5 
    
    l1:
   
    push [si]
    inc si
    loop l1
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    
    mov cx,5
    l2:
    
    pop [si]  
    add [si], 48
    mov dx,[si] 
   
    mov ah,2
    int 21h
    
    loop l2
    
    mov ah,4ch
    int 21h
    main endp
end main
    