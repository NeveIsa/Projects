#ifndef ISA_SERIAL_LOADER_H
#define ISA_SERIAL_LOADER_H

#ifndef ISA_UART_H
#error "IMPORT UART.H"
#endif

#ifndef SELF_RESET_PORT
#define SELF_RESET_PORT P1
#endif

#ifndef SELF_RESET_PIN
#define SELF_RESET_PIN  4
#endif


//// GLOBALS ///

const unsigned char SERIAL_LOADER_VERSION_INFO[]="ISA:S0:8052\n";
volatile unsigned char EEPROM_WRITE_PROTECTION=1;

//// GLOBALS ///

void SL_disable_write_protection()
{
    __xdata unsigned char* xram_addr;
    //disable write protection sequence
    xram_addr=(__xdata unsigned char*)0x1555;
    *(xram_addr) = 0xAA;
    xram_addr=(__xdata unsigned char*)0x0AAA;
    *(xram_addr) = 0x55;
    xram_addr=(__xdata unsigned char*)0x1555;
    *(xram_addr) = 0x80;

    
    xram_addr=(__xdata unsigned char*)0x1555;
    *(xram_addr) = 0xAA;
    xram_addr=(__xdata unsigned char*)0x0AAA;
    *(xram_addr) = 0x55;
    xram_addr=(__xdata unsigned char*)0x1555;
    *(xram_addr) = 0x20;

    UartWrite('D'); //ack

    EEPROM_WRITE_PROTECTION=0; //change flag
}

void SL_enable_write_protection()
{
   EEPROM_WRITE_PROTECTION=1; //change flag
   UartWrite('E'); 
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

    if(EEPROM_WRITE_PROTECTION)
    {
        //write protection sequence
        xram_addr=(__xdata unsigned char*)0x1555;
        *(xram_addr) = 0xAA;
        xram_addr=(__xdata unsigned char*)0x0AAA;
        *(xram_addr) = 0x55;
        xram_addr=(__xdata unsigned char*)0x1555;
        *(xram_addr) = 0xA0;
    }

    xram_addr = (__xdata unsigned char*) addr;

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

    xram_addr = (__xdata unsigned char*) addr;

    data = *(xram_addr); //read from xram

    UartWrite(data);
    
}


unsigned char SL_getcmd()
{
    unsigned char cmd;
    while(UartReadReady()) UartRead(); //flush 

    while(UartReadReady()==0); //wait till we rcv data 
    

    cmd = UartRead(); //read

    switch(cmd)
    {
        case 'V':
            UartPrint(SERIAL_LOADER_VERSION_INFO);
            break;
        case 'R':
            SL_read();
            break;
        case 'W':
            SL_write();
            break;
        case 'D':
            SL_disable_write_protection();
            break;
        case 'E':
            SL_enable_write_protection();
            break;
        case 'X':
            SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);
            break;
        default:
            break;
    }

    return cmd;
}





#endif
