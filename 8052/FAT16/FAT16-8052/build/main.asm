;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HELPER_strncmp_PARM_3
	.globl _HELPER_strncmp_PARM_2
	.globl _HELPER_strcmp_PARM_2
	.globl _spi_transfer_PARM_2
	.globl _main
	.globl _setup
	.globl _SelectFileAndFileOpen
	.globl _SelectFAT16PartitionPrompt
	.globl _delay
	.globl _SL_getcmd
	.globl _SL_read
	.globl _SL_write
	.globl _SL_enable_write_protection
	.globl _SL_disable_write_protection
	.globl _delay_ms
	.globl _FAT16_FILE_CAT
	.globl _FAT16_FILE_READ
	.globl _FAT16_GET_NEXT_CLUSTER
	.globl _FAT16_FILE_OPEN
	.globl _FAT16_ROOTENTRY_SCAN
	.globl _FAT16_ROOTENTRY_SCAN_RESET
	.globl _FAT16_ROOTENTRY_READ
	.globl _FAT16_IS_ROOTENTRY_VALID_FILE
	.globl _FAT16_LOAD_ROOTENTRY
	.globl _FAT16_ROOTENTRY_DUMP
	.globl _VBR_FAT16_CHECK_COMPATIBILITY
	.globl _VBR_MOUNT_VBR
	.globl _VBR_DUMP
	.globl _MBR_DETECT_FAT16
	.globl _MBR_LOAD_PARTITION_TABLE_ENTRY
	.globl _MBR_CHECK__SIGNATURE
	.globl _HELPER_filename_to_8dot3filename
	.globl _HELPER_to_uppercase
	.globl _HELPER_rootentry_type
	.globl _HELPER_strlen
	.globl _HELPER_strncmp
	.globl _HELPER_strcmp
	.globl _HELPER_load_littleendian32
	.globl _HELPER_load_littleendian16
	.globl _SDreadBlock
	.globl _SDread
	.globl _SDinit
	.globl _sd_acmd
	.globl _sd_cmd
	.globl _sd_initial_clk
	.globl _sd_isbusy
	.globl _spi_transfer_all
	.globl _spi_transfer
	.globl _spi_init
	.globl _spi_delay
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
	.globl _EEPROM_WRITE_PROTECTION
	.globl _HELPER_filename_to_8dot3filename_PARM_2
	.globl _SDreadBlock_PARM_2
	.globl _sd_acmd_PARM_2
	.globl _sd_cmd_PARM_2
	.globl _spi_transfer_all_PARM_3
	.globl _spi_transfer_all_PARM_2
	.globl _UartReadBuff_PARM_2
	.globl _UartWriteBuff_PARM_2
	.globl _hex2dec_PARM_2
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
_spi_transfer_all_PARM_2:
	.ds 1
_spi_transfer_all_PARM_3:
	.ds 1
_sd_cmd_PARM_2:
	.ds 4
_sd_acmd_PARM_2:
	.ds 4
_SDreadBlock_PARM_2:
	.ds 3
_HELPER_filename_to_8dot3filename_PARM_2:
	.ds 3
_HELPER_filename_to_8dot3filename_fname_65536_125:
	.ds 3
_HELPER_filename_to_8dot3filename_i_131072_131:
	.ds 1
_VBR_MOUNT_VBR_sloc0_1_0:
	.ds 4
_FAT16_LOAD_ROOTENTRY_roote_number_65536_155:
	.ds 2
_FAT16_LOAD_ROOTENTRY_sloc0_1_0:
	.ds 4
_FAT16_LOAD_ROOTENTRY_sloc1_1_0:
	.ds 2
_EEPROM_WRITE_PROTECTION::
	.ds 1
_main_buff_65536_230:
	.ds 16
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_spi_transfer_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_HELPER_strcmp_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
_HELPER_strncmp_PARM_2:
	.ds 3
_HELPER_strncmp_PARM_3:
	.ds 1
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
___global_partitionTableEntry:
	.ds 9
___global_vbr:
	.ds 31
___global_nthPartitionVBRmounted:
	.ds 1
___global_rootEntry:
	.ds 24
_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137:
	.ds 16
_VBR_MOUNT_VBR_temp_65536_144:
	.ds 16
_FAT16_LOAD_ROOTENTRY_temp_65536_156:
	.ds 32
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
;	serialloader.h:11: volatile unsigned char EEPROM_WRITE_PROTECTION=1;
	mov	_EEPROM_WRITE_PROTECTION,#0x01
;	fat.h:237: __idata static uint8_t __global_nthPartitionVBRmounted=255; //mounted if value is 0-3 for the 4 partitions,else not mounted
	mov	r0,#___global_nthPartitionVBRmounted
	mov	@r0,#0xff
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
;digit                     Allocated to stack - _bp +7
;i                         Allocated to stack - _bp +5
;j                         Allocated to registers r3 
;leading_zeroes_flag       Allocated to stack - _bp +6
;sloc0                     Allocated to stack - _bp +12
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
	add	a,#0x06
	mov	sp,a
;	uart.h:152: char i,j,leading_zeroes_flag=1;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,#0x01
;	uart.h:153: for(i=8;i>0;i--)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x08
00112$:
;	uart.h:155: digit=n;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	uart.h:156: for(j=1;j<i;j++) digit/=10;
	mov	r3,#0x01
00110$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	jnc	00101$
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar3
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r3
	sjmp	00110$
00101$:
;	uart.h:158: if(leading_zeroes_flag && digit%10) leading_zeroes_flag=0; //flag to start printing
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	jz	00103$
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,r2
	orl	a,r3
	orl	a,r6
	orl	a,r7
	jz	00103$
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,#0x00
00103$:
;	uart.h:160: if(leading_zeroes_flag); //pass - do not print
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	jnz	00113$
;	uart.h:161: else UartWrite(0x30 + digit%10);
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r4,dpl
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	lcall	_UartWrite
00113$:
;	uart.h:153: for(i=8;i>0;i--)
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	dec	@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	jz	00149$
	ljmp	00112$
00149$:
;	uart.h:163: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UartScanByte'
;------------------------------------------------------------
;unibble                   Allocated to registers r7 
;lnibble                   Allocated to registers r6 
;------------------------------------------------------------
;	uart.h:166: uint8_t UartScanByte() __reentrant
;	-----------------------------------------
;	 function UartScanByte
;	-----------------------------------------
_UartScanByte:
;	uart.h:170: while(UartReadReady()) UartRead(); //flush
00101$:
	lcall	_UartReadReady
	mov	a,dpl
	jz	00103$
	lcall	_UartRead
	sjmp	00101$
00103$:
;	uart.h:171: UartPrint("Number(HEX, eg FE for 254): ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_UartPrint
;	uart.h:173: unibble = UartRead();
	lcall	_UartRead
;	uart.h:174: UartWrite(unibble);
	mov  r7,dpl
	push	ar7
	lcall	_UartWrite
;	uart.h:175: lnibble = UartRead();
	lcall	_UartRead
;	uart.h:176: UartWrite(lnibble);
	mov  r6,dpl
	push	ar6
	lcall	_UartWrite
;	uart.h:178: UartWrite('\n');
	mov	dpl,#0x0a
	lcall	_UartWrite
	pop	ar6
	pop	ar7
;	uart.h:180: return hex2dec(unibble,lnibble);
	mov	_hex2dec_PARM_2,r6
	mov	dpl,r7
;	uart.h:181: }
	ljmp	_hex2dec
;------------------------------------------------------------
;Allocation info for local variables in function 'UartScanLine'
;------------------------------------------------------------
;maxLength                 Allocated to stack - _bp -3
;dst                       Allocated to stack - _bp +1
;recv                      Allocated to registers r2 
;count                     Allocated to registers r4 
;------------------------------------------------------------
;	uart.h:183: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
;	-----------------------------------------
;	 function UartScanLine
;	-----------------------------------------
_UartScanLine:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	uart.h:185: uint8_t recv,count=0;
	mov	r4,#0x00
;	uart.h:187: while(UartReadReady()) UartRead(); //flush
00101$:
	push	ar4
	lcall	_UartReadReady
	mov	a,dpl
	pop	ar4
	jz	00118$
	push	ar4
	lcall	_UartRead
	pop	ar4
;	uart.h:189: while(1)
	sjmp	00101$
00118$:
	mov	r3,#0x00
00110$:
;	uart.h:192: recv=UartRead();
	push	ar4
	push	ar3
	lcall	_UartRead
;	uart.h:193: UartWrite(recv);
	mov  r2,dpl
	push	ar2
	lcall	_UartWrite
	pop	ar2
	pop	ar3
	pop	ar4
;	uart.h:194: if(recv == '\n') 
	cjne	r2,#0x0a,00105$
;	uart.h:196: *(dst+count)=0; //add string terminate
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
;	uart.h:197: break;
	sjmp	00111$
00105$:
;	uart.h:199: else *(dst+count)=recv;
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
;	uart.h:201: if(count==maxLength) 
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	cjne	a,ar3,00108$
;	uart.h:203: *(dst+count)=0; // terminate string.
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	uart.h:204: break;
	sjmp	00111$
00108$:
;	uart.h:207: count++;
	inc	r3
	mov	ar4,r3
	sjmp	00110$
00111$:
;	uart.h:211: return count;
	mov	dpl,r4
;	uart.h:213: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_delay'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	spi.h:1: void spi_delay(unsigned int ms)
;	-----------------------------------------
;	 function spi_delay
;	-----------------------------------------
_spi_delay:
	mov	r6,dpl
	mov	r7,dph
;	spi.h:3: unsigned int j=0,i=0;
	mov	r4,#0x00
	mov	r5,#0x00
;	spi.h:4: for( i=0;i<ms;i++)
	mov	r2,#0x00
	mov	r3,#0x00
00107$:
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00109$
	mov	ar0,r4
	mov	ar1,r5
00104$:
;	spi.h:6: for(;j<120;j++);
	clr	c
	mov	a,r0
	subb	a,#0x78
	mov	a,r1
	subb	a,#0x00
	jnc	00114$
	inc	r0
	cjne	r0,#0x00,00104$
	inc	r1
	sjmp	00104$
00114$:
	mov	ar4,r0
	mov	ar5,r1
;	spi.h:4: for( i=0;i<ms;i++)
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
	sjmp	00107$
00109$:
;	spi.h:8: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_init'
;------------------------------------------------------------
;	spi.h:32: void spi_init()
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	spi.h:35: spi_miso_high(); //make MISO input
	orl	_P1,#0x04
;	spi.h:36: spi_mosi_high(); //recommended in sd card tutorial
	orl	_P1,#0x02
;	spi.h:37: spi_cs_high(); //deselect
	orl	_P1,#0x08
;	spi.h:38: spi_clk_low(); //mode 0, idle clk is low
	anl	_P1,#0xfe
;	spi.h:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transfer'
;------------------------------------------------------------
;handle_cs                 Allocated with name '_spi_transfer_PARM_2'
;tx                        Allocated to registers r7 
;rx                        Allocated to registers r6 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	spi.h:41: uint8_t spi_transfer(uint8_t tx,uint8_t handle_cs)
;	-----------------------------------------
;	 function spi_transfer
;	-----------------------------------------
_spi_transfer:
	mov	r7,dpl
;	spi.h:44: rx=0; //clear the rx - sdcc compiler throws warning otherwise
	mov	r6,#0x00
;	spi.h:47: spi_clk_low();
	anl	_P1,#0xfe
;	spi.h:50: if(handle_cs)
	mov	a,_spi_transfer_PARM_2
	jz	00139$
;	spi.h:51: spi_cs_low();
	anl	_P1,#0xf7
;	spi.h:54: for(i=0;i<8;i++)
00139$:
	mov	r5,#0x00
00132$:
;	spi.h:57: if(tx & 0x80) spi_mosi_high();
	mov	a,r7
	jnb	acc.7,00112$
	orl	_P1,#0x02
;	spi.h:58: else spi_mosi_low();
	sjmp	00117$
00112$:
	anl	_P1,#0xfd
00117$:
;	spi.h:60: tx <<=1;
	mov	ar4,r7
	mov	a,r4
	add	a,r4
	mov	r7,a
;	spi.h:65: rx <<=1;
	mov	ar4,r6
	mov	a,r4
	add	a,r4
	mov	r6,a
;	spi.h:68: spi_clk_high();
	orl	_P1,#0x01
;	spi.h:71: if(spi_read_miso()) rx |=1;
	mov	a,_P1
	jnb	acc.2,00123$
	orl	ar6,#0x01
;	spi.h:76: spi_clk_low();
00123$:
	anl	_P1,#0xfe
;	spi.h:54: for(i=0;i<8;i++)
	inc	r5
	cjne	r5,#0x08,00164$
00164$:
	jc	00132$
;	spi.h:81: if(handle_cs)
	mov	a,_spi_transfer_PARM_2
	jz	00131$
;	spi.h:82: spi_cs_high();
	orl	_P1,#0x08
00131$:
;	spi.h:84: return rx;
	mov	dpl,r6
