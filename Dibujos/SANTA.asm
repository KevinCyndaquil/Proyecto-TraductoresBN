DATOS SEGMENT
    
    MSUNO     DB 10,13," *$";Guardar cadena 
    
CODIGO SEGMENT
    ASSUME: DS DATOS, CS:CODIGO  
    
    INICIO:
    ;Pasar el segmento de datos a codigo
    MOV AX, DATOS;Obligatorio
    MOV DS, AX   ;Obligatorio 
    
    
    ;Mostrar en pantalla una cadena
    MOV AH, 09H 
    MOV DX, OFFSET MSUNO
    INT 21H
    
    ;**********COLOR ROJO********** 
    ;*****GORRO*****
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 00D;fila inicial
    MOV CL, 14D;columna inicial
    MOV DH, 00D;fila final
    MOV DL, 18D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 01D;fila inicial
    MOV CL, 13D;columna inicial
    MOV DH, 01D;fila final
    MOV DL, 19D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 02D;fila inicial
    MOV CL, 15D;columna inicial
    MOV DH, 02D;fila final
    MOV DL, 20D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 03D;fila inicial
    MOV CL, 13D;columna inicial
    MOV DH, 04D;fila final
    MOV DL, 21D;columna final
    INT 10H
    ;*****ABRIGO***** 
    ;IZQUIERDA
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 16D;fila inicial
    MOV CL, 12D;columna inicial
    MOV DH, 16D;fila final
    MOV DL, 12D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 16D;fila inicial
    MOV CL, 12D;columna inicial
    MOV DH, 16D;fila final
    MOV DL, 12D;columna final
    INT 10H    
    
     
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 13D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 13D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 18D;fila inicial
    MOV CL, 14D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 14D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 19D;fila inicial
    MOV CL, 15D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 16D;columna final
    INT 10H   
    ;DERECHA
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 16D;fila inicial
    MOV CL, 23D;columna inicial
    MOV DH, 16D;fila final
    MOV DL, 23D;columna final
    INT 10H  
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 22D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 22D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 18D;fila inicial
    MOV CL, 21D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 21D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 19D;fila inicial
    MOV CL, 20D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 20D;columna final
    INT 10H
    
    ;*****MANGAS*****
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 11D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 11D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 24D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 24D;columna final
    INT 10H
    
    ;*****PANTALONES*****
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 22D;fila inicial
    MOV CL, 13D;columna inicial
    MOV DH, 22D;fila final
    MOV DL, 22D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 23D;fila inicial
    MOV CL, 14D;columna inicial
    MOV DH, 24D;fila final
    MOV DL, 16D;columna final
    INT 10H  
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 23D;fila inicial
    MOV CL, 20D;columna inicial
    MOV DH, 24D;fila final
    MOV DL, 22D;columna final
    INT 10H
    
    
    ;**********COLOR VERDE**********  
    ;*******B0LSA*******
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 15D;fila inicial
    MOV CL, 10D;columna inicial
    MOV DH, 15D;fila final
    MOV DL, 11D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 16D;fila inicial
    MOV CL, 09D;columna inicial
    MOV DH, 16D;fila final
    MOV DL, 10D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 08D;columna inicial
    MOV DH, 21D;fila final
    MOV DL, 09D;columna final
    INT 10H  
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 22D;fila inicial
    MOV CL, 09D;columna inicial
    MOV DH, 22D;fila final
    MOV DL, 10D;columna final
    INT 10H
           
         
    ;**********COLOR BLANCO**********
    ;*****GORRO***** 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 05D;fila inicial
    MOV CL, 10D;columna inicial
    MOV DH, 05D;fila final
    MOV DL, 10D;columna final
    INT 10H  
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 03D;fila inicial
    MOV CL, 10D;columna inicial
    MOV DH, 04D;fila final
    MOV DL, 11D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 06D;fila inicial
    MOV CL, 12D;columna inicial
    MOV DH, 07D;fila final
    MOV DL, 23D;columna final
    INT 10H    
    ;
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 09D;fila inicial
    MOV CL, 13D;columna inicial
    MOV DH, 15D;fila final
    MOV DL, 22D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 11D;fila inicial
    MOV CL, 12D;columna inicial
    MOV DH, 13D;fila final
    MOV DL, 23D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 16D;fila inicial
    MOV CL, 14D;columna inicial
    MOV DH, 16D;fila final
    MOV DL, 21D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 15D;columna inicial
    MOV DH, 17D;fila final
    MOV DL, 20D;columna final
    INT 10H  
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 18D;fila inicial
    MOV CL, 17D;columna inicial
    MOV DH, 18D;fila final
    MOV DL, 19D;columna final
    INT 10H
       
    ;**********GUANTES**********   
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 20D;fila inicial
    MOV CL, 11D;columna inicial
    MOV DH, 21D;fila final
    MOV DL, 11D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 21D;fila inicial
    MOV CL, 12D;columna inicial
    MOV DH, 21D;fila final
    MOV DL, 12D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 20D;fila inicial
    MOV CL, 24D;columna inicial
    MOV DH, 21D;fila final
    MOV DL, 24D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 21D;fila inicial
    MOV CL, 23D;columna inicial
    MOV DH, 21D;fila final
    MOV DL, 23D;columna final
    INT 10H
    
    ;**********COLOR AMARILLO**********
    ;*****CINTURON*****
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 20D;fila inicial
    MOV CL, 17D;columna inicial
    MOV DH, 21D;fila final
    MOV DL, 19D;columna final
    INT 10H  
       
    ;**********COLOR NEGRO**********
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 00D;fila inicial
    MOV CL, 00D;columna inicial
    MOV DH, 00D;fila final
    MOV DL, 00D;columna final
    INT 10H
    
    ;**********ROSTRO**********
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 09D;fila inicial
    MOV CL, 15D;columna inicial
    MOV DH, 11D;fila final
    MOV DL, 21D;columna final
    INT 10H
    ;OJOS
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 10D;fila inicial
    MOV CL, 20D;columna inicial
    MOV DH, 10D;fila final
    MOV DL, 20D;columna final
    INT 10H
           
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 10D;fila inicial
    MOV CL, 16D;columna inicial
    MOV DH, 10D;fila final
    MOV DL, 16D;columna final
    INT 10H 
    
    ;PECAS
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 11D;fila inicial
    MOV CL, 15D;columna inicial
    MOV DH, 11D;fila final
    MOV DL, 15D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 11D;fila inicial
    MOV CL, 18D;columna inicial
    MOV DH, 11D;fila final
    MOV DL, 18D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 11D;fila inicial
    MOV CL, 21D;columna inicial
    MOV DH, 11D;fila final
    MOV DL, 21D;columna final
    INT 10H
    
    
    
    
    ;Retornar control de programa
    MOV AH, 4CH  ;Obligatorio
    INT 21H      ;Obligatorio
        
    CODIGO ENDS
END INICIO