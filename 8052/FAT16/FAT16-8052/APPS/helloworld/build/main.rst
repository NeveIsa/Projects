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
                                     12 	.globl _UartPrint
                                     13 	.globl _UartReadBuff
                                     14 	.globl _UartWriteBuff
                                     15 	.globl _UartWrite
                                     16 	.globl _UartRead
                                     17 	.globl _UartReadReady
                                     18 	.globl _UartBegin
                                     19 	.globl _delayms
                                     20 	.globl _exitApp
                                     21 	.globl _enterApp
                                     22 	.globl _TF2
                                     23 	.globl _EXF2
                                     24 	.globl _RCLK
                                     25 	.globl _TCLK
                                     26 	.globl _EXEN2
                                     27 	.globl _TR2
                                     28 	.globl _C_T2
                                     29 	.globl _CP_RL2
                                     30 	.globl _T2CON_7
                                     31 	.globl _T2CON_6
                                     32 	.globl _T2CON_5
                                     33 	.globl _T2CON_4
                                     34 	.globl _T2CON_3
                                     35 	.globl _T2CON_2
                                     36 	.globl _T2CON_1
                                     37 	.globl _T2CON_0
                                     38 	.globl _PT2
                                     39 	.globl _ET2
                                     40 	.globl _CY
                                     41 	.globl _AC
                                     42 	.globl _F0
                                     43 	.globl _RS1
                                     44 	.globl _RS0
                                     45 	.globl _OV
                                     46 	.globl _F1
                                     47 	.globl _P
                                     48 	.globl _PS
                                     49 	.globl _PT1
                                     50 	.globl _PX1
                                     51 	.globl _PT0
                                     52 	.globl _PX0
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _ES
                                     71 	.globl _ET1
                                     72 	.globl _EX1
                                     73 	.globl _ET0
                                     74 	.globl _EX0
                                     75 	.globl _P2_7
                                     76 	.globl _P2_6
                                     77 	.globl _P2_5
                                     78 	.globl _P2_4
                                     79 	.globl _P2_3
                                     80 	.globl _P2_2
                                     81 	.globl _P2_1
                                     82 	.globl _P2_0
                                     83 	.globl _SM0
                                     84 	.globl _SM1
                                     85 	.globl _SM2
                                     86 	.globl _REN
                                     87 	.globl _TB8
                                     88 	.globl _RB8
                                     89 	.globl _TI
                                     90 	.globl _RI
                                     91 	.globl _P1_7
                                     92 	.globl _P1_6
                                     93 	.globl _P1_5
                                     94 	.globl _P1_4
                                     95 	.globl _P1_3
                                     96 	.globl _P1_2
                                     97 	.globl _P1_1
                                     98 	.globl _P1_0
                                     99 	.globl _TF1
                                    100 	.globl _TR1
                                    101 	.globl _TF0
                                    102 	.globl _TR0
                                    103 	.globl _IE1
                                    104 	.globl _IT1
                                    105 	.globl _IE0
                                    106 	.globl _IT0
                                    107 	.globl _P0_7
                                    108 	.globl _P0_6
                                    109 	.globl _P0_5
                                    110 	.globl _P0_4
                                    111 	.globl _P0_3
                                    112 	.globl _P0_2
                                    113 	.globl _P0_1
                                    114 	.globl _P0_0
                                    115 	.globl _TH2
                                    116 	.globl _TL2
                                    117 	.globl _RCAP2H
                                    118 	.globl _RCAP2L
                                    119 	.globl _T2CON
                                    120 	.globl _B
                                    121 	.globl _ACC
                                    122 	.globl _PSW
                                    123 	.globl _IP
                                    124 	.globl _P3
                                    125 	.globl _IE
                                    126 	.globl _P2
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _P1
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _P0
                                    141 	.globl _UartReadBuff_PARM_2
                                    142 	.globl _UartWriteBuff_PARM_2
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000D0   166 _PSW	=	0x00d0
                           0000E0   167 _ACC	=	0x00e0
                           0000F0   168 _B	=	0x00f0
                           0000C8   169 _T2CON	=	0x00c8
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000D0   246 _P	=	0x00d0
                           0000D1   247 _F1	=	0x00d1
                           0000D2   248 _OV	=	0x00d2
                           0000D3   249 _RS0	=	0x00d3
                           0000D4   250 _RS1	=	0x00d4
                           0000D5   251 _F0	=	0x00d5
                           0000D6   252 _AC	=	0x00d6
                           0000D7   253 _CY	=	0x00d7
                           0000AD   254 _ET2	=	0x00ad
                           0000BD   255 _PT2	=	0x00bd
                           0000C8   256 _T2CON_0	=	0x00c8
                           0000C9   257 _T2CON_1	=	0x00c9
                           0000CA   258 _T2CON_2	=	0x00ca
                           0000CB   259 _T2CON_3	=	0x00cb
                           0000CC   260 _T2CON_4	=	0x00cc
                           0000CD   261 _T2CON_5	=	0x00cd
                           0000CE   262 _T2CON_6	=	0x00ce
                           0000CF   263 _T2CON_7	=	0x00cf
                           0000C8   264 _CP_RL2	=	0x00c8
                           0000C9   265 _C_T2	=	0x00c9
                           0000CA   266 _TR2	=	0x00ca
                           0000CB   267 _EXEN2	=	0x00cb
                           0000CC   268 _TCLK	=	0x00cc
                           0000CD   269 _RCLK	=	0x00cd
                           0000CE   270 _EXF2	=	0x00ce
                           0000CF   271 _TF2	=	0x00cf
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
      000008                        281 _UartWriteBuff_PARM_2:
      000008                        282 	.ds 1
      000009                        283 _UartReadBuff_PARM_2:
      000009                        284 	.ds 1
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable items in internal ram 
                                    287 ;--------------------------------------------------------
                                    288 	.area	OSEG    (OVR,DATA)
                                    289 	.area	OSEG    (OVR,DATA)
                                    290 	.area	OSEG    (OVR,DATA)
                                    291 	.area	OSEG    (OVR,DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; Stack segment in internal ram 
                                    294 ;--------------------------------------------------------
                                    295 	.area	SSEG
      00000B                        296 __start__stack:
      00000B                        297 	.ds	1
                                    298 
                                    299 ;--------------------------------------------------------
                                    300 ; indirectly addressable internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area ISEG    (DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area IABS    (ABS,DATA)
                                    307 	.area IABS    (ABS,DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; bit data
                                    310 ;--------------------------------------------------------
                                    311 	.area BSEG    (BIT)
                                    312 ;--------------------------------------------------------
                                    313 ; paged external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area PSEG    (PAG,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XSEG    (XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; absolute external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XABS    (ABS,XDATA)
                                    324 ;--------------------------------------------------------
                                    325 ; external initialized ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area XISEG   (XDATA)
                                    328 	.area HOME    (CODE)
                                    329 	.area GSINIT0 (CODE)
                                    330 	.area GSINIT1 (CODE)
                                    331 	.area GSINIT2 (CODE)
                                    332 	.area GSINIT3 (CODE)
                                    333 	.area GSINIT4 (CODE)
                                    334 	.area GSINIT5 (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.area GSFINAL (CODE)
                                    337 	.area CSEG    (CODE)
                                    338 ;--------------------------------------------------------
                                    339 ; interrupt vector 
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
      000000                        342 __interrupt_vect:
      000000 02 00 06         [24]  343 	ljmp	__sdcc_gsinit_startup
                                    344 ;--------------------------------------------------------
                                    345 ; global & static initialisations
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.globl __sdcc_gsinit_startup
                                    352 	.globl __sdcc_program_startup
                                    353 	.globl __start__stack
                                    354 	.globl __mcs51_genXINIT
                                    355 	.globl __mcs51_genXRAMCLEAR
                                    356 	.globl __mcs51_genRAMCLEAR
                                    357 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  358 	ljmp	__sdcc_program_startup
                                    359 ;--------------------------------------------------------
                                    360 ; Home
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area HOME    (CODE)
      000003                        364 __sdcc_program_startup:
      000003 02 01 D0         [24]  365 	ljmp	_main
                                    366 ;	return from main will return to caller
                                    367 ;--------------------------------------------------------
                                    368 ; code
                                    369 ;--------------------------------------------------------
                                    370 	.area CSEG    (CODE)
                                    371 ;------------------------------------------------------------
                                    372 ;Allocation info for local variables in function 'enterApp'
                                    373 ;------------------------------------------------------------
                                    374 ;x                         Allocated to registers r6 r7 
                                    375 ;y                         Allocated to registers r4 r5 
                                    376 ;------------------------------------------------------------
                                    377 ;	enterexitapp.h:13: void enterApp()
                                    378 ;	-----------------------------------------
                                    379 ;	 function enterApp
                                    380 ;	-----------------------------------------
      000062                        381 _enterApp:
                           000007   382 	ar7 = 0x07
                           000006   383 	ar6 = 0x06
                           000005   384 	ar5 = 0x05
                           000004   385 	ar4 = 0x04
                           000003   386 	ar3 = 0x03
                           000002   387 	ar2 = 0x02
                           000001   388 	ar1 = 0x01
                           000000   389 	ar0 = 0x00
                                    390 ;	enterexitapp.h:21: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
      000062 7E 00            [12]  391 	mov	r6,#0x00
      000064 7F 00            [12]  392 	mov	r7,#0x00
      000066                        393 00124$:
      000066 7C C8            [12]  394 	mov	r4,#0xc8
      000068 7D 00            [12]  395 	mov	r5,#0x00
      00006A                        396 00109$:
      00006A 1C               [12]  397 	dec	r4
      00006B BC FF 01         [24]  398 	cjne	r4,#0xff,00178$
      00006E 1D               [12]  399 	dec	r5
      00006F                        400 00178$:
      00006F EC               [12]  401 	mov	a,r4
      000070 4D               [12]  402 	orl	a,r5
      000071 70 F7            [24]  403 	jnz	00109$
      000073 0E               [12]  404 	inc	r6
      000074 BE 00 01         [24]  405 	cjne	r6,#0x00,00180$
      000077 0F               [12]  406 	inc	r7
      000078                        407 00180$:
      000078 C3               [12]  408 	clr	c
      000079 EE               [12]  409 	mov	a,r6
      00007A 94 FA            [12]  410 	subb	a,#0xfa
      00007C EF               [12]  411 	mov	a,r7
      00007D 94 00            [12]  412 	subb	a,#0x00
      00007F 40 E5            [24]  413 	jc	00124$
                                    414 ;	enterexitapp.h:22: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
      000081 7E 00            [12]  415 	mov	r6,#0x00
      000083 7F 00            [12]  416 	mov	r7,#0x00
      000085                        417 00128$:
      000085 7C C8            [12]  418 	mov	r4,#0xc8
      000087 7D 00            [12]  419 	mov	r5,#0x00
      000089                        420 00114$:
      000089 1C               [12]  421 	dec	r4
      00008A BC FF 01         [24]  422 	cjne	r4,#0xff,00182$
      00008D 1D               [12]  423 	dec	r5
      00008E                        424 00182$:
      00008E EC               [12]  425 	mov	a,r4
      00008F 4D               [12]  426 	orl	a,r5
      000090 70 F7            [24]  427 	jnz	00114$
      000092 0E               [12]  428 	inc	r6
      000093 BE 00 01         [24]  429 	cjne	r6,#0x00,00184$
      000096 0F               [12]  430 	inc	r7
      000097                        431 00184$:
      000097 C3               [12]  432 	clr	c
      000098 EE               [12]  433 	mov	a,r6
      000099 94 FA            [12]  434 	subb	a,#0xfa
      00009B EF               [12]  435 	mov	a,r7
      00009C 94 00            [12]  436 	subb	a,#0x00
      00009E 40 E5            [24]  437 	jc	00128$
                                    438 ;	enterexitapp.h:25: RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
      0000A0 53 90 EF         [24]  439 	anl	_P1,#0xef
                                    440 ;	enterexitapp.h:28: for(x=0;x<250;x++) for(y=0;y<100;y++); 	// inner for loop takes about 3 cycles,
      0000A3 7E 00            [12]  441 	mov	r6,#0x00
      0000A5 7F 00            [12]  442 	mov	r7,#0x00
      0000A7                        443 00132$:
      0000A7 7C 64            [12]  444 	mov	r4,#0x64
      0000A9 7D 00            [12]  445 	mov	r5,#0x00
      0000AB                        446 00119$:
      0000AB 1C               [12]  447 	dec	r4
      0000AC BC FF 01         [24]  448 	cjne	r4,#0xff,00186$
      0000AF 1D               [12]  449 	dec	r5
      0000B0                        450 00186$:
      0000B0 EC               [12]  451 	mov	a,r4
      0000B1 4D               [12]  452 	orl	a,r5
      0000B2 70 F7            [24]  453 	jnz	00119$
      0000B4 0E               [12]  454 	inc	r6
      0000B5 BE 00 01         [24]  455 	cjne	r6,#0x00,00188$
      0000B8 0F               [12]  456 	inc	r7
      0000B9                        457 00188$:
      0000B9 C3               [12]  458 	clr	c
      0000BA EE               [12]  459 	mov	a,r6
      0000BB 94 FA            [12]  460 	subb	a,#0xfa
      0000BD EF               [12]  461 	mov	a,r7
      0000BE 94 00            [12]  462 	subb	a,#0x00
      0000C0 40 E5            [24]  463 	jc	00132$
                                    464 ;	enterexitapp.h:32: RESET_PORT_8052 |= (1 << RESET_PIN_8052);	
      0000C2 43 90 10         [24]  465 	orl	_P1,#0x10
                                    466 ;	enterexitapp.h:35: }
      0000C5 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'exitApp'
                                    470 ;------------------------------------------------------------
                                    471 ;	enterexitapp.h:39: void exitApp()
                                    472 ;	-----------------------------------------
                                    473 ;	 function exitApp
                                    474 ;	-----------------------------------------
      0000C6                        475 _exitApp:
                                    476 ;	enterexitapp.h:42: RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
      0000C6 53 90 EF         [24]  477 	anl	_P1,#0xef
                                    478 ;	enterexitapp.h:43: }
      0000C9 22               [24]  479 	ret
                                    480 ;------------------------------------------------------------
                                    481 ;Allocation info for local variables in function 'delayms'
                                    482 ;------------------------------------------------------------
                                    483 ;ms                        Allocated to registers r6 r7 
                                    484 ;x                         Allocated to registers r4 r5 
                                    485 ;y                         Allocated to registers r2 r3 
                                    486 ;------------------------------------------------------------
                                    487 ;	delay.h:3: void delayms(unsigned int ms)
                                    488 ;	-----------------------------------------
                                    489 ;	 function delayms
                                    490 ;	-----------------------------------------
      0000CA                        491 _delayms:
      0000CA AE 82            [24]  492 	mov	r6,dpl
      0000CC AF 83            [24]  493 	mov	r7,dph
                                    494 ;	delay.h:7: for(x=0;x<ms;x++) for(y=0;y<120;y++);
      0000CE 7C 00            [12]  495 	mov	r4,#0x00
      0000D0 7D 00            [12]  496 	mov	r5,#0x00
      0000D2                        497 00107$:
      0000D2 C3               [12]  498 	clr	c
      0000D3 EC               [12]  499 	mov	a,r4
      0000D4 9E               [12]  500 	subb	a,r6
      0000D5 ED               [12]  501 	mov	a,r5
      0000D6 9F               [12]  502 	subb	a,r7
      0000D7 50 1B            [24]  503 	jnc	00109$
      0000D9 7A 78            [12]  504 	mov	r2,#0x78
      0000DB 7B 00            [12]  505 	mov	r3,#0x00
      0000DD                        506 00105$:
      0000DD EA               [12]  507 	mov	a,r2
      0000DE 24 FF            [12]  508 	add	a,#0xff
      0000E0 F8               [12]  509 	mov	r0,a
      0000E1 EB               [12]  510 	mov	a,r3
      0000E2 34 FF            [12]  511 	addc	a,#0xff
      0000E4 F9               [12]  512 	mov	r1,a
      0000E5 88 02            [24]  513 	mov	ar2,r0
      0000E7 89 03            [24]  514 	mov	ar3,r1
      0000E9 E8               [12]  515 	mov	a,r0
      0000EA 49               [12]  516 	orl	a,r1
      0000EB 70 F0            [24]  517 	jnz	00105$
      0000ED 0C               [12]  518 	inc	r4
      0000EE BC 00 E1         [24]  519 	cjne	r4,#0x00,00107$
      0000F1 0D               [12]  520 	inc	r5
      0000F2 80 DE            [24]  521 	sjmp	00107$
      0000F4                        522 00109$:
                                    523 ;	delay.h:8: }
      0000F4 22               [24]  524 	ret
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'UartBegin'
                                    527 ;------------------------------------------------------------
                                    528 ;	main.c:8: void UartBegin()
                                    529 ;	-----------------------------------------
                                    530 ;	 function UartBegin
                                    531 ;	-----------------------------------------
      0000F5                        532 _UartBegin:
                                    533 ;	main.c:12: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000F5 75 89 20         [24]  534 	mov	_TMOD,#0x20
                                    535 ;	main.c:14: TH1 = 0XF3; //2400
      0000F8 75 8D F3         [24]  536 	mov	_TH1,#0xf3
                                    537 ;	main.c:15: SCON = 0X50;
      0000FB 75 98 50         [24]  538 	mov	_SCON,#0x50
                                    539 ;	main.c:17: PCON |= 1<<7; //double the baudrate - 4800
      0000FE 43 87 80         [24]  540 	orl	_PCON,#0x80
                                    541 ;	main.c:19: TR1 = 1; //START TIMER
                                    542 ;	assignBit
      000101 D2 8E            [12]  543 	setb	_TR1
                                    544 ;	main.c:20: }
      000103 22               [24]  545 	ret
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'UartReadReady'
                                    548 ;------------------------------------------------------------
                                    549 ;	main.c:22: unsigned char UartReadReady()
                                    550 ;	-----------------------------------------
                                    551 ;	 function UartReadReady
                                    552 ;	-----------------------------------------
      000104                        553 _UartReadReady:
                                    554 ;	main.c:24: if(RI==0)return 0; //not received any char
      000104 20 98 04         [24]  555 	jb	_RI,00102$
      000107 75 82 00         [24]  556 	mov	dpl,#0x00
      00010A 22               [24]  557 	ret
      00010B                        558 00102$:
                                    559 ;	main.c:25: else return 1; //received and ready
      00010B 75 82 01         [24]  560 	mov	dpl,#0x01
                                    561 ;	main.c:26: }
      00010E 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'UartRead'
                                    565 ;------------------------------------------------------------
                                    566 ;value                     Allocated to registers 
                                    567 ;------------------------------------------------------------
                                    568 ;	main.c:28: unsigned char UartRead()
                                    569 ;	-----------------------------------------
                                    570 ;	 function UartRead
                                    571 ;	-----------------------------------------
      00010F                        572 _UartRead:
                                    573 ;	main.c:31: while(RI==0); //wait till RX
      00010F                        574 00101$:
                                    575 ;	main.c:32: RI=0;
                                    576 ;	assignBit
      00010F 10 98 02         [24]  577 	jbc	_RI,00114$
      000112 80 FB            [24]  578 	sjmp	00101$
      000114                        579 00114$:
                                    580 ;	main.c:33: value = SBUF;
      000114 85 99 82         [24]  581 	mov	dpl,_SBUF
                                    582 ;	main.c:34: return value;
                                    583 ;	main.c:35: }
      000117 22               [24]  584 	ret
                                    585 ;------------------------------------------------------------
                                    586 ;Allocation info for local variables in function 'UartWrite'
                                    587 ;------------------------------------------------------------
                                    588 ;value                     Allocated to registers 
                                    589 ;------------------------------------------------------------
                                    590 ;	main.c:38: void UartWrite(unsigned char value)
                                    591 ;	-----------------------------------------
                                    592 ;	 function UartWrite
                                    593 ;	-----------------------------------------
      000118                        594 _UartWrite:
      000118 85 82 99         [24]  595 	mov	_SBUF,dpl
                                    596 ;	main.c:41: while(TI==0); // wait till TX
      00011B                        597 00101$:
                                    598 ;	main.c:42: TI=0;
                                    599 ;	assignBit
      00011B 10 99 02         [24]  600 	jbc	_TI,00114$
      00011E 80 FB            [24]  601 	sjmp	00101$
      000120                        602 00114$:
                                    603 ;	main.c:43: }
      000120 22               [24]  604 	ret
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'UartWriteBuff'
                                    607 ;------------------------------------------------------------
                                    608 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    609 ;p                         Allocated to registers r5 r6 r7 
                                    610 ;i                         Allocated to registers r4 
                                    611 ;------------------------------------------------------------
                                    612 ;	main.c:45: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    613 ;	-----------------------------------------
                                    614 ;	 function UartWriteBuff
                                    615 ;	-----------------------------------------
      000121                        616 _UartWriteBuff:
      000121 AD 82            [24]  617 	mov	r5,dpl
      000123 AE 83            [24]  618 	mov	r6,dph
      000125 AF F0            [24]  619 	mov	r7,b
                                    620 ;	main.c:48: for (i=0;i<length;i++)
      000127 7C 00            [12]  621 	mov	r4,#0x00
      000129                        622 00103$:
      000129 C3               [12]  623 	clr	c
      00012A EC               [12]  624 	mov	a,r4
      00012B 95 08            [12]  625 	subb	a,_UartWriteBuff_PARM_2
      00012D 50 29            [24]  626 	jnc	00105$
                                    627 ;	main.c:50: UartWrite(p[i]);
      00012F EC               [12]  628 	mov	a,r4
      000130 2D               [12]  629 	add	a,r5
      000131 F9               [12]  630 	mov	r1,a
      000132 E4               [12]  631 	clr	a
      000133 3E               [12]  632 	addc	a,r6
      000134 FA               [12]  633 	mov	r2,a
      000135 8F 03            [24]  634 	mov	ar3,r7
      000137 89 82            [24]  635 	mov	dpl,r1
      000139 8A 83            [24]  636 	mov	dph,r2
      00013B 8B F0            [24]  637 	mov	b,r3
      00013D 12 02 24         [24]  638 	lcall	__gptrget
      000140 F5 82            [12]  639 	mov	dpl,a
      000142 C0 07            [24]  640 	push	ar7
      000144 C0 06            [24]  641 	push	ar6
      000146 C0 05            [24]  642 	push	ar5
      000148 C0 04            [24]  643 	push	ar4
      00014A 12 01 18         [24]  644 	lcall	_UartWrite
      00014D D0 04            [24]  645 	pop	ar4
      00014F D0 05            [24]  646 	pop	ar5
      000151 D0 06            [24]  647 	pop	ar6
      000153 D0 07            [24]  648 	pop	ar7
                                    649 ;	main.c:48: for (i=0;i<length;i++)
      000155 0C               [12]  650 	inc	r4
      000156 80 D1            [24]  651 	sjmp	00103$
      000158                        652 00105$:
                                    653 ;	main.c:52: }
      000158 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'UartReadBuff'
                                    657 ;------------------------------------------------------------
                                    658 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    659 ;p                         Allocated to registers r5 r6 r7 
                                    660 ;i                         Allocated to registers r4 
                                    661 ;------------------------------------------------------------
                                    662 ;	main.c:54: void UartReadBuff(unsigned char *p, unsigned char length)
                                    663 ;	-----------------------------------------
                                    664 ;	 function UartReadBuff
                                    665 ;	-----------------------------------------
      000159                        666 _UartReadBuff:
      000159 AD 82            [24]  667 	mov	r5,dpl
      00015B AE 83            [24]  668 	mov	r6,dph
      00015D AF F0            [24]  669 	mov	r7,b
                                    670 ;	main.c:57: for (i=0;i<length;i++)
      00015F 7C 00            [12]  671 	mov	r4,#0x00
      000161                        672 00103$:
      000161 C3               [12]  673 	clr	c
      000162 EC               [12]  674 	mov	a,r4
      000163 95 09            [12]  675 	subb	a,_UartReadBuff_PARM_2
      000165 50 36            [24]  676 	jnc	00105$
                                    677 ;	main.c:59: p[i] = UartRead();
      000167 EC               [12]  678 	mov	a,r4
      000168 2D               [12]  679 	add	a,r5
      000169 F9               [12]  680 	mov	r1,a
      00016A E4               [12]  681 	clr	a
      00016B 3E               [12]  682 	addc	a,r6
      00016C FA               [12]  683 	mov	r2,a
      00016D 8F 03            [24]  684 	mov	ar3,r7
      00016F C0 07            [24]  685 	push	ar7
      000171 C0 06            [24]  686 	push	ar6
      000173 C0 05            [24]  687 	push	ar5
      000175 C0 04            [24]  688 	push	ar4
      000177 C0 03            [24]  689 	push	ar3
      000179 C0 02            [24]  690 	push	ar2
      00017B C0 01            [24]  691 	push	ar1
      00017D 12 01 0F         [24]  692 	lcall	_UartRead
      000180 A8 82            [24]  693 	mov	r0,dpl
      000182 D0 01            [24]  694 	pop	ar1
      000184 D0 02            [24]  695 	pop	ar2
      000186 D0 03            [24]  696 	pop	ar3
      000188 D0 04            [24]  697 	pop	ar4
      00018A D0 05            [24]  698 	pop	ar5
      00018C D0 06            [24]  699 	pop	ar6
      00018E D0 07            [24]  700 	pop	ar7
      000190 89 82            [24]  701 	mov	dpl,r1
      000192 8A 83            [24]  702 	mov	dph,r2
      000194 8B F0            [24]  703 	mov	b,r3
      000196 E8               [12]  704 	mov	a,r0
      000197 12 02 09         [24]  705 	lcall	__gptrput
                                    706 ;	main.c:57: for (i=0;i<length;i++)
      00019A 0C               [12]  707 	inc	r4
      00019B 80 C4            [24]  708 	sjmp	00103$
      00019D                        709 00105$:
                                    710 ;	main.c:61: }
      00019D 22               [24]  711 	ret
                                    712 ;------------------------------------------------------------
                                    713 ;Allocation info for local variables in function 'UartPrint'
                                    714 ;------------------------------------------------------------
                                    715 ;p                         Allocated to registers 
                                    716 ;------------------------------------------------------------
                                    717 ;	main.c:63: void UartPrint(unsigned char *p)
                                    718 ;	-----------------------------------------
                                    719 ;	 function UartPrint
                                    720 ;	-----------------------------------------
      00019E                        721 _UartPrint:
      00019E AD 82            [24]  722 	mov	r5,dpl
      0001A0 AE 83            [24]  723 	mov	r6,dph
      0001A2 AF F0            [24]  724 	mov	r7,b
                                    725 ;	main.c:65: do
      0001A4                        726 00101$:
                                    727 ;	main.c:67: UartWrite(*p);
      0001A4 8D 82            [24]  728 	mov	dpl,r5
      0001A6 8E 83            [24]  729 	mov	dph,r6
      0001A8 8F F0            [24]  730 	mov	b,r7
      0001AA 12 02 24         [24]  731 	lcall	__gptrget
      0001AD FC               [12]  732 	mov	r4,a
      0001AE A3               [24]  733 	inc	dptr
      0001AF AD 82            [24]  734 	mov	r5,dpl
      0001B1 AE 83            [24]  735 	mov	r6,dph
      0001B3 8C 82            [24]  736 	mov	dpl,r4
      0001B5 C0 07            [24]  737 	push	ar7
      0001B7 C0 06            [24]  738 	push	ar6
      0001B9 C0 05            [24]  739 	push	ar5
      0001BB 12 01 18         [24]  740 	lcall	_UartWrite
      0001BE D0 05            [24]  741 	pop	ar5
      0001C0 D0 06            [24]  742 	pop	ar6
      0001C2 D0 07            [24]  743 	pop	ar7
                                    744 ;	main.c:68: }while(*(++p)!=0);
      0001C4 8D 82            [24]  745 	mov	dpl,r5
      0001C6 8E 83            [24]  746 	mov	dph,r6
      0001C8 8F F0            [24]  747 	mov	b,r7
      0001CA 12 02 24         [24]  748 	lcall	__gptrget
      0001CD 70 D5            [24]  749 	jnz	00101$
                                    750 ;	main.c:69: }
      0001CF 22               [24]  751 	ret
                                    752 ;------------------------------------------------------------
                                    753 ;Allocation info for local variables in function 'main'
                                    754 ;------------------------------------------------------------
                                    755 ;i                         Allocated to registers r7 
                                    756 ;------------------------------------------------------------
                                    757 ;	main.c:73: int main()
                                    758 ;	-----------------------------------------
                                    759 ;	 function main
                                    760 ;	-----------------------------------------
      0001D0                        761 _main:
                                    762 ;	main.c:75: UartBegin(); //init uart
      0001D0 12 00 F5         [24]  763 	lcall	_UartBegin
                                    764 ;	main.c:76: UartPrint("Hello World from Syamputer :)\nExiting in...");
      0001D3 90 02 44         [24]  765 	mov	dptr,#___str_0
      0001D6 75 F0 80         [24]  766 	mov	b,#0x80
      0001D9 12 01 9E         [24]  767 	lcall	_UartPrint
                                    768 ;	main.c:77: for(unsigned char i=0;i<5;i++)
      0001DC 7F 00            [12]  769 	mov	r7,#0x00
      0001DE                        770 00106$:
      0001DE BF 05 00         [24]  771 	cjne	r7,#0x05,00123$
      0001E1                        772 00123$:
      0001E1 50 21            [24]  773 	jnc	00101$
                                    774 ;	main.c:79: UartWrite('\t');
      0001E3 75 82 09         [24]  775 	mov	dpl,#0x09
      0001E6 C0 07            [24]  776 	push	ar7
      0001E8 12 01 18         [24]  777 	lcall	_UartWrite
      0001EB D0 07            [24]  778 	pop	ar7
                                    779 ;	main.c:80: UartWrite('0'+i);
      0001ED 8F 06            [24]  780 	mov	ar6,r7
      0001EF 74 30            [12]  781 	mov	a,#0x30
      0001F1 2E               [12]  782 	add	a,r6
      0001F2 F5 82            [12]  783 	mov	dpl,a
      0001F4 C0 07            [24]  784 	push	ar7
      0001F6 12 01 18         [24]  785 	lcall	_UartWrite
                                    786 ;	main.c:81: delayms(1000);		
      0001F9 90 03 E8         [24]  787 	mov	dptr,#0x03e8
      0001FC 12 00 CA         [24]  788 	lcall	_delayms
      0001FF D0 07            [24]  789 	pop	ar7
                                    790 ;	main.c:77: for(unsigned char i=0;i<5;i++)
      000201 0F               [12]  791 	inc	r7
      000202 80 DA            [24]  792 	sjmp	00106$
      000204                        793 00101$:
                                    794 ;	main.c:83: exitApp();
      000204 12 00 C6         [24]  795 	lcall	_exitApp
                                    796 ;	main.c:84: while(1);
      000207                        797 00103$:
                                    798 ;	main.c:85: }
      000207 80 FE            [24]  799 	sjmp	00103$
                                    800 	.area CSEG    (CODE)
                                    801 	.area CONST   (CODE)
                                    802 	.area CONST   (CODE)
      000244                        803 ___str_0:
      000244 48 65 6C 6C 6F 20 57   804 	.ascii "Hello World from Syamputer :)"
             6F 72 6C 64 20 66 72
             6F 6D 20 53 79 61 6D
             70 75 74 65 72 20 3A
             29
      000261 0A                     805 	.db 0x0a
      000262 45 78 69 74 69 6E 67   806 	.ascii "Exiting in..."
             20 69 6E 2E 2E 2E
      00026F 00                     807 	.db 0x00
                                    808 	.area CSEG    (CODE)
                                    809 	.area XINIT   (CODE)
                                    810 	.area CABS    (ABS,CODE)
