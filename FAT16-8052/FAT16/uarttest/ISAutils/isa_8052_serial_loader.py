import serial
import time
import sys



print("ISA EEPROM UTILITY - V0.1")

import serial.tools.list_ports
_ports=serial.tools.list_ports.comports()

if(len(_ports)==0):
    print("No serial ports found...")
    exit()
elif (len(_ports)==1):
    port=_ports[0].device
else:
    print("Available Serial Ports:")
    for i in range(len(_ports)):
        print ("{} : {}".format(i,_ports[i].device))
    print("Select Serial Port No. (",",".join(map(str,range(len(_ports)))),"):")
    port=_ports[int(input())].device

baud=4800
tout=3 #secs
print("Opening > port:",port,"baudrate:",baud,"timeout:",tout)
ser=serial.Serial(port,baudrate=baud,timeout=3)
time.sleep(1)
ser.read(ser.inWaiting())
time.sleep(1)

_delay=0.000

def BLgetVersion():
    ser.read(ser.inWaiting())
    ser.write(b'V')
    time.sleep(_delay*2)
    rcv = ser.readline().decode().strip()
    if "8052" in rcv and "ISA" in rcv:
        return rcv
    else:
        print("Expected version string. Got: {} | Synchronising...".format(rcv))
        return BLgetVersion()


def BLwrite(addr,data):
    ser.read(ser.inWaiting()) #flush

    addrMSB = addr>>8 & 0xff
    addrLSB = addr & 0xff
    #print(addrMSB,addrLSB,data,"\t",chr(data))
    
    ser.write(b'W')
    time.sleep(_delay)
    ser.write(bytes([addrMSB]))
    time.sleep(_delay)
    ser.write(bytes([addrLSB]))
    time.sleep(_delay)
    ser.write(bytes([data]))
    time.sleep(_delay)

    #listen for W reply
    if ser.read().decode()=="W":
        pass
    else:
        print("Burning failed...")

def BLread(addr):
    addrMSB = addr>>8 & 0xff
    addrLSB = addr & 0xff
    ser.write(b'R')
    time.sleep(_delay)
    ser.write(bytes([addrMSB]))
    time.sleep(_delay)
    ser.write(bytes([addrLSB]))
    time.sleep(_delay)

    data=ord(ser.read())
    #print(addrMSB,addrLSB,data,"\t",chr(data))

    return data



########################### HIGH LEVEL METHODS #############################

def burnImage(filename):
    print("\n\nBurning...")
    with open(filename,'rb') as f:
        fileInBinary = f.read()
    fsize=len(fileInBinary)
    for indx in range(fsize):
        BLwrite(indx,fileInBinary[indx])
        pbar=int((indx+1)*100/fsize)
        print("\r","[","#"*pbar," "*(100-pbar),"] [",indx+1,"/",fsize,"]",end="")

def verifyImage(filename):
    print("\n\nVerifying...")
    time.sleep(0.5)
    with open(filename,'rb') as f:
        fileInBinary = f.read()
    fsize=len(fileInBinary)
    for indx in range(fsize):
        r=BLread(indx)
        if r==fileInBinary[indx]:
            pbar=int((indx+1)*100/fsize)
            print("\r","[","#"*pbar," "*(100-pbar),"] [",indx+1,"/",fsize,"]",end="")
        else:
            print("Verification Error...")
            print("addr:{} | file_val:{} | eeprom_val:{}".format(indx,fileInBinary[indx],r))
            break



def dumpImage(filename):
    print("\n\nDumping...")
    eepsize=256*256
    with open(filename,'wb') as g:
        for addr in range(eepsize):
            b=BLread(addr)
            g.write(bytes([b]))

            pbar=int((addr+1)*100/eepsize)
            print("\r","[","#"*pbar," "*(100-pbar),"] [",addr+1,"/",eepsize,"]",end="")

    verifyImage(filename)

########################### HIGH LEVEL METHODS #############################

if __name__=="__main__":
    time.sleep(1)
    print("\nFW-VERSION:",BLgetVersion())
    usage="\nUSAGE:\n\tpython3 "+sys.argv[0]+" burn/dump filename" 
    
    if len(sys.argv)<2:
        print(usage)
        exit()
    else:
        action=sys.argv[1]
        if action in ["burn","dump"]:
            filename=sys.argv[2]
        else:
            print(usage)
            exit()

    
    if action=="burn":
        burnImage(filename)
        verifyImage(filename)
    elif action=="dump":
        dumpImage(filename)
    
    ser.close()
