
_main:

;Pro1.c,24 :: 		void main() {
;Pro1.c,25 :: 		adcon1=0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;Pro1.c,26 :: 		trisa = 0;
	CLRF       TRISA+0
;Pro1.c,27 :: 		trisb = 0b00000001;
	MOVLW      1
	MOVWF      TRISB+0
;Pro1.c,28 :: 		intcon.gie=1;
	BSF        INTCON+0, 7
;Pro1.c,29 :: 		intcon.inte=1;
	BSF        INTCON+0, 4
;Pro1.c,30 :: 		INTCON.PEIE = 0;
	BCF        INTCON+0, 6
;Pro1.c,32 :: 		while (1)
L_main0:
;Pro1.c,33 :: 		{  porta =7;
	MOVLW      7
	MOVWF      PORTA+0
;Pro1.c,34 :: 		OPTION_REG.INTEDG = 1;
	BSF        OPTION_REG+0, 6
;Pro1.c,35 :: 		PORTA = 0;
	CLRF       PORTA+0
;Pro1.c,36 :: 		delay_ms(1);
	MOVLW      83
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
;Pro1.c,37 :: 		OPTION_REG.INTEDG = 0;
	BCF        OPTION_REG+0, 6
;Pro1.c,38 :: 		PORTA=0;
	CLRF       PORTA+0
;Pro1.c,39 :: 		delay_ms(1);
	MOVLW      83
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
;Pro1.c,41 :: 		}
	GOTO       L_main0
;Pro1.c,42 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Pro1.c,44 :: 		void interrupt ()
;Pro1.c,47 :: 		portA.B5=porta.b0;
	BTFSC      PORTA+0, 0
	GOTO       L__interrupt11
	BCF        PORTA+0, 5
	GOTO       L__interrupt12
L__interrupt11:
	BSF        PORTA+0, 5
L__interrupt12:
;Pro1.c,48 :: 		delay_ms(2000);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_interrupt4:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt4
	DECFSZ     R12+0, 1
	GOTO       L_interrupt4
	DECFSZ     R11+0, 1
	GOTO       L_interrupt4
	NOP
	NOP
;Pro1.c,49 :: 		portA.B5=porta.b1;
	BTFSC      PORTA+0, 1
	GOTO       L__interrupt13
	BCF        PORTA+0, 5
	GOTO       L__interrupt14
L__interrupt13:
	BSF        PORTA+0, 5
L__interrupt14:
;Pro1.c,50 :: 		delay_ms(2000);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_interrupt5:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt5
	DECFSZ     R12+0, 1
	GOTO       L_interrupt5
	DECFSZ     R11+0, 1
	GOTO       L_interrupt5
	NOP
	NOP
;Pro1.c,51 :: 		portA.B5=porta.b2;
	BTFSC      PORTA+0, 2
	GOTO       L__interrupt15
	BCF        PORTA+0, 5
	GOTO       L__interrupt16
L__interrupt15:
	BSF        PORTA+0, 5
L__interrupt16:
;Pro1.c,52 :: 		delay_ms(2000);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_interrupt6:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt6
	DECFSZ     R12+0, 1
	GOTO       L_interrupt6
	DECFSZ     R11+0, 1
	GOTO       L_interrupt6
	NOP
	NOP
;Pro1.c,53 :: 		portA.B5=porta.b3;
	BTFSC      PORTA+0, 3
	GOTO       L__interrupt17
	BCF        PORTA+0, 5
	GOTO       L__interrupt18
L__interrupt17:
	BSF        PORTA+0, 5
L__interrupt18:
;Pro1.c,54 :: 		delay_ms(2000);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_interrupt7:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt7
	DECFSZ     R12+0, 1
	GOTO       L_interrupt7
	DECFSZ     R11+0, 1
	GOTO       L_interrupt7
	NOP
	NOP
;Pro1.c,55 :: 		INTCON.INTF = 0;
	BCF        INTCON+0, 1
;Pro1.c,57 :: 		}
L_end_interrupt:
L__interrupt10:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
