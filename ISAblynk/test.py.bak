import socket
import json

sock=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

server_addr=("localhost",8000)

sock.bind(server_addr)

sock.listen(1)

while 1:
    connection, client_address = sock.accept()
    data=connection.recv(1600)
    connection.close()
    data=data.split("\r\n")
    bodystartindex=data.index("")
    data=data[bodystartindex:]
    data="".join(data)
    data=json.loads(data)
    data=data["m2m:sgn"]["m2m:nev"]["m2m:rep"]["m2m:cin"]["con"]
    print(data)
