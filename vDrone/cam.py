from time import sleep
from picamera import PiCamera

camera = PiCamera()
camera.resolution = (1024, 768)
#camera.start_preview()
# Camera warm-up tim
sleep(2)


import datetime
import sys,os

folder=sys.argv[1]

currentfolder='static/images/%s/' % folder 

if os.path.exists(currentfolder):
  print "Folder already exists:",currentfolder
else:
  print "Creating new folder:",currentfolder
  os.mkdir(currentfolder)
while True:
  time=datetime.datetime.now()
  fname=time.strftime("%d-%m-%y---%H-%M-%S")
  #print fname
  camera.capture(currentfolder + fname+ ".jpg")
  sleep(3)
  
