
_main:

;Interrupt.c,6 :: 		void main() {
;Interrupt.c,7 :: 		adcon0=0x07;
	MOVLW      7
	MOVWF      ADCON0+0
;Interrupt.c,8 :: 		TRISA.B0=1;
	BSF        TRISA+0, 0
;Interrupt.c,9 :: 		TRISC=0X00;
	CLRF       TRISC+0
;Interrupt.c,11 :: 		INTCON.GIE=1;
	BSF        INTCON+0, 7
;Interrupt.c,12 :: 		INTCON.INTE=1;
	BSF        INTCON+0, 4
;Interrupt.c,14 :: 		while(1)
L_main0:
;Interrupt.c,16 :: 		portc=111<<portc;
	MOVF       PORTC+0, 0
	MOVWF      R1+0
	MOVLW      111
	MOVWF      R0+0
	MOVF       R1+0, 0
L__main37:
	BTFSC      STATUS+0, 2
	GOTO       L__main38
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__main37
L__main38:
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;Interrupt.c,18 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;Interrupt.c,19 :: 		RED=1;
	BSF        PORTC+0, 0
;Interrupt.c,20 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Interrupt.c,21 :: 		RED=0;
	BCF        PORTC+0, 0
;Interrupt.c,22 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;Interrupt.c,23 :: 		YELLOW=1;
	BSF        PORTC+0, 1
;Interrupt.c,24 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Interrupt.c,25 :: 		YELLOW=0;
	BCF        PORTC+0, 1
;Interrupt.c,26 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;Interrupt.c,27 :: 		GREEN=1;
	BSF        PORTC+0, 2
;Interrupt.c,28 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;Interrupt.c,30 :: 		}
	GOTO       L_main0
;Interrupt.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_func:

;Interrupt.c,34 :: 		void func()
;Interrupt.c,37 :: 		if(1<<RED)
	CLRF       R0+0
	BTFSC      PORTC+0, 0
	INCF       R0+0, 1
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__func40:
	BTFSC      STATUS+0, 2
	GOTO       L__func41
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__func40
L__func41:
	MOVF       R0+0, 0
	IORWF      R0+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_func8
;Interrupt.c,39 :: 		while(1)
L_func9:
;Interrupt.c,41 :: 		RED=0;
	BCF        PORTC+0, 0
;Interrupt.c,42 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func11:
	DECFSZ     R13+0, 1
	GOTO       L_func11
	DECFSZ     R12+0, 1
	GOTO       L_func11
	NOP
	NOP
;Interrupt.c,43 :: 		GREEN=1;
	BSF        PORTC+0, 2
;Interrupt.c,44 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func12:
	DECFSZ     R13+0, 1
	GOTO       L_func12
	DECFSZ     R12+0, 1
	GOTO       L_func12
	DECFSZ     R11+0, 1
	GOTO       L_func12
	NOP
	NOP
;Interrupt.c,45 :: 		GREEN=0;
	BCF        PORTC+0, 2
;Interrupt.c,46 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func13:
	DECFSZ     R13+0, 1
	GOTO       L_func13
	DECFSZ     R12+0, 1
	GOTO       L_func13
	NOP
	NOP
;Interrupt.c,47 :: 		YELLOW=1;
	BSF        PORTC+0, 1
;Interrupt.c,48 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func14:
	DECFSZ     R13+0, 1
	GOTO       L_func14
	DECFSZ     R12+0, 1
	GOTO       L_func14
	DECFSZ     R11+0, 1
	GOTO       L_func14
	NOP
	NOP
;Interrupt.c,49 :: 		YELLOW=0;
	BCF        PORTC+0, 1
;Interrupt.c,50 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func15:
	DECFSZ     R13+0, 1
	GOTO       L_func15
	DECFSZ     R12+0, 1
	GOTO       L_func15
	NOP
	NOP
;Interrupt.c,51 :: 		RED=1;
	BSF        PORTC+0, 0
;Interrupt.c,52 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func16:
	DECFSZ     R13+0, 1
	GOTO       L_func16
	DECFSZ     R12+0, 1
	GOTO       L_func16
	DECFSZ     R11+0, 1
	GOTO       L_func16
	NOP
	NOP
;Interrupt.c,53 :: 		}
	GOTO       L_func9
;Interrupt.c,54 :: 		}
L_func8:
;Interrupt.c,55 :: 		else if (1<<GREEN)
	CLRF       R0+0
	BTFSC      PORTC+0, 2
	INCF       R0+0, 1
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVLW      1
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__func42:
	BTFSC      STATUS+0, 2
	GOTO       L__func43
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__func42
L__func43:
	MOVF       R0+0, 0
	IORWF      R0+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_func18
