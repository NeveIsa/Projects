/*

This library doesn't support the super floppy type formating, 
i.e using the disk without MBR at secotr zero but the FAT VBR in sector 0.

This library needs the MBR

*/


//#define FAT_DEBUG 1
//#define FILE_DEBUG	1

#define FAT16_PARTITION_TYPE_ID 0x06

#define FAT16_ROOTENTRY_AVAILABLE	0x00
#define FAT16_ROOTENTRY_DELETED		0xE5

// there are two dot entries,  
//if the filename is . - it is the entry for the same directory
//if the filename is .. - it is the entry for the parent directory (root directory doesn't have this)
#define FAT16_ROOTENTRY_DOT			'.' 

#define FILETYPE_NOFILE			255
#define FILETYPE_EMPTYFILE		254
#define FILETYPE_HIDDEN			1
#define FILETYPE_SYSTEM			2
#define FILETYPE_VOLUME			3
#define FILETYPE_DIRECTORY		4



typedef struct MBRPartitionEntry
{
	uint8_t type;
	uint32_t start;
	uint32_t size;
}MBRPartitionEntry;


typedef struct VBR
{
	uint32_t volumeStartSector; //volumes 1st sector
	uint16_t reservedSectors;
	uint16_t bps;  //bytes per sector
	uint8_t spc;  // sectors per cluster
	
	uint16_t nfat; //no. of fat tables
	uint16_t spf;  //sectors per fat
	
	uint16_t nroote; //no. of root entries


	//calculated fields
	uint32_t bpc;					//bytes for cluster
	uint32_t addr_fat_start;		//start sector of fat1
	uint32_t addr_roote_start;		//start sector of rootentry
	uint32_t addr_data_start;		//start sector of data
	
}VBR;


typedef struct ROOTENTRY
{
	//https://en.wikipedia.org/wiki/Design_of_the_FAT_file_system#Directory_table

	char name[8];
	char extension[3];
	uint8_t attributes;
	uint16_t startCluster;
	uint32_t size;

	//extra parameters for internal library use
	uint16_t entry_index; // index of the rootentry in the rootentry list
	uint32_t bytes_read;  // bytes read by FAT16_FILE_READ function till the last call

	
}ROOTENTRY;




///////////////////////////////////// HELPERS ///////////////////////////////

uint16_t HELPER_load_littleendian16(uint8_t *src) __reentrant
{
		uint16_t val=0;

		val = *(src+1);
		val <<= 8;
		val |= *src;

		return val;
}

uint32_t HELPER_load_littleendian32(uint8_t *src) __reentrant
{
		uint32_t val=0;

		for(uint8_t i=0;i<4;i++)
		{
			val <<= 8;
			val |= src[3-i];
		}

		return val;
}

uint8_t HELPER_strcmp(char *s1,char* s2)
{
	uint8_t i=0;
	while(1)
	{
		if(s1[i]==s2[i]);
		else return 1;

		if(s1[i]==0) return 0;
		i++;
	}
}

uint8_t HELPER_strncmp(char *s1,char* s2,uint8_t n)
{
	uint8_t i=0;
	while(1)
	{
		if(i==n) return 0; //done - successful

		if(s1[i]==s2[i]);
		else return 1;

		if(s1[i]==0) return 0; //if string length < n, return success as well as we donot want to compare more
		i++;
	}
}

uint8_t HELPER_strlen(char *s)
{
	for(uint8_t i=0;i<255;i++)
	{
		if(s[i]==0) return i;
	}

	return 255;
}

uint8_t HELPER_rootentry_type(ROOTENTRY *re)
{
	if(re->attributes & 1<<FILETYPE_HIDDEN) return FILETYPE_HIDDEN; //directory entry
	if(re->attributes & 1<<FILETYPE_SYSTEM) return FILETYPE_SYSTEM; //directory entry
	if(re->attributes & 1<<FILETYPE_VOLUME) return FILETYPE_VOLUME; //directory entry

	if(re->startCluster==0) return FILETYPE_NOFILE; //no file
	else if(re->size==0) return FILETYPE_EMPTYFILE; //empty file
	else return 0; // valid non-empty file

}




