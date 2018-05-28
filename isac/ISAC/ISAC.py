import serial
import serial.tools.list_ports as SPlist
import time

class ISACONTROLLER:
    def __init__(self,port):
        print("USING PORT:",port)
        self.ser=serial.Serial(port,115200)
        self.IDfound=False
	for x in range(5):
            print("Waiting for reset... ",x)
            time.sleep(1)
        reply=self.ser.read(self.ser.inWaiting())
        print ("OK--->",reply)

    def identify(self):
        self.ser.write("+++IDENTIFY\n")
        time.sleep(3)
        lines=self.ser.read(self.ser.inWaiting())
        lines=lines.split("\n")
        lines=map(lambda x:x.strip(),lines)
        print (lines)

        for l in lines:
            if "+++" in l:
                print ("HEADER +++ FOUND:",l)
                if "ISACONTROLLER" in l:
                    print("ID: ISACONTROLLER")
                    self.IDfound=True
                else:
                    continue

    def IRTX(self,ircode):
        self.ser.write("IRTX\n")
        time.sleep(0.2)
        ircode=hex(ircode).upper()[2:]
        self.ser.write(ircode+"\n")
	time.sleep(0.7)
	reply=self.ser.read(self.ser.inWaiting())
	reply=reply.split("\n")
	reply=map(lambda x:x.strip(),reply)
	return reply

#if __name__=="__main__":
isac = ISACONTROLLER("/dev/ttyACM4")
isac.identify()
#isac.IRTX(0xC0FFEE)
