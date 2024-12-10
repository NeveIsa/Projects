

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
  pinMode(2,INPUT_PULLUP);
  pinMode(3,INPUT_PULLUP);
  pinMode(4,INPUT_PULLUP);
  pinMode(5,INPUT_PULLUP);
  pinMode(6,INPUT_PULLUP);
  pinMode(7,INPUT_PULLUP);
  pinMode(8,INPUT_PULLUP);
  pinMode(9,INPUT_PULLUP);

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
  //The AT28C64B is accessed like a Static RAM. When CE and OE are low and WE is high, the data stored at the memory location determined by the address pins are asserted on the outputs. The outputs are put in the high-impedance state when either CE or OE is high. This dual-line control gives designers flexibility in preventing bus contention in their system.

    WEhigh(); //just to be sure WE is high
    
    unsigned char data;
    setup_data_pins_in();
    put_addr(addr);
    OElow();
    data = get_data();
    OEhigh();
    return data;
    
}


void EEPwrite(unsigned int addr, unsigned char data)
{
  //A low pulse on the WE or CE input with CE or WE low (respectively) and OE high initiates a write cycle. The address is latched on the falling edge of CE or WE, whichever occurs last. The data is latched by the first rising edge of CE or WE. Once a byte write is started, it will automatically time itself to completion. Once a programming operation is initiated and for the duration of tWC, a read operation will effectively be a polling operation.

  OEhigh(); //just making sure OE is high
  
  put_addr(addr); 
  setup_data_pins_out();
  put_data(data);
  WElow();
  WEhigh();
  delay(1); // datasheet says takes 1ms for write cycle to complete
}

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

  EEPwrite(addr,data);
  
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
  Serial.println("KONARK_BURNER:V0.1");
}

unsigned char BLgetcmd()
{
  while(!Serial.available());
  //delayMicroseconds(500); // at 460800 baud, each byte is incoming at about 25us, hence for 3-4 bytes, we just need 100us

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
      CEhigh();
      break;
    case 'E':
      CElow();
      break;
    case 'V':
      BLversion();
      break;
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
  while(Serial.available())Serial.read();//flush
}

void loop() {
  // put your main code here, to run repeatedly:
 while(1)
 {
  BLgetcmd();
 }
}
