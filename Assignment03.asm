TITLE   8086 Code Template (for EXE file)

;       AUTHOR          emu8086
;       DATE            ?
;       VERSION         1.00
;       FILE            ?.ASM

; 8086 Code Template

; Directive to make EXE output:
       #MAKE_EXE#

DSEG    SEGMENT 'DATA'

;NUMBERS	DB 00111111b, 00000110b,01011011b , 01001111b,01100110b ,01101101b , 01111101b, 00000111b, 01111111b, 01101111b
;01101101b(5)
;01011011b(2)  
;01111101b(6)

NUMBERS DB 00001000b,00001010b,00001110b,00001010b,00001000b
NUMBERS2 DB 01101101b,01110111b,01011011b,01110110b,01111101b,00000000b
;01110111(A)
;01110110(H)


DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100h    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'

;*******************************************

START   PROC    FAR

; Store return address to OS:
    PUSH    DS
    MOV     AX, 0
    PUSH    AX

; set segment registers:
    MOV     AX, DSEG
    MOV     DS, AX
    MOV     ES, AX
    
    MOV DX, 2030h	; first Seven Segment Display
	MOV SI, 0
	MOV CX, 6

NEXT2:
	MOV AL,NUMBERS2[SI]
	out dx,al
	INC SI
	;INC DX
    PUSH CX
	MOV CX,500h
	L1:LOOP L1
	
	POP cx
    
    
    
	LOOP NEXT2
    
    
    
    
    
    
    
    
    
    
    AND SI,0
    AND DX,0
    AND CX,0 
    
    
    
    
    
	MOV DX, 2070h	; led display
	MOV SI, 0
	MOV CX, 5
                
                
    MOV AL,0FFH
    OUT 19H,AL            



NEXT:
	MOV AL,NUMBERS[SI]
	out dx,al
	INC SI 
	;delay 
	PUSH CX
	MOV CX,500h
	L0:loop L0
	
	POP cx  


	LOOP NEXT

; return to operating system:
    RET
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point.











