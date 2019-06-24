default:
	mkdir -p build
	touch build/xyz.abc
	rm -f build/*
	cp src/* build/
	cd build && gpasm --mpasm-compatible -p p12f508 *.asm


load:	default 
	cd build && mdb prog.txt
	#cd build && sudo java -jar /opt/microchip/mplabx/v5.20/mplab_platform/mplab_ipe/ipecmd.jar -TPPK3 -P12F508 -M -Freset.hex -W4.5
