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
matriz0_P8 dword  5,  9, 15
	       dword 20, 50,  3
	       dword 11, 19,  8

.code
 main8 PROC
;L�gica del Programa

	mov esi, 0
	mov eax, matriz0_P8 [esi] ;5
	call writeDec
	call CrLf
	
	add esi, 4
	mov eax, matriz0_P8[esi] ;9
	call writeDec
	call CrLf

	add esi, 8
	mov eax, matriz0_P8[esi] ;20
	call writeDec
	call CrLf

exit
main8 ENDP
END main8