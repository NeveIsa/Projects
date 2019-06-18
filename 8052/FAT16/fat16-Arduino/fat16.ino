#include <SPI.h>




void init_clocks(byte t=10)
{
  cshigh();
  Serial.println("<-------");
  for(int i=0;i<t;i++) Serial.println(SPI.transfer(0xff),HEX); // 80 clocks
  Serial.println("------->");
}

byte SPI_Write(byte v)
{
  return SPI.transfer(v);
}

byte sdcmd(byte cmd,uint32_t arg, byte crc,byte response_length=1)
{
  
  cslow();
  waitNotBusy();

  
  SPI_Write(cmd | 0x40);    //SD Spec: 1st bit always zero, 2nd always 1
  SPI_Write(arg>>24);     //first of the 4 bytes address
  SPI_Write(arg>>16);     //second
  SPI_Write(arg>>8);      //third
  SPI_Write(arg);       //fourth
  SPI_Write(crc);   

  byte res,count=0;
  
  while((res = SPI_Write(0xff)) & 0x80); //wait till busy
   
  Serial.print(cmd,HEX);Serial.print("|");Serial.println(res,HEX);
   

  
  while(--response_length)//read the rest of response if response_length>1
  {
    Serial.print(cmd,HEX);Serial.print("|");Serial.println(SPI_Write(0xff),HEX);
  }

  cshigh();
  
  return res;
  
}

byte sdacmd(byte cmd,uint32_t arg)
{
  sdcmd(55,0,0xff,1);
  return sdcmd(cmd,arg,0xff,1);
}

int cspin=4;
void cslow()
{
  digitalWrite(cspin,LOW);
}


void cshigh()
{
  digitalWrite(cspin,HIGH);
}

void waitNotBusy()
{
  while(SPI.transfer(0xff)!=0xff);
}

void setup() {
  // put your setup code here, to run once:

  SPI.begin();
  SPI.setClockDivider(SPI_CLOCK_DIV128);
  Serial.begin(115200);

  pinMode(cspin,OUTPUT);
  cshigh();


  init_clocks();
  while(sdcmd(0,0,0x95,1)!=0x01);

  init_clocks(1); // helps the next command to work
  sdcmd(8,0x000001AA,0x87,6);


  while(sdacmd(41,0x40000000)!=0);

  sdcmd(58,0,0xff,6);

  waitNotBusy();

  delay(100);

  byte recv;

  
  init_clocks(1);
  sdcmd(17,2048,0xff,1);
  while((recv=SPI.transfer(0xff))==0xff)Serial.print(".");
  Serial.println(recv,HEX);
  for(int i=0;i<512;i++)Serial.print((char)SPI.transfer(0xff));
  Serial.println();


  //init_clocks(1);
  sdcmd(17,2048,0xff,1);

  
  while((recv=SPI.transfer(0xff))==0xff)Serial.print(".");
  Serial.println(recv,HEX);
  for(int i=0;i<514;i++)Serial.print(SPI.transfer(0xff),HEX);
  Serial.println();

  //init_clocks(); //may help
 //sdcmd(10,0x00000200,0xff,1)
 
  while(1);

  
}


void loop() {
  // put your main code here, to run repeatedly:

}
