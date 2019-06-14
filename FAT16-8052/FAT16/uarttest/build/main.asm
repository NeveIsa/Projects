;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _SL_getcmd
	.globl _UartScanLine
	.globl _UartScanByte
	.globl _UartPrintNumber
	.globl _UartWriteNumbers
	.globl _UartWriteNumber
	.globl _UartPrint
	.globl _UartReadBuff
	.globl _UartWriteBuff
	.globl _UartWrite
	.globl _UartRead
	.globl _UartReadReady
	.globl _UartBegin
	.globl _dec2hexNibble
	.globl _hex2dec
	.globl _hexNibble2dec
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _UartReadBuff_PARM_2
	.globl _UartWriteBuff_PARM_2
	.globl _hex2dec_PARM_2
	.globl _delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_hex2dec_PARM_2:
	.ds 1
_UartWriteBuff_PARM_2:
	.ds 1
_UartReadBuff_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_main_fname_65536_45:
	.ds 11
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'hexNibble2dec'
;------------------------------------------------------------
;nibble                    Allocated to registers r7 
;------------------------------------------------------------
;	uart.h:6: unsigned char hexNibble2dec(char nibble)
;	-----------------------------------------
;	 function hexNibble2dec
;	-----------------------------------------
_hexNibble2dec:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
	cjne	r7,#0x30,00139$
00139$:
	jc	00110$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00110$
	mov	ar6,r7
	mov	a,r6
	add	a,#0xd0
	mov	dpl,a
	ret
00110$:
;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
	cjne	r7,#0x41,00142$
00142$:
	jc	00106$
	mov	a,r7
	add	a,#0xff - 0x46
	jc	00106$
	mov	ar6,r7
	mov	a,#0xc9
	add	a,r6
	mov	dpl,a
	ret
00106$:
;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
	cjne	r7,#0x61,00145$
00145$:
	jc	00102$
	mov	a,r7
	add	a,#0xff - 0x66
	jc	00102$
	mov	a,#0xa9
	add	a,r7
	mov	dpl,a
	ret
00102$:
;	uart.h:11: else return 0;
	mov	dpl,#0x00
;	uart.h:12: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hex2dec'
;------------------------------------------------------------
;LSnibble                  Allocated with name '_hex2dec_PARM_2'
;MSnibble                  Allocated to registers r7 
;------------------------------------------------------------
;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
;	-----------------------------------------
;	 function hex2dec
;	-----------------------------------------
_hex2dec:
;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
	lcall	_hexNibble2dec
	mov	a,dpl
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	dpl,_hex2dec_PARM_2
	push	ar7
	lcall	_hexNibble2dec
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	add	a,r7
	mov	dpl,a
;	uart.h:18: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec2hexNibble'
;------------------------------------------------------------
;dec                       Allocated to registers r7 
;------------------------------------------------------------
;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
;	-----------------------------------------
;	 function dec2hexNibble
;	-----------------------------------------
_dec2hexNibble:
;	uart.h:24: if(dec>15) return 'X'; // X for invalid
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x0f
	jnc	00102$
	mov	dpl,#0x58
	ret
00102$:
;	uart.h:26: if(dec<=9) return 0x30 + dec;
	mov	a,r7
	add	a,#0xff - 0x09
	jc	00104$
	mov	ar6,r7
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	ret
00104$:
;	uart.h:27: else return 'A' + dec - 10;
	mov	a,#0x37
	add	a,r7
	mov	dpl,a
;	uart.h:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartBegin'
;------------------------------------------------------------
;	uart.h:33: void UartBegin()
;	-----------------------------------------
;	 function UartBegin
;	-----------------------------------------
_UartBegin:
;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
	mov	_TMOD,#0x20
;	uart.h:39: TH1 = 0XF3; //2400
	mov	_TH1,#0xf3
;	uart.h:40: SCON = 0X50;
	mov	_SCON,#0x50
;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
	orl	_PCON,#0x80
;	uart.h:44: TR1 = 1; //START TIMER
;	assignBit
	setb	_TR1
;	uart.h:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartReadReady'
;------------------------------------------------------------
;	uart.h:47: unsigned char UartReadReady()
;	-----------------------------------------
;	 function UartReadReady
;	-----------------------------------------
_UartReadReady:
;	uart.h:49: if(RI==0)return 0; //not received any char
	jb	_RI,00102$
	mov	dpl,#0x00
	ret
