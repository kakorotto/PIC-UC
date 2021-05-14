opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F877
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 11 "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitLCD
	FNCALL	_main,_WriteStringToLCD
	FNCALL	_main,_GotoYXPositionOnLCD
	FNCALL	_main,_WriteDataToLCD
	FNCALL	_main,_ScrollLCD
	FNCALL	_WriteStringToLCD,_ReadLCDAddressCounter
	FNCALL	_WriteStringToLCD,_GotoYXPositionOnLCD
	FNCALL	_WriteStringToLCD,_WriteDataToLCD
	FNCALL	_InitLCD,_Write4BitValueToDataBus
	FNCALL	_InitLCD,_Write4BitValueToDataDirBus
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_InitLCD,_LCD_Char_build
	FNCALL	_ScrollLCD,_WriteCommandToLCD
	FNCALL	_GotoYXPositionOnLCD,_WriteCommandToLCD
	FNCALL	_LCD_Char_build,_WriteCommandToLCD
	FNCALL	_LCD_Char_build,_WriteDataToLCD
	FNCALL	_WriteDataToLCD,_LCDIsBusy
	FNCALL	_WriteDataToLCD,_Write4BitValueToDataBus
	FNCALL	_WriteCommandToLCD,_LCDIsBusy
	FNCALL	_WriteCommandToLCD,_Write4BitValueToDataBus
	FNCALL	_ReadLCDAddressCounter,_Write4BitValueToDataDirBus
	FNCALL	_LCDIsBusy,_Write4BitValueToDataDirBus
	FNROOT	_main
	global	_CustomCharacter1
	global	_CustomCharacter2
	global	_CustomCharacter3
	global	_CustomCharacter4
	global	_CustomCharacter5
	global	_CustomCharacter6
	global	_CustomCharacter7
	global	_CustomCharacter8
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	67

;initializer for _CustomCharacter1
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	015h
	retlw	0Eh
	retlw	04h
	retlw	0
	line	68

;initializer for _CustomCharacter2
	retlw	07h
	retlw	0Dh
	retlw	017h
	retlw	010h
	retlw	017h
	retlw	0Dh
	retlw	07h
	retlw	0
	line	69

;initializer for _CustomCharacter3
	retlw	01Fh
	retlw	01Fh
	retlw	012h
	retlw	04h
	retlw	09h
	retlw	010h
	retlw	01Fh
	retlw	0
	line	70

;initializer for _CustomCharacter4
	retlw	01Fh
	retlw	01Fh
	retlw	09h
	retlw	04h
	retlw	012h
	retlw	01h
	retlw	01Fh
	retlw	0
	line	71

;initializer for _CustomCharacter5
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	015h
	retlw	0Eh
	retlw	04h
	retlw	0
	line	72

;initializer for _CustomCharacter6
	retlw	04h
	retlw	0Eh
	retlw	015h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	0
	line	73

;initializer for _CustomCharacter7
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	015h
	retlw	0Eh
	retlw	04h
	retlw	0
	line	74

;initializer for _CustomCharacter8
	retlw	04h
	retlw	0Eh
	retlw	015h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	0
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	115	;'s'
	retlw	97	;'a'
	retlw	101	;'e'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	46	;'.'
	retlw	98	;'b'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	115	;'s'
	retlw	112	;'p'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	0
psect	strings
	file	"LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	67
_CustomCharacter1:
       ds      8

psect	dataBANK0
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	68
_CustomCharacter2:
       ds      8

psect	dataBANK0
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	69
_CustomCharacter3:
       ds      8

psect	dataBANK0
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	70
_CustomCharacter4:
       ds      8

psect	dataBANK0
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	71
_CustomCharacter5:
       ds      8

psect	dataBANK0
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	72
_CustomCharacter6:
       ds      8

psect	dataBANK0
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	73
_CustomCharacter7:
       ds      8

psect	dataBANK0
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.h"
	line	74
_CustomCharacter8:
       ds      8

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+64)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Write4BitValueToDataBus
?_Write4BitValueToDataBus:	; 0 bytes @ 0x0
	global	??_Write4BitValueToDataBus
??_Write4BitValueToDataBus:	; 0 bytes @ 0x0
	global	?_Write4BitValueToDataDirBus
?_Write4BitValueToDataDirBus:	; 0 bytes @ 0x0
	global	??_Write4BitValueToDataDirBus
??_Write4BitValueToDataDirBus:	; 0 bytes @ 0x0
	global	?_WriteCommandToLCD
?_WriteCommandToLCD:	; 0 bytes @ 0x0
	global	?_WriteDataToLCD
?_WriteDataToLCD:	; 0 bytes @ 0x0
	global	?_InitLCD
?_InitLCD:	; 0 bytes @ 0x0
	global	?_WriteStringToLCD
?_WriteStringToLCD:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_LCDIsBusy
?_LCDIsBusy:	; 1 bytes @ 0x0
	global	?_ReadLCDAddressCounter
?_ReadLCDAddressCounter:	; 1 bytes @ 0x0
	ds	1
	global	Write4BitValueToDataBus@Data
Write4BitValueToDataBus@Data:	; 1 bytes @ 0x1
	global	Write4BitValueToDataDirBus@DataDir
Write4BitValueToDataDirBus@DataDir:	; 1 bytes @ 0x1
	ds	1
	global	??_LCDIsBusy
??_LCDIsBusy:	; 0 bytes @ 0x2
	global	??_ReadLCDAddressCounter
??_ReadLCDAddressCounter:	; 0 bytes @ 0x2
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x2
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x2
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x2
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x2
	global	ReadLCDAddressCounter@AddressCounter
ReadLCDAddressCounter@AddressCounter:	; 1 bytes @ 0x2
	ds	1
	global	?_LCD_Char_build
?_LCD_Char_build:	; 0 bytes @ 0x3
	global	?_GotoYXPositionOnLCD
?_GotoYXPositionOnLCD:	; 0 bytes @ 0x3
	global	?_ScrollLCD