;	spi.h:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transfer_all'
;------------------------------------------------------------
;len                       Allocated with name '_spi_transfer_all_PARM_2'
;handle_cs                 Allocated with name '_spi_transfer_all_PARM_3'
;buff                      Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	spi.h:89: void spi_transfer_all(uint8_t *buff, uint8_t len,uint8_t handle_cs)
;	-----------------------------------------
;	 function spi_transfer_all
;	-----------------------------------------
_spi_transfer_all:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	spi.h:94: if(handle_cs)spi_cs_low();
	mov	a,_spi_transfer_all_PARM_3
	jz	00119$
	anl	_P1,#0xf7
;	spi.h:96: for(i=0;i<len;i++)
00119$:
	mov	r4,#0x00
00113$:
	clr	c
	mov	a,r4
	subb	a,_spi_transfer_all_PARM_2
	jnc	00106$
;	spi.h:98: spi_transfer(buff[i],0);
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
	mov	r1,a
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_transfer
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	spi.h:96: for(i=0;i<len;i++)
	inc	r4
	sjmp	00113$
00106$:
;	spi.h:102: if(handle_cs)spi_cs_high();
	mov	a,_spi_transfer_all_PARM_3
	jz	00115$
	orl	_P1,#0x08
00115$:
;	spi.h:104: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_isbusy'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	sdcard.h:26: uint8_t sd_isbusy()
;	-----------------------------------------
;	 function sd_isbusy
;	-----------------------------------------
_sd_isbusy:
;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
	mov	r7,#0x00
00104$:
;	sdcard.h:31: if(sd_spi_write(0xff)==0xff) return 0; //not busy
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar7
	lcall	_spi_transfer
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0xff,00105$
	mov	dpl,#0x00
	ret
00105$:
;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
	inc	r7
	cjne	r7,#0xfe,00122$
00122$:
	jc	00104$
;	sdcard.h:34: return 1; //busy
	mov	dpl,#0x01
;	sdcard.h:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_initial_clk'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	sdcard.h:37: void sd_initial_clk()
;	-----------------------------------------
;	 function sd_initial_clk
;	-----------------------------------------
_sd_initial_clk:
;	sdcard.h:45: spi_cs_high(); // required by spec but works fine even when cs pin of SDCARD is always pulled to ground to save uC pins
	orl	_P1,#0x08
;	sdcard.h:46: for(uint8_t i=0;i<10;i++)spi_transfer(0xff,0);
	mov	r7,#0x00
00106$:
	cjne	r7,#0x0a,00119$
00119$:
	jnc	00108$
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar7
	lcall	_spi_transfer
	pop	ar7
	inc	r7
	sjmp	00106$
00108$:
;	sdcard.h:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_cmd'
;------------------------------------------------------------
;arg                       Allocated with name '_sd_cmd_PARM_2'
;cmd                       Allocated to registers r7 
;_resp                     Allocated to registers r5 
;retries                   Allocated to registers r6 
;crc                       Allocated to registers r6 
;i                         Allocated to registers r6 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	sdcard.h:49: uint8_t sd_cmd(uint8_t cmd, uint32_t arg)
;	-----------------------------------------
;	 function sd_cmd
;	-----------------------------------------
_sd_cmd:
	mov	r7,dpl
;	sdcard.h:51: uint8_t _resp=0,retries=0,crc=0xff;
	mov	r6,#0xff
;	sdcard.h:53: spi_cs_low();
	anl	_P1,#0xf7
;	sdcard.h:55: sd_isbusy(); //wait while sd is busy
	push	ar7
	push	ar6
	lcall	_sd_isbusy
	pop	ar6
	pop	ar7
;	sdcard.h:63: sd_spi_write(cmd | 0x40);
	mov	a,#0x40
	orl	a,r7
	mov	dpl,a
	mov	_spi_transfer_PARM_2,#0x00
	push	ar7
	push	ar6
	lcall	_spi_transfer
	pop	ar6
	pop	ar7
;	sdcard.h:65: sd_spi_write((arg >> 24) & 0xff);
	mov	dpl,(_sd_cmd_PARM_2 + 3)
	mov	_spi_transfer_PARM_2,#0x00
	push	ar7
	push	ar6
	lcall	_spi_transfer
	pop	ar6
	pop	ar7
;	sdcard.h:66: sd_spi_write((arg >> 16) & 0xff);
	mov	dpl,(_sd_cmd_PARM_2 + 2)
	mov	_spi_transfer_PARM_2,#0x00
	push	ar7
	push	ar6
	lcall	_spi_transfer
	pop	ar6
	pop	ar7
;	sdcard.h:67: sd_spi_write((arg >> 8) & 0xff);
	mov	dpl,(_sd_cmd_PARM_2 + 1)
	mov	_spi_transfer_PARM_2,#0x00
	push	ar7
	push	ar6
	lcall	_spi_transfer
	pop	ar6
	pop	ar7
;	sdcard.h:68: sd_spi_write(arg & 0xff);
	mov	dpl,_sd_cmd_PARM_2
	mov	_spi_transfer_PARM_2,#0x00
	push	ar7
	push	ar6
	lcall	_spi_transfer
	pop	ar6
	pop	ar7
;	sdcard.h:70: if(cmd==CMD0) 
	mov	a,r7
	jnz	00107$
;	sdcard.h:72: crc=0x95;
	mov	r6,#0x95
	sjmp	00108$
00107$:
;	sdcard.h:74: else if(cmd==CMD8) 
	cjne	r7,#0x08,00108$
;	sdcard.h:76: crc=0x87;
	mov	r6,#0x87
00108$:
;	sdcard.h:78: sd_spi_write(crc);	
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,r6
	push	ar7
	lcall	_spi_transfer
	pop	ar7
;	sdcard.h:81: while(1) 
	mov	r6,#0x00
00115$:
;	sdcard.h:83: _resp = sd_spi_write(0xff);
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar7
	push	ar6
	lcall	_spi_transfer
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	sdcard.h:85: if(_resp & 0x80);
	mov	a,r5
	jnb	acc.7,00116$
;	sdcard.h:88: if(retries++ == SD_MAX_RETRIES) 
	mov	ar4,r6
	inc	r6
	cjne	r4,#0x19,00115$
;	sdcard.h:94: return SD_MAX_RETRIES_FAIL; // 0xff means failed
	mov	dpl,#0xfe
	ret
00116$:
;	sdcard.h:106: if(cmd==CMD8 || cmd==CMD58)
	clr	a
	cjne	r7,#0x08,00203$
	inc	a
00203$:
	mov	r6,a
	jnz	00128$
	cjne	r7,#0x3a,00206$
	sjmp	00207$
00206$:
	ljmp	00129$
00207$:
00128$:
;	sdcard.h:114: if(cmd==CMD8)
	mov	a,r6
	jz	00126$
;	sdcard.h:116: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
	mov	r6,#0x00
00132$:
	cjne	r6,#0x03,00209$
00209$:
	jnc	00117$
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar6
	push	ar5
	lcall	_spi_transfer
	pop	ar5
	pop	ar6
	inc	r6
	sjmp	00132$
00117$:
;	sdcard.h:117: if(sd_spi_write(0xff)!=0xAA) return SD_CMD_FAIL;
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar5
	lcall	_spi_transfer
	mov	r6,dpl
	pop	ar5
	cjne	r6,#0xaa,00211$
	sjmp	00127$
00211$:
	mov	dpl,#0xff
	ret
00126$:
;	sdcard.h:119: else if(cmd==CMD58)
	cjne	r7,#0x3a,00127$
;	sdcard.h:121: if(sd_spi_write(0xff)!=0xC0) return SD_CMD_FAIL;
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar5
	lcall	_spi_transfer
	mov	r7,dpl
	pop	ar5
	cjne	r7,#0xc0,00214$
	sjmp	00152$
00214$:
	mov	dpl,#0xff
;	sdcard.h:123: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
	ret
00152$:
	mov	r7,#0x00
00135$:
	cjne	r7,#0x03,00215$
00215$:
	jnc	00127$
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar7
	push	ar5
	lcall	_spi_transfer
	pop	ar5
	pop	ar7
	inc	r7
	sjmp	00135$
00127$:
;	sdcard.h:128: sd_spi_write(0xff);
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar5
	lcall	_spi_transfer
	pop	ar5
00129$:
;	sdcard.h:136: return _resp;
	mov	dpl,r5
;	sdcard.h:138: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_acmd'
;------------------------------------------------------------
;arg                       Allocated with name '_sd_acmd_PARM_2'
;cmd                       Allocated to registers r7 
;_resp                     Allocated to registers 
;------------------------------------------------------------
;	sdcard.h:140: uint8_t sd_acmd(uint8_t cmd, uint32_t arg)
;	-----------------------------------------
;	 function sd_acmd
;	-----------------------------------------
_sd_acmd:
	mov	r7,dpl
;	sdcard.h:144: _resp=sd_cmd(CMD55,0);
	clr	a
	mov	_sd_cmd_PARM_2,a
	mov	(_sd_cmd_PARM_2 + 1),a
	mov	(_sd_cmd_PARM_2 + 2),a
	mov	(_sd_cmd_PARM_2 + 3),a
	mov	dpl,#0x37
	push	ar7
	lcall	_sd_cmd
	mov	r6,dpl
	pop	ar7
;	sdcard.h:145: if(_resp!=1) return SD_CMD_FAIL;
	cjne	r6,#0x01,00110$
	sjmp	00102$
00110$:
	mov	dpl,#0xff
	ret
00102$:
;	sdcard.h:148: _resp=sd_cmd(cmd,arg);
	mov	_sd_cmd_PARM_2,_sd_acmd_PARM_2
	mov	(_sd_cmd_PARM_2 + 1),(_sd_acmd_PARM_2 + 1)
	mov	(_sd_cmd_PARM_2 + 2),(_sd_acmd_PARM_2 + 2)
	mov	(_sd_cmd_PARM_2 + 3),(_sd_acmd_PARM_2 + 3)
	mov	dpl,r7
;	sdcard.h:149: return _resp;
;	sdcard.h:151: }
	ljmp	_sd_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'SDinit'
;------------------------------------------------------------
;retries                   Allocated to registers r7 
;------------------------------------------------------------
;	sdcard.h:157: uint8_t SDinit()
;	-----------------------------------------
;	 function SDinit
;	-----------------------------------------
_SDinit:
;	sdcard.h:161: sd_initial_clk(); // 74 minimum clks for initialization
	lcall	_sd_initial_clk
;	sdcard.h:163: while(1)
	mov	r7,#0x00
00107$:
;	sdcard.h:165: if(sd_cmd(CMD0,0)==0x01)break; // correct response is 0x01 -> signals card is idling
	clr	a
	mov	_sd_cmd_PARM_2,a
	mov	(_sd_cmd_PARM_2 + 1),a
	mov	(_sd_cmd_PARM_2 + 2),a
	mov	(_sd_cmd_PARM_2 + 3),a
	mov	dpl,#0x00
	push	ar7
	lcall	_sd_cmd
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x01,00155$
	sjmp	00108$
00155$:
;	sdcard.h:166: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
	mov	ar6,r7
	inc	r7
	cjne	r6,#0x19,00107$
	mov	dpl,#0xfe
	ret
00108$:
;	sdcard.h:170: if(sd_cmd(CMD8,0x1AA)!=0x01) return SD_CMD_FAIL; // correct response for cmd8 is 0x01
	mov	_sd_cmd_PARM_2,#0xaa
	mov	(_sd_cmd_PARM_2 + 1),#0x01
	clr	a
	mov	(_sd_cmd_PARM_2 + 2),a
	mov	(_sd_cmd_PARM_2 + 3),a
	mov	dpl,#0x08
	lcall	_sd_cmd
	mov	r7,dpl
	cjne	r7,#0x01,00158$
	sjmp	00128$
00158$:
	mov	dpl,#0xff
;	sdcard.h:173: while(1)
	ret
00128$:
	mov	r7,#0x00
00117$:
;	sdcard.h:175: if(sd_acmd(CMD41,0x40000000)==0)break; //correct response
	clr	a
	mov	_sd_acmd_PARM_2,a
	mov	(_sd_acmd_PARM_2 + 1),a
	mov	(_sd_acmd_PARM_2 + 2),a
	mov	(_sd_acmd_PARM_2 + 3),#0x40
	mov	dpl,#0x29
	push	ar7
	lcall	_sd_acmd
	mov	a,dpl
	pop	ar7
	jz	00118$
;	sdcard.h:176: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
	mov	ar6,r7
	inc	r7
	cjne	r6,#0x19,00117$
	mov	dpl,#0xfe
	ret
00118$:
;	sdcard.h:182: if(sd_cmd(CMD58,0)) return SD_CMD_FAIL;  
	clr	a
	mov	_sd_cmd_PARM_2,a
	mov	(_sd_cmd_PARM_2 + 1),a
	mov	(_sd_cmd_PARM_2 + 2),a
	mov	(_sd_cmd_PARM_2 + 3),a
	mov	dpl,#0x3a
	lcall	_sd_cmd
	mov	a,dpl
	jz	00120$
	mov	dpl,#0xff
	ret