00102$:
;	uart.h:50: else return 1; //received and ready
	mov	dpl,#0x01
;	uart.h:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartRead'
;------------------------------------------------------------
;value                     Allocated to registers 
;------------------------------------------------------------
;	uart.h:53: unsigned char UartRead()
;	-----------------------------------------
;	 function UartRead
;	-----------------------------------------
_UartRead:
;	uart.h:56: while(RI==0); //wait till RX
00101$:
;	uart.h:57: RI=0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	uart.h:58: value = SBUF;
	mov	dpl,_SBUF
;	uart.h:59: return value;
;	uart.h:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartWrite'
;------------------------------------------------------------
;value                     Allocated to registers 
;------------------------------------------------------------
;	uart.h:63: void UartWrite(unsigned char value)
;	-----------------------------------------
;	 function UartWrite
;	-----------------------------------------
_UartWrite:
	mov	_SBUF,dpl
;	uart.h:66: while(TI==0); // wait till TX
00101$:
;	uart.h:67: TI=0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	uart.h:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartWriteBuff'
;------------------------------------------------------------
;length                    Allocated with name '_UartWriteBuff_PARM_2'
;p                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
;	-----------------------------------------
;	 function UartWriteBuff
;	-----------------------------------------
_UartWriteBuff:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	uart.h:73: for (i=0;i<length;i++)
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,_UartWriteBuff_PARM_2
	jnc	00105$
;	uart.h:75: UartWrite(p[i]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_UartWrite
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	uart.h:73: for (i=0;i<length;i++)
	inc	r4
	sjmp	00103$
00105$:
;	uart.h:77: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartReadBuff'
;------------------------------------------------------------
;length                    Allocated with name '_UartReadBuff_PARM_2'
;p                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
;	-----------------------------------------
;	 function UartReadBuff
;	-----------------------------------------
_UartReadBuff:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	uart.h:82: for (i=0;i<length;i++)
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,_UartReadBuff_PARM_2
	jnc	00105$
;	uart.h:84: p[i] = UartRead();
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_UartRead
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r0
	lcall	__gptrput
;	uart.h:82: for (i=0;i<length;i++)
	inc	r4
	sjmp	00103$
00105$:
;	uart.h:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartPrint'
;------------------------------------------------------------
;p                         Allocated to registers 
;------------------------------------------------------------
;	uart.h:88: void UartPrint(unsigned char *p)
;	-----------------------------------------
;	 function UartPrint
;	-----------------------------------------
_UartPrint:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	uart.h:90: do
00101$:
;	uart.h:92: UartWrite(*p);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_UartWrite
	pop	ar5
	pop	ar6
	pop	ar7
;	uart.h:93: }while(*(++p)!=0);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00101$
;	uart.h:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartWriteNumber'
;------------------------------------------------------------
;format                    Allocated to stack - _bp -3
;num                       Allocated to registers r7 
;msd                       Allocated to registers r4 
;lsd                       Allocated to registers r6 
;extra                     Allocated to registers r3 
;------------------------------------------------------------
;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
;	-----------------------------------------
;	 function UartWriteNumber
;	-----------------------------------------
_UartWriteNumber:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	uart.h:104: if(format==HEX)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
;	uart.h:106: msd = num/16;
	jnz	00104$
	mov	ar5,r7
	mov	r6,a
	mov	__divsint_PARM_2,#0x10
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
;	uart.h:107: lsd = num%16;
	anl	ar5,#0x0f
;	uart.h:108: UartWrite(dec2hexNibble(msd));
	mov	dpl,r3
	push	ar5
	lcall	_dec2hexNibble
	lcall	_UartWrite
	pop	ar5
;	uart.h:109: UartWrite(dec2hexNibble(lsd));
	mov	dpl,r5
	lcall	_dec2hexNibble
	lcall	_UartWrite
	sjmp	00106$
00104$:
;	uart.h:112: else if(format==DEC)
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	cjne	@r0,#0x01,00106$
;	uart.h:114: msd = num/100; // 100s place
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x64
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	uart.h:115: extra = (num%100)/10; //tenth place
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	push	ar4
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r3,dpl
	pop	ar4
	pop	ar6
	pop	ar7
;	uart.h:116: lsd = num%10;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	push	ar4
	push	ar3
	lcall	__modsint
	mov	r6,dpl
	pop	ar3
	pop	ar4
