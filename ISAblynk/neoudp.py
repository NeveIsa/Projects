
from machine import Pin
from neopixel import NeoPixel

import time

pin = Pin(0, Pin.OUT)   # set GPIO0 to output to drive NeoPixels
np = NeoPixel(pin, 8)   # create NeoPixel driver on GPIO0 for 8 pixels

red=0
green=0
blue=0

def glow(r,g,b):
	for i in range(8):
		np[i]=(r,g,b)
	np.write()
	print("writing colors:",r,g,b)



def rawglow(value):
	value=value.decode()
	r,g,b=value.split(",")
	r,g,b=int(r),int(g),int(b)
	glow(r,g,b)

def callback(data):
		print ("Color : ",data)
		global red
		global green
		global blue
		#red,green,blue=0,0,0
		if data[0]=='vw':
			value=int(int(data[2])/4) #scale 1024 to 256
			if data[1]=='1':
				#print('red')
				red=value
			elif data[1]=='2':
				#print('green')
				green=value
			elif data[1]=='3':
				#print('blue')
				blue=value
			glow(red,green,blue)



glow(100,0,0)
time.sleep_ms(500)
glow(0,100,0)
time.sleep_ms(500)
glow(0,0,100)
time.sleep_ms(500)
glow(0,0,0)



import socket

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

import network
#import time
wlan=network.WLAN(network.STA_IF)
#wlan.connect('Airtel-E5573-5F67', '5ie294ji')
wlan.connect('isa', 'infinity')


while not wlan.isconnected():
    print("not connected...")
    glow(50,0,0)
    time.sleep_ms(100)
    glow(0,0,0)
    time.sleep_ms(900)


print("connected")
glow(0,0,100)
time.sleep_ms(1000)
glow(0,0,0)



#### MQTT
from umqtt.simple import MQTTClient

server="192.168.43.75"

c=MQTTClient("espclient",server)
c.set_callback(lambda topic,msg : rawglow(msg))
c.connect()
c.subscribe("rgb")

while 1:
    c.wait_msg()



# Bind the socket to the port
server_address = (wlan.ifconfig()[0], 10000)
print ('\nwaiting to receive message on ' + server_address[0])




sock.bind(server_address)


while True:
    print ('\nwaiting to receive message on ' + server_address[0])
    data, address = sock.recvfrom(4096)
    print ('received %s bytes from %s' % (len(data), address))
    print (data)

    if data:
	data=data.decode() #convert b'string' to utf-8 string
	r,g,b=data.strip().split(",")
	r,g,b=int(r),int(g),int(b)
	glow(r,g,b)
        sent = sock.sendto(data, address)
        print ('sent %s bytes back to %s' % (sent, address))





import socket
import json

sock=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

#server_addr=("localhost",8000)
server_addr=server_address
sock.bind(server_addr)

sock.listen(1)

while 1:
    print("Waiting for incoming...")
    connection, client_address = sock.accept()
    data=connection.recv(1000)
    #time.sleep_us(100)
    data+=connection.recv(1000)
    connection.sendall("HTTP/1.1 200 OK\r\nContent-Length:0\r\n\r\n")
    print(data)
    #time.sleep_us(1000)

    connection.close()
    #continue

    data=data.decode()
    data=data.split("\r\n")
    bodystartindex=data.index("")
    data=data[bodystartindex:]
    data="".join(data)


    data=json.loads(data)
    data=data["m2m:sgn"]["m2m:nev"]["m2m:rep"]["m2m:cin"]["con"]
    print(data)

    r,g,b=data.strip().split(",")
    r,g,b=int(r),int(g),int(b)
    glow(r,g,b)

    #print(data)
    #continue

