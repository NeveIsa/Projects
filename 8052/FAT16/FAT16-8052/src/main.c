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

    
    _resp=MBR_DETECT_FAT16(); 	// _resp now contains the bit set for the partitions which have valid FAT16 ID
    				// i.e, if partition 0 and partition 3 are valid FAT16 partitions, then _resp = b00001001

    if(_resp)
    {
	
	//print partitions
        for(uint8_t i=0;i<4;i++)
        {
            UartPrint("\nPtn. ");UartWriteNumber(i,HEX);UartWrite('> ');
            if(_resp & 1<<i) UartPrint("FAT16");
            else UartPrint("Unknown");
        }

        
	//check if _resp is power of two - if it is, then we have only one valid FAT16 partition,
        // hence load that FAT16 partition without asking the user to select
        if( (_resp & (_resp-1)) == 0)
        {
            for(uint8_t i=0;i<4;i++)
            {
                if(_resp & 1<<i) 
                {	
		    _temp=i; // select the i-th partition
                    break; //break from for loop
                }
            }
        }
	// else if more than one partition detected, ask the user to selec the partition
        else
        {
            UartPrint("Slct Ptn. >\n");
            _temp=UartScanByte();
	}

	//mount selected
        if( _temp<4 && (_resp & (1<<_temp)) )
        {
            UartPrint("\n\nPtn. Mounted:");UartWriteNumber(_temp,HEX);
            UartWrite('\n');
            VBR_MOUNT_VBR(_temp);
        }
        else
        {
            UartPrint("\nBad Ptn.\n");
            UartPrint(HALTING_MSG); while(1);
        }
        
    }
    else
    {
        UartPrint("No FAT16 Ptn.\n");
        UartPrint(HALTING_MSG); while(1);

    }
}

uint8_t SelectFileAndFileOpen() __reentrant
{
    unsigned char _result;
    FAT16_ROOTENTRY_SCAN_RESET();
    UartPrint("\nINDEX\t\tFILE\n");

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

    UartPrint("\nSlct index >\n");
    _result=UartScanByte();

    //check if _result is 0 i.e file is valid after loading.
    _result=FAT16_ROOTENTRY_READ(_result); //load the selected
    if(_result!=0) UartPrint("\nInvalid Entry !\n");
    return _result;

}
//////////////////////// HELPERS /////////////////////////


/////////////////////// SOME OTHER FUNCTIONS //////////////////



/////////////////////// SOME OTHER FUNCTIONS //////////////////

 
void main(void)
{
    //"FW.BIN" -> all caps, fw.bin should work but didnt , most likely stack overflow
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

    //print welcome message
    UartPrint("\nSYAMPUTER:V0\n");
    
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
    else 
    {
	    //while SelectFileAndFileOpen not return a valid file i.e 0, keep calling the same 
	    do{}
	    while(SelectFileAndFileOpen());
    }
    
     while(1)
    {
        xram_addr=(__xdata unsigned char*)(uint16_t)__global_rootEntry.bytes_read;        
        _resp=FAT16_FILE_READ(FILE_BUFF_SIZE,buff);
        if(_resp==0) 
	{
		UartPrint("\n<RUN>\n");
		break;
	}
        for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
        { 

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
		//UartPrintNumber((uint16_t)xram_addr+i);
                while(1);
            }
        }  
	
	//print the number of bytes written and verified
	//print only once in 64 bytes so as to save time spent in UART write
	if(__global_rootEntry.bytes_read % 64 == 0)
	{
	    //UartWrite('\r');
    	    UartPrintNumber(__global_rootEntry.bytes_read);
    	    UartWrite('/');
    	    UartPrintNumber(__global_rootEntry.size);
    	    UartWrite('\r');
	}
    }

    //SELF RESET
    SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);

    //wait forever
    while(1);    
    
}
 
