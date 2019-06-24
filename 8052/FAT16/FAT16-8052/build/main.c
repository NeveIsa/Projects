#include <8052.h>


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long uint32_t;

//#define SD_DEBUG      1
//#define FAT_DEBUG     1
//#define FILE_DEBUG	1

// SELF RESET PIN DEF
#ifndef SELF_RESET_PORT
#define SELF_RESET_PORT P1
#endif

#ifndef SELF_RESET_PIN
#define SELF_RESET_PIN  4
#endif
// SELF RESET PIN DEF


#include "uart.h"
#include "spi.h"
#include "sdcard.h"
#include "fat.h"
#include "serialloader.h"

//////////////////////// HELPERS /////////////////////////

void SelectFAT16PartitionPrompt() __reentrant
{
    uint8_t _resp=0,_temp=0;
    static const uint8_t HALTING_MSG[] = "HALT!";

    if(MBR_CHECK__SIGNATURE())
    {
        //error - MBR signature not found
        UartPrint("BAD MBR!\n");
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
                    UartPrint("Ptn. Mounted:");UartWriteNumber(i,HEX);
                    if(VBR_FAT16_CHECK_COMPATIBILITY(i))
                    {
                        UartPrint("Incmpat. FAT16\n");
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
                UartPrint("Ptn. ");UartWriteNumber(i,HEX);UartWrite('> ');
                if(_resp & 1<<i) UartPrint("FAT16\n");
                else UartPrint("Unknown\n");
            }

            UartPrint("\nSlct Ptn. >\n");
            _temp=UartScanByte();
            if( _temp<4 && (_resp & (1<<_temp)) )
            {
                UartPrint("Ptn. Mounted:");UartWriteNumber(_temp,HEX);
                UartWrite('\n');
                VBR_MOUNT_VBR(_temp);
            }
            else
            {
                UartPrint("Bad Ptn.\n");
                UartPrint(HALTING_MSG); while(1);

            }
            
        }
    }
    else
    {
        UartPrint("No FAT16 Ptn.\n");
        UartPrint(HALTING_MSG); while(1);

    }
}

void SelectFileAndFileOpen() __reentrant
{
    unsigned char _result;
    FAT16_ROOTENTRY_SCAN_RESET();
    UartPrint("INDEX\t\tFILE\n\n");

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

    UartPrint("Slct index >\n");
    _result=UartScanByte();
    FAT16_ROOTENTRY_READ(_result); //load the selected
}
//////////////////////// HELPERS /////////////////////////


/////////////////////// SOME OTHER FUNCTIONS //////////////////



/////////////////////// SOME OTHER FUNCTIONS //////////////////

 
void main(void)
{
    //"FW.BIN" -> all caps, fw.bin should work but didnt , mostlikely stack overflow
    #define DEFAULT_LOAD_FILENAME "FW.BIN"
    #define FILE_BUFF_SIZE 16 //has to be power of 2 

    //reusing buff to also hold the filename of default binary to load 
    uint8_t buff[FILE_BUFF_SIZE];

    uint8_t _resp=0;
    
    __xdata unsigned char* xram_addr;

    //unsigned char fname[11]="build.bin";

    //setup peripherals
    UartBegin();
    spi_init(); 
    SDinit();
    //setup peripherals

    
    while(UartReadReady())UartRead(); //flush
  
    //wait for 3 seconds to check if ISA_SERIAL_LOADER_CLIENT is asking 
    // for version info by 'V' command
    //each for loop takes ~5 machine cycles @ 1MHz
     for(unsigned int _t=0;_t<65000;_t++)
    {
        if(UartReadReady())
        {
            _resp=UartRead();
            break;
        }
	for(uint8_t wastetime=0;wastetime<3;wastetime++);
    }
    
    

    switch (_resp)
    {
        case 'V':
            UartPrint("ISA:FS0:8052\n");
            while(SL_getcmd()); //break when command is 0
            break; //print version
        default:
            break;
    }


    ///////////////////////// RUN FAT16 LOADER /////////////////////////

    SelectFAT16PartitionPrompt();
    //VBR_DUMP();
    
    
    //FAT16_FILE_CAT(fname); // for debugging

    //open default fw.bin if present
    if(FAT16_FILE_OPEN(DEFAULT_LOAD_FILENAME)==0)
    {
        UartPrint(DEFAULT_LOAD_FILENAME);
        UartWrite('\n');
    } 
    else SelectFileAndFileOpen();
    
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
            
            //copy
            *(xram_addr+i) = buff[i];
        }

        //verify
         for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
        {
            if(buff[i]!=*(xram_addr+i)) 
            {
                UartPrint("\nVerif. fail");
                while(1);
            }
        }   
    }

    //SELF RESET
    SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);

    //wait forever
    while(1);    
    
}
 
