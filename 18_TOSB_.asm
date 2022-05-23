INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
cadena1_6 db "GARUCO",0

.code
main_6 PROC
; Lógica del Programa

mov eax, 0 ; limpiar el registro

call readchar ; leer un caracter  ; lo guarda en eax
call writechar ; echo del caracter leido (confirmacion de lectura)
call crlf ; salto de linea

mov ebx, eax ; respalda la letra leida

call readint ; leer la posicion en la que irá la letra en la cadena

;STOSB
;Almacenar datos de cadena: almacena el contenido del acumulador en la memoria
;direccionada por EDI

mov edi, offset cadena1_6 ; direccion de la cadena1_6

add edi, eax ; para obtener la ubicacion de mem asociada a la posicion deseada

mov eax, ebx ; recuperar a la letra leida

stosb ; copiara el contenido (letra) en la mem asociada a edi

call crlf
mov edx, offset cadena1_6 ;
call writestring
call crlf 

exit

main_6 ENDP

END main_6