?_ScrollLCD:	; 0 bytes @ 0x3
	global	GotoYXPositionOnLCD@OFFSET
GotoYXPositionOnLCD@OFFSET:	; 1 bytes @ 0x3
	global	LCD_Char_build@ptr
LCD_Char_build@ptr:	; 1 bytes @ 0x3
	global	ScrollLCD@RightOrLeft
ScrollLCD@RightOrLeft:	; 1 bytes @ 0x3
	ds	1
	global	??_LCD_Char_build
??_LCD_Char_build:	; 0 bytes @ 0x4
	global	??_GotoYXPositionOnLCD
??_GotoYXPositionOnLCD:	; 0 bytes @ 0x4
	global	ScrollLCD@ByHowMuch
ScrollLCD@ByHowMuch:	; 1 bytes @ 0x4
	ds	1
	global	??_ScrollLCD
??_ScrollLCD:	; 0 bytes @ 0x5
	global	GotoYXPositionOnLCD@LineNumber
GotoYXPositionOnLCD@LineNumber:	; 1 bytes @ 0x5
	global	LCD_Char_build@location
LCD_Char_build@location:	; 1 bytes @ 0x5
	ds	1
	global	??_WriteStringToLCD
??_WriteStringToLCD:	; 0 bytes @ 0x6
	global	LCD_Char_build@i
LCD_Char_build@i:	; 1 bytes @ 0x6
	global	WriteStringToLCD@LCD_DDRAM_Address
WriteStringToLCD@LCD_DDRAM_Address:	; 2 bytes @ 0x6
	ds	1
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x7
	global	ScrollLCD@ScreenOrCursor
ScrollLCD@ScreenOrCursor:	; 1 bytes @ 0x7
	ds	1
	global	WriteStringToLCD@s
WriteStringToLCD@s:	; 1 bytes @ 0x8
	global	ScrollLCD@i