00120$:
;	sdcard.h:190: return 0; //successful init
	mov	dpl,#0x00
;	sdcard.h:191: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SDread'
;------------------------------------------------------------
;offset                    Allocated to stack - _bp -4
;count                     Allocated to stack - _bp -6
;dst                       Allocated to stack - _bp -9
;block_addr                Allocated to registers r4 r5 r6 r7 
;retries                   Allocated to registers r7 
;response                  Allocated to registers r3 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	sdcard.h:206: uint8_t SDread(uint32_t block_addr, uint16_t offset, uint16_t count, uint8_t* dst ) __reentrant
;	-----------------------------------------
;	 function SDread
;	-----------------------------------------
_SDread:
	push	_bp
	mov	_bp,sp
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	sdcard.h:221: if (count == 0) return 0; //success
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dpl,a
	ljmp	00131$
00102$:
;	sdcard.h:222: if ((count + offset) > SD_BLOCK_SIZE) {
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,_bp
	add	a,#0xfc
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r3,a
	clr	c
	clr	a
	subb	a,r2
	mov	a,#0x02
	subb	a,r3
	jnc	00105$
;	sdcard.h:223: return 1; //fail
	mov	dpl,#0x01
	ljmp	00131$
;	sdcard.h:231: spi_cs_low();
00105$:
	anl	_P1,#0xf7
;	sdcard.h:236: if(sd_cmd(CMD17,block_addr)) return SD_CMD_FAIL; 
	mov	_sd_cmd_PARM_2,r4
	mov	(_sd_cmd_PARM_2 + 1),r5
	mov	(_sd_cmd_PARM_2 + 2),r6
	mov	(_sd_cmd_PARM_2 + 3),r7
	mov	dpl,#0x11
	lcall	_sd_cmd
	mov	a,dpl
	jz	00138$
	mov	dpl,#0xff
	ljmp	00131$
;	sdcard.h:240: while(1)
00138$:
	mov	r7,#0x00
00119$:
;	sdcard.h:242: response = sd_spi_write(0xff);
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar7
	lcall	_spi_transfer
	mov	r6,dpl
	pop	ar7
;	sdcard.h:250: if(response==0xff); //pass
	cjne	r6,#0xff,00192$
	sjmp	00115$
00192$:
;	sdcard.h:251: else if(response == DATA_START_BLOCK) break; // if the last response is DATA_START_BLOCK=0xFE, then success, else fail
	cjne	r6,#0xfe,00193$
	sjmp	00143$
00193$:
;	sdcard.h:252: else return DATA_START_BLOCK_FAIL; // if anything other than 0xff or DATA_START_BLOCK=0xFE
	mov	dpl,#0xfd
	ljmp	00131$
00115$:
;	sdcard.h:254: if(retries++==255) return SD_MAX_RETRIES_FAIL;
	mov	ar6,r7
	inc	r7
	cjne	r6,#0xff,00119$
	mov	dpl,#0xfe
	ljmp	00131$
;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
00143$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,_bp
	add	a,#0xfa
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00129$:
	mov	a,#0x100 - 0x02
	add	a,r5
	jc	00124$
;	sdcard.h:262: response = spi_transfer(0xff,0);
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_spi_transfer
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	sdcard.h:270: if(i>=offset && i<offset+count)
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r4
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
	jc	00130$
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00130$
;	sdcard.h:272: dst[i-offset] = response;
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,r4
	clr	c
	subb	a,@r0
	mov	r2,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r2
	mov	dph,r7
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
;	sdcard.h:287: return 0; //success
	pop	ar7
	pop	ar6
;	sdcard.h:272: dst[i-offset] = response;
00130$:
;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
	inc	r4
	cjne	r4,#0x00,00129$
	inc	r5
	sjmp	00129$
00124$:
;	sdcard.h:280: sd_spi_write(0xff);
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	lcall	_spi_transfer
;	sdcard.h:281: sd_spi_write(0xff);
	mov	_spi_transfer_PARM_2,#0x00
	mov	dpl,#0xff
	lcall	_spi_transfer
;	sdcard.h:284: spi_cs_high(); //leave clock high
	orl	_P1,#0x08
;	sdcard.h:287: return 0; //success
	mov	dpl,#0x00
00131$:
;	sdcard.h:289: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SDreadBlock'
;------------------------------------------------------------
;dst                       Allocated with name '_SDreadBlock_PARM_2'
;block_addr                Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	sdcard.h:291: uint8_t SDreadBlock(uint32_t block_addr,uint8_t* dst)
;	-----------------------------------------
;	 function SDreadBlock
;	-----------------------------------------
_SDreadBlock:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	sdcard.h:293: return SDread(block_addr,0,SD_BLOCK_SIZE,dst);
	push	_SDreadBlock_PARM_2
	push	(_SDreadBlock_PARM_2 + 1)
	push	(_SDreadBlock_PARM_2 + 2)
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_SDread
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	sdcard.h:294: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HELPER_load_littleendian16'
;------------------------------------------------------------
;src                       Allocated to registers r5 r6 r7 
;val                       Allocated to registers r2 r4 
;------------------------------------------------------------
;	fat.h:85: uint16_t HELPER_load_littleendian16(uint8_t *src) __reentrant
;	-----------------------------------------
;	 function HELPER_load_littleendian16
;	-----------------------------------------
_HELPER_load_littleendian16:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	fat.h:89: val = *(src+1);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	fat.h:90: val <<= 8;
	mov	r4,a
	mov	r2,#0x00
;	fat.h:91: val |= *src;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	orl	a,r2
	mov	dpl,a
	mov	a,r7
	orl	a,r4
	mov	dph,a
;	fat.h:93: return val;
;	fat.h:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HELPER_load_littleendian32'
;------------------------------------------------------------
;src                       Allocated to stack - _bp +1
;val                       Allocated to stack - _bp +8
;i                         Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +9
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	fat.h:96: uint32_t HELPER_load_littleendian32(uint8_t *src) __reentrant
;	-----------------------------------------
;	 function HELPER_load_littleendian32
;	-----------------------------------------
_HELPER_load_littleendian32:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x09
	mov	sp,a
;	fat.h:98: uint32_t val=0;
;	fat.h:100: for(uint8_t i=0;i<4;i++)
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,#0x00
00103$:
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	cjne	@r0,#0x04,00118$
00118$:
	jnc	00101$
;	fat.h:102: val <<= 8;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar4
	dec	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,ar2
	dec	r0
	mov	@r0,#0x00
;	fat.h:103: val |= src[3-i];
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,#0x03
	clr	c
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,r5
	add	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	orl	a,@r0
	mov	r2,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r3,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r4,a
	inc	r1
	mov	a,@r1
	inc	r0
	orl	a,@r0
	mov	r7,a
;	fat.h:100: for(uint8_t i=0;i<4;i++)
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	inc	@r0
	sjmp	00103$
00101$:
;	fat.h:106: return val;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
;	fat.h:107: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HELPER_strcmp'
;------------------------------------------------------------
;s2                        Allocated with name '_HELPER_strcmp_PARM_2'
;s1                        Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	fat.h:109: uint8_t HELPER_strcmp(char *s1,char* s2)
;	-----------------------------------------
;	 function HELPER_strcmp
;	-----------------------------------------
_HELPER_strcmp:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	fat.h:112: while(1)
	mov	r4,#0x00
00107$:
;	fat.h:114: if(s1[i]==s2[i]);
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
	mov	r3,a
	mov	a,r4
	add	a,_HELPER_strcmp_PARM_2
	mov	r0,a
	clr	a
	addc	a,(_HELPER_strcmp_PARM_2 + 1)
	mov	r1,a
	mov	r2,(_HELPER_strcmp_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	a,r3
	cjne	a,ar0,00123$
	sjmp	00103$
00123$:
;	fat.h:115: else return 1;
	mov	dpl,#0x01
	ret
00103$:
;	fat.h:117: if(s1[i]==0) return 0;
	mov	a,r3
	jnz	00105$
	mov	dpl,a
	ret
00105$:
;	fat.h:118: i++;
	inc	r4
;	fat.h:120: }
	sjmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'HELPER_strncmp'
;------------------------------------------------------------
;s2                        Allocated with name '_HELPER_strncmp_PARM_2'
;n                         Allocated with name '_HELPER_strncmp_PARM_3'
;s1                        Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	fat.h:122: uint8_t HELPER_strncmp(char *s1,char* s2,uint8_t n)
;	-----------------------------------------
;	 function HELPER_strncmp
;	-----------------------------------------
_HELPER_strncmp:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	fat.h:125: while(1)
	mov	r4,#0x00
00109$:
;	fat.h:127: if(i==n) return 0; //done - successful
	mov	a,r4
	cjne	a,_HELPER_strncmp_PARM_3,00102$
	mov	dpl,#0x00
	ret
00102$:
;	fat.h:129: if(s1[i]==s2[i]);
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
	mov	r3,a
	mov	a,r4
	add	a,_HELPER_strncmp_PARM_2
	mov	r0,a
	clr	a
	addc	a,(_HELPER_strncmp_PARM_2 + 1)
	mov	r1,a
	mov	r2,(_HELPER_strncmp_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	a,r3
	cjne	a,ar0,00131$
	sjmp	00105$
00131$:
;	fat.h:130: else return 1;
	mov	dpl,#0x01
	ret
00105$:
;	fat.h:132: if(s1[i]==0) return 0; //if string length < n, return success as well as we donot want to compare more
	mov	a,r3
	jnz	00107$
	mov	dpl,a
	ret
00107$:
;	fat.h:133: i++;
	inc	r4
;	fat.h:135: }
	sjmp	00109$
;------------------------------------------------------------
;Allocation info for local variables in function 'HELPER_strlen'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	fat.h:137: uint8_t HELPER_strlen(char *s)
;	-----------------------------------------
;	 function HELPER_strlen
;	-----------------------------------------
_HELPER_strlen:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	fat.h:139: for(uint8_t i=0;i<255;i++)
	mov	r4,#0x00
	mov	r3,#0x00
00105$:
	cjne	r3,#0xff,00121$
00121$:
	jnc	00103$
;	fat.h:141: if(s[i]==0) return i;
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jnz	00106$
	mov	dpl,r4
	ret
00106$:
;	fat.h:139: for(uint8_t i=0;i<255;i++)
	inc	r3
	mov	ar4,r3
	sjmp	00105$
00103$:
;	fat.h:144: return 255;
	mov	dpl,#0xff
;	fat.h:145: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HELPER_rootentry_type'
;------------------------------------------------------------
;re                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	fat.h:147: uint8_t HELPER_rootentry_type(ROOTENTRY *re)
;	-----------------------------------------
;	 function HELPER_rootentry_type
;	-----------------------------------------
_HELPER_rootentry_type:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	fat.h:149: if(re->attributes & 1<<FILETYPE_HIDDEN) return FILETYPE_HIDDEN; //directory entry
	mov	a,#0x0b
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	jnb	acc.1,00102$
	mov	dpl,#0x01
	ret
00102$:
;	fat.h:150: if(re->attributes & 1<<FILETYPE_SYSTEM) return FILETYPE_SYSTEM; //directory entry
	mov	a,r4
	jnb	acc.2,00104$
	mov	dpl,#0x02
	ret
00104$:
;	fat.h:151: if(re->attributes & 1<<FILETYPE_VOLUME) return FILETYPE_VOLUME; //directory entry
	mov	a,r4
	jnb	acc.3,00106$
	mov	dpl,#0x03
	ret
00106$:
;	fat.h:153: if(re->startCluster==0) return FILETYPE_NOFILE; //no file
	mov	a,#0x0c
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	orl	a,r2
	jnz	00111$
	mov	dpl,#0xff
	ret
00111$:
;	fat.h:154: else if(re->size==0) return FILETYPE_EMPTYFILE; //empty file
	mov	a,#0x0e
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r5
	orl	a,r6
	orl	a,r7
	orl	a,r4
	jnz	00108$
	mov	dpl,#0xfe
	ret
00108$:
;	fat.h:155: else return 0; // valid non-empty file
	mov	dpl,#0x00
;	fat.h:157: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HELPER_to_uppercase'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	fat.h:162: void HELPER_to_uppercase(char *s)
;	-----------------------------------------
;	 function HELPER_to_uppercase
;	-----------------------------------------
_HELPER_to_uppercase:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	fat.h:164: for(uint8_t i=0;i<255;i++)
	mov	r4,#0x00
00108$:
	cjne	r4,#0xff,00132$
00132$:
	jnc	00110$
;	fat.h:166: if(s[i]==0) return; //done
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
	mov	r0,a
	jnz	00102$
	ret
00102$:
;	fat.h:167: if('a'<=s[i] && s[i]<='z') s[i] = s[i] - 32;
	cjne	r0,#0x61,00135$
00135$:
	jc	00109$
	mov	a,r0
	add	a,#0xff - 0x7a
	jc	00109$
	mov	a,r0
	add	a,#0xe0
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
00109$:
;	fat.h:164: for(uint8_t i=0;i<255;i++)
	inc	r4
	sjmp	00108$
00110$:
;	fat.h:169: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HELPER_filename_to_8dot3filename'
;------------------------------------------------------------
;fname83                   Allocated with name '_HELPER_filename_to_8dot3filename_PARM_2'
;fname                     Allocated with name '_HELPER_filename_to_8dot3filename_fname_65536_125'
;index                     Allocated to registers r4 
;i                         Allocated to registers r4 
;i                         Allocated with name '_HELPER_filename_to_8dot3filename_i_131072_131'
;------------------------------------------------------------
;	fat.h:171: uint8_t HELPER_filename_to_8dot3filename( char *fname,  char *fname83)
;	-----------------------------------------
;	 function HELPER_filename_to_8dot3filename
;	-----------------------------------------
_HELPER_filename_to_8dot3filename:
;	fat.h:176: HELPER_to_uppercase(fname);
	mov	_HELPER_filename_to_8dot3filename_fname_65536_125,dpl
	mov	(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1),dph
	mov	(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2),b
	lcall	_HELPER_to_uppercase
;	fat.h:184: for(uint8_t i=0;i<11;i++) fname83[i]=' '; //default fill by empty space
	mov	r4,#0x00
00120$:
	cjne	r4,#0x0b,00178$
00178$:
	jnc	00101$
	mov	a,r4
	add	a,_HELPER_filename_to_8dot3filename_PARM_2
	mov	r1,a
	clr	a
	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
	mov	r2,a
	mov	r3,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x20
	lcall	__gptrput
	inc	r4
	sjmp	00120$
00101$:
;	fat.h:185: fname83[11]=0; //set last character as 0;
	mov	a,#0x0b
	add	a,_HELPER_filename_to_8dot3filename_PARM_2
	mov	r2,a
	clr	a
	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
	mov	r3,a
	mov	r4,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	fat.h:188: for(index=0;index<9;index++)
	mov	r4,#0x00
	mov	r3,#0x00
00122$:
;	fat.h:191: if(index==8 && fname[index]!='.') 
	cjne	r3,#0x08,00103$
	mov	a,r3
	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
	mov	r0,a
	clr	a
	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
	mov	r1,a
	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x2e,00182$
	sjmp	00103$
00182$:
;	fat.h:196: return 1; //error - invalid filename as dot not found till 9th charcter
	mov	dpl,#0x01
	ret
00103$:
;	fat.h:199: if(fname[index]==0) return 0; // success - we reached the end of the filename string before the dot character - filename has no extension
	mov	a,r3
	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
	mov	r0,a
	clr	a
	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
	mov	r1,a
	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	jnz	00109$
	mov	dpl,a
	ret
00109$:
;	fat.h:200: else if(fname[index]=='.') break; //found the dot, break the for loop
	cjne	r2,#0x2e,00184$
	sjmp	00140$
00184$:
;	fat.h:201: else fname83[index]=fname[index];
	mov	a,r3
	add	a,_HELPER_filename_to_8dot3filename_PARM_2
	mov	r0,a
	clr	a
	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
	mov	r1,a
	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
;	fat.h:188: for(index=0;index<9;index++)
	inc	r3
	mov	ar4,r3
	cjne	r3,#0x09,00185$
00185$:
	jc	00122$
;	fat.h:204: for(uint8_t i=0;i<4;i++)
00140$:
	mov	_HELPER_filename_to_8dot3filename_i_131072_131,#0x00
00125$:
	mov	a,#0x100 - 0x04
	add	a,_HELPER_filename_to_8dot3filename_i_131072_131
	jnc	00187$
	ljmp	00118$
00187$:
;	fat.h:206: if(i==3 && fname[index+i+1]!=0) 
	mov	a,#0x03
	cjne	a,_HELPER_filename_to_8dot3filename_i_131072_131,00113$
	mov	ar5,r4
	mov	r6,#0x00
	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_131
	mov	r3,#0x00
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	inc	r5
	cjne	r5,#0x00,00190$
	inc	r6
00190$:
	mov	a,r5
	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
	mov	r5,a
	mov	a,r6
	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
	mov	r6,a
	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	jz	00113$
;	fat.h:211: return 2; // error - extension has more than 3 characters
	mov	dpl,#0x02
	ret
00113$:
;	fat.h:215: if(fname[index+i+1]==0) 
	mov	ar5,r4
	mov	r6,#0x00
	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_131
	mov	r3,#0x00
	mov	a,r2
	add	a,r5
	mov	r0,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	inc	r0
	cjne	r0,#0x00,00192$
	inc	r1
00192$:
	mov	a,r0
	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
	mov	r0,a
	mov	a,r1
	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
	mov	r1,a
	mov	r7,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
;	fat.h:224: return 0; 
	jnz	00116$
	mov	dpl,a
	ret
00116$:
;	fat.h:226: else fname83[8+i]=fname[index+i+1]; // in a valid fname, there is just an extra dot in fname than in fname83
	mov	a,#0x08
	add	a,r2
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	a,r1
	add	a,_HELPER_filename_to_8dot3filename_PARM_2
	mov	r1,a
	mov	a,r7
	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
	mov	r0,a
	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,r3
	addc	a,r6
	mov	r6,a
	inc	r5
	cjne	r5,#0x00,00194$
	inc	r6
00194$:
	mov	a,r5
	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
	mov	r5,a
	mov	a,r6
	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
	mov	r6,a
	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r5,a
	mov	dpl,r1
	mov	dph,r0
	mov	b,r7
	lcall	__gptrput
;	fat.h:204: for(uint8_t i=0;i<4;i++)
	inc	_HELPER_filename_to_8dot3filename_i_131072_131
	ljmp	00125$
00118$:
;	fat.h:229: return 3;// if reached here, then it is an error
	mov	dpl,#0x03
;	fat.h:230: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MBR_CHECK__SIGNATURE'
;------------------------------------------------------------
;signature                 Allocated to stack - _bp +1
;------------------------------------------------------------
;	fat.h:244: uint8_t MBR_CHECK__SIGNATURE() __reentrant
;	-----------------------------------------
;	 function MBR_CHECK__SIGNATURE
;	-----------------------------------------
_MBR_CHECK__SIGNATURE:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	fat.h:247: SDread(0,510,2,signature);
	mov	r1,_bp
	inc	r1
	mov	ar5,r1
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar1
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0xfe
	push	acc
	cpl	a
	push	acc
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_SDread
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
;	fat.h:256: if(signature[0]==0x55 && signature[1]==0xAA) return 0;
	mov	ar7,@r1
	cjne	r7,#0x55,00102$
	inc	r1
	mov	ar7,@r1
	cjne	r7,#0xaa,00102$
	mov	dpl,#0x00
	sjmp	00105$
00102$:
;	fat.h:257: else return 1;
	mov	dpl,#0x01
00105$:
;	fat.h:258: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MBR_LOAD_PARTITION_TABLE_ENTRY'
;------------------------------------------------------------
;partition_number          Allocated to registers r7 
;temp                      Allocated with name '_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137'
;offset                    Allocated to registers r5 r6 
;------------------------------------------------------------
;	fat.h:260: uint8_t MBR_LOAD_PARTITION_TABLE_ENTRY(uint8_t partition_number)
;	-----------------------------------------
;	 function MBR_LOAD_PARTITION_TABLE_ENTRY
;	-----------------------------------------
_MBR_LOAD_PARTITION_TABLE_ENTRY:
	mov	r7,dpl
;	fat.h:263: __idata uint16_t offset= 446 + partition_number*16; // get to the nth partition entry out of 0,1,2,3
	mov	ar5,r7
	clr	a
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	a,#0xbe
	add	a,r5
	mov	r5,a
	mov	a,#0x01
	addc	a,r6
	mov	r6,a
;	fat.h:265: if(partition_number>4) 
	mov	a,r7
	add	a,#0xff - 0x04
	jnc	00102$
;	fat.h:272: return 1; //error
	mov	dpl,#0x01
	ret
00102$:
;	fat.h:275: SDread(0,offset,16,temp);
	mov	a,#_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137
	push	acc
	mov	a,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	ar5
	push	ar6
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_SDread
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	fat.h:277: __global_partitionTableEntry.type = temp[4]; // type offset is 4
	mov	r0,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x0004)
	mov	ar7,@r0
	mov	r0,#___global_partitionTableEntry
	mov	@r0,ar7
