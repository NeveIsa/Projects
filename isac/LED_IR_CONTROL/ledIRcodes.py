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
        print "Invalid command: %s" % mode





if __name__=="__main__":
    import sys
    tx2isac(sys.argv[1])
