.model small 
.stack 100h
.data
    
    cadena db       5, 4 dup(?)
    
.code 
    mov ax, offset cadena
    mov ds, ax

    ;tomar por teclado
    mov dx, offset cadena
    mov ah, 0ah
    int 21h

    ;final de programa
    mov ah, 4ch
    int 21h
END
