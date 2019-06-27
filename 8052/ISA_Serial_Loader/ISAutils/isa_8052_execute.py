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


ser.write(b'X')
time.sleep(1)
