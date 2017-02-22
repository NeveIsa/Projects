import socket
import datetime

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)


# Bind the socket to the port
server_address = ('localhost', 19021)

sock.connect(server_address)

past=datetime.datetime.now()

while True:
  rcv=sock.recv(1000)
  now=datetime.datetime.now()
  delta = now-past
  print now,"---",delta,"---",rcv,
  past=now
