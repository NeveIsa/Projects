//HEX HELPERS

unsigned char hexNibble2dec(char nibble)
{
	if('0' <= nibble && nibble <= '9') return nibble - 0x30;
	else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
	else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
	else return 0;
}

unsigned char hex2dec(char MSnibble,char LSnibble)
{
	//example - converts FE (MSnibble:F,LSnibble:E) to 255
	return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
}


unsigned char dec2hexNibble(unsigned char dec)
{
	//example - dec2hex(11) returns character 'B'
	if(dec>15) return 'X'; // X for invalid
	
	if(dec<=9) return 0x30 + dec;
	else return 'A' + dec - 10;
}


//UART HELPERS

void UartBegin()
{
	//http://www.keil.com/products/c51/baudrate.asp

	TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD

	TH1 = 0XF3; //2400
	SCON = 0X50;

	PCON |= 1<<7; //double the baudrate - 4800
	
	TR1 = 1; //START TIMER
}

unsigned char UartReadReady()
{
	if(RI==0)return 0; //not received any char
	else return 1; //received and ready
}

unsigned char UartRead()
{
	unsigned char value;
	while(RI==0); //wait till RX
	RI=0;
	value = SBUF;
	return value;
}


void UartWrite(unsigned char value)
{
	SBUF = value;
	while(TI==0); // wait till TX
	TI=0;
}

void UartWriteBuff(unsigned char *p, unsigned char length)
{
	unsigned char i=0;
	for (i=0;i<length;i++)
	{
		UartWrite(p[i]);
	}
}

void UartReadBuff(unsigned char *p, unsigned char length)
{
	unsigned char i=0;
	for (i=0;i<length;i++)
	{
		p[i] = UartRead();
	}
}

void UartPrint(unsigned char *p)
{
	do
	{
		UartWrite(*p);
	}while(*(++p)!=0);
}



enum {HEX,DEC}; //formats
void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
{
	unsigned char msd,lsd; // d for digit
	unsigned char extra;
		
	if(format==HEX)
	{
		msd = num/16;
		lsd = num%16;
		UartWrite(dec2hexNibble(msd));
		UartWrite(dec2hexNibble(lsd));
	}
	
	else if(format==DEC)
	{
		msd = num/100; // 100s place
		extra = (num%100)/10; //tenth place
		lsd = num%10;
	
		UartWrite(msd + 0x30);
		UartWrite(extra + 0x30);
		UartWrite(lsd + 0x30);
	}
	
}

void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
{
	unsigned char i;
	
	for(i=0;i<length;i++,p++)
	{
		UartWriteNumber(*p,format);
		UartWrite(delimiter);
	}
}

void UartPrintNumber(unsigned long n) __reentrant
{
	/*unsigned char digits[8];
	for(unsigned int i=0;i<8;i++)
	{
		digits[i]=n%10;
		n=n/10;
	}

	for(unsigned int i=0;i<8;i++)
	{
		UartWrite(0x30 + digits[7-i]);
	}*/

	//LOW memory tradeoff to computation

	unsigned long digit;
	char i,j;
	for(i=8;i>0;i--)
	{
		digit=n;
		for(j=1;j<i;j++) digit/=10;
		UartWrite(0x30 + digit%10);
	}
}

//////////// SCAN FUNTIONS ////////////////////
uint8_t UartScanByte() __reentrant
{
	uint8_t unibble,lnibble;

	while(UartReadReady()) UartRead(); //flush
	UartPrint("Number in Hex - eg(FE for 254): ");
	
	unibble = UartRead();
	UartWrite(unibble);
	lnibble = UartRead();
	UartWrite(lnibble);

	UartWrite('\n');

	return hex2dec(unibble,lnibble);
}

uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
{
	uint8_t recv,count=0;

	while(UartReadReady()) UartRead(); //flush

	while(1)
	{
		
		recv=UartRead();
		UartWrite(recv);
		if(recv == '\n') 
		{
			*(dst+count)=0; //add string terminate
			break;
		}
		else *(dst+count)=recv;

		if(count==maxLength) 
		{
			*(dst+count)=0; // terminate string.
			break;
		}

		count++;
	}


	return count;
	
}

//////////// SCAN FUNTIONS ////////////////////
