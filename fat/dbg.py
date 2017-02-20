f = open('/dev/sdc1','rb')



spc = 128
bps = 512

bpc = spc * bps

chunk = "ghj"


count = 0


while not chunk=='':
  chunk = f.read(512)
  count = count+512
  if 'iami' in chunk:
    print count
    sec = (count - 641*bps)/bps/spc + 2
    print sec,hex(sec)
    print chunk
    raw_input()
  else:print '.',


