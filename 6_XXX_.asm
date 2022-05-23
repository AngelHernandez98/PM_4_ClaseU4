TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
numeros dword 11,40,3,55,15

.code
 main6 PROC
;Lógica del Programa

	mov eax, sizeof numeros
	call writeDec
	mov ebx, 4	
	mov edx, 0
	div ebx
	mov ecx, eax	;ecx = Total del arreglo

	mov ebx,0	;Suma = 0
	mov edi,0	;contador o indice

	call crlf
	ciclo:
		add ebx,numeros[edi]
		add edi, 4	;Debido a que cada valor del arreglo es de 4 bytes
		loop ciclo
		mov edx, 0
		xchg eax, ebx
		div ebx
		call writeDec

exit
main6 ENDP
END main6