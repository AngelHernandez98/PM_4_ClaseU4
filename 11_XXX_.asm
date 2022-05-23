TITLE Introduccion

;DESCRPICI�N
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hern�ndez Hern�ndez
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

PrintLn_P11 MACRO texto
	LOCAL msj
	.data
	; �rea de Declaraci�n de Variables
		;msj db "texto",0 
		msj db texto,0

	.code
	; L�gica del Programa
	mov edx, offset msj
	call writeString

ENDM

.data
; �rea de Declaraci�n de Variables
matriz0_P11 dword  5,  9, 15
		    dword 20, 50,  3
		    dword 11, 19,  8

tamDato dword 4
t_Filas dword 3
t_Columnas dword 3

.code
 main11 PROC
;L�gica del Programa

mov ecx, 0	; <=== Filas
	cicloFilas:
		push ecx		; Respaldo la fila actual
		mov eax, tamDato
		mul t_Columnas
		mul ecx
		mov esi, eax
		mov ecx, 0		; <=== Columnas
		cicloColumnas:
			PrintLn_P11 "["
			mov eax, ecx
			mul tamDato
			mov edi, eax
			mov eax, matriz0_P11[esi + edi]
			call writeDec
			PrintLn_P11 "]"
			inc ecx
			cmp ecx, t_Columnas
			jl cicloColumnas
		call CrLf
		pop ecx
		inc ecx
		cmp ecx, t_Filas
		jl cicloFilas
		PrintLn_P11 "Se termino el recorrido"

exit
main11 ENDP
END main11