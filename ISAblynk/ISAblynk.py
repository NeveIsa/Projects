import socket,time

class MSGTYPE:
	RSP    = 0
	LOGIN  = 2
	PING   = 6
	BRIDGE = 15
	HW     = 20

class MSGSTATUS:
	OK = 200

class blynkDevice:
	server='blynk-cloud.com'
	port=8442
	sock=None
	token=None
	msgID=0

	connected=False

	def connect(self):
		self.msgID=0
		try:
			self.sock=socket.create_connection((self.server,self.port),timeout=10)
			if self.sock:
				print "Connected..."
				return True
			else:
				print "Could not connect to server..."
				self.connected=False
				return False
		except Exception as e:
			print "Exception in connecting to server",e
			self.connected=False

	def frame(self,msgtype,msg,msgID=None):
		if not msgID:
			self.msgID = self.msgID+1
			msgID=self.msgID
		msglen = len(msg)
		payload = chr(msgtype) + chr(msgID/256) + chr(msgID%256) + chr(msglen/256) + chr(msglen%256)
		payload = payload + msg
		#print payload
		return payload

	def deframe(self,payload):
		if len(payload)<5:
			print "deframe payload header is less than 5 bytes..error"
			return (0,0,0)
		try:
			msgtype=ord(payload[0])
			msgID=ord(payload[1])*256 + ord(payload[2])
			msglen=ord(payload[3])*256 + ord(payload[4])
			return (msgtype,msgID,msglen)
		except Exception as e:
			print "deframe exception",e
			return (0,0,0)


	def tx(self,payload):
		try:
			self.sock.sendall(payload)
		except Exception as e:
			print e
			self.connected=False

	def rx(self,length):
		rcv = ""
		l=0
		try:
			while True:
				r = self.sock.recv(length-l)
				rcv = rcv + r
				l = len(rcv)
				if l<length:
					pass
				else:
					break
		except socket.timeout:
			rcv=""
		except Exception as e:
			print "rx exception",e
			rcv=""
			self.connected=False
		return rcv

	def rxFrame(self):
		response = self.rx(5)
		if not response:
			return None,None
		response=self.deframe(response)
		data=self.rx(response[-1]) #response[-1] contains the data
		payload=self.frame(MSGTYPE.RSP,"",msgID=response[1]) #ACK back
		self.tx(payload)
		return response,data


	def auth(self,token=False):
		if not token:
			token = self.token
		else:
			self.token = token

		payload=self.frame(MSGTYPE.LOGIN,token)

		try:
			self.tx(payload)
			response = self.rx(5)
			response=self.deframe(response)
			if response[-1]==MSGSTATUS.OK:
				print "Authenticated..."
				self.connected=True
			else:
				print "Authentication failed"
				self.connected=False

		except Exception as e:
			print "Auth exception",e
			self.connected=False

	def ping(self):
		payload = self.frame(MSGTYPE.PING,"")
		print "Ping..."
		self.tx(payload)
		response = self.rx(5)
		response = self.deframe(response)
		if not response:
			print "Ping failed..."
			self.connected=False
		if response==(MSGTYPE.RSP,self.msgID,MSGSTATUS.OK):
			print "...Pong",self.msgID


	def unpack_command(self,cmd):
		#print cmd
		cmd = cmd.split('\0') #split into
		pinType=cmd.pop(0)
		pinNo=cmd.pop(0)
		pinValue=cmd.pop(0)
		return (pinType,pinNo,pinValue)


	def manage(self,callback=None):
		try:
			if not self.connected:
				print "(Re)connecting..."
				return self.connect() and self.auth()
			else:
				response,data=self.rxFrame()
				#print response,data
				if response:
					if not callback:
						print response
				else:
					self.ping()
					return False
					
				if response[0]==MSGTYPE.HW or response[0]==MSGTYPE.BRIDGE:
					pass
				else:
					print "Unknown Message/Command received..."
					return False

				if data:
					result = self.unpack_command(data)
					if callback:
						callback(result)
					else:
						print result
					return result
				else:
					return False

		except Exception as e:
			print "Exception in manage",e



def setup(token):
	dev = blynkDevice()
	dev.connect()
	dev.auth(TOKEN)
	dev.ping()
	
	def myprint(x):
		print x

	try:
		while 1:
			dev.manage(myprint)
	except KeyboardInterrupt:
		print "Closing connection..."
		dev.sock.close()
		print "Graceful shutdown..."




if __name__=="__main__":

	def callback(data):
		print "Got : ",data

	TOKEN="b7f5c2c4af7940929d90fb48b9ed1554"
	setup(TOKEN)
	



	


