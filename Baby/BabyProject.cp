#line 1 "E:/Resources/ÊÇäíå 2/ÍÇßãÇÊ ÏÞíÞÉ/BabyProject.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/stdlib.h"







 typedef struct divstruct {
 int quot;
 int rem;
 } div_t;

 typedef struct ldivstruct {
 long quot;
 long rem;
 } ldiv_t;

 typedef struct uldivstruct {
 unsigned long quot;
 unsigned long rem;
 } uldiv_t;

int abs(int a);
float atof(char * s);
int atoi(char * s);
long atol(char * s);
div_t div(int number, int denom);
ldiv_t ldiv(long number, long denom);
uldiv_t uldiv(unsigned long number, unsigned long denom);
long labs(long x);
int max(int a, int b);
int min(int a, int b);
void srand(unsigned x);
int rand();
int xtoi(char * s);
#line 2 "E:/Resources/ÊÇäíå 2/ÍÇßãÇÊ ÏÞíÞÉ/BabyProject.c"
unsigned short bcdConverter(unsigned short input);


 volatile long t;
 char a,b;
void main() {
 adcon1 = 0x04;
 TRISA = 0x01;
 TRISB = 0;
 TRISD = 0;
 portb=0;
 L1: t = ADC_Read(0)* 0.4887;
 a=t%10;
 b=(t/10)%10;
 while(1) {



 if(t>30 && t<40)
 {

 PORTB=bcdConverter(a+'0');
 PORTD.B0=0;
 PORTD.B1=1;
 delay_ms(10000);
 PORTD.B1=0;

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

default : return 0b11111111;
}
}
