#include <stdio.h>

#include <string.h>

#include <inttypes.h>



uint32_t getBytes(FILE *vp , uint64_t offset ,uint8_t size)
{
    

	uint8_t p[4];

	fseek(vp,offset,SEEK_SET); //SEEK_SET set fp to begining of file

	fread(p,1,4,vp);

	uint32_t result;

	if (size==1) result =  p[0];
	else if (size==2) result =  p[0] + p[1]*256;
	else if (size==4) result =  p[0] + p[1]*256 + p[2]*256*256 + p[3]*256*256*256;

	return result;
	
}



void putBytes(FILE *vp , uint64_t offset ,uint8_t size,uint32_t payload)
{

	uint8_t p[4];

	fseek(vp,offset,SEEK_SET); //SEEK_SET set fp to begining of file

	p[0] = payload & 0xff;
        payload >>=8;
        p[1] = payload & 0xff;
        payload >>=8;
        p[2] = payload & 0xff;
        payload >>=8;
        p[3] = payload & 0xff;


	
        fwrite(p,1,size,vp);
}





void ISA_strncpy(char *dest, FILE *src, uint32_t offset, uint8_t length)
{

	fseek(src,offset,SEEK_SET);
	fread(dest,1,length,src);
}

void ISA_strnput(FILE *dest, char* src, uint32_t offset, uint8_t length)
{

	fseek(dest,offset,SEEK_SET);
	fwrite(src,1,length,dest);
}



int8_t ISA_strcmp(char *p , char *q)
{
	int8_t diff = strlen(p)-strlen(q); 
	if(diff) return diff;

	uint8_t len = strlen(p);

	uint8_t i;

	for(i=0;i<len;i++)
	{
		if(p[i]!=q[i]) break;
	}

	if (i==len) return 0;
	else return -1;

}


char chr2Upper(char x)
{
	if('a' <= x && x <= 'z') x = x - 32;

	return x;
}

void get83name(char *fname, char *f83name)
{
	uint8_t dotpos;

	// eg: fname = "12345aBc.txt" -- total 12
	// eg: f83name = "12345ABCTXT" -- total 11

	uint8_t fnamelen = strlen(fname);

	for(dotpos=0;dotpos<fnamelen;dotpos++)
	{
		if(fname[dotpos]=='.') break;
	}



	if (dotpos<8)
	{
		for(uint8_t j=0;j<dotpos;j++)
		{
			f83name[j]=chr2Upper(fname[j]);
		}
		for(uint8_t j=dotpos;j<8;j++)
		{
			f83name[j]=' ';
		}


		if(dotpos==fnamelen)
		{
			f83name[8] = ' ';
			f83name[9] = ' ';
			f83name[10] = ' ';

		}
		else
		{
			for(uint8_t j=0;j<3;j++) f83name[j+8] = chr2Upper(fname[dotpos + j + 1]);
		}
	}

	else
	{
		if (fnamelen>8) fnamelen =8;

		for(uint8_t j=0;j<fnamelen;j++)
		{
			f83name[j] = chr2Upper(fname[j]);
		}

		for(uint8_t j=fnamelen;j<8;j++) f83name[j] = ' ';

		f83name[8] = ' ';
		f83name[9] = ' ';
		f83name[10] = ' ';



	}
}

typedef struct MBR
{
    
    uint16_t FAT16_LBA_FIRST_SECTOR;
	
}MBR;

typedef struct VBR
{
    char OEM[8];	 			// 	3-10  	| OEM name

    uint16_t bps; 				// 	11-12 	| bytes per sector
    uint8_t spc; 				//	13-13	| sectors per cluster[1,2,4,8,16,32,64]
    uint16_t nResvSectors; 		//	14-15	| no. of resevred sectors	

    uint8_t nFAT;				// 16		| no. of FATs

    uint16_t nRootEntries;		// 17-18	| no. of root directory entries (0 for FAT32, 512 recomended for FAT16)

    uint32_t nTotalSectors;		// 19-22	| total no. of sectors in Filesystem

    uint8_t mediaDescriptor;	// 21		| f0 - floppy, f8- harddisk

    uint16_t spf;				// 22-23	| no. of sectors for FAT (0 for FAT32)





    uint32_t nHiddenSectors;	// 28-31	| no. of hidden sectors (hidden sectors are sectors preceding the partition)



    char VOLUME_LABEL[11];		//43-53

    char FILESYSTEM[8];			//54-61

    uint16_t signature;			// 510-511	| signature 0x55 0xaa

}VBR;


