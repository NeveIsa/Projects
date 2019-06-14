//#define SD_DEBUG 1

#define CMD0	0
#define CMD8	8
#define CMD10	10
#define CMD17	17
#define CMD41 41
#define CMD55	55
#define CMD58	58

#define SD_MAX_RETRIES 25

#define SD_CMD_FAIL 0xff
#define SD_MAX_RETRIES_FAIL 0xfe
#define DATA_START_BLOCK_FAIL 0xfd


#define SD_BLOCK_SIZE	512
#define DATA_START_BLOCK	0XFE


#define sd_spi_write(v) spi_transfer(v,0)
//uint8_t sd_spi_write(uint8_t v) {return spi_transfer(v,0);}


uint8_t sd_isbusy()
{
	uint8_t i;
	for(i=0;i<254;i++) //could have been anything(100/200/etc.)
	{
		if(sd_spi_write(0xff)==0xff) return 0; //not busy
	}
	
	return 1; //busy
}

void sd_initial_clk()
{
	
	//make sure clk is idle (low in mode 0)
	//spi_clk_low();
	
	//min 74 clk cycles with MOSI and SCK HIGHs
	
	spi_cs_high(); // required by spec but works fine even when cs pin of SDCARD is always pulled to ground to save uC pins
	for(uint8_t i=0;i<10;i++)spi_transfer(0xff,0);
}

uint8_t sd_cmd(uint8_t cmd, uint32_t arg)
{
	uint8_t _resp=0,retries=0,crc=0xff;
	
	spi_cs_low();

	sd_isbusy(); //wait while sd is busy


	#ifdef SD_DEBUG
	UartWriteNumber(cmd,HEX);
	UartWrite('|');
	#endif

	sd_spi_write(cmd | 0x40);

	sd_spi_write((arg >> 24) & 0xff);
	sd_spi_write((arg >> 16) & 0xff);
	sd_spi_write((arg >> 8) & 0xff);
	sd_spi_write(arg & 0xff);

	if(cmd==CMD0) 
	{
		crc=0x95;
	}
	else if(cmd==CMD8) 
	{
		crc=0x87;
	}
	sd_spi_write(crc);	
	
	
	while(1) 
	{
		_resp = sd_spi_write(0xff);
		
		if(_resp & 0x80);
		else break;

		if(retries++ == SD_MAX_RETRIES) 
		{
			#ifdef SD_DEBUG
			UartPrint("SD_MAX_RETRIES_FAIL\n");
			#endif

			return SD_MAX_RETRIES_FAIL; // 0xff means failed
		}
		
	}

	
	#ifdef SD_DEBUG
	UartWriteNumber(_resp,HEX);
  UartWrite('\n');
	#endif


	if(cmd==CMD8 || cmd==CMD58)
	{
		//waste the 3 bytes
		
		#ifdef SD_DEBUG
		for(uint8_t i=0;i<4;i++)UartWriteNumber( sd_spi_write(0xff),HEX);
		UartWrite('\n');
		#else
		if(cmd==CMD8)
		{
			for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
			if(sd_spi_write(0xff)!=0xAA) return SD_CMD_FAIL;
		}
		else if(cmd==CMD58)
		{
			if(sd_spi_write(0xff)!=0xC0) return SD_CMD_FAIL;
			//if success
			for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
		}
		#endif

		//read the crc byte if command succeeds
		sd_spi_write(0xff);

	}

  // do not make high, there should not be multiple CS assertions and releases when sending multiple commands
	// and when reading data after sending CMD17 for block read.
	//spi_cs_high(); 

	return _resp;
	
}

uint8_t sd_acmd(uint8_t cmd, uint32_t arg)
{
	uint8_t _resp;

	_resp=sd_cmd(CMD55,0);
	if(_resp!=1) return SD_CMD_FAIL;


	_resp=sd_cmd(cmd,arg);
	return _resp;

}






// let compiler know the below function is defined latter as it is called in sd_init()
//uint8_t sd_read_block(char *buff, unsigned long block_byte_addr, unsigned int offset, unsigned int readlength);

uint8_t SDinit()
{
	      uint8_t retries=0;

				sd_initial_clk(); // 74 minimum clks for initialization

        while(1)
        {
            if(sd_cmd(CMD0,0)==0x01)break; // correct response is 0x01 -> signals card is idling
            else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
        }


        if(sd_cmd(CMD8,0x1AA)!=0x01) return SD_CMD_FAIL; // correct response for cmd8 is 0x01
    
        retries=0;
        while(1)
        {
            if(sd_acmd(CMD41,0x40000000)==0)break; //correct response
            else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;

        }

				//check if card is SDHC - we dont support older cards
				// expected response is 0, if not return fail
				if(sd_cmd(CMD58,0)) return SD_CMD_FAIL;  

				//force block length to SD_BLOCK_SIZE(512) if not already default
				// expected response is 0, if not return fail
				//if(sd_cmd(CMD10,SD_BLOCK_SIZE)) return SD_CMD_FAIL; //couldn't set block length to 512 if response is not 0
				// Sending the above CMD makes the data read using CMD17 fail, 
				// hence we are using the default setting which has default block size 512 on almost all SDHC.

        return 0; //successful init
}


//LBA- logical block address , BLOCK and SECTOR are same thing
// borrowed from Sd2Card::readData - Arduino

//Read about Parameters and Local Variables in SDCC Manual for why __reentrant is used
// __reentrant is used to put the local variables and pass the function parameters
// on the stack rather than using the internal RAM space which makes the parameters and the
// local variables to be like static variables which take up permanent space in the RAM unline stack variables
// which are used/occupied only when the function is called and are released/freed wwhen the function exits.

//remove the __reentrant directive and check if things work incase of abrupt behavior of code.
// in general __reentrant functions may perform better because they free up the stack (which is a part of RAM) on exit

uint8_t SDread(uint32_t block_addr, uint16_t offset, uint16_t count, uint8_t* dst ) __reentrant
{

	uint8_t retries=0,response=0;

	//return 0 - success, else fail

	if (count == 0) return 0; //success
	if ((count + offset) > SD_BLOCK_SIZE) {
		return 1; //fail
	}

	
	
	//enable cs - this will anyway be done by the sd_cmd(CMD17,addr) funtion below, but still
	// CS needs to be asserted till the end of reading the block and shouldnt be released after 
	// sending CMD17 - the sd_cmd funtion anyways only asserts the cs but doesn't release at funtion exit.
	spi_cs_low();
	
	
	//send CMD17 and block address as parameter
	//correct response is 0x00 - if other value returned, then fail
	if(sd_cmd(CMD17,block_addr)) return SD_CMD_FAIL; 


	//wait for data DATA_START_BLOCK
	while(1)
	{
		response = sd_spi_write(0xff);

		#ifdef SD_DEBUG
		UartWriteNumber(response,HEX);
		#endif

		//response after CMD17 must only be 0xFF train till DATA_START_BLOCK=0xFE appears,
		// Hence only valid responses can be 0xff and 0xfe
		if(response==0xff); //pass
		else if(response == DATA_START_BLOCK) break; // if the last response is DATA_START_BLOCK=0xFE, then success, else fail
		else return DATA_START_BLOCK_FAIL; // if anything other than 0xff or DATA_START_BLOCK=0xFE

		if(retries++==255) return SD_MAX_RETRIES_FAIL;
	}


	
	//read a full block bytes
	for(uint16_t i=0;i<512;i++)
	{
		response = spi_transfer(0xff,0);

		#ifdef SD_DEBUG
			UartWrite(response);
		#endif
		
		
		//write to buff only requested bytes
		if(i>=offset && i<offset+count)
		{
			dst[i-offset] = response;
		}
		
		//debug 
		//UartWrite(response);
	}
	
	//read CRC 2 bytes but dont do anything with it
	sd_spi_write(0xff);
	sd_spi_write(0xff);


	spi_cs_high(); //leave clock high
	
	
	return 0; //success
	
}

uint8_t SDreadBlock(uint32_t block_addr,uint8_t* dst)
{
	return SDread(block_addr,0,SD_BLOCK_SIZE,dst);
}

