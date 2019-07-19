#include <8052.h>
#include "enterexitapp.h"
#include "delay.h"


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



int main()
{
	UartBegin(); //init uart
	UartPrint("Hello World from Syamputer :)\nExiting in...");
	for(unsigned char i=5;i>0;i--)
	{
		UartWrite('\t');
		UartWrite('0'+i);
		delayms(1000);		
	}
	exitApp();
	while(1);
}
