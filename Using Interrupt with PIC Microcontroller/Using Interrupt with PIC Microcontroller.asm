
_main:

;Using Interrupt with PIC Microcontroller.c,2 :: 		void main()
;Using Interrupt with PIC Microcontroller.c,4 :: 		TRISC = 0;   // To configure PORTC as output port
	CLRF       TRISC+0
;Using Interrupt with PIC Microcontroller.c,5 :: 		OPTION_REG.INTEDG = 1;  // Set Rising Edge Trigger for INT
	BSF        OPTION_REG+0, 6
;Using Interrupt with PIC Microcontroller.c,6 :: 		INTCON.GIE = 1;       // Enable The Global Interrupt
	BSF        INTCON+0, 7
;Using Interrupt with PIC Microcontroller.c,7 :: 		INTCON.INTE = 1;       // Enable INT
	BSF        INTCON+0, 4
;Using Interrupt with PIC Microcontroller.c,8 :: 		while(1)
L_main0:
;Using Interrupt with PIC Microcontroller.c,10 :: 		PORTC = 0x00;       //Set some value at PortD
	CLRF       PORTC+0
;Using Interrupt with PIC Microcontroller.c,11 :: 		}
	GOTO       L_main0
;Using Interrupt with PIC Microcontroller.c,12 :: 		}
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

;Using Interrupt with PIC Microcontroller.c,14 :: 		void interrupt()              // Interrupt ISR
;Using Interrupt with PIC Microcontroller.c,16 :: 		INTCON.INTF=0;          // Clear the interrupt 0 flag
	BCF        INTCON+0, 1
;Using Interrupt with PIC Microcontroller.c,17 :: 		PORTC=~PORTC;               // Invert (Toggle) the value at PortD
	COMF       PORTC+0, 1
;Using Interrupt with PIC Microcontroller.c,18 :: 		Delay_ms(1000);           // Delay for 1 sec
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_interrupt2:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt2
	DECFSZ     R12+0, 1
	GOTO       L_interrupt2
	DECFSZ     R11+0, 1
	GOTO       L_interrupt2
	NOP
	NOP
;Using Interrupt with PIC Microcontroller.c,19 :: 		}
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
