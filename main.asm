 .data
    ;MENU
    titulomenu db '***PROGRAMA TRADUCTORES***$'
    menu1 db '1.-operaciones con cadenas$'
    menu2 db '2.-dibujar$'
    menu3 db '3.-operaciones con archivos$'
    menu0 db '0.-salir$'
    integrantes db '**INTEGRANTES**$'
    wuichito db 'Luis Alberto Hurtado Gomez$'
    juanito db 'Juan Luis Gonzalez Villalobos$'
    kevin db 'Kevin Alejandro Francisco Gonzalez$'
    
    
    ;OPERACIONES
    tituloperaciones db '**OPERACIONES CON N',163,'MEROS Y CADENAS**$'
    operacion1 db '1.-comparador de dos n',163,'meros$'
    operacion2 db '2.-repetidor de cadenas$'
    mensaje1 db 'ingresa el primer numero $'
    mensaje2 db 'ingresa el segundo numero $'
    nummayor db ' es el n',163,'mero mayor$'
    numigual db 'Ambos numeros son Iguales $'
    ingresecadena db 'ingrese una cadena $'
    repetircadena db 'dijite el numero de veces a repetir la cadena $'
    ;variables
    valor1 DB 0
    valor2 DB 0
    resultado db ?
    repcad DB 6
    cadena DB 100 dup('$'), '$'
    
    
    ;DIBUJOS
    titulodibujos db '**DIBUJOS**$'
    dibujo1 db '1.-dibujar gorro$'
    dibujo2 db '2.-dibujar santa afro$'
    dibujo3 db '3.-dibujar estrella$'
                                           
    
    ;ARCHIVO
    tituloarchivo db '**LECTOR DE ARCHIVO**$'
    archivo1 db '1.-crear/borrar$'
    archivo2 db '2.-leer$'
    archivo3 db '3.-escribir$'
    archivo4 db '4.-escribir abajo$'
    archivo5 db '5.-borrar texto$'
    filepath db 'E:\data\', 0
    flechainicio db 'Inicio<--$'
    flechafin db '-->Fin$'
    ;variables
    filename db 'E:\data\archivo.txt',0
    leido db 110 dup(" "), '$'
    escrito db 110 dup("$"), '$'
    longitudtexto dw 0
    maxchar dw 110
    handler dw ?
    
    
    ;GENERAL
    msgespera db '#=$'
    opcionerror db ' no es una opcion valida$'
    opregresar db '0.-regresar$'
    opcion db 0
    longitudchar dw 0
    
    
include "include\iostring.txt"
include "include\iofile.txt"
include "include\math.txt"
include "include\paint.txt"

