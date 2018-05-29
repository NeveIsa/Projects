import sys,time,json,datetime
import requests
import serial
import serial.tools.list_ports as listports
from pprint import pprint


ERROR_LOG_FILE = "log.txt"

DEVICE_NAME="lghalli-msdac"

HOST="http://iotforrailway.com:8080/"
HOST="http://iotforrailway.com:3000/"
#HOST="http://192.168.0.117/"
#HOST="http://httpbin.org/"
DEVLOGS_EP=HOST + "deviceLogs"
#DEVLOGS_EP=HOST+"get"
DATA_EP=HOST+"data"

#Serial timeout in seconds
SERIAL_TIMEOUT=10

TIME_FORMAT="%Y/%m/%d %H:%M:%S"

def logerror(data):
  print "LOGERROR >> ",data
  with open(ERROR_LOG_FILE,'a+') as g:
    timestamp=datetime.datetime.now().strftime(TIME_FORMAT)
    g.write(timestamp+">> GETrequest >> " + str(data) + "\n")

  time.sleep(2)


def GETrequest(url,data={}):
  try:
    return requests.get(url,params=data)
  except Exception as e:
    logerror(e)
    return False

class ISAdevice:
  def __init__(self,name=DEVICE_NAME):

    self.portConnection=False

    ports=listports.comports()
    #print ports
    if(len(ports)==0):
      print time.strftime(TIME_FORMAT),"No Serial device found... Returning None"
      result=GETrequest(DEVLOGS_EP,{"device":DEVICE_NAME,"error":"No serial port found."})
      #pprint (json.loads(result.text))
      if result and result.status_code==requests.codes.ok:
        pprint (result.text)
      else:
        print "FAILED... HTTP result: %s" % result
        if result: print "HTTP STATUS: %s" % result.status_code
      #sys.exit(1)
      time.sleep(2)
      return
    else:
      self.portname=ports[0].device
      print "Found port:",self.portname

      try:
        self.ser=serial.Serial(self.portname,baudrate=9600,timeout=SERIAL_TIMEOUT)
        self.portConnection=True
      except Exception as e:
        logerror(e)
        #sys.exit(1)
        return False

      result=GETrequest(DEVLOGS_EP,{"device":DEVICE_NAME,"info":"Using serial port %s " % self.portname})
      #pprint(json.loads(result.text))
      if result and result.status_code==requests.codes.ok:
        pprint (result.text)
      else:
        print "FAILED... HTTP result: %s" % result
        if result: print "HTTP STATUS: %s" % result.status_code


  def readdata(self,start="aa",end="55"):
    try:
      # Check Port is connected
      if not self.portConnection: return False

      data=[]
      startCapture=False

      while True:

        databyte=self.ser.read(1)

        if databyte=="":
          to_errorMsg = "Serial Read Timeout for %s seconds" % SERIAL_TIMEOUT
          logerror(to_errorMsg)
          GETrequest(DEVLOGS_EP,{"device":DEVICE_NAME,"error":to_errorMsg})
          time.sleep(5)
          continue

        databyte=databyte.encode("hex")

	if databyte==start:
          startCapture=True
          continue
	elif databyte==end:
          break

        if startCapture:
          data.append(databyte)

      return data
    except Exception as e:
      logerror(e)
      # Return False if any error in Serial Port
      return False

  def send2server(self,escaped_data):
    payload={
	      "deviceID":DEVICE_NAME,
              "location":DEVICE_NAME,
	      "msdac_time":time.strftime(TIME_FORMAT),
              "msdac_data": escaped_data
	    }
    try:
      result=requests.post(DATA_EP,json=payload)
      #pprint (json.loads(result.text))
      if result and result.status_code==requests.codes.ok:
        print "| Sent: OK |",time.strftime("%T %D")
      else:
        print "| Sent: FAIL |",time.strftime("%T %D")
        print "HTTP result: %s" % result
        if result: print "HTTP STATUS: %s" % result.status_code

    except Exception as e:
      logerror(e)


  def pipe(self):
    while True:
      try:
        data=self.readdata()

        # Failsafe for Serial device disconnect
        # If any error in Serial read, break loop and return False
        if data==False:
          return False

        data=" ".join(data)
        self.send2server(data)
      except Exception as e:
        logerror(e)




# =============== LOGIC FOR FAILSAFE AND HOTPLUG =====================#

def safetyPIPE():
  while True:
    try:
      dev=ISAdevice()
      dev.pipe()
    except Exception as e:
      logerror(e)



# =============== LOGIC FOR FAILSAFE AND HOTPLUG =====================#

if __name__=="__main__":

  print "="*7 + " FAILSAFE DATA PIPING ACTIVE " + "="*7
  safetyPIPE()
