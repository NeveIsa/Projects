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
                                     13 	.globl _UartScanLine
                                     14 	.globl _UartScanByte
                                     15 	.globl _UartPrintNumber
                                     16 	.globl _UartWriteNumbers
                                     17 	.globl _UartWriteNumber
                                     18 	.globl _UartPrint
                                     19 	.globl _UartReadBuff
                                     20 	.globl _UartWriteBuff
                                     21 	.globl _UartWrite
                                     22 	.globl _UartRead
                                     23 	.globl _UartReadReady
                                     24 	.globl _UartBegin
                                     25 	.globl _dec2hexNibble
                                     26 	.globl _hex2dec
                                     27 	.globl _hexNibble2dec
                                     28 	.globl _TF2
                                     29 	.globl _EXF2
                                     30 	.globl _RCLK
                                     31 	.globl _TCLK
                                     32 	.globl _EXEN2
                                     33 	.globl _TR2
                                     34 	.globl _C_T2
                                     35 	.globl _CP_RL2
                                     36 	.globl _T2CON_7
                                     37 	.globl _T2CON_6
                                     38 	.globl _T2CON_5
                                     39 	.globl _T2CON_4
                                     40 	.globl _T2CON_3
                                     41 	.globl _T2CON_2
                                     42 	.globl _T2CON_1
                                     43 	.globl _T2CON_0
                                     44 	.globl _PT2
                                     45 	.globl _ET2
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _F1
                                     53 	.globl _P
                                     54 	.globl _PS
                                     55 	.globl _PT1
                                     56 	.globl _PX1
                                     57 	.globl _PT0
                                     58 	.globl _PX0
                                     59 	.globl _RD
                                     60 	.globl _WR
                                     61 	.globl _T1
                                     62 	.globl _T0
                                     63 	.globl _INT1
                                     64 	.globl _INT0
                                     65 	.globl _TXD
                                     66 	.globl _RXD
                                     67 	.globl _P3_7
                                     68 	.globl _P3_6
                                     69 	.globl _P3_5
                                     70 	.globl _P3_4
                                     71 	.globl _P3_3
                                     72 	.globl _P3_2
                                     73 	.globl _P3_1
                                     74 	.globl _P3_0
                                     75 	.globl _EA
                                     76 	.globl _ES
                                     77 	.globl _ET1
                                     78 	.globl _EX1
                                     79 	.globl _ET0
                                     80 	.globl _EX0
                                     81 	.globl _P2_7
                                     82 	.globl _P2_6
                                     83 	.globl _P2_5
                                     84 	.globl _P2_4
                                     85 	.globl _P2_3
                                     86 	.globl _P2_2
                                     87 	.globl _P2_1
                                     88 	.globl _P2_0
                                     89 	.globl _SM0
                                     90 	.globl _SM1
                                     91 	.globl _SM2
                                     92 	.globl _REN
                                     93 	.globl _TB8
                                     94 	.globl _RB8
                                     95 	.globl _TI
                                     96 	.globl _RI
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _TF1
                                    106 	.globl _TR1
                                    107 	.globl _TF0
                                    108 	.globl _TR0
                                    109 	.globl _IE1
                                    110 	.globl _IT1
                                    111 	.globl _IE0
                                    112 	.globl _IT0
                                    113 	.globl _P0_7
                                    114 	.globl _P0_6
                                    115 	.globl _P0_5
                                    116 	.globl _P0_4
                                    117 	.globl _P0_3
                                    118 	.globl _P0_2
                                    119 	.globl _P0_1
                                    120 	.globl _P0_0
                                    121 	.globl _TH2
                                    122 	.globl _TL2
                                    123 	.globl _RCAP2H
                                    124 	.globl _RCAP2L
                                    125 	.globl _T2CON
                                    126 	.globl _B
                                    127 	.globl _ACC
                                    128 	.globl _PSW
                                    129 	.globl _IP
                                    130 	.globl _P3
                                    131 	.globl _IE
                                    132 	.globl _P2
                                    133 	.globl _SBUF
                                    134 	.globl _SCON
                                    135 	.globl _P1
                                    136 	.globl _TH1
                                    137 	.globl _TH0
                                    138 	.globl _TL1
                                    139 	.globl _TL0
                                    140 	.globl _TMOD
                                    141 	.globl _TCON
                                    142 	.globl _PCON
                                    143 	.globl _DPH
                                    144 	.globl _DPL
                                    145 	.globl _SP
                                    146 	.globl _P0
                                    147 	.globl _UartReadBuff_PARM_2
                                    148 	.globl _UartWriteBuff_PARM_2
                                    149 	.globl _hex2dec_PARM_2
                                    150 	.globl _delay
                                    151 ;--------------------------------------------------------
                                    152 ; special function registers
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0	=	0x0080
                           000081   157 _SP	=	0x0081
                           000082   158 _DPL	=	0x0082
                           000083   159 _DPH	=	0x0083
                           000087   160 _PCON	=	0x0087
                           000088   161 _TCON	=	0x0088
                           000089   162 _TMOD	=	0x0089
                           00008A   163 _TL0	=	0x008a
                           00008B   164 _TL1	=	0x008b
                           00008C   165 _TH0	=	0x008c
                           00008D   166 _TH1	=	0x008d
                           000090   167 _P1	=	0x0090
                           000098   168 _SCON	=	0x0098
                           000099   169 _SBUF	=	0x0099
                           0000A0   170 _P2	=	0x00a0
                           0000A8   171 _IE	=	0x00a8
                           0000B0   172 _P3	=	0x00b0
                           0000B8   173 _IP	=	0x00b8
                           0000D0   174 _PSW	=	0x00d0
                           0000E0   175 _ACC	=	0x00e0
                           0000F0   176 _B	=	0x00f0
                           0000C8   177 _T2CON	=	0x00c8
                           0000CA   178 _RCAP2L	=	0x00ca
                           0000CB   179 _RCAP2H	=	0x00cb
                           0000CC   180 _TL2	=	0x00cc
                           0000CD   181 _TH2	=	0x00cd
                                    182 ;--------------------------------------------------------
                                    183 ; special function bits
                                    184 ;--------------------------------------------------------
                                    185 	.area RSEG    (ABS,DATA)
      000000                        186 	.org 0x0000
                           000080   187 _P0_0	=	0x0080
                           000081   188 _P0_1	=	0x0081
                           000082   189 _P0_2	=	0x0082
                           000083   190 _P0_3	=	0x0083
                           000084   191 _P0_4	=	0x0084
                           000085   192 _P0_5	=	0x0085
                           000086   193 _P0_6	=	0x0086
                           000087   194 _P0_7	=	0x0087
                           000088   195 _IT0	=	0x0088
                           000089   196 _IE0	=	0x0089
                           00008A   197 _IT1	=	0x008a
                           00008B   198 _IE1	=	0x008b
                           00008C   199 _TR0	=	0x008c
                           00008D   200 _TF0	=	0x008d
                           00008E   201 _TR1	=	0x008e
                           00008F   202 _TF1	=	0x008f
                           000090   203 _P1_0	=	0x0090
                           000091   204 _P1_1	=	0x0091
                           000092   205 _P1_2	=	0x0092
                           000093   206 _P1_3	=	0x0093
                           000094   207 _P1_4	=	0x0094
                           000095   208 _P1_5	=	0x0095
                           000096   209 _P1_6	=	0x0096
                           000097   210 _P1_7	=	0x0097
                           000098   211 _RI	=	0x0098
                           000099   212 _TI	=	0x0099
                           00009A   213 _RB8	=	0x009a
                           00009B   214 _TB8	=	0x009b
                           00009C   215 _REN	=	0x009c
                           00009D   216 _SM2	=	0x009d
                           00009E   217 _SM1	=	0x009e
                           00009F   218 _SM0	=	0x009f
                           0000A0   219 _P2_0	=	0x00a0
                           0000A1   220 _P2_1	=	0x00a1
                           0000A2   221 _P2_2	=	0x00a2
                           0000A3   222 _P2_3	=	0x00a3
                           0000A4   223 _P2_4	=	0x00a4
                           0000A5   224 _P2_5	=	0x00a5
                           0000A6   225 _P2_6	=	0x00a6
                           0000A7   226 _P2_7	=	0x00a7
                           0000A8   227 _EX0	=	0x00a8
                           0000A9   228 _ET0	=	0x00a9
                           0000AA   229 _EX1	=	0x00aa
                           0000AB   230 _ET1	=	0x00ab
                           0000AC   231 _ES	=	0x00ac
                           0000AF   232 _EA	=	0x00af
                           0000B0   233 _P3_0	=	0x00b0
                           0000B1   234 _P3_1	=	0x00b1
                           0000B2   235 _P3_2	=	0x00b2
                           0000B3   236 _P3_3	=	0x00b3
                           0000B4   237 _P3_4	=	0x00b4
                           0000B5   238 _P3_5	=	0x00b5
                           0000B6   239 _P3_6	=	0x00b6
                           0000B7   240 _P3_7	=	0x00b7
                           0000B0   241 _RXD	=	0x00b0
                           0000B1   242 _TXD	=	0x00b1
                           0000B2   243 _INT0	=	0x00b2
                           0000B3   244 _INT1	=	0x00b3
                           0000B4   245 _T0	=	0x00b4
                           0000B5   246 _T1	=	0x00b5
                           0000B6   247 _WR	=	0x00b6
                           0000B7   248 _RD	=	0x00b7
                           0000B8   249 _PX0	=	0x00b8
                           0000B9   250 _PT0	=	0x00b9
                           0000BA   251 _PX1	=	0x00ba
                           0000BB   252 _PT1	=	0x00bb
                           0000BC   253 _PS	=	0x00bc
                           0000D0   254 _P	=	0x00d0
                           0000D1   255 _F1	=	0x00d1
                           0000D2   256 _OV	=	0x00d2
                           0000D3   257 _RS0	=	0x00d3
                           0000D4   258 _RS1	=	0x00d4
                           0000D5   259 _F0	=	0x00d5
                           0000D6   260 _AC	=	0x00d6
                           0000D7   261 _CY	=	0x00d7
                           0000AD   262 _ET2	=	0x00ad
                           0000BD   263 _PT2	=	0x00bd
                           0000C8   264 _T2CON_0	=	0x00c8
                           0000C9   265 _T2CON_1	=	0x00c9
                           0000CA   266 _T2CON_2	=	0x00ca
                           0000CB   267 _T2CON_3	=	0x00cb
                           0000CC   268 _T2CON_4	=	0x00cc
                           0000CD   269 _T2CON_5	=	0x00cd
                           0000CE   270 _T2CON_6	=	0x00ce
                           0000CF   271 _T2CON_7	=	0x00cf
                           0000C8   272 _CP_RL2	=	0x00c8
                           0000C9   273 _C_T2	=	0x00c9
                           0000CA   274 _TR2	=	0x00ca
                           0000CB   275 _EXEN2	=	0x00cb
                           0000CC   276 _TCLK	=	0x00cc
                           0000CD   277 _RCLK	=	0x00cd
                           0000CE   278 _EXF2	=	0x00ce
                           0000CF   279 _TF2	=	0x00cf
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable register banks
                                    282 ;--------------------------------------------------------
                                    283 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        284 	.ds 8
                                    285 ;--------------------------------------------------------
                                    286 ; internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area DSEG    (DATA)
      000008                        289 _hex2dec_PARM_2:
      000008                        290 	.ds 1
      000009                        291 _UartWriteBuff_PARM_2:
      000009                        292 	.ds 1
      00000A                        293 _UartReadBuff_PARM_2:
      00000A                        294 	.ds 1
                                    295 ;--------------------------------------------------------
                                    296 ; overlayable items in internal ram 
                                    297 ;--------------------------------------------------------
                                    298 	.area	OSEG    (OVR,DATA)
                                    299 	.area	OSEG    (OVR,DATA)
                                    300 	.area	OSEG    (OVR,DATA)
                                    301 	.area	OSEG    (OVR,DATA)
                                    302 	.area	OSEG    (OVR,DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; Stack segment in internal ram 
                                    305 ;--------------------------------------------------------
                                    306 	.area	SSEG
      00001B                        307 __start__stack:
      00001B                        308 	.ds	1
                                    309 
                                    310 ;--------------------------------------------------------
                                    311 ; indirectly addressable internal ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area ISEG    (DATA)
      000010                        314 _main_fname_65536_45:
      000010                        315 	.ds 11
                                    316 ;--------------------------------------------------------
                                    317 ; absolute internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area IABS    (ABS,DATA)
                                    320 	.area IABS    (ABS,DATA)
                                    321 ;--------------------------------------------------------
                                    322 ; bit data
                                    323 ;--------------------------------------------------------
                                    324 	.area BSEG    (BIT)
                                    325 ;--------------------------------------------------------
                                    326 ; paged external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area PSEG    (PAG,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XSEG    (XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; absolute external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XABS    (ABS,XDATA)
                                    337 ;--------------------------------------------------------
                                    338 ; external initialized ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area XISEG   (XDATA)
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT0 (CODE)
                                    343 	.area GSINIT1 (CODE)
                                    344 	.area GSINIT2 (CODE)
                                    345 	.area GSINIT3 (CODE)
                                    346 	.area GSINIT4 (CODE)
                                    347 	.area GSINIT5 (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area CSEG    (CODE)
                                    351 ;--------------------------------------------------------
                                    352 ; interrupt vector 
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
      000000                        355 __interrupt_vect:
      000000 02 00 06         [24]  356 	ljmp	__sdcc_gsinit_startup
                                    357 ;--------------------------------------------------------
                                    358 ; global & static initialisations
                                    359 ;--------------------------------------------------------
                                    360 	.area HOME    (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.area GSFINAL (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.globl __sdcc_gsinit_startup
                                    365 	.globl __sdcc_program_startup
                                    366 	.globl __start__stack
                                    367 	.globl __mcs51_genXINIT
                                    368 	.globl __mcs51_genXRAMCLEAR
                                    369 	.globl __mcs51_genRAMCLEAR
                                    370 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  371 	ljmp	__sdcc_program_startup
                                    372 ;--------------------------------------------------------
                                    373 ; Home
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
                                    376 	.area HOME    (CODE)
      000003                        377 __sdcc_program_startup:
      000003 02 04 2D         [24]  378 	ljmp	_main
                                    379 ;	return from main will return to caller
                                    380 ;--------------------------------------------------------
                                    381 ; code
                                    382 ;--------------------------------------------------------
                                    383 	.area CSEG    (CODE)
                                    384 ;------------------------------------------------------------
                                    385 ;Allocation info for local variables in function 'hexNibble2dec'
                                    386 ;------------------------------------------------------------
                                    387 ;nibble                    Allocated to registers r7 
                                    388 ;------------------------------------------------------------
                                    389 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    390 ;	-----------------------------------------
                                    391 ;	 function hexNibble2dec
                                    392 ;	-----------------------------------------
      000062                        393 _hexNibble2dec:
                           000007   394 	ar7 = 0x07
                           000006   395 	ar6 = 0x06
                           000005   396 	ar5 = 0x05
                           000004   397 	ar4 = 0x04
                           000003   398 	ar3 = 0x03
                           000002   399 	ar2 = 0x02
                           000001   400 	ar1 = 0x01
                           000000   401 	ar0 = 0x00
      000062 AF 82            [24]  402 	mov	r7,dpl
                                    403 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      000064 BF 30 00         [24]  404 	cjne	r7,#0x30,00139$
      000067                        405 00139$:
      000067 40 0D            [24]  406 	jc	00110$
      000069 EF               [12]  407 	mov	a,r7
      00006A 24 C6            [12]  408 	add	a,#0xff - 0x39
      00006C 40 08            [24]  409 	jc	00110$
      00006E 8F 06            [24]  410 	mov	ar6,r7
      000070 EE               [12]  411 	mov	a,r6
      000071 24 D0            [12]  412 	add	a,#0xd0
      000073 F5 82            [12]  413 	mov	dpl,a
      000075 22               [24]  414 	ret
      000076                        415 00110$:
                                    416 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      000076 BF 41 00         [24]  417 	cjne	r7,#0x41,00142$
      000079                        418 00142$:
      000079 40 0D            [24]  419 	jc	00106$
      00007B EF               [12]  420 	mov	a,r7
      00007C 24 B9            [12]  421 	add	a,#0xff - 0x46
      00007E 40 08            [24]  422 	jc	00106$
      000080 8F 06            [24]  423 	mov	ar6,r7
      000082 74 C9            [12]  424 	mov	a,#0xc9
      000084 2E               [12]  425 	add	a,r6
      000085 F5 82            [12]  426 	mov	dpl,a
      000087 22               [24]  427 	ret
      000088                        428 00106$:
                                    429 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      000088 BF 61 00         [24]  430 	cjne	r7,#0x61,00145$
      00008B                        431 00145$:
      00008B 40 0B            [24]  432 	jc	00102$
      00008D EF               [12]  433 	mov	a,r7
      00008E 24 99            [12]  434 	add	a,#0xff - 0x66
      000090 40 06            [24]  435 	jc	00102$
      000092 74 A9            [12]  436 	mov	a,#0xa9
      000094 2F               [12]  437 	add	a,r7
      000095 F5 82            [12]  438 	mov	dpl,a
      000097 22               [24]  439 	ret
      000098                        440 00102$:
                                    441 ;	uart.h:11: else return 0;
      000098 75 82 00         [24]  442 	mov	dpl,#0x00
                                    443 ;	uart.h:12: }
      00009B 22               [24]  444 	ret
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'hex2dec'
                                    447 ;------------------------------------------------------------
                                    448 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    449 ;MSnibble                  Allocated to registers r7 
                                    450 ;------------------------------------------------------------
                                    451 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    452 ;	-----------------------------------------
                                    453 ;	 function hex2dec
                                    454 ;	-----------------------------------------
      00009C                        455 _hex2dec:
                                    456 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      00009C 12 00 62         [24]  457 	lcall	_hexNibble2dec
      00009F E5 82            [12]  458 	mov	a,dpl
      0000A1 C4               [12]  459 	swap	a
      0000A2 54 F0            [12]  460 	anl	a,#0xf0
      0000A4 FF               [12]  461 	mov	r7,a
      0000A5 85 08 82         [24]  462 	mov	dpl,_hex2dec_PARM_2
      0000A8 C0 07            [24]  463 	push	ar7
      0000AA 12 00 62         [24]  464 	lcall	_hexNibble2dec
      0000AD AE 82            [24]  465 	mov	r6,dpl
      0000AF D0 07            [24]  466 	pop	ar7
      0000B1 EE               [12]  467 	mov	a,r6
      0000B2 2F               [12]  468 	add	a,r7
      0000B3 F5 82            [12]  469 	mov	dpl,a
                                    470 ;	uart.h:18: }
      0000B5 22               [24]  471 	ret
                                    472 ;------------------------------------------------------------
                                    473 ;Allocation info for local variables in function 'dec2hexNibble'
                                    474 ;------------------------------------------------------------
                                    475 ;dec                       Allocated to registers r7 
                                    476 ;------------------------------------------------------------
                                    477 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    478 ;	-----------------------------------------
                                    479 ;	 function dec2hexNibble
                                    480 ;	-----------------------------------------
      0000B6                        481 _dec2hexNibble:
                                    482 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000B6 E5 82            [12]  483 	mov	a,dpl
      0000B8 FF               [12]  484 	mov	r7,a
      0000B9 24 F0            [12]  485 	add	a,#0xff - 0x0f
      0000BB 50 04            [24]  486 	jnc	00102$
      0000BD 75 82 58         [24]  487 	mov	dpl,#0x58
      0000C0 22               [24]  488 	ret
      0000C1                        489 00102$:
                                    490 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C1 EF               [12]  491 	mov	a,r7
      0000C2 24 F6            [12]  492 	add	a,#0xff - 0x09
      0000C4 40 08            [24]  493 	jc	00104$
      0000C6 8F 06            [24]  494 	mov	ar6,r7
      0000C8 74 30            [12]  495 	mov	a,#0x30
      0000CA 2E               [12]  496 	add	a,r6
      0000CB F5 82            [12]  497 	mov	dpl,a
      0000CD 22               [24]  498 	ret
      0000CE                        499 00104$:
                                    500 ;	uart.h:27: else return 'A' + dec - 10;
      0000CE 74 37            [12]  501 	mov	a,#0x37
      0000D0 2F               [12]  502 	add	a,r7
      0000D1 F5 82            [12]  503 	mov	dpl,a
                                    504 ;	uart.h:28: }
      0000D3 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'UartBegin'
                                    508 ;------------------------------------------------------------
                                    509 ;	uart.h:33: void UartBegin()
                                    510 ;	-----------------------------------------
                                    511 ;	 function UartBegin
                                    512 ;	-----------------------------------------
      0000D4                        513 _UartBegin:
                                    514 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000D4 75 89 20         [24]  515 	mov	_TMOD,#0x20
                                    516 ;	uart.h:39: TH1 = 0XF3; //2400
      0000D7 75 8D F3         [24]  517 	mov	_TH1,#0xf3
                                    518 ;	uart.h:40: SCON = 0X50;
      0000DA 75 98 50         [24]  519 	mov	_SCON,#0x50
                                    520 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000DD 43 87 80         [24]  521 	orl	_PCON,#0x80
                                    522 ;	uart.h:44: TR1 = 1; //START TIMER
                                    523 ;	assignBit
      0000E0 D2 8E            [12]  524 	setb	_TR1
                                    525 ;	uart.h:45: }
      0000E2 22               [24]  526 	ret
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'UartReadReady'
                                    529 ;------------------------------------------------------------
                                    530 ;	uart.h:47: unsigned char UartReadReady()
                                    531 ;	-----------------------------------------
                                    532 ;	 function UartReadReady
                                    533 ;	-----------------------------------------
      0000E3                        534 _UartReadReady:
                                    535 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000E3 20 98 04         [24]  536 	jb	_RI,00102$
      0000E6 75 82 00         [24]  537 	mov	dpl,#0x00
      0000E9 22               [24]  538 	ret
      0000EA                        539 00102$:
                                    540 ;	uart.h:50: else return 1; //received and ready
      0000EA 75 82 01         [24]  541 	mov	dpl,#0x01
                                    542 ;	uart.h:51: }
      0000ED 22               [24]  543 	ret
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'UartRead'
                                    546 ;------------------------------------------------------------
                                    547 ;value                     Allocated to registers 
                                    548 ;------------------------------------------------------------
                                    549 ;	uart.h:53: unsigned char UartRead()
                                    550 ;	-----------------------------------------
                                    551 ;	 function UartRead
                                    552 ;	-----------------------------------------
      0000EE                        553 _UartRead:
                                    554 ;	uart.h:56: while(RI==0); //wait till RX
      0000EE                        555 00101$:
                                    556 ;	uart.h:57: RI=0;
                                    557 ;	assignBit
      0000EE 10 98 02         [24]  558 	jbc	_RI,00114$
      0000F1 80 FB            [24]  559 	sjmp	00101$
      0000F3                        560 00114$:
                                    561 ;	uart.h:58: value = SBUF;
      0000F3 85 99 82         [24]  562 	mov	dpl,_SBUF
                                    563 ;	uart.h:59: return value;
                                    564 ;	uart.h:60: }
      0000F6 22               [24]  565 	ret
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'UartWrite'
                                    568 ;------------------------------------------------------------
                                    569 ;value                     Allocated to registers 
                                    570 ;------------------------------------------------------------
                                    571 ;	uart.h:63: void UartWrite(unsigned char value)
                                    572 ;	-----------------------------------------
                                    573 ;	 function UartWrite
                                    574 ;	-----------------------------------------
      0000F7                        575 _UartWrite:
      0000F7 85 82 99         [24]  576 	mov	_SBUF,dpl
                                    577 ;	uart.h:66: while(TI==0); // wait till TX
      0000FA                        578 00101$:
                                    579 ;	uart.h:67: TI=0;
                                    580 ;	assignBit
      0000FA 10 99 02         [24]  581 	jbc	_TI,00114$
      0000FD 80 FB            [24]  582 	sjmp	00101$
      0000FF                        583 00114$:
                                    584 ;	uart.h:68: }
      0000FF 22               [24]  585 	ret
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'UartWriteBuff'
                                    588 ;------------------------------------------------------------
                                    589 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    590 ;p                         Allocated to registers r5 r6 r7 
                                    591 ;i                         Allocated to registers r4 
                                    592 ;------------------------------------------------------------
                                    593 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    594 ;	-----------------------------------------
                                    595 ;	 function UartWriteBuff
                                    596 ;	-----------------------------------------
      000100                        597 _UartWriteBuff:
      000100 AD 82            [24]  598 	mov	r5,dpl
      000102 AE 83            [24]  599 	mov	r6,dph
      000104 AF F0            [24]  600 	mov	r7,b
                                    601 ;	uart.h:73: for (i=0;i<length;i++)
      000106 7C 00            [12]  602 	mov	r4,#0x00
      000108                        603 00103$:
      000108 C3               [12]  604 	clr	c
      000109 EC               [12]  605 	mov	a,r4
      00010A 95 09            [12]  606 	subb	a,_UartWriteBuff_PARM_2
      00010C 50 29            [24]  607 	jnc	00105$
                                    608 ;	uart.h:75: UartWrite(p[i]);
      00010E EC               [12]  609 	mov	a,r4
      00010F 2D               [12]  610 	add	a,r5
      000110 F9               [12]  611 	mov	r1,a
      000111 E4               [12]  612 	clr	a
      000112 3E               [12]  613 	addc	a,r6
      000113 FA               [12]  614 	mov	r2,a
      000114 8F 03            [24]  615 	mov	ar3,r7
      000116 89 82            [24]  616 	mov	dpl,r1
      000118 8A 83            [24]  617 	mov	dph,r2
      00011A 8B F0            [24]  618 	mov	b,r3
      00011C 12 06 15         [24]  619 	lcall	__gptrget
      00011F F5 82            [12]  620 	mov	dpl,a
      000121 C0 07            [24]  621 	push	ar7
      000123 C0 06            [24]  622 	push	ar6
      000125 C0 05            [24]  623 	push	ar5
      000127 C0 04            [24]  624 	push	ar4
      000129 12 00 F7         [24]  625 	lcall	_UartWrite
      00012C D0 04            [24]  626 	pop	ar4
      00012E D0 05            [24]  627 	pop	ar5
      000130 D0 06            [24]  628 	pop	ar6
      000132 D0 07            [24]  629 	pop	ar7
                                    630 ;	uart.h:73: for (i=0;i<length;i++)
      000134 0C               [12]  631 	inc	r4
      000135 80 D1            [24]  632 	sjmp	00103$
      000137                        633 00105$:
                                    634 ;	uart.h:77: }
      000137 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'UartReadBuff'
                                    638 ;------------------------------------------------------------
                                    639 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    640 ;p                         Allocated to registers r5 r6 r7 
                                    641 ;i                         Allocated to registers r4 
                                    642 ;------------------------------------------------------------
                                    643 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    644 ;	-----------------------------------------
                                    645 ;	 function UartReadBuff
                                    646 ;	-----------------------------------------
      000138                        647 _UartReadBuff:
      000138 AD 82            [24]  648 	mov	r5,dpl
      00013A AE 83            [24]  649 	mov	r6,dph
      00013C AF F0            [24]  650 	mov	r7,b
                                    651 ;	uart.h:82: for (i=0;i<length;i++)
      00013E 7C 00            [12]  652 	mov	r4,#0x00
      000140                        653 00103$:
      000140 C3               [12]  654 	clr	c
      000141 EC               [12]  655 	mov	a,r4
      000142 95 0A            [12]  656 	subb	a,_UartReadBuff_PARM_2
      000144 50 36            [24]  657 	jnc	00105$
                                    658 ;	uart.h:84: p[i] = UartRead();
      000146 EC               [12]  659 	mov	a,r4
      000147 2D               [12]  660 	add	a,r5
      000148 F9               [12]  661 	mov	r1,a
      000149 E4               [12]  662 	clr	a
      00014A 3E               [12]  663 	addc	a,r6
      00014B FA               [12]  664 	mov	r2,a
      00014C 8F 03            [24]  665 	mov	ar3,r7
      00014E C0 07            [24]  666 	push	ar7
      000150 C0 06            [24]  667 	push	ar6
      000152 C0 05            [24]  668 	push	ar5
      000154 C0 04            [24]  669 	push	ar4
      000156 C0 03            [24]  670 	push	ar3
      000158 C0 02            [24]  671 	push	ar2
      00015A C0 01            [24]  672 	push	ar1
      00015C 12 00 EE         [24]  673 	lcall	_UartRead
      00015F A8 82            [24]  674 	mov	r0,dpl
      000161 D0 01            [24]  675 	pop	ar1
      000163 D0 02            [24]  676 	pop	ar2
      000165 D0 03            [24]  677 	pop	ar3
      000167 D0 04            [24]  678 	pop	ar4
      000169 D0 05            [24]  679 	pop	ar5
      00016B D0 06            [24]  680 	pop	ar6
      00016D D0 07            [24]  681 	pop	ar7
      00016F 89 82            [24]  682 	mov	dpl,r1
      000171 8A 83            [24]  683 	mov	dph,r2
      000173 8B F0            [24]  684 	mov	b,r3
      000175 E8               [12]  685 	mov	a,r0
      000176 12 05 84         [24]  686 	lcall	__gptrput
                                    687 ;	uart.h:82: for (i=0;i<length;i++)
      000179 0C               [12]  688 	inc	r4
      00017A 80 C4            [24]  689 	sjmp	00103$
      00017C                        690 00105$:
                                    691 ;	uart.h:86: }
      00017C 22               [24]  692 	ret
                                    693 ;------------------------------------------------------------
                                    694 ;Allocation info for local variables in function 'UartPrint'
                                    695 ;------------------------------------------------------------
                                    696 ;p                         Allocated to registers 
                                    697 ;------------------------------------------------------------
                                    698 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    699 ;	-----------------------------------------
                                    700 ;	 function UartPrint
                                    701 ;	-----------------------------------------
      00017D                        702 _UartPrint:
      00017D AD 82            [24]  703 	mov	r5,dpl
      00017F AE 83            [24]  704 	mov	r6,dph
      000181 AF F0            [24]  705 	mov	r7,b
                                    706 ;	uart.h:90: do
      000183                        707 00101$:
                                    708 ;	uart.h:92: UartWrite(*p);
      000183 8D 82            [24]  709 	mov	dpl,r5
      000185 8E 83            [24]  710 	mov	dph,r6
      000187 8F F0            [24]  711 	mov	b,r7
      000189 12 06 15         [24]  712 	lcall	__gptrget
      00018C FC               [12]  713 	mov	r4,a
      00018D A3               [24]  714 	inc	dptr
      00018E AD 82            [24]  715 	mov	r5,dpl
      000190 AE 83            [24]  716 	mov	r6,dph
      000192 8C 82            [24]  717 	mov	dpl,r4
      000194 C0 07            [24]  718 	push	ar7
      000196 C0 06            [24]  719 	push	ar6
      000198 C0 05            [24]  720 	push	ar5
      00019A 12 00 F7         [24]  721 	lcall	_UartWrite
      00019D D0 05            [24]  722 	pop	ar5
      00019F D0 06            [24]  723 	pop	ar6
      0001A1 D0 07            [24]  724 	pop	ar7
                                    725 ;	uart.h:93: }while(*(++p)!=0);
      0001A3 8D 82            [24]  726 	mov	dpl,r5
      0001A5 8E 83            [24]  727 	mov	dph,r6
      0001A7 8F F0            [24]  728 	mov	b,r7
      0001A9 12 06 15         [24]  729 	lcall	__gptrget
      0001AC 70 D5            [24]  730 	jnz	00101$
                                    731 ;	uart.h:94: }
      0001AE 22               [24]  732 	ret
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'UartWriteNumber'
                                    735 ;------------------------------------------------------------
                                    736 ;format                    Allocated to stack - _bp -3
                                    737 ;num                       Allocated to registers r7 
                                    738 ;msd                       Allocated to registers r4 
                                    739 ;lsd                       Allocated to registers r6 
                                    740 ;extra                     Allocated to registers r3 
                                    741 ;------------------------------------------------------------
                                    742 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    743 ;	-----------------------------------------
                                    744 ;	 function UartWriteNumber
                                    745 ;	-----------------------------------------
      0001AF                        746 _UartWriteNumber:
      0001AF C0 0B            [24]  747 	push	_bp
      0001B1 85 81 0B         [24]  748 	mov	_bp,sp
      0001B4 AF 82            [24]  749 	mov	r7,dpl
                                    750 ;	uart.h:104: if(format==HEX)
      0001B6 E5 0B            [12]  751 	mov	a,_bp
      0001B8 24 FD            [12]  752 	add	a,#0xfd
      0001BA F8               [12]  753 	mov	r0,a
      0001BB E6               [12]  754 	mov	a,@r0
                                    755 ;	uart.h:106: msd = num/16;
      0001BC 70 32            [24]  756 	jnz	00104$
      0001BE 8F 05            [24]  757 	mov	ar5,r7
      0001C0 FE               [12]  758 	mov	r6,a
      0001C1 75 0C 10         [24]  759 	mov	__divsint_PARM_2,#0x10
                                    760 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001C4 8E 0D            [24]  761 	mov	(__divsint_PARM_2 + 1),r6
      0001C6 8D 82            [24]  762 	mov	dpl,r5
      0001C8 8E 83            [24]  763 	mov	dph,r6
      0001CA C0 06            [24]  764 	push	ar6
      0001CC C0 05            [24]  765 	push	ar5
      0001CE 12 06 67         [24]  766 	lcall	__divsint
      0001D1 AB 82            [24]  767 	mov	r3,dpl
      0001D3 D0 05            [24]  768 	pop	ar5
      0001D5 D0 06            [24]  769 	pop	ar6
                                    770 ;	uart.h:107: lsd = num%16;
      0001D7 53 05 0F         [24]  771 	anl	ar5,#0x0f
                                    772 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001DA 8B 82            [24]  773 	mov	dpl,r3
      0001DC C0 05            [24]  774 	push	ar5
      0001DE 12 00 B6         [24]  775 	lcall	_dec2hexNibble
      0001E1 12 00 F7         [24]  776 	lcall	_UartWrite
      0001E4 D0 05            [24]  777 	pop	ar5
                                    778 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001E6 8D 82            [24]  779 	mov	dpl,r5
      0001E8 12 00 B6         [24]  780 	lcall	_dec2hexNibble
      0001EB 12 00 F7         [24]  781 	lcall	_UartWrite
      0001EE 80 7B            [24]  782 	sjmp	00106$
      0001F0                        783 00104$:
                                    784 ;	uart.h:112: else if(format==DEC)
      0001F0 E5 0B            [12]  785 	mov	a,_bp
      0001F2 24 FD            [12]  786 	add	a,#0xfd
      0001F4 F8               [12]  787 	mov	r0,a
      0001F5 B6 01 73         [24]  788 	cjne	@r0,#0x01,00106$
                                    789 ;	uart.h:114: msd = num/100; // 100s place
      0001F8 7E 00            [12]  790 	mov	r6,#0x00
      0001FA 75 0C 64         [24]  791 	mov	__divsint_PARM_2,#0x64
                                    792 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001FD 8E 0D            [24]  793 	mov	(__divsint_PARM_2 + 1),r6
      0001FF 8F 82            [24]  794 	mov	dpl,r7
      000201 8E 83            [24]  795 	mov	dph,r6
      000203 C0 07            [24]  796 	push	ar7
      000205 C0 06            [24]  797 	push	ar6
      000207 12 06 67         [24]  798 	lcall	__divsint
      00020A AC 82            [24]  799 	mov	r4,dpl
      00020C D0 06            [24]  800 	pop	ar6
      00020E D0 07            [24]  801 	pop	ar7
                                    802 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000210 75 0C 64         [24]  803 	mov	__modsint_PARM_2,#0x64
      000213 75 0D 00         [24]  804 	mov	(__modsint_PARM_2 + 1),#0x00
      000216 8F 82            [24]  805 	mov	dpl,r7
      000218 8E 83            [24]  806 	mov	dph,r6
      00021A C0 07            [24]  807 	push	ar7
      00021C C0 06            [24]  808 	push	ar6
      00021E C0 04            [24]  809 	push	ar4
      000220 12 06 31         [24]  810 	lcall	__modsint
      000223 75 0C 0A         [24]  811 	mov	__divsint_PARM_2,#0x0a
      000226 75 0D 00         [24]  812 	mov	(__divsint_PARM_2 + 1),#0x00
      000229 12 06 67         [24]  813 	lcall	__divsint
      00022C AB 82            [24]  814 	mov	r3,dpl
      00022E D0 04            [24]  815 	pop	ar4
      000230 D0 06            [24]  816 	pop	ar6
      000232 D0 07            [24]  817 	pop	ar7
                                    818 ;	uart.h:116: lsd = num%10;
      000234 75 0C 0A         [24]  819 	mov	__modsint_PARM_2,#0x0a
      000237 75 0D 00         [24]  820 	mov	(__modsint_PARM_2 + 1),#0x00
      00023A 8F 82            [24]  821 	mov	dpl,r7
      00023C 8E 83            [24]  822 	mov	dph,r6
      00023E C0 04            [24]  823 	push	ar4
      000240 C0 03            [24]  824 	push	ar3
      000242 12 06 31         [24]  825 	lcall	__modsint
      000245 AE 82            [24]  826 	mov	r6,dpl
      000247 D0 03            [24]  827 	pop	ar3
      000249 D0 04            [24]  828 	pop	ar4
                                    829 ;	uart.h:118: UartWrite(msd + 0x30);
      00024B 74 30            [12]  830 	mov	a,#0x30
      00024D 2C               [12]  831 	add	a,r4
      00024E F5 82            [12]  832 	mov	dpl,a
      000250 C0 06            [24]  833 	push	ar6
      000252 C0 03            [24]  834 	push	ar3
      000254 12 00 F7         [24]  835 	lcall	_UartWrite
      000257 D0 03            [24]  836 	pop	ar3
                                    837 ;	uart.h:119: UartWrite(extra + 0x30);
      000259 74 30            [12]  838 	mov	a,#0x30
      00025B 2B               [12]  839 	add	a,r3
      00025C F5 82            [12]  840 	mov	dpl,a
      00025E 12 00 F7         [24]  841 	lcall	_UartWrite
      000261 D0 06            [24]  842 	pop	ar6
                                    843 ;	uart.h:120: UartWrite(lsd + 0x30);
      000263 74 30            [12]  844 	mov	a,#0x30
      000265 2E               [12]  845 	add	a,r6
      000266 F5 82            [12]  846 	mov	dpl,a
      000268 12 00 F7         [24]  847 	lcall	_UartWrite
      00026B                        848 00106$:
                                    849 ;	uart.h:123: }
      00026B D0 0B            [24]  850 	pop	_bp
      00026D 22               [24]  851 	ret
                                    852 ;------------------------------------------------------------
                                    853 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    854 ;------------------------------------------------------------
                                    855 ;length                    Allocated to stack - _bp -3
                                    856 ;format                    Allocated to stack - _bp -4
                                    857 ;delimiter                 Allocated to stack - _bp -5
                                    858 ;p                         Allocated to registers 
                                    859 ;i                         Allocated to registers r4 
                                    860 ;------------------------------------------------------------
                                    861 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    862 ;	-----------------------------------------
                                    863 ;	 function UartWriteNumbers
                                    864 ;	-----------------------------------------
      00026E                        865 _UartWriteNumbers:
      00026E C0 0B            [24]  866 	push	_bp
      000270 85 81 0B         [24]  867 	mov	_bp,sp
      000273 AD 82            [24]  868 	mov	r5,dpl
      000275 AE 83            [24]  869 	mov	r6,dph
      000277 AF F0            [24]  870 	mov	r7,b
                                    871 ;	uart.h:129: for(i=0;i<length;i++,p++)
      000279 7C 00            [12]  872 	mov	r4,#0x00
      00027B                        873 00103$:
      00027B E5 0B            [12]  874 	mov	a,_bp
      00027D 24 FD            [12]  875 	add	a,#0xfd
      00027F F8               [12]  876 	mov	r0,a
      000280 C3               [12]  877 	clr	c
      000281 EC               [12]  878 	mov	a,r4
      000282 96               [12]  879 	subb	a,@r0
      000283 50 3B            [24]  880 	jnc	00105$
                                    881 ;	uart.h:131: UartWriteNumber(*p,format);
      000285 8D 82            [24]  882 	mov	dpl,r5
      000287 8E 83            [24]  883 	mov	dph,r6
      000289 8F F0            [24]  884 	mov	b,r7
      00028B 12 06 15         [24]  885 	lcall	__gptrget
      00028E FB               [12]  886 	mov	r3,a
      00028F A3               [24]  887 	inc	dptr
      000290 AD 82            [24]  888 	mov	r5,dpl
      000292 AE 83            [24]  889 	mov	r6,dph
      000294 C0 07            [24]  890 	push	ar7
      000296 C0 06            [24]  891 	push	ar6
      000298 C0 05            [24]  892 	push	ar5
      00029A C0 04            [24]  893 	push	ar4
      00029C E5 0B            [12]  894 	mov	a,_bp
      00029E 24 FC            [12]  895 	add	a,#0xfc
      0002A0 F8               [12]  896 	mov	r0,a
      0002A1 E6               [12]  897 	mov	a,@r0
      0002A2 C0 E0            [24]  898 	push	acc
      0002A4 8B 82            [24]  899 	mov	dpl,r3
      0002A6 12 01 AF         [24]  900 	lcall	_UartWriteNumber
      0002A9 15 81            [12]  901 	dec	sp
                                    902 ;	uart.h:132: UartWrite(delimiter);
      0002AB E5 0B            [12]  903 	mov	a,_bp
      0002AD 24 FB            [12]  904 	add	a,#0xfb
      0002AF F8               [12]  905 	mov	r0,a
      0002B0 86 82            [24]  906 	mov	dpl,@r0
      0002B2 12 00 F7         [24]  907 	lcall	_UartWrite
      0002B5 D0 04            [24]  908 	pop	ar4
      0002B7 D0 05            [24]  909 	pop	ar5
      0002B9 D0 06            [24]  910 	pop	ar6
      0002BB D0 07            [24]  911 	pop	ar7
                                    912 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002BD 0C               [12]  913 	inc	r4
      0002BE 80 BB            [24]  914 	sjmp	00103$
      0002C0                        915 00105$:
                                    916 ;	uart.h:134: }
      0002C0 D0 0B            [24]  917 	pop	_bp
      0002C2 22               [24]  918 	ret
                                    919 ;------------------------------------------------------------
                                    920 ;Allocation info for local variables in function 'UartPrintNumber'
                                    921 ;------------------------------------------------------------
                                    922 ;n                         Allocated to stack - _bp +1
                                    923 ;digit                     Allocated to registers r2 r5 r6 r7 
                                    924 ;i                         Allocated to registers r3 
                                    925 ;j                         Allocated to registers r4 
                                    926 ;sloc0                     Allocated to stack - _bp +5
                                    927 ;------------------------------------------------------------
                                    928 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                    929 ;	-----------------------------------------
                                    930 ;	 function UartPrintNumber
                                    931 ;	-----------------------------------------
      0002C3                        932 _UartPrintNumber:
      0002C3 C0 0B            [24]  933 	push	_bp
      0002C5 85 81 0B         [24]  934 	mov	_bp,sp
      0002C8 C0 82            [24]  935 	push	dpl
      0002CA C0 83            [24]  936 	push	dph
      0002CC C0 F0            [24]  937 	push	b
      0002CE C0 E0            [24]  938 	push	acc
      0002D0 E5 81            [12]  939 	mov	a,sp
      0002D2 24 04            [12]  940 	add	a,#0x04
      0002D4 F5 81            [12]  941 	mov	sp,a
                                    942 ;	uart.h:154: for(i=8;i>0;i--)
      0002D6 7B 08            [12]  943 	mov	r3,#0x08
      0002D8                        944 00106$:
                                    945 ;	uart.h:156: digit=n;
      0002D8 A8 0B            [24]  946 	mov	r0,_bp
      0002DA 08               [12]  947 	inc	r0
      0002DB 86 02            [24]  948 	mov	ar2,@r0
      0002DD 08               [12]  949 	inc	r0
      0002DE 86 05            [24]  950 	mov	ar5,@r0
      0002E0 08               [12]  951 	inc	r0
      0002E1 86 06            [24]  952 	mov	ar6,@r0
      0002E3 08               [12]  953 	inc	r0
      0002E4 86 07            [24]  954 	mov	ar7,@r0
                                    955 ;	uart.h:157: for(j=1;j<i;j++) digit/=10;
      0002E6 7C 01            [12]  956 	mov	r4,#0x01
      0002E8                        957 00104$:
      0002E8 C3               [12]  958 	clr	c
      0002E9 EC               [12]  959 	mov	a,r4
      0002EA 9B               [12]  960 	subb	a,r3
      0002EB 50 43            [24]  961 	jnc	00101$
      0002ED C0 03            [24]  962 	push	ar3
      0002EF 75 0C 0A         [24]  963 	mov	__divulong_PARM_2,#0x0a
      0002F2 E4               [12]  964 	clr	a
      0002F3 F5 0D            [12]  965 	mov	(__divulong_PARM_2 + 1),a
      0002F5 F5 0E            [12]  966 	mov	(__divulong_PARM_2 + 2),a
      0002F7 F5 0F            [12]  967 	mov	(__divulong_PARM_2 + 3),a
      0002F9 8A 82            [24]  968 	mov	dpl,r2
      0002FB 8D 83            [24]  969 	mov	dph,r5
      0002FD 8E F0            [24]  970 	mov	b,r6
      0002FF EF               [12]  971 	mov	a,r7
      000300 C0 04            [24]  972 	push	ar4
      000302 C0 03            [24]  973 	push	ar3
      000304 12 05 1F         [24]  974 	lcall	__divulong
      000307 C8               [12]  975 	xch	a,r0
      000308 E5 0B            [12]  976 	mov	a,_bp
      00030A 24 05            [12]  977 	add	a,#0x05
      00030C C8               [12]  978 	xch	a,r0
      00030D A6 82            [24]  979 	mov	@r0,dpl
      00030F 08               [12]  980 	inc	r0
      000310 A6 83            [24]  981 	mov	@r0,dph
      000312 08               [12]  982 	inc	r0
      000313 A6 F0            [24]  983 	mov	@r0,b
      000315 08               [12]  984 	inc	r0
      000316 F6               [12]  985 	mov	@r0,a
      000317 D0 03            [24]  986 	pop	ar3
      000319 D0 04            [24]  987 	pop	ar4
      00031B E5 0B            [12]  988 	mov	a,_bp
      00031D 24 05            [12]  989 	add	a,#0x05
      00031F F8               [12]  990 	mov	r0,a
      000320 86 02            [24]  991 	mov	ar2,@r0
      000322 08               [12]  992 	inc	r0
      000323 86 05            [24]  993 	mov	ar5,@r0
      000325 08               [12]  994 	inc	r0
      000326 86 06            [24]  995 	mov	ar6,@r0
      000328 08               [12]  996 	inc	r0
      000329 86 07            [24]  997 	mov	ar7,@r0
      00032B 0C               [12]  998 	inc	r4
      00032C D0 03            [24]  999 	pop	ar3
      00032E 80 B8            [24] 1000 	sjmp	00104$
      000330                       1001 00101$:
                                   1002 ;	uart.h:158: UartWrite(0x30 + digit%10);
      000330 75 0C 0A         [24] 1003 	mov	__modulong_PARM_2,#0x0a
      000333 E4               [12] 1004 	clr	a
      000334 F5 0D            [12] 1005 	mov	(__modulong_PARM_2 + 1),a
      000336 F5 0E            [12] 1006 	mov	(__modulong_PARM_2 + 2),a
      000338 F5 0F            [12] 1007 	mov	(__modulong_PARM_2 + 3),a
      00033A 8A 82            [24] 1008 	mov	dpl,r2
      00033C 8D 83            [24] 1009 	mov	dph,r5
      00033E 8E F0            [24] 1010 	mov	b,r6
      000340 EF               [12] 1011 	mov	a,r7
      000341 C0 03            [24] 1012 	push	ar3
      000343 12 04 9C         [24] 1013 	lcall	__modulong
      000346 AC 82            [24] 1014 	mov	r4,dpl
      000348 74 30            [12] 1015 	mov	a,#0x30
      00034A 2C               [12] 1016 	add	a,r4
      00034B F5 82            [12] 1017 	mov	dpl,a
      00034D 12 00 F7         [24] 1018 	lcall	_UartWrite
      000350 D0 03            [24] 1019 	pop	ar3
                                   1020 ;	uart.h:154: for(i=8;i>0;i--)
      000352 DB 84            [24] 1021 	djnz	r3,00106$
                                   1022 ;	uart.h:160: }
      000354 85 0B 81         [24] 1023 	mov	sp,_bp
      000357 D0 0B            [24] 1024 	pop	_bp
      000359 22               [24] 1025 	ret
                                   1026 ;------------------------------------------------------------
                                   1027 ;Allocation info for local variables in function 'UartScanByte'
                                   1028 ;------------------------------------------------------------
                                   1029 ;unibble                   Allocated to registers r7 
                                   1030 ;lnibble                   Allocated to registers r6 
                                   1031 ;------------------------------------------------------------
                                   1032 ;	uart.h:163: uint8_t UartScanByte() __reentrant
                                   1033 ;	-----------------------------------------
                                   1034 ;	 function UartScanByte
                                   1035 ;	-----------------------------------------
      00035A                       1036 _UartScanByte:
                                   1037 ;	uart.h:167: while(UartReadReady()) UartRead(); //flush
      00035A                       1038 00101$:
      00035A 12 00 E3         [24] 1039 	lcall	_UartReadReady
      00035D E5 82            [12] 1040 	mov	a,dpl
      00035F 60 05            [24] 1041 	jz	00103$
      000361 12 00 EE         [24] 1042 	lcall	_UartRead
      000364 80 F4            [24] 1043 	sjmp	00101$
      000366                       1044 00103$:
                                   1045 ;	uart.h:168: UartPrint("Number in Hex - eg(FE for 254): ");
      000366 90 06 A3         [24] 1046 	mov	dptr,#___str_0
      000369 75 F0 80         [24] 1047 	mov	b,#0x80
      00036C 12 01 7D         [24] 1048 	lcall	_UartPrint
                                   1049 ;	uart.h:170: unibble = UartRead();
      00036F 12 00 EE         [24] 1050 	lcall	_UartRead
                                   1051 ;	uart.h:171: UartWrite(unibble);
      000372 AF 82            [24] 1052 	mov  r7,dpl
      000374 C0 07            [24] 1053 	push	ar7
      000376 12 00 F7         [24] 1054 	lcall	_UartWrite
                                   1055 ;	uart.h:172: lnibble = UartRead();
      000379 12 00 EE         [24] 1056 	lcall	_UartRead
                                   1057 ;	uart.h:173: UartWrite(lnibble);
      00037C AE 82            [24] 1058 	mov  r6,dpl
      00037E C0 06            [24] 1059 	push	ar6
      000380 12 00 F7         [24] 1060 	lcall	_UartWrite
                                   1061 ;	uart.h:175: UartWrite('\n');
      000383 75 82 0A         [24] 1062 	mov	dpl,#0x0a
      000386 12 00 F7         [24] 1063 	lcall	_UartWrite
      000389 D0 06            [24] 1064 	pop	ar6
      00038B D0 07            [24] 1065 	pop	ar7
                                   1066 ;	uart.h:177: return hex2dec(unibble,lnibble);
      00038D 8E 08            [24] 1067 	mov	_hex2dec_PARM_2,r6
      00038F 8F 82            [24] 1068 	mov	dpl,r7
                                   1069 ;	uart.h:178: }
      000391 02 00 9C         [24] 1070 	ljmp	_hex2dec
                                   1071 ;------------------------------------------------------------
                                   1072 ;Allocation info for local variables in function 'UartScanLine'
                                   1073 ;------------------------------------------------------------
                                   1074 ;maxLength                 Allocated to stack - _bp -3
                                   1075 ;dst                       Allocated to stack - _bp +1
                                   1076 ;recv                      Allocated to registers r2 
                                   1077 ;count                     Allocated to registers r4 
                                   1078 ;------------------------------------------------------------
                                   1079 ;	uart.h:180: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1080 ;	-----------------------------------------
                                   1081 ;	 function UartScanLine
                                   1082 ;	-----------------------------------------
      000394                       1083 _UartScanLine:
      000394 C0 0B            [24] 1084 	push	_bp
      000396 85 81 0B         [24] 1085 	mov	_bp,sp
      000399 C0 82            [24] 1086 	push	dpl
      00039B C0 83            [24] 1087 	push	dph
      00039D C0 F0            [24] 1088 	push	b
                                   1089 ;	uart.h:182: uint8_t recv,count=0;
      00039F 7C 00            [12] 1090 	mov	r4,#0x00
                                   1091 ;	uart.h:184: while(UartReadReady()) UartRead(); //flush
      0003A1                       1092 00101$:
      0003A1 C0 04            [24] 1093 	push	ar4
      0003A3 12 00 E3         [24] 1094 	lcall	_UartReadReady
      0003A6 E5 82            [12] 1095 	mov	a,dpl
      0003A8 D0 04            [24] 1096 	pop	ar4
      0003AA 60 09            [24] 1097 	jz	00118$
      0003AC C0 04            [24] 1098 	push	ar4
      0003AE 12 00 EE         [24] 1099 	lcall	_UartRead
      0003B1 D0 04            [24] 1100 	pop	ar4
                                   1101 ;	uart.h:186: while(1)
      0003B3 80 EC            [24] 1102 	sjmp	00101$
      0003B5                       1103 00118$:
      0003B5 7B 00            [12] 1104 	mov	r3,#0x00
      0003B7                       1105 00110$:
                                   1106 ;	uart.h:189: recv=UartRead();
      0003B7 C0 04            [24] 1107 	push	ar4
      0003B9 C0 03            [24] 1108 	push	ar3
      0003BB 12 00 EE         [24] 1109 	lcall	_UartRead
                                   1110 ;	uart.h:190: UartWrite(recv);
      0003BE AA 82            [24] 1111 	mov  r2,dpl
      0003C0 C0 02            [24] 1112 	push	ar2
      0003C2 12 00 F7         [24] 1113 	lcall	_UartWrite
      0003C5 D0 02            [24] 1114 	pop	ar2
      0003C7 D0 03            [24] 1115 	pop	ar3
      0003C9 D0 04            [24] 1116 	pop	ar4
                                   1117 ;	uart.h:191: if(recv == '\n') 
      0003CB BA 0A 19         [24] 1118 	cjne	r2,#0x0a,00105$
                                   1119 ;	uart.h:193: *(dst+count)=0; //add string terminate
      0003CE A8 0B            [24] 1120 	mov	r0,_bp
      0003D0 08               [12] 1121 	inc	r0
      0003D1 EC               [12] 1122 	mov	a,r4
      0003D2 26               [12] 1123 	add	a,@r0
      0003D3 FD               [12] 1124 	mov	r5,a
      0003D4 E4               [12] 1125 	clr	a
      0003D5 08               [12] 1126 	inc	r0
      0003D6 36               [12] 1127 	addc	a,@r0
      0003D7 FE               [12] 1128 	mov	r6,a
      0003D8 08               [12] 1129 	inc	r0
      0003D9 86 07            [24] 1130 	mov	ar7,@r0
      0003DB 8D 82            [24] 1131 	mov	dpl,r5
      0003DD 8E 83            [24] 1132 	mov	dph,r6
      0003DF 8F F0            [24] 1133 	mov	b,r7
      0003E1 E4               [12] 1134 	clr	a
      0003E2 12 05 84         [24] 1135 	lcall	__gptrput
                                   1136 ;	uart.h:194: break;
      0003E5 80 31            [24] 1137 	sjmp	00111$
      0003E7                       1138 00105$:
                                   1139 ;	uart.h:196: else *(dst+count)=recv;
      0003E7 A8 0B            [24] 1140 	mov	r0,_bp
      0003E9 08               [12] 1141 	inc	r0
      0003EA EB               [12] 1142 	mov	a,r3
      0003EB 26               [12] 1143 	add	a,@r0
      0003EC FD               [12] 1144 	mov	r5,a
      0003ED E4               [12] 1145 	clr	a
      0003EE 08               [12] 1146 	inc	r0
      0003EF 36               [12] 1147 	addc	a,@r0
      0003F0 FE               [12] 1148 	mov	r6,a
      0003F1 08               [12] 1149 	inc	r0
      0003F2 86 07            [24] 1150 	mov	ar7,@r0
      0003F4 8D 82            [24] 1151 	mov	dpl,r5
      0003F6 8E 83            [24] 1152 	mov	dph,r6
      0003F8 8F F0            [24] 1153 	mov	b,r7
      0003FA EA               [12] 1154 	mov	a,r2
      0003FB 12 05 84         [24] 1155 	lcall	__gptrput
                                   1156 ;	uart.h:198: if(count==maxLength) 
      0003FE E5 0B            [12] 1157 	mov	a,_bp
      000400 24 FD            [12] 1158 	add	a,#0xfd
      000402 F8               [12] 1159 	mov	r0,a
      000403 E6               [12] 1160 	mov	a,@r0
      000404 B5 03 0C         [24] 1161 	cjne	a,ar3,00108$
                                   1162 ;	uart.h:200: *(dst+count)=0; // terminate string.
      000407 8D 82            [24] 1163 	mov	dpl,r5
      000409 8E 83            [24] 1164 	mov	dph,r6
      00040B 8F F0            [24] 1165 	mov	b,r7
      00040D E4               [12] 1166 	clr	a
      00040E 12 05 84         [24] 1167 	lcall	__gptrput
                                   1168 ;	uart.h:201: break;
      000411 80 05            [24] 1169 	sjmp	00111$
      000413                       1170 00108$:
                                   1171 ;	uart.h:204: count++;
      000413 0B               [12] 1172 	inc	r3
      000414 8B 04            [24] 1173 	mov	ar4,r3
      000416 80 9F            [24] 1174 	sjmp	00110$
      000418                       1175 00111$:
                                   1176 ;	uart.h:208: return count;
      000418 8C 82            [24] 1177 	mov	dpl,r4
                                   1178 ;	uart.h:210: }
      00041A 85 0B 81         [24] 1179 	mov	sp,_bp
      00041D D0 0B            [24] 1180 	pop	_bp
      00041F 22               [24] 1181 	ret
                                   1182 ;------------------------------------------------------------
                                   1183 ;Allocation info for local variables in function 'SL_getcmd'
                                   1184 ;------------------------------------------------------------
                                   1185 ;cmd                       Allocated with name '_SL_getcmd_cmd_65536_42'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	serialloader.h:8: void SL_getcmd()
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function SL_getcmd
                                   1190 ;	-----------------------------------------
      000420                       1191 _SL_getcmd:
                                   1192 ;	serialloader.h:11: while(UartReadReady()) UartRead(); //flush 
      000420                       1193 00101$:
      000420 12 00 E3         [24] 1194 	lcall	_UartReadReady
      000423 E5 82            [12] 1195 	mov	a,dpl
      000425 60 05            [24] 1196 	jz	00104$
      000427 12 00 EE         [24] 1197 	lcall	_UartRead
      00042A 80 F4            [24] 1198 	sjmp	00101$
      00042C                       1199 00104$:
                                   1200 ;	serialloader.h:17: }
      00042C 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'main'
                                   1204 ;------------------------------------------------------------
                                   1205 ;fname                     Allocated with name '_main_fname_65536_45'
                                   1206 ;------------------------------------------------------------
                                   1207 ;	main.c:15: void main(void)
                                   1208 ;	-----------------------------------------
                                   1209 ;	 function main
                                   1210 ;	-----------------------------------------
      00042D                       1211 _main:
                                   1212 ;	main.c:19: __idata unsigned char fname[11]="world.txt\n";
      00042D 78 10            [12] 1213 	mov	r0,#_main_fname_65536_45
      00042F 76 77            [12] 1214 	mov	@r0,#0x77
      000431 78 11            [12] 1215 	mov	r0,#(_main_fname_65536_45 + 0x0001)
      000433 76 6F            [12] 1216 	mov	@r0,#0x6f
      000435 78 12            [12] 1217 	mov	r0,#(_main_fname_65536_45 + 0x0002)
      000437 76 72            [12] 1218 	mov	@r0,#0x72
      000439 78 13            [12] 1219 	mov	r0,#(_main_fname_65536_45 + 0x0003)
      00043B 76 6C            [12] 1220 	mov	@r0,#0x6c
      00043D 78 14            [12] 1221 	mov	r0,#(_main_fname_65536_45 + 0x0004)
      00043F 76 64            [12] 1222 	mov	@r0,#0x64
      000441 78 15            [12] 1223 	mov	r0,#(_main_fname_65536_45 + 0x0005)
      000443 76 2E            [12] 1224 	mov	@r0,#0x2e
      000445 78 16            [12] 1225 	mov	r0,#(_main_fname_65536_45 + 0x0006)
      000447 76 74            [12] 1226 	mov	@r0,#0x74
      000449 78 17            [12] 1227 	mov	r0,#(_main_fname_65536_45 + 0x0007)
      00044B 76 78            [12] 1228 	mov	@r0,#0x78
      00044D 78 18            [12] 1229 	mov	r0,#(_main_fname_65536_45 + 0x0008)
      00044F 76 74            [12] 1230 	mov	@r0,#0x74
      000451 78 19            [12] 1231 	mov	r0,#(_main_fname_65536_45 + 0x0009)
      000453 76 0A            [12] 1232 	mov	@r0,#0x0a
      000455 78 1A            [12] 1233 	mov	r0,#(_main_fname_65536_45 + 0x000a)
      000457 76 00            [12] 1234 	mov	@r0,#0x00
                                   1235 ;	main.c:22: UartBegin();
      000459 12 00 D4         [24] 1236 	lcall	_UartBegin
                                   1237 ;	main.c:24: while(1)
      00045C                       1238 00102$:
                                   1239 ;	main.c:26: UartPrint("hello.txt\n");
      00045C 90 06 C4         [24] 1240 	mov	dptr,#___str_2
      00045F 75 F0 80         [24] 1241 	mov	b,#0x80
      000462 12 01 7D         [24] 1242 	lcall	_UartPrint
                                   1243 ;	main.c:27: UartPrint(fname);
      000465 90 00 10         [24] 1244 	mov	dptr,#_main_fname_65536_45
      000468 75 F0 40         [24] 1245 	mov	b,#0x40
      00046B 12 01 7D         [24] 1246 	lcall	_UartPrint
                                   1247 ;	main.c:28: delay();
      00046E 12 04 73         [24] 1248 	lcall	_delay
                                   1249 ;	main.c:33: }
      000471 80 E9            [24] 1250 	sjmp	00102$
                                   1251 ;------------------------------------------------------------
                                   1252 ;Allocation info for local variables in function 'delay'
                                   1253 ;------------------------------------------------------------
                                   1254 ;i                         Allocated to registers r6 r7 
                                   1255 ;j                         Allocated to registers r4 r5 
                                   1256 ;------------------------------------------------------------
                                   1257 ;	main.c:35: void delay(void)
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function delay
                                   1260 ;	-----------------------------------------
      000473                       1261 _delay:
                                   1262 ;	main.c:38: for(i=0;i<0xff;i++)
      000473 7E 00            [12] 1263 	mov	r6,#0x00
      000475 7F 00            [12] 1264 	mov	r7,#0x00
      000477                       1265 00106$:
                                   1266 ;	main.c:39: for(j=0;j<0xff;j++);
      000477 7C FF            [12] 1267 	mov	r4,#0xff
      000479 7D 00            [12] 1268 	mov	r5,#0x00
      00047B                       1269 00105$:
      00047B EC               [12] 1270 	mov	a,r4
      00047C 24 FF            [12] 1271 	add	a,#0xff
      00047E FA               [12] 1272 	mov	r2,a
      00047F ED               [12] 1273 	mov	a,r5
      000480 34 FF            [12] 1274 	addc	a,#0xff
      000482 FB               [12] 1275 	mov	r3,a
      000483 8A 04            [24] 1276 	mov	ar4,r2
      000485 8B 05            [24] 1277 	mov	ar5,r3
      000487 EA               [12] 1278 	mov	a,r2
      000488 4B               [12] 1279 	orl	a,r3
      000489 70 F0            [24] 1280 	jnz	00105$
                                   1281 ;	main.c:38: for(i=0;i<0xff;i++)
      00048B 0E               [12] 1282 	inc	r6
      00048C BE 00 01         [24] 1283 	cjne	r6,#0x00,00124$
      00048F 0F               [12] 1284 	inc	r7
      000490                       1285 00124$:
      000490 C3               [12] 1286 	clr	c
      000491 EE               [12] 1287 	mov	a,r6
      000492 94 FF            [12] 1288 	subb	a,#0xff
      000494 EF               [12] 1289 	mov	a,r7
      000495 64 80            [12] 1290 	xrl	a,#0x80
      000497 94 80            [12] 1291 	subb	a,#0x80
      000499 40 DC            [24] 1292 	jc	00106$
                                   1293 ;	main.c:40: }
      00049B 22               [24] 1294 	ret
                                   1295 	.area CSEG    (CODE)
                                   1296 	.area CONST   (CODE)
                                   1297 	.area CONST   (CODE)
      0006A3                       1298 ___str_0:
      0006A3 4E 75 6D 62 65 72 20  1299 	.ascii "Number in Hex - eg(FE for 254): "
             69 6E 20 48 65 78 20
             2D 20 65 67 28 46 45
             20 66 6F 72 20 32 35
             34 29 3A 20
      0006C3 00                    1300 	.db 0x00
                                   1301 	.area CSEG    (CODE)
                                   1302 	.area CONST   (CODE)
      0006C4                       1303 ___str_2:
      0006C4 68 65 6C 6C 6F 2E 74  1304 	.ascii "hello.txt"
             78 74
      0006CD 0A                    1305 	.db 0x0a
      0006CE 00                    1306 	.db 0x00
                                   1307 	.area CSEG    (CODE)
                                   1308 	.area XINIT   (CODE)
                                   1309 	.area CABS    (ABS,CODE)
