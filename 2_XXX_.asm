TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hern�ndez Hern�ndez

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
;	Declaraci�n de un arreglo (vector)
numeros0_P2 byte 10, 20, 30, 40, 50
numeros1_P2 word 12, 14, 16, 18
numeros2_P2 dword 9, 11, 13, 15, 17, 19, 21

.code 

main2 PROC
;L�gica del Programa

	;esi y edi
	;opcion1

	mov esi, offset numeros0_P2
	mov eax, [esi]
	call writeDec

	call CrLf
	call CrLf

	mov esi, offset numeros1_P2
	mov eax, 0
	mov al, [esi]
	call writeDec

exit

main2 ENDP

END main2