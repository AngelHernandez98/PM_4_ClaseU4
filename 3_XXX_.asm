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
numeros0_P3 byte 10, 20, 30, 40, 50
numeros1_P3 word 12, 14, 16, 18
numeros2_P3 dword 9, 11, 13, 15, 17, 19, 21

.code 

main3 PROC
;Lógica del Programa

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