;Interrupt.c,57 :: 		while(1)
L_func19:
;Interrupt.c,59 :: 		GREEN=0;
	BCF        PORTC+0, 2
;Interrupt.c,60 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func21:
	DECFSZ     R13+0, 1
	GOTO       L_func21
	DECFSZ     R12+0, 1
	GOTO       L_func21
	NOP
	NOP
;Interrupt.c,61 :: 		RED=1;
	BSF        PORTC+0, 0
;Interrupt.c,62 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func22:
	DECFSZ     R13+0, 1
	GOTO       L_func22
	DECFSZ     R12+0, 1
	GOTO       L_func22
	DECFSZ     R11+0, 1
	GOTO       L_func22
	NOP
	NOP
;Interrupt.c,63 :: 		RED=0;
	BCF        PORTC+0, 0
;Interrupt.c,64 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func23:
	DECFSZ     R13+0, 1
	GOTO       L_func23
	DECFSZ     R12+0, 1
	GOTO       L_func23
	NOP
	NOP
;Interrupt.c,65 :: 		YELLOW=1;
	BSF        PORTC+0, 1
;Interrupt.c,66 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func24:
	DECFSZ     R13+0, 1
	GOTO       L_func24
	DECFSZ     R12+0, 1
	GOTO       L_func24
	DECFSZ     R11+0, 1
	GOTO       L_func24
	NOP
	NOP
;Interrupt.c,67 :: 		YELLOW=0;
	BCF        PORTC+0, 1
;Interrupt.c,68 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func25:
	DECFSZ     R13+0, 1
	GOTO       L_func25
	DECFSZ     R12+0, 1
	GOTO       L_func25
	NOP
	NOP
;Interrupt.c,69 :: 		GREEN=1;
	BSF        PORTC+0, 2
;Interrupt.c,70 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func26:
	DECFSZ     R13+0, 1
	GOTO       L_func26
	DECFSZ     R12+0, 1
	GOTO       L_func26
	DECFSZ     R11+0, 1
	GOTO       L_func26
	NOP
	NOP
;Interrupt.c,71 :: 		}
	GOTO       L_func19
;Interrupt.c,72 :: 		}
L_func18:
;Interrupt.c,74 :: 		while(1)
L_func28:
;Interrupt.c,76 :: 		YELLOW=0;
	BCF        PORTC+0, 1
;Interrupt.c,77 :: 		GREEN=0;
	BCF        PORTC+0, 2
;Interrupt.c,78 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func30:
	DECFSZ     R13+0, 1
	GOTO       L_func30
	DECFSZ     R12+0, 1
	GOTO       L_func30
	NOP
	NOP
;Interrupt.c,79 :: 		RED=1;
	BSF        PORTC+0, 0
;Interrupt.c,80 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func31:
	DECFSZ     R13+0, 1
	GOTO       L_func31
	DECFSZ     R12+0, 1
	GOTO       L_func31
	DECFSZ     R11+0, 1
	GOTO       L_func31
	NOP
	NOP
;Interrupt.c,81 :: 		RED=0;
	BCF        PORTC+0, 0
;Interrupt.c,82 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func32:
	DECFSZ     R13+0, 1
	GOTO       L_func32
	DECFSZ     R12+0, 1
	GOTO       L_func32
	NOP
	NOP
;Interrupt.c,83 :: 		YELLOW=1;
	BSF        PORTC+0, 1
;Interrupt.c,84 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func33:
	DECFSZ     R13+0, 1
	GOTO       L_func33
	DECFSZ     R12+0, 1
	GOTO       L_func33
	DECFSZ     R11+0, 1
	GOTO       L_func33
	NOP
	NOP
;Interrupt.c,85 :: 		YELLOW=0;
	BCF        PORTC+0, 1
;Interrupt.c,86 :: 		delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_func34:
	DECFSZ     R13+0, 1
	GOTO       L_func34
	DECFSZ     R12+0, 1
	GOTO       L_func34
	NOP
	NOP
;Interrupt.c,87 :: 		GREEN=1;
	BSF        PORTC+0, 2
;Interrupt.c,88 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_func35:
	DECFSZ     R13+0, 1
	GOTO       L_func35
	DECFSZ     R12+0, 1
	GOTO       L_func35
	DECFSZ     R11+0, 1
	GOTO       L_func35
	NOP
	NOP
;Interrupt.c,89 :: 		}
	GOTO       L_func28
;Interrupt.c,91 :: 		}
L_end_func:
	RETURN
; end of _func

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Interrupt.c,93 :: 		void interrupt ()
;Interrupt.c,95 :: 		INTCON.INTF=0;
	BCF        INTCON+0, 1
;Interrupt.c,96 :: 		func();
	CALL       _func+0
;Interrupt.c,98 :: 		}
L_end_interrupt:
L__interrupt45:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt
