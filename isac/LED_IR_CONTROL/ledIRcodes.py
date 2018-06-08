IRcodes={
        "on":"F7C03F",
        "off":"F740BF",
        "up":"F700FF",
        "down":"F7807F",
        "r":"F720DF",
        "g":"F7A05F",
        "b":"F7609F",
        "w":"F7E01F",
        "rg":"F710EF",
        "gr":"F728D7",
        "gb":"F7906F",
        "bg":"F7A857",
        "br":"F750AF",
        "rb":"F76897"
        }


import requests

def tx2isac(cmd):
    if cmd in IRcodes:
        ircode=IRcodes[cmd]
        r=requests.get("http://localhost:8080/IRTX/%s" % ircode)
        print (r.text)
    else:
        print "Invalid command: %s" % cmd


def tx2moisac(cmd,ip):
    if cmd in IRcodes:
        ircode=int(IRcodes[cmd],16)
        r=requests.post("http://{}/rpc/IRTX".format(ip),json={"IRcode":ircode})
        print (r.text)
    else:
        print "Invalid command: %s" % cmd



if __name__=="__main__":
    import sys
    if len(sys.argv)>1:
        ircode=sys.argv[1]
        print IRcodes[ircode],int(IRcodes[ircode],16)
        #tx2isac(ircode)
        import os
        os.system("./findMOSIP.sh")
        with open("MOS_IP",'r') as f:
            mosIP=f.readline().strip()
        tx2moisac(ircode,mosIP)
    else:
        print IRcodes


