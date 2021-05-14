/*
5) Design a PIC program to control a 4-fan system that is used as an air conditioning system inside the conference
room of a hotel. The system is equipped with two sensors S1 and S2 beside the normally open start
pushbutton and the normally closed stop pushbutton.
? S1 transmits logic one output when the weather in the room has a temperature degree over 21 °C.
? S2 transmits logic one output when the temperature degree exceeds 27 °C.
It is desired to switch on the four fans after starting the system provided that the temperature exceeds 27 °C.
When the temperature is lowered to 21 °C :
? fan number 4 is switched off after 5 seconds,
? Then fan number 3 remains 10 seconds after switching off fan 4 then it is switched off.
? Finally, fan no.2 switches off 15 seconds after switching off fan no.3.
? Only fan no.1 still operates.
o If sensor S2 signaling the PIC, then the three fans which were switched off previously have to be
immediately switched on.
o When sensor S1disconnects its signal from the PIC, the successive switching off process of the three
fans should be reversed with the same rate (means that switching off fan no.1 after 5 seconds then
switching off fan no.2 after 10 seconds then switching off fan no.3 after 15 seconds).
o When the sensor S2 gives its output to the PIC, the three switched off fans are droved (switched on)
again.
o When the signal of S1is disconnected, then the switching off process of fans are reversed, and so on.
o If the stop pushbutton is pressed at any instant, then the four fans are switched off immediately
*/

void main() {

}