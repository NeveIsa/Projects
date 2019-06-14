#include <8052.h>


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long uint32_t;

#include "uart.h"
#include "spi.h"
#include "sdcard.h"
#include "fat.h"

//////////////////////// HELPERS /////////////////////////

void delay(void) __reentrant
{
    uint8_t i,j;
    for(i=0;i<127;i++)
         for(j=0;j<127;j++);
}

void SelectFAT16PartitionPrompt() __reentrant
{
    uint8_t _resp=0,_temp=0;
    static const uint8_t HALTING_MSG[] = "HALTING...";

    if(MBR_CHECK__SIGNATURE())
    {
        //error - MBR signature not found
        UartPrint("ERROR:NO MBR FOUND\n");
    }

    
    _resp=MBR_DETECT_FAT16();
    if(_resp)
    {
        //check if _resp is power of two - if it is, then we have only one valid FAT16 partition,
        // hence load that FAT16 partition without asking the user to select
        if( (_resp & (_resp-1)) == 0)
        {
            for(uint8_t i=0;i<4;i++)
            {
                if(_resp & 1<<i) 
                {
                    VBR_MOUNT_VBR(i);
                    UartPrint("Partition Mounted:");UartWriteNumber(i,HEX);
                    if(VBR_FAT16_CHECK_COMPATIBILITY(i))
                    {
                        UartPrint("Incompatible FAT16\n");
                        UartPrint(HALTING_MSG); while(1);
                    }
                    break; //break from for loop
                }
            }
        }
        else
        {
            for(uint8_t i=0;i<4;i++)
            {
                UartPrint("Partition-");UartWriteNumber(i,HEX);UartWrite('> ');
                if(_resp & 1<<i) UartPrint("FAT16\n");
                else UartPrint("Unknown\n");
            }

            UartPrint("\nSelect FAT16 Partition->\n");
            _temp=UartScanByte();
            if( _temp<4 && (_resp & (1<<_temp)) )
            {
                UartPrint("Partition Mounted:");UartWriteNumber(_temp,HEX);
                VBR_MOUNT_VBR(_temp);
            }
            else
            {
                UartPrint("Invalid selection.\n");
                UartPrint(HALTING_MSG); while(1);

            }
            
        }
    }
    else
    {
        UartPrint("No FAT16 Partition.\n");
        UartPrint(HALTING_MSG); while(1);

    }
}




//////////////////////// HELPERS /////////////////////////

 
void main(void)
{
    
    uint8_t _resp=0,_temp=0;
    unsigned char fname[11]="hello.txt";
    uint8_t buff[8];


    UartBegin();
    spi_init(); 
    SDinit();

    SelectFAT16PartitionPrompt();
    //VBR_DUMP();

    FAT16_FILE_OPEN(fname);
    while(1)
    {
        _resp=FAT16_FILE_READ(8,buff);
        if(_resp==0) break;

        for(uint8_t i=0;i<8;i++) UartWrite(buff[i]);
        
    }


    //FAT16_FILE_CAT(fname);
    

    
    
    while(1);        

    
}
 
