CC=sdcc

genhex: clean main
	cd build && packihx *.ihx > build.hex && objcopy --input-target=ihex --output-target=binary build.hex build.bin

connect:
	sudo chown sampad:sampad /dev/ttyUSB0
	picocom /dev/ttyUSB0 -b4800 --imap lfcrlf

main:
	cp  -r src/* build/
	cd build && $(CC) *.c


load:	genhex 
	avrdude -V -C avrdude8052conf/8052.conf -c usbasp -p 89s52 -U flash:w:build/main.ihx

mockload:	genhex 
	avrdude -n -V -C avrdude8052conf/8052.conf -c usbasp -p 89s52 -U flash:w:build/main.ihx


test:	genhex 
	avrdude -C avrdude8052conf/8052.conf -c usbasp -p 89s52 -U flash:w:8052.hex

reset:
	avrdude -C avrdude8052conf/8052.conf -c usbasp -p 89s52	

clean:
	cd build && touch xyz.xyz && rm -r *