ScrollLCD@i:	; 1 bytes @ 0x8
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	3
;;Data sizes: Strings 28, constant 0, data 64, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      0      64
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; LCD_Char_build@ptr	PTR unsigned char  size(1) Largest target is 8
;;		 -> CustomCharacter8(BANK0[8]), CustomCharacter7(BANK0[8]), CustomCharacter6(BANK0[8]), CustomCharacter5(BANK0[8]), 
;;		 -> CustomCharacter4(BANK0[8]), CustomCharacter3(BANK0[8]), CustomCharacter2(BANK0[8]), CustomCharacter1(BANK0[8]), 
;;
;; WriteStringToLCD@s	PTR const unsigned char  size(1) Largest target is 28
;;		 -> STR_1(CODE[28]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_InitLCD
;;   _WriteStringToLCD->_GotoYXPositionOnLCD
;;   _InitLCD->_LCD_Char_build
;;   _ScrollLCD->_WriteCommandToLCD
;;   _GotoYXPositionOnLCD->_WriteCommandToLCD
;;   _LCD_Char_build->_WriteCommandToLCD
;;   _LCD_Char_build->_WriteDataToLCD
;;   _WriteDataToLCD->_Write4BitValueToDataBus
;;   _WriteCommandToLCD->_Write4BitValueToDataBus
;;   _ReadLCDAddressCounter->_Write4BitValueToDataDirBus
;;   _LCDIsBusy->_Write4BitValueToDataDirBus
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    2431
;;                                             10 COMMON     3     3      0
;;                            _InitLCD
;;                   _WriteStringToLCD
;;                _GotoYXPositionOnLCD
;;                     _WriteDataToLCD
;;                          _ScrollLCD
;; ---------------------------------------------------------------------------------
;; (1) _WriteStringToLCD                                     3     3      0     667
;;                                              6 COMMON     3     3      0
;;              _ReadLCDAddressCounter
;;                _GotoYXPositionOnLCD
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              3     3      0     970
;;                                              7 COMMON     3     3      0
;;            _Write4BitValueToDataBus
;;         _Write4BitValueToDataDirBus
;;                  _WriteCommandToLCD
;;                     _LCD_Char_build
;; ---------------------------------------------------------------------------------
;; (1) _ScrollLCD                                            6     4      2     310
;;                                              3 COMMON     6     4      2
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _GotoYXPositionOnLCD                                  3     2      1     264
;;                                              3 COMMON     3     2      1
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (2) _LCD_Char_build                                       4     3      1     574
;;                                              3 COMMON     4     3      1
;;                  _WriteCommandToLCD
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (1) _WriteDataToLCD                                       1     1      0     220
;;                                              2 COMMON     1     1      0
;;                          _LCDIsBusy
;;            _Write4BitValueToDataBus
;; ---------------------------------------------------------------------------------
;; (2) _WriteCommandToLCD                                    1     1      0     220
;;                                              2 COMMON     1     1      0
;;                          _LCDIsBusy
;;            _Write4BitValueToDataBus
;; ---------------------------------------------------------------------------------
;; (2) _ReadLCDAddressCounter                                1     1      0     114
;;                                              2 COMMON     1     1      0
;;         _Write4BitValueToDataDirBus
;; ---------------------------------------------------------------------------------
;; (3) _LCDIsBusy                                            0     0      0      88
;;         _Write4BitValueToDataDirBus
;; ---------------------------------------------------------------------------------
;; (4) _Write4BitValueToDataDirBus                           2     2      0      88
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _Write4BitValueToDataBus                              2     2      0      88
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitLCD
;;     _Write4BitValueToDataBus
;;     _Write4BitValueToDataDirBus
;;     _WriteCommandToLCD
;;       _LCDIsBusy
;;         _Write4BitValueToDataDirBus
;;       _Write4BitValueToDataBus
;;     _LCD_Char_build
;;       _WriteCommandToLCD
;;         _LCDIsBusy
;;           _Write4BitValueToDataDirBus
;;         _Write4BitValueToDataBus
;;       _WriteDataToLCD
;;         _LCDIsBusy
;;           _Write4BitValueToDataDirBus
;;         _Write4BitValueToDataBus
;;   _WriteStringToLCD
;;     _ReadLCDAddressCounter
;;       _Write4BitValueToDataDirBus
;;     _GotoYXPositionOnLCD
;;       _WriteCommandToLCD
;;         _LCDIsBusy
;;           _Write4BitValueToDataDirBus
;;         _Write4BitValueToDataBus
;;     _WriteDataToLCD
;;       _LCDIsBusy
;;         _Write4BitValueToDataDirBus
;;       _Write4BitValueToDataBus
;;   _GotoYXPositionOnLCD
;;     _WriteCommandToLCD
;;       _LCDIsBusy
;;         _Write4BitValueToDataDirBus
;;       _Write4BitValueToDataBus
;;   _WriteDataToLCD
;;     _LCDIsBusy
;;       _Write4BitValueToDataDirBus
;;     _Write4BitValueToDataBus
;;   _ScrollLCD
;;     _WriteCommandToLCD
;;       _LCDIsBusy
;;         _Write4BitValueToDataDirBus
;;       _Write4BitValueToDataBus
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      52      12        0.0%
;;ABS                  0      0      4D       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50      0      40       5       80.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_InitLCD
;;		_WriteStringToLCD
;;		_GotoYXPositionOnLCD
;;		_WriteDataToLCD
;;		_ScrollLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\Main.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	17
	
l2933:	
;Main.c: 17: InitLCD();
	fcall	_InitLCD
	line	19
;Main.c: 19: WriteStringToLCD("saeedsolutions.blogspot.com");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	line	21
	
l2935:	
;Main.c: 21: GotoYXPositionOnLCD(1, 38);
	movlw	(026h)
	movwf	(?_GotoYXPositionOnLCD)
	movlw	(01h)
	fcall	_GotoYXPositionOnLCD
	line	23
	
l2937:	
;Main.c: 23: WriteDataToLCD(0x06);
	movlw	(06h)
	fcall	_WriteDataToLCD
	line	24
	
l2939:	
;Main.c: 24: WriteDataToLCD(0x07);
	movlw	(07h)
	fcall	_WriteDataToLCD
	line	26
	
l2941:	
;Main.c: 26: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u497:
	decfsz	((??_main+0)+0),f
	goto	u497
	decfsz	((??_main+0)+0+1),f
	goto	u497
	decfsz	((??_main+0)+0+2),f
	goto	u497
	clrwdt
opt asmopt_on

	line	30
	
l2943:	
;Main.c: 29: {
;Main.c: 30: ScrollLCD(1, 0, 1);
	clrf	(?_ScrollLCD)
	clrf	0+(?_ScrollLCD)+01h
	incf	0+(?_ScrollLCD)+01h,f
	movlw	(01h)
	fcall	_ScrollLCD
	line	31
	
l2945:	
;Main.c: 31: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u507:
	decfsz	((??_main+0)+0),f
	goto	u507
	decfsz	((??_main+0)+0+1),f
	goto	u507
	decfsz	((??_main+0)+0+2),f
	goto	u507
	nop2
opt asmopt_on

	goto	l2943
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	33
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_WriteStringToLCD
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

;; *************** function _WriteStringToLCD *****************
;; Defined at:
;;		line 199 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(28), 
;; Auto vars:     Size  Location     Type
;;  s               1    8[COMMON] PTR const unsigned char 
;;		 -> STR_1(28), 
;;  LCD_DDRAM_Ad    2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ReadLCDAddressCounter
;;		_GotoYXPositionOnLCD
;;		_WriteDataToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text252
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	199
	global	__size_of_WriteStringToLCD
	__size_of_WriteStringToLCD	equ	__end_of_WriteStringToLCD-_WriteStringToLCD
	
_WriteStringToLCD:	
	opt	stack 3
; Regs used in _WriteStringToLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;WriteStringToLCD@s stored from wreg
	movwf	(WriteStringToLCD@s)
	line	200
	
l2911:	
	line	202
;LCD.c: 202: while(*s)
	goto	l2927
	line	204
	
l2913:	
;LCD.c: 203: {
;LCD.c: 204: LCD_DDRAM_Address = ReadLCDAddressCounter();
	fcall	_ReadLCDAddressCounter
	movwf	(WriteStringToLCD@LCD_DDRAM_Address)
	clrf	(WriteStringToLCD@LCD_DDRAM_Address+1)
	line	244
;LCD.c: 244: switch(LCD_DDRAM_Address)
	goto	l2921
	line	246
	
l2915:	
	clrf	(?_GotoYXPositionOnLCD)
	movlw	(01h)
	fcall	_GotoYXPositionOnLCD
	goto	l2923
	line	247
	
l2917:	
	clrf	(?_GotoYXPositionOnLCD)
	movlw	(0)
	fcall	_GotoYXPositionOnLCD
	goto	l2923
	line	244
	
l2921:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     6 (fixed)
; spacedrange            8     9 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	movf (WriteStringToLCD@LCD_DDRAM_Address+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2967
	goto	l2923
	opt asmopt_on
	
l2967:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 40 to 104
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          206    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (WriteStringToLCD@LCD_DDRAM_Address),w
	opt asmopt_off
	xorlw	40^0	; case 40
	skipnz
	goto	l2915
	xorlw	104^40	; case 104
	skipnz
	goto	l2917
	goto	l2923
	opt asmopt_on

	line	252
	
l2923:	
;LCD.c: 252: WriteDataToLCD(*s++);
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_WriteDataToLCD
	
l2925:	
	incf	(WriteStringToLCD@s),f
	line	202
	
l2927:	
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u481
	goto	u480
u481:
	goto	l2913
u480:
	line	254
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_WriteStringToLCD
	__end_of_WriteStringToLCD:
;; =============== function _WriteStringToLCD ends ============

	signat	_WriteStringToLCD,4216
	global	_InitLCD
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 70 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Write4BitValueToDataBus
;;		_Write4BitValueToDataDirBus
;;		_WriteCommandToLCD
;;		_LCD_Char_build
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text253
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	70
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 3
; Regs used in _InitLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	72
	
l2835:	
;LCD.c: 72: RB0 = 0;
	bcf	(48/8),(48)&7
	line	73
;LCD.c: 73: RB1 = 0;
	bcf	(49/8),(49)&7
	line	74
;LCD.c: 74: RB2 = 0;
	bcf	(50/8),(50)&7
	line	79
;LCD.c: 79: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	80
;LCD.c: 80: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	81
;LCD.c: 81: TRISB2 = 0;
	bcf	(1074/8)^080h,(1074)&7
	line	84
	
l2837:	
;LCD.c: 84: Write4BitValueToDataBus(0x0);
	movlw	(0)
	fcall	_Write4BitValueToDataBus
	line	85
;LCD.c: 85: Write4BitValueToDataDirBus(0x0);
	movlw	(0)
	fcall	_Write4BitValueToDataDirBus
	line	97
	
l2839:	
;LCD.c: 97: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7
	line	98
	
l2841:	
;LCD.c: 98: RB0 = 0;
	bcf	(48/8),(48)&7
	line	100
	
l2843:	
;LCD.c: 100: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_InitLCD+0)+0+2),f
movlw	4
movwf	((??_InitLCD+0)+0+1),f
	movlw	186
movwf	((??_InitLCD+0)+0),f
u517:
	decfsz	((??_InitLCD+0)+0),f
	goto	u517
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u517
	decfsz	((??_InitLCD+0)+0+2),f
	goto	u517
	clrwdt
opt asmopt_on

	line	103
	
l2845:	
;LCD.c: 103: Write4BitValueToDataBus(0x3);
	movlw	(03h)
	fcall	_Write4BitValueToDataBus
	line	108
	
l2847:	
;LCD.c: 108: RB2 = 1;
	bsf	(50/8),(50)&7
	line	109
	
l2849:	
;LCD.c: 109: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	110
	
l2851:	
;LCD.c: 110: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	111
	
l2853:	
;LCD.c: 111: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	113
;LCD.c: 113: _delay((unsigned long)((6)*(20000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_InitLCD+0)+0+1),f
	movlw	245
movwf	((??_InitLCD+0)+0),f
u527:
	decfsz	((??_InitLCD+0)+0),f
	goto	u527
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u527
opt asmopt_on

	line	116
	
l2855:	
;LCD.c: 116: Write4BitValueToDataBus(0x3);
	movlw	(03h)
	fcall	_Write4BitValueToDataBus
	line	121
	
l2857:	
;LCD.c: 121: RB2 = 1;
	bsf	(50/8),(50)&7
	line	122
	
l2859:	
;LCD.c: 122: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	123
	
l2861:	
;LCD.c: 123: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	124
	
l2863:	
;LCD.c: 124: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	126
	
l2865:	
;LCD.c: 126: _delay((unsigned long)((300)*(20000000/4000000.0)));
	opt asmopt_off
movlw	214
movwf	(??_InitLCD+0)+0,f
u537:
	nop2
	nop2
decfsz	(??_InitLCD+0)+0,f
	goto	u537
	clrwdt
opt asmopt_on

	line	129
;LCD.c: 129: Write4BitValueToDataBus(0x3);
	movlw	(03h)
	fcall	_Write4BitValueToDataBus
	line	134
	
l2867:	
;LCD.c: 134: RB2 = 1;
	bsf	(50/8),(50)&7
	line	135
	
l2869:	
;LCD.c: 135: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	136
	
l2871:	
;LCD.c: 136: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	137
	
l2873:	
;LCD.c: 137: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	139
	
l2875:	
;LCD.c: 139: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u547:
	decfsz	((??_InitLCD+0)+0),f
	goto	u547
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u547
	nop2
opt asmopt_on

	line	143
	
l2877:	
;LCD.c: 143: Write4BitValueToDataBus(0x2);
	movlw	(02h)
	fcall	_Write4BitValueToDataBus
	line	145
	
l2879:	
;LCD.c: 145: RB2 = 1;
	bsf	(50/8),(50)&7
	line	146
	
l2881:	
;LCD.c: 146: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	147
	
l2883:	
;LCD.c: 147: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	148
	
l2885:	
;LCD.c: 148: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	158
	
l2887:	
;LCD.c: 158: WriteCommandToLCD(0x28);
	movlw	(028h)
	fcall	_WriteCommandToLCD
	line	175
	
l2889:	
;LCD.c: 175: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	178
	
l2891:	
;LCD.c: 178: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	183
	
l2893:	
;LCD.c: 183: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	187
	
l2895:	
;LCD.c: 187: LCD_Char_build(0, CustomCharacter1);
	movlw	(_CustomCharacter1)&0ffh
	movwf	(?_LCD_Char_build)
	movlw	(0)
	fcall	_LCD_Char_build
	line	188
	
l2897:	
;LCD.c: 188: LCD_Char_build(1, CustomCharacter2);
	movlw	(_CustomCharacter2)&0ffh
	movwf	(?_LCD_Char_build)
	movlw	(01h)
	fcall	_LCD_Char_build
	line	189
	
l2899:	
;LCD.c: 189: LCD_Char_build(2, CustomCharacter3);
	movlw	(_CustomCharacter3)&0ffh
	movwf	(?_LCD_Char_build)
	movlw	(02h)
	fcall	_LCD_Char_build
	line	190
	
l2901:	
;LCD.c: 190: LCD_Char_build(3, CustomCharacter4);
	movlw	(_CustomCharacter4)&0ffh
	movwf	(?_LCD_Char_build)
	movlw	(03h)
	fcall	_LCD_Char_build
	line	191
	
l2903:	
;LCD.c: 191: LCD_Char_build(4, CustomCharacter5);
	movlw	(_CustomCharacter5)&0ffh
	movwf	(?_LCD_Char_build)
	movlw	(04h)
	fcall	_LCD_Char_build
	line	192
	
l2905:	
;LCD.c: 192: LCD_Char_build(5, CustomCharacter6);
	movlw	(_CustomCharacter6)&0ffh
	movwf	(?_LCD_Char_build)
	movlw	(05h)
	fcall	_LCD_Char_build
	line	193
	
l2907:	
;LCD.c: 193: LCD_Char_build(6, CustomCharacter7);
	movlw	(_CustomCharacter7)&0ffh
	movwf	(?_LCD_Char_build)
	movlw	(06h)
	fcall	_LCD_Char_build
	line	194
	
l2909:	
;LCD.c: 194: LCD_Char_build(7, CustomCharacter8);
	movlw	(_CustomCharacter8)&0ffh
	movwf	(?_LCD_Char_build)
	movlw	(07h)
	fcall	_LCD_Char_build
	line	196
	
l683:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_ScrollLCD
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:

;; *************** function _ScrollLCD *****************
;; Defined at:
;;		line 477 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  ScreenOrCurs    1    wreg     unsigned char 
;;  RightOrLeft     1    3[COMMON] unsigned char 
;;  ByHowMuch       1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ScreenOrCurs    1    7[COMMON] unsigned char 
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text254
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	477
	global	__size_of_ScrollLCD
	__size_of_ScrollLCD	equ	__end_of_ScrollLCD-_ScrollLCD
	
_ScrollLCD:	
	opt	stack 4
; Regs used in _ScrollLCD: [wreg+status,2+status,0+pclath+cstack]
;ScrollLCD@ScreenOrCursor stored from wreg
	movwf	(ScrollLCD@ScreenOrCursor)
	line	478
	
l2827:	
;LCD.c: 478: for(unsigned char i=0; i<ByHowMuch; i++)
	clrf	(ScrollLCD@i)
	goto	l2833
	line	479
	
l2829:	
;LCD.c: 479: WriteCommandToLCD(0x10|(ScreenOrCursor<<3)|(RightOrLeft<<2));
	movf	(ScrollLCD@RightOrLeft),w
	movwf	(??_ScrollLCD+0)+0
	clrc
	rlf	(??_ScrollLCD+0)+0,f
	clrc
	rlf	(??_ScrollLCD+0)+0,f
	movf	(ScrollLCD@ScreenOrCursor),w
	movwf	(??_ScrollLCD+1)+0
	clrc
	rlf	(??_ScrollLCD+1)+0,f
	clrc
	rlf	(??_ScrollLCD+1)+0,f
	clrc
	rlf	(??_ScrollLCD+1)+0,w
	iorwf	0+(??_ScrollLCD+0)+0,w
	iorlw	010h
	fcall	_WriteCommandToLCD
	line	478
	
l2831:	
	incf	(ScrollLCD@i),f
	
l2833:	
	movf	(ScrollLCD@ByHowMuch),w
	subwf	(ScrollLCD@i),w
	skipc
	goto	u471
	goto	u470
u471:
	goto	l2829
u470:
	line	480
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_ScrollLCD
	__end_of_ScrollLCD:
;; =============== function _ScrollLCD ends ============

	signat	_ScrollLCD,12408
	global	_GotoYXPositionOnLCD
psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:

;; *************** function _GotoYXPositionOnLCD *****************
;; Defined at:
;;		line 266 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LineNumber      1    wreg     unsigned char 
;;  OFFSET          1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  LineNumber      1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_WriteStringToLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text255
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	266
	global	__size_of_GotoYXPositionOnLCD
	__size_of_GotoYXPositionOnLCD	equ	__end_of_GotoYXPositionOnLCD-_GotoYXPositionOnLCD
	
_GotoYXPositionOnLCD:	
	opt	stack 4
; Regs used in _GotoYXPositionOnLCD: [wreg+status,2+status,0+pclath+cstack]
;GotoYXPositionOnLCD@LineNumber stored from wreg
	movwf	(GotoYXPositionOnLCD@LineNumber)
	line	267
	
l2825:	
;LCD.c: 267: WriteCommandToLCD(0x80|((LineNumber*0x40)+OFFSET));
	movf	(GotoYXPositionOnLCD@LineNumber),w
	movwf	(??_GotoYXPositionOnLCD+0)+0
	movlw	06h
u465:
	clrc
	rlf	(??_GotoYXPositionOnLCD+0)+0,f
	addlw	-1
	skipz
	goto	u465
	movf	(GotoYXPositionOnLCD@OFFSET),w
	addwf	0+(??_GotoYXPositionOnLCD+0)+0,w
	iorlw	080h
	fcall	_WriteCommandToLCD
	line	268
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_GotoYXPositionOnLCD
	__end_of_GotoYXPositionOnLCD:
;; =============== function _GotoYXPositionOnLCD ends ============

	signat	_GotoYXPositionOnLCD,8312
	global	_LCD_Char_build
psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:

;; *************** function _LCD_Char_build *****************
;; Defined at:
;;		line 405 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  location        1    wreg     unsigned char 
;;  ptr             1    3[COMMON] PTR unsigned char 
;;		 -> CustomCharacter8(8), CustomCharacter7(8), CustomCharacter6(8), CustomCharacter5(8), 
;;		 -> CustomCharacter4(8), CustomCharacter3(8), CustomCharacter2(8), CustomCharacter1(8), 
;; Auto vars:     Size  Location     Type
;;  location        1    5[COMMON] unsigned char 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;; This function is called by:
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text256
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	405
	global	__size_of_LCD_Char_build
	__size_of_LCD_Char_build	equ	__end_of_LCD_Char_build-_LCD_Char_build
	
_LCD_Char_build:	
	opt	stack 3
; Regs used in _LCD_Char_build: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD_Char_build@location stored from wreg
	line	408
	movwf	(LCD_Char_build@location)
	
l2807:	
;LCD.c: 406: unsigned char i;
;LCD.c: 408: if(location<8)
	movlw	(08h)
	subwf	(LCD_Char_build@location),w
	skipnc
	goto	u441
	goto	u440
u441:
	goto	l2823
u440:
	line	410
	
l2809:	
;LCD.c: 409: {
;LCD.c: 410: WriteCommandToLCD(0x40+(location*8));
	movf	(LCD_Char_build@location),w
	movwf	(??_LCD_Char_build+0)+0
	clrc
	rlf	(??_LCD_Char_build+0)+0,f
	clrc
	rlf	(??_LCD_Char_build+0)+0,f
	clrc
	rlf	(??_LCD_Char_build+0)+0,w
	addlw	040h
	fcall	_WriteCommandToLCD
	line	411
	
l2811:	
;LCD.c: 411: for(i=0;i<8;i++)
	clrf	(LCD_Char_build@i)
	line	412
	
l2817:	
;LCD.c: 412: WriteDataToLCD(ptr[i]);
	movf	(LCD_Char_build@i),w
	addwf	(LCD_Char_build@ptr),w
	movwf	(??_LCD_Char_build+0)+0
	movf	0+(??_LCD_Char_build+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_WriteDataToLCD
	line	411
	
l2819:	
	incf	(LCD_Char_build@i),f
	
l2821:	
	movlw	(08h)
	subwf	(LCD_Char_build@i),w
	skipc
	goto	u451
	goto	u450
u451:
	goto	l2817
u450:
	line	415
	
l2823:	
;LCD.c: 413: }
;LCD.c: 415: WriteCommandToLCD(0x80);
	movlw	(080h)
	fcall	_WriteCommandToLCD
	line	416
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Char_build
	__end_of_LCD_Char_build:
;; =============== function _LCD_Char_build ends ============

	signat	_LCD_Char_build,8312
	global	_WriteDataToLCD
psect	text257,local,class=CODE,delta=2
global __ptext257
__ptext257:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 40 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDIsBusy
;;		_Write4BitValueToDataBus
;; This function is called by:
;;		_WriteStringToLCD
;;		_LCD_Char_build
;;		_main
;; This function uses a non-reentrant model
;;
psect	text257
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	40
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 5
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	41
	
l2785:	
;LCD.c: 41: while(LCDIsBusy());
	
l2787:	
	fcall	_LCDIsBusy
	iorlw	0
	skipz
	goto	u431
	goto	u430
u431:
	goto	l2787
u430:
	
l679:	
	line	43
;LCD.c: 43: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	44
;LCD.c: 44: RB0 = 1;
	bsf	(48/8),(48)&7
	line	47
	
l2789:	
;LCD.c: 47: Write4BitValueToDataBus(LCDChar>>4);
	swapf	(WriteDataToLCD@LCDChar),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	_Write4BitValueToDataBus
	line	52
	
l2791:	
;LCD.c: 52: RB2 = 1;
	bsf	(50/8),(50)&7
	line	53
	
l2793:	
;LCD.c: 53: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	54
	
l2795:	
;LCD.c: 54: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	55
	
l2797:	
;LCD.c: 55: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	59
;LCD.c: 59: Write4BitValueToDataBus(LCDChar);
	movf	(WriteDataToLCD@LCDChar),w
	fcall	_Write4BitValueToDataBus
	line	61
	
l2799:	
;LCD.c: 61: RB2 = 1;
	bsf	(50/8),(50)&7
	line	62
	
l2801:	
;LCD.c: 62: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	63
	
l2803:	
;LCD.c: 63: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	64
	
l2805:	
;LCD.c: 64: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	67
	
l680:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	_WriteCommandToLCD
psect	text258,local,class=CODE,delta=2
global __ptext258
__ptext258:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 10 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDIsBusy
;;		_Write4BitValueToDataBus
;; This function is called by:
;;		_InitLCD
;;		_GotoYXPositionOnLCD
;;		_LCD_Char_build
;;		_ScrollLCD
;; This function uses a non-reentrant model
;;
psect	text258
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	10
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 4
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	11
	
l2763:	
;LCD.c: 11: while(LCDIsBusy());
	
l2765:	
	fcall	_LCDIsBusy
	iorlw	0
	skipz
	goto	u421
	goto	u420
u421:
	goto	l2765
u420:
	
l673:	
	line	13
;LCD.c: 13: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	14
;LCD.c: 14: RB0 = 0;
	bcf	(48/8),(48)&7
	line	17
	
l2767:	
;LCD.c: 17: Write4BitValueToDataBus(Command>>4);
	swapf	(WriteCommandToLCD@Command),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	_Write4BitValueToDataBus
	line	22
	
l2769:	
;LCD.c: 22: RB2 = 1;
	bsf	(50/8),(50)&7
	line	23
	
l2771:	
;LCD.c: 23: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	24
	
l2773:	
;LCD.c: 24: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	25
	
l2775:	
;LCD.c: 25: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	29
;LCD.c: 29: Write4BitValueToDataBus(Command);
	movf	(WriteCommandToLCD@Command),w
	fcall	_Write4BitValueToDataBus
	line	31
	
l2777:	
;LCD.c: 31: RB2 = 1;
	bsf	(50/8),(50)&7
	line	32
	
l2779:	
;LCD.c: 32: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	33
	
l2781:	
;LCD.c: 33: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	34
	
l2783:	
;LCD.c: 34: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	37
	
l674:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_ReadLCDAddressCounter
psect	text259,local,class=CODE,delta=2
global __ptext259
__ptext259:

;; *************** function _ReadLCDAddressCounter *****************
;; Defined at:
;;		line 424 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  AddressCount    1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Write4BitValueToDataDirBus
;; This function is called by:
;;		_WriteStringToLCD
;; This function uses a non-reentrant model
;;
psect	text259
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	424
	global	__size_of_ReadLCDAddressCounter
	__size_of_ReadLCDAddressCounter	equ	__end_of_ReadLCDAddressCounter-_ReadLCDAddressCounter
	
_ReadLCDAddressCounter:	
	opt	stack 5
; Regs used in _ReadLCDAddressCounter: [wreg+status,2+status,0+pclath+cstack]
	line	425
	
l2725:	
	line	428
	
l2727:	
;LCD.c: 428: Write4BitValueToDataDirBus(0xF);
	movlw	(0Fh)
	fcall	_Write4BitValueToDataDirBus
	line	433
	
l2729:	
;LCD.c: 433: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7
	line	434
	
l2731:	
;LCD.c: 434: RB0 = 0;
	bcf	(48/8),(48)&7
	line	436
	
l2733:	
;LCD.c: 436: RB2 = 1;
	bsf	(50/8),(50)&7
	line	437
	
l2735:	
;LCD.c: 437: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	440
	
l2737:	
;LCD.c: 440: AddressCounter = (RB7 << 7) | (RB6 << 6) | (RB5 << 5) | (RB4 << 4);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	movlw	(1 << (07h))
	btfsc	(54/8),(54)&7
	iorlw	(1 << (06h))
	btfsc	(53/8),(53)&7
	iorlw	(1 << (05h))
	btfsc	(52/8),(52)&7
	iorlw	(1 << (04h))
	movwf	(ReadLCDAddressCounter@AddressCounter)
	line	445
	
l2739:	
;LCD.c: 445: RB2 = 0;
	bcf	(50/8),(50)&7
	line	446
	
l2741:	
;LCD.c: 446: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	450
	
l2743:	
;LCD.c: 450: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	451
	
l2745:	
;LCD.c: 451: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	453
	
l2747:	
;LCD.c: 453: AddressCounter |= ( (RB7 << 3) | (RB6 << 2) | (RB5 << 1) | (RB4 << 0) );
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(55/8),(55)&7
	movlw	(1 << (03h))
	btfsc	(54/8),(54)&7
	iorlw	(1 << (02h))
	btfsc	(53/8),(53)&7
	iorlw	(1 << (01h))
	btfsc	(52/8),(52)&7
	iorlw	1
	iorwf	(ReadLCDAddressCounter@AddressCounter),f
	line	455
	
l2749:	
;LCD.c: 455: RB2 = 0;
	bcf	(50/8),(50)&7
	line	456
	
l2751:	
;LCD.c: 456: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	459
	
l2753:	
;LCD.c: 459: Write4BitValueToDataDirBus(0x0);
	movlw	(0)
	fcall	_Write4BitValueToDataDirBus
	line	465
	
l2755:	
;LCD.c: 465: AddressCounter &= 0x7F;
	bcf	(ReadLCDAddressCounter@AddressCounter)+(7/8),(7)&7
	line	468
	
l2757:	
;LCD.c: 468: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7
	line	470
	
l2759:	
;LCD.c: 470: return AddressCounter;
	movf	(ReadLCDAddressCounter@AddressCounter),w
	line	471
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of_ReadLCDAddressCounter
	__end_of_ReadLCDAddressCounter:
;; =============== function _ReadLCDAddressCounter ends ============

	signat	_ReadLCDAddressCounter,89
	global	_LCDIsBusy
psect	text260,local,class=CODE,delta=2
global __ptext260
__ptext260:

;; *************** function _LCDIsBusy *****************
;; Defined at:
;;		line 301 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Write4BitValueToDataDirBus
;; This function is called by:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;; This function uses a non-reentrant model
;;
psect	text260
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	301
	global	__size_of_LCDIsBusy
	__size_of_LCDIsBusy	equ	__end_of_LCDIsBusy-_LCDIsBusy
	
_LCDIsBusy:	
	opt	stack 4
; Regs used in _LCDIsBusy: [wreg+status,2+status,0+pclath+cstack]
	line	303
	
l2699:	
;LCD.c: 303: Write4BitValueToDataDirBus(0xF);
	movlw	(0Fh)
	fcall	_Write4BitValueToDataDirBus
	line	308
	
l2701:	
;LCD.c: 308: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7
	line	309
	
l2703:	
;LCD.c: 309: RB0 = 0;
	bcf	(48/8),(48)&7
	line	311
	
l2705:	
;LCD.c: 311: RB2 = 1;
	bsf	(50/8),(50)&7
	line	312
	
l2707:	
;LCD.c: 312: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	314
	
l2709:	
;LCD.c: 314: if( RB7 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u411
	goto	u410
u411:
	goto	l714
u410:
	line	316
	
l2711:	
;LCD.c: 315: {
;LCD.c: 316: RB2 = 0;
	bcf	(50/8),(50)&7
	line	317
;LCD.c: 317: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	320
;LCD.c: 320: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	321
;LCD.c: 321: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	323
;LCD.c: 323: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	324
;LCD.c: 324: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	326
	
l2713:	
;LCD.c: 326: return 1;
	movlw	(01h)
	goto	l715
	line	327
	
l714:	
	line	329
;LCD.c: 327: }
;LCD.c: 329: RB2 = 0;
	bcf	(50/8),(50)&7
	line	330
;LCD.c: 330: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	334
;LCD.c: 334: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	335
;LCD.c: 335: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	337
;LCD.c: 337: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	338
;LCD.c: 338: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	clrwdt
	opt asmopt_on

	line	341
	
l2717:	
;LCD.c: 341: Write4BitValueToDataDirBus(0x0);
	movlw	(0)
	fcall	_Write4BitValueToDataDirBus
	line	348
	
l2719:	
;LCD.c: 348: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7
	line	350
	
l2721:	
;LCD.c: 350: return 0;
	movlw	(0)
	line	351
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_LCDIsBusy
	__end_of_LCDIsBusy:
;; =============== function _LCDIsBusy ends ============

	signat	_LCDIsBusy,89
	global	_Write4BitValueToDataDirBus
psect	text261,local,class=CODE,delta=2
global __ptext261
__ptext261:

;; *************** function _Write4BitValueToDataDirBus *****************
;; Defined at:
;;		line 370 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  DataDir         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DataDir         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InitLCD
;;		_LCDIsBusy
;;		_ReadLCDAddressCounter
;; This function uses a non-reentrant model
;;
psect	text261
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	370
	global	__size_of_Write4BitValueToDataDirBus
	__size_of_Write4BitValueToDataDirBus	equ	__end_of_Write4BitValueToDataDirBus-_Write4BitValueToDataDirBus
	
_Write4BitValueToDataDirBus:	
	opt	stack 4
; Regs used in _Write4BitValueToDataDirBus: [wreg+status,2+status,0]
;Write4BitValueToDataDirBus@DataDir stored from wreg
	line	372
	movwf	(Write4BitValueToDataDirBus@DataDir)
	
l2695:	
;LCD.c: 372: TRISB4 = (((DataDir>>0)&0x1)!=0);
	btfsc	(Write4BitValueToDataDirBus@DataDir),(0)&7
	goto	u331
	goto	u330
	
u331:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1076/8)^080h,(1076)&7
	goto	u344
u330:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1076/8)^080h,(1076)&7
u344:
	line	373
	
l2697:	
;LCD.c: 373: TRISB5 = (((DataDir>>1)&0x1)!=0);
	movf	(Write4BitValueToDataDirBus@DataDir),w
	movwf	(??_Write4BitValueToDataDirBus+0)+0
	clrc
	rrf	(??_Write4BitValueToDataDirBus+0)+0,f
	btfsc	0+(??_Write4BitValueToDataDirBus+0)+0,(0)&7
	goto	u351
	goto	u350
	
u351:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1077/8)^080h,(1077)&7
	goto	u364
u350:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1077/8)^080h,(1077)&7
u364:
	line	374
;LCD.c: 374: TRISB6 = (((DataDir>>2)&0x1)!=0);
	movf	(Write4BitValueToDataDirBus@DataDir),w
	movwf	(??_Write4BitValueToDataDirBus+0)+0
	clrc
	rrf	(??_Write4BitValueToDataDirBus+0)+0,f
	clrc
	rrf	(??_Write4BitValueToDataDirBus+0)+0,f
	btfsc	0+(??_Write4BitValueToDataDirBus+0)+0,(0)&7
	goto	u371
	goto	u370
	
u371:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1078/8)^080h,(1078)&7
	goto	u384
