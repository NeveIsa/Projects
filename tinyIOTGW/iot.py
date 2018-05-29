import sys,time,json,datetime
import requests
import serial
import serial.tools.list_ports as listports
from pprint import pprint


ERROR_LOG_FILE = "log.txt"

DEVICE_NAME="lghalli-msdac"

HOST="http://iotforrailway.com:8080/"
HOST="http://192.168.0.117/"
HOST="http://httpbin.org/get"
DEVLOGS_EP=HOST + "deviceLogs"
DEVLOGS_EP=HOST


def logerror(data):
  print "LOGERROR >> ",data
  with open(ERROR_LOG_FILE,'a+') as g:
    timestamp=datetime.datetime.now().strftime("%d-%m-%Y %T")
    g.write(timestamp+">> GETrequest >> " + str(data) + "\n")


def GETrequest(url,data={}):
  try:
    return requests.get(url,params=data)
  except Exception as e:
    logerror(e)
    return {}

class IOTdevice:
  def __init__(self,name=DEVICE_NAME):
    ports=listports.comports()
    #print ports
    if(len(ports)==0):
      print "No Serial device found...Exiting"
      result=GETrequest(DEVLOGS_EP,{"device":DEVICE_NAME,"error":"No serial port found."})
      pprint (json.loads(result.text))
      sys.exit(1)
    else:
      self.portname=ports[0].device
      print "Found port:",self.portname

      try:
        self.ser=serial.Serial(self.portname)
      except Exception as e:
        logerror(e)
        sys.exit(1)

      result=GETrequest(DEVLOGS_EP,{"device":DEVICE_NAME,"info":"Using serial port %s " % self.portname})
      pprint(json.loads(result.text))


x=IOTdevice()