void HELPER_to_uppercase(unsigned char *s)
{
	for(uint8_t i=0;i<255;i++)
	{
		if(s[i]==0) return; //done
		if('a'<=s[i] && s[i]<='z') s[i] = s[i] - 32;
	}
}


uint8_t HELPER_filename_to_8dot3filename( char *fname,  char *fname83)
{
	uint8_t index=0;

	//make to uppercase
	HELPER_to_uppercase(fname);

	#ifdef FILE_DEBUG
	UartPrint("normal filename: ");
	UartPrint(fname);
	UartWrite('\n');
	#endif

	for(uint8_t i=0;i<11;i++) fname83[i]=' '; //default fill by empty space
	fname83[11]=0; //set last character as 0;

	
	for(index=0;index<9;index++)
	{

		if(index==8 && fname[index]!='.') 
		{
			#ifdef FILE_DEBUG
			UartPrint("ERROR: filename has >8 chars.\n");
			#endif
			return 1; //error - invalid filename as dot not found till 9th charcter
		}
		
		if(fname[index]==0) return 0; // success - we reached the end of the filename string before the dot character - filename has no extension
		else if(fname[index]=='.') break; //found the dot, break the for loop
		else fname83[index]=fname[index];
	}

	for(uint8_t i=0;i<4;i++)
	{
		if(i==3 && fname[index+i+1]!=0) 
		{
			#ifdef FILE_DEBUG
			UartPrint("ERROR: fileextension has >3 chars.\n");
			#endif
			return 2; // error - extension has more than 3 characters
		}
		
		//note -  at this point, fname[index]=='.'
		if(fname[index+i+1]==0) 
		{
			//success, we reached the end of the filename and there is no extension - even if there is a dot as the last character
			#ifdef FILE_DEBUG
			UartPrint("8.3 filename: ");
			UartPrint(fname83); 
			UartWrite('\n');
			#endif

			return 0; 
		}
		else fname83[8+i]=fname[index+i+1]; // in a valid fname, there is just an extra dot in fname than in fname83
	}

	return 3;// if reached here, then it is an error
}

///////////////////////////////////// HELPERS ///////////////////////////////

////////////////////////////// GLOBALS /////////////////////////////////
__idata static MBRPartitionEntry __global_partitionTableEntry;
__idata static VBR __global_vbr;
__idata static uint8_t __global_nthPartitionVBRmounted=255; //mounted if value is 0-3 for the 4 partitions,else not mounted
__idata static ROOTENTRY __global_rootEntry;
////////////////////////////// GLOBALS /////////////////////////////////


////////////////////////////// MBR methods /////////////////////////////////

uint8_t MBR_CHECK__SIGNATURE() __reentrant
{
	uint8_t signature[2];
	SDread(0,510,2,signature);

	#ifdef FAT_DEBUG
	UartPrint("\nMBR-SIG:");
	UartWriteNumber(signature[0],HEX);
	UartWriteNumber(signature[1],HEX);
	UartWrite('\n');
	#endif

	if(signature[0]==0x55 && signature[1]==0xAA) return 0;
	else return 1;
}

uint8_t MBR_LOAD_PARTITION_TABLE_ENTRY(uint8_t partition_number)
{
	__idata uint8_t temp[16]; // __idata -> use the extra 128 bytes present in 8052 using Indirect addressing
	__idata uint16_t offset= 446 + partition_number*16; // get to the nth partition entry out of 0,1,2,3

	if(partition_number>4) 
	{
		#ifdef FAT_DEBUG
		UartPrint("Invalid Partition Number: ");
		UartWriteNumber(partition_number,HEX);
		UartWrite('\n');
		#endif
		return 1; //error
	}

	SDread(0,offset,16,temp);

	__global_partitionTableEntry.type = temp[4]; // type offset is 4
	__global_partitionTableEntry.start=HELPER_load_littleendian32(&temp[8]); //partition start LBA offset is 8
	__global_partitionTableEntry.size=HELPER_load_littleendian32(&temp[12]); //partiiton size offset is 12

	return 0;

}

