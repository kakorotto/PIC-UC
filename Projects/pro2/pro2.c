/*
 2) A group of three motors should be controlled. Each motor is equipped with a revolution monitoring device.
If the motor turns, the sensor indicates “1” (otherwise “0”). The switch S1 activates the monitoring circuit.
The failure indication (fault) is to light in the following cases:
a. If two of the three motors failed longer than 10 seconds
b. If all three motors failed
The fault light is to stay lit until a reset switch is activated (acknowledged).
*/

#define M1 PORTB.B0
#define M2 PORTB.B1
#define M3 PORTB.B2
#define S1 PORTB.B3
#define S2 PORTB.B4

#define FAULT PORTB.B6

void main() {
pcon.b3=1;
cmcon=0x07;

while (S1)
{
if( ( (M1 || M2) == 0) || ( ( M2 || M3 ) == 0 ) || ( ( M1 || M3 ) == 0 ) )  FAULT = 1;

if ( (M1 || M2 || M3) == 0 )  FAULT = 1;

if (S2) {FAULT = 0; S1=0}
}
}