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
numeros0_P4 byte 10, 20, 30, 40, 50
numeros1_P4 word 12, 14, 16, 18
numeros2_P4 dword 9, 11, 13, 15, 17, 19, 21

.code 

main4 PROC
;L�gica del Programa

	;esi y edi
	;opcion1

	mov esi, 0   ;�ndice
	mov ecx, sizeOf numeros0_P4

	ciclo:
		mov eax, 0
		mov al, numeros0_P4[esi]
		inc esi
		call writeDec
		call CrLf
		loop ciclo
		
exit

main4 ENDP

END main4