typedef struct VOLUME
{
	char init; // 0 - not init. yet, 1 - init. done, -1 - not FAT16

	FILE *vp ; //volume pointer
	VBR vbr;
        MBR mbr;

	int32_t VOLUMESectorStart; // LBA offset of Volume from begining of disk 

	int16_t FATSectorStart;
	int16_t ROOTSectorStart;

	int16_t DATASectorStart;


}VOLUME;


typedef struct RootEntry
{

	char fileName[12];
	uint16_t fileStartCluster;
	uint32_t fileSize;

}RootEntry;



void RootEntryParse(VOLUME *vol,RootEntry *re,uint16_t root_entry_no)
{
	uint64_t offset = vol->ROOTSectorStart * vol->vbr.bps +  32*root_entry_no;


	ISA_strncpy(re->fileName,vol->vp,offset,11);
	re->fileName[11]='\0'; //null terminate

	re->fileStartCluster = getBytes(vol->vp,offset+26,2);// buff[26] + buff[27]*256;
	re->fileSize = getBytes(vol->vp,offset+28,4); //buff[28] + buff[29]*256 + buff[30]*256*256 + buff[31]*256*256*256;
}



void MBRload(FILE *vp, VOLUME *vol)
{
    MBR *mbr = &vol->mbr;
    
    uint32_t offset = 446 + 8 ; // 1st partition at 446 and offset 8 for Logical block address LBA
    
    mbr->FAT16_LBA_FIRST_SECTOR = 0; // initally set to 0 to read MBR itself using the function getBytes
    
    uint32_t LBA = getBytes(vp,offset,4);
    
    mbr->FAT16_LBA_FIRST_SECTOR = LBA; // update LBA of 1st sector of FAT16 volume
    
    printf("%d",LBA);
    
    
}




void VBRload(FILE *vp,VOLUME *vol)
{
	// SectorZero is 512 bytes from sector zero of volume
        
        uint32_t vol_offset= 2048*512;
        
        VBR *vbr = &vol->vbr;
    
	ISA_strncpy(vbr->OEM,vp,vol_offset+3,8);

	ISA_strncpy(vbr->VOLUME_LABEL,vp,vol_offset+43,11);

	ISA_strncpy(vbr->FILESYSTEM,vp,vol_offset+54,8);


	vbr->bps = getBytes(vp,vol_offset+11,2);

	vbr->spc = getBytes(vp,vol_offset+13,1);

	
	vbr->nResvSectors = getBytes(vp,vol_offset+14,2);

	vbr->nFAT = getBytes(vp,vol_offset+16,1);


	vbr->nRootEntries = getBytes(vp,vol_offset+17,2);

 
	vbr->mediaDescriptor = getBytes(vp,vol_offset+21,1);

	vbr->spf = getBytes(vp,vol_offset+22,2);

	//FAT16 specific
	
	vbr->nTotalSectors = getBytes(vp,vol_offset+32,4);

	vbr->nHiddenSectors = getBytes(vp,vol_offset+28,4);


	vbr->signature = getBytes(vp,vol_offset+510,2);

}




void VBRinfo(VBR *vbr)
{

    printf ("OEM - %s\n",vbr->OEM);

    printf("VOLUME_LABEL - %s\n", vbr->VOLUME_LABEL);

    printf("FILESYSTEM - %s\n", vbr->FILESYSTEM );

    printf("bps - %i\n",vbr->bps);

    printf("spc - %i\n",vbr->spc);

    printf("nResvSectors - %i\n", vbr->nResvSectors);

    printf("nFAT - %i\n", vbr->nFAT);

    printf("nRootEntries- %i\n", vbr->nRootEntries);

    printf("nTotalSectors - %i\n", vbr->nTotalSectors);

    printf("mediaDescriptor - %i\n", vbr->mediaDescriptor);

    printf("spf - %i\n", vbr->spf);

    printf("nHiddenSectors - %i\n", vbr->nHiddenSectors);

    printf("signature - %i\n", vbr->signature);

}





void VOLUMEload(FILE *vp,VOLUME *vol)
{
	vol->init = 1;

	vol->vp = vp;
        
        
        MBRload(vp,vol);

	VBRload(vp,vol);

	#define  VBR_SIZE  512

	vol->VOLUMESectorStart = vol->mbr.FAT16_LBA_FIRST_SECTOR;

	vol->FATSectorStart = VBR_SIZE/vol->vbr.bps;
        vol->FATSectorStart += vol->VOLUMESectorStart;
        
	vol->ROOTSectorStart = vol->FATSectorStart + (vol->vbr.nFAT * vol->vbr.spf);
        
	vol->DATASectorStart = vol->ROOTSectorStart + (32*vol->vbr.nRootEntries)/vol->vbr.bps; // each root entry is 32 bytes
        
}



void VOLUMEinfo(VOLUME *vol)
{
	

	VBRinfo(&vol->vbr);

	

    printf("FATSectorStart - %i\n", vol->FATSectorStart);
    printf("ROOTSectorStart - %i\n", vol->ROOTSectorStart);
    printf("DATASectorStart - %i\n", vol->DATASectorStart);

}


void FILERead(VOLUME *vol, RootEntry *re, char* buff, uint32_t FILEReadOffset, uint8_t len)
{
    //printf("%i | %i\n", re->fileSize,re->fileStartCluster);


	// NOTE - FILEReadOffset and len both have to be powers of 2 (len should be les than 256 ) 

    uint16_t thisCluster = re->fileStartCluster;

    uint32_t bpc = vol->vbr.bps * vol->vbr.spc;

	uint8_t nSkipC = FILEReadOffset/bpc;

	for(uint8_t i=0; i<nSkipC; i++)
	{
		thisCluster = getBytes(vol->vp, vol->FATSectorStart * vol->vbr.bps + thisCluster*2 , 2);
	}

	//printf("\nc----------%d\n",thisCluster);

	uint32_t offset = vol->DATASectorStart * vol->vbr.bps +  (thisCluster-2) * bpc + FILEReadOffset%bpc ;

    
	ISA_strncpy(buff,vol->vp,offset,len);

	
}


void FILEReadAll(VOLUME *vol, RootEntry *re, void (*callback)(char*,uint8_t))
{
	char buff[129];
	buff[128]=0; //null terminate

	uint8_t len = 128;

	uint16_t chunks = re->fileSize / len;

	uint8_t remainder = re->fileSize % len;

	//printf("filesize %d\n",re->fileSize);

	//printf("chunks %d\n",chunks);

	for(uint16_t i=0; i<chunks ; i++)
	{
		FILERead(vol,re,buff,i*len,len);

		callback(buff,len);

	    //printf("\ni--------- %d\n",i);
	}

	
	FILERead(vol,re,buff,chunks*len,remainder);

	buff[remainder]=0; //null terminate

	callback(buff,remainder);

}




void ROOTListOne(VOLUME *vol,uint16_t rootEntryOffset,RootEntry *RElist)
{
		//uint64_t rootStart = vol->ROOTSectorStart * vol->vbr.bps;

		RootEntry re;

		RootEntryParse(vol,&re,rootEntryOffset);

		

		//printf("%s\n", re.fileName );
		//printf("%i\n",re.fileSize);
		//printf("%i\n",re.fileStartCluster);

		*RElist = re;

		//FILERead(vol,&re);

}




#define FILENAME_NOMORE_EXISTS_FLAG -27

