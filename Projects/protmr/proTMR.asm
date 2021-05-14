
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;proTMR.c,14 :: 		void interrupt()
;proTMR.c,18 :: 		num++;
	INCF       _num+0, 1
;proTMR.c,19 :: 		if (num==30) // timer 0 interrupt flag
	MOVF       _num+0, 0
	XORLW      30
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt0
;proTMR.c,21 :: 		led = ~led;      // Toggle PORTB bit0 LED
	MOVLW
	XORWF      RC0_bit+0, 1
;proTMR.c,24 :: 		}
L_interrupt0:
;proTMR.c,26 :: 		if (NUM = 60)
	MOVLW      60
	MOVWF      _num+0
;proTMR.c,27 :: 		{LED = 0;}
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;proTMR.c,28 :: 		TMR0 = 0;
	CLRF       TMR0+0
;proTMR.c,30 :: 		}
L_end_interrupt:
L__interrupt5:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;proTMR.c,35 :: 		void main()
;proTMR.c,39 :: 		TRISC = 0x00;    // PORT is all output...to show the interrupts
	CLRF       TRISC+0
;proTMR.c,40 :: 		LED = 0;       // start with all outputs low
	BCF        RC0_bit+0, BitPos(RC0_bit+0)
;proTMR.c,41 :: 		NUM=0;
	CLRF       _num+0
;proTMR.c,42 :: 		OPTION_REG=0B00000111;
	MOVLW      7
	MOVWF      OPTION_REG+0
;proTMR.c,43 :: 		TMR0=0;
	CLRF       TMR0+0
;proTMR.c,44 :: 		INTCON=0B10100000;
	MOVLW      160
	MOVWF      INTCON+0
;proTMR.c,46 :: 		while(1)  //endless loop
L_main2:
;proTMR.c,48 :: 		}
	GOTO       L_main2
;proTMR.c,49 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
