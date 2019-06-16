#include <8052.h>


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long uint32_t;

#include "uart.h"
#include "serialloader.h"

 
void delay(void);

 
void main(void)
{
    __xdata char* x=0;

    UartBegin();

    while(1)
    {
        for(unsigned int i=0;i<60000;i++)
        {
            x = (__xdata char*)i;
            *(x)=1;
            //delay_ms(1000);
            UartPrintNumber(i);
            UartWrite('\n');
        }
       
        //SL_getcmd();
    }
        
   

}
 
void delay(void)
{
    int i,j;
    for(i=0;i<0xff;i++)
         for(j=0;j<0xff;j++);
}