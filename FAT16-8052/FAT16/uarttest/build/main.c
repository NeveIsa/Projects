#include <8052.h>


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long uint32_t;

#include "uart.h"
#include "serialloader.h"

 
void delay(void);

 
void main(void)
{

    UartBegin();

    while(1)
    {
       
        SL_getcmd();
    }
        
   

}
 
void delay(void)
{
    int i,j;
    for(i=0;i<0xff;i++)
         for(j=0;j<0xff;j++);
}