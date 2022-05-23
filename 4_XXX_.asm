TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
numeros0_P4 byte 10, 20, 30, 40, 50
numeros1_P4 word 12, 14, 16, 18
numeros2_P4 dword 9, 11, 13, 15, 17, 19, 21

.code 

main4 PROC
;Lógica del Programa

	;esi y edi
	;opcion1

	mov esi, 0   ;Índice
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