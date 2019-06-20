#include <8052.h>


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long uint32_t;

//#define SD_DEBUG      1
//#define FAT_DEBUG     1
//#define FILE_DEBUG	1

#include "uart.h"
#include "spi.h"
#include "sdcard.h"
#include "fat.h"
#include "serialloader.h"

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
                UartWrite('\n');
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

void SelectFileAndFileOpen() __reentrant
{
    unsigned char _result;
    FAT16_ROOTENTRY_SCAN_RESET();
    UartPrint("ROOTE_INDEX\tFILE\n\n");

    //scan only upto 254 files
    for(uint8_t i=0;i<255;i++) 
    {
        _result = FAT16_ROOTENTRY_SCAN();
        if(_result==0xff) break; //end of scan
        else if (_result==0) //valid file
        {
            UartWriteNumber(__global_rootEntry.entry_index,DEC); //print root entry index
            UartWrite('\t');
            UartWrite('\t');
            for(uint8_t j=0;j<11;j++)UartWrite(__global_rootEntry.name[j]); //print name
            UartWrite('\n');
        }
    }

    UartPrint("Select ROOTE Index >\n");
    _result=UartScanByte();
    FAT16_ROOTENTRY_READ(_result); //load the selected
}


//////////////////////// HELPERS /////////////////////////


/////////////////////// SOME OTHER FUNCTIONS //////////////////
void setup()
{
    UartBegin();
    spi_init(); 
    SDinit();
}


/////////////////////// SOME OTHER FUNCTIONS //////////////////

 
void main(void)
{
    #define FILE_BUFF_SIZE 16 //has to be power of 2 
    uint8_t buff[FILE_BUFF_SIZE];

    uint8_t _resp=0,_cmd=0;
    
    __xdata unsigned char* xram_addr;

    //unsigned char fname[11]="build.bin";

    setup(); //setup peripherals
    while(UartReadReady())UartRead(); //flush

    while(1)
    {
        _cmd=UartRead();
        switch (_resp)
        {
            case 'F':
                
            case 'S':
                while(SL_getcmd()); //break when command is 0
                break; //run serialloader
            case 'V':
                UartPrint("ISA-FAT16+SERIAL-LOADER: V1.0\n");
                break; //print version
            default:
                break; 
        }   
    }

    SelectFAT16PartitionPrompt();
    //VBR_DUMP();

    SelectFileAndFileOpen();
    //FAT16_FILE_OPEN(fname); //SelectFileAndFileOpen already opens the file by loading __global_rootEntry

    while(1)
    {
        xram_addr=(__xdata unsigned char*)(uint16_t)__global_rootEntry.bytes_read;        
        _resp=FAT16_FILE_READ(FILE_BUFF_SIZE,buff);
        if(_resp==0) break;
        for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
        { 
            UartPrintNumber(__global_rootEntry.bytes_read);
            UartWrite('/');
            UartPrintNumber(__global_rootEntry.size);
            UartPrint("\r");
            //UartWrite(buff[i]);
            *(xram_addr+i) = buff[i];
            if(buff[i]!=*(xram_addr+i)) 
            {
                UartWrite('E');
                while(1);
            }

        }
        
    }


    //FAT16_FILE_CAT(fname);
    

    
    
    while(1);        

    
}
 
