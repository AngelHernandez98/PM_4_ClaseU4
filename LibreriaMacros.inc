PrintLn MACRO texto
	LOCAL msj
	.data
	; �rea de Declaraci�n de Variables
		;msj db "texto",0
		msj db texto,0

	.code
	; L�gica del Programa
	push edx
	mov edx, offset msj
	call writestring
	call crlf
	pop edx

ENDM