#line 1 "E:/Resources/ «‰ÌÂ 2/Õ«ﬂ„«  œﬁÌﬁ…/Interrupt/Interrupt.c"




void func();
void main() {
adcon0=0x07;
TRISA.B0=1;
TRISC=0X00;

INTCON.GIE=1;
INTCON.INTE=1;

while(1)
{
portc=111<<portc;

delay_ms(10);
 portc.B0 =1;
delay_ms(1000);
 portc.B0 =0;
delay_ms(10);
 portc.B1 =1;
delay_ms(1000);
 portc.B1 =0;
delay_ms(10);
 portc.B2 =1;
delay_ms(1000);

}
}


void func()
{

if(1<< portc.B0 )
{
while(1)
{
 portc.B0 =0;
delay_ms(10);
 portc.B2 =1;
delay_ms(1000);
 portc.B2 =0;
delay_ms(10);
 portc.B1 =1;
delay_ms(1000);
 portc.B1 =0;
delay_ms(10);
 portc.B0 =1;
delay_ms(1000);
}
}
else if (1<< portc.B2 )
{
while(1)
{
 portc.B2 =0;
delay_ms(10);
 portc.B0 =1;
delay_ms(1000);
 portc.B0 =0;
delay_ms(10);
 portc.B1 =1;
delay_ms(1000);
 portc.B1 =0;
delay_ms(10);
 portc.B2 =1;
delay_ms(1000);
}
}
else {
while(1)
{
 portc.B1 =0;
 portc.B2 =0;
delay_ms(10);
 portc.B0 =1;
delay_ms(1000);
 portc.B0 =0;
delay_ms(10);
 portc.B1 =1;
delay_ms(1000);
 portc.B1 =0;
delay_ms(10);
 portc.B2 =1;
delay_ms(1000);
}
}
}

 void interrupt ()
{
 INTCON.INTF=0;
 func();

}
