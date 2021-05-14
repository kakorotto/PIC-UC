#line 1 "E:/Resources/ «‰ÌÂ 2/Õ«ﬂ„«  œﬁÌﬁ…/Using Interrupt with PIC Microcontroller/Using Interrupt with PIC Microcontroller.c"

void main()
{
 TRISC = 0;
 OPTION_REG.INTEDG = 1;
 INTCON.GIE = 1;
 INTCON.INTE = 1;
 while(1)
 {
 PORTC = 0x00;
 }
}

void interrupt()
{
 INTCON.INTF=0;
 PORTC=~PORTC;
 Delay_ms(1000);
}
