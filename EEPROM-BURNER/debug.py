import serial
import time

s=serial.Serial("/dev/ttyACM0",460800,timeout=3)

s.read(s.inWaiting())
time.sleep(1)

s.write(b'V')
time.sleep(0.5)
print(s.read(s.inWaiting()))

