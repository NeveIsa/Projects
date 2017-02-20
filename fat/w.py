f = open("/dev/sdc1",'rwb')

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


f.seek(512+4,0)
f.write(str(255))

f.seek(512+ spf*bps + 4,0)
f.write(str(255))
f.close()