;	fat.h:278: __global_partitionTableEntry.start=HELPER_load_littleendian32(&temp[8]); //partition start LBA offset is 8
	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x0008)
	mov	b,#0x40
	lcall	_HELPER_load_littleendian32
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#(___global_partitionTableEntry + 0x0001)
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	fat.h:279: __global_partitionTableEntry.size=HELPER_load_littleendian32(&temp[12]); //partiiton size offset is 12
	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x000c)
	mov	b,#0x40
	lcall	_HELPER_load_littleendian32
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#(___global_partitionTableEntry + 0x0005)
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	fat.h:281: return 0;
	mov	dpl,#0x00
;	fat.h:283: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MBR_DETECT_FAT16'
;------------------------------------------------------------
;result                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	fat.h:285: uint8_t MBR_DETECT_FAT16()
;	-----------------------------------------
;	 function MBR_DETECT_FAT16
;	-----------------------------------------
_MBR_DETECT_FAT16:
;	fat.h:290: uint8_t result=0;
	mov	r7,#0x00
;	fat.h:292: for(uint8_t i=0;i<4;i++) 
	mov	r6,#0x00
00105$:
	cjne	r6,#0x04,00122$
00122$:
	jnc	00103$
;	fat.h:294: MBR_LOAD_PARTITION_TABLE_ENTRY(i);
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
	pop	ar6
	pop	ar7
;	fat.h:295: if(__global_partitionTableEntry.type==FAT16_PARTITION_TYPE_ID) result |= (1<<i); //set corresponding bit
	mov	r0,#___global_partitionTableEntry
	mov	ar5,@r0
	cjne	r5,#0x06,00106$
	mov	ar5,r6
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00128$
00126$:
	add	a,acc
00128$:
	djnz	b,00126$
	mov	r5,a
	mov	ar4,r7
	orl	a,r4
	mov	r7,a
00106$:
;	fat.h:292: for(uint8_t i=0;i<4;i++) 
	inc	r6
	sjmp	00105$
00103$:
;	fat.h:304: return result;
	mov	dpl,r7
;	fat.h:305: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'VBR_DUMP'
;------------------------------------------------------------
;	fat.h:312: void VBR_DUMP() __reentrant
;	-----------------------------------------
;	 function VBR_DUMP
;	-----------------------------------------
_VBR_DUMP:
;	fat.h:314: UartPrint("VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start,roote_start,data_start\n"); 
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_UartPrint
;	fat.h:315: UartPrintNumber(__global_vbr.volumeStartSector);UartWrite(',');
	mov	r0,#___global_vbr
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:316: UartPrintNumber(__global_vbr.bps);UartWrite(',');
	mov	r0,#(___global_vbr + 0x0006)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:317: UartPrintNumber(__global_vbr.spc);UartWrite(',');
	mov	r0,#(___global_vbr + 0x0008)
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:318: UartPrintNumber(__global_vbr.reservedSectors);UartWrite(',');
	mov	r0,#(___global_vbr + 0x0004)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:319: UartPrintNumber(__global_vbr.nfat);UartWrite(',');
	mov	r0,#(___global_vbr + 0x0009)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:320: UartPrintNumber(__global_vbr.nroote);UartWrite(',');
	mov	r0,#(___global_vbr + 0x000d)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:321: UartPrintNumber(__global_vbr.spf);UartWrite(',');
	mov	r0,#(___global_vbr + 0x000b)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:323: UartPrintNumber(__global_vbr.addr_fat_start);UartWrite(',');
	mov	r0,#(___global_vbr + 0x0013)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:324: UartPrintNumber(__global_vbr.addr_roote_start);UartWrite(',');
	mov	r0,#(___global_vbr + 0x0017)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:325: UartPrintNumber(__global_vbr.addr_data_start);UartWrite(',');
	mov	r0,#(___global_vbr + 0x001b)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UartPrintNumber
	mov	dpl,#0x2c
	lcall	_UartWrite
;	fat.h:326: UartWrite('\n');
	mov	dpl,#0x0a
;	fat.h:327: }
	ljmp	_UartWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'VBR_MOUNT_VBR'
;------------------------------------------------------------
;partition_number          Allocated to registers r7 
;sloc0                     Allocated with name '_VBR_MOUNT_VBR_sloc0_1_0'
;temp                      Allocated with name '_VBR_MOUNT_VBR_temp_65536_144'
;------------------------------------------------------------
;	fat.h:330: uint8_t VBR_MOUNT_VBR(uint8_t partition_number)
;	-----------------------------------------
;	 function VBR_MOUNT_VBR
;	-----------------------------------------
_VBR_MOUNT_VBR:
	mov	r7,dpl
;	fat.h:336: if(__global_nthPartitionVBRmounted == partition_number ) 
	mov	r0,#___global_nthPartitionVBRmounted
	mov	a,@r0
	cjne	a,ar7,00102$
;	fat.h:344: return 0; //return if already loaded, else continue;
	mov	dpl,#0x00
	ret
