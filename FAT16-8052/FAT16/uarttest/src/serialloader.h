#ifndef ISA_SERIAL_LOADER_H
#define ISA_SERIAL_LOADER_H

#ifndef ISA_UART_H
#error "IMPORT UART.H"
#endif

void delay(unsigned int millisec)
{
    for(unsigned int i=0;i<millisec;i++)for(unsigned char j=0;j<255;j++); //wait millisec * 1ms
}
void SL_read()
{
    unsigned int addr;
    unsigned char data;
    while(UartReadReady()==0); //wait till we rcv data
    delay(10);
    
    
    addr = UartRead()
}


void SL_getcmd()
{
    unsigned char cmd;
    while(UartReadReady()) UartRead(); //flush 

    while(UartReadReady()==0); //wait till we rcv data 
    delay(10);

    cmd = UartRead(); //read

    switch(cmd)
    {
        case 'V':
            UartPrint("ISA_SERIAL_LOADER_V0.1:8052\n");
            break;
        case 'R':
            SL_read();
            break;
        case 'W':
            SL_write();
            break;
    }
}





#endif