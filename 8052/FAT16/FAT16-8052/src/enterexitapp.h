#ifndef APP_ENTER
#define APP_ENTER

#ifndef RESET_PORT_8052
#define RESET_PORT_8052 P1
#endif


#ifndef RESET_PIN_8052
#define RESET_PIN_8052	4
#endif

void enterApp()
{
	unsigned int x,y;

	//delay for 250ms -> required because what if the app calls exitApp immediately after reset ?
	// the PIC12f508 takes about 250ms after each reset to be able to process the next reset operation
	// So the App was loaded by the PIC12F508 by a reset and the APP immediately calls exitApp. 
	// Thus the PIC12F508 doesn't have enough time to start listening for pin low pulse on RESET_PIN_8052
	for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
	for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms


	RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
	
	//delay must be between 50ms to 250ms = 50,000 to 250,000 machine cycles @ 1MHz machine cycle (12MHz crystal)
	for(x=0;x<250;x++) for(y=0;y<100;y++); 	// inner for loop takes about 3 cycles,
       						// jnz is 2mcycles and inc is 1mcycle -> 250*100*3=75,000 machine cycles = 75ms


	RESET_PORT_8052 |= (1 << RESET_PIN_8052);	


}



void exitApp()
{

	RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
}


#endif