00102$:
;	fat.h:355: __global_nthPartitionVBRmounted=partition_number; //set global variable
	mov	r0,#___global_nthPartitionVBRmounted
	mov	@r0,ar7
;	fat.h:358: if(MBR_LOAD_PARTITION_TABLE_ENTRY(partition_number))  //if error, 0 is success
	mov	dpl,r7
	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
	mov	a,dpl
	jz	00104$
;	fat.h:360: return 1; //return error
	mov	dpl,#0x01
	ret
00104$:
;	fat.h:364: SDread(__global_partitionTableEntry.start,0,16,temp);
	mov	r0,#(___global_partitionTableEntry + 0x0001)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#_VBR_MOUNT_VBR_temp_65536_144
	push	acc
	mov	a,#(_VBR_MOUNT_VBR_temp_65536_144 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_SDread
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	fat.h:373: __global_vbr.volumeStartSector = __global_partitionTableEntry.start;
	mov	r0,#(___global_partitionTableEntry + 0x0001)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,#___global_vbr
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	fat.h:375: __global_vbr.bps = HELPER_load_littleendian16(&temp[0x0b]); // bps starts at offset 0x0b
	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000b)
	mov	b,#0x40
	lcall	_HELPER_load_littleendian16
	mov	a,dpl
	mov	b,dph
	mov	r0,#(___global_vbr + 0x0006)
	mov	@r0,a
	inc	r0
	mov	@r0,b
;	fat.h:376: __global_vbr.spc = temp[0x0d]; //spc offset 0x0d
	mov	r0,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000d)
	mov	ar7,@r0
	mov	r0,#(___global_vbr + 0x0008)
	mov	@r0,ar7
;	fat.h:377: __global_vbr.reservedSectors = HELPER_load_littleendian16(&temp[0x0e]);
	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000e)
	mov	b,#0x40
	lcall	_HELPER_load_littleendian16
	mov	a,dpl
	mov	b,dph
	mov	r0,#(___global_vbr + 0x0004)
	mov	@r0,a
	inc	r0
	mov	@r0,b
;	fat.h:381: SDread(__global_partitionTableEntry.start,16,16,temp);
	mov	r0,#(___global_partitionTableEntry + 0x0001)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#_VBR_MOUNT_VBR_temp_65536_144
	push	acc
	mov	a,#(_VBR_MOUNT_VBR_temp_65536_144 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_SDread
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	fat.h:390: __global_vbr.nfat = HELPER_load_littleendian16(&temp[0x10-16]); //offset of nfat is 0x01, but we subtract 16 as we have read from 16 offset in SDread
	mov	dptr,#_VBR_MOUNT_VBR_temp_65536_144
	mov	b,#0x40
	lcall	_HELPER_load_littleendian16
	mov	a,dpl
	mov	b,dph
	mov	r0,#(___global_vbr + 0x0009)
	mov	@r0,a
	inc	r0
	mov	@r0,b
;	fat.h:391: __global_vbr.nroote = HELPER_load_littleendian16(&temp[0x11-16]); //offset of number_root_entrie is 0x11
	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x0001)
	mov	b,#0x40
	lcall	_HELPER_load_littleendian16
	mov	a,dpl
	mov	b,dph
	mov	r0,#(___global_vbr + 0x000d)
	mov	@r0,a
	inc	r0
	mov	@r0,b
;	fat.h:392: __global_vbr.spf = HELPER_load_littleendian16(&temp[0x16-16]); //offset of sectors_per_fat is 0x16
	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x0006)
	mov	b,#0x40
	lcall	_HELPER_load_littleendian16
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#(___global_vbr + 0x000b)
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	fat.h:401: __global_vbr.bpc =  (uint32_t)__global_vbr.bps * (uint32_t)__global_vbr.spc; 
	mov	r0,#(___global_vbr + 0x0006)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	_VBR_MOUNT_VBR_sloc0_1_0,r4
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),r5
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),#0x00
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),#0x00
	mov	r0,#(___global_vbr + 0x0008)
	mov	ar5,@r0
	mov	__mullong_PARM_2,r5
	mov	(__mullong_PARM_2 + 1),#0x00
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	mov	dpl,_VBR_MOUNT_VBR_sloc0_1_0
	mov	dph,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
	mov	b,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
	mov	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
	push	ar7
	push	ar6
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	r0,#(___global_vbr + 0x000f)
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	fat.h:404: __global_vbr.addr_fat_start = __global_vbr.volumeStartSector + __global_vbr.reservedSectors;
	mov	r0,#___global_vbr
	mov	_VBR_MOUNT_VBR_sloc0_1_0,@r0
	inc	r0
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),@r0
	inc	r0
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),@r0
	inc	r0
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),@r0
	mov	r0,#(___global_vbr + 0x0004)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	clr	a
	mov	r3,a
	mov	r2,a
	mov	a,r4
	add	a,_VBR_MOUNT_VBR_sloc0_1_0
	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
	mov	a,r5
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
	mov	a,r3
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
	mov	a,r2
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
	mov	r0,#(___global_vbr + 0x0013)
	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
	inc	r0
	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
	inc	r0
	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
	inc	r0
	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
;	fat.h:405: __global_vbr.addr_roote_start = __global_vbr.addr_fat_start + __global_vbr.nfat * __global_vbr.spf;
	mov	r0,#(___global_vbr + 0x0009)
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	ar4,r6
	mov	ar5,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r4
	add	a,_VBR_MOUNT_VBR_sloc0_1_0
	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
	mov	a,r5
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
	mov	a,r6
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
	mov	a,r7
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
	mov	r0,#(___global_vbr + 0x0017)
	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
	inc	r0
	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
	inc	r0
	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
	inc	r0
	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
;	fat.h:406: __global_vbr.addr_data_start = __global_vbr.addr_roote_start + (__global_vbr.nroote*32)/__global_vbr.bps;
	mov	r0,#(___global_vbr + 0x000d)
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	dpl,r2
	mov	a,r3
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,dpl
	swap	a
	rl	a
	xch	a,dpl
	xrl	a,dpl
	xch	a,dpl
	anl	a,#0xe0
	xch	a,dpl
	xrl	a,dpl
	mov	dph,a
	mov	r0,#(___global_vbr + 0x0006)
	mov	__divuint_PARM_2,@r0
	inc	r0
	mov	(__divuint_PARM_2 + 1),@r0
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r2
	add	a,_VBR_MOUNT_VBR_sloc0_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
	mov	r3,a
	mov	a,r6
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
	mov	r7,a
	mov	r0,#(___global_vbr + 0x001b)
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	fat.h:414: return 0;
	mov	dpl,#0x00
;	fat.h:416: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'VBR_FAT16_CHECK_COMPATIBILITY'
;------------------------------------------------------------
;partition_number          Allocated to registers r7 
;------------------------------------------------------------
;	fat.h:418: uint8_t VBR_FAT16_CHECK_COMPATIBILITY(uint8_t partition_number)
;	-----------------------------------------
;	 function VBR_FAT16_CHECK_COMPATIBILITY
;	-----------------------------------------
_VBR_FAT16_CHECK_COMPATIBILITY:
;	fat.h:424: if(VBR_MOUNT_VBR(partition_number))
	lcall	_VBR_MOUNT_VBR
	mov	a,dpl
	jz	00102$
;	fat.h:426: return 1; //error
	mov	dpl,#0x01
	ret
00102$:
;	fat.h:429: if(__global_vbr.bps!=SD_BLOCK_SIZE) 
	mov	r0,#(___global_vbr + 0x0006)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	cjne	r6,#0x00,00116$
	cjne	r7,#0x02,00116$
	sjmp	00104$
00116$:
;	fat.h:434: return 2; //error - not supported fat16
	mov	dpl,#0x02
	ret
00104$:
;	fat.h:437: return 0;
	mov	dpl,#0x00
;	fat.h:438: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_ROOTENTRY_DUMP'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	fat.h:441: void FAT16_ROOTENTRY_DUMP()
;	-----------------------------------------
;	 function FAT16_ROOTENTRY_DUMP
;	-----------------------------------------
_FAT16_ROOTENTRY_DUMP:
;	fat.h:443: UartPrint("\nROOT_ENTRY_INDEX:");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_UartPrint
;	fat.h:444: UartPrintNumber(__global_rootEntry.entry_index);
	mov	r0,#(___global_rootEntry + 0x0012)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_UartPrintNumber
;	fat.h:445: UartPrint("\nFILE: ");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_UartPrint
;	fat.h:446: for(uint8_t i=0;i<8;i++)UartWrite(__global_rootEntry.name[i]);
	mov	r7,#0x00
00104$:
	cjne	r7,#0x08,00129$
00129$:
	jnc	00101$
	mov	a,r7
	add	a,#___global_rootEntry
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	lcall	_UartWrite
	pop	ar7
	inc	r7
	sjmp	00104$
00101$:
;	fat.h:447: for(uint8_t i=0;i<3;i++)UartWrite(__global_rootEntry.extension[i]);
	mov	r7,#0x00
00107$:
	cjne	r7,#0x03,00131$
00131$:
	jnc	00102$
	mov	a,r7
	add	a,#(___global_rootEntry + 0x0008)
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	lcall	_UartWrite
	pop	ar7
	inc	r7
	sjmp	00107$
00102$:
;	fat.h:448: UartPrint("\nSTART: ");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_UartPrint
;	fat.h:449: UartPrintNumber(__global_rootEntry.startCluster);
	mov	r0,#(___global_rootEntry + 0x000c)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	_UartPrintNumber
;	fat.h:450: UartPrint("\nSIZE: ");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_UartPrint
;	fat.h:451: UartPrintNumber(__global_rootEntry.size);			
	mov	r0,#(___global_rootEntry + 0x000e)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_UartPrintNumber
;	fat.h:452: UartPrint("\nATTR: 0x");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_UartPrint
;	fat.h:453: UartWriteNumber(__global_rootEntry.attributes,HEX);			
	mov	r0,#(___global_rootEntry + 0x000b)
	mov	dpl,@r0
	clr	a
	push	acc
	lcall	_UartWriteNumber
	dec	sp
;	fat.h:454: UartWrite('\n\n');
	mov	dpl,#0x0a
;	fat.h:455: }
	ljmp	_UartWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_LOAD_ROOTENTRY'
;------------------------------------------------------------
;roote_number              Allocated with name '_FAT16_LOAD_ROOTENTRY_roote_number_65536_155'
;i                         Allocated to registers r7 
;i                         Allocated to registers r7 
;sloc0                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc0_1_0'
;sloc1                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc1_1_0'
;temp                      Allocated with name '_FAT16_LOAD_ROOTENTRY_temp_65536_156'
;sector_of_given_roote     Allocated to registers r2 r3 r4 r5 
;offset_in_this_sector     Allocated to registers r6 r7 
;------------------------------------------------------------
;	fat.h:465: uint8_t FAT16_LOAD_ROOTENTRY(uint16_t roote_number)
;	-----------------------------------------
;	 function FAT16_LOAD_ROOTENTRY
;	-----------------------------------------
_FAT16_LOAD_ROOTENTRY:
	mov	_FAT16_LOAD_ROOTENTRY_roote_number_65536_155,dpl
	mov	(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1),dph
;	fat.h:474: if(roote_number < __global_vbr.nroote);//pass
	mov	r0,#(___global_vbr + 0x000d)
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	clr	c
	mov	a,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
	subb	a,r4
	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
	subb	a,r5
	jc	00103$
;	fat.h:475: else return 1; // error as roote_number is more than number of root entries present in rootentry table 
	mov	dpl,#0x01
	ret
00103$:
;	fat.h:477: VBR_MOUNT_VBR(__global_nthPartitionVBRmounted);
	mov	r0,#___global_nthPartitionVBRmounted
	mov	dpl,@r0
	lcall	_VBR_MOUNT_VBR
;	fat.h:480: sector_of_given_roote = __global_vbr.addr_roote_start + (roote_number*32)/__global_vbr.bps;
	mov	r0,#(___global_vbr + 0x0017)
	mov	_FAT16_LOAD_ROOTENTRY_sloc0_1_0,@r0
	inc	r0
	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1),@r0
	inc	r0
	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2),@r0
	inc	r0
	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3),@r0
	mov	r6,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	r0,#(___global_vbr + 0x0006)
	mov	_FAT16_LOAD_ROOTENTRY_sloc1_1_0,@r0
	inc	r0
	mov	(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1),@r0
	mov	__divuint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
	mov	(__divuint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,r2
	add	a,_FAT16_LOAD_ROOTENTRY_sloc0_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1)
	mov	r3,a
	mov	a,r4
	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2)
	mov	r4,a
	mov	a,r5
	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3)
	mov	r5,a
