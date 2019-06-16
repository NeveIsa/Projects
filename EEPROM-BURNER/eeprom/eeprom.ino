volatile unsigned char EEP_WRITE_PROTECTION=1;


void setup_addr_pins()
{
  pinMode(A0,OUTPUT);
  pinMode(A1,OUTPUT);
  pinMode(A2,OUTPUT);
  pinMode(A3,OUTPUT);
  pinMode(A4,OUTPUT);
  pinMode(A5,OUTPUT);
  pinMode(A6,OUTPUT);
  pinMode(A7,OUTPUT);
  pinMode(A8,OUTPUT);
  pinMode(A9,OUTPUT);
  pinMode(A10,OUTPUT);
  pinMode(A11,OUTPUT);
  pinMode(A12,OUTPUT);
  pinMode(A13,OUTPUT);
  pinMode(A14,OUTPUT);
  pinMode(A15,OUTPUT);
}

void setup_data_pins_out()
{
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);

}


void setup_data_pins_in()
{
  pinMode(2,INPUT);
  pinMode(3,INPUT);
  pinMode(4,INPUT);
  pinMode(5,INPUT);
  pinMode(6,INPUT);
  pinMode(7,INPUT);
  pinMode(8,INPUT);
  pinMode(9,INPUT);

}


void setup_control_pins()
{
  #define   CE  14
  #define   OE  15
  #define   WE  16

  pinMode(CE,OUTPUT);
  pinMode(OE,OUTPUT);
  pinMode(WE,OUTPUT);
}



////////////////////////////// CONTROL /////////////////////////////
void CElow()
{
  digitalWrite(CE,LOW);
}

void CEhigh()
{
  digitalWrite(CE,HIGH);
}

void OElow()
{
  digitalWrite(OE,LOW);
}

void OEhigh()
{
  digitalWrite(OE,HIGH);
}


void WElow()
{
  digitalWrite(WE,LOW);
}

void WEhigh()
{
  digitalWrite(WE,HIGH);
}

////////////////////////////// CONTROL /////////////////////////////


void put_addr(unsigned int addr)
{
  if(addr & 1<<0) digitalWrite(A0,HIGH);
  else digitalWrite(A0,LOW);
  if(addr & 1<<1) digitalWrite(A1,HIGH);
  else digitalWrite(A1,LOW);
  if(addr & 1<<2) digitalWrite(A2,HIGH);
  else digitalWrite(A2,LOW);
  if(addr & 1<<3) digitalWrite(A3,HIGH);
  else digitalWrite(A3,LOW);
  if(addr & 1<<4) digitalWrite(A4,HIGH);
  else digitalWrite(A4,LOW);
  if(addr & 1<<5) digitalWrite(A5,HIGH);
  else digitalWrite(A5,LOW);
  if(addr & 1<<6) digitalWrite(A6,HIGH);
  else digitalWrite(A6,LOW);
  if(addr & 1<<7) digitalWrite(A7,HIGH);
  else digitalWrite(A7,LOW);
  if(addr & 1<<8) digitalWrite(A8,HIGH);
  else digitalWrite(A8,LOW);
  if(addr & 1<<9) digitalWrite(A9,HIGH);
  else digitalWrite(A9,LOW);
  if(addr & 1<<10) digitalWrite(A10,HIGH);
  else digitalWrite(A10,LOW);
  if(addr & 1<<11) digitalWrite(A11,HIGH);
  else digitalWrite(A11,LOW);
  if(addr & 1<<12) digitalWrite(A12,HIGH);
  else digitalWrite(A12,LOW);
  if(addr & 1<<13) digitalWrite(A13,HIGH);
  else digitalWrite(A13,LOW);
  if(addr & 1<<14) digitalWrite(A14,HIGH);
  else digitalWrite(A14,LOW);
  if(addr & 1<<15) digitalWrite(A15,HIGH);
  else digitalWrite(A15,LOW);

}

void put_data(unsigned char data)
{
  if(data & 1<<0)digitalWrite(2,HIGH);
  else digitalWrite(2,LOW);
  if(data & 1<<1)digitalWrite(3,HIGH);
  else digitalWrite(3,LOW);
  if(data & 1<<2)digitalWrite(4,HIGH);
  else digitalWrite(4,LOW);
  if(data & 1<<3)digitalWrite(5,HIGH);
  else digitalWrite(5,LOW);
  if(data & 1<<4)digitalWrite(6,HIGH);
  else digitalWrite(6,LOW);
  if(data & 1<<5)digitalWrite(7,HIGH);
  else digitalWrite(7,LOW);
  if(data & 1<<6)digitalWrite(8,HIGH);
  else digitalWrite(8,LOW);
  if(data & 1<<7)digitalWrite(9,HIGH);
  else digitalWrite(9,LOW);

}

