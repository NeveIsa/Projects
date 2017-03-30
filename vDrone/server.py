import web

urls = ("/start", "start",
       "/stop","stop")
app = web.application(urls, globals())

process=0

import subprocess

class start:
  #global sock
  def GET(self):
    global process
    #sock.sendall("start\n")
    process=subprocess.Popen(["python","cam.py"])
    return 'started'

class stop:
  #global sock
  def GET(self):
    global process
    #sock.sendall("stop\n")
    try:
      process.kill()
      status="stopped"
    except:
      status= "Process not started yet"
    return status

if __name__ == "__main__":
    #import socket
    #global sock
    #sock = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    #sock.connect(("localhost",7777))
    #sock.sendall("Connection...\n")
    app.run()