;	fat.h:481: offset_in_this_sector = (roote_number*32)%__global_vbr.bps;
	mov	__moduint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
	mov	(__moduint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__moduint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	fat.h:483: SDread(sector_of_given_roote,offset_in_this_sector,32,temp);
	mov	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
	push	acc
	mov	a,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	rr	a
	push	acc
	clr	a
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_SDread
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	fat.h:485: __global_rootEntry.entry_index = roote_number; //save the index of the root_entry
	mov	r0,#(___global_rootEntry + 0x0012)
	mov	@r0,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
	inc	r0
	mov	@r0,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
;	fat.h:486: __global_rootEntry.bytes_read = 0; //no bytes has been read so far by FAT16_FILE_READ as we have just loaded the rootentry
	mov	r0,#(___global_rootEntry + 0x0014)
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	fat.h:488: for(uint8_t i=0;i<8;i++) __global_rootEntry.name[i] = temp[i];
	mov	r7,#0x00
00107$:
	cjne	r7,#0x08,00137$
00137$:
	jnc	00104$
	mov	a,r7
	add	a,#___global_rootEntry
	mov	r1,a
	mov	a,r7
	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
	mov	r0,a
	mov	ar6,@r0
	mov	@r1,ar6
	inc	r7
	sjmp	00107$
00104$:
;	fat.h:489: for(uint8_t i=8;i<11;i++) __global_rootEntry.extension[i-8] = temp[i];
	mov	r7,#0x08
00110$:
	cjne	r7,#0x0b,00139$
00139$:
	jnc	00105$
	mov	ar6,r7
	mov	a,r6
	add	a,#0xf8
	add	a,#(___global_rootEntry + 0x0008)
	mov	r1,a
	mov	a,r7
	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
	mov	r0,a
	mov	ar6,@r0
	mov	@r1,ar6
	inc	r7
	sjmp	00110$
00105$:
;	fat.h:491: __global_rootEntry.attributes = temp[0x0b];
	mov	r0,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x000b)
	mov	ar7,@r0
	mov	r0,#(___global_rootEntry + 0x000b)
	mov	@r0,ar7
;	fat.h:492: __global_rootEntry.startCluster = HELPER_load_littleendian16(&temp[0x1a]);
	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x001a)
	mov	b,#0x40
	lcall	_HELPER_load_littleendian16
	mov	a,dpl
	mov	b,dph
	mov	r0,#(___global_rootEntry + 0x000c)
	mov	@r0,a
	inc	r0
	mov	@r0,b
;	fat.h:493: __global_rootEntry.size = HELPER_load_littleendian32(&temp[0x1c]);
	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x001c)
	mov	b,#0x40
	lcall	_HELPER_load_littleendian32
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#(___global_rootEntry + 0x000e)
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	fat.h:495: return 0;
	mov	dpl,#0x00
;	fat.h:496: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_IS_ROOTENTRY_VALID_FILE'
;------------------------------------------------------------
;	fat.h:497: uint8_t FAT16_IS_ROOTENTRY_VALID_FILE()
;	-----------------------------------------
;	 function FAT16_IS_ROOTENTRY_VALID_FILE
;	-----------------------------------------
_FAT16_IS_ROOTENTRY_VALID_FILE:
;	fat.h:500: if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_AVAILABLE)
	mov	r0,#___global_rootEntry
	mov	a,@r0
	mov	r7,a
	jnz	00112$
;	fat.h:505: return 255; //no more entries, stop scanning
	mov	dpl,#0xff
	ret
00112$:
;	fat.h:507: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DELETED)
	cjne	r7,#0xe5,00109$
;	fat.h:513: return FAT16_ROOTENTRY_DELETED; //deleted and available
	mov	dpl,#0xe5
	ret
00109$:
;	fat.h:515: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DOT)
	cjne	r7,#0x2e,00106$
;	fat.h:520: return FAT16_ROOTENTRY_DOT; //this is the entry to self
	mov	dpl,#0x2e
	ret
00106$:
;	fat.h:525: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_HIDDEN ||
	mov	dptr,#___global_rootEntry
	mov	b,#0x40
	lcall	_HELPER_rootentry_type
	mov	r7,dpl
	cjne	r7,#0x01,00141$
	sjmp	00101$
00141$:
;	fat.h:526: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_SYSTEM ||
	mov	dptr,#___global_rootEntry
	mov	b,#0x40
	lcall	_HELPER_rootentry_type
	mov	r7,dpl
	cjne	r7,#0x02,00142$
	sjmp	00101$
00142$:
;	fat.h:527: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_VOLUME
	mov	dptr,#___global_rootEntry
	mov	b,#0x40
	lcall	_HELPER_rootentry_type
	mov	r7,dpl
	cjne	r7,#0x03,00110$
00101$:
;	fat.h:534: return 254;
	mov	dpl,#0xfe
	ret
00110$:
;	fat.h:537: return 0;
	mov	dpl,#0x00
;	fat.h:538: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_ROOTENTRY_READ'
;------------------------------------------------------------
;roote_index               Allocated to registers r6 r7 
;file_validity             Allocated to registers r7 
;------------------------------------------------------------
;	fat.h:541: uint8_t FAT16_ROOTENTRY_READ(uint16_t roote_index)
;	-----------------------------------------
;	 function FAT16_ROOTENTRY_READ
;	-----------------------------------------
_FAT16_ROOTENTRY_READ:
;	fat.h:551: if(FAT16_LOAD_ROOTENTRY(roote_index)) // if returns 1, then we have reached the end of the rootentry table
	lcall	_FAT16_LOAD_ROOTENTRY
	mov	a,dpl
	jz	00102$
;	fat.h:553: return 0xff; //end of scan
	mov	dpl,#0xff
	ret
00102$:
;	fat.h:557: file_validity=FAT16_IS_ROOTENTRY_VALID_FILE(); //check validity
	lcall	_FAT16_IS_ROOTENTRY_VALID_FILE
	mov	r7,dpl
;	fat.h:559: if(file_validity==255)return 0xff; //end of scan
	cjne	r7,#0xff,00106$
	mov	dpl,#0xff
	ret
00106$:
;	fat.h:560: else if(file_validity==0)
	mov	a,r7
;	fat.h:566: return 0;
	jnz	00107$
	mov	dpl,a
	ret
00107$:
;	fat.h:569: return 1; //invalid file if context reaches here
	mov	dpl,#0x01
;	fat.h:572: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN_RESET'
;------------------------------------------------------------
;	fat.h:574: void FAT16_ROOTENTRY_SCAN_RESET()
;	-----------------------------------------
;	 function FAT16_ROOTENTRY_SCAN_RESET
;	-----------------------------------------
_FAT16_ROOTENTRY_SCAN_RESET:
;	fat.h:576: __global_rootEntry.entry_index=0xffff; // in FAT16, maximum number of root entries can never reach 0xffff.
	mov	r0,#(___global_rootEntry + 0x0012)
	mov	@r0,#0xff
	inc	r0
	mov	@r0,#0xff
;	fat.h:582: __global_rootEntry.attributes |= 1<<FILETYPE_SYSTEM;
	mov	r0,#(___global_rootEntry + 0x000b)
	mov	ar7,@r0
	mov	a,#0x04
	orl	a,r7
	mov	r0,#(___global_rootEntry + 0x000b)
	mov	@r0,a
;	fat.h:583: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN'
;------------------------------------------------------------
;validity                  Allocated to registers r7 
;------------------------------------------------------------
;	fat.h:585: uint8_t FAT16_ROOTENTRY_SCAN() __reentrant
;	-----------------------------------------
;	 function FAT16_ROOTENTRY_SCAN
;	-----------------------------------------
_FAT16_ROOTENTRY_SCAN:
;	fat.h:590: while(1)
00110$:
;	fat.h:598: validity=FAT16_ROOTENTRY_READ(__global_rootEntry.entry_index+1); //read the next entry
	mov	r0,#(___global_rootEntry + 0x0012)
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	lcall	_FAT16_ROOTENTRY_READ
	mov	r7,dpl
;	fat.h:600: if ( validity == 255 )
	cjne	r7,#0xff,00107$
;	fat.h:606: return 255; //end scan
	mov	dpl,#0xff
	ret
00107$:
;	fat.h:608: else if (validity == 1) 
	cjne	r7,#0x01,00132$
	sjmp	00110$
00132$:
;	fat.h:616: else if(validity == 0)
	mov	a,r7
;	fat.h:623: return 0; // found a valid file,break out of the loop
	jnz	00110$
	mov	dpl,a
;	fat.h:630: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_FILE_OPEN'
;------------------------------------------------------------
;filename                  Allocated to registers r5 r6 r7 
;filename83                Allocated to stack - _bp +1
;------------------------------------------------------------
;	fat.h:632: uint8_t FAT16_FILE_OPEN(char *filename) __reentrant
;	-----------------------------------------
;	 function FAT16_FILE_OPEN
;	-----------------------------------------
_FAT16_FILE_OPEN:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0c
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	fat.h:638: if(HELPER_filename_to_8dot3filename(filename,filename83)) 
	mov	r4,_bp
	inc	r4
	mov	_HELPER_filename_to_8dot3filename_PARM_2,r4
	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 1),#0x00
	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 2),#0x40
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	lcall	_HELPER_filename_to_8dot3filename
	mov	a,dpl
	pop	ar4
	jz	00102$
;	fat.h:643: return 1; //invalid filename
	mov	dpl,#0x01
	sjmp	00109$
00102$:
;	fat.h:646: FAT16_ROOTENTRY_SCAN_RESET();
	push	ar4
	lcall	_FAT16_ROOTENTRY_SCAN_RESET
	pop	ar4
;	fat.h:647: while(FAT16_ROOTENTRY_SCAN()==0)
	mov	ar7,r4
	mov	a,#0x08
	add	a,r4
	mov	r6,a
00106$:
	push	ar7
	push	ar6
	lcall	_FAT16_ROOTENTRY_SCAN
	mov	a,dpl
	pop	ar6
	pop	ar7
;	fat.h:649: if( HELPER_strncmp(__global_rootEntry.name,filename83,8)==0 && 
	jnz	00108$
	mov	_HELPER_strncmp_PARM_2,r7
	mov	(_HELPER_strncmp_PARM_2 + 1),a
	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
	mov	_HELPER_strncmp_PARM_3,#0x08
	mov	dptr,#___global_rootEntry
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_HELPER_strncmp
	mov	a,dpl
	pop	ar6
	pop	ar7
;	fat.h:650: HELPER_strncmp(__global_rootEntry.extension,&filename83[8],3)==0 )
	jnz	00106$
	mov	_HELPER_strncmp_PARM_2,r6
	mov	(_HELPER_strncmp_PARM_2 + 1),a
	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
	mov	_HELPER_strncmp_PARM_3,#0x03
	mov	dptr,#(___global_rootEntry + 0x0008)
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_HELPER_strncmp
	mov	a,dpl
	pop	ar6
	pop	ar7
;	fat.h:656: return 0; //file found
	jnz	00106$
	mov	dpl,a
	sjmp	00109$
00108$:
;	fat.h:663: return 2; // file not found
	mov	dpl,#0x02
00109$:
;	fat.h:665: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_GET_NEXT_CLUSTER'
;------------------------------------------------------------
;current_cluster           Allocated to registers r6 r7 
;temp                      Allocated to stack - _bp +8
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +8
;sloc2                     Allocated to stack - _bp +10
;sloc3                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	fat.h:668: uint16_t FAT16_GET_NEXT_CLUSTER(uint16_t current_cluster) __reentrant
;	-----------------------------------------
;	 function FAT16_GET_NEXT_CLUSTER
;	-----------------------------------------
_FAT16_GET_NEXT_CLUSTER:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x09
	mov	sp,a
	mov	r6,dpl
	mov	r7,dph
;	fat.h:677: SDread(__global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps, (current_cluster*2) % __global_vbr.bps, 2, temp);
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar1
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	r0,#(___global_vbr + 0x0006)
	mov	ar5,@r0
	inc	r0
	mov	ar4,@r0
	mov	__moduint_PARM_2,r5
	mov	(__moduint_PARM_2 + 1),r4
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	lcall	__moduint
	mov	r3,dpl
	mov	r2,dph
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar1
	mov	r1,#(___global_vbr + 0x0013)
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar1
	mov	__divuint_PARM_2,r5
	mov	(__divuint_PARM_2 + 1),r4
	mov	dpl,r6
	mov	dph,r7
	push	ar3
	push	ar2
	push	ar1
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	pop	ar2
	pop	ar3
	mov	ar4,r6
	mov	ar5,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	push	ar1
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_SDread
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar1
;	fat.h:678: return (uint16_t)temp[1] << 8 | temp[0]; 
	mov	a,r1
	inc	a
	mov	r0,a
	mov	ar7,@r0
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar5,@r1
	mov	r4,#0x00
	mov	a,r5
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	fat.h:684: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_FILE_READ'
;------------------------------------------------------------
;dst                       Allocated to stack - _bp -5
;nbytes                    Allocated to stack - _bp +1
;current_cluster           Allocated to registers r7 r6 
;bytes_read_in_current_cluster Allocated to stack - _bp +10
;bytes_read_in_current_sector Allocated to stack - _bp +12
;current_sector            Allocated to stack - _bp +14
;sloc0                     Allocated to stack - _bp +2
;sloc1                     Allocated to stack - _bp +6
;------------------------------------------------------------
;	fat.h:705: uint8_t FAT16_FILE_READ(uint8_t nbytes, uint8_t *dst) __reentrant
;	-----------------------------------------
;	 function FAT16_FILE_READ
;	-----------------------------------------
_FAT16_FILE_READ:
	push	_bp
	mov	_bp,sp
	push	dpl
	mov	a,sp
	add	a,#0x10
	mov	sp,a
