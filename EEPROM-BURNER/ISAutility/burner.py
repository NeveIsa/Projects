import serial
import time
import sys
import platform
import serial.tools.list_ports
from dataclasses import dataclass


@dataclass
class AT28C64:
    disableseq = zip(
        [0x1555, 0x0AAA, 0x1555, 0x1555, 0x0AAA, 0x1555],
        [0xAA, 0x55, 0x80, 0xAA, 0x55, 0x20],
    )

    enableseq = zip([0x1555, 0x0AAA, 0x1555], [0xAA, 0x55, 0xA0])


print("ISA EEPROM UTILITY - V0.1")

if platform.system() in ["Linux", "Windows"]:
    _ports = serial.tools.list_ports.comports()
else:
    pass

if len(_ports) == 0:
    print("No serial ports found...")
    exit()
elif len(_ports) == 1:
    port = _ports[0].device
else:
    print("Available Serial Ports:")
    for i in range(len(_ports)):
        print("{} : {}".format(i, _ports[i].device))
    print("Select Serial Port No. : ", end="")
    port = _ports[int(input())].device

baud = 460800
tout = 3  # secs
print("Opening > port:", port, "baudrate:", baud, "timeout:", tout)
ser = serial.Serial(port, baudrate=baud, timeout=3)
ser.read(ser.inWaiting())
time.sleep(0.5)

_delay = 0.001


def BLgetVersion():
    ser.read(ser.inWaiting())
    ser.write(b"V")
    time.sleep(_delay * 5)
    return ser.readline().decode().strip()


def BLdisableEEPROMWriteProtection(EEPROM):
    ser.read(ser.inWaiting())
    ser.write(b"E")
    time.sleep(_delay * 5)
    for a, d in EEPROM.disableseq:
        BLwrite(a, d, swp=False, EEPROM=EEPROM)
    time.sleep(_delay * 5)
    ser.write(b"D")
    print("Disabled EEPROM software write protection")
    return True


def BLenableEEPROMWriteProtection(EEPROM):
    ser.read(ser.inWaiting())
    ser.write(b"E")
    time.sleep(_delay * 5)
    for a, d in EEPROM.enableseq:
        BLwrite(a, d, swp=False, EEPROM=EEPROM)
    time.sleep(_delay * 5)
    ser.write(b"D")
    print("Enabled EEPROM write protection")
    return True


def BLwrite(addr, data, swp, EEPROM):
    ser.read(ser.inWaiting())  # flush

    addrMSB = addr >> 8 & 0xFF
    addrLSB = addr & 0xFF
    # print(addrMSB,addrLSB,data,"\t",chr(data))

    # SDP sequence
    if swp == True:
        for d, a in EEPROM.enableseq:
            BLwrite(a, d, swp=False, EEPROM=EEPROM)

    cmd = b"W" + bytes([addrMSB, addrLSB, data])
    ser.write(cmd)
    time.sleep(_delay)

    # listen for W reply
    if ser.read().decode() == "W":
        pass
    else:
        print("Burning failed...")


def BLread(addr):
    addrMSB = addr >> 8 & 0xFF
    addrLSB = addr & 0xFF

    cmd = b"R" + bytes([addrMSB, addrLSB])
    ser.write(cmd)
    # time.sleep(_delay)

    data = ord(ser.read())
    # print(addrMSB,addrLSB,data,"\t",chr(data))

    return data


########################### HIGH LEVEL METHODS #############################


def burnImage(filename, swp, EEPROM):
    print("\n\nBurning...")
    ser.write(b"E")
    with open(filename, "rb") as f:
        fileInBinary = f.read()
    fsize = len(fileInBinary)
    # print(f"Will write {fsize} bytes")
    # time.sleep(1)
    for indx in range(fsize):
        BLwrite(indx, fileInBinary[indx], swp=swp, EEPROM=EEPROM)
        pbar = int((indx + 1) * 50 / fsize)
        print(
            "\r",
            "[",
            "#" * pbar,
            " " * (50 - pbar),
            "] [",
            indx + 1,
            "/",
            fsize,
            "]",
            end="",
        )

    ser.write(b"D")


