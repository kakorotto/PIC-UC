/*  Name     : main.c
 *  Purpose  : Main file for complete LCD library for PIC16F877.
 *  Author   : M.Saeed Yasin
 *  Date     : 24-11-12
 *  Website  : saeedsolutions.blogspot.com
 *  Revision : None
 */
#include "Includes.h"

// Configuration word for PIC16F877
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);

// Main Function
void main(void)
{
	InitLCD();        // Initialize the LCD

	WriteStringToLCD("saeedsolutions.blogspot.com"); // Write String

	GotoYXPositionOnLCD(LCD_LINE2, 38);	  // Goto Line2 offset 38

	WriteDataToLCD(0x06);		 // Write Custom Character 7
	WriteDataToLCD(0x07);		 // Write Custom Character 8

	__delay_ms(1000);			 // Delay of 1 sec

	while(1)
	{
		ScrollLCD(ScrollScreen, ToLeft, 1);	// Scroll LCD display by one character
		__delay_ms(200);					// Delay of 0.2 seconds
	}
}