uint16_t ROOTSearch(VOLUME *vol,RootEntry *re,char *fname)
{

	char fname83[12];
	fname83[11]='\0'; //null terminate

	get83name(fname,fname83);

	//printf("%i\n",ISA_strcmp(fname83,"HELLO   TXT"));

	//return;

        uint16_t i=0;
	for(i=2;i<vol->vbr.nRootEntries;i++) //first 2 root entries are reserved
	{
		ROOTListOne(vol,i,re);
		if(re->fileSize==0 || re->fileStartCluster==0 || re->fileName[0]== FILENAME_NOMORE_EXISTS_FLAG)continue;
		//printf("%s\n",re->fileName);
		if(ISA_strcmp(fname83,re->fileName)==0) return i;
	}

	return 0;
}


uint8_t ROOTListAll(VOLUME *vol, uint16_t *RootEntryIndex, uint8_t howMany)
{
	uint8_t count = 0;

	RootEntry re;

	for(uint16_t i=0;i<vol->vbr.nRootEntries;i++)
	{
		ROOTListOne(vol,i,&re);
		if(re.fileSize==0 || re.fileStartCluster==0 || re.fileName[0]== FILENAME_NOMORE_EXISTS_FLAG)continue;
		//printf("%s\n",re.fileName);

		RootEntryIndex[count++] = i;

		if(count==howMany) break;
	}

	return count;
}


uint16_t FindFirstFreeCluster(VOLUME *vol)
{
  for(uint16_t i=3;i<0xffff;i++) //first 2 are reserved + 1 is there for safety
  {
    uint64_t offset =  vol->FATSectorStart * vol->vbr.bps + i*2; // i*2 because each fat entry in fat table is 2 bytes 
    uint16_t fatEntry = getBytes(vol->vp,offset,2);
    if (fatEntry==0) //free cluster found
    {
      return i;
    }
  }
}

uint16_t FindFirstFreeRootEntry(VOLUME *vol)
{
    RootEntry re;
   uint16_t nroote = vol->vbr.nRootEntries;
    
    uint16_t i=0;
    
    for(i=3;i<nroote;i++) // first 2 root entries are reseved and +1 for safety
    {
        RootEntryParse(vol,&re,i);
        if (re.fileName[0]==FILENAME_NOMORE_EXISTS_FLAG || re.fileName[0]==0 || re.fileStartCluster==0)
        {
            break;
        }
    }
    
    return i;
    
}


