/*
1- List the components of a microprocessor-based system
2- What is the difference between a microprocessor and microcontroller?
3- Explain why the address bus is unidirectional and the data bus is bidirectional?
*/

/* 
7) Design a PIC program to control the chemical process which is shown in the following figure:
? Just pressing start PB, pump1 then pump2 are successively switched on separated by a period of 10
seconds.
? A mixer and a heater are switched ON from the starting instant.
? When the level of the mixed product reaches the HL sensor, both pumps 1 & 2 are switched off. The
mixer and the heater continue operation.
? When the required temperature is reached, the heater is switched off. The mixer continues operation 10
sec. after switching off the heater.
? After turning off the mixer, pump 3 as well as the drain valve are switched ON until the product level
reaches LL sensor.
? The described cycle of operation (from turning ON pump 1 or 2) repeats till pressing stop PB.
? If the stop PB is pressed at any instant, then the whole system is switched off while the drain valve and
pump 3 are on till LL sensor is reached. 
*/

#define PUMP1 PORTB.B0
#define PUMP2 PORTB.B0
#define PUMP3 PORTB.B0
#define MIXER_MOTOR PORTB.B0
#define HL_SENSOR PORTB.B0
#define LL_SENSOR PORTB.B0
#define START PORTB.B0
#define STOP PORTB.B0

void main() {

}