;	uart.h:118: UartWrite(msd + 0x30);
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	push	ar6
	push	ar3
	lcall	_UartWrite
	pop	ar3
;	uart.h:119: UartWrite(extra + 0x30);
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	lcall	_UartWrite
	pop	ar6
;	uart.h:120: UartWrite(lsd + 0x30);
	mov	a,#0x30
	add	a,r6
	mov	dpl,a
	lcall	_UartWrite
00106$:
;	uart.h:123: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartWriteNumbers'
;------------------------------------------------------------
;length                    Allocated to stack - _bp -3
;format                    Allocated to stack - _bp -4
;delimiter                 Allocated to stack - _bp -5
;p                         Allocated to registers 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
;	-----------------------------------------
;	 function UartWriteNumbers
;	-----------------------------------------
_UartWriteNumbers:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	uart.h:129: for(i=0;i<length;i++,p++)
	mov	r4,#0x00
00103$:
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	jnc	00105$
;	uart.h:131: UartWriteNumber(*p,format);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	dpl,r3
	lcall	_UartWriteNumber
	dec	sp
;	uart.h:132: UartWrite(delimiter);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	lcall	_UartWrite
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	uart.h:129: for(i=0;i<length;i++,p++)
	inc	r4
	sjmp	00103$
00105$:
;	uart.h:134: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartPrintNumber'
;------------------------------------------------------------
;n                         Allocated to stack - _bp +1
;digit                     Allocated to registers r2 r5 r6 r7 
;i                         Allocated to registers r3 
;j                         Allocated to registers r4 
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
;	-----------------------------------------
;	 function UartPrintNumber
;	-----------------------------------------
_UartPrintNumber:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	uart.h:154: for(i=8;i>0;i--)
	mov	r3,#0x08
00106$:
;	uart.h:156: digit=n;
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	uart.h:157: for(j=1;j<i;j++) digit/=10;
	mov	r4,#0x01
00104$:
	clr	c
	mov	a,r4
	subb	a,r3
	jnc	00101$
	push	ar3
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar4
	push	ar3
	lcall	__divulong
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar3
	pop	ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	inc	r4
	pop	ar3
	sjmp	00104$
00101$:
;	uart.h:158: UartWrite(0x30 + digit%10);
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar3
	lcall	__modulong
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_UartWrite
	pop	ar3
;	uart.h:154: for(i=8;i>0;i--)
	djnz	r3,00106$
;	uart.h:160: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartScanByte'
;------------------------------------------------------------
;unibble                   Allocated to registers r7 
;lnibble                   Allocated to registers r6 
;------------------------------------------------------------
;	uart.h:163: uint8_t UartScanByte() __reentrant
;	-----------------------------------------
;	 function UartScanByte
;	-----------------------------------------
_UartScanByte:
;	uart.h:167: while(UartReadReady()) UartRead(); //flush
00101$:
	lcall	_UartReadReady
	mov	a,dpl
	jz	00103$
	lcall	_UartRead
	sjmp	00101$
00103$:
;	uart.h:168: UartPrint("Number in Hex - eg(FE for 254): ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_UartPrint
;	uart.h:170: unibble = UartRead();
	lcall	_UartRead
;	uart.h:171: UartWrite(unibble);
	mov  r7,dpl
	push	ar7
	lcall	_UartWrite
;	uart.h:172: lnibble = UartRead();
	lcall	_UartRead
;	uart.h:173: UartWrite(lnibble);
	mov  r6,dpl
	push	ar6
	lcall	_UartWrite
;	uart.h:175: UartWrite('\n');
	mov	dpl,#0x0a
	lcall	_UartWrite
	pop	ar6
	pop	ar7
;	uart.h:177: return hex2dec(unibble,lnibble);
	mov	_hex2dec_PARM_2,r6
	mov	dpl,r7
;	uart.h:178: }
	ljmp	_hex2dec
;------------------------------------------------------------
;Allocation info for local variables in function 'UartScanLine'
;------------------------------------------------------------
;maxLength                 Allocated to stack - _bp -3
;dst                       Allocated to stack - _bp +1
;recv                      Allocated to registers r2 
;count                     Allocated to registers r4 
;------------------------------------------------------------
;	uart.h:180: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
;	-----------------------------------------
;	 function UartScanLine
;	-----------------------------------------
_UartScanLine:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	uart.h:182: uint8_t recv,count=0;
	mov	r4,#0x00
