#include <8052.h>


int main()
{
	while(1){
	P1=255;
	for(unsigned int i=0;i<50000;i++); //delay
	for(unsigned int i=0;i<50000;i++); //delay

	P1=0;
	
	for(unsigned int i=0;i<50000;i++); //delay
	for(unsigned int i=0;i<50000;i++); //delay
	}

	return 0;
}