;	fat.h:714: if(nbytes==0)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
;	fat.h:716: return 0; //read 0 bytes
	jnz	00102$
	mov	dpl,a
	ljmp	00113$
00102$:
;	fat.h:719: if(nbytes & (nbytes-1))
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xff
	mov	r3,a
	mov	a,r6
	addc	a,#0xff
	mov	r4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	anl	ar6,a
	mov	a,r5
	orl	a,r6
	jz	00104$
;	fat.h:724: return 255; //error
	mov	dpl,#0xff
	ljmp	00113$
00104$:
;	fat.h:727: if(__global_rootEntry.bytes_read == __global_rootEntry.size)
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	r1,#(___global_rootEntry + 0x0014)
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	mov	r0,#(___global_rootEntry + 0x000e)
	mov	ar2,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	cjne	a,ar2,00141$
	inc	r0
	mov	a,@r0
	cjne	a,ar5,00141$
	inc	r0
	mov	a,@r0
	cjne	a,ar6,00141$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00141$
	sjmp	00142$
00141$:
	sjmp	00111$
00142$:
;	fat.h:729: return 0; //end of file - return number of bytes read
	mov	dpl,#0x00
	ljmp	00113$
00111$:
;	fat.h:734: bytes_read_in_current_cluster = __global_rootEntry.bytes_read % __global_vbr.bpc;
	mov	r0,#(___global_vbr + 0x000f)
	mov	__modulong_PARM_2,@r0
	inc	r0
	mov	(__modulong_PARM_2 + 1),@r0
	inc	r0
	mov	(__modulong_PARM_2 + 2),@r0
	inc	r0
	mov	(__modulong_PARM_2 + 3),@r0
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__modulong
	mov	r3,dpl
	mov	r4,dph
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	fat.h:778: if(__global_rootEntry.bytes_read!=0 && bytes_read_in_current_cluster==0)
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jz	00106$
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
;	fat.h:780: __global_rootEntry.startCluster = FAT16_GET_NEXT_CLUSTER(__global_rootEntry.startCluster);
	mov	r0,#(___global_rootEntry + 0x000c)
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_FAT16_GET_NEXT_CLUSTER
	mov	a,dpl
	mov	b,dph
	mov	r0,#(___global_rootEntry + 0x000c)
	mov	@r0,a
	inc	r0
	mov	@r0,b
00106$:
;	fat.h:784: current_cluster = __global_rootEntry.startCluster;
	mov	r0,#(___global_rootEntry + 0x000c)
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
;	fat.h:789: current_sector =    __global_vbr.addr_data_start 						//start of data
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	r1,#(___global_vbr + 0x001b)
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
;	fat.h:790: + (current_cluster-2) * __global_vbr.spc 				//skip to the start of current cluster
	mov	a,r7
	add	a,#0xfe
	mov	dpl,a
	mov	a,r6
	addc	a,#0xff
	mov	dph,a
	mov	r0,#(___global_vbr + 0x0008)
	mov	ar3,@r0
	mov	__mulint_PARM_2,r3
	mov	(__mulint_PARM_2 + 1),#0x00
	lcall	__mulint
	mov	r3,dpl
	mov	r7,dph
	mov	ar5,r7
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	fat.h:791: + bytes_read_in_current_cluster/__global_vbr.bps;	//skip sectors already read in current cluster
	mov	r0,#(___global_vbr + 0x0006)
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	__divuint_PARM_2,r2
	mov	(__divuint_PARM_2 + 1),r4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar4
	push	ar2
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar4
	mov	r5,#0x00
	mov	r3,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar3
;	fat.h:794: bytes_read_in_current_sector = bytes_read_in_current_cluster % __global_vbr.bps;
	mov	__moduint_PARM_2,r2
	mov	(__moduint_PARM_2 + 1),r4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__moduint
	xch	a,r0
	mov	a,_bp
	add	a,#0x0c
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	fat.h:798: if(__global_rootEntry.bytes_read + nbytes > __global_rootEntry.size )
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	r1,#(___global_rootEntry + 0x0014)
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r3,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	r1,#(___global_rootEntry + 0x000e)
	mov	a,@r1
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00109$
;	fat.h:800: nbytes = __global_rootEntry.size - __global_rootEntry.bytes_read;//;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	mov	r0,_bp
	inc	r0
	mov	a,r7
	clr	c
	subb	a,r2
	mov	@r0,a
00109$:
;	fat.h:819: __global_rootEntry.bytes_read += nbytes;
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	r0,#(___global_rootEntry + 0x0014)
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	fat.h:822: SDread(current_sector,bytes_read_in_current_sector,nbytes,dst);
	mov	r0,_bp
	inc	r0
	mov	ar6,@r0
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_SDread
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	fat.h:827: return nbytes;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
00113$:
;	fat.h:829: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FAT16_FILE_CAT'
;------------------------------------------------------------
;filename                  Allocated to registers r5 r6 r7 
;temp                      Allocated to stack - _bp +1
;resp                      Allocated to registers r6 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	fat.h:831: void FAT16_FILE_CAT(uint8_t *filename) __reentrant
;	-----------------------------------------
;	 function FAT16_FILE_CAT
;	-----------------------------------------
_FAT16_FILE_CAT:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x08
	mov	sp,a
;	fat.h:838: if(FAT16_FILE_OPEN(filename))
	lcall	_FAT16_FILE_OPEN
	mov	a,dpl
	jz	00115$
;	fat.h:840: UartPrint("FILE NOT FOUND\n.");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_UartPrint
;	fat.h:841: return;
;	fat.h:844: do
	sjmp	00110$
00115$:
	mov	r7,_bp
	inc	r7
00104$:
;	fat.h:846: resp=FAT16_FILE_READ(FILE_CAT_BUFFER_SIZE,temp);
	mov	ar4,r7
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,#0x08
	lcall	_FAT16_FILE_READ
	mov	r6,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	fat.h:847: for(uint8_t i=0;i<resp;i++) UartWrite(temp[i]);
	mov	r5,#0x00
00108$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00105$
	mov	a,r5
	add	a,r7
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	push	ar6
	push	ar5
	lcall	_UartWrite
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r5
	sjmp	00108$
00105$:
;	fat.h:850: } while (resp!=0);
	mov	a,r6
	jnz	00104$
;	fat.h:852: return;
00110$:
;	fat.h:854: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;millisec                  Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r3 
;------------------------------------------------------------
;	serialloader.h:16: void delay_ms(unsigned int millisec)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6,dpl
	mov	r7,dph
;	serialloader.h:18: for(unsigned int i=0;i<millisec;i++)for(unsigned char j=0;j<255;j++); //wait millisec * 1ms
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
	mov	r3,#0x00
00104$:
	cjne	r3,#0xff,00130$
00130$:
	jnc	00108$
	inc	r3
	sjmp	00104$
00108$:
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	serialloader.h:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SL_disable_write_protection'
;------------------------------------------------------------
;xram_addr                 Allocated to registers 
;------------------------------------------------------------
;	serialloader.h:21: void SL_disable_write_protection()
;	-----------------------------------------
;	 function SL_disable_write_protection
;	-----------------------------------------
_SL_disable_write_protection:
;	serialloader.h:26: *(xram_addr) = 0xAA;
	mov	dptr,#0x1555
	mov	a,#0xaa
	movx	@dptr,a
;	serialloader.h:28: *(xram_addr) = 0x55;
	mov	dptr,#0x0aaa
	cpl	a
	movx	@dptr,a
;	serialloader.h:30: *(xram_addr) = 0x80;
;	serialloader.h:34: *(xram_addr) = 0xAA;
	mov	dptr,#0x1555
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0xaa
	movx	@dptr,a
;	serialloader.h:36: *(xram_addr) = 0x55;
	mov	dptr,#0x0aaa
	cpl	a
	movx	@dptr,a
;	serialloader.h:38: *(xram_addr) = 0x20;
	mov	dptr,#0x1555
	mov	a,#0x20
	movx	@dptr,a
;	serialloader.h:40: UartWrite('D'); //ack
	mov	dpl,#0x44
	lcall	_UartWrite
;	serialloader.h:42: EEPROM_WRITE_PROTECTION=0; //change flag
	mov	_EEPROM_WRITE_PROTECTION,#0x00
;	serialloader.h:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SL_enable_write_protection'
;------------------------------------------------------------
;	serialloader.h:45: void SL_enable_write_protection()
;	-----------------------------------------
;	 function SL_enable_write_protection
;	-----------------------------------------
_SL_enable_write_protection:
;	serialloader.h:47: EEPROM_WRITE_PROTECTION=1; //change flag
	mov	_EEPROM_WRITE_PROTECTION,#0x01
;	serialloader.h:48: UartWrite('E'); 
	mov	dpl,#0x45
;	serialloader.h:49: }
	ljmp	_UartWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'SL_write'
;------------------------------------------------------------
;data                      Allocated to registers r5 
;addr                      Allocated to registers r7 r6 
;xram_addr                 Allocated to registers 
;------------------------------------------------------------
;	serialloader.h:51: void SL_write()
;	-----------------------------------------
;	 function SL_write
;	-----------------------------------------
_SL_write:
;	serialloader.h:57: while(UartReadReady()==0); //wait till we rcv data
00101$:
	lcall	_UartReadReady
	mov	a,dpl
	jz	00101$
;	serialloader.h:60: addr = UartRead(); //msb
	lcall	_UartRead
;	serialloader.h:61: addr = addr << 8;
	mov	r6,dpl
	mov	r7,#0x00
;	serialloader.h:62: addr |= UartRead(); //lsb
	push	ar7
	push	ar6
	lcall	_UartRead
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	serialloader.h:64: data = UartRead(); //read data
	push	ar7
	push	ar6
	lcall	_UartRead
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	serialloader.h:66: if(EEPROM_WRITE_PROTECTION)
	mov	a,_EEPROM_WRITE_PROTECTION
	jz	00105$
;	serialloader.h:70: *(xram_addr) = 0xAA;
	mov	dptr,#0x1555
	mov	a,#0xaa
	movx	@dptr,a
;	serialloader.h:72: *(xram_addr) = 0x55;
	mov	dptr,#0x0aaa
	cpl	a
	movx	@dptr,a
;	serialloader.h:74: *(xram_addr) = 0xA0;
	mov	dptr,#0x1555
	mov	a,#0xa0
	movx	@dptr,a
00105$:
;	serialloader.h:77: xram_addr = (__xdata unsigned char*) addr;
	mov	dpl,r7
	mov	dph,r6
;	serialloader.h:79: *(xram_addr) = data; //write to xram
	mov	a,r5
	movx	@dptr,a
;	serialloader.h:81: UartWrite('W'); //ack
	mov	dpl,#0x57
;	serialloader.h:83: }
	ljmp	_UartWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'SL_read'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;addr                      Allocated to registers r7 r6 
;xram_addr                 Allocated to registers 
;------------------------------------------------------------
;	serialloader.h:85: void SL_read()
;	-----------------------------------------
;	 function SL_read
;	-----------------------------------------
_SL_read:
;	serialloader.h:91: while(UartReadReady()==0); //wait till we rcv data
00101$:
	lcall	_UartReadReady
	mov	a,dpl
	jz	00101$
;	serialloader.h:95: addr = UartRead(); //msb
	lcall	_UartRead
;	serialloader.h:96: addr = addr << 8;
	mov	r6,dpl
	mov	r7,#0x00
;	serialloader.h:97: addr |= UartRead(); //lsb
	push	ar7
	push	ar6
	lcall	_UartRead
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,r5
	orl	ar7,a
	mov	a,r4
	orl	ar6,a
;	serialloader.h:99: xram_addr = (__xdata unsigned char*) addr;
	mov	dpl,r7
	mov	dph,r6
;	serialloader.h:101: data = *(xram_addr); //read from xram
	movx	a,@dptr
;	serialloader.h:103: UartWrite(data);
	mov	dpl,a
;	serialloader.h:105: }
	ljmp	_UartWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'SL_getcmd'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
;	serialloader.h:107: void SL_getcmd()
;	-----------------------------------------
;	 function SL_getcmd
;	-----------------------------------------
_SL_getcmd:
;	serialloader.h:110: while(UartReadReady()) UartRead(); //flush 
00101$:
	lcall	_UartReadReady
	mov	a,dpl
	jz	00104$
	lcall	_UartRead
;	serialloader.h:112: while(UartReadReady()==0); //wait till we rcv data 
	sjmp	00101$
00104$:
	lcall	_UartReadReady
	mov	a,dpl
	jz	00104$
;	serialloader.h:115: cmd = UartRead(); //read
	lcall	_UartRead
	mov	r7,dpl
;	serialloader.h:117: switch(cmd)
	cjne	r7,#0x44,00154$
	sjmp	00110$
