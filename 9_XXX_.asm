TITLE Introduccion

;DESCRPICI�N
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumno: Angel Anastasio Hernandez Hernandez
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
matriz0_P9 dword  5,  9, 15
	       dword 20, 50,  3
	       dword 11, 19,  8

.code
 main9 PROC
;L�gica del Programa

	; esi = filaBuscada * totalElementosEnLaFila * BytesEnElTipo(?) * [definido desde el comienzo] * deDato[4]
	mov esi, 0d
	mov edi, 0d
	mov eax, matriz0_P9 [esi + edi] ;5
	call writeDec
	call CrLf
	
	add esi, 4
	mov eax, matriz0_P9 [esi] ;9
	call writeDec
	call CrLf

	add esi, 8
	mov eax, matriz0_P9 [esi] ;20
	call writeDec
	call CrLf

exit
main9 ENDP
END main9