TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumno: Angel Anastasio Hernandez Hernandez
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

PrintLn_P10 MACRO texto
	LOCAL msj
	.data
	; Área de Declaración de Variables
		;msj db "texto",0 
		msj db texto,0

	.code
	; Lógica del Programa
	mov edx, offset msj
	call writeString
	call CrLf

ENDM

.data
; Área de Declaración de Variables
matriz0_P10 dword  5,  9, 15
		    dword 20, 50,  3
		    dword 11, 19,  8

.code
main10 PROC
;Lógica del Programa
	
	PrintLn_P10 "En que fila quieres el elemento: " 
	call readInt
	mov ebx, 3	;tot E de la fila
	mul ebx	;fila * total de elementos
	mov ecx, 4	;bytes por tipo de dato
	mul ecx	;bytes por tipo de dato
	mov esi, eax

	PrintLn_P10 "Columna deseada: "
	call readInt	;eax
	mov ecx,4
	mul ecx
	mov edi, eax
	PrintLn_P10 "El valor correspondiente es: "
	mov eax, matriz0_P10[esi+edi]
	call writeDec

exit
main10 ENDP
END main10