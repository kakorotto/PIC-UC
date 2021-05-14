#include <stdlib.h>
unsigned short bcdConverter(unsigned short input);


  volatile long t;
  char a,b;
void main() {  
  adcon1 = 0x04;
  TRISA  = 0x01;              // PORTA is input
  TRISB  = 0;                 // PORTC is output
  TRISD  = 0;                 // PORTB is output
  portb=0;
  L1: t = ADC_Read(0)* 0.4887;
   a=t%10;
   b=(t/10)%10;
   while(1) {

    
    // Read analog voltage an  // Read analog voltage and convert id convert it to degree celsius (0.489 = 500/1023)
    if(t>30 && t<40)
    {
    
    PORTB=bcdConverter(a+'0');
    PORTD.B0=0;
    PORTD.B1=1;
    delay_ms(10000);
    PORTD.B1=0;
   // printf(t);
    PORTB=bcdConverter(b+'0');
    
    PORTD.B0=1;
    delay_ms(10000);
    PORTD.B0=0;
    

    }
    else goto L1;
   }
  }
  

unsigned short bcdConverter(char input) {
switch (input) {
 case '0': return 0x3F;
 case '1': return 0x06;
 case '2': return 0x5B;
 case '3': return 0x4F;
 case '4': return 0x66;
 case '5': return 0x6D;
 case '6': return 0x7D;
 case '7': return 0x07;
 case '8': return 0x7F;
 case '9': return 0x6F;

default  : return 0b11111111;
}
}