.data
    ;paths
    filepath db 'E:\data\',0
    filename db 'E:\data\file.txt',0
    handler dw ?                       
    ;messages                        
    msgmenu1 db '1.Crear Archivo$'
    msgmenu2 db '2.Escribir Archivo$'
    msgmenu3 db '3.Leer Archivo$'
    msgmenu4 db '4.Vaciar Archivo$'
    msgmenu0 db '0.Salir$'
    msgcreate db '**Archivo leido correctamente**',10,13,'$'
    msgcreated db 'El archivo ya existe$'
    msgerror db 'Archivo no pudo ser creado correctamente$'
    
    ;variables
    message db 20, 0 20 dup('$')
    vrmsglength db 0,0, '$'
    vrlength dw 0
    fileoption db 0  

include "include\stroutin.txt"    
    
.code
    ;#move to ds the variables in @data
    variables proc near
        mov ax,@data
        mov ds,ax
        
        ret
    variables endp
    
    ;#get legth for the current value in message var
    getMsgLength proc near
        mov ax,00H
        mov al,message[1]
        aam
            add ax,3030H
        mov vrmsglength[0],ah
        mov vrmsglength[1],al
        
        ret
    getMsgLength endp
        
    ;#open the file
    createFile proc near
        call variables
        
        mov ah,39H
        mov dx,offset filepath
        int 21H
    
        mov ah,3CH
        mov cx,00H
        mov dx,offset filename
        int 21H
        
        ret
    createFile endp  
    
    openFileAsRead proc near
        
        mov ah,3DH
        mov al,00H
        lea dx,filename
        int 21H
        
        mov ah,42H
        mov al,00H
        mov bx,ax
        mov cx,50
        int 21H
        
        mov ah,3FH
        mov bx,ax
        mov cx,10
        lea dx,message
        int 21H 
        
        mov ah,09H
        int 21H
            
    openFileAsRead endp
    
    openFileAsWrite proc near
    
        mov ah,3DH
        mov al,01H
        lea dx,filename
        int 21H
        
        ret
    openFileAsWrite endp
    
    ;#close the file
    closeFile proc near
        mov ah,3EH
        mov bx,ax
        int 21H
        
        ret
    closeFile endp 
    
    ;#show all avalible options for this program 
    showFileMenu proc near
        
        println msgmenu1
        println msgmenu2
        println msgmenu3
        println msgmenu4
        println msgmenu0
        
        ret
    showFileMenu endp
        
        
            
    
    ;main code
    main proc
     
        file_menu:
            
            call variables
            
            print salto
            
            call showFileMenu
            
            getchar fileoption
            sub fileoption,30H
            
            cmp fileoption,0
            je exit_file
            cmp fileoption,1
            je create_file
            cmp fileoption,2
            je write_file
            cmp fileoption,3
            je read_file
            cmp fileoption,4
            je delete_file
        
        ;print salto
        ;println message+2
        ;print msglength
    
        ;jmp exitFile
        create_file:
            call createFile
            jc error
            
            call closeFile 
            
            jmp file_menu
        
        read_file:
            print salto
            
            call openFileAsRead
            
            call closeFile
        
            jmp file_menu
        
        write_file:
            call openFileAsWrite
            jc error
            mov handler,ax
            
            getentry message, vrlength
            sub vrlength,1
               
            mov ah,40H
            mov bx,handler
            mov cx,vrlength
            lea dx,message
            int 21H
            
            cmp cx,ax
            jne error
            
            call closeFile
            ;jc error
            jmp file_menu
        
        delete_file:
            mov ah,41H
            lea dx,filename
            int 21H
            jc error
            
            jmp file_menu
            
        
        error:
            println msgerror
            jmp file_menu
        
        exit_file:
            call closeFile
        
            mov ah,4CH
            int 21H  
       
    main endp    
end main