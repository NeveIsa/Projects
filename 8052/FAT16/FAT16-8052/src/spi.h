
//#define SPI_USE_DELAY 1

#ifdef SPI_USE_DELAY 
void spi_delay(unsigned int ms)
{
	unsigned int j=0,i=0;
	for( i=0;i<ms;i++)
	{
		for(;j<120;j++);
	}
}
#endif


#define SPI_PORT	P1
#define SPI_CLK		0
#define SPI_MOSI	1
#define SPI_MISO	2
#define SPI_CS		3

#define spi_clk_high()	do{SPI_PORT |= 1<<SPI_CLK;}while(0)
#define spi_clk_low()		do{SPI_PORT &= ~(1<<SPI_CLK);}while(0)

#define spi_mosi_high()	do{SPI_PORT |= 1<<SPI_MOSI;}while(0)
#define spi_mosi_low()	do{SPI_PORT &= ~(1<<SPI_MOSI);}while(0)

#define spi_miso_high()	do{SPI_PORT |= 1<<SPI_MISO;}while(0)
#define spi_miso_low()	do{SPI_PORT &= ~(1<<SPI_MISO);}while(0)

#define spi_cs_high()	do{SPI_PORT |= 1<<SPI_CS;}while(0)
#define spi_cs_low()	do{SPI_PORT &= ~(1<<SPI_CS);}while(0)

#define spi_read_miso()	(SPI_PORT & 1<<SPI_MISO)


void spi_init()
{

	spi_miso_high(); //make MISO input
	spi_mosi_high(); //recommended in sd card tutorial
  	spi_cs_high(); //deselect
	spi_clk_low(); //mode 0, idle clk is low
}

uint8_t spi_transfer(uint8_t tx,uint8_t handle_cs)
{
	uint8_t rx,i;
	rx=0; //clear the rx - sdcc compiler throws warning otherwise
	
	//make sure clk is idle
	spi_clk_low();
	
	//chip select
	if(handle_cs)
	spi_cs_low();
	
	
	for(i=0;i<8;i++)
	{
		//put_a_bit - msb first
		if(tx & 0x80) spi_mosi_high();
		else spi_mosi_low();
		//shift_tx_for_next_bit
		tx <<=1;
		
		//spi_delay(1);
		
		//make_space_in_rx
		rx <<=1;
	
		//put_clk_high
		spi_clk_high();
		
		//sample_bit_from_miso
		if(spi_read_miso()) rx |=1;
		
		//spi_delay(1);
		
		//put_clk_low
		spi_clk_low();
		
	}
	
	//deselect
	if(handle_cs)
	spi_cs_high();
		
	return rx;
}



void spi_transfer_all(uint8_t *buff, uint8_t len,uint8_t handle_cs)
{
	uint8_t i=0;
	
	//select
	if(handle_cs)spi_cs_low();
	
	for(i=0;i<len;i++)
	{
		spi_transfer(buff[i],0);
	}
	
	//deselect
	if(handle_cs)spi_cs_high();
	
}