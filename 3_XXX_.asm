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
numeros0_P3 byte 10, 20, 30, 40, 50
numeros1_P3 word 12, 14, 16, 18
numeros2_P3 dword 9, 11, 13, 15, 17, 19, 21

.code 

main3 PROC
;L�gica del Programa

	;esi y edi
	;opcion1

	mov esi, offset numeros2_P3
	mov ecx, sizeOf numeros2_P3

	ciclo:
		mov eax, 0
		mov al, [esi]
		call writeDec
		inc esi
		call CrLf
		loop ciclo
		
exit

main3 ENDP

END main3