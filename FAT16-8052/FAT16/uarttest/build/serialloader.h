#ifndef ISA_SERIAL_LOADER_H
#define ISA_SERIAL_LOADER_H

#ifndef ISA_UART_H
#error "IMPORT UART.H"
#endif

void SL_getcmd()
{
    unsigned char cmd;
    while(UartReadReady()) UartRead(); //flush 





}




#endif