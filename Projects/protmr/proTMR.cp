#line 1 "E:/Resources/����� 2/������ �����/Projects/protmr/proTMR.c"
#line 11 "E:/Resources/����� 2/������ �����/Projects/protmr/proTMR.c"
 sbit led at RC0_bit;
 unsigned short num ;

void interrupt()
{


 num++;
 if (num==30)
 {
 led = ~led;


 }

 if (NUM = 60)
 {LED = 0;}
 TMR0 = 0;

}




void main()
{


 TRISC = 0x00;
 LED = 0;
 NUM=0;
 OPTION_REG=0B00000111;
 TMR0=0;
 INTCON=0B10100000;

 while(1)
 {
 }
}
