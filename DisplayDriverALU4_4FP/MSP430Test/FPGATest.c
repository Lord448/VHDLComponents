#include <msp430.h>
#include <stdint.h>

int main(void) 
{
    uint8_t PortValue = 0;
    uint16_t debugFlag = 0;
    uint16_t j = 50000;

    WDTCTL = WDTPW + WDTHOLD; //Stop Watchog timer

    P1DIR |= 0xFFFF; //All bits are out
    P1OUT = PortValue;
    P2DIR |= 0xFFFF; //Al bits are out
    P2OUT = 0;

    do(j--);
    while (j != 0);

    while (1)
    {
        uint16_t i;
        P1OUT = PortValue;
        PortValue++;
        if(PortValue == 0x7F) { //Max value of REG most positive number
            debugFlag = 1;
        }
        else if (PortValue == 0b10000000){ //Most negative number in CA2
            debugFlag = 2;
        }
        i = 30000;
        do(i--);
        while (i != 0);
        
    }
}