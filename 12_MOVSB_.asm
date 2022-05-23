TITLE Introduccion

;DESCRPICI�N
;Objetivo: Parte dos U5
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
origen db "Francisco", 0
destino db 20 dup ('?')

.code
 main12 PROC
;L�gica del Programa
;Mover los datos de la memoria direccionada por ESI a la memoria direccionada por EDI
;Siempre de ESI a EDI 



mov edx, offset origen
call writestring
call crlf

mov edx, offset destino
call writestring
call crlf
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ecx, sizeof origen
mov eax, ecx
call writedec	;imprime tama�o cadena
call crlf

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset origen
mov edi, offset destino

;movsb	;incrementan en 1 automaticamente esi y edi  
;movsb
;movsb

rep movsb	;repite movsb mientras se cumpla ecx > 0


mov edx, offset destino
call writestring	;se imprime destino 
call crlf

exit
main12 ENDP
END main12

;explicar por que da menos -1 y que hacer para que no de este resultado(clase 02,05,2022)
