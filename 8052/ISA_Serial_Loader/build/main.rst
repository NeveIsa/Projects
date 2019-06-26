                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SERIAL_LOADER_VERSION_INFO
                                     12 	.globl _main
                                     13 	.globl _SL_getcmd
                                     14 	.globl _SL_read
                                     15 	.globl _SL_write
                                     16 	.globl _SL_enable_write_protection
                                     17 	.globl _SL_disable_write_protection
                                     18 	.globl _UartScanLine
                                     19 	.globl _UartScanByte
                                     20 	.globl _UartPrintNumber
                                     21 	.globl _UartWriteNumbers
                                     22 	.globl _UartWriteNumber
                                     23 	.globl _UartPrint
                                     24 	.globl _UartReadBuff
                                     25 	.globl _UartWriteBuff
                                     26 	.globl _UartWrite
                                     27 	.globl _UartRead
                                     28 	.globl _UartReadReady
                                     29 	.globl _UartBegin
                                     30 	.globl _dec2hexNibble
                                     31 	.globl _hex2dec
                                     32 	.globl _hexNibble2dec
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _T2CON_7
                                     42 	.globl _T2CON_6
                                     43 	.globl _T2CON_5
                                     44 	.globl _T2CON_4
                                     45 	.globl _T2CON_3
                                     46 	.globl _T2CON_2
                                     47 	.globl _T2CON_1
                                     48 	.globl _T2CON_0
                                     49 	.globl _PT2
                                     50 	.globl _ET2
                                     51 	.globl _CY
                                     52 	.globl _AC
                                     53 	.globl _F0
                                     54 	.globl _RS1
                                     55 	.globl _RS0
                                     56 	.globl _OV
                                     57 	.globl _F1
                                     58 	.globl _P
                                     59 	.globl _PS
                                     60 	.globl _PT1
                                     61 	.globl _PX1
                                     62 	.globl _PT0
                                     63 	.globl _PX0
                                     64 	.globl _RD
                                     65 	.globl _WR
                                     66 	.globl _T1
                                     67 	.globl _T0
                                     68 	.globl _INT1
                                     69 	.globl _INT0
                                     70 	.globl _TXD
                                     71 	.globl _RXD
                                     72 	.globl _P3_7
                                     73 	.globl _P3_6
                                     74 	.globl _P3_5
                                     75 	.globl _P3_4
                                     76 	.globl _P3_3
                                     77 	.globl _P3_2
                                     78 	.globl _P3_1
                                     79 	.globl _P3_0
                                     80 	.globl _EA
                                     81 	.globl _ES
                                     82 	.globl _ET1
                                     83 	.globl _EX1
                                     84 	.globl _ET0
                                     85 	.globl _EX0
                                     86 	.globl _P2_7
                                     87 	.globl _P2_6
                                     88 	.globl _P2_5
                                     89 	.globl _P2_4
                                     90 	.globl _P2_3
                                     91 	.globl _P2_2
                                     92 	.globl _P2_1
                                     93 	.globl _P2_0
                                     94 	.globl _SM0
                                     95 	.globl _SM1
                                     96 	.globl _SM2
                                     97 	.globl _REN
                                     98 	.globl _TB8
                                     99 	.globl _RB8
                                    100 	.globl _TI
                                    101 	.globl _RI
                                    102 	.globl _P1_7
                                    103 	.globl _P1_6
                                    104 	.globl _P1_5
                                    105 	.globl _P1_4
                                    106 	.globl _P1_3
                                    107 	.globl _P1_2
                                    108 	.globl _P1_1
                                    109 	.globl _P1_0
                                    110 	.globl _TF1
                                    111 	.globl _TR1
                                    112 	.globl _TF0
                                    113 	.globl _TR0
                                    114 	.globl _IE1
                                    115 	.globl _IT1
                                    116 	.globl _IE0
                                    117 	.globl _IT0
                                    118 	.globl _P0_7
                                    119 	.globl _P0_6
                                    120 	.globl _P0_5
                                    121 	.globl _P0_4
                                    122 	.globl _P0_3
                                    123 	.globl _P0_2
                                    124 	.globl _P0_1
                                    125 	.globl _P0_0
                                    126 	.globl _TH2
                                    127 	.globl _TL2
                                    128 	.globl _RCAP2H
                                    129 	.globl _RCAP2L
                                    130 	.globl _T2CON
                                    131 	.globl _B
                                    132 	.globl _ACC
                                    133 	.globl _PSW
                                    134 	.globl _IP
                                    135 	.globl _P3
                                    136 	.globl _IE
                                    137 	.globl _P2
                                    138 	.globl _SBUF
                                    139 	.globl _SCON
                                    140 	.globl _P1
                                    141 	.globl _TH1
                                    142 	.globl _TH0
                                    143 	.globl _TL1
                                    144 	.globl _TL0
                                    145 	.globl _TMOD
                                    146 	.globl _TCON
                                    147 	.globl _PCON
                                    148 	.globl _DPH
                                    149 	.globl _DPL
                                    150 	.globl _SP
                                    151 	.globl _P0
                                    152 	.globl _EEPROM_WRITE_PROTECTION
                                    153 	.globl _UartReadBuff_PARM_2
                                    154 	.globl _UartWriteBuff_PARM_2
                                    155 	.globl _hex2dec_PARM_2
                                    156 	.globl _delay
                                    157 ;--------------------------------------------------------
                                    158 ; special function registers
                                    159 ;--------------------------------------------------------
                                    160 	.area RSEG    (ABS,DATA)
      000000                        161 	.org 0x0000
                           000080   162 _P0	=	0x0080
                           000081   163 _SP	=	0x0081
                           000082   164 _DPL	=	0x0082
                           000083   165 _DPH	=	0x0083
                           000087   166 _PCON	=	0x0087
                           000088   167 _TCON	=	0x0088
                           000089   168 _TMOD	=	0x0089
                           00008A   169 _TL0	=	0x008a
                           00008B   170 _TL1	=	0x008b
                           00008C   171 _TH0	=	0x008c
                           00008D   172 _TH1	=	0x008d
                           000090   173 _P1	=	0x0090
                           000098   174 _SCON	=	0x0098
                           000099   175 _SBUF	=	0x0099
                           0000A0   176 _P2	=	0x00a0
                           0000A8   177 _IE	=	0x00a8
                           0000B0   178 _P3	=	0x00b0
                           0000B8   179 _IP	=	0x00b8
                           0000D0   180 _PSW	=	0x00d0
                           0000E0   181 _ACC	=	0x00e0
                           0000F0   182 _B	=	0x00f0
                           0000C8   183 _T2CON	=	0x00c8
                           0000CA   184 _RCAP2L	=	0x00ca
                           0000CB   185 _RCAP2H	=	0x00cb
                           0000CC   186 _TL2	=	0x00cc
                           0000CD   187 _TH2	=	0x00cd
                                    188 ;--------------------------------------------------------
                                    189 ; special function bits
                                    190 ;--------------------------------------------------------
                                    191 	.area RSEG    (ABS,DATA)
      000000                        192 	.org 0x0000
                           000080   193 _P0_0	=	0x0080
                           000081   194 _P0_1	=	0x0081
                           000082   195 _P0_2	=	0x0082
                           000083   196 _P0_3	=	0x0083
                           000084   197 _P0_4	=	0x0084
                           000085   198 _P0_5	=	0x0085
                           000086   199 _P0_6	=	0x0086
                           000087   200 _P0_7	=	0x0087
                           000088   201 _IT0	=	0x0088
                           000089   202 _IE0	=	0x0089
                           00008A   203 _IT1	=	0x008a
                           00008B   204 _IE1	=	0x008b
                           00008C   205 _TR0	=	0x008c
                           00008D   206 _TF0	=	0x008d
                           00008E   207 _TR1	=	0x008e
                           00008F   208 _TF1	=	0x008f
                           000090   209 _P1_0	=	0x0090
                           000091   210 _P1_1	=	0x0091
                           000092   211 _P1_2	=	0x0092
                           000093   212 _P1_3	=	0x0093
                           000094   213 _P1_4	=	0x0094
                           000095   214 _P1_5	=	0x0095
                           000096   215 _P1_6	=	0x0096
                           000097   216 _P1_7	=	0x0097
                           000098   217 _RI	=	0x0098
                           000099   218 _TI	=	0x0099
                           00009A   219 _RB8	=	0x009a
                           00009B   220 _TB8	=	0x009b
                           00009C   221 _REN	=	0x009c
                           00009D   222 _SM2	=	0x009d
                           00009E   223 _SM1	=	0x009e
                           00009F   224 _SM0	=	0x009f
                           0000A0   225 _P2_0	=	0x00a0
                           0000A1   226 _P2_1	=	0x00a1
                           0000A2   227 _P2_2	=	0x00a2
                           0000A3   228 _P2_3	=	0x00a3
                           0000A4   229 _P2_4	=	0x00a4
                           0000A5   230 _P2_5	=	0x00a5
                           0000A6   231 _P2_6	=	0x00a6
                           0000A7   232 _P2_7	=	0x00a7
                           0000A8   233 _EX0	=	0x00a8
                           0000A9   234 _ET0	=	0x00a9
                           0000AA   235 _EX1	=	0x00aa
                           0000AB   236 _ET1	=	0x00ab
                           0000AC   237 _ES	=	0x00ac
                           0000AF   238 _EA	=	0x00af
                           0000B0   239 _P3_0	=	0x00b0
                           0000B1   240 _P3_1	=	0x00b1
                           0000B2   241 _P3_2	=	0x00b2
                           0000B3   242 _P3_3	=	0x00b3
                           0000B4   243 _P3_4	=	0x00b4
                           0000B5   244 _P3_5	=	0x00b5
                           0000B6   245 _P3_6	=	0x00b6
                           0000B7   246 _P3_7	=	0x00b7
                           0000B0   247 _RXD	=	0x00b0
                           0000B1   248 _TXD	=	0x00b1
                           0000B2   249 _INT0	=	0x00b2
                           0000B3   250 _INT1	=	0x00b3
                           0000B4   251 _T0	=	0x00b4
                           0000B5   252 _T1	=	0x00b5
                           0000B6   253 _WR	=	0x00b6
                           0000B7   254 _RD	=	0x00b7
                           0000B8   255 _PX0	=	0x00b8
                           0000B9   256 _PT0	=	0x00b9
                           0000BA   257 _PX1	=	0x00ba
                           0000BB   258 _PT1	=	0x00bb
                           0000BC   259 _PS	=	0x00bc
                           0000D0   260 _P	=	0x00d0
                           0000D1   261 _F1	=	0x00d1
                           0000D2   262 _OV	=	0x00d2
                           0000D3   263 _RS0	=	0x00d3
                           0000D4   264 _RS1	=	0x00d4
                           0000D5   265 _F0	=	0x00d5
                           0000D6   266 _AC	=	0x00d6
                           0000D7   267 _CY	=	0x00d7
                           0000AD   268 _ET2	=	0x00ad
                           0000BD   269 _PT2	=	0x00bd
                           0000C8   270 _T2CON_0	=	0x00c8
                           0000C9   271 _T2CON_1	=	0x00c9
                           0000CA   272 _T2CON_2	=	0x00ca
                           0000CB   273 _T2CON_3	=	0x00cb
                           0000CC   274 _T2CON_4	=	0x00cc
                           0000CD   275 _T2CON_5	=	0x00cd
                           0000CE   276 _T2CON_6	=	0x00ce
                           0000CF   277 _T2CON_7	=	0x00cf
                           0000C8   278 _CP_RL2	=	0x00c8
                           0000C9   279 _C_T2	=	0x00c9
                           0000CA   280 _TR2	=	0x00ca
                           0000CB   281 _EXEN2	=	0x00cb
                           0000CC   282 _TCLK	=	0x00cc
                           0000CD   283 _RCLK	=	0x00cd
                           0000CE   284 _EXF2	=	0x00ce
                           0000CF   285 _TF2	=	0x00cf
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable register banks
                                    288 ;--------------------------------------------------------
                                    289 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        290 	.ds 8
                                    291 ;--------------------------------------------------------
                                    292 ; internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area DSEG    (DATA)
      000008                        295 _hex2dec_PARM_2:
      000008                        296 	.ds 1
      000009                        297 _UartWriteBuff_PARM_2:
      000009                        298 	.ds 1
      00000A                        299 _UartReadBuff_PARM_2:
      00000A                        300 	.ds 1
      00000B                        301 _EEPROM_WRITE_PROTECTION::
      00000B                        302 	.ds 1
                                    303 ;--------------------------------------------------------
                                    304 ; overlayable items in internal ram 
                                    305 ;--------------------------------------------------------
                                    306 	.area	OSEG    (OVR,DATA)
                                    307 	.area	OSEG    (OVR,DATA)
                                    308 	.area	OSEG    (OVR,DATA)
                                    309 	.area	OSEG    (OVR,DATA)
                                    310 	.area	OSEG    (OVR,DATA)
                                    311 ;--------------------------------------------------------
                                    312 ; Stack segment in internal ram 
                                    313 ;--------------------------------------------------------
                                    314 	.area	SSEG
      000011                        315 __start__stack:
      000011                        316 	.ds	1
                                    317 
                                    318 ;--------------------------------------------------------
                                    319 ; indirectly addressable internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area ISEG    (DATA)
                                    322 ;--------------------------------------------------------
                                    323 ; absolute internal ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area IABS    (ABS,DATA)
                                    326 	.area IABS    (ABS,DATA)
                                    327 ;--------------------------------------------------------
                                    328 ; bit data
                                    329 ;--------------------------------------------------------
                                    330 	.area BSEG    (BIT)
                                    331 ;--------------------------------------------------------
                                    332 ; paged external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area PSEG    (PAG,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XSEG    (XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; absolute external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XABS    (ABS,XDATA)
                                    343 ;--------------------------------------------------------
                                    344 ; external initialized ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area XISEG   (XDATA)
                                    347 	.area HOME    (CODE)
                                    348 	.area GSINIT0 (CODE)
                                    349 	.area GSINIT1 (CODE)
                                    350 	.area GSINIT2 (CODE)
                                    351 	.area GSINIT3 (CODE)
                                    352 	.area GSINIT4 (CODE)
                                    353 	.area GSINIT5 (CODE)
                                    354 	.area GSINIT  (CODE)
                                    355 	.area GSFINAL (CODE)
                                    356 	.area CSEG    (CODE)
                                    357 ;--------------------------------------------------------
                                    358 ; interrupt vector 
                                    359 ;--------------------------------------------------------
                                    360 	.area HOME    (CODE)
      000000                        361 __interrupt_vect:
      000000 02 00 06         [24]  362 	ljmp	__sdcc_gsinit_startup
                                    363 ;--------------------------------------------------------
                                    364 ; global & static initialisations
                                    365 ;--------------------------------------------------------
                                    366 	.area HOME    (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.area GSFINAL (CODE)
                                    369 	.area GSINIT  (CODE)
                                    370 	.globl __sdcc_gsinit_startup
                                    371 	.globl __sdcc_program_startup
                                    372 	.globl __start__stack
                                    373 	.globl __mcs51_genXINIT
                                    374 	.globl __mcs51_genXRAMCLEAR
                                    375 	.globl __mcs51_genRAMCLEAR
                                    376 ;	serialloader.h:20: volatile unsigned char EEPROM_WRITE_PROTECTION=1;
      00005F 75 0B 01         [24]  377 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                    378 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  379 	ljmp	__sdcc_program_startup
                                    380 ;--------------------------------------------------------
                                    381 ; Home
                                    382 ;--------------------------------------------------------
                                    383 	.area HOME    (CODE)
                                    384 	.area HOME    (CODE)
      000003                        385 __sdcc_program_startup:
      000003 02 05 42         [24]  386 	ljmp	_main
                                    387 ;	return from main will return to caller
                                    388 ;--------------------------------------------------------
                                    389 ; code
                                    390 ;--------------------------------------------------------
                                    391 	.area CSEG    (CODE)
                                    392 ;------------------------------------------------------------
                                    393 ;Allocation info for local variables in function 'hexNibble2dec'
                                    394 ;------------------------------------------------------------
                                    395 ;nibble                    Allocated to registers r7 
                                    396 ;------------------------------------------------------------
                                    397 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    398 ;	-----------------------------------------
                                    399 ;	 function hexNibble2dec
                                    400 ;	-----------------------------------------
      000065                        401 _hexNibble2dec:
                           000007   402 	ar7 = 0x07
                           000006   403 	ar6 = 0x06
                           000005   404 	ar5 = 0x05
                           000004   405 	ar4 = 0x04
                           000003   406 	ar3 = 0x03
                           000002   407 	ar2 = 0x02
                           000001   408 	ar1 = 0x01
                           000000   409 	ar0 = 0x00
      000065 AF 82            [24]  410 	mov	r7,dpl
                                    411 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      000067 BF 30 00         [24]  412 	cjne	r7,#0x30,00139$
      00006A                        413 00139$:
      00006A 40 0D            [24]  414 	jc	00110$
      00006C EF               [12]  415 	mov	a,r7
      00006D 24 C6            [12]  416 	add	a,#0xff - 0x39
      00006F 40 08            [24]  417 	jc	00110$
      000071 8F 06            [24]  418 	mov	ar6,r7
      000073 EE               [12]  419 	mov	a,r6
      000074 24 D0            [12]  420 	add	a,#0xd0
      000076 F5 82            [12]  421 	mov	dpl,a
      000078 22               [24]  422 	ret
      000079                        423 00110$:
                                    424 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      000079 BF 41 00         [24]  425 	cjne	r7,#0x41,00142$
      00007C                        426 00142$:
      00007C 40 0D            [24]  427 	jc	00106$
      00007E EF               [12]  428 	mov	a,r7
      00007F 24 B9            [12]  429 	add	a,#0xff - 0x46
      000081 40 08            [24]  430 	jc	00106$
      000083 8F 06            [24]  431 	mov	ar6,r7
      000085 74 C9            [12]  432 	mov	a,#0xc9
      000087 2E               [12]  433 	add	a,r6
      000088 F5 82            [12]  434 	mov	dpl,a
      00008A 22               [24]  435 	ret
      00008B                        436 00106$:
                                    437 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      00008B BF 61 00         [24]  438 	cjne	r7,#0x61,00145$
      00008E                        439 00145$:
      00008E 40 0B            [24]  440 	jc	00102$
      000090 EF               [12]  441 	mov	a,r7
      000091 24 99            [12]  442 	add	a,#0xff - 0x66
      000093 40 06            [24]  443 	jc	00102$
      000095 74 A9            [12]  444 	mov	a,#0xa9
      000097 2F               [12]  445 	add	a,r7
      000098 F5 82            [12]  446 	mov	dpl,a
      00009A 22               [24]  447 	ret
      00009B                        448 00102$:
                                    449 ;	uart.h:11: else return 0;
      00009B 75 82 00         [24]  450 	mov	dpl,#0x00
                                    451 ;	uart.h:12: }
      00009E 22               [24]  452 	ret
                                    453 ;------------------------------------------------------------
                                    454 ;Allocation info for local variables in function 'hex2dec'
                                    455 ;------------------------------------------------------------
                                    456 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    457 ;MSnibble                  Allocated to registers r7 
                                    458 ;------------------------------------------------------------
                                    459 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    460 ;	-----------------------------------------
                                    461 ;	 function hex2dec
                                    462 ;	-----------------------------------------
      00009F                        463 _hex2dec:
                                    464 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      00009F 12 00 65         [24]  465 	lcall	_hexNibble2dec
      0000A2 E5 82            [12]  466 	mov	a,dpl
      0000A4 C4               [12]  467 	swap	a
      0000A5 54 F0            [12]  468 	anl	a,#0xf0
      0000A7 FF               [12]  469 	mov	r7,a
      0000A8 85 08 82         [24]  470 	mov	dpl,_hex2dec_PARM_2
      0000AB C0 07            [24]  471 	push	ar7
      0000AD 12 00 65         [24]  472 	lcall	_hexNibble2dec
      0000B0 AE 82            [24]  473 	mov	r6,dpl
      0000B2 D0 07            [24]  474 	pop	ar7
      0000B4 EE               [12]  475 	mov	a,r6
      0000B5 2F               [12]  476 	add	a,r7
      0000B6 F5 82            [12]  477 	mov	dpl,a
                                    478 ;	uart.h:18: }
      0000B8 22               [24]  479 	ret
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'dec2hexNibble'
                                    482 ;------------------------------------------------------------
                                    483 ;dec                       Allocated to registers r7 
                                    484 ;------------------------------------------------------------
                                    485 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    486 ;	-----------------------------------------
                                    487 ;	 function dec2hexNibble
                                    488 ;	-----------------------------------------
      0000B9                        489 _dec2hexNibble:
                                    490 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000B9 E5 82            [12]  491 	mov	a,dpl
      0000BB FF               [12]  492 	mov	r7,a
      0000BC 24 F0            [12]  493 	add	a,#0xff - 0x0f
      0000BE 50 04            [24]  494 	jnc	00102$
      0000C0 75 82 58         [24]  495 	mov	dpl,#0x58
      0000C3 22               [24]  496 	ret
      0000C4                        497 00102$:
                                    498 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C4 EF               [12]  499 	mov	a,r7
      0000C5 24 F6            [12]  500 	add	a,#0xff - 0x09
      0000C7 40 08            [24]  501 	jc	00104$
      0000C9 8F 06            [24]  502 	mov	ar6,r7
      0000CB 74 30            [12]  503 	mov	a,#0x30
      0000CD 2E               [12]  504 	add	a,r6
      0000CE F5 82            [12]  505 	mov	dpl,a
      0000D0 22               [24]  506 	ret
      0000D1                        507 00104$:
                                    508 ;	uart.h:27: else return 'A' + dec - 10;
      0000D1 74 37            [12]  509 	mov	a,#0x37
      0000D3 2F               [12]  510 	add	a,r7
      0000D4 F5 82            [12]  511 	mov	dpl,a
                                    512 ;	uart.h:28: }
      0000D6 22               [24]  513 	ret
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'UartBegin'
                                    516 ;------------------------------------------------------------
                                    517 ;	uart.h:33: void UartBegin()
                                    518 ;	-----------------------------------------
                                    519 ;	 function UartBegin
                                    520 ;	-----------------------------------------
      0000D7                        521 _UartBegin:
                                    522 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000D7 75 89 20         [24]  523 	mov	_TMOD,#0x20
                                    524 ;	uart.h:39: TH1 = 0XF3; //2400
      0000DA 75 8D F3         [24]  525 	mov	_TH1,#0xf3
                                    526 ;	uart.h:40: SCON = 0X50;
      0000DD 75 98 50         [24]  527 	mov	_SCON,#0x50
                                    528 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000E0 43 87 80         [24]  529 	orl	_PCON,#0x80
                                    530 ;	uart.h:44: TR1 = 1; //START TIMER
                                    531 ;	assignBit
      0000E3 D2 8E            [12]  532 	setb	_TR1
                                    533 ;	uart.h:45: }
      0000E5 22               [24]  534 	ret
                                    535 ;------------------------------------------------------------
                                    536 ;Allocation info for local variables in function 'UartReadReady'
                                    537 ;------------------------------------------------------------
                                    538 ;	uart.h:47: unsigned char UartReadReady()
                                    539 ;	-----------------------------------------
                                    540 ;	 function UartReadReady
                                    541 ;	-----------------------------------------
      0000E6                        542 _UartReadReady:
                                    543 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000E6 20 98 04         [24]  544 	jb	_RI,00102$
      0000E9 75 82 00         [24]  545 	mov	dpl,#0x00
      0000EC 22               [24]  546 	ret
      0000ED                        547 00102$:
                                    548 ;	uart.h:50: else return 1; //received and ready
      0000ED 75 82 01         [24]  549 	mov	dpl,#0x01
                                    550 ;	uart.h:51: }
      0000F0 22               [24]  551 	ret
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'UartRead'
                                    554 ;------------------------------------------------------------
                                    555 ;value                     Allocated to registers 
                                    556 ;------------------------------------------------------------
                                    557 ;	uart.h:53: unsigned char UartRead()
                                    558 ;	-----------------------------------------
                                    559 ;	 function UartRead
                                    560 ;	-----------------------------------------
      0000F1                        561 _UartRead:
                                    562 ;	uart.h:56: while(RI==0); //wait till RX
      0000F1                        563 00101$:
                                    564 ;	uart.h:57: RI=0;
                                    565 ;	assignBit
      0000F1 10 98 02         [24]  566 	jbc	_RI,00114$
      0000F4 80 FB            [24]  567 	sjmp	00101$
      0000F6                        568 00114$:
                                    569 ;	uart.h:58: value = SBUF;
      0000F6 85 99 82         [24]  570 	mov	dpl,_SBUF
                                    571 ;	uart.h:59: return value;
                                    572 ;	uart.h:60: }
      0000F9 22               [24]  573 	ret
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'UartWrite'
                                    576 ;------------------------------------------------------------
                                    577 ;value                     Allocated to registers 
                                    578 ;------------------------------------------------------------
                                    579 ;	uart.h:63: void UartWrite(unsigned char value)
                                    580 ;	-----------------------------------------
                                    581 ;	 function UartWrite
                                    582 ;	-----------------------------------------
      0000FA                        583 _UartWrite:
      0000FA 85 82 99         [24]  584 	mov	_SBUF,dpl
                                    585 ;	uart.h:66: while(TI==0); // wait till TX
      0000FD                        586 00101$:
                                    587 ;	uart.h:67: TI=0;
                                    588 ;	assignBit
      0000FD 10 99 02         [24]  589 	jbc	_TI,00114$
      000100 80 FB            [24]  590 	sjmp	00101$
      000102                        591 00114$:
                                    592 ;	uart.h:68: }
      000102 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'UartWriteBuff'
                                    596 ;------------------------------------------------------------
                                    597 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    598 ;p                         Allocated to registers r5 r6 r7 
                                    599 ;i                         Allocated to registers r4 
                                    600 ;------------------------------------------------------------
                                    601 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    602 ;	-----------------------------------------
                                    603 ;	 function UartWriteBuff
                                    604 ;	-----------------------------------------
      000103                        605 _UartWriteBuff:
      000103 AD 82            [24]  606 	mov	r5,dpl
      000105 AE 83            [24]  607 	mov	r6,dph
      000107 AF F0            [24]  608 	mov	r7,b
                                    609 ;	uart.h:73: for (i=0;i<length;i++)
      000109 7C 00            [12]  610 	mov	r4,#0x00
      00010B                        611 00103$:
      00010B C3               [12]  612 	clr	c
      00010C EC               [12]  613 	mov	a,r4
      00010D 95 09            [12]  614 	subb	a,_UartWriteBuff_PARM_2
      00010F 50 29            [24]  615 	jnc	00105$
                                    616 ;	uart.h:75: UartWrite(p[i]);
      000111 EC               [12]  617 	mov	a,r4
      000112 2D               [12]  618 	add	a,r5
      000113 F9               [12]  619 	mov	r1,a
      000114 E4               [12]  620 	clr	a
      000115 3E               [12]  621 	addc	a,r6
      000116 FA               [12]  622 	mov	r2,a
      000117 8F 03            [24]  623 	mov	ar3,r7
      000119 89 82            [24]  624 	mov	dpl,r1
      00011B 8A 83            [24]  625 	mov	dph,r2
      00011D 8B F0            [24]  626 	mov	b,r3
      00011F 12 06 F9         [24]  627 	lcall	__gptrget
      000122 F5 82            [12]  628 	mov	dpl,a
      000124 C0 07            [24]  629 	push	ar7
      000126 C0 06            [24]  630 	push	ar6
      000128 C0 05            [24]  631 	push	ar5
      00012A C0 04            [24]  632 	push	ar4
      00012C 12 00 FA         [24]  633 	lcall	_UartWrite
      00012F D0 04            [24]  634 	pop	ar4
      000131 D0 05            [24]  635 	pop	ar5
      000133 D0 06            [24]  636 	pop	ar6
      000135 D0 07            [24]  637 	pop	ar7
                                    638 ;	uart.h:73: for (i=0;i<length;i++)
      000137 0C               [12]  639 	inc	r4
      000138 80 D1            [24]  640 	sjmp	00103$
      00013A                        641 00105$:
                                    642 ;	uart.h:77: }
      00013A 22               [24]  643 	ret
                                    644 ;------------------------------------------------------------
                                    645 ;Allocation info for local variables in function 'UartReadBuff'
                                    646 ;------------------------------------------------------------
                                    647 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    648 ;p                         Allocated to registers r5 r6 r7 
                                    649 ;i                         Allocated to registers r4 
                                    650 ;------------------------------------------------------------
                                    651 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    652 ;	-----------------------------------------
                                    653 ;	 function UartReadBuff
                                    654 ;	-----------------------------------------
      00013B                        655 _UartReadBuff:
      00013B AD 82            [24]  656 	mov	r5,dpl
      00013D AE 83            [24]  657 	mov	r6,dph
      00013F AF F0            [24]  658 	mov	r7,b
                                    659 ;	uart.h:82: for (i=0;i<length;i++)
      000141 7C 00            [12]  660 	mov	r4,#0x00
      000143                        661 00103$:
      000143 C3               [12]  662 	clr	c
      000144 EC               [12]  663 	mov	a,r4
      000145 95 0A            [12]  664 	subb	a,_UartReadBuff_PARM_2
      000147 50 36            [24]  665 	jnc	00105$
                                    666 ;	uart.h:84: p[i] = UartRead();
      000149 EC               [12]  667 	mov	a,r4
      00014A 2D               [12]  668 	add	a,r5
      00014B F9               [12]  669 	mov	r1,a
      00014C E4               [12]  670 	clr	a
      00014D 3E               [12]  671 	addc	a,r6
      00014E FA               [12]  672 	mov	r2,a
      00014F 8F 03            [24]  673 	mov	ar3,r7
      000151 C0 07            [24]  674 	push	ar7
      000153 C0 06            [24]  675 	push	ar6
      000155 C0 05            [24]  676 	push	ar5
      000157 C0 04            [24]  677 	push	ar4
      000159 C0 03            [24]  678 	push	ar3
      00015B C0 02            [24]  679 	push	ar2
      00015D C0 01            [24]  680 	push	ar1
      00015F 12 00 F1         [24]  681 	lcall	_UartRead
      000162 A8 82            [24]  682 	mov	r0,dpl
      000164 D0 01            [24]  683 	pop	ar1
      000166 D0 02            [24]  684 	pop	ar2
      000168 D0 03            [24]  685 	pop	ar3
      00016A D0 04            [24]  686 	pop	ar4
      00016C D0 05            [24]  687 	pop	ar5
      00016E D0 06            [24]  688 	pop	ar6
      000170 D0 07            [24]  689 	pop	ar7
      000172 89 82            [24]  690 	mov	dpl,r1
      000174 8A 83            [24]  691 	mov	dph,r2
      000176 8B F0            [24]  692 	mov	b,r3
      000178 E8               [12]  693 	mov	a,r0
      000179 12 06 68         [24]  694 	lcall	__gptrput
                                    695 ;	uart.h:82: for (i=0;i<length;i++)
      00017C 0C               [12]  696 	inc	r4
      00017D 80 C4            [24]  697 	sjmp	00103$
      00017F                        698 00105$:
                                    699 ;	uart.h:86: }
      00017F 22               [24]  700 	ret
                                    701 ;------------------------------------------------------------
                                    702 ;Allocation info for local variables in function 'UartPrint'
                                    703 ;------------------------------------------------------------
                                    704 ;p                         Allocated to registers 
                                    705 ;------------------------------------------------------------
                                    706 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    707 ;	-----------------------------------------
                                    708 ;	 function UartPrint
                                    709 ;	-----------------------------------------
      000180                        710 _UartPrint:
      000180 AD 82            [24]  711 	mov	r5,dpl
      000182 AE 83            [24]  712 	mov	r6,dph
      000184 AF F0            [24]  713 	mov	r7,b
                                    714 ;	uart.h:90: do
      000186                        715 00101$:
                                    716 ;	uart.h:92: UartWrite(*p);
      000186 8D 82            [24]  717 	mov	dpl,r5
      000188 8E 83            [24]  718 	mov	dph,r6
      00018A 8F F0            [24]  719 	mov	b,r7
      00018C 12 06 F9         [24]  720 	lcall	__gptrget
      00018F FC               [12]  721 	mov	r4,a
      000190 A3               [24]  722 	inc	dptr
      000191 AD 82            [24]  723 	mov	r5,dpl
      000193 AE 83            [24]  724 	mov	r6,dph
      000195 8C 82            [24]  725 	mov	dpl,r4
      000197 C0 07            [24]  726 	push	ar7
      000199 C0 06            [24]  727 	push	ar6
      00019B C0 05            [24]  728 	push	ar5
      00019D 12 00 FA         [24]  729 	lcall	_UartWrite
      0001A0 D0 05            [24]  730 	pop	ar5
      0001A2 D0 06            [24]  731 	pop	ar6
      0001A4 D0 07            [24]  732 	pop	ar7
                                    733 ;	uart.h:93: }while(*(++p)!=0);
      0001A6 8D 82            [24]  734 	mov	dpl,r5
      0001A8 8E 83            [24]  735 	mov	dph,r6
      0001AA 8F F0            [24]  736 	mov	b,r7
      0001AC 12 06 F9         [24]  737 	lcall	__gptrget
      0001AF 70 D5            [24]  738 	jnz	00101$
                                    739 ;	uart.h:94: }
      0001B1 22               [24]  740 	ret
                                    741 ;------------------------------------------------------------
                                    742 ;Allocation info for local variables in function 'UartWriteNumber'
                                    743 ;------------------------------------------------------------
                                    744 ;format                    Allocated to stack - _bp -3
                                    745 ;num                       Allocated to registers r7 
                                    746 ;msd                       Allocated to registers r4 
                                    747 ;lsd                       Allocated to registers r6 
                                    748 ;extra                     Allocated to registers r3 
                                    749 ;------------------------------------------------------------
                                    750 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    751 ;	-----------------------------------------
                                    752 ;	 function UartWriteNumber
                                    753 ;	-----------------------------------------
      0001B2                        754 _UartWriteNumber:
      0001B2 C0 0C            [24]  755 	push	_bp
      0001B4 85 81 0C         [24]  756 	mov	_bp,sp
      0001B7 AF 82            [24]  757 	mov	r7,dpl
                                    758 ;	uart.h:104: if(format==HEX)
      0001B9 E5 0C            [12]  759 	mov	a,_bp
      0001BB 24 FD            [12]  760 	add	a,#0xfd
      0001BD F8               [12]  761 	mov	r0,a
      0001BE E6               [12]  762 	mov	a,@r0
                                    763 ;	uart.h:106: msd = num/16;
      0001BF 70 32            [24]  764 	jnz	00104$
      0001C1 8F 05            [24]  765 	mov	ar5,r7
      0001C3 FE               [12]  766 	mov	r6,a
      0001C4 75 0D 10         [24]  767 	mov	__divsint_PARM_2,#0x10
                                    768 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001C7 8E 0E            [24]  769 	mov	(__divsint_PARM_2 + 1),r6
      0001C9 8D 82            [24]  770 	mov	dpl,r5
      0001CB 8E 83            [24]  771 	mov	dph,r6
      0001CD C0 06            [24]  772 	push	ar6
      0001CF C0 05            [24]  773 	push	ar5
      0001D1 12 07 4B         [24]  774 	lcall	__divsint
      0001D4 AB 82            [24]  775 	mov	r3,dpl
      0001D6 D0 05            [24]  776 	pop	ar5
      0001D8 D0 06            [24]  777 	pop	ar6
                                    778 ;	uart.h:107: lsd = num%16;
      0001DA 53 05 0F         [24]  779 	anl	ar5,#0x0f
                                    780 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001DD 8B 82            [24]  781 	mov	dpl,r3
      0001DF C0 05            [24]  782 	push	ar5
      0001E1 12 00 B9         [24]  783 	lcall	_dec2hexNibble
      0001E4 12 00 FA         [24]  784 	lcall	_UartWrite
      0001E7 D0 05            [24]  785 	pop	ar5
                                    786 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001E9 8D 82            [24]  787 	mov	dpl,r5
      0001EB 12 00 B9         [24]  788 	lcall	_dec2hexNibble
      0001EE 12 00 FA         [24]  789 	lcall	_UartWrite
      0001F1 80 7B            [24]  790 	sjmp	00106$
      0001F3                        791 00104$:
                                    792 ;	uart.h:112: else if(format==DEC)
      0001F3 E5 0C            [12]  793 	mov	a,_bp
      0001F5 24 FD            [12]  794 	add	a,#0xfd
      0001F7 F8               [12]  795 	mov	r0,a
      0001F8 B6 01 73         [24]  796 	cjne	@r0,#0x01,00106$
                                    797 ;	uart.h:114: msd = num/100; // 100s place
      0001FB 7E 00            [12]  798 	mov	r6,#0x00
      0001FD 75 0D 64         [24]  799 	mov	__divsint_PARM_2,#0x64
                                    800 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000200 8E 0E            [24]  801 	mov	(__divsint_PARM_2 + 1),r6
      000202 8F 82            [24]  802 	mov	dpl,r7
      000204 8E 83            [24]  803 	mov	dph,r6
      000206 C0 07            [24]  804 	push	ar7
      000208 C0 06            [24]  805 	push	ar6
      00020A 12 07 4B         [24]  806 	lcall	__divsint
      00020D AC 82            [24]  807 	mov	r4,dpl
      00020F D0 06            [24]  808 	pop	ar6
      000211 D0 07            [24]  809 	pop	ar7
                                    810 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000213 75 0D 64         [24]  811 	mov	__modsint_PARM_2,#0x64
      000216 75 0E 00         [24]  812 	mov	(__modsint_PARM_2 + 1),#0x00
      000219 8F 82            [24]  813 	mov	dpl,r7
      00021B 8E 83            [24]  814 	mov	dph,r6
      00021D C0 07            [24]  815 	push	ar7
      00021F C0 06            [24]  816 	push	ar6
      000221 C0 04            [24]  817 	push	ar4
      000223 12 07 15         [24]  818 	lcall	__modsint
      000226 75 0D 0A         [24]  819 	mov	__divsint_PARM_2,#0x0a
      000229 75 0E 00         [24]  820 	mov	(__divsint_PARM_2 + 1),#0x00
      00022C 12 07 4B         [24]  821 	lcall	__divsint
      00022F AB 82            [24]  822 	mov	r3,dpl
      000231 D0 04            [24]  823 	pop	ar4
      000233 D0 06            [24]  824 	pop	ar6
      000235 D0 07            [24]  825 	pop	ar7
                                    826 ;	uart.h:116: lsd = num%10;
      000237 75 0D 0A         [24]  827 	mov	__modsint_PARM_2,#0x0a
      00023A 75 0E 00         [24]  828 	mov	(__modsint_PARM_2 + 1),#0x00
      00023D 8F 82            [24]  829 	mov	dpl,r7
      00023F 8E 83            [24]  830 	mov	dph,r6
      000241 C0 04            [24]  831 	push	ar4
      000243 C0 03            [24]  832 	push	ar3
      000245 12 07 15         [24]  833 	lcall	__modsint
      000248 AE 82            [24]  834 	mov	r6,dpl
      00024A D0 03            [24]  835 	pop	ar3
      00024C D0 04            [24]  836 	pop	ar4
                                    837 ;	uart.h:118: UartWrite(msd + 0x30);
      00024E 74 30            [12]  838 	mov	a,#0x30
      000250 2C               [12]  839 	add	a,r4
      000251 F5 82            [12]  840 	mov	dpl,a
      000253 C0 06            [24]  841 	push	ar6
      000255 C0 03            [24]  842 	push	ar3
      000257 12 00 FA         [24]  843 	lcall	_UartWrite
      00025A D0 03            [24]  844 	pop	ar3
                                    845 ;	uart.h:119: UartWrite(extra + 0x30);
      00025C 74 30            [12]  846 	mov	a,#0x30
      00025E 2B               [12]  847 	add	a,r3
      00025F F5 82            [12]  848 	mov	dpl,a
      000261 12 00 FA         [24]  849 	lcall	_UartWrite
      000264 D0 06            [24]  850 	pop	ar6
                                    851 ;	uart.h:120: UartWrite(lsd + 0x30);
      000266 74 30            [12]  852 	mov	a,#0x30
      000268 2E               [12]  853 	add	a,r6
      000269 F5 82            [12]  854 	mov	dpl,a
      00026B 12 00 FA         [24]  855 	lcall	_UartWrite
      00026E                        856 00106$:
                                    857 ;	uart.h:123: }
      00026E D0 0C            [24]  858 	pop	_bp
      000270 22               [24]  859 	ret
                                    860 ;------------------------------------------------------------
                                    861 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    862 ;------------------------------------------------------------
                                    863 ;length                    Allocated to stack - _bp -3
                                    864 ;format                    Allocated to stack - _bp -4
                                    865 ;delimiter                 Allocated to stack - _bp -5
                                    866 ;p                         Allocated to registers 
                                    867 ;i                         Allocated to registers r4 
                                    868 ;------------------------------------------------------------
                                    869 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    870 ;	-----------------------------------------
                                    871 ;	 function UartWriteNumbers
                                    872 ;	-----------------------------------------
      000271                        873 _UartWriteNumbers:
      000271 C0 0C            [24]  874 	push	_bp
      000273 85 81 0C         [24]  875 	mov	_bp,sp
      000276 AD 82            [24]  876 	mov	r5,dpl
      000278 AE 83            [24]  877 	mov	r6,dph
      00027A AF F0            [24]  878 	mov	r7,b
                                    879 ;	uart.h:129: for(i=0;i<length;i++,p++)
      00027C 7C 00            [12]  880 	mov	r4,#0x00
      00027E                        881 00103$:
      00027E E5 0C            [12]  882 	mov	a,_bp
      000280 24 FD            [12]  883 	add	a,#0xfd
      000282 F8               [12]  884 	mov	r0,a
      000283 C3               [12]  885 	clr	c
      000284 EC               [12]  886 	mov	a,r4
      000285 96               [12]  887 	subb	a,@r0
      000286 50 3B            [24]  888 	jnc	00105$
                                    889 ;	uart.h:131: UartWriteNumber(*p,format);
      000288 8D 82            [24]  890 	mov	dpl,r5
      00028A 8E 83            [24]  891 	mov	dph,r6
      00028C 8F F0            [24]  892 	mov	b,r7
      00028E 12 06 F9         [24]  893 	lcall	__gptrget
      000291 FB               [12]  894 	mov	r3,a
      000292 A3               [24]  895 	inc	dptr
      000293 AD 82            [24]  896 	mov	r5,dpl
      000295 AE 83            [24]  897 	mov	r6,dph
      000297 C0 07            [24]  898 	push	ar7
      000299 C0 06            [24]  899 	push	ar6
      00029B C0 05            [24]  900 	push	ar5
      00029D C0 04            [24]  901 	push	ar4
      00029F E5 0C            [12]  902 	mov	a,_bp
      0002A1 24 FC            [12]  903 	add	a,#0xfc
      0002A3 F8               [12]  904 	mov	r0,a
      0002A4 E6               [12]  905 	mov	a,@r0
      0002A5 C0 E0            [24]  906 	push	acc
      0002A7 8B 82            [24]  907 	mov	dpl,r3
      0002A9 12 01 B2         [24]  908 	lcall	_UartWriteNumber
      0002AC 15 81            [12]  909 	dec	sp
                                    910 ;	uart.h:132: UartWrite(delimiter);
      0002AE E5 0C            [12]  911 	mov	a,_bp
      0002B0 24 FB            [12]  912 	add	a,#0xfb
      0002B2 F8               [12]  913 	mov	r0,a
      0002B3 86 82            [24]  914 	mov	dpl,@r0
      0002B5 12 00 FA         [24]  915 	lcall	_UartWrite
      0002B8 D0 04            [24]  916 	pop	ar4
      0002BA D0 05            [24]  917 	pop	ar5
      0002BC D0 06            [24]  918 	pop	ar6
      0002BE D0 07            [24]  919 	pop	ar7
                                    920 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002C0 0C               [12]  921 	inc	r4
      0002C1 80 BB            [24]  922 	sjmp	00103$
      0002C3                        923 00105$:
                                    924 ;	uart.h:134: }
      0002C3 D0 0C            [24]  925 	pop	_bp
      0002C5 22               [24]  926 	ret
                                    927 ;------------------------------------------------------------
                                    928 ;Allocation info for local variables in function 'UartPrintNumber'
                                    929 ;------------------------------------------------------------
                                    930 ;n                         Allocated to stack - _bp +1
                                    931 ;digit                     Allocated to registers r2 r5 r6 r7 
                                    932 ;i                         Allocated to registers r3 
                                    933 ;j                         Allocated to registers r4 
                                    934 ;sloc0                     Allocated to stack - _bp +5
                                    935 ;------------------------------------------------------------
                                    936 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                    937 ;	-----------------------------------------
                                    938 ;	 function UartPrintNumber
                                    939 ;	-----------------------------------------
      0002C6                        940 _UartPrintNumber:
      0002C6 C0 0C            [24]  941 	push	_bp
      0002C8 85 81 0C         [24]  942 	mov	_bp,sp
      0002CB C0 82            [24]  943 	push	dpl
      0002CD C0 83            [24]  944 	push	dph
      0002CF C0 F0            [24]  945 	push	b
      0002D1 C0 E0            [24]  946 	push	acc
      0002D3 E5 81            [12]  947 	mov	a,sp
      0002D5 24 04            [12]  948 	add	a,#0x04
      0002D7 F5 81            [12]  949 	mov	sp,a
                                    950 ;	uart.h:154: for(i=8;i>0;i--)
      0002D9 7B 08            [12]  951 	mov	r3,#0x08
      0002DB                        952 00106$:
                                    953 ;	uart.h:156: digit=n;
      0002DB A8 0C            [24]  954 	mov	r0,_bp
      0002DD 08               [12]  955 	inc	r0
      0002DE 86 02            [24]  956 	mov	ar2,@r0
      0002E0 08               [12]  957 	inc	r0
      0002E1 86 05            [24]  958 	mov	ar5,@r0
      0002E3 08               [12]  959 	inc	r0
      0002E4 86 06            [24]  960 	mov	ar6,@r0
      0002E6 08               [12]  961 	inc	r0
      0002E7 86 07            [24]  962 	mov	ar7,@r0
                                    963 ;	uart.h:157: for(j=1;j<i;j++) digit/=10;
      0002E9 7C 01            [12]  964 	mov	r4,#0x01
      0002EB                        965 00104$:
      0002EB C3               [12]  966 	clr	c
      0002EC EC               [12]  967 	mov	a,r4
      0002ED 9B               [12]  968 	subb	a,r3
      0002EE 50 43            [24]  969 	jnc	00101$
      0002F0 C0 03            [24]  970 	push	ar3
      0002F2 75 0D 0A         [24]  971 	mov	__divulong_PARM_2,#0x0a
      0002F5 E4               [12]  972 	clr	a
      0002F6 F5 0E            [12]  973 	mov	(__divulong_PARM_2 + 1),a
      0002F8 F5 0F            [12]  974 	mov	(__divulong_PARM_2 + 2),a
      0002FA F5 10            [12]  975 	mov	(__divulong_PARM_2 + 3),a
      0002FC 8A 82            [24]  976 	mov	dpl,r2
      0002FE 8D 83            [24]  977 	mov	dph,r5
      000300 8E F0            [24]  978 	mov	b,r6
      000302 EF               [12]  979 	mov	a,r7
      000303 C0 04            [24]  980 	push	ar4
      000305 C0 03            [24]  981 	push	ar3
      000307 12 06 03         [24]  982 	lcall	__divulong
      00030A C8               [12]  983 	xch	a,r0
      00030B E5 0C            [12]  984 	mov	a,_bp
      00030D 24 05            [12]  985 	add	a,#0x05
      00030F C8               [12]  986 	xch	a,r0
      000310 A6 82            [24]  987 	mov	@r0,dpl
      000312 08               [12]  988 	inc	r0
      000313 A6 83            [24]  989 	mov	@r0,dph
      000315 08               [12]  990 	inc	r0
      000316 A6 F0            [24]  991 	mov	@r0,b
      000318 08               [12]  992 	inc	r0
      000319 F6               [12]  993 	mov	@r0,a
      00031A D0 03            [24]  994 	pop	ar3
      00031C D0 04            [24]  995 	pop	ar4
      00031E E5 0C            [12]  996 	mov	a,_bp
      000320 24 05            [12]  997 	add	a,#0x05
      000322 F8               [12]  998 	mov	r0,a
      000323 86 02            [24]  999 	mov	ar2,@r0
      000325 08               [12] 1000 	inc	r0
      000326 86 05            [24] 1001 	mov	ar5,@r0
      000328 08               [12] 1002 	inc	r0
      000329 86 06            [24] 1003 	mov	ar6,@r0
      00032B 08               [12] 1004 	inc	r0
      00032C 86 07            [24] 1005 	mov	ar7,@r0
      00032E 0C               [12] 1006 	inc	r4
      00032F D0 03            [24] 1007 	pop	ar3
      000331 80 B8            [24] 1008 	sjmp	00104$
      000333                       1009 00101$:
                                   1010 ;	uart.h:158: UartWrite(0x30 + digit%10);
      000333 75 0D 0A         [24] 1011 	mov	__modulong_PARM_2,#0x0a
      000336 E4               [12] 1012 	clr	a
      000337 F5 0E            [12] 1013 	mov	(__modulong_PARM_2 + 1),a
      000339 F5 0F            [12] 1014 	mov	(__modulong_PARM_2 + 2),a
      00033B F5 10            [12] 1015 	mov	(__modulong_PARM_2 + 3),a
      00033D 8A 82            [24] 1016 	mov	dpl,r2
      00033F 8D 83            [24] 1017 	mov	dph,r5
      000341 8E F0            [24] 1018 	mov	b,r6
      000343 EF               [12] 1019 	mov	a,r7
      000344 C0 03            [24] 1020 	push	ar3
      000346 12 05 80         [24] 1021 	lcall	__modulong
      000349 AC 82            [24] 1022 	mov	r4,dpl
      00034B 74 30            [12] 1023 	mov	a,#0x30
      00034D 2C               [12] 1024 	add	a,r4
      00034E F5 82            [12] 1025 	mov	dpl,a
      000350 12 00 FA         [24] 1026 	lcall	_UartWrite
      000353 D0 03            [24] 1027 	pop	ar3
                                   1028 ;	uart.h:154: for(i=8;i>0;i--)
      000355 DB 84            [24] 1029 	djnz	r3,00106$
                                   1030 ;	uart.h:160: }
      000357 85 0C 81         [24] 1031 	mov	sp,_bp
      00035A D0 0C            [24] 1032 	pop	_bp
      00035C 22               [24] 1033 	ret
                                   1034 ;------------------------------------------------------------
                                   1035 ;Allocation info for local variables in function 'UartScanByte'
                                   1036 ;------------------------------------------------------------
                                   1037 ;unibble                   Allocated to registers r7 
                                   1038 ;lnibble                   Allocated to registers r6 
                                   1039 ;------------------------------------------------------------
                                   1040 ;	uart.h:163: uint8_t UartScanByte() __reentrant
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function UartScanByte
                                   1043 ;	-----------------------------------------
      00035D                       1044 _UartScanByte:
                                   1045 ;	uart.h:167: while(UartReadReady()) UartRead(); //flush
      00035D                       1046 00101$:
      00035D 12 00 E6         [24] 1047 	lcall	_UartReadReady
      000360 E5 82            [12] 1048 	mov	a,dpl
      000362 60 05            [24] 1049 	jz	00103$
      000364 12 00 F1         [24] 1050 	lcall	_UartRead
      000367 80 F4            [24] 1051 	sjmp	00101$
      000369                       1052 00103$:
                                   1053 ;	uart.h:168: UartPrint("Number in Hex - eg(FE for 254): ");
      000369 90 07 87         [24] 1054 	mov	dptr,#___str_0
      00036C 75 F0 80         [24] 1055 	mov	b,#0x80
      00036F 12 01 80         [24] 1056 	lcall	_UartPrint
                                   1057 ;	uart.h:170: unibble = UartRead();
      000372 12 00 F1         [24] 1058 	lcall	_UartRead
                                   1059 ;	uart.h:171: UartWrite(unibble);
      000375 AF 82            [24] 1060 	mov  r7,dpl
      000377 C0 07            [24] 1061 	push	ar7
      000379 12 00 FA         [24] 1062 	lcall	_UartWrite
                                   1063 ;	uart.h:172: lnibble = UartRead();
      00037C 12 00 F1         [24] 1064 	lcall	_UartRead
                                   1065 ;	uart.h:173: UartWrite(lnibble);
      00037F AE 82            [24] 1066 	mov  r6,dpl
      000381 C0 06            [24] 1067 	push	ar6
      000383 12 00 FA         [24] 1068 	lcall	_UartWrite
                                   1069 ;	uart.h:175: UartWrite('\n');
      000386 75 82 0A         [24] 1070 	mov	dpl,#0x0a
      000389 12 00 FA         [24] 1071 	lcall	_UartWrite
      00038C D0 06            [24] 1072 	pop	ar6
      00038E D0 07            [24] 1073 	pop	ar7
                                   1074 ;	uart.h:177: return hex2dec(unibble,lnibble);
      000390 8E 08            [24] 1075 	mov	_hex2dec_PARM_2,r6
      000392 8F 82            [24] 1076 	mov	dpl,r7
                                   1077 ;	uart.h:178: }
      000394 02 00 9F         [24] 1078 	ljmp	_hex2dec
                                   1079 ;------------------------------------------------------------
                                   1080 ;Allocation info for local variables in function 'UartScanLine'
                                   1081 ;------------------------------------------------------------
                                   1082 ;maxLength                 Allocated to stack - _bp -3
                                   1083 ;dst                       Allocated to stack - _bp +1
                                   1084 ;recv                      Allocated to registers r2 
                                   1085 ;count                     Allocated to registers r4 
                                   1086 ;------------------------------------------------------------
                                   1087 ;	uart.h:180: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1088 ;	-----------------------------------------
                                   1089 ;	 function UartScanLine
                                   1090 ;	-----------------------------------------
      000397                       1091 _UartScanLine:
      000397 C0 0C            [24] 1092 	push	_bp
      000399 85 81 0C         [24] 1093 	mov	_bp,sp
      00039C C0 82            [24] 1094 	push	dpl
      00039E C0 83            [24] 1095 	push	dph
      0003A0 C0 F0            [24] 1096 	push	b
                                   1097 ;	uart.h:182: uint8_t recv,count=0;
      0003A2 7C 00            [12] 1098 	mov	r4,#0x00
                                   1099 ;	uart.h:184: while(UartReadReady()) UartRead(); //flush
      0003A4                       1100 00101$:
      0003A4 C0 04            [24] 1101 	push	ar4
      0003A6 12 00 E6         [24] 1102 	lcall	_UartReadReady
      0003A9 E5 82            [12] 1103 	mov	a,dpl
      0003AB D0 04            [24] 1104 	pop	ar4
      0003AD 60 09            [24] 1105 	jz	00118$
      0003AF C0 04            [24] 1106 	push	ar4
      0003B1 12 00 F1         [24] 1107 	lcall	_UartRead
      0003B4 D0 04            [24] 1108 	pop	ar4
                                   1109 ;	uart.h:186: while(1)
      0003B6 80 EC            [24] 1110 	sjmp	00101$
      0003B8                       1111 00118$:
      0003B8 7B 00            [12] 1112 	mov	r3,#0x00
      0003BA                       1113 00110$:
                                   1114 ;	uart.h:189: recv=UartRead();
      0003BA C0 04            [24] 1115 	push	ar4
      0003BC C0 03            [24] 1116 	push	ar3
      0003BE 12 00 F1         [24] 1117 	lcall	_UartRead
                                   1118 ;	uart.h:190: UartWrite(recv);
      0003C1 AA 82            [24] 1119 	mov  r2,dpl
      0003C3 C0 02            [24] 1120 	push	ar2
      0003C5 12 00 FA         [24] 1121 	lcall	_UartWrite
      0003C8 D0 02            [24] 1122 	pop	ar2
      0003CA D0 03            [24] 1123 	pop	ar3
      0003CC D0 04            [24] 1124 	pop	ar4
                                   1125 ;	uart.h:191: if(recv == '\n') 
      0003CE BA 0A 19         [24] 1126 	cjne	r2,#0x0a,00105$
                                   1127 ;	uart.h:193: *(dst+count)=0; //add string terminate
      0003D1 A8 0C            [24] 1128 	mov	r0,_bp
      0003D3 08               [12] 1129 	inc	r0
      0003D4 EC               [12] 1130 	mov	a,r4
      0003D5 26               [12] 1131 	add	a,@r0
      0003D6 FD               [12] 1132 	mov	r5,a
      0003D7 E4               [12] 1133 	clr	a
      0003D8 08               [12] 1134 	inc	r0
      0003D9 36               [12] 1135 	addc	a,@r0
      0003DA FE               [12] 1136 	mov	r6,a
      0003DB 08               [12] 1137 	inc	r0
      0003DC 86 07            [24] 1138 	mov	ar7,@r0
      0003DE 8D 82            [24] 1139 	mov	dpl,r5
      0003E0 8E 83            [24] 1140 	mov	dph,r6
      0003E2 8F F0            [24] 1141 	mov	b,r7
      0003E4 E4               [12] 1142 	clr	a
      0003E5 12 06 68         [24] 1143 	lcall	__gptrput
                                   1144 ;	uart.h:194: break;
      0003E8 80 31            [24] 1145 	sjmp	00111$
      0003EA                       1146 00105$:
                                   1147 ;	uart.h:196: else *(dst+count)=recv;
      0003EA A8 0C            [24] 1148 	mov	r0,_bp
      0003EC 08               [12] 1149 	inc	r0
      0003ED EB               [12] 1150 	mov	a,r3
      0003EE 26               [12] 1151 	add	a,@r0
      0003EF FD               [12] 1152 	mov	r5,a
      0003F0 E4               [12] 1153 	clr	a
      0003F1 08               [12] 1154 	inc	r0
      0003F2 36               [12] 1155 	addc	a,@r0
      0003F3 FE               [12] 1156 	mov	r6,a
      0003F4 08               [12] 1157 	inc	r0
      0003F5 86 07            [24] 1158 	mov	ar7,@r0
      0003F7 8D 82            [24] 1159 	mov	dpl,r5
      0003F9 8E 83            [24] 1160 	mov	dph,r6
      0003FB 8F F0            [24] 1161 	mov	b,r7
      0003FD EA               [12] 1162 	mov	a,r2
      0003FE 12 06 68         [24] 1163 	lcall	__gptrput
                                   1164 ;	uart.h:198: if(count==maxLength) 
      000401 E5 0C            [12] 1165 	mov	a,_bp
      000403 24 FD            [12] 1166 	add	a,#0xfd
      000405 F8               [12] 1167 	mov	r0,a
      000406 E6               [12] 1168 	mov	a,@r0
      000407 B5 03 0C         [24] 1169 	cjne	a,ar3,00108$
                                   1170 ;	uart.h:200: *(dst+count)=0; // terminate string.
      00040A 8D 82            [24] 1171 	mov	dpl,r5
      00040C 8E 83            [24] 1172 	mov	dph,r6
      00040E 8F F0            [24] 1173 	mov	b,r7
      000410 E4               [12] 1174 	clr	a
      000411 12 06 68         [24] 1175 	lcall	__gptrput
                                   1176 ;	uart.h:201: break;
      000414 80 05            [24] 1177 	sjmp	00111$
      000416                       1178 00108$:
                                   1179 ;	uart.h:204: count++;
      000416 0B               [12] 1180 	inc	r3
      000417 8B 04            [24] 1181 	mov	ar4,r3
      000419 80 9F            [24] 1182 	sjmp	00110$
      00041B                       1183 00111$:
                                   1184 ;	uart.h:208: return count;
      00041B 8C 82            [24] 1185 	mov	dpl,r4
                                   1186 ;	uart.h:210: }
      00041D 85 0C 81         [24] 1187 	mov	sp,_bp
      000420 D0 0C            [24] 1188 	pop	_bp
      000422 22               [24] 1189 	ret
                                   1190 ;------------------------------------------------------------
                                   1191 ;Allocation info for local variables in function 'SL_disable_write_protection'
                                   1192 ;------------------------------------------------------------
                                   1193 ;xram_addr                 Allocated to registers 
                                   1194 ;------------------------------------------------------------
                                   1195 ;	serialloader.h:24: void SL_disable_write_protection()
                                   1196 ;	-----------------------------------------
                                   1197 ;	 function SL_disable_write_protection
                                   1198 ;	-----------------------------------------
      000423                       1199 _SL_disable_write_protection:
                                   1200 ;	serialloader.h:29: *(xram_addr) = 0xAA;
      000423 90 15 55         [24] 1201 	mov	dptr,#0x1555
      000426 74 AA            [12] 1202 	mov	a,#0xaa
      000428 F0               [24] 1203 	movx	@dptr,a
                                   1204 ;	serialloader.h:31: *(xram_addr) = 0x55;
      000429 90 0A AA         [24] 1205 	mov	dptr,#0x0aaa
      00042C F4               [12] 1206 	cpl	a
      00042D F0               [24] 1207 	movx	@dptr,a
                                   1208 ;	serialloader.h:33: *(xram_addr) = 0x80;
                                   1209 ;	serialloader.h:37: *(xram_addr) = 0xAA;
      00042E 90 15 55         [24] 1210 	mov	dptr,#0x1555
      000431 74 80            [12] 1211 	mov	a,#0x80
      000433 F0               [24] 1212 	movx	@dptr,a
      000434 74 AA            [12] 1213 	mov	a,#0xaa
      000436 F0               [24] 1214 	movx	@dptr,a
                                   1215 ;	serialloader.h:39: *(xram_addr) = 0x55;
      000437 90 0A AA         [24] 1216 	mov	dptr,#0x0aaa
      00043A F4               [12] 1217 	cpl	a
      00043B F0               [24] 1218 	movx	@dptr,a
                                   1219 ;	serialloader.h:41: *(xram_addr) = 0x20;
      00043C 90 15 55         [24] 1220 	mov	dptr,#0x1555
      00043F 74 20            [12] 1221 	mov	a,#0x20
      000441 F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	serialloader.h:43: UartWrite('D'); //ack
      000442 75 82 44         [24] 1224 	mov	dpl,#0x44
      000445 12 00 FA         [24] 1225 	lcall	_UartWrite
                                   1226 ;	serialloader.h:45: EEPROM_WRITE_PROTECTION=0; //change flag
      000448 75 0B 00         [24] 1227 	mov	_EEPROM_WRITE_PROTECTION,#0x00
                                   1228 ;	serialloader.h:46: }
      00044B 22               [24] 1229 	ret
                                   1230 ;------------------------------------------------------------
                                   1231 ;Allocation info for local variables in function 'SL_enable_write_protection'
                                   1232 ;------------------------------------------------------------
                                   1233 ;	serialloader.h:48: void SL_enable_write_protection()
                                   1234 ;	-----------------------------------------
                                   1235 ;	 function SL_enable_write_protection
                                   1236 ;	-----------------------------------------
      00044C                       1237 _SL_enable_write_protection:
                                   1238 ;	serialloader.h:50: EEPROM_WRITE_PROTECTION=1; //change flag
      00044C 75 0B 01         [24] 1239 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                   1240 ;	serialloader.h:51: UartWrite('E'); 
      00044F 75 82 45         [24] 1241 	mov	dpl,#0x45
                                   1242 ;	serialloader.h:52: }
      000452 02 00 FA         [24] 1243 	ljmp	_UartWrite
                                   1244 ;------------------------------------------------------------
                                   1245 ;Allocation info for local variables in function 'SL_write'
                                   1246 ;------------------------------------------------------------
                                   1247 ;data                      Allocated to registers r5 
                                   1248 ;addr                      Allocated to registers r7 r6 
                                   1249 ;xram_addr                 Allocated to registers 
                                   1250 ;------------------------------------------------------------
                                   1251 ;	serialloader.h:54: void SL_write()
                                   1252 ;	-----------------------------------------
                                   1253 ;	 function SL_write
                                   1254 ;	-----------------------------------------
      000455                       1255 _SL_write:
                                   1256 ;	serialloader.h:60: while(UartReadReady()==0); //wait till we rcv data
      000455                       1257 00101$:
      000455 12 00 E6         [24] 1258 	lcall	_UartReadReady
      000458 E5 82            [12] 1259 	mov	a,dpl
      00045A 60 F9            [24] 1260 	jz	00101$
                                   1261 ;	serialloader.h:63: addr = UartRead(); //msb
      00045C 12 00 F1         [24] 1262 	lcall	_UartRead
                                   1263 ;	serialloader.h:64: addr = addr << 8;
      00045F AE 82            [24] 1264 	mov	r6,dpl
      000461 7F 00            [12] 1265 	mov	r7,#0x00
                                   1266 ;	serialloader.h:65: addr |= UartRead(); //lsb
      000463 C0 07            [24] 1267 	push	ar7
      000465 C0 06            [24] 1268 	push	ar6
      000467 12 00 F1         [24] 1269 	lcall	_UartRead
      00046A AD 82            [24] 1270 	mov	r5,dpl
      00046C D0 06            [24] 1271 	pop	ar6
      00046E D0 07            [24] 1272 	pop	ar7
      000470 7C 00            [12] 1273 	mov	r4,#0x00
      000472 ED               [12] 1274 	mov	a,r5
      000473 42 07            [12] 1275 	orl	ar7,a
      000475 EC               [12] 1276 	mov	a,r4
      000476 42 06            [12] 1277 	orl	ar6,a
                                   1278 ;	serialloader.h:67: data = UartRead(); //read data
      000478 C0 07            [24] 1279 	push	ar7
      00047A C0 06            [24] 1280 	push	ar6
      00047C 12 00 F1         [24] 1281 	lcall	_UartRead
      00047F AD 82            [24] 1282 	mov	r5,dpl
      000481 D0 06            [24] 1283 	pop	ar6
      000483 D0 07            [24] 1284 	pop	ar7
                                   1285 ;	serialloader.h:69: if(EEPROM_WRITE_PROTECTION)
      000485 E5 0B            [12] 1286 	mov	a,_EEPROM_WRITE_PROTECTION
      000487 60 11            [24] 1287 	jz	00105$
                                   1288 ;	serialloader.h:73: *(xram_addr) = 0xAA;
      000489 90 15 55         [24] 1289 	mov	dptr,#0x1555
      00048C 74 AA            [12] 1290 	mov	a,#0xaa
      00048E F0               [24] 1291 	movx	@dptr,a
                                   1292 ;	serialloader.h:75: *(xram_addr) = 0x55;
      00048F 90 0A AA         [24] 1293 	mov	dptr,#0x0aaa
      000492 F4               [12] 1294 	cpl	a
      000493 F0               [24] 1295 	movx	@dptr,a
                                   1296 ;	serialloader.h:77: *(xram_addr) = 0xA0;
      000494 90 15 55         [24] 1297 	mov	dptr,#0x1555
      000497 74 A0            [12] 1298 	mov	a,#0xa0
      000499 F0               [24] 1299 	movx	@dptr,a
      00049A                       1300 00105$:
                                   1301 ;	serialloader.h:80: xram_addr = (__xdata unsigned char*) addr;
      00049A 8F 82            [24] 1302 	mov	dpl,r7
      00049C 8E 83            [24] 1303 	mov	dph,r6
                                   1304 ;	serialloader.h:82: *(xram_addr) = data; //write to xram
      00049E ED               [12] 1305 	mov	a,r5
      00049F F0               [24] 1306 	movx	@dptr,a
                                   1307 ;	serialloader.h:84: UartWrite('W'); //ack
      0004A0 75 82 57         [24] 1308 	mov	dpl,#0x57
                                   1309 ;	serialloader.h:86: }
      0004A3 02 00 FA         [24] 1310 	ljmp	_UartWrite
                                   1311 ;------------------------------------------------------------
                                   1312 ;Allocation info for local variables in function 'SL_read'
                                   1313 ;------------------------------------------------------------
                                   1314 ;data                      Allocated to registers r7 
                                   1315 ;addr                      Allocated to registers r7 r6 
                                   1316 ;xram_addr                 Allocated to registers 
                                   1317 ;------------------------------------------------------------
                                   1318 ;	serialloader.h:88: void SL_read()
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function SL_read
                                   1321 ;	-----------------------------------------
      0004A6                       1322 _SL_read:
                                   1323 ;	serialloader.h:94: while(UartReadReady()==0); //wait till we rcv data
      0004A6                       1324 00101$:
      0004A6 12 00 E6         [24] 1325 	lcall	_UartReadReady
      0004A9 E5 82            [12] 1326 	mov	a,dpl
      0004AB 60 F9            [24] 1327 	jz	00101$
                                   1328 ;	serialloader.h:98: addr = UartRead(); //msb
      0004AD 12 00 F1         [24] 1329 	lcall	_UartRead
                                   1330 ;	serialloader.h:99: addr = addr << 8;
      0004B0 AE 82            [24] 1331 	mov	r6,dpl
      0004B2 7F 00            [12] 1332 	mov	r7,#0x00
                                   1333 ;	serialloader.h:100: addr |= UartRead(); //lsb
      0004B4 C0 07            [24] 1334 	push	ar7
      0004B6 C0 06            [24] 1335 	push	ar6
      0004B8 12 00 F1         [24] 1336 	lcall	_UartRead
      0004BB AD 82            [24] 1337 	mov	r5,dpl
      0004BD D0 06            [24] 1338 	pop	ar6
      0004BF D0 07            [24] 1339 	pop	ar7
      0004C1 7C 00            [12] 1340 	mov	r4,#0x00
      0004C3 ED               [12] 1341 	mov	a,r5
      0004C4 42 07            [12] 1342 	orl	ar7,a
      0004C6 EC               [12] 1343 	mov	a,r4
      0004C7 42 06            [12] 1344 	orl	ar6,a
                                   1345 ;	serialloader.h:102: xram_addr = (__xdata unsigned char*) addr;
      0004C9 8F 82            [24] 1346 	mov	dpl,r7
      0004CB 8E 83            [24] 1347 	mov	dph,r6
                                   1348 ;	serialloader.h:104: data = *(xram_addr); //read from xram
      0004CD E0               [24] 1349 	movx	a,@dptr
                                   1350 ;	serialloader.h:106: UartWrite(data);
      0004CE F5 82            [12] 1351 	mov	dpl,a
                                   1352 ;	serialloader.h:108: }
      0004D0 02 00 FA         [24] 1353 	ljmp	_UartWrite
                                   1354 ;------------------------------------------------------------
                                   1355 ;Allocation info for local variables in function 'SL_getcmd'
                                   1356 ;------------------------------------------------------------
                                   1357 ;cmd                       Allocated to registers r7 
                                   1358 ;------------------------------------------------------------
                                   1359 ;	serialloader.h:111: unsigned char SL_getcmd()
                                   1360 ;	-----------------------------------------
                                   1361 ;	 function SL_getcmd
                                   1362 ;	-----------------------------------------
      0004D3                       1363 _SL_getcmd:
                                   1364 ;	serialloader.h:114: while(UartReadReady()) UartRead(); //flush 
      0004D3                       1365 00101$:
      0004D3 12 00 E6         [24] 1366 	lcall	_UartReadReady
      0004D6 E5 82            [12] 1367 	mov	a,dpl
      0004D8 60 05            [24] 1368 	jz	00104$
      0004DA 12 00 F1         [24] 1369 	lcall	_UartRead
                                   1370 ;	serialloader.h:116: while(UartReadReady()==0); //wait till we rcv data 
      0004DD 80 F4            [24] 1371 	sjmp	00101$
      0004DF                       1372 00104$:
      0004DF 12 00 E6         [24] 1373 	lcall	_UartReadReady
      0004E2 E5 82            [12] 1374 	mov	a,dpl
      0004E4 60 F9            [24] 1375 	jz	00104$
                                   1376 ;	serialloader.h:119: cmd = UartRead(); //read
      0004E6 12 00 F1         [24] 1377 	lcall	_UartRead
      0004E9 AF 82            [24] 1378 	mov	r7,dpl
                                   1379 ;	serialloader.h:121: switch(cmd)
      0004EB BF 44 02         [24] 1380 	cjne	r7,#0x44,00159$
      0004EE 80 3A            [24] 1381 	sjmp	00110$
      0004F0                       1382 00159$:
      0004F0 BF 45 02         [24] 1383 	cjne	r7,#0x45,00160$
      0004F3 80 3E            [24] 1384 	sjmp	00111$
      0004F5                       1385 00160$:
      0004F5 BF 52 02         [24] 1386 	cjne	r7,#0x52,00161$
      0004F8 80 1E            [24] 1387 	sjmp	00108$
      0004FA                       1388 00161$:
      0004FA BF 56 02         [24] 1389 	cjne	r7,#0x56,00162$
      0004FD 80 0A            [24] 1390 	sjmp	00107$
      0004FF                       1391 00162$:
      0004FF BF 57 02         [24] 1392 	cjne	r7,#0x57,00163$
      000502 80 1D            [24] 1393 	sjmp	00109$
      000504                       1394 00163$:
                                   1395 ;	serialloader.h:123: case 'V':
      000504 BF 58 38         [24] 1396 	cjne	r7,#0x58,00114$
      000507 80 33            [24] 1397 	sjmp	00112$
      000509                       1398 00107$:
                                   1399 ;	serialloader.h:124: UartPrint(SERIAL_LOADER_VERSION_INFO);
      000509 90 05 73         [24] 1400 	mov	dptr,#_SERIAL_LOADER_VERSION_INFO
      00050C 75 F0 80         [24] 1401 	mov	b,#0x80
      00050F C0 07            [24] 1402 	push	ar7
      000511 12 01 80         [24] 1403 	lcall	_UartPrint
      000514 D0 07            [24] 1404 	pop	ar7
                                   1405 ;	serialloader.h:125: break;
                                   1406 ;	serialloader.h:126: case 'R':
      000516 80 27            [24] 1407 	sjmp	00114$
      000518                       1408 00108$:
                                   1409 ;	serialloader.h:127: SL_read();
      000518 C0 07            [24] 1410 	push	ar7
      00051A 12 04 A6         [24] 1411 	lcall	_SL_read
      00051D D0 07            [24] 1412 	pop	ar7
                                   1413 ;	serialloader.h:128: break;
                                   1414 ;	serialloader.h:129: case 'W':
      00051F 80 1E            [24] 1415 	sjmp	00114$
      000521                       1416 00109$:
                                   1417 ;	serialloader.h:130: SL_write();
      000521 C0 07            [24] 1418 	push	ar7
      000523 12 04 55         [24] 1419 	lcall	_SL_write
      000526 D0 07            [24] 1420 	pop	ar7
                                   1421 ;	serialloader.h:131: break;
                                   1422 ;	serialloader.h:132: case 'D':
      000528 80 15            [24] 1423 	sjmp	00114$
      00052A                       1424 00110$:
                                   1425 ;	serialloader.h:133: SL_disable_write_protection();
      00052A C0 07            [24] 1426 	push	ar7
      00052C 12 04 23         [24] 1427 	lcall	_SL_disable_write_protection
      00052F D0 07            [24] 1428 	pop	ar7
                                   1429 ;	serialloader.h:134: break;
                                   1430 ;	serialloader.h:135: case 'E':
      000531 80 0C            [24] 1431 	sjmp	00114$
      000533                       1432 00111$:
                                   1433 ;	serialloader.h:136: SL_enable_write_protection();
      000533 C0 07            [24] 1434 	push	ar7
      000535 12 04 4C         [24] 1435 	lcall	_SL_enable_write_protection
      000538 D0 07            [24] 1436 	pop	ar7
                                   1437 ;	serialloader.h:137: break;
                                   1438 ;	serialloader.h:138: case 'X': //execute
      00053A 80 03            [24] 1439 	sjmp	00114$
      00053C                       1440 00112$:
                                   1441 ;	serialloader.h:139: SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);
      00053C 53 90 EF         [24] 1442 	anl	_P1,#0xef
                                   1443 ;	serialloader.h:143: }
      00053F                       1444 00114$:
                                   1445 ;	serialloader.h:145: return cmd;
      00053F 8F 82            [24] 1446 	mov	dpl,r7
                                   1447 ;	serialloader.h:146: }
      000541 22               [24] 1448 	ret
                                   1449 ;------------------------------------------------------------
                                   1450 ;Allocation info for local variables in function 'main'
                                   1451 ;------------------------------------------------------------
                                   1452 ;x                         Allocated to registers 
                                   1453 ;------------------------------------------------------------
                                   1454 ;	main.c:15: void main(void)
                                   1455 ;	-----------------------------------------
                                   1456 ;	 function main
                                   1457 ;	-----------------------------------------
      000542                       1458 _main:
                                   1459 ;	main.c:19: UartBegin();
      000542 12 00 D7         [24] 1460 	lcall	_UartBegin
                                   1461 ;	main.c:21: while(1)
      000545                       1462 00102$:
                                   1463 ;	main.c:32: SL_getcmd();
      000545 12 04 D3         [24] 1464 	lcall	_SL_getcmd
                                   1465 ;	main.c:37: }
      000548 80 FB            [24] 1466 	sjmp	00102$
                                   1467 ;------------------------------------------------------------
                                   1468 ;Allocation info for local variables in function 'delay'
                                   1469 ;------------------------------------------------------------
                                   1470 ;i                         Allocated to registers r6 r7 
                                   1471 ;j                         Allocated to registers r4 r5 
                                   1472 ;------------------------------------------------------------
                                   1473 ;	main.c:39: void delay(void)
                                   1474 ;	-----------------------------------------
                                   1475 ;	 function delay
                                   1476 ;	-----------------------------------------
      00054A                       1477 _delay:
                                   1478 ;	main.c:42: for(i=0;i<0xff;i++)
      00054A 7E 00            [12] 1479 	mov	r6,#0x00
      00054C 7F 00            [12] 1480 	mov	r7,#0x00
      00054E                       1481 00106$:
                                   1482 ;	main.c:43: for(j=0;j<0xff;j++);
      00054E 7C FF            [12] 1483 	mov	r4,#0xff
      000550 7D 00            [12] 1484 	mov	r5,#0x00
      000552                       1485 00105$:
      000552 EC               [12] 1486 	mov	a,r4
      000553 24 FF            [12] 1487 	add	a,#0xff
      000555 FA               [12] 1488 	mov	r2,a
      000556 ED               [12] 1489 	mov	a,r5
      000557 34 FF            [12] 1490 	addc	a,#0xff
      000559 FB               [12] 1491 	mov	r3,a
      00055A 8A 04            [24] 1492 	mov	ar4,r2
      00055C 8B 05            [24] 1493 	mov	ar5,r3
      00055E EA               [12] 1494 	mov	a,r2
      00055F 4B               [12] 1495 	orl	a,r3
      000560 70 F0            [24] 1496 	jnz	00105$
                                   1497 ;	main.c:42: for(i=0;i<0xff;i++)
      000562 0E               [12] 1498 	inc	r6
      000563 BE 00 01         [24] 1499 	cjne	r6,#0x00,00124$
      000566 0F               [12] 1500 	inc	r7
      000567                       1501 00124$:
      000567 C3               [12] 1502 	clr	c
      000568 EE               [12] 1503 	mov	a,r6
      000569 94 FF            [12] 1504 	subb	a,#0xff
      00056B EF               [12] 1505 	mov	a,r7
      00056C 64 80            [12] 1506 	xrl	a,#0x80
      00056E 94 80            [12] 1507 	subb	a,#0x80
      000570 40 DC            [24] 1508 	jc	00106$
                                   1509 ;	main.c:44: }
      000572 22               [24] 1510 	ret
                                   1511 	.area CSEG    (CODE)
                                   1512 	.area CONST   (CODE)
                                   1513 	.area CONST   (CODE)
      000787                       1514 ___str_0:
      000787 4E 75 6D 62 65 72 20  1515 	.ascii "Number in Hex - eg(FE for 254): "
             69 6E 20 48 65 78 20
             2D 20 65 67 28 46 45
             20 66 6F 72 20 32 35
             34 29 3A 20
      0007A7 00                    1516 	.db 0x00
                                   1517 	.area CSEG    (CODE)
      000573                       1518 _SERIAL_LOADER_VERSION_INFO:
      000573 49 53 41 3A 53 30 3A  1519 	.ascii "ISA:S0:8052"
             38 30 35 32
      00057E 0A                    1520 	.db 0x0a
      00057F 00                    1521 	.db 0x00
                                   1522 	.area XINIT   (CODE)
                                   1523 	.area CABS    (ABS,CODE)
