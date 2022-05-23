TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
cadena1_14 db "GARUCO", 0
.code
 main14 PROC
;Lógica del Programa
;SCASB 
;Explorar cadena: compara el acumulador (AL, AX o EAX) con el 
;contenido de la memoria dureccionada por EDI
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov edi, offset cadena1_14

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov eax, 0 
call readchart; al
call writechart ;echo
;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov ebx, 0	;contador
mov ecx, sizeof cadena1_14

ciclo:
	inc ebx
	cmp ebx, ecx
	jz continuar
	scasb
	jnz ciclo

continuar:

cmp ebx, ecx
jnz no_es_igual
jmp salir 

mov eax, ecx
call writedec

exit
main14 ENDP
END main14
;T15_ asegurarse que ingrsada una letra minuscula o mayuscyla pueda buscar la letra sin problemas 
;T16 Encontrar todas las apariciones de una misma letra ingresada por el usuario 