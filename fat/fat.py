f = open("/dev/sdc1",'rb')

vbr = f.read(512)


vbr = map(ord,vbr)

bps = 512

spc = vbr[13]
resvS = vbr[14] + vbr[15]*256
nfat = vbr[16]

nroote = vbr[17] + vbr[18]*256


spf = vbr[22] + vbr[23]*256


nhidden = vbr[28] + vbr[29]*256 + vbr[30]*256*256 + vbr[31]*256*256*256

print spc,"spc"
print resvS,"resvC"
print nfat,"nfat"
print nroote,'nroot'
print spf,'spf'
print nhidden,'nhidden'






#f = open('/dev/sdc1','rb')

f.seek(512,0)
FAT1 = f.read(spf*bps)

FAT2 = f.read(spf*bps)

print FAT1 == FAT2

FAT = map(ord,FAT1)

#print FAT[:16]


for x in range(30):
  x=f.read(32)
  print x
  print map(ord,x) 


exit()

'''
g = open('/dev/sdc1','wb')

g.seek(512+ 2*spf*bps + 3*32)

g.write('C       TXT')
g.write('\0'*15)
g.write(chr(10))
g.write(chr(0))
#size
g.write(chr(5))
g.write('\0'*3)
g.close()


g=open('/dev/sdc1','wb')
g.seek(512+ 2*spf*bps + nroote*32 + 8*bps*spc)
g.write('world')
g.close()
'''