u370:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1078/8)^080h,(1078)&7
u384:
	line	375
;LCD.c: 375: TRISB7 = (((DataDir>>3)&0x1)!=0);
	movf	(Write4BitValueToDataDirBus@DataDir),w
	movwf	(??_Write4BitValueToDataDirBus+0)+0
	clrc
	rrf	(??_Write4BitValueToDataDirBus+0)+0,f
	clrc
	rrf	(??_Write4BitValueToDataDirBus+0)+0,f
	clrc
	rrf	(??_Write4BitValueToDataDirBus+0)+0,f
	btfsc	0+(??_Write4BitValueToDataDirBus+0)+0,(0)&7
	goto	u391
	goto	u390
	
u391:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1079/8)^080h,(1079)&7
	goto	u404
u390:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1079/8)^080h,(1079)&7
u404:
	line	376
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_Write4BitValueToDataDirBus
	__end_of_Write4BitValueToDataDirBus:
;; =============== function _Write4BitValueToDataDirBus ends ============

	signat	_Write4BitValueToDataDirBus,4216
	global	_Write4BitValueToDataBus
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:

;; *************** function _Write4BitValueToDataBus *****************
;; Defined at:
;;		line 358 in file "C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text262
	file	"C:\Users\Saeed\Desktop\PIC16F877 LCD Code\Code\LCD.c"
	line	358
	global	__size_of_Write4BitValueToDataBus
	__size_of_Write4BitValueToDataBus	equ	__end_of_Write4BitValueToDataBus-_Write4BitValueToDataBus
	
