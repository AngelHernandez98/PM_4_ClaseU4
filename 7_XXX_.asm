TITLE Introduccion

;DESCRPICIÓN
;Objetivo: identificar el valor mas grande del arreglo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hernández Hernández
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
numeros0_P7 dword 11,7,6,13,20,80,24

.code
 main7 PROC
;Lógica del Programa
	
	mov ecx, 6	;Tamaño puesto directo
	mov edi, 0
	mov ebx, numeros0_P7[edi]
	ciclo:
		add edi,4
		cmp ebx, numeros0_P7[edi]
		jg continuar 
			mov ebx, numeros0_P7[edi]
		continuar:
	loop ciclo
	mov eax, ebx
	call writeDec

exit
main7 ENDP
END main7

;Tareas
;1-BUSCAR EL MENOR 
;2-BUSCAR E IMPRIMIR TODOS LOS ELEMENTOS MAYORES O IGUALES AL PROMEDIO
;3-OBTENER LA CANTIDAD DE NUMEROS QUE SON PARES 
;4-IMPRIMIR LA CANTIDAD DE NUMEROS MAYORES A X SIENDO X INGRESADO POR EL USUARIO 
;VALORES DEL ARREGLO LIBRES