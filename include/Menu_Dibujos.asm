;***********MACROS***********
;***********leer numero***********
include "Dibujos.txt"
;***********CLS***********
MACRO CLS
        
    ;********COLORES DE FONDO********
    
    ;Ingrezar numero al sistema
    MOV AH, 01H  
    INT 21H
    SUB AL, 30H  ;convierte simbolo a digito
    MOV NP, AL
    
    QUITAFONDO
              
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 10011010B   ;Bit Color de fondo xxxx Color de pagina yyyy
    MOV CH, 00D;fila inicial
    MOV CL, 00D;columna inicial
    MOV DH, 15D;fila final
    MOV DL, 40D;columna final
    INT 10H
  ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 10011111B   ;Bit Color de fondo xxxx Color de pagina yyyy
    MOV CH, 00D;fila inicial
    MOV CL, 10D;columna inicial
    MOV DH, 15D;fila final
    MOV DL, 20D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 10011000B   ;Bit Color de fondo xxxx Color de pagina yyyy
    MOV CH, 00D;fila inicial
    MOV CL, 20D;columna inicial
    MOV DH, 06D;fila final
    MOV DL, 30D;columna final
    INT 10H   
    
    ;********PRESENTACION********
   
    ;Posicionar el cursor
    MOV BH, 0 ;PAGINA
    MOV DH, 5 ;FILA
    MOV DL, 10 ;COLUMNA
    MOV AH, 2 ;SERVICIO
    INT 10H  
    
    
ENDM

;****************************
;***********IMPRIMIR***********     
IMPRIMIR MACRO msg
	mov ah,09H
	lea dx, msg
	int 21H
ENDM


;****************************     
;****************************     
;***********CODIGO***********
DATOS SEGMENT
    NP        DB 0;Guardar numero
    NUMENU    DB 0;Guardar numero
    MSMENU    DB 10,13,"DIBUJOS",10,13,"1.GORRO",10,13,"2.SANTA",10,13,"3.ESTRELLA",10,13,"4.SALIR",10,13,"OPCION: $";Guardar cadena 
    
    
CODIGO SEGMENT
    ASSUME: DS DATOS, CS:CODIGO  
    
    INICIO:
    ;Pasar el segmento de datos a codigo
    MOV AX, DATOS;Obligatorio
    MOV DS, AX   ;Obligatorio 
    
    CLS
    
    CALL MENU
    
    ;Retornar control de programa
    MOV AH, 4CH  ;Obligatorio
    INT 21H      ;Obligatorio
    
    
    
    ;****************************
;***********DINUJO UNO***********
DIBUNO PROC
	
	GORRO 
	CLS
    CALL MENU
	
RET

    DIBUNO ENDP

;****************************
;***********DINUJO DOS***********
DIBDOS PROC
	
	SANTA
	CLS
    CALL MENU
RET

    DIBDOS ENDP

;****************************
;***********DINUJO TRES***********
DIBTRES PROC
	
    ESTRELLA
    CLS
    CALL MENU
    
	RET

    DIBTRES ENDP

;****************************
;********BYE DUDE********
BYE PROC    
    ;Retornar control de programa
    MOV AH, 4CH  ;Obligatorio
    INT 21H      ;Obligatorio
    
RET    
BYE ENDP

;****************************
;PROCEDIMIENTO MENU
    MENU PROC
    
    ;********OPCION MENU********
    
    ;Mostrar en pantalla una cadena
    IMPRIMIR MSMENU
    
    
    ;Ingrezar numero al sistema
    MOV AH, 01H  
    INT 21H
    SUB AL, 30H  ;convierte simbolo a digito
    MOV NUMENU, AL
    
    
    CLS
        
    CMP NUMENU, 1
    JE CALL DIBUNO
    
    CMP NUMENU, 2
    JE CALL DIBDOS
    
    CMP NUMENU, 3
    JE  CALL DIBTRES
    
    CMP NUMENU, 4
    JE  CALL BYE
    
    CLS
    CALL MENU
    
    RET

    MENU ENDP
    
;****************************
;****************************
;***********FINAL************ 
        
    CODIGO ENDS
END INICIO