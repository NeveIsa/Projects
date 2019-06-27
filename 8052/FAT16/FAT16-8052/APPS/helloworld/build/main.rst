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
                                     19 	.globl _exitApp
                                     20 	.globl _TF2
                                     21 	.globl _EXF2
                                     22 	.globl _RCLK
                                     23 	.globl _TCLK
                                     24 	.globl _EXEN2
                                     25 	.globl _TR2
                                     26 	.globl _C_T2
                                     27 	.globl _CP_RL2
                                     28 	.globl _T2CON_7
                                     29 	.globl _T2CON_6
                                     30 	.globl _T2CON_5
                                     31 	.globl _T2CON_4
                                     32 	.globl _T2CON_3
                                     33 	.globl _T2CON_2
                                     34 	.globl _T2CON_1
                                     35 	.globl _T2CON_0
                                     36 	.globl _PT2
                                     37 	.globl _ET2
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _PS
                                     47 	.globl _PT1
                                     48 	.globl _PX1
                                     49 	.globl _PT0
                                     50 	.globl _PX0
                                     51 	.globl _RD
                                     52 	.globl _WR
                                     53 	.globl _T1
                                     54 	.globl _T0
                                     55 	.globl _INT1
                                     56 	.globl _INT0
                                     57 	.globl _TXD
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _EA
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _TH2
                                    114 	.globl _TL2
                                    115 	.globl _RCAP2H
                                    116 	.globl _RCAP2L
                                    117 	.globl _T2CON
                                    118 	.globl _B
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _IP
                                    122 	.globl _P3
                                    123 	.globl _IE
                                    124 	.globl _P2
                                    125 	.globl _SBUF
                                    126 	.globl _SCON
                                    127 	.globl _P1
                                    128 	.globl _TH1
                                    129 	.globl _TH0
                                    130 	.globl _TL1
                                    131 	.globl _TL0
                                    132 	.globl _TMOD
                                    133 	.globl _TCON
                                    134 	.globl _PCON
                                    135 	.globl _DPH
                                    136 	.globl _DPL
                                    137 	.globl _SP
                                    138 	.globl _P0
                                    139 	.globl _UartReadBuff_PARM_2
                                    140 	.globl _UartWriteBuff_PARM_2
                                    141 ;--------------------------------------------------------
                                    142 ; special function registers
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0	=	0x0080
                           000081   147 _SP	=	0x0081
                           000082   148 _DPL	=	0x0082
                           000083   149 _DPH	=	0x0083
                           000087   150 _PCON	=	0x0087
                           000088   151 _TCON	=	0x0088
                           000089   152 _TMOD	=	0x0089
                           00008A   153 _TL0	=	0x008a
                           00008B   154 _TL1	=	0x008b
                           00008C   155 _TH0	=	0x008c
                           00008D   156 _TH1	=	0x008d
                           000090   157 _P1	=	0x0090
                           000098   158 _SCON	=	0x0098
                           000099   159 _SBUF	=	0x0099
                           0000A0   160 _P2	=	0x00a0
                           0000A8   161 _IE	=	0x00a8
                           0000B0   162 _P3	=	0x00b0
                           0000B8   163 _IP	=	0x00b8
                           0000D0   164 _PSW	=	0x00d0
                           0000E0   165 _ACC	=	0x00e0
                           0000F0   166 _B	=	0x00f0
                           0000C8   167 _T2CON	=	0x00c8
                           0000CA   168 _RCAP2L	=	0x00ca
                           0000CB   169 _RCAP2H	=	0x00cb
                           0000CC   170 _TL2	=	0x00cc
                           0000CD   171 _TH2	=	0x00cd
                                    172 ;--------------------------------------------------------
                                    173 ; special function bits
                                    174 ;--------------------------------------------------------
                                    175 	.area RSEG    (ABS,DATA)
      000000                        176 	.org 0x0000
                           000080   177 _P0_0	=	0x0080
                           000081   178 _P0_1	=	0x0081
                           000082   179 _P0_2	=	0x0082
                           000083   180 _P0_3	=	0x0083
                           000084   181 _P0_4	=	0x0084
                           000085   182 _P0_5	=	0x0085
                           000086   183 _P0_6	=	0x0086
                           000087   184 _P0_7	=	0x0087
                           000088   185 _IT0	=	0x0088
                           000089   186 _IE0	=	0x0089
                           00008A   187 _IT1	=	0x008a
                           00008B   188 _IE1	=	0x008b
                           00008C   189 _TR0	=	0x008c
                           00008D   190 _TF0	=	0x008d
                           00008E   191 _TR1	=	0x008e
                           00008F   192 _TF1	=	0x008f
                           000090   193 _P1_0	=	0x0090
                           000091   194 _P1_1	=	0x0091
                           000092   195 _P1_2	=	0x0092
                           000093   196 _P1_3	=	0x0093
                           000094   197 _P1_4	=	0x0094
                           000095   198 _P1_5	=	0x0095
                           000096   199 _P1_6	=	0x0096
                           000097   200 _P1_7	=	0x0097
                           000098   201 _RI	=	0x0098
                           000099   202 _TI	=	0x0099
                           00009A   203 _RB8	=	0x009a
                           00009B   204 _TB8	=	0x009b
                           00009C   205 _REN	=	0x009c
                           00009D   206 _SM2	=	0x009d
                           00009E   207 _SM1	=	0x009e
                           00009F   208 _SM0	=	0x009f
                           0000A0   209 _P2_0	=	0x00a0
                           0000A1   210 _P2_1	=	0x00a1
                           0000A2   211 _P2_2	=	0x00a2
                           0000A3   212 _P2_3	=	0x00a3
                           0000A4   213 _P2_4	=	0x00a4
                           0000A5   214 _P2_5	=	0x00a5
                           0000A6   215 _P2_6	=	0x00a6
                           0000A7   216 _P2_7	=	0x00a7
                           0000A8   217 _EX0	=	0x00a8
                           0000A9   218 _ET0	=	0x00a9
                           0000AA   219 _EX1	=	0x00aa
                           0000AB   220 _ET1	=	0x00ab
                           0000AC   221 _ES	=	0x00ac
                           0000AF   222 _EA	=	0x00af
                           0000B0   223 _P3_0	=	0x00b0
                           0000B1   224 _P3_1	=	0x00b1
                           0000B2   225 _P3_2	=	0x00b2
                           0000B3   226 _P3_3	=	0x00b3
                           0000B4   227 _P3_4	=	0x00b4
                           0000B5   228 _P3_5	=	0x00b5
                           0000B6   229 _P3_6	=	0x00b6
                           0000B7   230 _P3_7	=	0x00b7
                           0000B0   231 _RXD	=	0x00b0
                           0000B1   232 _TXD	=	0x00b1
                           0000B2   233 _INT0	=	0x00b2
                           0000B3   234 _INT1	=	0x00b3
                           0000B4   235 _T0	=	0x00b4
                           0000B5   236 _T1	=	0x00b5
                           0000B6   237 _WR	=	0x00b6
                           0000B7   238 _RD	=	0x00b7
                           0000B8   239 _PX0	=	0x00b8
                           0000B9   240 _PT0	=	0x00b9
                           0000BA   241 _PX1	=	0x00ba
                           0000BB   242 _PT1	=	0x00bb
                           0000BC   243 _PS	=	0x00bc
                           0000D0   244 _P	=	0x00d0
                           0000D1   245 _F1	=	0x00d1
                           0000D2   246 _OV	=	0x00d2
                           0000D3   247 _RS0	=	0x00d3
                           0000D4   248 _RS1	=	0x00d4
                           0000D5   249 _F0	=	0x00d5
                           0000D6   250 _AC	=	0x00d6
                           0000D7   251 _CY	=	0x00d7
                           0000AD   252 _ET2	=	0x00ad
                           0000BD   253 _PT2	=	0x00bd
                           0000C8   254 _T2CON_0	=	0x00c8
                           0000C9   255 _T2CON_1	=	0x00c9
                           0000CA   256 _T2CON_2	=	0x00ca
                           0000CB   257 _T2CON_3	=	0x00cb
                           0000CC   258 _T2CON_4	=	0x00cc
                           0000CD   259 _T2CON_5	=	0x00cd
                           0000CE   260 _T2CON_6	=	0x00ce
                           0000CF   261 _T2CON_7	=	0x00cf
                           0000C8   262 _CP_RL2	=	0x00c8
                           0000C9   263 _C_T2	=	0x00c9
                           0000CA   264 _TR2	=	0x00ca
                           0000CB   265 _EXEN2	=	0x00cb
                           0000CC   266 _TCLK	=	0x00cc
                           0000CD   267 _RCLK	=	0x00cd
                           0000CE   268 _EXF2	=	0x00ce
                           0000CF   269 _TF2	=	0x00cf
                                    270 ;--------------------------------------------------------
                                    271 ; overlayable register banks
                                    272 ;--------------------------------------------------------
                                    273 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        274 	.ds 8
                                    275 ;--------------------------------------------------------
                                    276 ; internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area DSEG    (DATA)
      000008                        279 _UartWriteBuff_PARM_2:
      000008                        280 	.ds 1
      000009                        281 _UartReadBuff_PARM_2:
      000009                        282 	.ds 1
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable items in internal ram 
                                    285 ;--------------------------------------------------------
                                    286 	.area	OSEG    (OVR,DATA)
                                    287 	.area	OSEG    (OVR,DATA)
                                    288 	.area	OSEG    (OVR,DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; Stack segment in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 	.area	SSEG
      00000B                        293 __start__stack:
      00000B                        294 	.ds	1
                                    295 
                                    296 ;--------------------------------------------------------
                                    297 ; indirectly addressable internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area ISEG    (DATA)
                                    300 ;--------------------------------------------------------
                                    301 ; absolute internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area IABS    (ABS,DATA)
                                    304 	.area IABS    (ABS,DATA)
                                    305 ;--------------------------------------------------------
                                    306 ; bit data
                                    307 ;--------------------------------------------------------
                                    308 	.area BSEG    (BIT)
                                    309 ;--------------------------------------------------------
                                    310 ; paged external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area PSEG    (PAG,XDATA)
                                    313 ;--------------------------------------------------------
                                    314 ; external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area XSEG    (XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; absolute external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XABS    (ABS,XDATA)
                                    321 ;--------------------------------------------------------
                                    322 ; external initialized ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area XISEG   (XDATA)
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT0 (CODE)
                                    327 	.area GSINIT1 (CODE)
                                    328 	.area GSINIT2 (CODE)
                                    329 	.area GSINIT3 (CODE)
                                    330 	.area GSINIT4 (CODE)
                                    331 	.area GSINIT5 (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.area GSFINAL (CODE)
                                    334 	.area CSEG    (CODE)
                                    335 ;--------------------------------------------------------
                                    336 ; interrupt vector 
                                    337 ;--------------------------------------------------------
                                    338 	.area HOME    (CODE)
      000000                        339 __interrupt_vect:
      000000 02 00 06         [24]  340 	ljmp	__sdcc_gsinit_startup
                                    341 ;--------------------------------------------------------
                                    342 ; global & static initialisations
                                    343 ;--------------------------------------------------------
                                    344 	.area HOME    (CODE)
                                    345 	.area GSINIT  (CODE)
                                    346 	.area GSFINAL (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.globl __sdcc_gsinit_startup
                                    349 	.globl __sdcc_program_startup
                                    350 	.globl __start__stack
                                    351 	.globl __mcs51_genXINIT
                                    352 	.globl __mcs51_genXRAMCLEAR
                                    353 	.globl __mcs51_genRAMCLEAR
                                    354 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  355 	ljmp	__sdcc_program_startup
                                    356 ;--------------------------------------------------------
                                    357 ; Home
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area HOME    (CODE)
      000003                        361 __sdcc_program_startup:
      000003 02 01 A1         [24]  362 	ljmp	_main
                                    363 ;	return from main will return to caller
                                    364 ;--------------------------------------------------------
                                    365 ; code
                                    366 ;--------------------------------------------------------
                                    367 	.area CSEG    (CODE)
                                    368 ;------------------------------------------------------------
                                    369 ;Allocation info for local variables in function 'exitApp'
                                    370 ;------------------------------------------------------------
                                    371 ;x                         Allocated to registers r6 r7 
                                    372 ;y                         Allocated to registers r4 r5 
                                    373 ;------------------------------------------------------------
                                    374 ;	exitapp.h:13: void exitApp()
                                    375 ;	-----------------------------------------
                                    376 ;	 function exitApp
                                    377 ;	-----------------------------------------
      000062                        378 _exitApp:
                           000007   379 	ar7 = 0x07
                           000006   380 	ar6 = 0x06
                           000005   381 	ar5 = 0x05
                           000004   382 	ar4 = 0x04
                           000003   383 	ar3 = 0x03
                           000002   384 	ar2 = 0x02
                           000001   385 	ar1 = 0x01
                           000000   386 	ar0 = 0x00
                                    387 ;	exitapp.h:21: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
      000062 7E 00            [12]  388 	mov	r6,#0x00
      000064 7F 00            [12]  389 	mov	r7,#0x00
      000066                        390 00124$:
      000066 7C C8            [12]  391 	mov	r4,#0xc8
      000068 7D 00            [12]  392 	mov	r5,#0x00
      00006A                        393 00109$:
      00006A 1C               [12]  394 	dec	r4
      00006B BC FF 01         [24]  395 	cjne	r4,#0xff,00178$
      00006E 1D               [12]  396 	dec	r5
      00006F                        397 00178$:
      00006F EC               [12]  398 	mov	a,r4
      000070 4D               [12]  399 	orl	a,r5
      000071 70 F7            [24]  400 	jnz	00109$
      000073 0E               [12]  401 	inc	r6
      000074 BE 00 01         [24]  402 	cjne	r6,#0x00,00180$
      000077 0F               [12]  403 	inc	r7
      000078                        404 00180$:
      000078 C3               [12]  405 	clr	c
      000079 EE               [12]  406 	mov	a,r6
      00007A 94 FA            [12]  407 	subb	a,#0xfa
      00007C EF               [12]  408 	mov	a,r7
      00007D 94 00            [12]  409 	subb	a,#0x00
      00007F 40 E5            [24]  410 	jc	00124$
                                    411 ;	exitapp.h:22: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
      000081 7E 00            [12]  412 	mov	r6,#0x00
      000083 7F 00            [12]  413 	mov	r7,#0x00
      000085                        414 00128$:
      000085 7C C8            [12]  415 	mov	r4,#0xc8
      000087 7D 00            [12]  416 	mov	r5,#0x00
      000089                        417 00114$:
      000089 1C               [12]  418 	dec	r4
      00008A BC FF 01         [24]  419 	cjne	r4,#0xff,00182$
      00008D 1D               [12]  420 	dec	r5
      00008E                        421 00182$:
      00008E EC               [12]  422 	mov	a,r4
      00008F 4D               [12]  423 	orl	a,r5
      000090 70 F7            [24]  424 	jnz	00114$
      000092 0E               [12]  425 	inc	r6
      000093 BE 00 01         [24]  426 	cjne	r6,#0x00,00184$
      000096 0F               [12]  427 	inc	r7
      000097                        428 00184$:
      000097 C3               [12]  429 	clr	c
      000098 EE               [12]  430 	mov	a,r6
      000099 94 FA            [12]  431 	subb	a,#0xfa
      00009B EF               [12]  432 	mov	a,r7
      00009C 94 00            [12]  433 	subb	a,#0x00
      00009E 40 E5            [24]  434 	jc	00128$
                                    435 ;	exitapp.h:25: RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
      0000A0 53 90 EF         [24]  436 	anl	_P1,#0xef
                                    437 ;	exitapp.h:28: for(x=0;x<250;x++) for(y=0;y<100;y++); 	// inner for loop takes about 3 cycles,
      0000A3 7E 00            [12]  438 	mov	r6,#0x00
      0000A5 7F 00            [12]  439 	mov	r7,#0x00
      0000A7                        440 00132$:
      0000A7 7C 64            [12]  441 	mov	r4,#0x64
      0000A9 7D 00            [12]  442 	mov	r5,#0x00
      0000AB                        443 00119$:
      0000AB 1C               [12]  444 	dec	r4
      0000AC BC FF 01         [24]  445 	cjne	r4,#0xff,00186$
      0000AF 1D               [12]  446 	dec	r5
      0000B0                        447 00186$:
      0000B0 EC               [12]  448 	mov	a,r4
      0000B1 4D               [12]  449 	orl	a,r5
      0000B2 70 F7            [24]  450 	jnz	00119$
      0000B4 0E               [12]  451 	inc	r6
      0000B5 BE 00 01         [24]  452 	cjne	r6,#0x00,00188$
      0000B8 0F               [12]  453 	inc	r7
      0000B9                        454 00188$:
      0000B9 C3               [12]  455 	clr	c
      0000BA EE               [12]  456 	mov	a,r6
      0000BB 94 FA            [12]  457 	subb	a,#0xfa
      0000BD EF               [12]  458 	mov	a,r7
      0000BE 94 00            [12]  459 	subb	a,#0x00
      0000C0 40 E5            [24]  460 	jc	00132$
                                    461 ;	exitapp.h:32: RESET_PORT_8052 |= (1 << RESET_PIN_8052);	
      0000C2 43 90 10         [24]  462 	orl	_P1,#0x10
                                    463 ;	exitapp.h:35: }
      0000C5 22               [24]  464 	ret
                                    465 ;------------------------------------------------------------
                                    466 ;Allocation info for local variables in function 'UartBegin'
                                    467 ;------------------------------------------------------------
                                    468 ;	main.c:7: void UartBegin()
                                    469 ;	-----------------------------------------
                                    470 ;	 function UartBegin
                                    471 ;	-----------------------------------------
      0000C6                        472 _UartBegin:
                                    473 ;	main.c:11: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000C6 75 89 20         [24]  474 	mov	_TMOD,#0x20
                                    475 ;	main.c:13: TH1 = 0XF3; //2400
      0000C9 75 8D F3         [24]  476 	mov	_TH1,#0xf3
                                    477 ;	main.c:14: SCON = 0X50;
      0000CC 75 98 50         [24]  478 	mov	_SCON,#0x50
                                    479 ;	main.c:16: PCON |= 1<<7; //double the baudrate - 4800
      0000CF 43 87 80         [24]  480 	orl	_PCON,#0x80
                                    481 ;	main.c:18: TR1 = 1; //START TIMER
                                    482 ;	assignBit
      0000D2 D2 8E            [12]  483 	setb	_TR1
                                    484 ;	main.c:19: }
      0000D4 22               [24]  485 	ret
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'UartReadReady'
                                    488 ;------------------------------------------------------------
                                    489 ;	main.c:21: unsigned char UartReadReady()
                                    490 ;	-----------------------------------------
                                    491 ;	 function UartReadReady
                                    492 ;	-----------------------------------------
      0000D5                        493 _UartReadReady:
                                    494 ;	main.c:23: if(RI==0)return 0; //not received any char
      0000D5 20 98 04         [24]  495 	jb	_RI,00102$
      0000D8 75 82 00         [24]  496 	mov	dpl,#0x00
      0000DB 22               [24]  497 	ret
      0000DC                        498 00102$:
                                    499 ;	main.c:24: else return 1; //received and ready
      0000DC 75 82 01         [24]  500 	mov	dpl,#0x01
                                    501 ;	main.c:25: }
      0000DF 22               [24]  502 	ret
                                    503 ;------------------------------------------------------------
                                    504 ;Allocation info for local variables in function 'UartRead'
                                    505 ;------------------------------------------------------------
                                    506 ;value                     Allocated to registers 
                                    507 ;------------------------------------------------------------
                                    508 ;	main.c:27: unsigned char UartRead()
                                    509 ;	-----------------------------------------
                                    510 ;	 function UartRead
                                    511 ;	-----------------------------------------
      0000E0                        512 _UartRead:
                                    513 ;	main.c:30: while(RI==0); //wait till RX
      0000E0                        514 00101$:
                                    515 ;	main.c:31: RI=0;
                                    516 ;	assignBit
      0000E0 10 98 02         [24]  517 	jbc	_RI,00114$
      0000E3 80 FB            [24]  518 	sjmp	00101$
      0000E5                        519 00114$:
                                    520 ;	main.c:32: value = SBUF;
      0000E5 85 99 82         [24]  521 	mov	dpl,_SBUF
                                    522 ;	main.c:33: return value;
                                    523 ;	main.c:34: }
      0000E8 22               [24]  524 	ret
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'UartWrite'
                                    527 ;------------------------------------------------------------
                                    528 ;value                     Allocated to registers 
                                    529 ;------------------------------------------------------------
                                    530 ;	main.c:37: void UartWrite(unsigned char value)
                                    531 ;	-----------------------------------------
                                    532 ;	 function UartWrite
                                    533 ;	-----------------------------------------
      0000E9                        534 _UartWrite:
      0000E9 85 82 99         [24]  535 	mov	_SBUF,dpl
                                    536 ;	main.c:40: while(TI==0); // wait till TX
      0000EC                        537 00101$:
                                    538 ;	main.c:41: TI=0;
                                    539 ;	assignBit
      0000EC 10 99 02         [24]  540 	jbc	_TI,00114$
      0000EF 80 FB            [24]  541 	sjmp	00101$
      0000F1                        542 00114$:
                                    543 ;	main.c:42: }
      0000F1 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'UartWriteBuff'
                                    547 ;------------------------------------------------------------
                                    548 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    549 ;p                         Allocated to registers r5 r6 r7 
                                    550 ;i                         Allocated to registers r4 
                                    551 ;------------------------------------------------------------
                                    552 ;	main.c:44: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    553 ;	-----------------------------------------
                                    554 ;	 function UartWriteBuff
                                    555 ;	-----------------------------------------
      0000F2                        556 _UartWriteBuff:
      0000F2 AD 82            [24]  557 	mov	r5,dpl
      0000F4 AE 83            [24]  558 	mov	r6,dph
      0000F6 AF F0            [24]  559 	mov	r7,b
                                    560 ;	main.c:47: for (i=0;i<length;i++)
      0000F8 7C 00            [12]  561 	mov	r4,#0x00
      0000FA                        562 00103$:
      0000FA C3               [12]  563 	clr	c
      0000FB EC               [12]  564 	mov	a,r4
      0000FC 95 08            [12]  565 	subb	a,_UartWriteBuff_PARM_2
      0000FE 50 29            [24]  566 	jnc	00105$
                                    567 ;	main.c:49: UartWrite(p[i]);
      000100 EC               [12]  568 	mov	a,r4
      000101 2D               [12]  569 	add	a,r5
      000102 F9               [12]  570 	mov	r1,a
      000103 E4               [12]  571 	clr	a
      000104 3E               [12]  572 	addc	a,r6
      000105 FA               [12]  573 	mov	r2,a
      000106 8F 03            [24]  574 	mov	ar3,r7
      000108 89 82            [24]  575 	mov	dpl,r1
      00010A 8A 83            [24]  576 	mov	dph,r2
      00010C 8B F0            [24]  577 	mov	b,r3
      00010E 12 01 CD         [24]  578 	lcall	__gptrget
      000111 F5 82            [12]  579 	mov	dpl,a
      000113 C0 07            [24]  580 	push	ar7
      000115 C0 06            [24]  581 	push	ar6
      000117 C0 05            [24]  582 	push	ar5
      000119 C0 04            [24]  583 	push	ar4
      00011B 12 00 E9         [24]  584 	lcall	_UartWrite
      00011E D0 04            [24]  585 	pop	ar4
      000120 D0 05            [24]  586 	pop	ar5
      000122 D0 06            [24]  587 	pop	ar6
      000124 D0 07            [24]  588 	pop	ar7
                                    589 ;	main.c:47: for (i=0;i<length;i++)
      000126 0C               [12]  590 	inc	r4
      000127 80 D1            [24]  591 	sjmp	00103$
      000129                        592 00105$:
                                    593 ;	main.c:51: }
      000129 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'UartReadBuff'
                                    597 ;------------------------------------------------------------
                                    598 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    599 ;p                         Allocated to registers r5 r6 r7 
                                    600 ;i                         Allocated to registers r4 
                                    601 ;------------------------------------------------------------
                                    602 ;	main.c:53: void UartReadBuff(unsigned char *p, unsigned char length)
                                    603 ;	-----------------------------------------
                                    604 ;	 function UartReadBuff
                                    605 ;	-----------------------------------------
      00012A                        606 _UartReadBuff:
      00012A AD 82            [24]  607 	mov	r5,dpl
      00012C AE 83            [24]  608 	mov	r6,dph
      00012E AF F0            [24]  609 	mov	r7,b
                                    610 ;	main.c:56: for (i=0;i<length;i++)
      000130 7C 00            [12]  611 	mov	r4,#0x00
      000132                        612 00103$:
      000132 C3               [12]  613 	clr	c
      000133 EC               [12]  614 	mov	a,r4
      000134 95 09            [12]  615 	subb	a,_UartReadBuff_PARM_2
      000136 50 36            [24]  616 	jnc	00105$
                                    617 ;	main.c:58: p[i] = UartRead();
      000138 EC               [12]  618 	mov	a,r4
      000139 2D               [12]  619 	add	a,r5
      00013A F9               [12]  620 	mov	r1,a
      00013B E4               [12]  621 	clr	a
      00013C 3E               [12]  622 	addc	a,r6
      00013D FA               [12]  623 	mov	r2,a
      00013E 8F 03            [24]  624 	mov	ar3,r7
      000140 C0 07            [24]  625 	push	ar7
      000142 C0 06            [24]  626 	push	ar6
      000144 C0 05            [24]  627 	push	ar5
      000146 C0 04            [24]  628 	push	ar4
      000148 C0 03            [24]  629 	push	ar3
      00014A C0 02            [24]  630 	push	ar2
      00014C C0 01            [24]  631 	push	ar1
      00014E 12 00 E0         [24]  632 	lcall	_UartRead
      000151 A8 82            [24]  633 	mov	r0,dpl
      000153 D0 01            [24]  634 	pop	ar1
      000155 D0 02            [24]  635 	pop	ar2
      000157 D0 03            [24]  636 	pop	ar3
      000159 D0 04            [24]  637 	pop	ar4
      00015B D0 05            [24]  638 	pop	ar5
      00015D D0 06            [24]  639 	pop	ar6
      00015F D0 07            [24]  640 	pop	ar7
      000161 89 82            [24]  641 	mov	dpl,r1
      000163 8A 83            [24]  642 	mov	dph,r2
      000165 8B F0            [24]  643 	mov	b,r3
      000167 E8               [12]  644 	mov	a,r0
      000168 12 01 B2         [24]  645 	lcall	__gptrput
                                    646 ;	main.c:56: for (i=0;i<length;i++)
      00016B 0C               [12]  647 	inc	r4
      00016C 80 C4            [24]  648 	sjmp	00103$
      00016E                        649 00105$:
                                    650 ;	main.c:60: }
      00016E 22               [24]  651 	ret
                                    652 ;------------------------------------------------------------
                                    653 ;Allocation info for local variables in function 'UartPrint'
                                    654 ;------------------------------------------------------------
                                    655 ;p                         Allocated to registers 
                                    656 ;------------------------------------------------------------
                                    657 ;	main.c:62: void UartPrint(unsigned char *p)
                                    658 ;	-----------------------------------------
                                    659 ;	 function UartPrint
                                    660 ;	-----------------------------------------
      00016F                        661 _UartPrint:
      00016F AD 82            [24]  662 	mov	r5,dpl
      000171 AE 83            [24]  663 	mov	r6,dph
      000173 AF F0            [24]  664 	mov	r7,b
                                    665 ;	main.c:64: do
      000175                        666 00101$:
                                    667 ;	main.c:66: UartWrite(*p);
      000175 8D 82            [24]  668 	mov	dpl,r5
      000177 8E 83            [24]  669 	mov	dph,r6
      000179 8F F0            [24]  670 	mov	b,r7
      00017B 12 01 CD         [24]  671 	lcall	__gptrget
      00017E FC               [12]  672 	mov	r4,a
      00017F A3               [24]  673 	inc	dptr
      000180 AD 82            [24]  674 	mov	r5,dpl
      000182 AE 83            [24]  675 	mov	r6,dph
      000184 8C 82            [24]  676 	mov	dpl,r4
      000186 C0 07            [24]  677 	push	ar7
      000188 C0 06            [24]  678 	push	ar6
      00018A C0 05            [24]  679 	push	ar5
      00018C 12 00 E9         [24]  680 	lcall	_UartWrite
      00018F D0 05            [24]  681 	pop	ar5
      000191 D0 06            [24]  682 	pop	ar6
      000193 D0 07            [24]  683 	pop	ar7
                                    684 ;	main.c:67: }while(*(++p)!=0);
      000195 8D 82            [24]  685 	mov	dpl,r5
      000197 8E 83            [24]  686 	mov	dph,r6
      000199 8F F0            [24]  687 	mov	b,r7
      00019B 12 01 CD         [24]  688 	lcall	__gptrget
      00019E 70 D5            [24]  689 	jnz	00101$
                                    690 ;	main.c:68: }
      0001A0 22               [24]  691 	ret
                                    692 ;------------------------------------------------------------
                                    693 ;Allocation info for local variables in function 'main'
                                    694 ;------------------------------------------------------------
                                    695 ;	main.c:72: int main()
                                    696 ;	-----------------------------------------
                                    697 ;	 function main
                                    698 ;	-----------------------------------------
      0001A1                        699 _main:
                                    700 ;	main.c:74: UartBegin(); //init uart
      0001A1 12 00 C6         [24]  701 	lcall	_UartBegin
                                    702 ;	main.c:75: UartPrint("Hello World from Syamputer :)\n");
      0001A4 90 01 ED         [24]  703 	mov	dptr,#___str_0
      0001A7 75 F0 80         [24]  704 	mov	b,#0x80
      0001AA 12 01 6F         [24]  705 	lcall	_UartPrint
                                    706 ;	main.c:76: exitApp();
      0001AD 12 00 62         [24]  707 	lcall	_exitApp
                                    708 ;	main.c:77: while(1);
      0001B0                        709 00102$:
                                    710 ;	main.c:78: }
      0001B0 80 FE            [24]  711 	sjmp	00102$
                                    712 	.area CSEG    (CODE)
                                    713 	.area CONST   (CODE)
                                    714 	.area CONST   (CODE)
      0001ED                        715 ___str_0:
      0001ED 48 65 6C 6C 6F 20 57   716 	.ascii "Hello World from Syamputer :)"
             6F 72 6C 64 20 66 72
             6F 6D 20 53 79 61 6D
             70 75 74 65 72 20 3A
             29
      00020A 0A                     717 	.db 0x0a
      00020B 00                     718 	.db 0x00
                                    719 	.area CSEG    (CODE)
                                    720 	.area XINIT   (CODE)
                                    721 	.area CABS    (ABS,CODE)
