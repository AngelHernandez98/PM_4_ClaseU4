TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables

cadena1_13 db "CAPA", 0
cadena2_13 db "CANX", 0
;la comparacion deberia hacerse con cadenas del mismo tamaño 
;el ciclo de comparacion se hace con la cadena mas pequeña en ( java)

.code
 main13 PROC
;Lógica del Programa

;CMPSB
;Comparar cadenas: compara el contenido de dos ubicaciones de memoria direccionadas
;por ESIyEDI
         
;Las instrucciones CMPSB, CMPSWyCMPSD comparan un operando de memoria al que apunta
;un operando de memoria al que apunta EDI
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov esi, offset cadena1_13
mov edi, offset cadena2_13
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov ecx, sizeof cadena1_13
dec ecx
ciclo:
    dec ecx
    cmp ecx,0
    jz continuar
   cmpsb ;comparacion
   mov eax, ecx
   call writedec

jz ciclo
continuar: 
   
call crlf
mov eax, ecx
call writedec
call crlf
call writeint

exit
main13 ENDP
END main13

;Por que da numero negativo(F)
;Tarea 13:determinar el indice en el que se encuentra la primer letra 