;	uart.h:184: while(UartReadReady()) UartRead(); //flush
00101$:
	push	ar4
	lcall	_UartReadReady
	mov	a,dpl
	pop	ar4
	jz	00118$
	push	ar4
	lcall	_UartRead
	pop	ar4
;	uart.h:186: while(1)
	sjmp	00101$
00118$:
	mov	r3,#0x00
00110$:
;	uart.h:189: recv=UartRead();
	push	ar4
	push	ar3
	lcall	_UartRead
;	uart.h:190: UartWrite(recv);
	mov  r2,dpl
	push	ar2
	lcall	_UartWrite
	pop	ar2
	pop	ar3
	pop	ar4
;	uart.h:191: if(recv == '\n') 
	cjne	r2,#0x0a,00105$
;	uart.h:193: *(dst+count)=0; //add string terminate
	mov	r0,_bp
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	uart.h:194: break;
	sjmp	00111$
00105$:
;	uart.h:196: else *(dst+count)=recv;
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	uart.h:198: if(count==maxLength) 
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	cjne	a,ar3,00108$
;	uart.h:200: *(dst+count)=0; // terminate string.
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	uart.h:201: break;
	sjmp	00111$
00108$:
;	uart.h:204: count++;
	inc	r3
	mov	ar4,r3
	sjmp	00110$
00111$:
;	uart.h:208: return count;
	mov	dpl,r4
;	uart.h:210: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SL_getcmd'
;------------------------------------------------------------
;cmd                       Allocated with name '_SL_getcmd_cmd_65536_42'
;------------------------------------------------------------
;	serialloader.h:8: void SL_getcmd()
;	-----------------------------------------
;	 function SL_getcmd
;	-----------------------------------------
_SL_getcmd:
;	serialloader.h:11: while(UartReadReady()) UartRead(); //flush 
00101$:
	lcall	_UartReadReady
	mov	a,dpl
	jz	00104$
	lcall	_UartRead
	sjmp	00101$
00104$:
;	serialloader.h:17: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;fname                     Allocated with name '_main_fname_65536_45'
;------------------------------------------------------------
;	main.c:15: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:19: __idata unsigned char fname[11]="world.txt\n";
	mov	r0,#_main_fname_65536_45
	mov	@r0,#0x77
	mov	r0,#(_main_fname_65536_45 + 0x0001)
	mov	@r0,#0x6f
	mov	r0,#(_main_fname_65536_45 + 0x0002)
	mov	@r0,#0x72
	mov	r0,#(_main_fname_65536_45 + 0x0003)
	mov	@r0,#0x6c
	mov	r0,#(_main_fname_65536_45 + 0x0004)
	mov	@r0,#0x64
	mov	r0,#(_main_fname_65536_45 + 0x0005)
	mov	@r0,#0x2e
	mov	r0,#(_main_fname_65536_45 + 0x0006)
	mov	@r0,#0x74
	mov	r0,#(_main_fname_65536_45 + 0x0007)
	mov	@r0,#0x78
	mov	r0,#(_main_fname_65536_45 + 0x0008)
	mov	@r0,#0x74
	mov	r0,#(_main_fname_65536_45 + 0x0009)
	mov	@r0,#0x0a
	mov	r0,#(_main_fname_65536_45 + 0x000a)
	mov	@r0,#0x00
;	main.c:22: UartBegin();
	lcall	_UartBegin
;	main.c:24: while(1)
00102$:
;	main.c:26: UartPrint("hello.txt\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_UartPrint
;	main.c:27: UartPrint(fname);
	mov	dptr,#_main_fname_65536_45
	mov	b,#0x40
	lcall	_UartPrint
;	main.c:28: delay();
	lcall	_delay
;	main.c:33: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:35: void delay(void)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	main.c:38: for(i=0;i<0xff;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	main.c:39: for(j=0;j<0xff;j++);
	mov	r4,#0xff
	mov	r5,#0x00
00105$:
	mov	a,r4
	add	a,#0xff
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	mov	ar4,r2
	mov	ar5,r3
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	main.c:38: for(i=0;i<0xff;i++)
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
	clr	c
	mov	a,r6
	subb	a,#0xff
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
;	main.c:40: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Number in Hex - eg(FE for 254): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "hello.txt"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