def verifyImage(filename):
    print("\n\nVerifying...")
    time.sleep(0.5)
    ser.write(b"E")
    with open(filename, "rb") as f:
        fileInBinary = f.read()
    fsize = len(fileInBinary)
    for indx in range(fsize):
        r = BLread(indx)
        if r == fileInBinary[indx]:
            pbar = int((indx + 1) * 50 / fsize)
            print(
                "\r",
                "[",
                "#" * pbar,
                " " * (50 - pbar),
                "] [",
                indx + 1,
                "/",
                fsize,
                "]",
                end="",
            )
        else:
            print("\nVerification Error...")
            print(
                "addr:{} | file_val:{} | eeprom_val:{}".format(
                    indx, fileInBinary[indx], r
                )
            )
            if indx == 2730:
                print("-----" * 15)
                print(
                    "Verification failed exactly at address: ",
                    indx,
                    "[ hex: ",
                    hex(indx),
                    "]",
                )
                print(
                    "This is most likely because this is one of the special addresses used for EEPROM Write Protection."
                )
                print("Only ATMEL EEPROMs support this Write Protection Feature.")
                print("\nIf using other EEPROMs or a RAM chip -")
                print(
                    "Try Disabling EEPROM Write Protection by passing --dwp as the final argument to this script."
                )
                print("-----" * 15)
            break
    print("")
    ser.write(b"D")


def dumpImage(filename):
    print("\n\nDumping...")
    eepsizes = [2**x for x in range(0, 7)]
    for enum, esize in enumerate(eepsizes):
        print(f"id:{enum} {esize}k")
    eepsize = eepsizes[int(input("select eeprom size (by id number): "))] * 1024

    ser.write(b"E")
    with open(filename, "wb") as g:
        for addr in range(eepsize):
            b = BLread(addr)
            g.write(bytes([b]))

            pbar = int((addr + 1) * 50 / eepsize)
            print(
                "\r",
                "[",
                "#" * pbar,
                " " * (50 - pbar),
                "] [",
                addr + 1,
                "/",
                eepsize,
                "]",
                end="",
            )

    ser.write(b"D")


########################### HIGH LEVEL METHODS #############################

if __name__ == "__main__":
    time.sleep(1)
    print("\nFW-VERSION:", BLgetVersion(),'\n'*2)
    CHIPS = [AT28C64]

    usage = (
        "\nUSAGE:\n\tpython3 "
        + sys.argv[0]
        + " burn/dump filename [ --swp (optional, enable EEPROM Software Write Protection) ]"
    )

    if len(sys.argv) < 3:
        print(usage)
        exit()
    else:
        EEPROM_WRITE_PROTECTION = False
        if len(sys.argv) == 4 and sys.argv[3] == "--swp":
            EEPROM_WRITE_PROTECTION = True
        else:
            print(
                "\nNOTE: EEPROM software write protection is disabled by default. Pass --swp as last argument to enable."
            )

        action = sys.argv[1]
        if action in ["burn", "dump"]:
            filename = sys.argv[2]
        else:
            print(usage)
            exit()

    if action == "burn":
        chip = CHIPS[
            int(
                input(
                    "\n".join([f"{i}: {e.__name__}" for i, e in enumerate(CHIPS)])
                    + "\nSelect eeprom chip no.: "
                )
            )
        ]
        if EEPROM_WRITE_PROTECTION:
            BLenableEEPROMWriteProtection(EEPROM=chip)
        else:
            BLdisableEEPROMWriteProtection(EEPROM=chip)

        # this sleep maybe critical after disabling write protection
        time.sleep(1)

        burnImage(filename, swp=EEPROM_WRITE_PROTECTION, EEPROM=chip)
        verifyImage(filename)
    elif action == "dump":
        dumpImage(filename)
        verifyImage(filename)

    ser.close()