00154$:
	cjne	r7,#0x45,00155$
	sjmp	00111$
00155$:
	cjne	r7,#0x52,00156$
	sjmp	00108$
00156$:
	cjne	r7,#0x56,00157$
	sjmp	00107$
00157$:
;	serialloader.h:119: case 'V':
	cjne	r7,#0x57,00114$
	sjmp	00109$
00107$:
;	serialloader.h:120: UartPrint("ISA_SERIAL_LOADER_V0.1:8052\n");
	mov	dptr,#___str_9
	mov	b,#0x80
;	serialloader.h:121: break;
;	serialloader.h:122: case 'R':
	ljmp	_UartPrint
00108$:
;	serialloader.h:123: SL_read();
;	serialloader.h:124: break;
;	serialloader.h:125: case 'W':
	ljmp	_SL_read
00109$:
;	serialloader.h:126: SL_write();
;	serialloader.h:127: break;
;	serialloader.h:128: case 'D':
	ljmp	_SL_write
00110$:
;	serialloader.h:129: SL_disable_write_protection();
;	serialloader.h:130: break;
;	serialloader.h:131: case 'E':
	ljmp	_SL_disable_write_protection
00111$:
;	serialloader.h:132: SL_enable_write_protection();
;	serialloader.h:136: }
;	serialloader.h:137: }
	ljmp	_SL_enable_write_protection
00114$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:20: void delay(void) __reentrant
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	main.c:23: for(i=0;i<127;i++)
	mov	r7,#0x00
00106$:
;	main.c:24: for(j=0;j<127;j++);
	mov	r6,#0x7f
00105$:
	mov	a,r6
	dec	a
	mov	r6,a
	jnz	00105$
;	main.c:23: for(i=0;i<127;i++)
	inc	r7
	cjne	r7,#0x7f,00124$
00124$:
	jc	00106$
;	main.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SelectFAT16PartitionPrompt'
;------------------------------------------------------------
;_resp                     Allocated to registers r6 
;_temp                     Allocated to registers r5 
;i                         Allocated to registers r5 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	main.c:27: void SelectFAT16PartitionPrompt() __reentrant
;	-----------------------------------------
;	 function SelectFAT16PartitionPrompt
;	-----------------------------------------
_SelectFAT16PartitionPrompt:
;	main.c:32: if(MBR_CHECK__SIGNATURE())
	lcall	_MBR_CHECK__SIGNATURE
	mov	a,dpl
	jz	00102$
;	main.c:35: UartPrint("ERROR:NO MBR FOUND\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_UartPrint
00102$:
;	main.c:39: _resp=MBR_DETECT_FAT16();
	lcall	_MBR_DETECT_FAT16
;	main.c:40: if(_resp)
	mov	a,dpl
	mov	r7,a
	mov	r6,a
	jnz	00201$
	ljmp	00129$
00201$:
;	main.c:44: if( (_resp & (_resp-1)) == 0)
	mov	r7,#0x00
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	anl	ar4,a
	mov	a,r7
	anl	ar5,a
	mov	a,r4
	orl	a,r5
;	main.c:46: for(uint8_t i=0;i<4;i++)
	jnz	00149$
	mov	r5,a
	mov	r4,a
00132$:
	cjne	r4,#0x04,00203$
00203$:
	jc	00204$
	ret
00204$:
;	main.c:48: if(_resp & 1<<i) 
	mov	b,r4
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00206$
00205$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00206$:
	djnz	b,00205$
	mov	a,r6
	anl	ar2,a
	mov	a,r7
	anl	ar3,a
	mov	a,r2
	orl	a,r3
	jz	00133$
;	main.c:50: VBR_MOUNT_VBR(i);
	mov	dpl,r5
	push	ar5
	lcall	_VBR_MOUNT_VBR
;	main.c:51: UartPrint("Partition Mounted:");UartWriteNumber(i,HEX);
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_UartPrint
	pop	ar5
	push	ar5
	clr	a
	push	acc
	mov	dpl,r5
	lcall	_UartWriteNumber
	dec	sp
	pop	ar5
;	main.c:52: if(VBR_FAT16_CHECK_COMPATIBILITY(i))
	mov	dpl,r5
	lcall	_VBR_FAT16_CHECK_COMPATIBILITY
	mov	a,dpl
	jnz	00208$
	ret
00208$:
;	main.c:54: UartPrint("Incompatible FAT16\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_UartPrint
;	main.c:55: UartPrint(HALTING_MSG); while(1);
	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_209
	mov	b,#0x80
	lcall	_UartPrint
00104$:
;	main.c:57: break; //break from for loop
	sjmp	00104$
00133$:
;	main.c:46: for(uint8_t i=0;i<4;i++)
	inc	r4
	mov	ar5,r4
;	main.c:63: for(uint8_t i=0;i<4;i++)
	sjmp	00132$
00149$:
	mov	r5,#0x00
00135$:
	cjne	r5,#0x04,00209$
00209$:
	jnc	00114$
;	main.c:65: UartPrint("Partition-");UartWriteNumber(i,HEX);UartWrite('> ');
	mov	dptr,#___str_14
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_UartPrint
	pop	ar5
	push	ar5
	clr	a
	push	acc
	mov	dpl,r5
	lcall	_UartWriteNumber
	dec	sp
	mov	dpl,#0x3e
	lcall	_UartWrite
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:66: if(_resp & 1<<i) UartPrint("FAT16\n");
	mov	b,r5
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00212$
00211$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00212$:
	djnz	b,00211$
	mov	a,r6
	anl	ar3,a
	mov	a,r7
	anl	ar4,a
	mov	a,r3
	orl	a,r4
	jz	00112$
	mov	dptr,#___str_15
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_UartPrint
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00136$
00112$:
;	main.c:67: else UartPrint("Unknown\n");
	mov	dptr,#___str_16
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	lcall	_UartPrint
	pop	ar5
	pop	ar6
	pop	ar7
00136$:
;	main.c:63: for(uint8_t i=0;i<4;i++)
	inc	r5
	sjmp	00135$
00114$:
;	main.c:70: UartPrint("\nSelect FAT16 Partition->\n");
	mov	dptr,#___str_17
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_UartPrint
;	main.c:71: _temp=UartScanByte();
	lcall	_UartScanByte
	mov	r5,dpl
	pop	ar6
	pop	ar7
;	main.c:72: if( _temp<4 && (_resp & (1<<_temp)) )
	cjne	r5,#0x04,00214$
00214$:
	jnc	00119$
	mov	b,r5
	inc	b
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00217$
00216$:
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
00217$:
	djnz	b,00216$
	mov	a,r3
	anl	ar6,a
	mov	a,r4
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	jz	00119$
;	main.c:74: UartPrint("Partition Mounted:");UartWriteNumber(_temp,HEX);
	mov	dptr,#___str_12
	mov	b,#0x80
	push	ar5
	lcall	_UartPrint
	pop	ar5
	push	ar5
	clr	a
	push	acc
	mov	dpl,r5
	lcall	_UartWriteNumber
	dec	sp
;	main.c:75: UartWrite('\n');
	mov	dpl,#0x0a
	lcall	_UartWrite
	pop	ar5
;	main.c:76: VBR_MOUNT_VBR(_temp);
	mov	dpl,r5
	ljmp	_VBR_MOUNT_VBR
00119$:
;	main.c:80: UartPrint("Invalid selection.\n");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_UartPrint
;	main.c:81: UartPrint(HALTING_MSG); while(1);
	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_209
	mov	b,#0x80
	lcall	_UartPrint
00116$:
	sjmp	00116$
00129$:
;	main.c:89: UartPrint("No FAT16 Partition.\n");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_UartPrint
;	main.c:90: UartPrint(HALTING_MSG); while(1);
	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_209
	mov	b,#0x80
	lcall	_UartPrint
00126$:
;	main.c:93: }
	sjmp	00126$
;------------------------------------------------------------
;Allocation info for local variables in function 'SelectFileAndFileOpen'
;------------------------------------------------------------
;_result                   Allocated to registers r7 
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:95: void SelectFileAndFileOpen() __reentrant
;	-----------------------------------------
;	 function SelectFileAndFileOpen
;	-----------------------------------------
_SelectFileAndFileOpen:
;	main.c:98: FAT16_ROOTENTRY_SCAN_RESET();
	lcall	_FAT16_ROOTENTRY_SCAN_RESET
;	main.c:99: UartPrint("ROOTE_INDEX\tFILE\n\n");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_UartPrint
;	main.c:102: for(uint8_t i=0;i<255;i++) 
	mov	r7,#0x00
00112$:
	cjne	r7,#0xff,00148$
00148$:
	jnc	00107$
;	main.c:104: _result = FAT16_ROOTENTRY_SCAN();
	push	ar7
	lcall	_FAT16_ROOTENTRY_SCAN
	mov	r6,dpl
	pop	ar7
;	main.c:105: if(_result==0xff) break; //end of scan
	cjne	r6,#0xff,00150$
	sjmp	00107$
00150$:
;	main.c:106: else if (_result==0) //valid file
	mov	a,r6
	jnz	00113$
;	main.c:108: UartWriteNumber(__global_rootEntry.entry_index,DEC); //print root entry index
	mov	r0,#(___global_rootEntry + 0x0012)
	mov	ar6,@r0
	push	ar7
	mov	a,#0x01
	push	acc
	mov	dpl,r6
	lcall	_UartWriteNumber
	dec	sp
;	main.c:109: UartWrite('\t');
	mov	dpl,#0x09
	lcall	_UartWrite
;	main.c:110: UartWrite('\t');
	mov	dpl,#0x09
	lcall	_UartWrite
	pop	ar7
;	main.c:111: for(uint8_t j=0;j<11;j++)UartWrite(__global_rootEntry.name[j]); //print name
	mov	r6,#0x00
00109$:
	cjne	r6,#0x0b,00152$
00152$:
	jnc	00101$
	mov	a,r6
	add	a,#___global_rootEntry
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	push	ar6
	lcall	_UartWrite
	pop	ar6
	pop	ar7
	inc	r6
	sjmp	00109$
00101$:
;	main.c:112: UartWrite('\n');
	mov	dpl,#0x0a
	push	ar7
	lcall	_UartWrite
	pop	ar7
00113$:
;	main.c:102: for(uint8_t i=0;i<255;i++) 
	inc	r7
	sjmp	00112$
00107$:
;	main.c:116: UartPrint("Select ROOTE Index >\n");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_UartPrint
;	main.c:117: _result=UartScanByte();
	lcall	_UartScanByte
;	main.c:118: FAT16_ROOTENTRY_READ(_result); //load the selected
	mov	r6,#0x00
	mov	dph,r6
;	main.c:119: }
	ljmp	_FAT16_ROOTENTRY_READ
;------------------------------------------------------------
;Allocation info for local variables in function 'setup'
;------------------------------------------------------------
;	main.c:126: void setup()
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
;	main.c:128: UartBegin();
	lcall	_UartBegin
;	main.c:129: spi_init(); 
	lcall	_spi_init
;	main.c:130: SDinit();
;	main.c:131: }
	ljmp	_SDinit
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;buff                      Allocated with name '_main_buff_65536_230'
;_resp                     Allocated to registers 
;_cmd                      Allocated to registers 
;xram_addr                 Allocated to registers 
;i                         Allocated to registers 
;------------------------------------------------------------
;	main.c:137: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:148: setup(); //setup peripherals
	lcall	_setup
;	main.c:149: while(UartReadReady())UartRead(); //flush
00101$:
	lcall	_UartReadReady
	mov	a,dpl
	jz	00113$
	lcall	_UartRead
;	main.c:151: while(1)
	sjmp	00101$
00113$:
;	main.c:153: _cmd=UartRead();
	lcall	_UartRead
;	main.c:154: switch (_resp)
;	main.c:209: while(1);        
;	main.c:212: }
	sjmp	00113$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Number(HEX, eg FE for 254): "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start"
	.ascii ",roote_start,data_start"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.ascii "ROOT_ENTRY_INDEX:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.ascii "FILE: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.ascii "START: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.ascii "SIZE: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.ascii "ATTR: 0x"
	.db 0x00
	.area CSEG    (CODE)
_FAT16_FILE_READ_power2error_65536_182:
	.ascii "nbytes must be power of 2"
	.db 0x0a
	.db 0x00
	.area CONST   (CODE)
___str_8:
	.ascii "FILE NOT FOUND"
	.db 0x0a
	.ascii "."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "ISA_SERIAL_LOADER_V0.1:8052"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
_SelectFAT16PartitionPrompt_HALTING_MSG_65536_209:
	.ascii "HALTING..."
	.db 0x00
	.area CONST   (CODE)
___str_11:
	.ascii "ERROR:NO MBR FOUND"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Partition Mounted:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Incompatible FAT16"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Partition-"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "FAT16"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "Unknown"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.ascii "Select FAT16 Partition->"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Invalid selection."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "No FAT16 Partition."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "ROOTE_INDEX"
	.db 0x09
	.ascii "FILE"
	.db 0x0a
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Select ROOTE Index >"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "ISA-FAT16+SERIAL-LOADER: V1.0"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