uint8_t MBR_DETECT_FAT16()
{
	//returns the corresponding bits set if valif FAT16 (partition type 0x06) is found
	// for example, if partition 0 and 3 are valid FAT16, we return 0b00001001;
	
	uint8_t result=0;

	for(uint8_t i=0;i<4;i++) 
	{
		MBR_LOAD_PARTITION_TABLE_ENTRY(i);
		if(__global_partitionTableEntry.type==FAT16_PARTITION_TYPE_ID) result |= (1<<i); //set corresponding bit

		#ifdef FAT_DEBUG
			UartPrint("Pt:");UartWriteNumber(i,HEX);UartWrite('\n');\
			UartPrint("St:");UartPrintNumber(__global_partitionTableEntry.start);UartWrite('\n');\
			UartPrint("Sz:");UartPrintNumber(__global_partitionTableEntry.size);UartWrite('\n'); \
			UartPrint("Tp:");UartWriteNumber(__global_partitionTableEntry.type,HEX);UartWrite('\n');
		#endif
	}
	return result;
}

////////////////////////////// MBR methods /////////////////////////////////


////////////////////////////// VBR methods /////////////////////////////////

#ifdef FAT_DEBUG 
void VBR_DUMP() __reentrant
{
	UartPrint("VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start,roote_start,data_start\n"); 
	UartPrintNumber(__global_vbr.volumeStartSector);UartWrite(',');
	UartPrintNumber(__global_vbr.bps);UartWrite(',');
	UartPrintNumber(__global_vbr.spc);UartWrite(',');
	UartPrintNumber(__global_vbr.reservedSectors);UartWrite(',');
	UartPrintNumber(__global_vbr.nfat);UartWrite(',');
	UartPrintNumber(__global_vbr.nroote);UartWrite(',');
	UartPrintNumber(__global_vbr.spf);UartWrite(',');

	UartPrintNumber(__global_vbr.addr_fat_start);UartWrite(',');
	UartPrintNumber(__global_vbr.addr_roote_start);UartWrite(',');
	UartPrintNumber(__global_vbr.addr_data_start);UartWrite(',');
	UartWrite('\n');
}
#endif

uint8_t VBR_MOUNT_VBR(uint8_t partition_number)
{ 

	__idata uint8_t temp[16];

	//check if already loaded
	if(__global_nthPartitionVBRmounted == partition_number ) 
	{
		#ifdef FAT_DEBUG
		UartPrint("VBR MOUNTED ALREADY, PARTITION:");
		UartWriteNumber(partition_number,HEX);
		UartWrite('\n');
		#endif

		return 0; //return if already loaded, else continue;
	}
	else
	{
		#if FAT_DEBUG
		UartPrint("VBR MOUNTING, PARTITION:");
		UartWriteNumber(partition_number,HEX);
		UartWrite('\n');
		#endif
	}
	
	__global_nthPartitionVBRmounted=partition_number; //set global variable
	
	//load the partition entry information
	if(MBR_LOAD_PARTITION_TABLE_ENTRY(partition_number))  //if error, 0 is success
	{
		return 1; //return error
	}

	//load first 16 bytes from VBR
	SDread(__global_partitionTableEntry.start,0,16,temp);
	
	#ifdef FAT_DEBUG
	UartPrint("VBR:0-15: ");
	UartWriteNumbers(temp,16,HEX,',');
	UartWrite('\n');
	#endif
	

	__global_vbr.volumeStartSector = __global_partitionTableEntry.start;
	
	__global_vbr.bps = HELPER_load_littleendian16(&temp[0x0b]); // bps starts at offset 0x0b
	__global_vbr.spc = temp[0x0d]; //spc offset 0x0d
	__global_vbr.reservedSectors = HELPER_load_littleendian16(&temp[0x0e]);
	

	//load next 16 bytes (16 to 32) from VBR
	SDread(__global_partitionTableEntry.start,16,16,temp);
	
	#ifdef FAT_DEBUG
	UartPrint("VBR:16-32: ");
	UartWriteNumbers(temp,16,HEX,',');
	UartWrite('\n');
	#endif


	__global_vbr.nfat = HELPER_load_littleendian16(&temp[0x10-16]); //offset of nfat is 0x01, but we subtract 16 as we have read from 16 offset in SDread
	__global_vbr.nroote = HELPER_load_littleendian16(&temp[0x11-16]); //offset of number_root_entrie is 0x11
	__global_vbr.spf = HELPER_load_littleendian16(&temp[0x16-16]); //offset of sectors_per_fat is 0x16

	//calculated fields
	//  | VBR | ReservedSectors | n FAT Tables | n ROOT Entries | DATA | 

	///explicit typecast needed as multiplication has lower precedence than implicit assignment typecasting 
	// hence without explicit typecasting, multiplication will occur and then the right hand side value will
	// be typecasted to the lefthand side variable's type before assignment provided the left hand
	// side variable has a higher rank than the rank of the righthand side result type(implicit) just after multiplication
	__global_vbr.bpc =  (uint32_t)__global_vbr.bps * (uint32_t)__global_vbr.spc; 

	
	__global_vbr.addr_fat_start = __global_vbr.volumeStartSector + __global_vbr.reservedSectors;
	__global_vbr.addr_roote_start = __global_vbr.addr_fat_start + __global_vbr.nfat * __global_vbr.spf;
	__global_vbr.addr_data_start = __global_vbr.addr_roote_start + (__global_vbr.nroote*32)/__global_vbr.bps;



	#ifdef FAT_DEBUG
		VBR_DUMP();
	#endif

	return 0;

}

