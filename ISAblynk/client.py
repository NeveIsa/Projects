try:
	import ISAblynk
except:
	import ESPblynk as ISAblynk

def callback(data):
		print ("Got : ",data)

TOKEN="cbda5b4ec5f249c68683316f8d84a4e3"
ISAblynk.setup(TOKEN,callback)