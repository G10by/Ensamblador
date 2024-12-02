.model small
.stack 100h
.data
	buffer db 4, ?, 5 dup(?)
	peso db 10d, 100d, 1000d
	
.code
	mov ax, buffer
	mov ds, ax

	;inicializar memoria de video
	;la memoria de video es una seccion de memoria la cual el controlador grafico revisa continuamente y 
	; actualiza rn pantalla 
	; tenemos que calcular el ffset en funcion de la fila y la columna
	; utilizamos el di como offset
	; desde .list podemos ver las direccion directamente
	;la memoria de video empeiza en el b800
	;modo de direccionamiento con prefijo de segmento ES:[DI]
	; un numeor en hexadecimal no puede empezar con 0 porque el parser  va a pensar que es el nombre 
	;nombre de un variable
	;no se puede usar el segmento de datos porque si usamos este ya no se puede acceder a las varibales
	

	mov ax, 0b800h
	mov es, ax
	mov es:[di], al
	;falta poner el modo de texto en este caso cuya direccion de memoria seria 03h
	;las interrupciones puede cambiarte tus registros
	;hay que meter las rutinas fuera dle programa despues de la rutinas 21h 
	;miproc proc
	:miproc stop

	;como calcular el offset dada la fila y la columna offset=(80f + c)*2
	;tiene dos bytes el primer byte es para carater y el segundo para atributo


	bucle:
	mov cx, 5
	mov

	; los lunes a a las 20:30
	; los miercoes de 12:00 a 14:00 y 19:30 a 20:30