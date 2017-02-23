import socket
import datetime
import subprocess,time,sys,os



ignore_flag = len(sys.argv)>2

if not ignore_flag:
	print "Starting Server..."
	subprocess.call("/opt/SEGGER/JLink/JLinkExe -If swd -device nrf52 -speed 4000 -AutoConnect 1 &",shell=True)
	#subprocess.Popen("sh /opt/SEGGER/JLink/JLinkExe -If swd -device nrf52 -speed 4000 -AutoConnect 1")
	time.sleep(1)




# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)


# Bind the socket to the port
server_address = ('localhost', 19021)

print "Connecting to the server @",server_address
#while True:print "ok"
sock.connect(server_address)


time.sleep(1)

past=datetime.datetime.now()

try:
	while True:
		rcv=sock.recv(1000)
                if rcv=="":continue
		now=datetime.datetime.now()
		delta = now-past
		print now,"---",delta,"---",rcv,
		past=now

except KeyboardInterrupt:
	del sock
	os.system("pkill JLinkExe")
	time.sleep(1)
	sys.exit(0)

except Exception as e:
	del sock
	os.system("pkill JLinkExe")
	time.sleep(1)
	sys.exit(0)


