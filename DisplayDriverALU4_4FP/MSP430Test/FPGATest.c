#include <msp430.h>
#include <stdint.h>

int main(void) 
{
    uint32_t PortValue = 0;

    WDTCTL = WDTPW + WDTHOLD; //Stop Watchog timer

    P1DIR |= 0xFFFF; //All bits are out
    P1OUT = PortValue;
    P2DIR |= 0xFFFF; //Al bits are out
    P2OUT = 0;

    while (1)
    {
        uint16_t i;
        P1OUT = PortValue;
        PortValue++;

        i = 50000;
        do(i--);
        while (i != 0);
        
    }
}