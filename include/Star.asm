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
    
    ;**********COLOR AMARILLO**********
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 08D;fila inicial
    MOV CL, 08D;columna inicial
    MOV DH, 08D;fila final
    MOV DL, 13D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 09D;fila inicial
    MOV CL, 04D;columna inicial
    MOV DH, 09D;fila final
    MOV DL, 17D;columna final
    INT 10H  
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 10D;fila inicial
    MOV CL, 05D;columna inicial
    MOV DH, 10D;fila final
    MOV DL, 16D;columna final
    INT 10H  
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 11D;fila inicial
    MOV CL, 06D;columna inicial
    MOV DH, 11D;fila final
    MOV DL, 15D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 12D;fila inicial
    MOV CL, 07D;columna inicial
    MOV DH, 13D;fila final
    MOV DL, 14D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 14D;fila inicial
    MOV CL, 06D;columna inicial
    MOV DH, 15D;fila final
    MOV DL, 15D;columna final
    INT 10H 
    
    ;IZQUIERDA
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 16D;fila inicial
    MOV CL, 05D;columna inicial
    MOV DH, 16D;fila final
    MOV DL, 09D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 05D;columna inicial
    MOV DH, 17D;fila final
    MOV DL, 07D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 18D;fila inicial
    MOV CL, 04D;columna inicial
    MOV DH, 18D;fila final
    MOV DL, 05D;columna final
    INT 10H
    
    ;DERECHA
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 16D;fila inicial
    MOV CL, 12D;columna inicial
    MOV DH, 16D;fila final
    MOV DL, 16D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 14D;columna inicial
    MOV DH, 17D;fila final
    MOV DL, 16D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11101111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 18D;fila inicial
    MOV CL, 16D;columna inicial
    MOV DH, 18D;fila final
    MOV DL, 17D;columna final
    INT 10H
    
    ;**********COLOR ROJO********** 
    ;*****GORRO*****
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 00D;fila inicial
    MOV CL, 08D;columna inicial
    MOV DH, 00D;fila final
    MOV DL, 09D;columna final
    INT 10H
           
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 01D;fila inicial
    MOV CL, 07D;columna inicial
    MOV DH, 01D;fila final
    MOV DL, 10D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 02D;fila inicial
    MOV CL, 06D;columna inicial
    MOV DH, 02D;fila final
    MOV DL, 11D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 03D;fila inicial
    MOV CL, 08D;columna inicial
    MOV DH, 03D;fila final
    MOV DL, 12D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 04D;fila inicial
    MOV CL, 08D;columna inicial
    MOV DH, 04D;fila final
    MOV DL, 13D;columna final
    INT 10H
    
           
         
    ;**********COLOR BLANCO**********
    ;*****GORRO***** 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 06D;fila inicial
    MOV CL, 07D;columna inicial
    MOV DH, 06D;fila final
    MOV DL, 14D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 03D;fila inicial
    MOV CL, 04D;columna inicial
    MOV DH, 03D;fila final
    MOV DL, 04D;columna final
    INT 10H
    
       
    ;**********COLOR NEGRO**********
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 10D;fila inicial
    MOV CL, 09D;columna inicial
    MOV DH, 12D;fila final
    MOV DL, 09D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 00001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 10D;fila inicial
    MOV CL, 12D;columna inicial
    MOV DH, 12D;fila final
    MOV DL, 12D;columna final
    INT 10H
    
    
    
    
    
    
    ;Retornar control de programa
    MOV AH, 4CH  ;Obligatorio
    INT 21H      ;Obligatorio
        
    CODIGO ENDS
END INICIO