.code
    leer_data proc near
        mov ax,@data
        mov ds,ax
        
        ret    
    leer_data endp
    
    mostrar_menu proc near
        call leer_data
        
        println titulomenu
        println menu1
        println menu2
        println menu3
        println menu0
        print msgespera
        
        ret                     
    mostrar_menu endp
    
    mostrar_operaciones proc near
        call leer_data
                      
        clear             
        println tituloperaciones
        println operacion1
        println operacion2
        println opregresar
        print msgespera
        
        ret
    mostrar_operaciones endp
    
    mostrar_dibujo proc near
        call leer_data
        
        clear
        println titulodibujos
        println dibujo1
        println dibujo2
        println dibujo3
        println opregresar
        print msgespera
        
        ret
    mostrar_dibujo endp
    
    mostrar_archivo proc near
        call leer_data
        
        clear
        println tituloarchivo
        println archivo1
        println archivo2
        println archivo3
        println archivo4
        println archivo5
        println opregresar
        print msgespera
        
        ret
    mostrar_archivo endp
    
    mostrar_msginvalido proc near
        println salto
            
        mov ah, 02H
        add opcion, '0'
        mov dl, opcion
        int 21H
            
        println opcionerror
        ret
    mostrar_msginvalido endp
        
    ;***MAIN***
    main proc
        
        ;MENU PRINCIPAL     
        menu:        
            call mostrar_menu
            leachar opcion
            sub opcion, '0' ;Convertimos a ASCII para poder comparar
            cmp opcion, 0 ;Pregunta si hay que salir
            je salir_pgm
            cmp opcion, 1 ;Pregunta si hay que ir a operaciones
            je menu_operaciones
            cmp opcion, 2 ;Pregunta si hay que ir a dibujos
            je menu_dibujos 
            cmp opcion, 3 ;Pregunta si hay que ir a archivo
            je menu_archivo
            ;Aqui se muestra un mensaje de error
            call mostrar_msginvalido
            leachar al
            jmp menu
        
        ;WUICHITO
        menu_operaciones:
            call mostrar_operaciones
            leachar opcion
            sub opcion, '0'
            cmp opcion, 0 ;Pregunta si hay que regresar
            je salir_submenu  
            cmp opcion, 1 ;Pregunta si hay que comparar dos numeros
            je comparar
            cmp opcion, 2 ;Pregunta si hay que repetir cadena
            je repetir_cadena
            ;Aqui se muestra un mensaje de error
            call mostrar_msginvalido
            leachar al
            jmp menu_operaciones
            
            comparar:
                print salto 
                println mensaje1
                leachar valor1
                sub valor1, '0'
                print salto
                println mensaje2
                leachar valor2 
                sub valor2, '0'
                print salto
                compare valor1, valor2 ;<--- AQUI COMPARAMOS
                cmp al,'$'
                je iguales
                
                noiguales: 
                    add al, '0'
                    printbyte al
                    println nummayor
                    leachar opcion
                    jmp menu_operaciones
                
                iguales:
                    println numigual
                    leachar opcion
                    jmp menu_operaciones
            
            repetir_cadena:
                print salto
                println ingresecadena
                leastring cadena, si
                print salto
                print repetircadena
                leachar repcad
                sub repcad, '0'
                mov cl, repcad
                print salto   
                
                .repetir: ;<-- COMENZAMOS CICLO
                    print cadena
                    dec cl
                    jnz .repetir
                leachar al
                
                jmp menu_operaciones 
            
        ;JUANITO
        menu_dibujos:
            call mostrar_dibujo
            leachar opcion
            clear
            sub opcion, '0'
            cmp opcion, 0
            je salir_submenu ;Si hay que salir
            cmp opcion, 1
            je dibujar_gorro ;Dibujamos Gorro 
            cmp opcion, 2
            je dibujar_santa ;Dibujamos Santa
            cmp opcion, 3
            je dibujar_estrella ;Dibujamos Estrella
            
            ;Aqui se muestra un mensaje de error
            call mostrar_msginvalido
            leachar al
            jmp menu_dibujos
            
            dibujar_gorro:
                clear
                GORRO
                leachar al
                clear    
                jmp regresar_dibujo
                
            dibujar_santa:
                clear
                SANTA
                leachar al
                clear
                jmp regresar_dibujo
            
            dibujar_estrella:
                clear
                ESTRELLA
                leachar al
                clear
                jmp regresar_dibujo
                
            regresar_dibujo:
                jmp menu_dibujos
            
        ;KEVIN
        menu_archivo:                               
            call mostrar_archivo
            leachar opcion
            sub opcion, '0' ;Convertimos a ASCII para poder comparar            
            cmp opcion, 0 ;Pregunta si hay que regresar
            je salir_submenu
            cmp opcion, 1 ;Pregunta si hay que crear o borrar el archivo
            je crear_borrar
            cmp opcion, 2 ;Pregunta si hay que leer
            je leer 
            cmp opcion, 3 ;Pregunta si hay que escribir
            je escribir   
            cmp opcion, 4 ;Pregunta si hay que escribir
            je escribir
            cmp opcion, 5
            je borrar
            ;Aqui se muestra un mensaje de error
            call mostrar_msginvalido
            leachar al
            jmp menu_archivo       
                                
            crear_borrar:
                createpath filepath
                createfile filename, 0, handler
                closefile handler
                jmp menu_archivo
            leer:
                println salto
                readfile filename, leido, maxchar, handler            
                closefile handler
                println flechainicio
                println leido
                print flechafin 
                leachar opcion
                jmp menu_archivo
            escribir:
                print salto
                leastring escrito, longitudtexto
                
                cmp opcion, 3 ;Si hay que escribir en la misma linea o no
                je escribir_texto
                
                writefile filename, leido, salto, 3, handler 
                closefile handler
                
                escribir_texto:
                    writefile filename, leido, escrito, longitudtexto, handler
                    closefile handler
                    jmp menu_archivo
            borrar:
                deletefile filename
                
                jmp menu_archivo            
          
        ;Regresar al menu principal
        salir_submenu:
            clear
            jmp menu
        
        ;Salir del programa    
        salir_pgm:
            clear
            println integrantes
            println wuichito
            println juanito
            println kevin
            leachar al
                                
            mov ah,4CH
            int 21H
        
    main endp
end main