unsigned char get_data()
{
  unsigned char data=0;
  
  if(digitalRead(2)==HIGH)data |= (1<<0);
  if(digitalRead(3)==HIGH)data |= (1<<1);
  if(digitalRead(4)==HIGH)data |= (1<<2);
  if(digitalRead(5)==HIGH)data |= (1<<3);
  if(digitalRead(6)==HIGH)data |= (1<<4);
  if(digitalRead(7)==HIGH)data |= (1<<5);
  if(digitalRead(8)==HIGH)data |= (1<<6);
  if(digitalRead(9)==HIGH)data |= (1<<7);


  //Serial.print("->");Serial.println(data);

  return data;
}

///////////////////////////////////// EEPROM METHODS //////////////////////////////////////////

unsigned char EEPread(unsigned int addr)
{
    unsigned char data;

    setup_data_pins_in();
    
    WEhigh();
    //delayMicroseconds(10);
    
    put_addr(addr);
    //delayMicroseconds(10);
    
    CElow();
    //delayMicroseconds(10);
    
    OElow();
    //delayMicroseconds(1);

    
    data = get_data();
    //delayMicroseconds(10);
    

    OEhigh();
    CEhigh();

    //delayMicroseconds(10);

    return data;
    
}


void EEPwrite(unsigned int addr, unsigned char data)
{

  put_addr(addr);
  //delayMicroseconds(10);

  
  OEhigh();
  CElow();
  setup_data_pins_out();
  //delayMicroseconds(10);

  WElow();
  //delayMicroseconds(10);

  put_data(data);

  WEhigh();
  //delayMicroseconds(10);

  CEhigh();

  
  //OElow();


  //delayMicroseconds(250);
  
}

void EEPwriteWithProtection(unsigned int addr,unsigned char data)
{
  EEPwrite(0x1555,0xAA);
  EEPwrite(0x0AAA,0x55);
  EEPwrite(0x1555,0xA0);

  EEPwrite(addr,data);


  delay(3); //maximum page write cycle time is 10ms according to DataSheet, we are optimistic that it will be done in 3ms
}

void EEPdisableWriteProtection()
{
  EEPwrite(0x1555,0xAA);
  EEPwrite(0x0AAA,0x55);
  EEPwrite(0x1555,0x80);
  
  EEPwrite(0x1555,0xAA);
  EEPwrite(0x0AAA,0x55);
  EEPwrite(0x1555,0x20);
  delay(3);
}

///////////////////////////////////// EEPROM METHODS //////////////////////////////////////////


//////////////////////////////////// SERIAL BOOTLOADER HELPERS ///////////////////////////////


void BLwriteByte()
{
  //send MSB of addr first and then LSB of addr and then DATA;
  unsigned int addr=0;
  unsigned char data=0;

  unsigned long now = millis();

  while(Serial.available()<3 && (millis() - now)<2000);

  if((millis()-now) >  1000) 
  {
    return;
  }

  addr = Serial.read(); //MSB
  addr<<=8;
  addr|= Serial.read(); //LSB

  data=Serial.read();

  if(EEP_WRITE_PROTECTION)
  {
    EEPwriteWithProtection(addr,data);
  }
  else
  {
    EEPwrite(addr,data);
    delay(3);
  }
  
  Serial.write("W");

}


void BLreadByte()
{
  unsigned int addr=0;

  unsigned long now = millis();

  while(Serial.available()<2 && (millis() - now)<2000);

  if((millis()-now) >  1000) 
  {
    return;
  }
  
  addr = (byte)Serial.read(); //MSB
  addr<<=8;
  addr |= (byte)Serial.read(); //LSB

  //Serial.println(addr);

  Serial.write(EEPread(addr));
}


void BLversion()
{
  Serial.println("28C64:V0.0");
}

unsigned char BLgetcmd()
{
  while(Serial.available())Serial.read();//flush
  while(!Serial.available());
  delayMicroseconds(500); // at 460800 baud, each byte is incoming at about 25us, hence for 3-4 bytes, we just need 100us

  unsigned char cmd = Serial.read();

  switch (cmd)
  {
    case 'W':
      BLwriteByte();
      break;
    case 'R':
      BLreadByte();
      break;
    case 'D':
      EEPdisableWriteProtection();
      EEP_WRITE_PROTECTION=0;
      Serial.write('D');
    case 'V':
      BLversion();
  }
}


//////////////////////////////////// SERIAL BOOTLOADER HELPERS ///////////////////////////////

void setup() {
  // put your setup code here, to run once:

  setup_addr_pins();
  setup_control_pins();
  setup_data_pins_in();

  CEhigh();
  OEhigh();
  WEhigh();
  
  delay(100);

  Serial.begin(460800);
}

void loop() {
  // put your main code here, to run repeatedly:

/*for(unsigned int addr=0;addr<60;addr++)
  {
    EEPwriteWithProtection(addr,addr + 90);
  }
*/


  
 
 while(1)
 {
  BLgetcmd();
 }
}