void FileWrite(VOLUME *vol, char *fname, char * fdata, uint16_t length, uint8_t append) // append=0 for write, 1 for append
{
    
    
   	char fname83[12];
	fname83[11]='\0'; //null terminate

	get83name(fname,fname83);
    
        
        
        uint16_t freeCluster,freeRootEntry;
   
        // CHECK IF FILE ALREADY EXISTS
    
        RootEntry re;
        re.fileSize=0; // initialise file size
        
        uint16_t RootEntryIndex = ROOTSearch(vol,&re,fname);
        uint16_t totalClustersUsed=1;
        
        
       // printf("%d---\n",re.fileStartCluster);
        
        
        
        if(RootEntryIndex!=0)
        {
            freeCluster = re.fileStartCluster;
            freeRootEntry = RootEntryIndex;
            
            printf("fc %d---\n",freeCluster);
        
            
            
            while(1) //find last cluster of existing file
            {
                
                
                uint32_t linkedCluster = getBytes(vol->vp,vol->FATSectorStart * vol->vbr.bps + freeCluster * 2,2);
                
                  printf("lc %d---\n",linkedCluster);
                
                //int d=0;
                //scanf("%d",&d);
                
                
                if (linkedCluster==0xffff)
                {
                    break;
                }
                else
                {
                    freeCluster=linkedCluster;
                    
                    totalClustersUsed++;
                }
                
               
            }
        }
        else
        {
            freeCluster = FindFirstFreeCluster(vol);
            freeRootEntry = FindFirstFreeRootEntry(vol);
        }
    
   
    printf("fc %d - fre %d\n",freeCluster,freeRootEntry);
   
   uint32_t offset = vol->ROOTSectorStart * vol->vbr.bps + freeRootEntry * 32; // get to root entry
    

   if(RootEntryIndex==0) //if not already present
   {
    //WRITE ROOT ENTRY
    
    fseek(vol->vp,offset,SEEK_SET);
    
    fwrite(fname83,1,11,vol->vp); // write 8.3 name 11 bytes
   
   
   
   
        /* 
            * DEBUG CODE
            *
        fflush(vol->vp);
        
        char buff[12];
        buff[11]=0;
        ISA_strncpy(buff,vol->vp,offset,11);
        

        
        printf("hello* %s\n\n\n",fname83);
        */
        
        
        
        // WRITING to next 15 bytes is not required as we dont care about file attributes like creation dat and all
        //for(uint8_t k=0;k<15;k++) fwrite('\0',1,1,vol->vp); //write 0 to next 15 bytes - reached 11+15 = 26 offset
        
        
        offset = offset + 26; //now at 26
        putBytes(vol->vp, offset, 2, freeCluster); // write file starting cluster
   }
   else
   {
       offset += 26; // update offset
   }
   
   offset = offset+2; // now at 28
   if(append)
   {
    putBytes(vol->vp, offset, 4, length+re.fileSize); // write file length
   }
   else
   {
       putBytes(vol->vp, offset, 4, length); // write file length
   }

   
   //WRITE TO FAT TABLE
   offset = vol->FATSectorStart * vol->vbr.bps + 2*freeCluster;
   
   uint32_t bytesFreeInCluster,skipBytes=0;
   
   
    if(append)
    {
        bytesFreeInCluster = totalClustersUsed * vol->vbr.spc * vol->vbr.bps - re.fileSize;
        
        if(length <= bytesFreeInCluster)
        {
            skipBytes = vol->vbr.spc * vol->vbr.bps - bytesFreeInCluster;
        }
            else
        {
            ISA_strnput(vol->vp,fdata,offset,bytesFreeInCluster); //write how much can be written in this cluster
            length = length - bytesFreeInCluster;
            fdata = fdata + bytesFreeInCluster;
            
            
            skipBytes = 0;
            
            uint16_t newCluster =  FindFirstFreeCluster(vol);
            
            putBytes(vol->vp,offset,2,newCluster);
            
            freeCluster = newCluster;
            
            offset =  vol->FATSectorStart * vol->vbr.bps + 2*freeCluster;
            
        }
    }
    
    putBytes(vol->vp,offset,2,0xffff); // 0xffff means no more clusters are present i.e last cluster of file
    
   //WRITE FILEDATA
   offset = vol->DATASectorStart * vol->vbr.bps + (freeCluster - 2) * vol->vbr.bps * vol->vbr.spc + skipBytes; //DATASector numbering starts from 2, so first data cluster is numbered 2, 2nd as 3 and so on.
    
   ISA_strnput(vol->vp,fdata,offset,length);
   
   
   fflush(vol->vp); // flush output to DISK
   
   
}



void main()
{
	
	FILE *fp;

	fp = fopen("/dev/sdc","rb+");


    VOLUME vol;

    RootEntry re;

    VOLUMEload(fp,&vol);

   // VBRinfo(&vol.vbr);

    VOLUMEinfo(&vol);

    
/*
	printf("%d\n",ROOTSearch(&vol,&re,"abc.txt"));


	char buff[70000];
        
      //  while(1);
	

//	FILERead(&vol,&re,buff,0,re.fileSize);

//	printf("%s\n", buff );

	void p(char *x,uint8_t len)
	{
		printf("%s", x);
	}

	FILEReadAll(&vol,&re,p);

	//return;


	uint16_t ind[20];

	printf("%i\n",ROOTListAll(&vol,ind,20));

    for(uint8_t i=0,x=ROOTListAll(&vol,ind,20);i<x;i++)
    {
    	ROOTListOne(&vol,ind[i],&re);
    	printf("%s\n", re.fileName );
    }

 	printf("--- %d ---",FindFirstFreeCluster(&vol));
        
        */
        
    for(uint16_t i=0;i<9000;i++)
    {
        FileWrite(&vol,"kbc.txt","abcdefg\n",8,1);
        printf("%d\n",i*8);
    }
    
    
        
    fclose(vol.vp);

	
}