uint8_t VBR_FAT16_CHECK_COMPATIBILITY(uint8_t partition_number)
{
	/*
		Check the VBR of the FAT16 is compatible with the library or not. If not, safely deny to proceed.
	*/

	if(VBR_MOUNT_VBR(partition_number))
	{
		return 1; //error
	}

	if(__global_vbr.bps!=SD_BLOCK_SIZE) 
	{
		#ifdef FAT_DEBUG
		UartPrint("Error: BPS!=512 ! \n");
		#endif
		return 2; //error - not supported fat16
	}

	return 0;
}


void FAT16_ROOTENTRY_DUMP()
{
	UartPrint("\nROOT_ENTRY_INDEX:");
	UartPrintNumber(__global_rootEntry.entry_index);
	UartPrint("\nFILE: ");
	for(uint8_t i=0;i<8;i++)UartWrite(__global_rootEntry.name[i]);
	for(uint8_t i=0;i<3;i++)UartWrite(__global_rootEntry.extension[i]);
	UartPrint("\nSTART: ");
	UartPrintNumber(__global_rootEntry.startCluster);
	UartPrint("\nSIZE: ");
	UartPrintNumber(__global_rootEntry.size);			
	UartPrint("\nATTR: 0x");
	UartWriteNumber(__global_rootEntry.attributes,HEX);			
	UartWrite('\n\n');
}



////////////////////////////// VBR methods /////////////////////////////////


////////////////////////////// FAT16_methods /////////////////////////////////


uint8_t FAT16_LOAD_ROOTENTRY(uint16_t roote_number)
{
	__idata uint8_t temp[32];

	//start of root entries
	__idata uint32_t sector_of_given_roote;
	__idata uint16_t offset_in_this_sector;


	if(roote_number < __global_vbr.nroote);//pass
	else return 1; // error as roote_number is more than number of root entries present in rootentry table 

	VBR_MOUNT_VBR(__global_nthPartitionVBRmounted);

	//calculate the sector number and offset for the given root entry
	sector_of_given_roote = __global_vbr.addr_roote_start + (roote_number*32)/__global_vbr.bps;
	offset_in_this_sector = (roote_number*32)%__global_vbr.bps;

	SDread(sector_of_given_roote,offset_in_this_sector,32,temp);

	__global_rootEntry.entry_index = roote_number; //save the index of the root_entry
	__global_rootEntry.bytes_read = 0; //no bytes has been read so far by FAT16_FILE_READ as we have just loaded the rootentry

	for(uint8_t i=0;i<8;i++) __global_rootEntry.name[i] = temp[i];
	for(uint8_t i=8;i<11;i++) __global_rootEntry.extension[i-8] = temp[i];

	__global_rootEntry.attributes = temp[0x0b];
	__global_rootEntry.startCluster = HELPER_load_littleendian16(&temp[0x1a]);
	__global_rootEntry.size = HELPER_load_littleendian32(&temp[0x1c]);

	return 0;
}
uint8_t FAT16_IS_ROOTENTRY_VALID_FILE()
{
		
		if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_AVAILABLE)
		{
			#ifdef FILE_DEBUG
			UartPrint("FAT16_ROOTENTRY_AVAILABLE\n");
			#endif
			return 255; //no more entries, stop scanning
		}
		else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DELETED)
		{
			#ifdef FILE_DEBUG
			UartPrint("FAT16_ROOTENTRY_DELETED\n");
			#endif

			return FAT16_ROOTENTRY_DELETED; //deleted and available
		}
		else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DOT)
		{
			#ifdef FILE_DEBUG
			UartPrint("FAT16_ROOTENTRY_DOT\n");
			#endif
			return FAT16_ROOTENTRY_DOT; //this is the entry to self
		}

		//skip FILETYPE_HIDDEN,FILETYPE_SYSTEM,FILETYPE_VOLUME types
		else if(
				HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_HIDDEN ||
				HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_SYSTEM ||
				HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_VOLUME
			) 
			{
				#ifdef FILE_DEBUG
				UartPrint("FILETYPE: HIDDEN | SYSTEM | VOLUME\n");
				#endif

				return 254;
			}

		return 0;
}


