
; PIC12F508 Configuration Bit Settings

; Assembly source line config statements

#include "p12f508.inc"

; CONFIG
; __config 0xFFFE
 __CONFIG _OSC_IntRC & _WDT_OFF & _CP_OFF & _MCLRE_ON
 
 
RESET_PIN_8052			EQU	4   ; pin to reset 8052
EA_PIN_8052			EQU	5   ; pin to enable External Access i.e EA
INPUT_SIGNAL_PIN_8052		EQU	0   ;read signal from 8052 to perform reset and enable EA

VAR_X	EQU	7
VAR_Y	EQU	8
VAR_Z	EQU	9

	
	org 0x00
	
	goto setup


delayms:	movlw d'249'	;1us
		movwf VAR_X	;1us
				;2us entry
		
		nop		;1us
		decfsz	VAR_X,F	;1us - except last which is 2us
		goto $-2	;2us
				;total 4us per loop
		
		nop		;1us - compensate last decfsz= 2us/cycles and last goto nt executed;
				; hence total=3us last loop + 1us this NOP = 4us
		
		retlw 0		;complensate for (249*4us = 996us) + 2us entry = 998us; total= 998us + 2us RETLW = 1000us = 1ms

delayY:
		call delayms
		decfsz VAR_Y,F
		goto $-2
		retlw 0
		
		

readinput:
		btfsc GPIO,INPUT_SIGNAL_PIN_8052 ; check PIN0 AS INPUT, skip if clear
		goto $-1
		
		;debounce 100ms
		movlw d'100'
		movwf VAR_Y
		call delayms
		decfsz VAR_Y,F
		goto $-2
		
		btfsc GPIO,INPUT_SIGNAL_PIN_8052 ; check PIN0 AS INPUT, skip if clear
		goto readinput
		
		retlw 0	
		
		
enable_8052_EA:
		bcf GPIO,EA_PIN_8052		;make EA_PIN low -> external access
		
		
		; making a 100ms delay -> cant call delayY as stack depth is only 2
		movlw d'100'
		movwf VAR_Y
		call delayms
		decfsz VAR_Y,F
		goto $-2
		
		bsf GPIO,RESET_PIN_8052		; 8052 RESET_PIN high -> trigger reset
						; note 8052 reset is ACTIVE HIGH
						; and reset signal must be applied 
						; for atleast 2 machine cycles
						; at 12MHz, 2 machine cycles = 2us
						
		; making a 100ms delay -> cant call delayY as stack depth is only 2
		movlw d'100'
		movwf VAR_Y
		call delayms
		decfsz VAR_Y,F
		goto $-2
		
		bcf GPIO,RESET_PIN_8052		; make RESET_PIN low -> stop trigger reset
		
		call delayms
		
		bsf GPIO,INPUT_SIGNAL_PIN_8052	; keep pullup on INPUT_SIGNAL_PIN_8052 as
						; it might have been affected by the bsf
						; read-modify-write command - check Dsheet for more
		
		retlw 0
		
		
disable_8052_EA:
		bsf GPIO,EA_PIN_8052		;make EA_PIN high -> internal access
		
		
		; making a 100ms delay -> cant call delayY as stack depth is only 2
		movlw d'100'
		movwf VAR_Y
		call delayms
		decfsz VAR_Y,F
		goto $-2
		
		bsf GPIO,RESET_PIN_8052		; 8052 RESET_PIN high -> trigger reset
						; note 8052 reset is ACTIVE HIGH
						; and reset signal must be applied 
						; for atleast 2 machine cycles
						; at 12MHz, 2 machine cycles = 2us
						
		; making a 100ms delay -> cant call delayY as stack depth is only 2
		movlw d'100'
		movwf VAR_Y
		call delayms
		decfsz VAR_Y,F
		goto $-2
		
		bcf GPIO,RESET_PIN_8052		; make RESET_PIN low -> stop trigger reset
		
		call delayms 
		
		bsf GPIO,INPUT_SIGNAL_PIN_8052	; keep pullup on INPUT_SIGNAL_PIN_8052 as
						; it might have been affected by the bsf
						; read-modify-write command - check Dsheet for more
		
		retlw 0 
		
		
setup:		
		;set gpio4 and gpio5 as o/p, gpio0 i/p
		movlw b'11001111'   ; make GPIO4,GPIO5 o/p
		tris GPIO	    ; set TRIS for GPIO reg
		
		;enable pull-ups
		movlw b'10111111'
		option
		
		
		
		
		;enable pullup on gpio0 while using as input
		;bsf GPIO,INPUT_SIGNAL_PIN_8052
		
		call disable_8052_EA
		


	
loop:		
		call readinput
		;disable EA
		call enable_8052_EA
		
		;delay510ms
		movlw d'255'
		movwf VAR_Y
		call delayY
		movlw d'255'
		movwf VAR_Y
		call delayY
		
		
		call readinput
		;disable EA
		call disable_8052_EA
		
		;delay510ms
		movlw d'255'
		movwf VAR_Y
		call delayY
		movlw d'255'
		movwf VAR_Y
		call delayY
		
		goto loop;
			

	end
