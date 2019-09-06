try:
	import ISAblynk
except:
	import ESPblynk as ISAblynk

def callback(data):
		print ("Got : ",data)

TOKEN=open("token.txt").read().strip()
print("TOKEN:%s " % TOKEN)
ISAblynk.setup(TOKEN,callback)
