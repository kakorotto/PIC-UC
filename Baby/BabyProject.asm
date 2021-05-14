
_main:

;BabyProject.c,7 :: 		void main() {
;BabyProject.c,8 :: 		adcon1 = 0x04;
	MOVLW      4
	MOVWF      ADCON1+0
;BabyProject.c,9 :: 		TRISA  = 0x01;              // PORTA is input
	MOVLW      1
	MOVWF      TRISA+0
;BabyProject.c,10 :: 		TRISB  = 0;                 // PORTC is output
	CLRF       TRISB+0
;BabyProject.c,11 :: 		TRISD  = 0;                 // PORTB is output
	CLRF       TRISD+0
;BabyProject.c,12 :: 		portb=0;
	CLRF       PORTB+0
;BabyProject.c,13 :: 		L1: t = ADC_Read(0)* 0.4887;
___main_L1:
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _Word2Double+0
	MOVLW      227
	MOVWF      R4+0
	MOVLW      54
	MOVWF      R4+1
	MOVLW      122
	MOVWF      R4+2
	MOVLW      125
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Longint+0
	MOVF       R0+0, 0
	MOVWF      _t+0
	MOVF       R0+1, 0
	MOVWF      _t+1
	MOVF       R0+2, 0
	MOVWF      _t+2
	MOVF       R0+3, 0
	MOVWF      _t+3
;BabyProject.c,14 :: 		a=t%10;
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _t+0, 0
	MOVWF      R0+0
	MOVF       _t+1, 0
	MOVWF      R0+1
	MOVF       _t+2, 0
	MOVWF      R0+2
	MOVF       _t+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R8+2, 0
	MOVWF      R0+2
	MOVF       R8+3, 0
	MOVWF      R0+3
	MOVF       R0+0, 0
	MOVWF      _a+0
;BabyProject.c,15 :: 		b=(t/10)%10;
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       _t+0, 0
	MOVWF      R0+0
	MOVF       _t+1, 0
	MOVWF      R0+1
	MOVF       _t+2, 0
	MOVWF      R0+2
	MOVF       _t+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_S+0
	MOVLW      10
	MOVWF      R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Div_32x32_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R8+2, 0
	MOVWF      R0+2
	MOVF       R8+3, 0
	MOVWF      R0+3
	MOVF       R0+0, 0
	MOVWF      _b+0
;BabyProject.c,16 :: 		while(1) {
L_main0:
;BabyProject.c,20 :: 		if(t>30 && t<40)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _t+3, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       _t+2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       _t+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVF       _t+0, 0
	SUBLW      30
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
	MOVLW      128
	XORWF      _t+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      0
	SUBWF      _t+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      0
	SUBWF      _t+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      40
	SUBWF      _t+0, 0
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main21:
;BabyProject.c,23 :: 		PORTB=bcdConverter(a+'0');
	MOVLW      48
	ADDWF      _a+0, 0
	MOVWF      FARG_bcdConverter_input+0
	CALL       _bcdConverter+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;BabyProject.c,24 :: 		PORTD.B0=0;
	BCF        PORTD+0, 0
;BabyProject.c,25 :: 		PORTD.B1=1;
	BSF        PORTD+0, 1
;BabyProject.c,26 :: 		delay_ms(10000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;BabyProject.c,27 :: 		PORTD.B1=0;
	BCF        PORTD+0, 1
;BabyProject.c,29 :: 		PORTB=bcdConverter(b+'0');
	MOVLW      48
	ADDWF      _b+0, 0
	MOVWF      FARG_bcdConverter_input+0
	CALL       _bcdConverter+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;BabyProject.c,31 :: 		PORTD.B0=1;
	BSF        PORTD+0, 0
;BabyProject.c,32 :: 		delay_ms(10000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;BabyProject.c,33 :: 		PORTD.B0=0;
	BCF        PORTD+0, 0
;BabyProject.c,36 :: 		}
	GOTO       L_main7
L_main4:
;BabyProject.c,37 :: 		else goto L1;
	GOTO       ___main_L1
L_main7:
;BabyProject.c,38 :: 		}
	GOTO       L_main0
;BabyProject.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_bcdConverter:

;BabyProject.c,42 :: 		unsigned short bcdConverter(char input) {
;BabyProject.c,43 :: 		switch (input) {
	GOTO       L_bcdConverter8
;BabyProject.c,44 :: 		case '0': return 0x3F;
L_bcdConverter10:
	MOVLW      63
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,45 :: 		case '1': return 0x06;
L_bcdConverter11:
	MOVLW      6
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,46 :: 		case '2': return 0x5B;
L_bcdConverter12:
	MOVLW      91
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,47 :: 		case '3': return 0x4F;
L_bcdConverter13:
	MOVLW      79
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,48 :: 		case '4': return 0x66;
L_bcdConverter14:
	MOVLW      102
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,49 :: 		case '5': return 0x6D;
L_bcdConverter15:
	MOVLW      109
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,50 :: 		case '6': return 0x7D;
L_bcdConverter16:
	MOVLW      125
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,51 :: 		case '7': return 0x07;
L_bcdConverter17:
	MOVLW      7
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,52 :: 		case '8': return 0x7F;
L_bcdConverter18:
	MOVLW      127
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,53 :: 		case '9': return 0x6F;
L_bcdConverter19:
	MOVLW      111
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,55 :: 		default  : return 0b11111111;
L_bcdConverter20:
	MOVLW      255
	MOVWF      R0+0
	GOTO       L_end_bcdConverter
;BabyProject.c,56 :: 		}
L_bcdConverter8:
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      48
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter10
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      49
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter11
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      50
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter12
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      51
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter13
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      52
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter14
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      53
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter15
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      54
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter16
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      55
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter17
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      56
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter18
	MOVF       FARG_bcdConverter_input+0, 0
	XORLW      57
	BTFSC      STATUS+0, 2
	GOTO       L_bcdConverter19
	GOTO       L_bcdConverter20
;BabyProject.c,57 :: 		}
L_end_bcdConverter:
	RETURN
; end of _bcdConverter
