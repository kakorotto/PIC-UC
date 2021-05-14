
void main()
{
    TRISC = 0;   // To configure PORTC as output port
    OPTION_REG.INTEDG = 1;  // Set Rising Edge Trigger for INT
    INTCON.GIE = 1;       // Enable The Global Interrupt
    INTCON.INTE = 1;       // Enable INT
    while(1)
    {
        PORTC = 0x00;       //Set some value at PortD
    }
}

void interrupt()              // Interrupt ISR
{
    INTCON.INTF=0;          // Clear the interrupt 0 flag
    PORTC=~PORTC;               // Invert (Toggle) the value at PortD
    Delay_ms(1000);           // Delay for 1 sec
}