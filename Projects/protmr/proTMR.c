/*
* Example Source Code For PIC Timers
*   THis blinks LEDs on PORTB to show interrupt rates
*
* Barton Dring
* Dring Engineering Services
* www.eng-serve.com
*
* Example only!  Use any code at your own risk.
*/
 sbit led at RC0_bit;
 unsigned short num ;
// Interrupt Handler
void interrupt()
{
  // Timer0 Interrupt - Freq = 30.52 Hz - Period = 0.032768 seconds

  num++;
  if (num==30) // timer 0 interrupt flag
  {
    led = ~led;      // Toggle PORTB bit0 LED

               // reset the timer preset count
  }

    if (NUM = 60)
    {LED = 0;}
        TMR0 = 0;

}



// code starts here...
void main()
{

  // setup portb to show the interrupts by blibking LEDs
  TRISC = 0x00;    // PORT is all output...to show the interrupts
  LED = 0;       // start with all outputs low
  NUM=0;
  OPTION_REG=0B00000111;
  TMR0=0;
  INTCON=0B10100000;

  while(1)  //endless loop
  {
  }
}
