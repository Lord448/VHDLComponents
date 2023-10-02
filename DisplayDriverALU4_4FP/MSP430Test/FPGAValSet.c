#include <msp430.h>
#include <stdint.h>
#include "UART/clockConfig.h"
#include "UART/uart.h"

uint8_t IncomData = 0;

int main(void)
{
    WDTCTL = WDTPW + WDTHOLD; //Stop Watchog timer
    //Clock_vInit();
    Uart_vInit(9600);
    Uart_u16SendString("UART Init complete \r\n");
    while (1)
    {
        if(Uart_u8UntilReceiveChar(&IncomData)) 
        {
            Uart_u16SendString("\r\n Timeout");
        }
        else
        {
            Uart_u16SendString("The char received is ");
            Uart_u8SendCharUntilLoad(IncomData);
        }
    }
}
