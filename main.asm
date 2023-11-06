 .data
    ;MENU
    titulomenu db '***PROGRAMA TRADUCTORES***$'
    menu1 db '1.-operaciones con cadenas$'
    menu2 db '2.-dibujar$'
    menu3 db '3.-operaciones con archivos$'
    menu0 db '0.-salir$'
    
    
    ;OPERACIONES
    
    
    ;DIBUJOS
    
    
    ;ARCHIVO
    tituloarchivo db '**LECTOR DE ARCHIVO**$'
    archivo1 db '1.-crear/borrar$'
    archivo2 db '2.-leer$'
    archivo3 db '3.-escribir$'
    archivo4 db '4.-escribir abajo$'
    archivo0 db '0.-regresar$'
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
    opcion db 0
    longitudchar dw 0
    
    
include "include\iostring.txt"
include "include\iofile.txt"

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
    
    mostrar_archivo proc near
        call leer_data
        
        println salto
        println tituloarchivo
        println archivo1
        println archivo2
        println archivo3
        println archivo4
        println archivo0
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
            print salto
            jmp menu
        
        ;WUICHITO
        menu_operaciones:
            jmp salir_submenu
        
        ;JUANITO
        menu_dibujos:
            jmp salir_submenu
            
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
            ;Aqui se muestra un mensaje de error
            call mostrar_msginvalido
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
            
        ;Regresar al menu principal
        salir_submenu:
            println salto
            jmp menu
        
        ;Salir del programa    
        salir_pgm:                    
            mov ah,4CH
            int 21H
        
    main endp
end main