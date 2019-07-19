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
	.globl _UartPrint
	.globl _UartReadBuff
	.globl _UartWriteBuff
	.globl _UartWrite
	.globl _UartRead
	.globl _UartReadReady
	.globl _UartBegin
	.globl _delayms
	.globl _exitApp
	.globl _enterApp
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
;Allocation info for local variables in function 'enterApp'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;y                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	enterexitapp.h:13: void enterApp()
;	-----------------------------------------
;	 function enterApp
;	-----------------------------------------
_enterApp:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	enterexitapp.h:21: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
	mov	r6,#0x00
	mov	r7,#0x00
00124$:
	mov	r4,#0xc8
	mov	r5,#0x00
00109$:
	dec	r4
	cjne	r4,#0xff,00178$
	dec	r5
00178$:
	mov	a,r4
	orl	a,r5
	jnz	00109$
	inc	r6
	cjne	r6,#0x00,00180$
	inc	r7
00180$:
	clr	c
	mov	a,r6
	subb	a,#0xfa
	mov	a,r7
	subb	a,#0x00
	jc	00124$
;	enterexitapp.h:22: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
	mov	r6,#0x00
	mov	r7,#0x00
00128$:
	mov	r4,#0xc8
	mov	r5,#0x00
00114$:
	dec	r4
	cjne	r4,#0xff,00182$
	dec	r5
00182$:
	mov	a,r4
	orl	a,r5
	jnz	00114$
	inc	r6
	cjne	r6,#0x00,00184$
	inc	r7
00184$:
	clr	c
	mov	a,r6
	subb	a,#0xfa
	mov	a,r7
	subb	a,#0x00
	jc	00128$
;	enterexitapp.h:25: RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
	anl	_P1,#0xef
;	enterexitapp.h:28: for(x=0;x<250;x++) for(y=0;y<100;y++); 	// inner for loop takes about 3 cycles,
	mov	r6,#0x00
	mov	r7,#0x00
00132$:
	mov	r4,#0x64
	mov	r5,#0x00
00119$:
	dec	r4
	cjne	r4,#0xff,00186$
	dec	r5
00186$:
	mov	a,r4
	orl	a,r5
	jnz	00119$
	inc	r6
	cjne	r6,#0x00,00188$
	inc	r7
00188$:
	clr	c
	mov	a,r6
	subb	a,#0xfa
	mov	a,r7
	subb	a,#0x00
	jc	00132$
;	enterexitapp.h:32: RESET_PORT_8052 |= (1 << RESET_PIN_8052);	
	orl	_P1,#0x10
;	enterexitapp.h:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'exitApp'
;------------------------------------------------------------
;	enterexitapp.h:39: void exitApp()
;	-----------------------------------------
;	 function exitApp
;	-----------------------------------------
_exitApp:
;	enterexitapp.h:42: RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
	anl	_P1,#0xef
;	enterexitapp.h:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayms'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;x                         Allocated to registers r4 r5 
;y                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	delay.h:3: void delayms(unsigned int ms)
;	-----------------------------------------
;	 function delayms
;	-----------------------------------------
_delayms:
	mov	r6,dpl
	mov	r7,dph
;	delay.h:7: for(x=0;x<ms;x++) for(y=0;y<120;y++);
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
	mov	r2,#0x78
	mov	r3,#0x00
00105$:
	mov	a,r2
	add	a,#0xff
	mov	r0,a
	mov	a,r3
	addc	a,#0xff
	mov	r1,a
	mov	ar2,r0
	mov	ar3,r1
	mov	a,r0
	orl	a,r1
	jnz	00105$
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	delay.h:8: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartBegin'
;------------------------------------------------------------
;	main.c:8: void UartBegin()
;	-----------------------------------------
;	 function UartBegin
;	-----------------------------------------
_UartBegin:
;	main.c:12: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
	mov	_TMOD,#0x20
;	main.c:14: TH1 = 0XF3; //2400
	mov	_TH1,#0xf3
;	main.c:15: SCON = 0X50;
	mov	_SCON,#0x50
;	main.c:17: PCON |= 1<<7; //double the baudrate - 4800
	orl	_PCON,#0x80
