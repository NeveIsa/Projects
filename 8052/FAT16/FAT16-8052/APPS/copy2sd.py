#!/usr/bin/python3
import os,sys
from shutil import copyfile

if len(sys.argv)<2:
    print("USAGE:\n\t" + sys.argv[0] + " " + "SD_CARD_VOLUME_MOUNT_DIRECTORY (e.g: /mnt/sdcard)")
    exit()

SD_VOLUME_PATH = sys.argv[1]

if not os.path.exists(SD_VOLUME_PATH) or not os.path.isdir(SD_VOLUME_PATH):
    print("Path doesn't exist or is not a directory: {}".format(SD_VOLUME_PATH))


apps=os.listdir(".")

for app in apps:
    if(os.path.isdir(app)):
        appName8dot3 = app[:8]+".bin"
        print ("\nDoing -> {}".format(app)) 

        src=os.path.join(app,"build/build.bin")
        dst=os.path.join(SD_VOLUME_PATH,appName8dot3)
        print ("src: {}".format(src))
        print ("dst: {}".format(dst))

        copyfile(src,dst)

        if(os.path.isfile(dst)):
            print("Done <-")
        else:
            print("ERROR: filenot found at -> {} !!!".format(dst))



