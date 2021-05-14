/*
3) A low pressure switch is to be added to a fan starter circuit. Assign inputs for stop, start and low pressure. If
the fan loses pressure, then it is to shut down. Design a start/stop seal circuit that stops on low pressure.
Remember that when the fan is off, pressure is low.
 */
#define STOP
#define START
#define LOW_PRESSURE

void main() {


   if (FAN<1)
   FAN=LOW_PRESSUER ;
   
}