#line 1 "E:/Resources/ «‰ÌÂ 2/Õ«ﬂ„«  œﬁÌﬁ…/Projects/Pro1/Pro1.c"
#line 24 "E:/Resources/ «‰ÌÂ 2/Õ«ﬂ„«  œﬁÌﬁ…/Projects/Pro1/Pro1.c"
void main() {
adcon1=0x07;
trisa = 0;
trisb = 0b00000001;
intcon.gie=1;
intcon.inte=1;
INTCON.PEIE = 0;

 while (1)
 { porta =7;
 OPTION_REG.INTEDG = 1;
 PORTA = 0;
 delay_ms(1);
 OPTION_REG.INTEDG = 0;
 PORTA=0;
 delay_ms(1);

 }
}

void interrupt ()
{

 portA.B5=porta.b0;
 delay_ms(2000);
 portA.B5=porta.b1;
 delay_ms(2000);
 portA.B5=porta.b2;
 delay_ms(2000);
 portA.B5=porta.b3;
 delay_ms(2000);
 INTCON.INTF = 0;

}