_Write4BitValueToDataBus:	
	opt	stack 5
; Regs used in _Write4BitValueToDataBus: [wreg+status,2+status,0]
;Write4BitValueToDataBus@Data stored from wreg
	line	360
	movwf	(Write4BitValueToDataBus@Data)
	
l2691:	
;LCD.c: 360: RB4 = (((Data>>0)&0x1)!=0);
	btfsc	(Write4BitValueToDataBus@Data),(0)&7
	goto	u251
	goto	u250
	
u251:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u264
u250:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u264:
	line	361
	
l2693:	
;LCD.c: 361: RB5 = (((Data>>1)&0x1)!=0);
	movf	(Write4BitValueToDataBus@Data),w
	movwf	(??_Write4BitValueToDataBus+0)+0
	clrc
	rrf	(??_Write4BitValueToDataBus+0)+0,f
	btfsc	0+(??_Write4BitValueToDataBus+0)+0,(0)&7
	goto	u271
	goto	u270
	
u271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u284
u270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u284:
	line	362
;LCD.c: 362: RB6 = (((Data>>2)&0x1)!=0);
	movf	(Write4BitValueToDataBus@Data),w
	movwf	(??_Write4BitValueToDataBus+0)+0
	clrc
	rrf	(??_Write4BitValueToDataBus+0)+0,f
	clrc
	rrf	(??_Write4BitValueToDataBus+0)+0,f
	btfsc	0+(??_Write4BitValueToDataBus+0)+0,(0)&7
	goto	u291
	goto	u290
	
u291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u304
u290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u304:
	line	363
;LCD.c: 363: RB7 = (((Data>>3)&0x1)!=0);
	movf	(Write4BitValueToDataBus@Data),w
	movwf	(??_Write4BitValueToDataBus+0)+0
	clrc
	rrf	(??_Write4BitValueToDataBus+0)+0,f
	clrc
	rrf	(??_Write4BitValueToDataBus+0)+0,f
	clrc
	rrf	(??_Write4BitValueToDataBus+0)+0,f
	btfsc	0+(??_Write4BitValueToDataBus+0)+0,(0)&7
	goto	u311
	goto	u310
	
u311:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u324
u310:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u324:
	line	364
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_Write4BitValueToDataBus
	__end_of_Write4BitValueToDataBus:
;; =============== function _Write4BitValueToDataBus ends ============

	signat	_Write4BitValueToDataBus,4216
psect	text263,local,class=CODE,delta=2
global __ptext263
__ptext263:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
