TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hern�ndez Hern�ndez

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc
INCLUDE LibreriaMacros.inc

PrintLn_P5 MACRO texto
	LOCAL msj
	.data
	; �rea de Declaraci�n de Variables
		;msj db "texto",0 
		msj db texto,0

	.code
	; L�gica del Programa
	mov edx, offset msj
	call writeString
	call CrLf

ENDM

.data
; �rea de Declaraci�n de Variables
numeros0_P5 byte 100 dup (?) ;<=== 100 Elementos

.code 

main5 PROC
;L�gica del Programa

	PrintLn_P5 "En que posicion deseas guardar el elemento"
	call readInt
	mov esi, eax
	PrintLn_P5 "Que valor deseas guardar?"
	call readInt   ;eax
	mov numeros0_P5[esi], al
	PrintLn_P5 "El valor guardado es: "
	mov eax, 0
	mov al, numeros0_P5[esi]
	call writeDec

exit

main5 ENDP

END main5