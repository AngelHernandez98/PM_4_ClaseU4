INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
cadena1_7 db "GARUCO",0

.code
main_7 PROC
; Lógica del Programa

mov eax, 0 ; limpiar el registro

call readint ; leer la posicion de la que se obtendra letra en la cadena

;LODSB
;Cargar acumulador desde cadena: carga la memoria direccionada por ESI al acumulador

mov esi, offset cadena1_7 ; 
add esi, eax  ; coloca a esi en la localidad de memoria deseada
;para obtener la letra de la posicion indicada por el usuario

mov eax, 0 ;limpia el registro

lodsb ;copia la letra de la posicion deseada de la cadena en al

call crlf
call writechar
call crlf




exit

main_7 ENDP

END main_7