import ISAC
isac=ISAC.isac

ISAC_FUNCS={"IRTX":"HEX (32 bits/4 bytes max)"}

import web
import json

urls = (
  '/', 'index',
  '/IRTX/(.*)','IRTX'
)



class index:
    def GET(self):
        web.header('Content-Type', 'application/json')
        return json.dumps({"FUNCS":ISAC_FUNCS})


class IRTX:
    def GET(self,ircode): 
        web.header('Content-Type', 'application/json')
        ircode = int(ircode,16)
        reply=isac.IRTX(ircode)
        return json.dumps(reply)

if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()
