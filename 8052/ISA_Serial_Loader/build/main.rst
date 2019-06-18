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
                                     11 	.globl _main
                                     12 	.globl _SL_getcmd
                                     13 	.globl _SL_read
                                     14 	.globl _SL_write
                                     15 	.globl _SL_enable_write_protection
                                     16 	.globl _SL_disable_write_protection
                                     17 	.globl _delay_ms
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
                                    311 	.area	OSEG    (OVR,DATA)
                                    312 ;--------------------------------------------------------
                                    313 ; Stack segment in internal ram 
                                    314 ;--------------------------------------------------------
                                    315 	.area	SSEG
      000011                        316 __start__stack:
      000011                        317 	.ds	1
                                    318 
                                    319 ;--------------------------------------------------------
                                    320 ; indirectly addressable internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area ISEG    (DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; absolute internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area IABS    (ABS,DATA)
                                    327 	.area IABS    (ABS,DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; bit data
                                    330 ;--------------------------------------------------------
                                    331 	.area BSEG    (BIT)
                                    332 ;--------------------------------------------------------
                                    333 ; paged external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area PSEG    (PAG,XDATA)
                                    336 ;--------------------------------------------------------
                                    337 ; external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XSEG    (XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; absolute external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XABS    (ABS,XDATA)
                                    344 ;--------------------------------------------------------
                                    345 ; external initialized ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XISEG   (XDATA)
                                    348 	.area HOME    (CODE)
                                    349 	.area GSINIT0 (CODE)
                                    350 	.area GSINIT1 (CODE)
                                    351 	.area GSINIT2 (CODE)
                                    352 	.area GSINIT3 (CODE)
                                    353 	.area GSINIT4 (CODE)
                                    354 	.area GSINIT5 (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area CSEG    (CODE)
                                    358 ;--------------------------------------------------------
                                    359 ; interrupt vector 
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
      000000                        362 __interrupt_vect:
      000000 02 00 06         [24]  363 	ljmp	__sdcc_gsinit_startup
                                    364 ;--------------------------------------------------------
                                    365 ; global & static initialisations
                                    366 ;--------------------------------------------------------
                                    367 	.area HOME    (CODE)
                                    368 	.area GSINIT  (CODE)
                                    369 	.area GSFINAL (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.globl __sdcc_gsinit_startup
                                    372 	.globl __sdcc_program_startup
                                    373 	.globl __start__stack
                                    374 	.globl __mcs51_genXINIT
                                    375 	.globl __mcs51_genXRAMCLEAR
                                    376 	.globl __mcs51_genRAMCLEAR
                                    377 ;	serialloader.h:11: volatile unsigned char EEPROM_WRITE_PROTECTION=1;
      00005F 75 0B 01         [24]  378 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                    379 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  380 	ljmp	__sdcc_program_startup
                                    381 ;--------------------------------------------------------
                                    382 ; Home
                                    383 ;--------------------------------------------------------
                                    384 	.area HOME    (CODE)
                                    385 	.area HOME    (CODE)
      000003                        386 __sdcc_program_startup:
      000003 02 05 3B         [24]  387 	ljmp	_main
                                    388 ;	return from main will return to caller
                                    389 ;--------------------------------------------------------
                                    390 ; code
                                    391 ;--------------------------------------------------------
                                    392 	.area CSEG    (CODE)
                                    393 ;------------------------------------------------------------
                                    394 ;Allocation info for local variables in function 'hexNibble2dec'
                                    395 ;------------------------------------------------------------
                                    396 ;nibble                    Allocated to registers r7 
                                    397 ;------------------------------------------------------------
                                    398 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    399 ;	-----------------------------------------
                                    400 ;	 function hexNibble2dec
                                    401 ;	-----------------------------------------
      000065                        402 _hexNibble2dec:
                           000007   403 	ar7 = 0x07
                           000006   404 	ar6 = 0x06
                           000005   405 	ar5 = 0x05
                           000004   406 	ar4 = 0x04
                           000003   407 	ar3 = 0x03
                           000002   408 	ar2 = 0x02
                           000001   409 	ar1 = 0x01
                           000000   410 	ar0 = 0x00
      000065 AF 82            [24]  411 	mov	r7,dpl
                                    412 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      000067 BF 30 00         [24]  413 	cjne	r7,#0x30,00139$
      00006A                        414 00139$:
      00006A 40 0D            [24]  415 	jc	00110$
      00006C EF               [12]  416 	mov	a,r7
      00006D 24 C6            [12]  417 	add	a,#0xff - 0x39
      00006F 40 08            [24]  418 	jc	00110$
      000071 8F 06            [24]  419 	mov	ar6,r7
      000073 EE               [12]  420 	mov	a,r6
      000074 24 D0            [12]  421 	add	a,#0xd0
      000076 F5 82            [12]  422 	mov	dpl,a
      000078 22               [24]  423 	ret
      000079                        424 00110$:
                                    425 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      000079 BF 41 00         [24]  426 	cjne	r7,#0x41,00142$
      00007C                        427 00142$:
      00007C 40 0D            [24]  428 	jc	00106$
      00007E EF               [12]  429 	mov	a,r7
      00007F 24 B9            [12]  430 	add	a,#0xff - 0x46
      000081 40 08            [24]  431 	jc	00106$
      000083 8F 06            [24]  432 	mov	ar6,r7
      000085 74 C9            [12]  433 	mov	a,#0xc9
      000087 2E               [12]  434 	add	a,r6
      000088 F5 82            [12]  435 	mov	dpl,a
      00008A 22               [24]  436 	ret
      00008B                        437 00106$:
                                    438 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      00008B BF 61 00         [24]  439 	cjne	r7,#0x61,00145$
      00008E                        440 00145$:
      00008E 40 0B            [24]  441 	jc	00102$
      000090 EF               [12]  442 	mov	a,r7
      000091 24 99            [12]  443 	add	a,#0xff - 0x66
      000093 40 06            [24]  444 	jc	00102$
      000095 74 A9            [12]  445 	mov	a,#0xa9
      000097 2F               [12]  446 	add	a,r7
      000098 F5 82            [12]  447 	mov	dpl,a
      00009A 22               [24]  448 	ret
      00009B                        449 00102$:
                                    450 ;	uart.h:11: else return 0;
      00009B 75 82 00         [24]  451 	mov	dpl,#0x00
                                    452 ;	uart.h:12: }
      00009E 22               [24]  453 	ret
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'hex2dec'
                                    456 ;------------------------------------------------------------
                                    457 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    458 ;MSnibble                  Allocated to registers r7 
                                    459 ;------------------------------------------------------------
                                    460 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    461 ;	-----------------------------------------
                                    462 ;	 function hex2dec
                                    463 ;	-----------------------------------------
      00009F                        464 _hex2dec:
                                    465 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      00009F 12 00 65         [24]  466 	lcall	_hexNibble2dec
      0000A2 E5 82            [12]  467 	mov	a,dpl
      0000A4 C4               [12]  468 	swap	a
      0000A5 54 F0            [12]  469 	anl	a,#0xf0
      0000A7 FF               [12]  470 	mov	r7,a
      0000A8 85 08 82         [24]  471 	mov	dpl,_hex2dec_PARM_2
      0000AB C0 07            [24]  472 	push	ar7
      0000AD 12 00 65         [24]  473 	lcall	_hexNibble2dec
      0000B0 AE 82            [24]  474 	mov	r6,dpl
      0000B2 D0 07            [24]  475 	pop	ar7
      0000B4 EE               [12]  476 	mov	a,r6
      0000B5 2F               [12]  477 	add	a,r7
      0000B6 F5 82            [12]  478 	mov	dpl,a
                                    479 ;	uart.h:18: }
      0000B8 22               [24]  480 	ret
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'dec2hexNibble'
                                    483 ;------------------------------------------------------------
                                    484 ;dec                       Allocated to registers r7 
                                    485 ;------------------------------------------------------------
                                    486 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    487 ;	-----------------------------------------
                                    488 ;	 function dec2hexNibble
                                    489 ;	-----------------------------------------
      0000B9                        490 _dec2hexNibble:
                                    491 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000B9 E5 82            [12]  492 	mov	a,dpl
      0000BB FF               [12]  493 	mov	r7,a
      0000BC 24 F0            [12]  494 	add	a,#0xff - 0x0f
      0000BE 50 04            [24]  495 	jnc	00102$
      0000C0 75 82 58         [24]  496 	mov	dpl,#0x58
      0000C3 22               [24]  497 	ret
      0000C4                        498 00102$:
                                    499 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C4 EF               [12]  500 	mov	a,r7
      0000C5 24 F6            [12]  501 	add	a,#0xff - 0x09
      0000C7 40 08            [24]  502 	jc	00104$
      0000C9 8F 06            [24]  503 	mov	ar6,r7
      0000CB 74 30            [12]  504 	mov	a,#0x30
      0000CD 2E               [12]  505 	add	a,r6
      0000CE F5 82            [12]  506 	mov	dpl,a
      0000D0 22               [24]  507 	ret
      0000D1                        508 00104$:
                                    509 ;	uart.h:27: else return 'A' + dec - 10;
      0000D1 74 37            [12]  510 	mov	a,#0x37
      0000D3 2F               [12]  511 	add	a,r7
      0000D4 F5 82            [12]  512 	mov	dpl,a
                                    513 ;	uart.h:28: }
      0000D6 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'UartBegin'
                                    517 ;------------------------------------------------------------
                                    518 ;	uart.h:33: void UartBegin()
                                    519 ;	-----------------------------------------
                                    520 ;	 function UartBegin
                                    521 ;	-----------------------------------------
      0000D7                        522 _UartBegin:
                                    523 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000D7 75 89 20         [24]  524 	mov	_TMOD,#0x20
                                    525 ;	uart.h:39: TH1 = 0XF3; //2400
      0000DA 75 8D F3         [24]  526 	mov	_TH1,#0xf3
                                    527 ;	uart.h:40: SCON = 0X50;
      0000DD 75 98 50         [24]  528 	mov	_SCON,#0x50
                                    529 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000E0 43 87 80         [24]  530 	orl	_PCON,#0x80
                                    531 ;	uart.h:44: TR1 = 1; //START TIMER
                                    532 ;	assignBit
      0000E3 D2 8E            [12]  533 	setb	_TR1
                                    534 ;	uart.h:45: }
      0000E5 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'UartReadReady'
                                    538 ;------------------------------------------------------------
                                    539 ;	uart.h:47: unsigned char UartReadReady()
                                    540 ;	-----------------------------------------
                                    541 ;	 function UartReadReady
                                    542 ;	-----------------------------------------
      0000E6                        543 _UartReadReady:
                                    544 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000E6 20 98 04         [24]  545 	jb	_RI,00102$
      0000E9 75 82 00         [24]  546 	mov	dpl,#0x00
      0000EC 22               [24]  547 	ret
      0000ED                        548 00102$:
                                    549 ;	uart.h:50: else return 1; //received and ready
      0000ED 75 82 01         [24]  550 	mov	dpl,#0x01
                                    551 ;	uart.h:51: }
      0000F0 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'UartRead'
                                    555 ;------------------------------------------------------------
                                    556 ;value                     Allocated to registers 
                                    557 ;------------------------------------------------------------
                                    558 ;	uart.h:53: unsigned char UartRead()
                                    559 ;	-----------------------------------------
                                    560 ;	 function UartRead
                                    561 ;	-----------------------------------------
      0000F1                        562 _UartRead:
                                    563 ;	uart.h:56: while(RI==0); //wait till RX
      0000F1                        564 00101$:
                                    565 ;	uart.h:57: RI=0;
                                    566 ;	assignBit
      0000F1 10 98 02         [24]  567 	jbc	_RI,00114$
      0000F4 80 FB            [24]  568 	sjmp	00101$
      0000F6                        569 00114$:
                                    570 ;	uart.h:58: value = SBUF;
      0000F6 85 99 82         [24]  571 	mov	dpl,_SBUF
                                    572 ;	uart.h:59: return value;
                                    573 ;	uart.h:60: }
      0000F9 22               [24]  574 	ret
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'UartWrite'
                                    577 ;------------------------------------------------------------
                                    578 ;value                     Allocated to registers 
                                    579 ;------------------------------------------------------------
                                    580 ;	uart.h:63: void UartWrite(unsigned char value)
                                    581 ;	-----------------------------------------
                                    582 ;	 function UartWrite
                                    583 ;	-----------------------------------------
      0000FA                        584 _UartWrite:
      0000FA 85 82 99         [24]  585 	mov	_SBUF,dpl
                                    586 ;	uart.h:66: while(TI==0); // wait till TX
      0000FD                        587 00101$:
                                    588 ;	uart.h:67: TI=0;
                                    589 ;	assignBit
      0000FD 10 99 02         [24]  590 	jbc	_TI,00114$
      000100 80 FB            [24]  591 	sjmp	00101$
      000102                        592 00114$:
                                    593 ;	uart.h:68: }
      000102 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'UartWriteBuff'
                                    597 ;------------------------------------------------------------
                                    598 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    599 ;p                         Allocated to registers r5 r6 r7 
                                    600 ;i                         Allocated to registers r4 
                                    601 ;------------------------------------------------------------
                                    602 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    603 ;	-----------------------------------------
                                    604 ;	 function UartWriteBuff
                                    605 ;	-----------------------------------------
      000103                        606 _UartWriteBuff:
      000103 AD 82            [24]  607 	mov	r5,dpl
      000105 AE 83            [24]  608 	mov	r6,dph
      000107 AF F0            [24]  609 	mov	r7,b
                                    610 ;	uart.h:73: for (i=0;i<length;i++)
      000109 7C 00            [12]  611 	mov	r4,#0x00
      00010B                        612 00103$:
      00010B C3               [12]  613 	clr	c
      00010C EC               [12]  614 	mov	a,r4
      00010D 95 09            [12]  615 	subb	a,_UartWriteBuff_PARM_2
      00010F 50 29            [24]  616 	jnc	00105$
                                    617 ;	uart.h:75: UartWrite(p[i]);
      000111 EC               [12]  618 	mov	a,r4
      000112 2D               [12]  619 	add	a,r5
      000113 F9               [12]  620 	mov	r1,a
      000114 E4               [12]  621 	clr	a
      000115 3E               [12]  622 	addc	a,r6
      000116 FA               [12]  623 	mov	r2,a
      000117 8F 03            [24]  624 	mov	ar3,r7
      000119 89 82            [24]  625 	mov	dpl,r1
      00011B 8A 83            [24]  626 	mov	dph,r2
      00011D 8B F0            [24]  627 	mov	b,r3
      00011F 12 06 E5         [24]  628 	lcall	__gptrget
      000122 F5 82            [12]  629 	mov	dpl,a
      000124 C0 07            [24]  630 	push	ar7
      000126 C0 06            [24]  631 	push	ar6
      000128 C0 05            [24]  632 	push	ar5
      00012A C0 04            [24]  633 	push	ar4
      00012C 12 00 FA         [24]  634 	lcall	_UartWrite
      00012F D0 04            [24]  635 	pop	ar4
      000131 D0 05            [24]  636 	pop	ar5
      000133 D0 06            [24]  637 	pop	ar6
      000135 D0 07            [24]  638 	pop	ar7
                                    639 ;	uart.h:73: for (i=0;i<length;i++)
      000137 0C               [12]  640 	inc	r4
      000138 80 D1            [24]  641 	sjmp	00103$
      00013A                        642 00105$:
                                    643 ;	uart.h:77: }
      00013A 22               [24]  644 	ret
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'UartReadBuff'
                                    647 ;------------------------------------------------------------
                                    648 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    649 ;p                         Allocated to registers r5 r6 r7 
                                    650 ;i                         Allocated to registers r4 
                                    651 ;------------------------------------------------------------
                                    652 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    653 ;	-----------------------------------------
                                    654 ;	 function UartReadBuff
                                    655 ;	-----------------------------------------
      00013B                        656 _UartReadBuff:
      00013B AD 82            [24]  657 	mov	r5,dpl
      00013D AE 83            [24]  658 	mov	r6,dph
      00013F AF F0            [24]  659 	mov	r7,b
                                    660 ;	uart.h:82: for (i=0;i<length;i++)
      000141 7C 00            [12]  661 	mov	r4,#0x00
      000143                        662 00103$:
      000143 C3               [12]  663 	clr	c
      000144 EC               [12]  664 	mov	a,r4
      000145 95 0A            [12]  665 	subb	a,_UartReadBuff_PARM_2
      000147 50 36            [24]  666 	jnc	00105$
                                    667 ;	uart.h:84: p[i] = UartRead();
      000149 EC               [12]  668 	mov	a,r4
      00014A 2D               [12]  669 	add	a,r5
      00014B F9               [12]  670 	mov	r1,a
      00014C E4               [12]  671 	clr	a
      00014D 3E               [12]  672 	addc	a,r6
      00014E FA               [12]  673 	mov	r2,a
      00014F 8F 03            [24]  674 	mov	ar3,r7
      000151 C0 07            [24]  675 	push	ar7
      000153 C0 06            [24]  676 	push	ar6
      000155 C0 05            [24]  677 	push	ar5
      000157 C0 04            [24]  678 	push	ar4
      000159 C0 03            [24]  679 	push	ar3
      00015B C0 02            [24]  680 	push	ar2
      00015D C0 01            [24]  681 	push	ar1
      00015F 12 00 F1         [24]  682 	lcall	_UartRead
      000162 A8 82            [24]  683 	mov	r0,dpl
      000164 D0 01            [24]  684 	pop	ar1
      000166 D0 02            [24]  685 	pop	ar2
      000168 D0 03            [24]  686 	pop	ar3
      00016A D0 04            [24]  687 	pop	ar4
      00016C D0 05            [24]  688 	pop	ar5
      00016E D0 06            [24]  689 	pop	ar6
      000170 D0 07            [24]  690 	pop	ar7
      000172 89 82            [24]  691 	mov	dpl,r1
      000174 8A 83            [24]  692 	mov	dph,r2
      000176 8B F0            [24]  693 	mov	b,r3
      000178 E8               [12]  694 	mov	a,r0
      000179 12 06 54         [24]  695 	lcall	__gptrput
                                    696 ;	uart.h:82: for (i=0;i<length;i++)
      00017C 0C               [12]  697 	inc	r4
      00017D 80 C4            [24]  698 	sjmp	00103$
      00017F                        699 00105$:
                                    700 ;	uart.h:86: }
      00017F 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'UartPrint'
                                    704 ;------------------------------------------------------------
                                    705 ;p                         Allocated to registers 
                                    706 ;------------------------------------------------------------
                                    707 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    708 ;	-----------------------------------------
                                    709 ;	 function UartPrint
                                    710 ;	-----------------------------------------
      000180                        711 _UartPrint:
      000180 AD 82            [24]  712 	mov	r5,dpl
      000182 AE 83            [24]  713 	mov	r6,dph
      000184 AF F0            [24]  714 	mov	r7,b
                                    715 ;	uart.h:90: do
      000186                        716 00101$:
                                    717 ;	uart.h:92: UartWrite(*p);
      000186 8D 82            [24]  718 	mov	dpl,r5
      000188 8E 83            [24]  719 	mov	dph,r6
      00018A 8F F0            [24]  720 	mov	b,r7
      00018C 12 06 E5         [24]  721 	lcall	__gptrget
      00018F FC               [12]  722 	mov	r4,a
      000190 A3               [24]  723 	inc	dptr
      000191 AD 82            [24]  724 	mov	r5,dpl
      000193 AE 83            [24]  725 	mov	r6,dph
      000195 8C 82            [24]  726 	mov	dpl,r4
      000197 C0 07            [24]  727 	push	ar7
      000199 C0 06            [24]  728 	push	ar6
      00019B C0 05            [24]  729 	push	ar5
      00019D 12 00 FA         [24]  730 	lcall	_UartWrite
      0001A0 D0 05            [24]  731 	pop	ar5
      0001A2 D0 06            [24]  732 	pop	ar6
      0001A4 D0 07            [24]  733 	pop	ar7
                                    734 ;	uart.h:93: }while(*(++p)!=0);
      0001A6 8D 82            [24]  735 	mov	dpl,r5
      0001A8 8E 83            [24]  736 	mov	dph,r6
      0001AA 8F F0            [24]  737 	mov	b,r7
      0001AC 12 06 E5         [24]  738 	lcall	__gptrget
      0001AF 70 D5            [24]  739 	jnz	00101$
                                    740 ;	uart.h:94: }
      0001B1 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'UartWriteNumber'
                                    744 ;------------------------------------------------------------
                                    745 ;format                    Allocated to stack - _bp -3
                                    746 ;num                       Allocated to registers r7 
                                    747 ;msd                       Allocated to registers r4 
                                    748 ;lsd                       Allocated to registers r6 
                                    749 ;extra                     Allocated to registers r3 
                                    750 ;------------------------------------------------------------
                                    751 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    752 ;	-----------------------------------------
                                    753 ;	 function UartWriteNumber
                                    754 ;	-----------------------------------------
      0001B2                        755 _UartWriteNumber:
      0001B2 C0 0C            [24]  756 	push	_bp
      0001B4 85 81 0C         [24]  757 	mov	_bp,sp
      0001B7 AF 82            [24]  758 	mov	r7,dpl
                                    759 ;	uart.h:104: if(format==HEX)
      0001B9 E5 0C            [12]  760 	mov	a,_bp
      0001BB 24 FD            [12]  761 	add	a,#0xfd
      0001BD F8               [12]  762 	mov	r0,a
      0001BE E6               [12]  763 	mov	a,@r0
                                    764 ;	uart.h:106: msd = num/16;
      0001BF 70 32            [24]  765 	jnz	00104$
      0001C1 8F 05            [24]  766 	mov	ar5,r7
      0001C3 FE               [12]  767 	mov	r6,a
      0001C4 75 0D 10         [24]  768 	mov	__divsint_PARM_2,#0x10
                                    769 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001C7 8E 0E            [24]  770 	mov	(__divsint_PARM_2 + 1),r6
      0001C9 8D 82            [24]  771 	mov	dpl,r5
      0001CB 8E 83            [24]  772 	mov	dph,r6
      0001CD C0 06            [24]  773 	push	ar6
      0001CF C0 05            [24]  774 	push	ar5
      0001D1 12 07 37         [24]  775 	lcall	__divsint
      0001D4 AB 82            [24]  776 	mov	r3,dpl
      0001D6 D0 05            [24]  777 	pop	ar5
      0001D8 D0 06            [24]  778 	pop	ar6
                                    779 ;	uart.h:107: lsd = num%16;
      0001DA 53 05 0F         [24]  780 	anl	ar5,#0x0f
                                    781 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001DD 8B 82            [24]  782 	mov	dpl,r3
      0001DF C0 05            [24]  783 	push	ar5
      0001E1 12 00 B9         [24]  784 	lcall	_dec2hexNibble
      0001E4 12 00 FA         [24]  785 	lcall	_UartWrite
      0001E7 D0 05            [24]  786 	pop	ar5
                                    787 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001E9 8D 82            [24]  788 	mov	dpl,r5
      0001EB 12 00 B9         [24]  789 	lcall	_dec2hexNibble
      0001EE 12 00 FA         [24]  790 	lcall	_UartWrite
      0001F1 80 7B            [24]  791 	sjmp	00106$
      0001F3                        792 00104$:
                                    793 ;	uart.h:112: else if(format==DEC)
      0001F3 E5 0C            [12]  794 	mov	a,_bp
      0001F5 24 FD            [12]  795 	add	a,#0xfd
      0001F7 F8               [12]  796 	mov	r0,a
      0001F8 B6 01 73         [24]  797 	cjne	@r0,#0x01,00106$
                                    798 ;	uart.h:114: msd = num/100; // 100s place
      0001FB 7E 00            [12]  799 	mov	r6,#0x00
      0001FD 75 0D 64         [24]  800 	mov	__divsint_PARM_2,#0x64
                                    801 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000200 8E 0E            [24]  802 	mov	(__divsint_PARM_2 + 1),r6
      000202 8F 82            [24]  803 	mov	dpl,r7
      000204 8E 83            [24]  804 	mov	dph,r6
      000206 C0 07            [24]  805 	push	ar7
      000208 C0 06            [24]  806 	push	ar6
      00020A 12 07 37         [24]  807 	lcall	__divsint
      00020D AC 82            [24]  808 	mov	r4,dpl
      00020F D0 06            [24]  809 	pop	ar6
      000211 D0 07            [24]  810 	pop	ar7
                                    811 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000213 75 0D 64         [24]  812 	mov	__modsint_PARM_2,#0x64
      000216 75 0E 00         [24]  813 	mov	(__modsint_PARM_2 + 1),#0x00
      000219 8F 82            [24]  814 	mov	dpl,r7
      00021B 8E 83            [24]  815 	mov	dph,r6
      00021D C0 07            [24]  816 	push	ar7
      00021F C0 06            [24]  817 	push	ar6
      000221 C0 04            [24]  818 	push	ar4
      000223 12 07 01         [24]  819 	lcall	__modsint
      000226 75 0D 0A         [24]  820 	mov	__divsint_PARM_2,#0x0a
      000229 75 0E 00         [24]  821 	mov	(__divsint_PARM_2 + 1),#0x00
      00022C 12 07 37         [24]  822 	lcall	__divsint
      00022F AB 82            [24]  823 	mov	r3,dpl
      000231 D0 04            [24]  824 	pop	ar4
      000233 D0 06            [24]  825 	pop	ar6
      000235 D0 07            [24]  826 	pop	ar7
                                    827 ;	uart.h:116: lsd = num%10;
      000237 75 0D 0A         [24]  828 	mov	__modsint_PARM_2,#0x0a
      00023A 75 0E 00         [24]  829 	mov	(__modsint_PARM_2 + 1),#0x00
      00023D 8F 82            [24]  830 	mov	dpl,r7
      00023F 8E 83            [24]  831 	mov	dph,r6
      000241 C0 04            [24]  832 	push	ar4
      000243 C0 03            [24]  833 	push	ar3
      000245 12 07 01         [24]  834 	lcall	__modsint
      000248 AE 82            [24]  835 	mov	r6,dpl
      00024A D0 03            [24]  836 	pop	ar3
      00024C D0 04            [24]  837 	pop	ar4
                                    838 ;	uart.h:118: UartWrite(msd + 0x30);
      00024E 74 30            [12]  839 	mov	a,#0x30
      000250 2C               [12]  840 	add	a,r4
      000251 F5 82            [12]  841 	mov	dpl,a
      000253 C0 06            [24]  842 	push	ar6
      000255 C0 03            [24]  843 	push	ar3
      000257 12 00 FA         [24]  844 	lcall	_UartWrite
      00025A D0 03            [24]  845 	pop	ar3
                                    846 ;	uart.h:119: UartWrite(extra + 0x30);
      00025C 74 30            [12]  847 	mov	a,#0x30
      00025E 2B               [12]  848 	add	a,r3
      00025F F5 82            [12]  849 	mov	dpl,a
      000261 12 00 FA         [24]  850 	lcall	_UartWrite
      000264 D0 06            [24]  851 	pop	ar6
                                    852 ;	uart.h:120: UartWrite(lsd + 0x30);
      000266 74 30            [12]  853 	mov	a,#0x30
      000268 2E               [12]  854 	add	a,r6
      000269 F5 82            [12]  855 	mov	dpl,a
      00026B 12 00 FA         [24]  856 	lcall	_UartWrite
      00026E                        857 00106$:
                                    858 ;	uart.h:123: }
      00026E D0 0C            [24]  859 	pop	_bp
      000270 22               [24]  860 	ret
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    863 ;------------------------------------------------------------
                                    864 ;length                    Allocated to stack - _bp -3
                                    865 ;format                    Allocated to stack - _bp -4
                                    866 ;delimiter                 Allocated to stack - _bp -5
                                    867 ;p                         Allocated to registers 
                                    868 ;i                         Allocated to registers r4 
                                    869 ;------------------------------------------------------------
                                    870 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    871 ;	-----------------------------------------
                                    872 ;	 function UartWriteNumbers
                                    873 ;	-----------------------------------------
      000271                        874 _UartWriteNumbers:
      000271 C0 0C            [24]  875 	push	_bp
      000273 85 81 0C         [24]  876 	mov	_bp,sp
      000276 AD 82            [24]  877 	mov	r5,dpl
      000278 AE 83            [24]  878 	mov	r6,dph
      00027A AF F0            [24]  879 	mov	r7,b
                                    880 ;	uart.h:129: for(i=0;i<length;i++,p++)
      00027C 7C 00            [12]  881 	mov	r4,#0x00
      00027E                        882 00103$:
      00027E E5 0C            [12]  883 	mov	a,_bp
      000280 24 FD            [12]  884 	add	a,#0xfd
      000282 F8               [12]  885 	mov	r0,a
      000283 C3               [12]  886 	clr	c
      000284 EC               [12]  887 	mov	a,r4
      000285 96               [12]  888 	subb	a,@r0
      000286 50 3B            [24]  889 	jnc	00105$
                                    890 ;	uart.h:131: UartWriteNumber(*p,format);
      000288 8D 82            [24]  891 	mov	dpl,r5
      00028A 8E 83            [24]  892 	mov	dph,r6
      00028C 8F F0            [24]  893 	mov	b,r7
      00028E 12 06 E5         [24]  894 	lcall	__gptrget
      000291 FB               [12]  895 	mov	r3,a
      000292 A3               [24]  896 	inc	dptr
      000293 AD 82            [24]  897 	mov	r5,dpl
      000295 AE 83            [24]  898 	mov	r6,dph
      000297 C0 07            [24]  899 	push	ar7
      000299 C0 06            [24]  900 	push	ar6
      00029B C0 05            [24]  901 	push	ar5
      00029D C0 04            [24]  902 	push	ar4
      00029F E5 0C            [12]  903 	mov	a,_bp
      0002A1 24 FC            [12]  904 	add	a,#0xfc
      0002A3 F8               [12]  905 	mov	r0,a
      0002A4 E6               [12]  906 	mov	a,@r0
      0002A5 C0 E0            [24]  907 	push	acc
      0002A7 8B 82            [24]  908 	mov	dpl,r3
      0002A9 12 01 B2         [24]  909 	lcall	_UartWriteNumber
      0002AC 15 81            [12]  910 	dec	sp
                                    911 ;	uart.h:132: UartWrite(delimiter);
      0002AE E5 0C            [12]  912 	mov	a,_bp
      0002B0 24 FB            [12]  913 	add	a,#0xfb
      0002B2 F8               [12]  914 	mov	r0,a
      0002B3 86 82            [24]  915 	mov	dpl,@r0
      0002B5 12 00 FA         [24]  916 	lcall	_UartWrite
      0002B8 D0 04            [24]  917 	pop	ar4
      0002BA D0 05            [24]  918 	pop	ar5
      0002BC D0 06            [24]  919 	pop	ar6
      0002BE D0 07            [24]  920 	pop	ar7
                                    921 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002C0 0C               [12]  922 	inc	r4
      0002C1 80 BB            [24]  923 	sjmp	00103$
      0002C3                        924 00105$:
                                    925 ;	uart.h:134: }
      0002C3 D0 0C            [24]  926 	pop	_bp
      0002C5 22               [24]  927 	ret
                                    928 ;------------------------------------------------------------
                                    929 ;Allocation info for local variables in function 'UartPrintNumber'
                                    930 ;------------------------------------------------------------
                                    931 ;n                         Allocated to stack - _bp +1
                                    932 ;digit                     Allocated to registers r2 r5 r6 r7 
                                    933 ;i                         Allocated to registers r3 
                                    934 ;j                         Allocated to registers r4 
                                    935 ;sloc0                     Allocated to stack - _bp +5
                                    936 ;------------------------------------------------------------
                                    937 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                    938 ;	-----------------------------------------
                                    939 ;	 function UartPrintNumber
                                    940 ;	-----------------------------------------
      0002C6                        941 _UartPrintNumber:
      0002C6 C0 0C            [24]  942 	push	_bp
      0002C8 85 81 0C         [24]  943 	mov	_bp,sp
      0002CB C0 82            [24]  944 	push	dpl
      0002CD C0 83            [24]  945 	push	dph
      0002CF C0 F0            [24]  946 	push	b
      0002D1 C0 E0            [24]  947 	push	acc
      0002D3 E5 81            [12]  948 	mov	a,sp
      0002D5 24 04            [12]  949 	add	a,#0x04
      0002D7 F5 81            [12]  950 	mov	sp,a
                                    951 ;	uart.h:154: for(i=8;i>0;i--)
      0002D9 7B 08            [12]  952 	mov	r3,#0x08
      0002DB                        953 00106$:
                                    954 ;	uart.h:156: digit=n;
      0002DB A8 0C            [24]  955 	mov	r0,_bp
      0002DD 08               [12]  956 	inc	r0
      0002DE 86 02            [24]  957 	mov	ar2,@r0
      0002E0 08               [12]  958 	inc	r0
      0002E1 86 05            [24]  959 	mov	ar5,@r0
      0002E3 08               [12]  960 	inc	r0
      0002E4 86 06            [24]  961 	mov	ar6,@r0
      0002E6 08               [12]  962 	inc	r0
      0002E7 86 07            [24]  963 	mov	ar7,@r0
                                    964 ;	uart.h:157: for(j=1;j<i;j++) digit/=10;
      0002E9 7C 01            [12]  965 	mov	r4,#0x01
      0002EB                        966 00104$:
      0002EB C3               [12]  967 	clr	c
      0002EC EC               [12]  968 	mov	a,r4
      0002ED 9B               [12]  969 	subb	a,r3
      0002EE 50 43            [24]  970 	jnc	00101$
      0002F0 C0 03            [24]  971 	push	ar3
      0002F2 75 0D 0A         [24]  972 	mov	__divulong_PARM_2,#0x0a
      0002F5 E4               [12]  973 	clr	a
      0002F6 F5 0E            [12]  974 	mov	(__divulong_PARM_2 + 1),a
      0002F8 F5 0F            [12]  975 	mov	(__divulong_PARM_2 + 2),a
      0002FA F5 10            [12]  976 	mov	(__divulong_PARM_2 + 3),a
      0002FC 8A 82            [24]  977 	mov	dpl,r2
      0002FE 8D 83            [24]  978 	mov	dph,r5
      000300 8E F0            [24]  979 	mov	b,r6
      000302 EF               [12]  980 	mov	a,r7
      000303 C0 04            [24]  981 	push	ar4
      000305 C0 03            [24]  982 	push	ar3
      000307 12 05 EF         [24]  983 	lcall	__divulong
      00030A C8               [12]  984 	xch	a,r0
      00030B E5 0C            [12]  985 	mov	a,_bp
      00030D 24 05            [12]  986 	add	a,#0x05
      00030F C8               [12]  987 	xch	a,r0
      000310 A6 82            [24]  988 	mov	@r0,dpl
      000312 08               [12]  989 	inc	r0
      000313 A6 83            [24]  990 	mov	@r0,dph
      000315 08               [12]  991 	inc	r0
      000316 A6 F0            [24]  992 	mov	@r0,b
      000318 08               [12]  993 	inc	r0
      000319 F6               [12]  994 	mov	@r0,a
      00031A D0 03            [24]  995 	pop	ar3
      00031C D0 04            [24]  996 	pop	ar4
      00031E E5 0C            [12]  997 	mov	a,_bp
      000320 24 05            [12]  998 	add	a,#0x05
      000322 F8               [12]  999 	mov	r0,a
      000323 86 02            [24] 1000 	mov	ar2,@r0
      000325 08               [12] 1001 	inc	r0
      000326 86 05            [24] 1002 	mov	ar5,@r0
      000328 08               [12] 1003 	inc	r0
      000329 86 06            [24] 1004 	mov	ar6,@r0
      00032B 08               [12] 1005 	inc	r0
      00032C 86 07            [24] 1006 	mov	ar7,@r0
      00032E 0C               [12] 1007 	inc	r4
      00032F D0 03            [24] 1008 	pop	ar3
      000331 80 B8            [24] 1009 	sjmp	00104$
      000333                       1010 00101$:
                                   1011 ;	uart.h:158: UartWrite(0x30 + digit%10);
      000333 75 0D 0A         [24] 1012 	mov	__modulong_PARM_2,#0x0a
      000336 E4               [12] 1013 	clr	a
      000337 F5 0E            [12] 1014 	mov	(__modulong_PARM_2 + 1),a
      000339 F5 0F            [12] 1015 	mov	(__modulong_PARM_2 + 2),a
      00033B F5 10            [12] 1016 	mov	(__modulong_PARM_2 + 3),a
      00033D 8A 82            [24] 1017 	mov	dpl,r2
      00033F 8D 83            [24] 1018 	mov	dph,r5
      000341 8E F0            [24] 1019 	mov	b,r6
      000343 EF               [12] 1020 	mov	a,r7
      000344 C0 03            [24] 1021 	push	ar3
      000346 12 05 6C         [24] 1022 	lcall	__modulong
      000349 AC 82            [24] 1023 	mov	r4,dpl
      00034B 74 30            [12] 1024 	mov	a,#0x30
      00034D 2C               [12] 1025 	add	a,r4
      00034E F5 82            [12] 1026 	mov	dpl,a
      000350 12 00 FA         [24] 1027 	lcall	_UartWrite
      000353 D0 03            [24] 1028 	pop	ar3
                                   1029 ;	uart.h:154: for(i=8;i>0;i--)
      000355 DB 84            [24] 1030 	djnz	r3,00106$
                                   1031 ;	uart.h:160: }
      000357 85 0C 81         [24] 1032 	mov	sp,_bp
      00035A D0 0C            [24] 1033 	pop	_bp
      00035C 22               [24] 1034 	ret
                                   1035 ;------------------------------------------------------------
                                   1036 ;Allocation info for local variables in function 'UartScanByte'
                                   1037 ;------------------------------------------------------------
                                   1038 ;unibble                   Allocated to registers r7 
                                   1039 ;lnibble                   Allocated to registers r6 
                                   1040 ;------------------------------------------------------------
                                   1041 ;	uart.h:163: uint8_t UartScanByte() __reentrant
                                   1042 ;	-----------------------------------------
                                   1043 ;	 function UartScanByte
                                   1044 ;	-----------------------------------------
      00035D                       1045 _UartScanByte:
                                   1046 ;	uart.h:167: while(UartReadReady()) UartRead(); //flush
      00035D                       1047 00101$:
      00035D 12 00 E6         [24] 1048 	lcall	_UartReadReady
      000360 E5 82            [12] 1049 	mov	a,dpl
      000362 60 05            [24] 1050 	jz	00103$
      000364 12 00 F1         [24] 1051 	lcall	_UartRead
      000367 80 F4            [24] 1052 	sjmp	00101$
      000369                       1053 00103$:
                                   1054 ;	uart.h:168: UartPrint("Number in Hex - eg(FE for 254): ");
      000369 90 07 73         [24] 1055 	mov	dptr,#___str_0
      00036C 75 F0 80         [24] 1056 	mov	b,#0x80
      00036F 12 01 80         [24] 1057 	lcall	_UartPrint
                                   1058 ;	uart.h:170: unibble = UartRead();
      000372 12 00 F1         [24] 1059 	lcall	_UartRead
                                   1060 ;	uart.h:171: UartWrite(unibble);
      000375 AF 82            [24] 1061 	mov  r7,dpl
      000377 C0 07            [24] 1062 	push	ar7
      000379 12 00 FA         [24] 1063 	lcall	_UartWrite
                                   1064 ;	uart.h:172: lnibble = UartRead();
      00037C 12 00 F1         [24] 1065 	lcall	_UartRead
                                   1066 ;	uart.h:173: UartWrite(lnibble);
      00037F AE 82            [24] 1067 	mov  r6,dpl
      000381 C0 06            [24] 1068 	push	ar6
      000383 12 00 FA         [24] 1069 	lcall	_UartWrite
                                   1070 ;	uart.h:175: UartWrite('\n');
      000386 75 82 0A         [24] 1071 	mov	dpl,#0x0a
      000389 12 00 FA         [24] 1072 	lcall	_UartWrite
      00038C D0 06            [24] 1073 	pop	ar6
      00038E D0 07            [24] 1074 	pop	ar7
                                   1075 ;	uart.h:177: return hex2dec(unibble,lnibble);
      000390 8E 08            [24] 1076 	mov	_hex2dec_PARM_2,r6
      000392 8F 82            [24] 1077 	mov	dpl,r7
                                   1078 ;	uart.h:178: }
      000394 02 00 9F         [24] 1079 	ljmp	_hex2dec
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'UartScanLine'
                                   1082 ;------------------------------------------------------------
                                   1083 ;maxLength                 Allocated to stack - _bp -3
                                   1084 ;dst                       Allocated to stack - _bp +1
                                   1085 ;recv                      Allocated to registers r2 
                                   1086 ;count                     Allocated to registers r4 
                                   1087 ;------------------------------------------------------------
                                   1088 ;	uart.h:180: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function UartScanLine
                                   1091 ;	-----------------------------------------
      000397                       1092 _UartScanLine:
      000397 C0 0C            [24] 1093 	push	_bp
      000399 85 81 0C         [24] 1094 	mov	_bp,sp
      00039C C0 82            [24] 1095 	push	dpl
      00039E C0 83            [24] 1096 	push	dph
      0003A0 C0 F0            [24] 1097 	push	b
                                   1098 ;	uart.h:182: uint8_t recv,count=0;
      0003A2 7C 00            [12] 1099 	mov	r4,#0x00
                                   1100 ;	uart.h:184: while(UartReadReady()) UartRead(); //flush
      0003A4                       1101 00101$:
      0003A4 C0 04            [24] 1102 	push	ar4
      0003A6 12 00 E6         [24] 1103 	lcall	_UartReadReady
      0003A9 E5 82            [12] 1104 	mov	a,dpl
      0003AB D0 04            [24] 1105 	pop	ar4
      0003AD 60 09            [24] 1106 	jz	00118$
      0003AF C0 04            [24] 1107 	push	ar4
      0003B1 12 00 F1         [24] 1108 	lcall	_UartRead
      0003B4 D0 04            [24] 1109 	pop	ar4
                                   1110 ;	uart.h:186: while(1)
      0003B6 80 EC            [24] 1111 	sjmp	00101$
      0003B8                       1112 00118$:
      0003B8 7B 00            [12] 1113 	mov	r3,#0x00
      0003BA                       1114 00110$:
                                   1115 ;	uart.h:189: recv=UartRead();
      0003BA C0 04            [24] 1116 	push	ar4
      0003BC C0 03            [24] 1117 	push	ar3
      0003BE 12 00 F1         [24] 1118 	lcall	_UartRead
                                   1119 ;	uart.h:190: UartWrite(recv);
      0003C1 AA 82            [24] 1120 	mov  r2,dpl
      0003C3 C0 02            [24] 1121 	push	ar2
      0003C5 12 00 FA         [24] 1122 	lcall	_UartWrite
      0003C8 D0 02            [24] 1123 	pop	ar2
      0003CA D0 03            [24] 1124 	pop	ar3
      0003CC D0 04            [24] 1125 	pop	ar4
                                   1126 ;	uart.h:191: if(recv == '\n') 
      0003CE BA 0A 19         [24] 1127 	cjne	r2,#0x0a,00105$
                                   1128 ;	uart.h:193: *(dst+count)=0; //add string terminate
      0003D1 A8 0C            [24] 1129 	mov	r0,_bp
      0003D3 08               [12] 1130 	inc	r0
      0003D4 EC               [12] 1131 	mov	a,r4
      0003D5 26               [12] 1132 	add	a,@r0
      0003D6 FD               [12] 1133 	mov	r5,a
      0003D7 E4               [12] 1134 	clr	a
      0003D8 08               [12] 1135 	inc	r0
      0003D9 36               [12] 1136 	addc	a,@r0
      0003DA FE               [12] 1137 	mov	r6,a
      0003DB 08               [12] 1138 	inc	r0
      0003DC 86 07            [24] 1139 	mov	ar7,@r0
      0003DE 8D 82            [24] 1140 	mov	dpl,r5
      0003E0 8E 83            [24] 1141 	mov	dph,r6
      0003E2 8F F0            [24] 1142 	mov	b,r7
      0003E4 E4               [12] 1143 	clr	a
      0003E5 12 06 54         [24] 1144 	lcall	__gptrput
                                   1145 ;	uart.h:194: break;
      0003E8 80 31            [24] 1146 	sjmp	00111$
      0003EA                       1147 00105$:
                                   1148 ;	uart.h:196: else *(dst+count)=recv;
      0003EA A8 0C            [24] 1149 	mov	r0,_bp
      0003EC 08               [12] 1150 	inc	r0
      0003ED EB               [12] 1151 	mov	a,r3
      0003EE 26               [12] 1152 	add	a,@r0
      0003EF FD               [12] 1153 	mov	r5,a
      0003F0 E4               [12] 1154 	clr	a
      0003F1 08               [12] 1155 	inc	r0
      0003F2 36               [12] 1156 	addc	a,@r0
      0003F3 FE               [12] 1157 	mov	r6,a
      0003F4 08               [12] 1158 	inc	r0
      0003F5 86 07            [24] 1159 	mov	ar7,@r0
      0003F7 8D 82            [24] 1160 	mov	dpl,r5
      0003F9 8E 83            [24] 1161 	mov	dph,r6
      0003FB 8F F0            [24] 1162 	mov	b,r7
      0003FD EA               [12] 1163 	mov	a,r2
      0003FE 12 06 54         [24] 1164 	lcall	__gptrput
                                   1165 ;	uart.h:198: if(count==maxLength) 
      000401 E5 0C            [12] 1166 	mov	a,_bp
      000403 24 FD            [12] 1167 	add	a,#0xfd
      000405 F8               [12] 1168 	mov	r0,a
      000406 E6               [12] 1169 	mov	a,@r0
      000407 B5 03 0C         [24] 1170 	cjne	a,ar3,00108$
                                   1171 ;	uart.h:200: *(dst+count)=0; // terminate string.
      00040A 8D 82            [24] 1172 	mov	dpl,r5
      00040C 8E 83            [24] 1173 	mov	dph,r6
      00040E 8F F0            [24] 1174 	mov	b,r7
      000410 E4               [12] 1175 	clr	a
      000411 12 06 54         [24] 1176 	lcall	__gptrput
                                   1177 ;	uart.h:201: break;
      000414 80 05            [24] 1178 	sjmp	00111$
      000416                       1179 00108$:
                                   1180 ;	uart.h:204: count++;
      000416 0B               [12] 1181 	inc	r3
      000417 8B 04            [24] 1182 	mov	ar4,r3
      000419 80 9F            [24] 1183 	sjmp	00110$
      00041B                       1184 00111$:
                                   1185 ;	uart.h:208: return count;
      00041B 8C 82            [24] 1186 	mov	dpl,r4
                                   1187 ;	uart.h:210: }
      00041D 85 0C 81         [24] 1188 	mov	sp,_bp
      000420 D0 0C            [24] 1189 	pop	_bp
      000422 22               [24] 1190 	ret
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'delay_ms'
                                   1193 ;------------------------------------------------------------
                                   1194 ;millisec                  Allocated to registers r6 r7 
                                   1195 ;i                         Allocated to registers r4 r5 
                                   1196 ;j                         Allocated to registers r3 
                                   1197 ;------------------------------------------------------------
                                   1198 ;	serialloader.h:16: void delay_ms(unsigned int millisec)
                                   1199 ;	-----------------------------------------
                                   1200 ;	 function delay_ms
                                   1201 ;	-----------------------------------------
      000423                       1202 _delay_ms:
      000423 AE 82            [24] 1203 	mov	r6,dpl
      000425 AF 83            [24] 1204 	mov	r7,dph
                                   1205 ;	serialloader.h:18: for(unsigned int i=0;i<millisec;i++)for(unsigned char j=0;j<255;j++); //wait millisec * 1ms
      000427 7C 00            [12] 1206 	mov	r4,#0x00
      000429 7D 00            [12] 1207 	mov	r5,#0x00
      00042B                       1208 00107$:
      00042B C3               [12] 1209 	clr	c
      00042C EC               [12] 1210 	mov	a,r4
      00042D 9E               [12] 1211 	subb	a,r6
      00042E ED               [12] 1212 	mov	a,r5
      00042F 9F               [12] 1213 	subb	a,r7
      000430 50 11            [24] 1214 	jnc	00109$
      000432 7B 00            [12] 1215 	mov	r3,#0x00
      000434                       1216 00104$:
      000434 BB FF 00         [24] 1217 	cjne	r3,#0xff,00130$
      000437                       1218 00130$:
      000437 50 03            [24] 1219 	jnc	00108$
      000439 0B               [12] 1220 	inc	r3
      00043A 80 F8            [24] 1221 	sjmp	00104$
      00043C                       1222 00108$:
      00043C 0C               [12] 1223 	inc	r4
      00043D BC 00 EB         [24] 1224 	cjne	r4,#0x00,00107$
      000440 0D               [12] 1225 	inc	r5
      000441 80 E8            [24] 1226 	sjmp	00107$
      000443                       1227 00109$:
                                   1228 ;	serialloader.h:19: }
      000443 22               [24] 1229 	ret
                                   1230 ;------------------------------------------------------------
                                   1231 ;Allocation info for local variables in function 'SL_disable_write_protection'
                                   1232 ;------------------------------------------------------------
                                   1233 ;xram_addr                 Allocated to registers 
                                   1234 ;------------------------------------------------------------
                                   1235 ;	serialloader.h:21: void SL_disable_write_protection()
                                   1236 ;	-----------------------------------------
                                   1237 ;	 function SL_disable_write_protection
                                   1238 ;	-----------------------------------------
      000444                       1239 _SL_disable_write_protection:
                                   1240 ;	serialloader.h:26: *(xram_addr) = 0xAA;
      000444 90 15 55         [24] 1241 	mov	dptr,#0x1555
      000447 74 AA            [12] 1242 	mov	a,#0xaa
      000449 F0               [24] 1243 	movx	@dptr,a
                                   1244 ;	serialloader.h:28: *(xram_addr) = 0x55;
      00044A 90 0A AA         [24] 1245 	mov	dptr,#0x0aaa
      00044D F4               [12] 1246 	cpl	a
      00044E F0               [24] 1247 	movx	@dptr,a
                                   1248 ;	serialloader.h:30: *(xram_addr) = 0x80;
                                   1249 ;	serialloader.h:34: *(xram_addr) = 0xAA;
      00044F 90 15 55         [24] 1250 	mov	dptr,#0x1555
      000452 74 80            [12] 1251 	mov	a,#0x80
      000454 F0               [24] 1252 	movx	@dptr,a
      000455 74 AA            [12] 1253 	mov	a,#0xaa
      000457 F0               [24] 1254 	movx	@dptr,a
                                   1255 ;	serialloader.h:36: *(xram_addr) = 0x55;
      000458 90 0A AA         [24] 1256 	mov	dptr,#0x0aaa
      00045B F4               [12] 1257 	cpl	a
      00045C F0               [24] 1258 	movx	@dptr,a
                                   1259 ;	serialloader.h:38: *(xram_addr) = 0x20;
      00045D 90 15 55         [24] 1260 	mov	dptr,#0x1555
      000460 74 20            [12] 1261 	mov	a,#0x20
      000462 F0               [24] 1262 	movx	@dptr,a
                                   1263 ;	serialloader.h:40: UartWrite('D'); //ack
      000463 75 82 44         [24] 1264 	mov	dpl,#0x44
      000466 12 00 FA         [24] 1265 	lcall	_UartWrite
                                   1266 ;	serialloader.h:42: EEPROM_WRITE_PROTECTION=0; //change flag
      000469 75 0B 00         [24] 1267 	mov	_EEPROM_WRITE_PROTECTION,#0x00
                                   1268 ;	serialloader.h:43: }
      00046C 22               [24] 1269 	ret
                                   1270 ;------------------------------------------------------------
                                   1271 ;Allocation info for local variables in function 'SL_enable_write_protection'
                                   1272 ;------------------------------------------------------------
                                   1273 ;	serialloader.h:45: void SL_enable_write_protection()
                                   1274 ;	-----------------------------------------
                                   1275 ;	 function SL_enable_write_protection
                                   1276 ;	-----------------------------------------
      00046D                       1277 _SL_enable_write_protection:
                                   1278 ;	serialloader.h:47: EEPROM_WRITE_PROTECTION=1; //change flag
      00046D 75 0B 01         [24] 1279 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                   1280 ;	serialloader.h:48: UartWrite('E'); 
      000470 75 82 45         [24] 1281 	mov	dpl,#0x45
                                   1282 ;	serialloader.h:49: }
      000473 02 00 FA         [24] 1283 	ljmp	_UartWrite
                                   1284 ;------------------------------------------------------------
                                   1285 ;Allocation info for local variables in function 'SL_write'
                                   1286 ;------------------------------------------------------------
                                   1287 ;data                      Allocated to registers r5 
                                   1288 ;addr                      Allocated to registers r7 r6 
                                   1289 ;xram_addr                 Allocated to registers 
                                   1290 ;------------------------------------------------------------
                                   1291 ;	serialloader.h:51: void SL_write()
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function SL_write
                                   1294 ;	-----------------------------------------
      000476                       1295 _SL_write:
                                   1296 ;	serialloader.h:57: while(UartReadReady()==0); //wait till we rcv data
      000476                       1297 00101$:
      000476 12 00 E6         [24] 1298 	lcall	_UartReadReady
      000479 E5 82            [12] 1299 	mov	a,dpl
      00047B 60 F9            [24] 1300 	jz	00101$
                                   1301 ;	serialloader.h:60: addr = UartRead(); //msb
      00047D 12 00 F1         [24] 1302 	lcall	_UartRead
                                   1303 ;	serialloader.h:61: addr = addr << 8;
      000480 AE 82            [24] 1304 	mov	r6,dpl
      000482 7F 00            [12] 1305 	mov	r7,#0x00
                                   1306 ;	serialloader.h:62: addr |= UartRead(); //lsb
      000484 C0 07            [24] 1307 	push	ar7
      000486 C0 06            [24] 1308 	push	ar6
      000488 12 00 F1         [24] 1309 	lcall	_UartRead
      00048B AD 82            [24] 1310 	mov	r5,dpl
      00048D D0 06            [24] 1311 	pop	ar6
      00048F D0 07            [24] 1312 	pop	ar7
      000491 7C 00            [12] 1313 	mov	r4,#0x00
      000493 ED               [12] 1314 	mov	a,r5
      000494 42 07            [12] 1315 	orl	ar7,a
      000496 EC               [12] 1316 	mov	a,r4
      000497 42 06            [12] 1317 	orl	ar6,a
                                   1318 ;	serialloader.h:64: data = UartRead(); //read data
      000499 C0 07            [24] 1319 	push	ar7
      00049B C0 06            [24] 1320 	push	ar6
      00049D 12 00 F1         [24] 1321 	lcall	_UartRead
      0004A0 AD 82            [24] 1322 	mov	r5,dpl
      0004A2 D0 06            [24] 1323 	pop	ar6
      0004A4 D0 07            [24] 1324 	pop	ar7
                                   1325 ;	serialloader.h:66: if(EEPROM_WRITE_PROTECTION)
      0004A6 E5 0B            [12] 1326 	mov	a,_EEPROM_WRITE_PROTECTION
      0004A8 60 11            [24] 1327 	jz	00105$
                                   1328 ;	serialloader.h:70: *(xram_addr) = 0xAA;
      0004AA 90 15 55         [24] 1329 	mov	dptr,#0x1555
      0004AD 74 AA            [12] 1330 	mov	a,#0xaa
      0004AF F0               [24] 1331 	movx	@dptr,a
                                   1332 ;	serialloader.h:72: *(xram_addr) = 0x55;
      0004B0 90 0A AA         [24] 1333 	mov	dptr,#0x0aaa
      0004B3 F4               [12] 1334 	cpl	a
      0004B4 F0               [24] 1335 	movx	@dptr,a
                                   1336 ;	serialloader.h:74: *(xram_addr) = 0xA0;
      0004B5 90 15 55         [24] 1337 	mov	dptr,#0x1555
      0004B8 74 A0            [12] 1338 	mov	a,#0xa0
      0004BA F0               [24] 1339 	movx	@dptr,a
      0004BB                       1340 00105$:
                                   1341 ;	serialloader.h:77: xram_addr = (__xdata char*) addr;
      0004BB 8F 82            [24] 1342 	mov	dpl,r7
      0004BD 8E 83            [24] 1343 	mov	dph,r6
                                   1344 ;	serialloader.h:79: *(xram_addr) = data; //write to xram
      0004BF ED               [12] 1345 	mov	a,r5
      0004C0 F0               [24] 1346 	movx	@dptr,a
                                   1347 ;	serialloader.h:81: UartWrite('W'); //ack
      0004C1 75 82 57         [24] 1348 	mov	dpl,#0x57
                                   1349 ;	serialloader.h:83: }
      0004C4 02 00 FA         [24] 1350 	ljmp	_UartWrite
                                   1351 ;------------------------------------------------------------
                                   1352 ;Allocation info for local variables in function 'SL_read'
                                   1353 ;------------------------------------------------------------
                                   1354 ;data                      Allocated to registers r7 
                                   1355 ;addr                      Allocated to registers r7 r6 
                                   1356 ;xram_addr                 Allocated to registers 
                                   1357 ;------------------------------------------------------------
                                   1358 ;	serialloader.h:85: void SL_read()
                                   1359 ;	-----------------------------------------
                                   1360 ;	 function SL_read
                                   1361 ;	-----------------------------------------
      0004C7                       1362 _SL_read:
                                   1363 ;	serialloader.h:91: while(UartReadReady()==0); //wait till we rcv data
      0004C7                       1364 00101$:
      0004C7 12 00 E6         [24] 1365 	lcall	_UartReadReady
      0004CA E5 82            [12] 1366 	mov	a,dpl
      0004CC 60 F9            [24] 1367 	jz	00101$
                                   1368 ;	serialloader.h:95: addr = UartRead(); //msb
      0004CE 12 00 F1         [24] 1369 	lcall	_UartRead
                                   1370 ;	serialloader.h:96: addr = addr << 8;
      0004D1 AE 82            [24] 1371 	mov	r6,dpl
      0004D3 7F 00            [12] 1372 	mov	r7,#0x00
                                   1373 ;	serialloader.h:97: addr |= UartRead(); //lsb
      0004D5 C0 07            [24] 1374 	push	ar7
      0004D7 C0 06            [24] 1375 	push	ar6
      0004D9 12 00 F1         [24] 1376 	lcall	_UartRead
      0004DC AD 82            [24] 1377 	mov	r5,dpl
      0004DE D0 06            [24] 1378 	pop	ar6
      0004E0 D0 07            [24] 1379 	pop	ar7
      0004E2 7C 00            [12] 1380 	mov	r4,#0x00
      0004E4 ED               [12] 1381 	mov	a,r5
      0004E5 42 07            [12] 1382 	orl	ar7,a
      0004E7 EC               [12] 1383 	mov	a,r4
      0004E8 42 06            [12] 1384 	orl	ar6,a
                                   1385 ;	serialloader.h:99: xram_addr = (__xdata char*) addr;
      0004EA 8F 82            [24] 1386 	mov	dpl,r7
      0004EC 8E 83            [24] 1387 	mov	dph,r6
                                   1388 ;	serialloader.h:101: data = *(xram_addr); //read from xram
      0004EE E0               [24] 1389 	movx	a,@dptr
                                   1390 ;	serialloader.h:103: UartWrite(data);
      0004EF F5 82            [12] 1391 	mov	dpl,a
                                   1392 ;	serialloader.h:105: }
      0004F1 02 00 FA         [24] 1393 	ljmp	_UartWrite
                                   1394 ;------------------------------------------------------------
                                   1395 ;Allocation info for local variables in function 'SL_getcmd'
                                   1396 ;------------------------------------------------------------
                                   1397 ;cmd                       Allocated to registers r7 
                                   1398 ;------------------------------------------------------------
                                   1399 ;	serialloader.h:107: void SL_getcmd()
                                   1400 ;	-----------------------------------------
                                   1401 ;	 function SL_getcmd
                                   1402 ;	-----------------------------------------
      0004F4                       1403 _SL_getcmd:
                                   1404 ;	serialloader.h:110: while(UartReadReady()) UartRead(); //flush 
      0004F4                       1405 00101$:
      0004F4 12 00 E6         [24] 1406 	lcall	_UartReadReady
      0004F7 E5 82            [12] 1407 	mov	a,dpl
      0004F9 60 05            [24] 1408 	jz	00104$
      0004FB 12 00 F1         [24] 1409 	lcall	_UartRead
                                   1410 ;	serialloader.h:112: while(UartReadReady()==0); //wait till we rcv data 
      0004FE 80 F4            [24] 1411 	sjmp	00101$
      000500                       1412 00104$:
      000500 12 00 E6         [24] 1413 	lcall	_UartReadReady
      000503 E5 82            [12] 1414 	mov	a,dpl
      000505 60 F9            [24] 1415 	jz	00104$
                                   1416 ;	serialloader.h:115: cmd = UartRead(); //read
      000507 12 00 F1         [24] 1417 	lcall	_UartRead
      00050A AF 82            [24] 1418 	mov	r7,dpl
                                   1419 ;	serialloader.h:117: switch(cmd)
      00050C BF 44 02         [24] 1420 	cjne	r7,#0x44,00154$
      00050F 80 23            [24] 1421 	sjmp	00110$
      000511                       1422 00154$:
      000511 BF 45 02         [24] 1423 	cjne	r7,#0x45,00155$
      000514 80 21            [24] 1424 	sjmp	00111$
      000516                       1425 00155$:
      000516 BF 52 02         [24] 1426 	cjne	r7,#0x52,00156$
      000519 80 13            [24] 1427 	sjmp	00108$
      00051B                       1428 00156$:
      00051B BF 56 02         [24] 1429 	cjne	r7,#0x56,00157$
      00051E 80 05            [24] 1430 	sjmp	00107$
      000520                       1431 00157$:
                                   1432 ;	serialloader.h:119: case 'V':
      000520 BF 57 17         [24] 1433 	cjne	r7,#0x57,00114$
      000523 80 0C            [24] 1434 	sjmp	00109$
      000525                       1435 00107$:
                                   1436 ;	serialloader.h:120: UartPrint("ISA_SERIAL_LOADER_V0.1:8052\n");
      000525 90 07 94         [24] 1437 	mov	dptr,#___str_1
      000528 75 F0 80         [24] 1438 	mov	b,#0x80
                                   1439 ;	serialloader.h:121: break;
                                   1440 ;	serialloader.h:122: case 'R':
      00052B 02 01 80         [24] 1441 	ljmp	_UartPrint
      00052E                       1442 00108$:
                                   1443 ;	serialloader.h:123: SL_read();
                                   1444 ;	serialloader.h:124: break;
                                   1445 ;	serialloader.h:125: case 'W':
      00052E 02 04 C7         [24] 1446 	ljmp	_SL_read
      000531                       1447 00109$:
                                   1448 ;	serialloader.h:126: SL_write();
                                   1449 ;	serialloader.h:127: break;
                                   1450 ;	serialloader.h:128: case 'D':
      000531 02 04 76         [24] 1451 	ljmp	_SL_write
      000534                       1452 00110$:
                                   1453 ;	serialloader.h:129: SL_disable_write_protection();
                                   1454 ;	serialloader.h:130: break;
                                   1455 ;	serialloader.h:131: case 'E':
      000534 02 04 44         [24] 1456 	ljmp	_SL_disable_write_protection
      000537                       1457 00111$:
                                   1458 ;	serialloader.h:132: SL_enable_write_protection();
                                   1459 ;	serialloader.h:136: }
                                   1460 ;	serialloader.h:137: }
      000537 02 04 6D         [24] 1461 	ljmp	_SL_enable_write_protection
      00053A                       1462 00114$:
      00053A 22               [24] 1463 	ret
                                   1464 ;------------------------------------------------------------
                                   1465 ;Allocation info for local variables in function 'main'
                                   1466 ;------------------------------------------------------------
                                   1467 ;x                         Allocated to registers 
                                   1468 ;------------------------------------------------------------
                                   1469 ;	main.c:15: void main(void)
                                   1470 ;	-----------------------------------------
                                   1471 ;	 function main
                                   1472 ;	-----------------------------------------
      00053B                       1473 _main:
                                   1474 ;	main.c:19: UartBegin();
      00053B 12 00 D7         [24] 1475 	lcall	_UartBegin
                                   1476 ;	main.c:21: while(1)
      00053E                       1477 00102$:
                                   1478 ;	main.c:32: SL_getcmd();
      00053E 12 04 F4         [24] 1479 	lcall	_SL_getcmd
                                   1480 ;	main.c:37: }
      000541 80 FB            [24] 1481 	sjmp	00102$
                                   1482 ;------------------------------------------------------------
                                   1483 ;Allocation info for local variables in function 'delay'
                                   1484 ;------------------------------------------------------------
                                   1485 ;i                         Allocated to registers r6 r7 
                                   1486 ;j                         Allocated to registers r4 r5 
                                   1487 ;------------------------------------------------------------
                                   1488 ;	main.c:39: void delay(void)
                                   1489 ;	-----------------------------------------
                                   1490 ;	 function delay
                                   1491 ;	-----------------------------------------
      000543                       1492 _delay:
                                   1493 ;	main.c:42: for(i=0;i<0xff;i++)
      000543 7E 00            [12] 1494 	mov	r6,#0x00
      000545 7F 00            [12] 1495 	mov	r7,#0x00
      000547                       1496 00106$:
                                   1497 ;	main.c:43: for(j=0;j<0xff;j++);
      000547 7C FF            [12] 1498 	mov	r4,#0xff
      000549 7D 00            [12] 1499 	mov	r5,#0x00
      00054B                       1500 00105$:
      00054B EC               [12] 1501 	mov	a,r4
      00054C 24 FF            [12] 1502 	add	a,#0xff
      00054E FA               [12] 1503 	mov	r2,a
      00054F ED               [12] 1504 	mov	a,r5
      000550 34 FF            [12] 1505 	addc	a,#0xff
      000552 FB               [12] 1506 	mov	r3,a
      000553 8A 04            [24] 1507 	mov	ar4,r2
      000555 8B 05            [24] 1508 	mov	ar5,r3
      000557 EA               [12] 1509 	mov	a,r2
      000558 4B               [12] 1510 	orl	a,r3
      000559 70 F0            [24] 1511 	jnz	00105$
                                   1512 ;	main.c:42: for(i=0;i<0xff;i++)
      00055B 0E               [12] 1513 	inc	r6
      00055C BE 00 01         [24] 1514 	cjne	r6,#0x00,00124$
      00055F 0F               [12] 1515 	inc	r7
      000560                       1516 00124$:
      000560 C3               [12] 1517 	clr	c
      000561 EE               [12] 1518 	mov	a,r6
      000562 94 FF            [12] 1519 	subb	a,#0xff
      000564 EF               [12] 1520 	mov	a,r7
      000565 64 80            [12] 1521 	xrl	a,#0x80
      000567 94 80            [12] 1522 	subb	a,#0x80
      000569 40 DC            [24] 1523 	jc	00106$
                                   1524 ;	main.c:44: }
      00056B 22               [24] 1525 	ret
                                   1526 	.area CSEG    (CODE)
                                   1527 	.area CONST   (CODE)
                                   1528 	.area CONST   (CODE)
      000773                       1529 ___str_0:
      000773 4E 75 6D 62 65 72 20  1530 	.ascii "Number in Hex - eg(FE for 254): "
             69 6E 20 48 65 78 20
             2D 20 65 67 28 46 45
             20 66 6F 72 20 32 35
             34 29 3A 20
      000793 00                    1531 	.db 0x00
                                   1532 	.area CSEG    (CODE)
                                   1533 	.area CONST   (CODE)
      000794                       1534 ___str_1:
      000794 49 53 41 5F 53 45 52  1535 	.ascii "ISA_SERIAL_LOADER_V0.1:8052"
             49 41 4C 5F 4C 4F 41
             44 45 52 5F 56 30 2E
             31 3A 38 30 35 32
      0007AF 0A                    1536 	.db 0x0a
      0007B0 00                    1537 	.db 0x00
                                   1538 	.area CSEG    (CODE)
                                   1539 	.area XINIT   (CODE)
                                   1540 	.area CABS    (ABS,CODE)