uint8_t FAT16_ROOTENTRY_READ(uint16_t roote_index)
{
	// return values -
	// 255 - end of scan
	// 1 -  invalid file in this roote_index, ignore this index
	// 0 - success, check __global_rootEntry for the file details

	uint8_t file_validity;
	
	//load roote_index-th rootentry and also check if we reached end of the rootentry table
	if(FAT16_LOAD_ROOTENTRY(roote_index)) // if returns 1, then we have reached the end of the rootentry table
	{
		return 0xff; //end of scan
	}


	file_validity=FAT16_IS_ROOTENTRY_VALID_FILE(); //check validity

	if(file_validity==255)return 0xff; //end of scan
	else if(file_validity==0)
	{
			#ifdef FILE_DEBUG
				FAT16_ROOTENTRY_DUMP();
			#endif

			return 0;
	}
	
	return 1; //invalid file if context reaches here
	
	
}

void FAT16_ROOTENTRY_SCAN_RESET()
{
	__global_rootEntry.entry_index=0xffff; // in FAT16, maximum number of root entries can never reach 0xffff.
	//we are using 0xffff so that when the FAT16_ROOTENTRY_SCAN is called, it increments the entry_index by one, it turns to 0

	//invalidate the current __global_rootEntry by setting FILETYPE_SYSTEM flag in attributes variable
	//this is sone so that if anyone tries to access the __global_rootEntry after calling 
	// FAT16_ROOTENTRY_SCAN_RESET but before FAT16_ROOTENTRY_SCAN, he finds the file invalid
	__global_rootEntry.attributes |= 1<<FILETYPE_SYSTEM;
}

uint8_t FAT16_ROOTENTRY_SCAN() __reentrant
{
	// go to the  start_from of the rootentry by setting roote_index
	uint8_t validity;
	
	while(1)
        {
			#if FILE_DEBUG
				UartPrint("ROOTENTRY_SCAN_INDEX:");
            			UartPrintNumber(__global_rootEntry.entry_index+1);
				UartWrite('\n');
			#endif

            validity=FAT16_ROOTENTRY_READ(__global_rootEntry.entry_index+1); //read the next entry

            if ( validity == 255 )
			{
				#if FILE_DEBUG
				UartPrint("END_OF_SCAN\n\n");
				#endif

				return 255; //end scan
			} 
            else if (validity == 1) 
			{
				#if FILE_DEBUG
				UartPrint("INVALID_FILE\n\n");
				#endif

				continue; //continue as its an invalid file
			}
            else if(validity == 0)
            {
				
				#if FILE_DEBUG
				UartPrint("VALID_FILE\n\n");
				#endif

				return 0; // found a valid file,break out of the loop
            }
        }

		//return 1; //execution context must not reach here, error if it does.

	
}

uint8_t FAT16_FILE_OPEN(char *filename) __reentrant
{
	//pass name is normal(human readable) format - eg: abc.txt

	char filename83[12]; //8.3 name is 11 characters but we need the extra terminating null to make it a proper string

	if(HELPER_filename_to_8dot3filename(filename,filename83)) 
	{
		#ifdef FILE_DEBUG
			UartPrint("INVALID_8.3_FILENAME\n");
		#endif
		return 1; //invalid filename
	}

	FAT16_ROOTENTRY_SCAN_RESET();
    while(FAT16_ROOTENTRY_SCAN()==0)
	{
		if( HELPER_strncmp(__global_rootEntry.name,filename83,8)==0 && 
			HELPER_strncmp(__global_rootEntry.extension,&filename83[8],3)==0 )
			{
				#ifdef FILE_DEBUG
				UartPrint("FILE OPENED\n");
				#endif

				return 0; //file found
			}
	}

	#ifdef FILE_DEBUG
	UartPrint("FILE NOT FOUND\n");
	#endif
	return 2; // file not found

}


