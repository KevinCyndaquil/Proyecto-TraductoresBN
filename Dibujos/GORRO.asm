DATOS SEGMENT

    MSUNO     DB 10,13,"*$";Guardar cadena 
    
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
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 15D;fila inicial
    MOV CL, 07D;columna inicial
    MOV DH, 15D;fila final
    MOV DL, 29D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 14D;fila inicial
    MOV CL, 08D;columna inicial
    MOV DH, 14D;fila final
    MOV DL, 28D;columna final
    INT 10H    
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 13D;fila inicial
    MOV CL, 08D;columna inicial
    MOV DH, 13D;fila final
    MOV DL, 27D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 11D;fila inicial
    MOV CL, 09D;columna inicial
    MOV DH, 12D;fila final
    MOV DL, 26D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 10D;fila inicial
    MOV CL, 10D;columna inicial
    MOV DH, 10D;fila final
    MOV DL, 26D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 09D;fila inicial
    MOV CL, 11D;columna inicial
    MOV DH, 09D;fila final
    MOV DL, 28D;columna final
    INT 10H  
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 08D;fila inicial
    MOV CL, 11D;columna inicial
    MOV DH, 08D;fila final
    MOV DL, 29D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 07D;fila inicial
    MOV CL, 12D;columna inicial
    MOV DH, 07D;fila final
    MOV DL, 28D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 06D;fila inicial
    MOV CL, 13D;columna inicial
    MOV DH, 06D;fila final
    MOV DL, 27D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 05D;fila inicial
    MOV CL, 15D;columna inicial
    MOV DH, 05D;fila final
    MOV DL, 26D;columna final
    INT 10H   
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 01001111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 04D;fila inicial
    MOV CL, 16D;columna inicial
    MOV DH, 04D;fila final
    MOV DL, 24D;columna final
    INT 10H
    
    
    ;**********COLOR BLANCO**********
  
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 17D;fila inicial
    MOV CL, 06D;columna inicial
    MOV DH, 20D;fila final
    MOV DL, 30D;columna final
    INT 10H
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 18D;fila inicial
    MOV CL, 05D;columna inicial
    MOV DH, 19D;fila final
    MOV DL, 31D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 16D;fila inicial
    MOV CL, 07D;columna inicial
    MOV DH, 16D;fila final
    MOV DL, 29D;columna final
    INT 10H
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 15D;fila inicial
    MOV CL, 09D;columna inicial
    MOV DH, 15D;fila final
    MOV DL, 27D;columna final
    INT 10H  
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 09D;fila inicial
    MOV CL, 29D;columna inicial
    MOV DH, 12D;fila final
    MOV DL, 30D;columna final
    INT 10H 
    
    ;Color de Fondo
    MOV AH, 06H         ;09H, 06H FUNCION  10 H INTERRUPCION
    MOV BH, 11111111B   ;Bit indicador-0 Color de fondo-001 Color del texto-1111B
    MOV CH, 10D;fila inicial
    MOV CL, 28D;columna inicial
    MOV DH, 11D;fila final
    MOV DL, 31D;columna final
    INT 10H
    
    
    
    
    
    
    
    
    
    ;Retornar control de programa
    MOV AH, 4CH  ;Obligatorio
    INT 21H      ;Obligatorio
        
    CODIGO ENDS
END INICIO
