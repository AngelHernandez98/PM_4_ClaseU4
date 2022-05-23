INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
cadena1_5 db "GARUCO",0

.code
main_5 PROC
; Lógica del Programa

REPITE:

;SCASB
;Explorar cadena: compara el acumulador (AL, AX o EAX) con el contenido de la
;memoria direccionada por EDI

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov edi, offset cadena1_5
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mov eax, 0
call readchar ; al
call writechar ; echo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mov ecx, sizeof cadena1_5
REPNZ scasb
mov eax, sizeof cadena1_5; auxiliar
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sub eax, ecx
call writedec
CALL CRLF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

JMP REPITE

exit

main_5 ENDP

END main_5