uint16_t FAT16_GET_NEXT_CLUSTER(uint16_t current_cluster) __reentrant
{
	//uint32_t sector_addr = __global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps;
	//uint16_t offset = (current_cluster*2) % __global_vbr.bps;
	
	uint8_t temp[2];

	//SDread(sector_addr, offset, 2, temp);
	
	SDread(__global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps, (current_cluster*2) % __global_vbr.bps, 2, temp);
	return (uint16_t)temp[1] << 8 | temp[0]; 

	//could have called this Helper function but we were running out of stack, hence did not call this function
	//return HELPER_load_littleendian16(temp);  

	
}

// without reentrant specifier, the code behaves unexpectedly. 
// Something to do with the call stack overflow and the SDCC compiler.
// Refer to SDCC compiler manual - 
// just figured out __reentrant keyword without the __idata specifier for local variables
// this is because by default the local variables are made static by SDCC and hence they 
// permanently take up RAM even when a function is not being called.

/*
Exerpt from the SDCC Manual

3.6 Parameters and Local Variables

Automatic  (local)  variables  and  parameters  to  functions  are  placed  on  the  stack  for
most  targets.ForMCS51/DS390/HC08/S08  they  can  either  be  placed  on  the  stack  or  in  data-space.
The  default  action  of  the compiler is to place these variables in the internal RAM (for small model)
 or external RAM (for medium or largemodel). 
 This in fact makes them similar to static so by default functions are non-reentrant.
*/

