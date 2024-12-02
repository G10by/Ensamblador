.model small
.stack 100h
.@data
	cadena db 6,?,0,0,0,0
.code
	mov ax, @data	;inicializar segmento de datos
	mov ds, ax	

	mov ah, 04h
	mov dx, offset cadena 
	int 21h

	mov ah, 4ch
	int 21h
	

