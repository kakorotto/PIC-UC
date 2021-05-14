#define RED portc.B0
#define YELLOW portc.B1
#define GREEN portc.B2
#define INT porta.B0
void func();
void main() {
adcon1=0x07;
TRISA.B0=1;
TRISC=0X00;
//OPTION_REG.INTEDG = 1;
INTCON.GIE=1;
INTCON.INTE=1;
//INTCON.INTF;
while(1)
{

GREEN=0;
delay_ms(10);
RED=1;
delay_ms(1000);
RED=0;
delay_ms(10);
YELLOW=1;
delay_ms(1000);
YELLOW=0;
delay_ms(10);
GREEN=1;
delay_ms(1000);

}
}


void func()
{

if(1<<RED)
{
while(1)
{
RED=0;
delay_ms(10);
GREEN=1;
delay_ms(1000);
GREEN=0;
delay_ms(10);
YELLOW=1;
delay_ms(1000);
YELLOW=0;
delay_ms(10);
RED=1;
delay_ms(1000);
}
}
else if (1<<GREEN)
{
while(1)
{
GREEN=0;
delay_ms(10);
RED=1;
delay_ms(1000);
RED=0;
delay_ms(10);
YELLOW=1;
delay_ms(1000);
YELLOW=0;
delay_ms(10);
GREEN=1;
delay_ms(1000);
}
}
else {
while(1)
{
YELLOW=0;
GREEN=0;
delay_ms(10);
RED=1;
delay_ms(1000);
RED=0;
delay_ms(10);
YELLOW=1;
delay_ms(1000);
YELLOW=0;
delay_ms(10);
GREEN=1;
delay_ms(1000);
}
}
}
 UART1_DATA_READY();
  void interrupt ()
{
     INTCON.INTF=0;
         func();

}