uint8_t FAT16_FILE_READ(uint8_t nbytes, uint8_t *dst) __reentrant
{

	 uint16_t current_cluster,bytes_read_in_current_cluster,bytes_read_in_current_sector;
	 uint32_t current_sector;

	__code static uint8_t power2error[27] = "nbytes must be power of 2\n";

	//can read only in powers of 2, check if power of two - this makes the problem so simple
	if(nbytes==0)
	{
		return 0; //read 0 bytes
	}

	if(nbytes & (nbytes-1))
	{
		#ifdef FILE_DEBUG
		UartPrint(power2error);
		#endif
		return 255; //error
	} 
	
	if(__global_rootEntry.bytes_read == __global_rootEntry.size)
	{
		return 0; //end of file - return number of bytes read
	}
	else
	{
		//bytes read already from the current cluster
		bytes_read_in_current_cluster = __global_rootEntry.bytes_read % __global_vbr.bpc;


		
		// NOTE: We are reusing the __global_rootEntry.startCluster to store the current cluster
		// WE ARE DOING THIS TO SAVE RAM/STACK space of the limited 8052 RAM of 256 bytes.
		
		// THE CONSEQUENCES - 
		// Because __global_rootEntry.startCluster (which store the current cluster to read from)is updated	
		// only when bytes_read_in_current_cluster==0, if we manually modify __global_rootEntry.bytes_read
		// before calling this FAT16_FILE_READ function so as to skip reading initial bytes, then we need to 
		// make sure that the  __global_rootEntry.bytes_read is set to a multiple of __global_vbr.bpc, 
		// i.e we can only skip/seek cluster sized bytes in the file. 

		// Manually fiddling with __global_rootEntry.bytes_read to achieve seek/skip functions are
		// left to the advanced users of this library.

		// At any rate, so far, FILE_SEEK is not supported and isn't planned to be supported as well.

		//if we have read all the bytes in the current cluster, then we must update the current cluster
		// Also we must not update to the next Cluster when we are just starting, i.e __global_rootEntry.bytes_read==0
		// because bytes_read_in_current_cluster==0 when __global_rootEntry.bytes_read==0
		// but we only want to update the next time bytes_read_in_current_cluster==0, not the first time
		// On the first time, __global_rootEntry.startCluster is already set to the file's first cluster
		// by the FAT16_ROOTENTRY_READ function which called by the FAT16_FILE_OPEN function


		// NOTE: We are reusing the __global_rootEntry.startCluster to store the current cluster
		// being read from in this function.
		// Hence once FAT16_FILE_READ is called, we cannot expect __global_rootEntry.startCluster to point
		// to the file's starting cluster. 
		// If we need to get the file's starting cluster, we need to reload rootEntry using FAT16_FILE_OPEN.

		// We are doing this to speed up the file read time because now we do not need to start from the 
		// file's start cluster and follow the linked list in the FAT16 table to get to the current cluster
		// being read from the __global_rootEntry.bytes_read field each time FAT16_FILE_READ function is called.
		// Each call to the FAT16_GET_NEXT_CLUSTER causes one sector read of the SD card and hence if we need to 
		// get to the current cluster which requires say, 10 follow ups from the startingCluster of the files,
		// then we will be doing 10*sectorSize reads on the SD card each time this function is called.
		// Hence as we move further in the file read, i.e as __global_rootEntry.bytes_read increases and as we need to
		// skip more clusters to get to the current one, the FAT16_FILE_READ will start to slow down
		// Hence the FAT16_FILE_READ function takes much longer time to read the end of a big file than while
		// reading the begining of the file. This behavior is not good for a file read routine.

		if(__global_rootEntry.bytes_read!=0 && bytes_read_in_current_cluster==0)
		{
			__global_rootEntry.startCluster = FAT16_GET_NEXT_CLUSTER(__global_rootEntry.startCluster);
		}

		// initialise current cluster as start of the file cluster or the current Cluster being read
		current_cluster = __global_rootEntry.startCluster;

		
		//calculte the current sector
		//NOTE: IN FAT, the first cluster in the data region is numbered 2, hence we subtract 2 from current_cluster
		current_sector =    __global_vbr.addr_data_start 						//start of data
							+ (current_cluster-2) * __global_vbr.spc 				//skip to the start of current cluster
							+ bytes_read_in_current_cluster/__global_vbr.bps;	//skip sectors already read in current cluster

		
		bytes_read_in_current_sector = bytes_read_in_current_cluster % __global_vbr.bps;


		//check we dont overshoot the filesize
		if(__global_rootEntry.bytes_read + nbytes > __global_rootEntry.size )
		{
			nbytes = __global_rootEntry.size - __global_rootEntry.bytes_read;//;
		}
		
		#ifdef FILE_DEBUG
		//UartPrint("FSIZE:");UartPrintNumber(__global_rootEntry.size);
		UartPrint("| BYTES_READ:");UartPrintNumber(__global_rootEntry.bytes_read);UartWrite('\n');

		/*UartPrint("CLUSTER:");UartPrintNumber(current_cluster);
		UartPrint("| BYTES_ALREADY_READ:");UartPrintNumber(bytes_read_in_current_cluster);UartWrite('\n');

		UartPrint("SECTOR:");UartPrintNumber(current_sector);
		UartPrint("| BYTES_ALREADY_READ:");UartPrintNumber(bytes_read_in_current_sector);UartWrite('\n');
		
		UartPrint("READING_NBYTES:");UartWriteNumber(nbytes,DEC);UartWrite('\n');*/
		
		#endif


		//update the bytes_read
		__global_rootEntry.bytes_read += nbytes;

		//read the current sector and skip(offset) the bytes_read_in_current_sector
		SDread(current_sector,bytes_read_in_current_sector,nbytes,dst);
		
	}
	

	return nbytes;
		
}

void FAT16_FILE_CAT(uint8_t *filename) __reentrant
{
	#define FILE_CAT_BUFFER_SIZE 8 //has to be power of 2

	uint8_t temp[FILE_CAT_BUFFER_SIZE];
	uint8_t resp=0;

	if(FAT16_FILE_OPEN(filename))
	{
		UartPrint("FILE NOT FOUND\n.");
		return;
	}

	do
	{
		resp=FAT16_FILE_READ(FILE_CAT_BUFFER_SIZE,temp);
		for(uint8_t i=0;i<resp;i++) UartWrite(temp[i]);
		//UartWriteNumber(resp,HEX);
	
	} while (resp!=0);

	return;
	
}

////////////////////////////// FAT16_methods /////////////////////////////////


