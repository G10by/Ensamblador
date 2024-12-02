.model small
.stack 100h
.data

	buffer db 5,?,5 dup(?)
	cadena db 10, 13, 2 dup ('j','a'),'$'
.code
	mov ax, @data	;inicializar segmento de datos
	mov ds, ax	

	mov ah, 0ah
	mov dx, offset buffer 
	int 21h

	mov ah, 9
	mov dx, offset cadena
	int 21h

	mov ah, 4ch
	int 21h
	END