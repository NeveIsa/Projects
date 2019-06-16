#ifndef ISA_SERIAL_LOADER_H
#define ISA_SERIAL_LOADER_H

#ifndef ISA_UART_H
#error "IMPORT UART.H"
#endif

void delay_ms(unsigned int millisec)
{
    for(unsigned int i=0;i<millisec;i++)for(unsigned char j=0;j<255;j++); //wait millisec * 1ms
}

void SL_write()
{
    unsigned char data;
    unsigned int addr;
    __xdata unsigned char* xram_addr;

    while(UartReadReady()==0); //wait till we rcv data
    
    
    addr = UartRead(); //msb
    addr = addr << 8;
    addr |= UartRead(); //lsb

    data = UartRead(); //read data

    //write protection
    xram_addr=(__xdata char*)0x1555;
    *(xram_addr) = 0xAA;
    xram_addr=(__xdata char*)0x0AAA;
    *(xram_addr) = 0x55;
    xram_addr=(__xdata char*)0x1555;
    *(xram_addr) = 0xA0;

    xram_addr = (__xdata char*) addr;

    *(xram_addr) = data; //write to xram

    UartWrite('W'); //ack

}

void SL_read()
{
    unsigned char data;
    unsigned int addr;
    __xdata unsigned char* xram_addr;

    while(UartReadReady()==0); //wait till we rcv data
    
    
    
    addr = UartRead(); //msb
    addr = addr << 8;
    addr |= UartRead(); //lsb

    xram_addr = (__xdata char*) addr;

    data = *(xram_addr); //read from xram

    UartWrite(data);
    
}

void SL_getcmd()
{
    unsigned char cmd;
    while(UartReadReady()) UartRead(); //flush 

    while(UartReadReady()==0); //wait till we rcv data 
    

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
        default:
            break;
    }
}





#endif