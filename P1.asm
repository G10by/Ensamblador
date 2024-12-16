.MODEL SMALL
.STACK 100h
.DATA
    inicio db "inicio"
    fin db "fin"
.CODE
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, 0B800h
    MOV ES, AX

    MOV AH, 00001111b

    MOV SI, 0
    MOV DI, 0
    MOV CX, 12
    MOSTRAR1:
        MOV AL, inicio[SI]
        MOV ES:[160+DI], AX
       
        ADD SI, 1
        ADD DI, 2
        DEC CX
        JNZ MOSTRAR1

    MOV AX, 0B800h
    MOV ES, AX

    MOV AH, 00001111b

    MOV SI, 0
    MOV DI, 0
    MOV CX, 6
    MOSTRAR2:
        MOV AL, inicio[SI]
        MOV ES:[320+DI], AX
       
        ADD SI, 1
        ADD DI, 2
        DEC CX
        JNZ MOSTRAR2

    MOV AH, 4CH
    INT 21h

    END
