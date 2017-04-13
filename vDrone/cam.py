from time import sleep
from picamera import PiCamera

camera = PiCamera()
camera.resolution = (1024, 768)
#camera.start_preview()
# Camera warm-up tim
sleep(2)


import datetime



while True:
  time=datetime.datetime.now()
  fname=time.strftime("%d-%m-%y---%H-%M-%S")
  #print fname
  camera.capture('static/images/' +fname+ ".jpg")
  sleep(3)
  
