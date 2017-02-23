import socket


sock = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

addr = ("localhost",7777)
sock.connect(addr)
sock.sendall("GET / HTTP/1.1\r\nHost:localhost\r\n\r\n")
import time
time.sleep(2)
#exit()

while True:
	r=sock.recv(100)
        if r=="":break
	else:print r,
