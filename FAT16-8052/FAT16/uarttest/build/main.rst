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
                                     15 	.globl _delay_ms
                                     16 	.globl _UartScanLine
                                     17 	.globl _UartScanByte
                                     18 	.globl _UartPrintNumber
                                     19 	.globl _UartWriteNumbers
                                     20 	.globl _UartWriteNumber
                                     21 	.globl _UartPrint
                                     22 	.globl _UartReadBuff
                                     23 	.globl _UartWriteBuff
                                     24 	.globl _UartWrite
                                     25 	.globl _UartRead
                                     26 	.globl _UartReadReady
                                     27 	.globl _UartBegin
                                     28 	.globl _dec2hexNibble
                                     29 	.globl _hex2dec
                                     30 	.globl _hexNibble2dec
                                     31 	.globl _TF2
                                     32 	.globl _EXF2
                                     33 	.globl _RCLK
                                     34 	.globl _TCLK
                                     35 	.globl _EXEN2
                                     36 	.globl _TR2
                                     37 	.globl _C_T2
                                     38 	.globl _CP_RL2
                                     39 	.globl _T2CON_7
                                     40 	.globl _T2CON_6
                                     41 	.globl _T2CON_5
                                     42 	.globl _T2CON_4
                                     43 	.globl _T2CON_3
                                     44 	.globl _T2CON_2
                                     45 	.globl _T2CON_1
                                     46 	.globl _T2CON_0
                                     47 	.globl _PT2
                                     48 	.globl _ET2
                                     49 	.globl _CY
                                     50 	.globl _AC
                                     51 	.globl _F0
                                     52 	.globl _RS1
                                     53 	.globl _RS0
                                     54 	.globl _OV
                                     55 	.globl _F1
                                     56 	.globl _P
                                     57 	.globl _PS
                                     58 	.globl _PT1
                                     59 	.globl _PX1
                                     60 	.globl _PT0
                                     61 	.globl _PX0
                                     62 	.globl _RD
                                     63 	.globl _WR
                                     64 	.globl _T1
                                     65 	.globl _T0
                                     66 	.globl _INT1
                                     67 	.globl _INT0
                                     68 	.globl _TXD
                                     69 	.globl _RXD
                                     70 	.globl _P3_7
                                     71 	.globl _P3_6
                                     72 	.globl _P3_5
                                     73 	.globl _P3_4
                                     74 	.globl _P3_3
                                     75 	.globl _P3_2
                                     76 	.globl _P3_1
                                     77 	.globl _P3_0
                                     78 	.globl _EA
                                     79 	.globl _ES
                                     80 	.globl _ET1
                                     81 	.globl _EX1
                                     82 	.globl _ET0
                                     83 	.globl _EX0
                                     84 	.globl _P2_7
                                     85 	.globl _P2_6
                                     86 	.globl _P2_5
                                     87 	.globl _P2_4
                                     88 	.globl _P2_3
                                     89 	.globl _P2_2
                                     90 	.globl _P2_1
                                     91 	.globl _P2_0
                                     92 	.globl _SM0
                                     93 	.globl _SM1
                                     94 	.globl _SM2
                                     95 	.globl _REN
                                     96 	.globl _TB8
                                     97 	.globl _RB8
                                     98 	.globl _TI
                                     99 	.globl _RI
                                    100 	.globl _P1_7
                                    101 	.globl _P1_6
                                    102 	.globl _P1_5
                                    103 	.globl _P1_4
                                    104 	.globl _P1_3
                                    105 	.globl _P1_2
                                    106 	.globl _P1_1
                                    107 	.globl _P1_0
                                    108 	.globl _TF1
                                    109 	.globl _TR1
                                    110 	.globl _TF0
                                    111 	.globl _TR0
                                    112 	.globl _IE1
                                    113 	.globl _IT1
                                    114 	.globl _IE0
                                    115 	.globl _IT0
                                    116 	.globl _P0_7
                                    117 	.globl _P0_6
                                    118 	.globl _P0_5
                                    119 	.globl _P0_4
                                    120 	.globl _P0_3
                                    121 	.globl _P0_2
                                    122 	.globl _P0_1
                                    123 	.globl _P0_0
                                    124 	.globl _TH2
                                    125 	.globl _TL2
                                    126 	.globl _RCAP2H
                                    127 	.globl _RCAP2L
                                    128 	.globl _T2CON
                                    129 	.globl _B
                                    130 	.globl _ACC
                                    131 	.globl _PSW
                                    132 	.globl _IP
                                    133 	.globl _P3
                                    134 	.globl _IE
                                    135 	.globl _P2
                                    136 	.globl _SBUF
                                    137 	.globl _SCON
                                    138 	.globl _P1
                                    139 	.globl _TH1
                                    140 	.globl _TH0
                                    141 	.globl _TL1
                                    142 	.globl _TL0
                                    143 	.globl _TMOD
                                    144 	.globl _TCON
                                    145 	.globl _PCON
                                    146 	.globl _DPH
                                    147 	.globl _DPL
                                    148 	.globl _SP
                                    149 	.globl _P0
                                    150 	.globl _UartReadBuff_PARM_2
                                    151 	.globl _UartWriteBuff_PARM_2
                                    152 	.globl _hex2dec_PARM_2
                                    153 	.globl _delay
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0	=	0x0080
                           000081   160 _SP	=	0x0081
                           000082   161 _DPL	=	0x0082
                           000083   162 _DPH	=	0x0083
                           000087   163 _PCON	=	0x0087
                           000088   164 _TCON	=	0x0088
                           000089   165 _TMOD	=	0x0089
                           00008A   166 _TL0	=	0x008a
                           00008B   167 _TL1	=	0x008b
                           00008C   168 _TH0	=	0x008c
                           00008D   169 _TH1	=	0x008d
                           000090   170 _P1	=	0x0090
                           000098   171 _SCON	=	0x0098
                           000099   172 _SBUF	=	0x0099
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 _IE	=	0x00a8
                           0000B0   175 _P3	=	0x00b0
                           0000B8   176 _IP	=	0x00b8
                           0000D0   177 _PSW	=	0x00d0
                           0000E0   178 _ACC	=	0x00e0
                           0000F0   179 _B	=	0x00f0
                           0000C8   180 _T2CON	=	0x00c8
                           0000CA   181 _RCAP2L	=	0x00ca
                           0000CB   182 _RCAP2H	=	0x00cb
                           0000CC   183 _TL2	=	0x00cc
                           0000CD   184 _TH2	=	0x00cd
                                    185 ;--------------------------------------------------------
                                    186 ; special function bits
                                    187 ;--------------------------------------------------------
                                    188 	.area RSEG    (ABS,DATA)
      000000                        189 	.org 0x0000
                           000080   190 _P0_0	=	0x0080
                           000081   191 _P0_1	=	0x0081
                           000082   192 _P0_2	=	0x0082
                           000083   193 _P0_3	=	0x0083
                           000084   194 _P0_4	=	0x0084
                           000085   195 _P0_5	=	0x0085
                           000086   196 _P0_6	=	0x0086
                           000087   197 _P0_7	=	0x0087
                           000088   198 _IT0	=	0x0088
                           000089   199 _IE0	=	0x0089
                           00008A   200 _IT1	=	0x008a
                           00008B   201 _IE1	=	0x008b
                           00008C   202 _TR0	=	0x008c
                           00008D   203 _TF0	=	0x008d
                           00008E   204 _TR1	=	0x008e
                           00008F   205 _TF1	=	0x008f
                           000090   206 _P1_0	=	0x0090
                           000091   207 _P1_1	=	0x0091
                           000092   208 _P1_2	=	0x0092
                           000093   209 _P1_3	=	0x0093
                           000094   210 _P1_4	=	0x0094
                           000095   211 _P1_5	=	0x0095
                           000096   212 _P1_6	=	0x0096
                           000097   213 _P1_7	=	0x0097
                           000098   214 _RI	=	0x0098
                           000099   215 _TI	=	0x0099
                           00009A   216 _RB8	=	0x009a
                           00009B   217 _TB8	=	0x009b
                           00009C   218 _REN	=	0x009c
                           00009D   219 _SM2	=	0x009d
                           00009E   220 _SM1	=	0x009e
                           00009F   221 _SM0	=	0x009f
                           0000A0   222 _P2_0	=	0x00a0
                           0000A1   223 _P2_1	=	0x00a1
                           0000A2   224 _P2_2	=	0x00a2
                           0000A3   225 _P2_3	=	0x00a3
                           0000A4   226 _P2_4	=	0x00a4
                           0000A5   227 _P2_5	=	0x00a5
                           0000A6   228 _P2_6	=	0x00a6
                           0000A7   229 _P2_7	=	0x00a7
                           0000A8   230 _EX0	=	0x00a8
                           0000A9   231 _ET0	=	0x00a9
                           0000AA   232 _EX1	=	0x00aa
                           0000AB   233 _ET1	=	0x00ab
                           0000AC   234 _ES	=	0x00ac
                           0000AF   235 _EA	=	0x00af
                           0000B0   236 _P3_0	=	0x00b0
                           0000B1   237 _P3_1	=	0x00b1
                           0000B2   238 _P3_2	=	0x00b2
                           0000B3   239 _P3_3	=	0x00b3
                           0000B4   240 _P3_4	=	0x00b4
                           0000B5   241 _P3_5	=	0x00b5
                           0000B6   242 _P3_6	=	0x00b6
                           0000B7   243 _P3_7	=	0x00b7
                           0000B0   244 _RXD	=	0x00b0
                           0000B1   245 _TXD	=	0x00b1
                           0000B2   246 _INT0	=	0x00b2
                           0000B3   247 _INT1	=	0x00b3
                           0000B4   248 _T0	=	0x00b4
                           0000B5   249 _T1	=	0x00b5
                           0000B6   250 _WR	=	0x00b6
                           0000B7   251 _RD	=	0x00b7
                           0000B8   252 _PX0	=	0x00b8
                           0000B9   253 _PT0	=	0x00b9
                           0000BA   254 _PX1	=	0x00ba
                           0000BB   255 _PT1	=	0x00bb
                           0000BC   256 _PS	=	0x00bc
                           0000D0   257 _P	=	0x00d0
                           0000D1   258 _F1	=	0x00d1
                           0000D2   259 _OV	=	0x00d2
                           0000D3   260 _RS0	=	0x00d3
                           0000D4   261 _RS1	=	0x00d4
                           0000D5   262 _F0	=	0x00d5
                           0000D6   263 _AC	=	0x00d6
                           0000D7   264 _CY	=	0x00d7
                           0000AD   265 _ET2	=	0x00ad
                           0000BD   266 _PT2	=	0x00bd
                           0000C8   267 _T2CON_0	=	0x00c8
                           0000C9   268 _T2CON_1	=	0x00c9
                           0000CA   269 _T2CON_2	=	0x00ca
                           0000CB   270 _T2CON_3	=	0x00cb
                           0000CC   271 _T2CON_4	=	0x00cc
                           0000CD   272 _T2CON_5	=	0x00cd
                           0000CE   273 _T2CON_6	=	0x00ce
                           0000CF   274 _T2CON_7	=	0x00cf
                           0000C8   275 _CP_RL2	=	0x00c8
                           0000C9   276 _C_T2	=	0x00c9
                           0000CA   277 _TR2	=	0x00ca
                           0000CB   278 _EXEN2	=	0x00cb
                           0000CC   279 _TCLK	=	0x00cc
                           0000CD   280 _RCLK	=	0x00cd
                           0000CE   281 _EXF2	=	0x00ce
                           0000CF   282 _TF2	=	0x00cf
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable register banks
                                    285 ;--------------------------------------------------------
                                    286 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        287 	.ds 8
                                    288 ;--------------------------------------------------------
                                    289 ; internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area DSEG    (DATA)
      000008                        292 _hex2dec_PARM_2:
      000008                        293 	.ds 1
      000009                        294 _UartWriteBuff_PARM_2:
      000009                        295 	.ds 1
      00000A                        296 _UartReadBuff_PARM_2:
      00000A                        297 	.ds 1
                                    298 ;--------------------------------------------------------
                                    299 ; overlayable items in internal ram 
                                    300 ;--------------------------------------------------------
                                    301 	.area	OSEG    (OVR,DATA)
                                    302 	.area	OSEG    (OVR,DATA)
                                    303 	.area	OSEG    (OVR,DATA)
                                    304 	.area	OSEG    (OVR,DATA)
                                    305 	.area	OSEG    (OVR,DATA)
                                    306 	.area	OSEG    (OVR,DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; Stack segment in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 	.area	SSEG
      000010                        311 __start__stack:
      000010                        312 	.ds	1
                                    313 
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
                                    318 ;--------------------------------------------------------
                                    319 ; absolute internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area IABS    (ABS,DATA)
                                    322 	.area IABS    (ABS,DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; bit data
                                    325 ;--------------------------------------------------------
                                    326 	.area BSEG    (BIT)
                                    327 ;--------------------------------------------------------
                                    328 ; paged external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area PSEG    (PAG,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XSEG    (XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; absolute external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XABS    (ABS,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external initialized ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XISEG   (XDATA)
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT0 (CODE)
                                    345 	.area GSINIT1 (CODE)
                                    346 	.area GSINIT2 (CODE)
                                    347 	.area GSINIT3 (CODE)
                                    348 	.area GSINIT4 (CODE)
                                    349 	.area GSINIT5 (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area CSEG    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; interrupt vector 
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
      000000                        357 __interrupt_vect:
      000000 02 00 06         [24]  358 	ljmp	__sdcc_gsinit_startup
                                    359 ;--------------------------------------------------------
                                    360 ; global & static initialisations
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.area GSFINAL (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.globl __sdcc_gsinit_startup
                                    367 	.globl __sdcc_program_startup
                                    368 	.globl __start__stack
                                    369 	.globl __mcs51_genXINIT
                                    370 	.globl __mcs51_genXRAMCLEAR
                                    371 	.globl __mcs51_genRAMCLEAR
                                    372 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  373 	ljmp	__sdcc_program_startup
                                    374 ;--------------------------------------------------------
                                    375 ; Home
                                    376 ;--------------------------------------------------------
                                    377 	.area HOME    (CODE)
                                    378 	.area HOME    (CODE)
      000003                        379 __sdcc_program_startup:
      000003 02 04 E1         [24]  380 	ljmp	_main
                                    381 ;	return from main will return to caller
                                    382 ;--------------------------------------------------------
                                    383 ; code
                                    384 ;--------------------------------------------------------
                                    385 	.area CSEG    (CODE)
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'hexNibble2dec'
                                    388 ;------------------------------------------------------------
                                    389 ;nibble                    Allocated to registers r7 
                                    390 ;------------------------------------------------------------
                                    391 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    392 ;	-----------------------------------------
                                    393 ;	 function hexNibble2dec
                                    394 ;	-----------------------------------------
      000062                        395 _hexNibble2dec:
                           000007   396 	ar7 = 0x07
                           000006   397 	ar6 = 0x06
                           000005   398 	ar5 = 0x05
                           000004   399 	ar4 = 0x04
                           000003   400 	ar3 = 0x03
                           000002   401 	ar2 = 0x02
                           000001   402 	ar1 = 0x01
                           000000   403 	ar0 = 0x00
      000062 AF 82            [24]  404 	mov	r7,dpl
                                    405 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      000064 BF 30 00         [24]  406 	cjne	r7,#0x30,00139$
      000067                        407 00139$:
      000067 40 0D            [24]  408 	jc	00110$
      000069 EF               [12]  409 	mov	a,r7
      00006A 24 C6            [12]  410 	add	a,#0xff - 0x39
      00006C 40 08            [24]  411 	jc	00110$
      00006E 8F 06            [24]  412 	mov	ar6,r7
      000070 EE               [12]  413 	mov	a,r6
      000071 24 D0            [12]  414 	add	a,#0xd0
      000073 F5 82            [12]  415 	mov	dpl,a
      000075 22               [24]  416 	ret
      000076                        417 00110$:
                                    418 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      000076 BF 41 00         [24]  419 	cjne	r7,#0x41,00142$
      000079                        420 00142$:
      000079 40 0D            [24]  421 	jc	00106$
      00007B EF               [12]  422 	mov	a,r7
      00007C 24 B9            [12]  423 	add	a,#0xff - 0x46
      00007E 40 08            [24]  424 	jc	00106$
      000080 8F 06            [24]  425 	mov	ar6,r7
      000082 74 C9            [12]  426 	mov	a,#0xc9
      000084 2E               [12]  427 	add	a,r6
      000085 F5 82            [12]  428 	mov	dpl,a
      000087 22               [24]  429 	ret
      000088                        430 00106$:
                                    431 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      000088 BF 61 00         [24]  432 	cjne	r7,#0x61,00145$
      00008B                        433 00145$:
      00008B 40 0B            [24]  434 	jc	00102$
      00008D EF               [12]  435 	mov	a,r7
      00008E 24 99            [12]  436 	add	a,#0xff - 0x66
      000090 40 06            [24]  437 	jc	00102$
      000092 74 A9            [12]  438 	mov	a,#0xa9
      000094 2F               [12]  439 	add	a,r7
      000095 F5 82            [12]  440 	mov	dpl,a
      000097 22               [24]  441 	ret
      000098                        442 00102$:
                                    443 ;	uart.h:11: else return 0;
      000098 75 82 00         [24]  444 	mov	dpl,#0x00
                                    445 ;	uart.h:12: }
      00009B 22               [24]  446 	ret
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'hex2dec'
                                    449 ;------------------------------------------------------------
                                    450 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    451 ;MSnibble                  Allocated to registers r7 
                                    452 ;------------------------------------------------------------
                                    453 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    454 ;	-----------------------------------------
                                    455 ;	 function hex2dec
                                    456 ;	-----------------------------------------
      00009C                        457 _hex2dec:
                                    458 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      00009C 12 00 62         [24]  459 	lcall	_hexNibble2dec
      00009F E5 82            [12]  460 	mov	a,dpl
      0000A1 C4               [12]  461 	swap	a
      0000A2 54 F0            [12]  462 	anl	a,#0xf0
      0000A4 FF               [12]  463 	mov	r7,a
      0000A5 85 08 82         [24]  464 	mov	dpl,_hex2dec_PARM_2
      0000A8 C0 07            [24]  465 	push	ar7
      0000AA 12 00 62         [24]  466 	lcall	_hexNibble2dec
      0000AD AE 82            [24]  467 	mov	r6,dpl
      0000AF D0 07            [24]  468 	pop	ar7
      0000B1 EE               [12]  469 	mov	a,r6
      0000B2 2F               [12]  470 	add	a,r7
      0000B3 F5 82            [12]  471 	mov	dpl,a
                                    472 ;	uart.h:18: }
      0000B5 22               [24]  473 	ret
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'dec2hexNibble'
                                    476 ;------------------------------------------------------------
                                    477 ;dec                       Allocated to registers r7 
                                    478 ;------------------------------------------------------------
                                    479 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    480 ;	-----------------------------------------
                                    481 ;	 function dec2hexNibble
                                    482 ;	-----------------------------------------
      0000B6                        483 _dec2hexNibble:
                                    484 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000B6 E5 82            [12]  485 	mov	a,dpl
      0000B8 FF               [12]  486 	mov	r7,a
      0000B9 24 F0            [12]  487 	add	a,#0xff - 0x0f
      0000BB 50 04            [24]  488 	jnc	00102$
      0000BD 75 82 58         [24]  489 	mov	dpl,#0x58
      0000C0 22               [24]  490 	ret
      0000C1                        491 00102$:
                                    492 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C1 EF               [12]  493 	mov	a,r7
      0000C2 24 F6            [12]  494 	add	a,#0xff - 0x09
      0000C4 40 08            [24]  495 	jc	00104$
      0000C6 8F 06            [24]  496 	mov	ar6,r7
      0000C8 74 30            [12]  497 	mov	a,#0x30
      0000CA 2E               [12]  498 	add	a,r6
      0000CB F5 82            [12]  499 	mov	dpl,a
      0000CD 22               [24]  500 	ret
      0000CE                        501 00104$:
                                    502 ;	uart.h:27: else return 'A' + dec - 10;
      0000CE 74 37            [12]  503 	mov	a,#0x37
      0000D0 2F               [12]  504 	add	a,r7
      0000D1 F5 82            [12]  505 	mov	dpl,a
                                    506 ;	uart.h:28: }
      0000D3 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'UartBegin'
                                    510 ;------------------------------------------------------------
                                    511 ;	uart.h:33: void UartBegin()
                                    512 ;	-----------------------------------------
                                    513 ;	 function UartBegin
                                    514 ;	-----------------------------------------
      0000D4                        515 _UartBegin:
                                    516 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000D4 75 89 20         [24]  517 	mov	_TMOD,#0x20
                                    518 ;	uart.h:39: TH1 = 0XF3; //2400
      0000D7 75 8D F3         [24]  519 	mov	_TH1,#0xf3
                                    520 ;	uart.h:40: SCON = 0X50;
      0000DA 75 98 50         [24]  521 	mov	_SCON,#0x50
                                    522 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000DD 43 87 80         [24]  523 	orl	_PCON,#0x80
                                    524 ;	uart.h:44: TR1 = 1; //START TIMER
                                    525 ;	assignBit
      0000E0 D2 8E            [12]  526 	setb	_TR1
                                    527 ;	uart.h:45: }
      0000E2 22               [24]  528 	ret
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'UartReadReady'
                                    531 ;------------------------------------------------------------
                                    532 ;	uart.h:47: unsigned char UartReadReady()
                                    533 ;	-----------------------------------------
                                    534 ;	 function UartReadReady
                                    535 ;	-----------------------------------------
      0000E3                        536 _UartReadReady:
                                    537 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000E3 20 98 04         [24]  538 	jb	_RI,00102$
      0000E6 75 82 00         [24]  539 	mov	dpl,#0x00
      0000E9 22               [24]  540 	ret
      0000EA                        541 00102$:
                                    542 ;	uart.h:50: else return 1; //received and ready
      0000EA 75 82 01         [24]  543 	mov	dpl,#0x01
                                    544 ;	uart.h:51: }
      0000ED 22               [24]  545 	ret
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'UartRead'
                                    548 ;------------------------------------------------------------
                                    549 ;value                     Allocated to registers 
                                    550 ;------------------------------------------------------------
                                    551 ;	uart.h:53: unsigned char UartRead()
                                    552 ;	-----------------------------------------
                                    553 ;	 function UartRead
                                    554 ;	-----------------------------------------
      0000EE                        555 _UartRead:
                                    556 ;	uart.h:56: while(RI==0); //wait till RX
      0000EE                        557 00101$:
                                    558 ;	uart.h:57: RI=0;
                                    559 ;	assignBit
      0000EE 10 98 02         [24]  560 	jbc	_RI,00114$
      0000F1 80 FB            [24]  561 	sjmp	00101$
      0000F3                        562 00114$:
                                    563 ;	uart.h:58: value = SBUF;
      0000F3 85 99 82         [24]  564 	mov	dpl,_SBUF
                                    565 ;	uart.h:59: return value;
                                    566 ;	uart.h:60: }
      0000F6 22               [24]  567 	ret
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'UartWrite'
                                    570 ;------------------------------------------------------------
                                    571 ;value                     Allocated to registers 
                                    572 ;------------------------------------------------------------
                                    573 ;	uart.h:63: void UartWrite(unsigned char value)
                                    574 ;	-----------------------------------------
                                    575 ;	 function UartWrite
                                    576 ;	-----------------------------------------
      0000F7                        577 _UartWrite:
      0000F7 85 82 99         [24]  578 	mov	_SBUF,dpl
                                    579 ;	uart.h:66: while(TI==0); // wait till TX
      0000FA                        580 00101$:
                                    581 ;	uart.h:67: TI=0;
                                    582 ;	assignBit
      0000FA 10 99 02         [24]  583 	jbc	_TI,00114$
      0000FD 80 FB            [24]  584 	sjmp	00101$
      0000FF                        585 00114$:
                                    586 ;	uart.h:68: }
      0000FF 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'UartWriteBuff'
                                    590 ;------------------------------------------------------------
                                    591 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    592 ;p                         Allocated to registers r5 r6 r7 
                                    593 ;i                         Allocated to registers r4 
                                    594 ;------------------------------------------------------------
                                    595 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    596 ;	-----------------------------------------
                                    597 ;	 function UartWriteBuff
                                    598 ;	-----------------------------------------
      000100                        599 _UartWriteBuff:
      000100 AD 82            [24]  600 	mov	r5,dpl
      000102 AE 83            [24]  601 	mov	r6,dph
      000104 AF F0            [24]  602 	mov	r7,b
                                    603 ;	uart.h:73: for (i=0;i<length;i++)
      000106 7C 00            [12]  604 	mov	r4,#0x00
      000108                        605 00103$:
      000108 C3               [12]  606 	clr	c
      000109 EC               [12]  607 	mov	a,r4
      00010A 95 09            [12]  608 	subb	a,_UartWriteBuff_PARM_2
      00010C 50 29            [24]  609 	jnc	00105$
                                    610 ;	uart.h:75: UartWrite(p[i]);
      00010E EC               [12]  611 	mov	a,r4
      00010F 2D               [12]  612 	add	a,r5
      000110 F9               [12]  613 	mov	r1,a
      000111 E4               [12]  614 	clr	a
      000112 3E               [12]  615 	addc	a,r6
      000113 FA               [12]  616 	mov	r2,a
      000114 8F 03            [24]  617 	mov	ar3,r7
      000116 89 82            [24]  618 	mov	dpl,r1
      000118 8A 83            [24]  619 	mov	dph,r2
      00011A 8B F0            [24]  620 	mov	b,r3
      00011C 12 06 8B         [24]  621 	lcall	__gptrget
      00011F F5 82            [12]  622 	mov	dpl,a
      000121 C0 07            [24]  623 	push	ar7
      000123 C0 06            [24]  624 	push	ar6
      000125 C0 05            [24]  625 	push	ar5
      000127 C0 04            [24]  626 	push	ar4
      000129 12 00 F7         [24]  627 	lcall	_UartWrite
      00012C D0 04            [24]  628 	pop	ar4
      00012E D0 05            [24]  629 	pop	ar5
      000130 D0 06            [24]  630 	pop	ar6
      000132 D0 07            [24]  631 	pop	ar7
                                    632 ;	uart.h:73: for (i=0;i<length;i++)
      000134 0C               [12]  633 	inc	r4
      000135 80 D1            [24]  634 	sjmp	00103$
      000137                        635 00105$:
                                    636 ;	uart.h:77: }
      000137 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'UartReadBuff'
                                    640 ;------------------------------------------------------------
                                    641 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    642 ;p                         Allocated to registers r5 r6 r7 
                                    643 ;i                         Allocated to registers r4 
                                    644 ;------------------------------------------------------------
                                    645 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    646 ;	-----------------------------------------
                                    647 ;	 function UartReadBuff
                                    648 ;	-----------------------------------------
      000138                        649 _UartReadBuff:
      000138 AD 82            [24]  650 	mov	r5,dpl
      00013A AE 83            [24]  651 	mov	r6,dph
      00013C AF F0            [24]  652 	mov	r7,b
                                    653 ;	uart.h:82: for (i=0;i<length;i++)
      00013E 7C 00            [12]  654 	mov	r4,#0x00
      000140                        655 00103$:
      000140 C3               [12]  656 	clr	c
      000141 EC               [12]  657 	mov	a,r4
      000142 95 0A            [12]  658 	subb	a,_UartReadBuff_PARM_2
      000144 50 36            [24]  659 	jnc	00105$
                                    660 ;	uart.h:84: p[i] = UartRead();
      000146 EC               [12]  661 	mov	a,r4
      000147 2D               [12]  662 	add	a,r5
      000148 F9               [12]  663 	mov	r1,a
      000149 E4               [12]  664 	clr	a
      00014A 3E               [12]  665 	addc	a,r6
      00014B FA               [12]  666 	mov	r2,a
      00014C 8F 03            [24]  667 	mov	ar3,r7
      00014E C0 07            [24]  668 	push	ar7
      000150 C0 06            [24]  669 	push	ar6
      000152 C0 05            [24]  670 	push	ar5
      000154 C0 04            [24]  671 	push	ar4
      000156 C0 03            [24]  672 	push	ar3
      000158 C0 02            [24]  673 	push	ar2
      00015A C0 01            [24]  674 	push	ar1
      00015C 12 00 EE         [24]  675 	lcall	_UartRead
      00015F A8 82            [24]  676 	mov	r0,dpl
      000161 D0 01            [24]  677 	pop	ar1
      000163 D0 02            [24]  678 	pop	ar2
      000165 D0 03            [24]  679 	pop	ar3
      000167 D0 04            [24]  680 	pop	ar4
      000169 D0 05            [24]  681 	pop	ar5
      00016B D0 06            [24]  682 	pop	ar6
      00016D D0 07            [24]  683 	pop	ar7
      00016F 89 82            [24]  684 	mov	dpl,r1
      000171 8A 83            [24]  685 	mov	dph,r2
      000173 8B F0            [24]  686 	mov	b,r3
      000175 E8               [12]  687 	mov	a,r0
      000176 12 05 FA         [24]  688 	lcall	__gptrput
                                    689 ;	uart.h:82: for (i=0;i<length;i++)
      000179 0C               [12]  690 	inc	r4
      00017A 80 C4            [24]  691 	sjmp	00103$
      00017C                        692 00105$:
                                    693 ;	uart.h:86: }
      00017C 22               [24]  694 	ret
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'UartPrint'
                                    697 ;------------------------------------------------------------
                                    698 ;p                         Allocated to registers 
                                    699 ;------------------------------------------------------------
                                    700 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    701 ;	-----------------------------------------
                                    702 ;	 function UartPrint
                                    703 ;	-----------------------------------------
      00017D                        704 _UartPrint:
      00017D AD 82            [24]  705 	mov	r5,dpl
      00017F AE 83            [24]  706 	mov	r6,dph
      000181 AF F0            [24]  707 	mov	r7,b
                                    708 ;	uart.h:90: do
      000183                        709 00101$:
                                    710 ;	uart.h:92: UartWrite(*p);
      000183 8D 82            [24]  711 	mov	dpl,r5
      000185 8E 83            [24]  712 	mov	dph,r6
      000187 8F F0            [24]  713 	mov	b,r7
      000189 12 06 8B         [24]  714 	lcall	__gptrget
      00018C FC               [12]  715 	mov	r4,a
      00018D A3               [24]  716 	inc	dptr
      00018E AD 82            [24]  717 	mov	r5,dpl
      000190 AE 83            [24]  718 	mov	r6,dph
      000192 8C 82            [24]  719 	mov	dpl,r4
      000194 C0 07            [24]  720 	push	ar7
      000196 C0 06            [24]  721 	push	ar6
      000198 C0 05            [24]  722 	push	ar5
      00019A 12 00 F7         [24]  723 	lcall	_UartWrite
      00019D D0 05            [24]  724 	pop	ar5
      00019F D0 06            [24]  725 	pop	ar6
      0001A1 D0 07            [24]  726 	pop	ar7
                                    727 ;	uart.h:93: }while(*(++p)!=0);
      0001A3 8D 82            [24]  728 	mov	dpl,r5
      0001A5 8E 83            [24]  729 	mov	dph,r6
      0001A7 8F F0            [24]  730 	mov	b,r7
      0001A9 12 06 8B         [24]  731 	lcall	__gptrget
      0001AC 70 D5            [24]  732 	jnz	00101$
                                    733 ;	uart.h:94: }
      0001AE 22               [24]  734 	ret
                                    735 ;------------------------------------------------------------
                                    736 ;Allocation info for local variables in function 'UartWriteNumber'
                                    737 ;------------------------------------------------------------
                                    738 ;format                    Allocated to stack - _bp -3
                                    739 ;num                       Allocated to registers r7 
                                    740 ;msd                       Allocated to registers r4 
                                    741 ;lsd                       Allocated to registers r6 
                                    742 ;extra                     Allocated to registers r3 
                                    743 ;------------------------------------------------------------
                                    744 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    745 ;	-----------------------------------------
                                    746 ;	 function UartWriteNumber
                                    747 ;	-----------------------------------------
      0001AF                        748 _UartWriteNumber:
      0001AF C0 0B            [24]  749 	push	_bp
      0001B1 85 81 0B         [24]  750 	mov	_bp,sp
      0001B4 AF 82            [24]  751 	mov	r7,dpl
                                    752 ;	uart.h:104: if(format==HEX)
      0001B6 E5 0B            [12]  753 	mov	a,_bp
      0001B8 24 FD            [12]  754 	add	a,#0xfd
      0001BA F8               [12]  755 	mov	r0,a
      0001BB E6               [12]  756 	mov	a,@r0
                                    757 ;	uart.h:106: msd = num/16;
      0001BC 70 32            [24]  758 	jnz	00104$
      0001BE 8F 05            [24]  759 	mov	ar5,r7
      0001C0 FE               [12]  760 	mov	r6,a
      0001C1 75 0C 10         [24]  761 	mov	__divsint_PARM_2,#0x10
                                    762 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001C4 8E 0D            [24]  763 	mov	(__divsint_PARM_2 + 1),r6
      0001C6 8D 82            [24]  764 	mov	dpl,r5
      0001C8 8E 83            [24]  765 	mov	dph,r6
      0001CA C0 06            [24]  766 	push	ar6
      0001CC C0 05            [24]  767 	push	ar5
      0001CE 12 06 DD         [24]  768 	lcall	__divsint
      0001D1 AB 82            [24]  769 	mov	r3,dpl
      0001D3 D0 05            [24]  770 	pop	ar5
      0001D5 D0 06            [24]  771 	pop	ar6
                                    772 ;	uart.h:107: lsd = num%16;
      0001D7 53 05 0F         [24]  773 	anl	ar5,#0x0f
                                    774 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001DA 8B 82            [24]  775 	mov	dpl,r3
      0001DC C0 05            [24]  776 	push	ar5
      0001DE 12 00 B6         [24]  777 	lcall	_dec2hexNibble
      0001E1 12 00 F7         [24]  778 	lcall	_UartWrite
      0001E4 D0 05            [24]  779 	pop	ar5
                                    780 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001E6 8D 82            [24]  781 	mov	dpl,r5
      0001E8 12 00 B6         [24]  782 	lcall	_dec2hexNibble
      0001EB 12 00 F7         [24]  783 	lcall	_UartWrite
      0001EE 80 7B            [24]  784 	sjmp	00106$
      0001F0                        785 00104$:
                                    786 ;	uart.h:112: else if(format==DEC)
      0001F0 E5 0B            [12]  787 	mov	a,_bp
      0001F2 24 FD            [12]  788 	add	a,#0xfd
      0001F4 F8               [12]  789 	mov	r0,a
      0001F5 B6 01 73         [24]  790 	cjne	@r0,#0x01,00106$
                                    791 ;	uart.h:114: msd = num/100; // 100s place
      0001F8 7E 00            [12]  792 	mov	r6,#0x00
      0001FA 75 0C 64         [24]  793 	mov	__divsint_PARM_2,#0x64
                                    794 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001FD 8E 0D            [24]  795 	mov	(__divsint_PARM_2 + 1),r6
      0001FF 8F 82            [24]  796 	mov	dpl,r7
      000201 8E 83            [24]  797 	mov	dph,r6
      000203 C0 07            [24]  798 	push	ar7
      000205 C0 06            [24]  799 	push	ar6
      000207 12 06 DD         [24]  800 	lcall	__divsint
      00020A AC 82            [24]  801 	mov	r4,dpl
      00020C D0 06            [24]  802 	pop	ar6
      00020E D0 07            [24]  803 	pop	ar7
                                    804 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000210 75 0C 64         [24]  805 	mov	__modsint_PARM_2,#0x64
      000213 75 0D 00         [24]  806 	mov	(__modsint_PARM_2 + 1),#0x00
      000216 8F 82            [24]  807 	mov	dpl,r7
      000218 8E 83            [24]  808 	mov	dph,r6
      00021A C0 07            [24]  809 	push	ar7
      00021C C0 06            [24]  810 	push	ar6
      00021E C0 04            [24]  811 	push	ar4
      000220 12 06 A7         [24]  812 	lcall	__modsint
      000223 75 0C 0A         [24]  813 	mov	__divsint_PARM_2,#0x0a
      000226 75 0D 00         [24]  814 	mov	(__divsint_PARM_2 + 1),#0x00
      000229 12 06 DD         [24]  815 	lcall	__divsint
      00022C AB 82            [24]  816 	mov	r3,dpl
      00022E D0 04            [24]  817 	pop	ar4
      000230 D0 06            [24]  818 	pop	ar6
      000232 D0 07            [24]  819 	pop	ar7
                                    820 ;	uart.h:116: lsd = num%10;
      000234 75 0C 0A         [24]  821 	mov	__modsint_PARM_2,#0x0a
      000237 75 0D 00         [24]  822 	mov	(__modsint_PARM_2 + 1),#0x00
      00023A 8F 82            [24]  823 	mov	dpl,r7
      00023C 8E 83            [24]  824 	mov	dph,r6
      00023E C0 04            [24]  825 	push	ar4
      000240 C0 03            [24]  826 	push	ar3
      000242 12 06 A7         [24]  827 	lcall	__modsint
      000245 AE 82            [24]  828 	mov	r6,dpl
      000247 D0 03            [24]  829 	pop	ar3
      000249 D0 04            [24]  830 	pop	ar4
                                    831 ;	uart.h:118: UartWrite(msd + 0x30);
      00024B 74 30            [12]  832 	mov	a,#0x30
      00024D 2C               [12]  833 	add	a,r4
      00024E F5 82            [12]  834 	mov	dpl,a
      000250 C0 06            [24]  835 	push	ar6
      000252 C0 03            [24]  836 	push	ar3
      000254 12 00 F7         [24]  837 	lcall	_UartWrite
      000257 D0 03            [24]  838 	pop	ar3
                                    839 ;	uart.h:119: UartWrite(extra + 0x30);
      000259 74 30            [12]  840 	mov	a,#0x30
      00025B 2B               [12]  841 	add	a,r3
      00025C F5 82            [12]  842 	mov	dpl,a
      00025E 12 00 F7         [24]  843 	lcall	_UartWrite
      000261 D0 06            [24]  844 	pop	ar6
                                    845 ;	uart.h:120: UartWrite(lsd + 0x30);
      000263 74 30            [12]  846 	mov	a,#0x30
      000265 2E               [12]  847 	add	a,r6
      000266 F5 82            [12]  848 	mov	dpl,a
      000268 12 00 F7         [24]  849 	lcall	_UartWrite
      00026B                        850 00106$:
                                    851 ;	uart.h:123: }
      00026B D0 0B            [24]  852 	pop	_bp
      00026D 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    856 ;------------------------------------------------------------
                                    857 ;length                    Allocated to stack - _bp -3
                                    858 ;format                    Allocated to stack - _bp -4
                                    859 ;delimiter                 Allocated to stack - _bp -5
                                    860 ;p                         Allocated to registers 
                                    861 ;i                         Allocated to registers r4 
                                    862 ;------------------------------------------------------------
                                    863 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    864 ;	-----------------------------------------
                                    865 ;	 function UartWriteNumbers
                                    866 ;	-----------------------------------------
      00026E                        867 _UartWriteNumbers:
      00026E C0 0B            [24]  868 	push	_bp
      000270 85 81 0B         [24]  869 	mov	_bp,sp
      000273 AD 82            [24]  870 	mov	r5,dpl
      000275 AE 83            [24]  871 	mov	r6,dph
      000277 AF F0            [24]  872 	mov	r7,b
                                    873 ;	uart.h:129: for(i=0;i<length;i++,p++)
      000279 7C 00            [12]  874 	mov	r4,#0x00
      00027B                        875 00103$:
      00027B E5 0B            [12]  876 	mov	a,_bp
      00027D 24 FD            [12]  877 	add	a,#0xfd
      00027F F8               [12]  878 	mov	r0,a
      000280 C3               [12]  879 	clr	c
      000281 EC               [12]  880 	mov	a,r4
      000282 96               [12]  881 	subb	a,@r0
      000283 50 3B            [24]  882 	jnc	00105$
                                    883 ;	uart.h:131: UartWriteNumber(*p,format);
      000285 8D 82            [24]  884 	mov	dpl,r5
      000287 8E 83            [24]  885 	mov	dph,r6
      000289 8F F0            [24]  886 	mov	b,r7
      00028B 12 06 8B         [24]  887 	lcall	__gptrget
      00028E FB               [12]  888 	mov	r3,a
      00028F A3               [24]  889 	inc	dptr
      000290 AD 82            [24]  890 	mov	r5,dpl
      000292 AE 83            [24]  891 	mov	r6,dph
      000294 C0 07            [24]  892 	push	ar7
      000296 C0 06            [24]  893 	push	ar6
      000298 C0 05            [24]  894 	push	ar5
      00029A C0 04            [24]  895 	push	ar4
      00029C E5 0B            [12]  896 	mov	a,_bp
      00029E 24 FC            [12]  897 	add	a,#0xfc
      0002A0 F8               [12]  898 	mov	r0,a
      0002A1 E6               [12]  899 	mov	a,@r0
      0002A2 C0 E0            [24]  900 	push	acc
      0002A4 8B 82            [24]  901 	mov	dpl,r3
      0002A6 12 01 AF         [24]  902 	lcall	_UartWriteNumber
      0002A9 15 81            [12]  903 	dec	sp
                                    904 ;	uart.h:132: UartWrite(delimiter);
      0002AB E5 0B            [12]  905 	mov	a,_bp
      0002AD 24 FB            [12]  906 	add	a,#0xfb
      0002AF F8               [12]  907 	mov	r0,a
      0002B0 86 82            [24]  908 	mov	dpl,@r0
      0002B2 12 00 F7         [24]  909 	lcall	_UartWrite
      0002B5 D0 04            [24]  910 	pop	ar4
      0002B7 D0 05            [24]  911 	pop	ar5
      0002B9 D0 06            [24]  912 	pop	ar6
      0002BB D0 07            [24]  913 	pop	ar7
                                    914 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002BD 0C               [12]  915 	inc	r4
      0002BE 80 BB            [24]  916 	sjmp	00103$
      0002C0                        917 00105$:
                                    918 ;	uart.h:134: }
      0002C0 D0 0B            [24]  919 	pop	_bp
      0002C2 22               [24]  920 	ret
                                    921 ;------------------------------------------------------------
                                    922 ;Allocation info for local variables in function 'UartPrintNumber'
                                    923 ;------------------------------------------------------------
                                    924 ;n                         Allocated to stack - _bp +1
                                    925 ;digit                     Allocated to registers r2 r5 r6 r7 
                                    926 ;i                         Allocated to registers r3 
                                    927 ;j                         Allocated to registers r4 
                                    928 ;sloc0                     Allocated to stack - _bp +5
                                    929 ;------------------------------------------------------------
                                    930 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                    931 ;	-----------------------------------------
                                    932 ;	 function UartPrintNumber
                                    933 ;	-----------------------------------------
      0002C3                        934 _UartPrintNumber:
      0002C3 C0 0B            [24]  935 	push	_bp
      0002C5 85 81 0B         [24]  936 	mov	_bp,sp
      0002C8 C0 82            [24]  937 	push	dpl
      0002CA C0 83            [24]  938 	push	dph
      0002CC C0 F0            [24]  939 	push	b
      0002CE C0 E0            [24]  940 	push	acc
      0002D0 E5 81            [12]  941 	mov	a,sp
      0002D2 24 04            [12]  942 	add	a,#0x04
      0002D4 F5 81            [12]  943 	mov	sp,a
                                    944 ;	uart.h:154: for(i=8;i>0;i--)
      0002D6 7B 08            [12]  945 	mov	r3,#0x08
      0002D8                        946 00106$:
                                    947 ;	uart.h:156: digit=n;
      0002D8 A8 0B            [24]  948 	mov	r0,_bp
      0002DA 08               [12]  949 	inc	r0
      0002DB 86 02            [24]  950 	mov	ar2,@r0
      0002DD 08               [12]  951 	inc	r0
      0002DE 86 05            [24]  952 	mov	ar5,@r0
      0002E0 08               [12]  953 	inc	r0
      0002E1 86 06            [24]  954 	mov	ar6,@r0
      0002E3 08               [12]  955 	inc	r0
      0002E4 86 07            [24]  956 	mov	ar7,@r0
                                    957 ;	uart.h:157: for(j=1;j<i;j++) digit/=10;
      0002E6 7C 01            [12]  958 	mov	r4,#0x01
      0002E8                        959 00104$:
      0002E8 C3               [12]  960 	clr	c
      0002E9 EC               [12]  961 	mov	a,r4
      0002EA 9B               [12]  962 	subb	a,r3
      0002EB 50 43            [24]  963 	jnc	00101$
      0002ED C0 03            [24]  964 	push	ar3
      0002EF 75 0C 0A         [24]  965 	mov	__divulong_PARM_2,#0x0a
      0002F2 E4               [12]  966 	clr	a
      0002F3 F5 0D            [12]  967 	mov	(__divulong_PARM_2 + 1),a
      0002F5 F5 0E            [12]  968 	mov	(__divulong_PARM_2 + 2),a
      0002F7 F5 0F            [12]  969 	mov	(__divulong_PARM_2 + 3),a
      0002F9 8A 82            [24]  970 	mov	dpl,r2
      0002FB 8D 83            [24]  971 	mov	dph,r5
      0002FD 8E F0            [24]  972 	mov	b,r6
      0002FF EF               [12]  973 	mov	a,r7
      000300 C0 04            [24]  974 	push	ar4
      000302 C0 03            [24]  975 	push	ar3
      000304 12 05 95         [24]  976 	lcall	__divulong
      000307 C8               [12]  977 	xch	a,r0
      000308 E5 0B            [12]  978 	mov	a,_bp
      00030A 24 05            [12]  979 	add	a,#0x05
      00030C C8               [12]  980 	xch	a,r0
      00030D A6 82            [24]  981 	mov	@r0,dpl
      00030F 08               [12]  982 	inc	r0
      000310 A6 83            [24]  983 	mov	@r0,dph
      000312 08               [12]  984 	inc	r0
      000313 A6 F0            [24]  985 	mov	@r0,b
      000315 08               [12]  986 	inc	r0
      000316 F6               [12]  987 	mov	@r0,a
      000317 D0 03            [24]  988 	pop	ar3
      000319 D0 04            [24]  989 	pop	ar4
      00031B E5 0B            [12]  990 	mov	a,_bp
      00031D 24 05            [12]  991 	add	a,#0x05
      00031F F8               [12]  992 	mov	r0,a
      000320 86 02            [24]  993 	mov	ar2,@r0
      000322 08               [12]  994 	inc	r0
      000323 86 05            [24]  995 	mov	ar5,@r0
      000325 08               [12]  996 	inc	r0
      000326 86 06            [24]  997 	mov	ar6,@r0
      000328 08               [12]  998 	inc	r0
      000329 86 07            [24]  999 	mov	ar7,@r0
      00032B 0C               [12] 1000 	inc	r4
      00032C D0 03            [24] 1001 	pop	ar3
      00032E 80 B8            [24] 1002 	sjmp	00104$
      000330                       1003 00101$:
                                   1004 ;	uart.h:158: UartWrite(0x30 + digit%10);
      000330 75 0C 0A         [24] 1005 	mov	__modulong_PARM_2,#0x0a
      000333 E4               [12] 1006 	clr	a
      000334 F5 0D            [12] 1007 	mov	(__modulong_PARM_2 + 1),a
      000336 F5 0E            [12] 1008 	mov	(__modulong_PARM_2 + 2),a
      000338 F5 0F            [12] 1009 	mov	(__modulong_PARM_2 + 3),a
      00033A 8A 82            [24] 1010 	mov	dpl,r2
      00033C 8D 83            [24] 1011 	mov	dph,r5
      00033E 8E F0            [24] 1012 	mov	b,r6
      000340 EF               [12] 1013 	mov	a,r7
      000341 C0 03            [24] 1014 	push	ar3
      000343 12 05 12         [24] 1015 	lcall	__modulong
      000346 AC 82            [24] 1016 	mov	r4,dpl
      000348 74 30            [12] 1017 	mov	a,#0x30
      00034A 2C               [12] 1018 	add	a,r4
      00034B F5 82            [12] 1019 	mov	dpl,a
      00034D 12 00 F7         [24] 1020 	lcall	_UartWrite
      000350 D0 03            [24] 1021 	pop	ar3
                                   1022 ;	uart.h:154: for(i=8;i>0;i--)
      000352 DB 84            [24] 1023 	djnz	r3,00106$
                                   1024 ;	uart.h:160: }
      000354 85 0B 81         [24] 1025 	mov	sp,_bp
      000357 D0 0B            [24] 1026 	pop	_bp
      000359 22               [24] 1027 	ret
                                   1028 ;------------------------------------------------------------
                                   1029 ;Allocation info for local variables in function 'UartScanByte'
                                   1030 ;------------------------------------------------------------
                                   1031 ;unibble                   Allocated to registers r7 
                                   1032 ;lnibble                   Allocated to registers r6 
                                   1033 ;------------------------------------------------------------
                                   1034 ;	uart.h:163: uint8_t UartScanByte() __reentrant
                                   1035 ;	-----------------------------------------
                                   1036 ;	 function UartScanByte
                                   1037 ;	-----------------------------------------
      00035A                       1038 _UartScanByte:
                                   1039 ;	uart.h:167: while(UartReadReady()) UartRead(); //flush
      00035A                       1040 00101$:
      00035A 12 00 E3         [24] 1041 	lcall	_UartReadReady
      00035D E5 82            [12] 1042 	mov	a,dpl
      00035F 60 05            [24] 1043 	jz	00103$
      000361 12 00 EE         [24] 1044 	lcall	_UartRead
      000364 80 F4            [24] 1045 	sjmp	00101$
      000366                       1046 00103$:
                                   1047 ;	uart.h:168: UartPrint("Number in Hex - eg(FE for 254): ");
      000366 90 07 19         [24] 1048 	mov	dptr,#___str_0
      000369 75 F0 80         [24] 1049 	mov	b,#0x80
      00036C 12 01 7D         [24] 1050 	lcall	_UartPrint
                                   1051 ;	uart.h:170: unibble = UartRead();
      00036F 12 00 EE         [24] 1052 	lcall	_UartRead
                                   1053 ;	uart.h:171: UartWrite(unibble);
      000372 AF 82            [24] 1054 	mov  r7,dpl
      000374 C0 07            [24] 1055 	push	ar7
      000376 12 00 F7         [24] 1056 	lcall	_UartWrite
                                   1057 ;	uart.h:172: lnibble = UartRead();
      000379 12 00 EE         [24] 1058 	lcall	_UartRead
                                   1059 ;	uart.h:173: UartWrite(lnibble);
      00037C AE 82            [24] 1060 	mov  r6,dpl
      00037E C0 06            [24] 1061 	push	ar6
      000380 12 00 F7         [24] 1062 	lcall	_UartWrite
                                   1063 ;	uart.h:175: UartWrite('\n');
      000383 75 82 0A         [24] 1064 	mov	dpl,#0x0a
      000386 12 00 F7         [24] 1065 	lcall	_UartWrite
      000389 D0 06            [24] 1066 	pop	ar6
      00038B D0 07            [24] 1067 	pop	ar7
                                   1068 ;	uart.h:177: return hex2dec(unibble,lnibble);
      00038D 8E 08            [24] 1069 	mov	_hex2dec_PARM_2,r6
      00038F 8F 82            [24] 1070 	mov	dpl,r7
                                   1071 ;	uart.h:178: }
      000391 02 00 9C         [24] 1072 	ljmp	_hex2dec
                                   1073 ;------------------------------------------------------------
                                   1074 ;Allocation info for local variables in function 'UartScanLine'
                                   1075 ;------------------------------------------------------------
                                   1076 ;maxLength                 Allocated to stack - _bp -3
                                   1077 ;dst                       Allocated to stack - _bp +1
                                   1078 ;recv                      Allocated to registers r2 
                                   1079 ;count                     Allocated to registers r4 
                                   1080 ;------------------------------------------------------------
                                   1081 ;	uart.h:180: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1082 ;	-----------------------------------------
                                   1083 ;	 function UartScanLine
                                   1084 ;	-----------------------------------------
      000394                       1085 _UartScanLine:
      000394 C0 0B            [24] 1086 	push	_bp
      000396 85 81 0B         [24] 1087 	mov	_bp,sp
      000399 C0 82            [24] 1088 	push	dpl
      00039B C0 83            [24] 1089 	push	dph
      00039D C0 F0            [24] 1090 	push	b
                                   1091 ;	uart.h:182: uint8_t recv,count=0;
      00039F 7C 00            [12] 1092 	mov	r4,#0x00
                                   1093 ;	uart.h:184: while(UartReadReady()) UartRead(); //flush
      0003A1                       1094 00101$:
      0003A1 C0 04            [24] 1095 	push	ar4
      0003A3 12 00 E3         [24] 1096 	lcall	_UartReadReady
      0003A6 E5 82            [12] 1097 	mov	a,dpl
      0003A8 D0 04            [24] 1098 	pop	ar4
      0003AA 60 09            [24] 1099 	jz	00118$
      0003AC C0 04            [24] 1100 	push	ar4
      0003AE 12 00 EE         [24] 1101 	lcall	_UartRead
      0003B1 D0 04            [24] 1102 	pop	ar4
                                   1103 ;	uart.h:186: while(1)
      0003B3 80 EC            [24] 1104 	sjmp	00101$
      0003B5                       1105 00118$:
      0003B5 7B 00            [12] 1106 	mov	r3,#0x00
      0003B7                       1107 00110$:
                                   1108 ;	uart.h:189: recv=UartRead();
      0003B7 C0 04            [24] 1109 	push	ar4
      0003B9 C0 03            [24] 1110 	push	ar3
      0003BB 12 00 EE         [24] 1111 	lcall	_UartRead
                                   1112 ;	uart.h:190: UartWrite(recv);
      0003BE AA 82            [24] 1113 	mov  r2,dpl
      0003C0 C0 02            [24] 1114 	push	ar2
      0003C2 12 00 F7         [24] 1115 	lcall	_UartWrite
      0003C5 D0 02            [24] 1116 	pop	ar2
      0003C7 D0 03            [24] 1117 	pop	ar3
      0003C9 D0 04            [24] 1118 	pop	ar4
                                   1119 ;	uart.h:191: if(recv == '\n') 
      0003CB BA 0A 19         [24] 1120 	cjne	r2,#0x0a,00105$
                                   1121 ;	uart.h:193: *(dst+count)=0; //add string terminate
      0003CE A8 0B            [24] 1122 	mov	r0,_bp
      0003D0 08               [12] 1123 	inc	r0
      0003D1 EC               [12] 1124 	mov	a,r4
      0003D2 26               [12] 1125 	add	a,@r0
      0003D3 FD               [12] 1126 	mov	r5,a
      0003D4 E4               [12] 1127 	clr	a
      0003D5 08               [12] 1128 	inc	r0
      0003D6 36               [12] 1129 	addc	a,@r0
      0003D7 FE               [12] 1130 	mov	r6,a
      0003D8 08               [12] 1131 	inc	r0
      0003D9 86 07            [24] 1132 	mov	ar7,@r0
      0003DB 8D 82            [24] 1133 	mov	dpl,r5
      0003DD 8E 83            [24] 1134 	mov	dph,r6
      0003DF 8F F0            [24] 1135 	mov	b,r7
      0003E1 E4               [12] 1136 	clr	a
      0003E2 12 05 FA         [24] 1137 	lcall	__gptrput
                                   1138 ;	uart.h:194: break;
      0003E5 80 31            [24] 1139 	sjmp	00111$
      0003E7                       1140 00105$:
                                   1141 ;	uart.h:196: else *(dst+count)=recv;
      0003E7 A8 0B            [24] 1142 	mov	r0,_bp
      0003E9 08               [12] 1143 	inc	r0
      0003EA EB               [12] 1144 	mov	a,r3
      0003EB 26               [12] 1145 	add	a,@r0
      0003EC FD               [12] 1146 	mov	r5,a
      0003ED E4               [12] 1147 	clr	a
      0003EE 08               [12] 1148 	inc	r0
      0003EF 36               [12] 1149 	addc	a,@r0
      0003F0 FE               [12] 1150 	mov	r6,a
      0003F1 08               [12] 1151 	inc	r0
      0003F2 86 07            [24] 1152 	mov	ar7,@r0
      0003F4 8D 82            [24] 1153 	mov	dpl,r5
      0003F6 8E 83            [24] 1154 	mov	dph,r6
      0003F8 8F F0            [24] 1155 	mov	b,r7
      0003FA EA               [12] 1156 	mov	a,r2
      0003FB 12 05 FA         [24] 1157 	lcall	__gptrput
                                   1158 ;	uart.h:198: if(count==maxLength) 
      0003FE E5 0B            [12] 1159 	mov	a,_bp
      000400 24 FD            [12] 1160 	add	a,#0xfd
      000402 F8               [12] 1161 	mov	r0,a
      000403 E6               [12] 1162 	mov	a,@r0
      000404 B5 03 0C         [24] 1163 	cjne	a,ar3,00108$
                                   1164 ;	uart.h:200: *(dst+count)=0; // terminate string.
      000407 8D 82            [24] 1165 	mov	dpl,r5
      000409 8E 83            [24] 1166 	mov	dph,r6
      00040B 8F F0            [24] 1167 	mov	b,r7
      00040D E4               [12] 1168 	clr	a
      00040E 12 05 FA         [24] 1169 	lcall	__gptrput
                                   1170 ;	uart.h:201: break;
      000411 80 05            [24] 1171 	sjmp	00111$
      000413                       1172 00108$:
                                   1173 ;	uart.h:204: count++;
      000413 0B               [12] 1174 	inc	r3
      000414 8B 04            [24] 1175 	mov	ar4,r3
      000416 80 9F            [24] 1176 	sjmp	00110$
      000418                       1177 00111$:
                                   1178 ;	uart.h:208: return count;
      000418 8C 82            [24] 1179 	mov	dpl,r4
                                   1180 ;	uart.h:210: }
      00041A 85 0B 81         [24] 1181 	mov	sp,_bp
      00041D D0 0B            [24] 1182 	pop	_bp
      00041F 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'delay_ms'
                                   1186 ;------------------------------------------------------------
                                   1187 ;millisec                  Allocated to registers r6 r7 
                                   1188 ;i                         Allocated to registers r4 r5 
                                   1189 ;j                         Allocated to registers r3 
                                   1190 ;------------------------------------------------------------
                                   1191 ;	serialloader.h:8: void delay_ms(unsigned int millisec)
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function delay_ms
                                   1194 ;	-----------------------------------------
      000420                       1195 _delay_ms:
      000420 AE 82            [24] 1196 	mov	r6,dpl
      000422 AF 83            [24] 1197 	mov	r7,dph
                                   1198 ;	serialloader.h:10: for(unsigned int i=0;i<millisec;i++)for(unsigned char j=0;j<255;j++); //wait millisec * 1ms
      000424 7C 00            [12] 1199 	mov	r4,#0x00
      000426 7D 00            [12] 1200 	mov	r5,#0x00
      000428                       1201 00107$:
      000428 C3               [12] 1202 	clr	c
      000429 EC               [12] 1203 	mov	a,r4
      00042A 9E               [12] 1204 	subb	a,r6
      00042B ED               [12] 1205 	mov	a,r5
      00042C 9F               [12] 1206 	subb	a,r7
      00042D 50 11            [24] 1207 	jnc	00109$
      00042F 7B 00            [12] 1208 	mov	r3,#0x00
      000431                       1209 00104$:
      000431 BB FF 00         [24] 1210 	cjne	r3,#0xff,00130$
      000434                       1211 00130$:
      000434 50 03            [24] 1212 	jnc	00108$
      000436 0B               [12] 1213 	inc	r3
      000437 80 F8            [24] 1214 	sjmp	00104$
      000439                       1215 00108$:
      000439 0C               [12] 1216 	inc	r4
      00043A BC 00 EB         [24] 1217 	cjne	r4,#0x00,00107$
      00043D 0D               [12] 1218 	inc	r5
      00043E 80 E8            [24] 1219 	sjmp	00107$
      000440                       1220 00109$:
                                   1221 ;	serialloader.h:11: }
      000440 22               [24] 1222 	ret
                                   1223 ;------------------------------------------------------------
                                   1224 ;Allocation info for local variables in function 'SL_write'
                                   1225 ;------------------------------------------------------------
                                   1226 ;data                      Allocated to registers r5 
                                   1227 ;addr                      Allocated to registers r7 r6 
                                   1228 ;xram_addr                 Allocated to registers 
                                   1229 ;------------------------------------------------------------
                                   1230 ;	serialloader.h:13: void SL_write()
                                   1231 ;	-----------------------------------------
                                   1232 ;	 function SL_write
                                   1233 ;	-----------------------------------------
      000441                       1234 _SL_write:
                                   1235 ;	serialloader.h:19: while(UartReadReady()==0); //wait till we rcv data
      000441                       1236 00101$:
      000441 12 00 E3         [24] 1237 	lcall	_UartReadReady
      000444 E5 82            [12] 1238 	mov	a,dpl
      000446 60 F9            [24] 1239 	jz	00101$
                                   1240 ;	serialloader.h:22: addr = UartRead(); //msb
      000448 12 00 EE         [24] 1241 	lcall	_UartRead
                                   1242 ;	serialloader.h:23: addr = addr << 8;
      00044B AE 82            [24] 1243 	mov	r6,dpl
      00044D 7F 00            [12] 1244 	mov	r7,#0x00
                                   1245 ;	serialloader.h:24: addr |= UartRead(); //lsb
      00044F C0 07            [24] 1246 	push	ar7
      000451 C0 06            [24] 1247 	push	ar6
      000453 12 00 EE         [24] 1248 	lcall	_UartRead
      000456 AD 82            [24] 1249 	mov	r5,dpl
      000458 D0 06            [24] 1250 	pop	ar6
      00045A D0 07            [24] 1251 	pop	ar7
      00045C 7C 00            [12] 1252 	mov	r4,#0x00
      00045E ED               [12] 1253 	mov	a,r5
      00045F 42 07            [12] 1254 	orl	ar7,a
      000461 EC               [12] 1255 	mov	a,r4
      000462 42 06            [12] 1256 	orl	ar6,a
                                   1257 ;	serialloader.h:26: data = UartRead(); //read data
      000464 C0 07            [24] 1258 	push	ar7
      000466 C0 06            [24] 1259 	push	ar6
      000468 12 00 EE         [24] 1260 	lcall	_UartRead
      00046B AD 82            [24] 1261 	mov	r5,dpl
      00046D D0 06            [24] 1262 	pop	ar6
      00046F D0 07            [24] 1263 	pop	ar7
                                   1264 ;	serialloader.h:28: xram_addr = (__xdata char*) addr;
      000471 8F 82            [24] 1265 	mov	dpl,r7
      000473 8E 83            [24] 1266 	mov	dph,r6
                                   1267 ;	serialloader.h:30: *(xram_addr) = data; //write to xram
      000475 ED               [12] 1268 	mov	a,r5
      000476 F0               [24] 1269 	movx	@dptr,a
                                   1270 ;	serialloader.h:32: UartWrite('W'); //ack
      000477 75 82 57         [24] 1271 	mov	dpl,#0x57
                                   1272 ;	serialloader.h:34: }
      00047A 02 00 F7         [24] 1273 	ljmp	_UartWrite
                                   1274 ;------------------------------------------------------------
                                   1275 ;Allocation info for local variables in function 'SL_read'
                                   1276 ;------------------------------------------------------------
                                   1277 ;data                      Allocated to registers r7 
                                   1278 ;addr                      Allocated to registers r7 r6 
                                   1279 ;xram_addr                 Allocated to registers 
                                   1280 ;------------------------------------------------------------
                                   1281 ;	serialloader.h:36: void SL_read()
                                   1282 ;	-----------------------------------------
                                   1283 ;	 function SL_read
                                   1284 ;	-----------------------------------------
      00047D                       1285 _SL_read:
                                   1286 ;	serialloader.h:42: while(UartReadReady()==0); //wait till we rcv data
      00047D                       1287 00101$:
      00047D 12 00 E3         [24] 1288 	lcall	_UartReadReady
      000480 E5 82            [12] 1289 	mov	a,dpl
      000482 60 F9            [24] 1290 	jz	00101$
                                   1291 ;	serialloader.h:46: addr = UartRead(); //msb
      000484 12 00 EE         [24] 1292 	lcall	_UartRead
                                   1293 ;	serialloader.h:47: addr = addr << 8;
      000487 AE 82            [24] 1294 	mov	r6,dpl
      000489 7F 00            [12] 1295 	mov	r7,#0x00
                                   1296 ;	serialloader.h:48: addr |= UartRead(); //lsb
      00048B C0 07            [24] 1297 	push	ar7
      00048D C0 06            [24] 1298 	push	ar6
      00048F 12 00 EE         [24] 1299 	lcall	_UartRead
      000492 AD 82            [24] 1300 	mov	r5,dpl
      000494 D0 06            [24] 1301 	pop	ar6
      000496 D0 07            [24] 1302 	pop	ar7
      000498 7C 00            [12] 1303 	mov	r4,#0x00
      00049A ED               [12] 1304 	mov	a,r5
      00049B 42 07            [12] 1305 	orl	ar7,a
      00049D EC               [12] 1306 	mov	a,r4
      00049E 42 06            [12] 1307 	orl	ar6,a
                                   1308 ;	serialloader.h:50: xram_addr = (__xdata char*) addr;
      0004A0 8F 82            [24] 1309 	mov	dpl,r7
      0004A2 8E 83            [24] 1310 	mov	dph,r6
                                   1311 ;	serialloader.h:52: data = *(xram_addr); //read from xram
      0004A4 E0               [24] 1312 	movx	a,@dptr
                                   1313 ;	serialloader.h:54: UartWrite(data);
      0004A5 F5 82            [12] 1314 	mov	dpl,a
                                   1315 ;	serialloader.h:56: }
      0004A7 02 00 F7         [24] 1316 	ljmp	_UartWrite
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'SL_getcmd'
                                   1319 ;------------------------------------------------------------
                                   1320 ;cmd                       Allocated to registers r7 
                                   1321 ;------------------------------------------------------------
                                   1322 ;	serialloader.h:58: void SL_getcmd()
                                   1323 ;	-----------------------------------------
                                   1324 ;	 function SL_getcmd
                                   1325 ;	-----------------------------------------
      0004AA                       1326 _SL_getcmd:
                                   1327 ;	serialloader.h:61: while(UartReadReady()) UartRead(); //flush 
      0004AA                       1328 00101$:
      0004AA 12 00 E3         [24] 1329 	lcall	_UartReadReady
      0004AD E5 82            [12] 1330 	mov	a,dpl
      0004AF 60 05            [24] 1331 	jz	00104$
      0004B1 12 00 EE         [24] 1332 	lcall	_UartRead
                                   1333 ;	serialloader.h:63: while(UartReadReady()==0); //wait till we rcv data 
      0004B4 80 F4            [24] 1334 	sjmp	00101$
      0004B6                       1335 00104$:
      0004B6 12 00 E3         [24] 1336 	lcall	_UartReadReady
      0004B9 E5 82            [12] 1337 	mov	a,dpl
      0004BB 60 F9            [24] 1338 	jz	00104$
                                   1339 ;	serialloader.h:66: cmd = UartRead(); //read
      0004BD 12 00 EE         [24] 1340 	lcall	_UartRead
      0004C0 AF 82            [24] 1341 	mov	r7,dpl
                                   1342 ;	serialloader.h:68: switch(cmd)
      0004C2 BF 52 02         [24] 1343 	cjne	r7,#0x52,00144$
      0004C5 80 13            [24] 1344 	sjmp	00108$
      0004C7                       1345 00144$:
      0004C7 BF 56 02         [24] 1346 	cjne	r7,#0x56,00145$
      0004CA 80 05            [24] 1347 	sjmp	00107$
      0004CC                       1348 00145$:
                                   1349 ;	serialloader.h:70: case 'V':
      0004CC BF 57 11         [24] 1350 	cjne	r7,#0x57,00112$
      0004CF 80 0C            [24] 1351 	sjmp	00109$
      0004D1                       1352 00107$:
                                   1353 ;	serialloader.h:71: UartPrint("ISA_SERIAL_LOADER_V0.1:8052\n");
      0004D1 90 07 3A         [24] 1354 	mov	dptr,#___str_1
      0004D4 75 F0 80         [24] 1355 	mov	b,#0x80
                                   1356 ;	serialloader.h:72: break;
                                   1357 ;	serialloader.h:73: case 'R':
      0004D7 02 01 7D         [24] 1358 	ljmp	_UartPrint
      0004DA                       1359 00108$:
                                   1360 ;	serialloader.h:74: SL_read();
                                   1361 ;	serialloader.h:75: break;
                                   1362 ;	serialloader.h:76: case 'W':
      0004DA 02 04 7D         [24] 1363 	ljmp	_SL_read
      0004DD                       1364 00109$:
                                   1365 ;	serialloader.h:77: SL_write();
                                   1366 ;	serialloader.h:81: }
                                   1367 ;	serialloader.h:82: }
      0004DD 02 04 41         [24] 1368 	ljmp	_SL_write
      0004E0                       1369 00112$:
      0004E0 22               [24] 1370 	ret
                                   1371 ;------------------------------------------------------------
                                   1372 ;Allocation info for local variables in function 'main'
                                   1373 ;------------------------------------------------------------
                                   1374 ;	main.c:15: void main(void)
                                   1375 ;	-----------------------------------------
                                   1376 ;	 function main
                                   1377 ;	-----------------------------------------
      0004E1                       1378 _main:
                                   1379 ;	main.c:18: UartBegin();
      0004E1 12 00 D4         [24] 1380 	lcall	_UartBegin
                                   1381 ;	main.c:20: while(1)
      0004E4                       1382 00102$:
                                   1383 ;	main.c:23: SL_getcmd();
      0004E4 12 04 AA         [24] 1384 	lcall	_SL_getcmd
                                   1385 ;	main.c:28: }
      0004E7 80 FB            [24] 1386 	sjmp	00102$
                                   1387 ;------------------------------------------------------------
                                   1388 ;Allocation info for local variables in function 'delay'
                                   1389 ;------------------------------------------------------------
                                   1390 ;i                         Allocated to registers r6 r7 
                                   1391 ;j                         Allocated to registers r4 r5 
                                   1392 ;------------------------------------------------------------
                                   1393 ;	main.c:30: void delay(void)
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function delay
                                   1396 ;	-----------------------------------------
      0004E9                       1397 _delay:
                                   1398 ;	main.c:33: for(i=0;i<0xff;i++)
      0004E9 7E 00            [12] 1399 	mov	r6,#0x00
      0004EB 7F 00            [12] 1400 	mov	r7,#0x00
      0004ED                       1401 00106$:
                                   1402 ;	main.c:34: for(j=0;j<0xff;j++);
      0004ED 7C FF            [12] 1403 	mov	r4,#0xff
      0004EF 7D 00            [12] 1404 	mov	r5,#0x00
      0004F1                       1405 00105$:
      0004F1 EC               [12] 1406 	mov	a,r4
      0004F2 24 FF            [12] 1407 	add	a,#0xff
      0004F4 FA               [12] 1408 	mov	r2,a
      0004F5 ED               [12] 1409 	mov	a,r5
      0004F6 34 FF            [12] 1410 	addc	a,#0xff
      0004F8 FB               [12] 1411 	mov	r3,a
      0004F9 8A 04            [24] 1412 	mov	ar4,r2
      0004FB 8B 05            [24] 1413 	mov	ar5,r3
      0004FD EA               [12] 1414 	mov	a,r2
      0004FE 4B               [12] 1415 	orl	a,r3
      0004FF 70 F0            [24] 1416 	jnz	00105$
                                   1417 ;	main.c:33: for(i=0;i<0xff;i++)
      000501 0E               [12] 1418 	inc	r6
      000502 BE 00 01         [24] 1419 	cjne	r6,#0x00,00124$
      000505 0F               [12] 1420 	inc	r7
      000506                       1421 00124$:
      000506 C3               [12] 1422 	clr	c
      000507 EE               [12] 1423 	mov	a,r6
      000508 94 FF            [12] 1424 	subb	a,#0xff
      00050A EF               [12] 1425 	mov	a,r7
      00050B 64 80            [12] 1426 	xrl	a,#0x80
      00050D 94 80            [12] 1427 	subb	a,#0x80
      00050F 40 DC            [24] 1428 	jc	00106$
                                   1429 ;	main.c:35: }
      000511 22               [24] 1430 	ret
                                   1431 	.area CSEG    (CODE)
                                   1432 	.area CONST   (CODE)
                                   1433 	.area CONST   (CODE)
      000719                       1434 ___str_0:
      000719 4E 75 6D 62 65 72 20  1435 	.ascii "Number in Hex - eg(FE for 254): "
             69 6E 20 48 65 78 20
             2D 20 65 67 28 46 45
             20 66 6F 72 20 32 35
             34 29 3A 20
      000739 00                    1436 	.db 0x00
                                   1437 	.area CSEG    (CODE)
                                   1438 	.area CONST   (CODE)
      00073A                       1439 ___str_1:
      00073A 49 53 41 5F 53 45 52  1440 	.ascii "ISA_SERIAL_LOADER_V0.1:8052"
             49 41 4C 5F 4C 4F 41
             44 45 52 5F 56 30 2E
             31 3A 38 30 35 32
      000755 0A                    1441 	.db 0x0a
      000756 00                    1442 	.db 0x00
                                   1443 	.area CSEG    (CODE)
                                   1444 	.area XINIT   (CODE)
                                   1445 	.area CABS    (ABS,CODE)