;	main.c:19: TR1 = 1; //START TIMER
;	assignBit
	setb	_TR1
;	main.c:20: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartReadReady'
;------------------------------------------------------------
;	main.c:22: unsigned char UartReadReady()
;	-----------------------------------------
;	 function UartReadReady
;	-----------------------------------------
_UartReadReady:
;	main.c:24: if(RI==0)return 0; //not received any char
	jb	_RI,00102$
	mov	dpl,#0x00
	ret
00102$:
;	main.c:25: else return 1; //received and ready
	mov	dpl,#0x01
;	main.c:26: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartRead'
;------------------------------------------------------------
;value                     Allocated to registers 
;------------------------------------------------------------
;	main.c:28: unsigned char UartRead()
;	-----------------------------------------
;	 function UartRead
;	-----------------------------------------
_UartRead:
;	main.c:31: while(RI==0); //wait till RX
00101$:
;	main.c:32: RI=0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:33: value = SBUF;
	mov	dpl,_SBUF
;	main.c:34: return value;
;	main.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartWrite'
;------------------------------------------------------------
;value                     Allocated to registers 
;------------------------------------------------------------
;	main.c:38: void UartWrite(unsigned char value)
;	-----------------------------------------
;	 function UartWrite
;	-----------------------------------------
_UartWrite:
	mov	_SBUF,dpl
;	main.c:41: while(TI==0); // wait till TX
00101$:
;	main.c:42: TI=0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	main.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartWriteBuff'
;------------------------------------------------------------
;length                    Allocated with name '_UartWriteBuff_PARM_2'
;p                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	main.c:45: void UartWriteBuff(unsigned char *p, unsigned char length)
;	-----------------------------------------
;	 function UartWriteBuff
;	-----------------------------------------
_UartWriteBuff:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:48: for (i=0;i<length;i++)
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,_UartWriteBuff_PARM_2
	jnc	00105$
;	main.c:50: UartWrite(p[i]);
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
;	main.c:48: for (i=0;i<length;i++)
	inc	r4
	sjmp	00103$
00105$:
;	main.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartReadBuff'
;------------------------------------------------------------
;length                    Allocated with name '_UartReadBuff_PARM_2'
;p                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	main.c:54: void UartReadBuff(unsigned char *p, unsigned char length)
;	-----------------------------------------
;	 function UartReadBuff
;	-----------------------------------------
_UartReadBuff:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:57: for (i=0;i<length;i++)
	mov	r4,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,_UartReadBuff_PARM_2
	jnc	00105$
;	main.c:59: p[i] = UartRead();
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
;	main.c:57: for (i=0;i<length;i++)
	inc	r4
	sjmp	00103$
00105$:
;	main.c:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartPrint'
;------------------------------------------------------------
;p                         Allocated to registers 
;------------------------------------------------------------
;	main.c:63: void UartPrint(unsigned char *p)
;	-----------------------------------------
;	 function UartPrint
;	-----------------------------------------
_UartPrint:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:65: do
00101$:
;	main.c:67: UartWrite(*p);
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
;	main.c:68: }while(*(++p)!=0);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00101$
;	main.c:69: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:75: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:77: UartBegin(); //init uart
	lcall	_UartBegin
;	main.c:78: UartPrint("Hello World from Syamputer :)\t Press 'X' to exit.\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_UartPrint
;	main.c:80: while(1)
00106$:
;	main.c:82: delayms(100);
	mov	dptr,#0x0064
	lcall	_delayms
;	main.c:83: P1 |= 1<<7;
	orl	_P1,#0x80
;	main.c:84: delayms(100);
	mov	dptr,#0x0064
	lcall	_delayms
;	main.c:85: P1 &= ~(1<<7);
	anl	_P1,#0x7f
;	main.c:87: if(UartReadReady())
	lcall	_UartReadReady
	mov	a,dpl
	jz	00106$
;	main.c:89: if(UartRead()=='X') exitApp();
	lcall	_UartRead
	mov	r7,dpl
	cjne	r7,#0x58,00106$
	lcall	_exitApp
;	main.c:92: }
	sjmp	00106$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Hello World from Syamputer :)"
	.db 0x09
	.ascii " Press 'X' to exit."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
