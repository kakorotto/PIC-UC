/* 
1) Plane a PIC program to save the states of "PA0, PA1. PA2, PA3" at the rising edge of "PB0". And at the
falling edge of "PB0", the saved states are displayed serially one after another on the o/p "PA6" such that
each state is displayed for 2seconds.
*/             

void main() {
adcon1=0x07;
trisa = 0;
trisb = 0b00000001;
intcon.gie=1;
intcon.inte=1;
INTCON.PEIE = 0;

   while (1)
   {  porta =7;
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