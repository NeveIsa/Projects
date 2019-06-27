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
                                     12 	.globl _delayms
                                     13 	.globl _UartPrint
                                     14 	.globl _UartReadBuff
                                     15 	.globl _UartWriteBuff
                                     16 	.globl _UartWrite
                                     17 	.globl _UartRead
                                     18 	.globl _UartReadReady
                                     19 	.globl _UartBegin
                                     20 	.globl _exitApp
                                     21 	.globl _TF2
                                     22 	.globl _EXF2
                                     23 	.globl _RCLK
                                     24 	.globl _TCLK
                                     25 	.globl _EXEN2
                                     26 	.globl _TR2
                                     27 	.globl _C_T2
                                     28 	.globl _CP_RL2
                                     29 	.globl _T2CON_7
                                     30 	.globl _T2CON_6
                                     31 	.globl _T2CON_5
                                     32 	.globl _T2CON_4
                                     33 	.globl _T2CON_3
                                     34 	.globl _T2CON_2
                                     35 	.globl _T2CON_1
                                     36 	.globl _T2CON_0
                                     37 	.globl _PT2
                                     38 	.globl _ET2
                                     39 	.globl _CY
                                     40 	.globl _AC
                                     41 	.globl _F0
                                     42 	.globl _RS1
                                     43 	.globl _RS0
                                     44 	.globl _OV
                                     45 	.globl _F1
                                     46 	.globl _P
                                     47 	.globl _PS
                                     48 	.globl _PT1
                                     49 	.globl _PX1
                                     50 	.globl _PT0
                                     51 	.globl _PX0
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _EA
                                     69 	.globl _ES
                                     70 	.globl _ET1
                                     71 	.globl _EX1
                                     72 	.globl _ET0
                                     73 	.globl _EX0
                                     74 	.globl _P2_7
                                     75 	.globl _P2_6
                                     76 	.globl _P2_5
                                     77 	.globl _P2_4
                                     78 	.globl _P2_3
                                     79 	.globl _P2_2
                                     80 	.globl _P2_1
                                     81 	.globl _P2_0
                                     82 	.globl _SM0
                                     83 	.globl _SM1
                                     84 	.globl _SM2
                                     85 	.globl _REN
                                     86 	.globl _TB8
                                     87 	.globl _RB8
                                     88 	.globl _TI
                                     89 	.globl _RI
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _TF1
                                     99 	.globl _TR1
                                    100 	.globl _TF0
                                    101 	.globl _TR0
                                    102 	.globl _IE1
                                    103 	.globl _IT1
                                    104 	.globl _IE0
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _TH2
                                    115 	.globl _TL2
                                    116 	.globl _RCAP2H
                                    117 	.globl _RCAP2L
                                    118 	.globl _T2CON
                                    119 	.globl _B
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _UartReadBuff_PARM_2
                                    141 	.globl _UartWriteBuff_PARM_2
                                    142 ;--------------------------------------------------------
                                    143 ; special function registers
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0	=	0x0080
                           000081   148 _SP	=	0x0081
                           000082   149 _DPL	=	0x0082
                           000083   150 _DPH	=	0x0083
                           000087   151 _PCON	=	0x0087
                           000088   152 _TCON	=	0x0088
                           000089   153 _TMOD	=	0x0089
                           00008A   154 _TL0	=	0x008a
                           00008B   155 _TL1	=	0x008b
                           00008C   156 _TH0	=	0x008c
                           00008D   157 _TH1	=	0x008d
                           000090   158 _P1	=	0x0090
                           000098   159 _SCON	=	0x0098
                           000099   160 _SBUF	=	0x0099
                           0000A0   161 _P2	=	0x00a0
                           0000A8   162 _IE	=	0x00a8
                           0000B0   163 _P3	=	0x00b0
                           0000B8   164 _IP	=	0x00b8
                           0000D0   165 _PSW	=	0x00d0
                           0000E0   166 _ACC	=	0x00e0
                           0000F0   167 _B	=	0x00f0
                           0000C8   168 _T2CON	=	0x00c8
                           0000CA   169 _RCAP2L	=	0x00ca
                           0000CB   170 _RCAP2H	=	0x00cb
                           0000CC   171 _TL2	=	0x00cc
                           0000CD   172 _TH2	=	0x00cd
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000098   202 _RI	=	0x0098
                           000099   203 _TI	=	0x0099
                           00009A   204 _RB8	=	0x009a
                           00009B   205 _TB8	=	0x009b
                           00009C   206 _REN	=	0x009c
                           00009D   207 _SM2	=	0x009d
                           00009E   208 _SM1	=	0x009e
                           00009F   209 _SM0	=	0x009f
                           0000A0   210 _P2_0	=	0x00a0
                           0000A1   211 _P2_1	=	0x00a1
                           0000A2   212 _P2_2	=	0x00a2
                           0000A3   213 _P2_3	=	0x00a3
                           0000A4   214 _P2_4	=	0x00a4
                           0000A5   215 _P2_5	=	0x00a5
                           0000A6   216 _P2_6	=	0x00a6
                           0000A7   217 _P2_7	=	0x00a7
                           0000A8   218 _EX0	=	0x00a8
                           0000A9   219 _ET0	=	0x00a9
                           0000AA   220 _EX1	=	0x00aa
                           0000AB   221 _ET1	=	0x00ab
                           0000AC   222 _ES	=	0x00ac
                           0000AF   223 _EA	=	0x00af
                           0000B0   224 _P3_0	=	0x00b0
                           0000B1   225 _P3_1	=	0x00b1
                           0000B2   226 _P3_2	=	0x00b2
                           0000B3   227 _P3_3	=	0x00b3
                           0000B4   228 _P3_4	=	0x00b4
                           0000B5   229 _P3_5	=	0x00b5
                           0000B6   230 _P3_6	=	0x00b6
                           0000B7   231 _P3_7	=	0x00b7
                           0000B0   232 _RXD	=	0x00b0
                           0000B1   233 _TXD	=	0x00b1
                           0000B2   234 _INT0	=	0x00b2
                           0000B3   235 _INT1	=	0x00b3
                           0000B4   236 _T0	=	0x00b4
                           0000B5   237 _T1	=	0x00b5
                           0000B6   238 _WR	=	0x00b6
                           0000B7   239 _RD	=	0x00b7
                           0000B8   240 _PX0	=	0x00b8
                           0000B9   241 _PT0	=	0x00b9
                           0000BA   242 _PX1	=	0x00ba
                           0000BB   243 _PT1	=	0x00bb
                           0000BC   244 _PS	=	0x00bc
                           0000D0   245 _P	=	0x00d0
                           0000D1   246 _F1	=	0x00d1
                           0000D2   247 _OV	=	0x00d2
                           0000D3   248 _RS0	=	0x00d3
                           0000D4   249 _RS1	=	0x00d4
                           0000D5   250 _F0	=	0x00d5
                           0000D6   251 _AC	=	0x00d6
                           0000D7   252 _CY	=	0x00d7
                           0000AD   253 _ET2	=	0x00ad
                           0000BD   254 _PT2	=	0x00bd
                           0000C8   255 _T2CON_0	=	0x00c8
                           0000C9   256 _T2CON_1	=	0x00c9
                           0000CA   257 _T2CON_2	=	0x00ca
                           0000CB   258 _T2CON_3	=	0x00cb
                           0000CC   259 _T2CON_4	=	0x00cc
                           0000CD   260 _T2CON_5	=	0x00cd
                           0000CE   261 _T2CON_6	=	0x00ce
                           0000CF   262 _T2CON_7	=	0x00cf
                           0000C8   263 _CP_RL2	=	0x00c8
                           0000C9   264 _C_T2	=	0x00c9
                           0000CA   265 _TR2	=	0x00ca
                           0000CB   266 _EXEN2	=	0x00cb
                           0000CC   267 _TCLK	=	0x00cc
                           0000CD   268 _RCLK	=	0x00cd
                           0000CE   269 _EXF2	=	0x00ce
                           0000CF   270 _TF2	=	0x00cf
                                    271 ;--------------------------------------------------------
                                    272 ; overlayable register banks
                                    273 ;--------------------------------------------------------
                                    274 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        275 	.ds 8
                                    276 ;--------------------------------------------------------
                                    277 ; internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area DSEG    (DATA)
      000008                        280 _UartWriteBuff_PARM_2:
      000008                        281 	.ds 1
      000009                        282 _UartReadBuff_PARM_2:
      000009                        283 	.ds 1
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable items in internal ram 
                                    286 ;--------------------------------------------------------
                                    287 	.area	OSEG    (OVR,DATA)
                                    288 	.area	OSEG    (OVR,DATA)
                                    289 	.area	OSEG    (OVR,DATA)
                                    290 	.area	OSEG    (OVR,DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; Stack segment in internal ram 
                                    293 ;--------------------------------------------------------
                                    294 	.area	SSEG
      00000B                        295 __start__stack:
      00000B                        296 	.ds	1
                                    297 
                                    298 ;--------------------------------------------------------
                                    299 ; indirectly addressable internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area ISEG    (DATA)
                                    302 ;--------------------------------------------------------
                                    303 ; absolute internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area IABS    (ABS,DATA)
                                    306 	.area IABS    (ABS,DATA)
                                    307 ;--------------------------------------------------------
                                    308 ; bit data
                                    309 ;--------------------------------------------------------
                                    310 	.area BSEG    (BIT)
                                    311 ;--------------------------------------------------------
                                    312 ; paged external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area PSEG    (PAG,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XSEG    (XDATA)
                                    319 ;--------------------------------------------------------
                                    320 ; absolute external ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area XABS    (ABS,XDATA)
                                    323 ;--------------------------------------------------------
                                    324 ; external initialized ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area XISEG   (XDATA)
                                    327 	.area HOME    (CODE)
                                    328 	.area GSINIT0 (CODE)
                                    329 	.area GSINIT1 (CODE)
                                    330 	.area GSINIT2 (CODE)
                                    331 	.area GSINIT3 (CODE)
                                    332 	.area GSINIT4 (CODE)
                                    333 	.area GSINIT5 (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.area GSFINAL (CODE)
                                    336 	.area CSEG    (CODE)
                                    337 ;--------------------------------------------------------
                                    338 ; interrupt vector 
                                    339 ;--------------------------------------------------------
                                    340 	.area HOME    (CODE)
      000000                        341 __interrupt_vect:
      000000 02 00 06         [24]  342 	ljmp	__sdcc_gsinit_startup
                                    343 ;--------------------------------------------------------
                                    344 ; global & static initialisations
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.area GSFINAL (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.globl __sdcc_gsinit_startup
                                    351 	.globl __sdcc_program_startup
                                    352 	.globl __start__stack
                                    353 	.globl __mcs51_genXINIT
                                    354 	.globl __mcs51_genXRAMCLEAR
                                    355 	.globl __mcs51_genRAMCLEAR
                                    356 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  357 	ljmp	__sdcc_program_startup
                                    358 ;--------------------------------------------------------
                                    359 ; Home
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
                                    362 	.area HOME    (CODE)
      000003                        363 __sdcc_program_startup:
      000003 02 01 CC         [24]  364 	ljmp	_main
                                    365 ;	return from main will return to caller
                                    366 ;--------------------------------------------------------
                                    367 ; code
                                    368 ;--------------------------------------------------------
                                    369 	.area CSEG    (CODE)
                                    370 ;------------------------------------------------------------
                                    371 ;Allocation info for local variables in function 'exitApp'
                                    372 ;------------------------------------------------------------
                                    373 ;x                         Allocated to registers r6 r7 
                                    374 ;y                         Allocated to registers r4 r5 
                                    375 ;------------------------------------------------------------
                                    376 ;	exitapp.h:13: void exitApp()
                                    377 ;	-----------------------------------------
                                    378 ;	 function exitApp
                                    379 ;	-----------------------------------------
      000062                        380 _exitApp:
                           000007   381 	ar7 = 0x07
                           000006   382 	ar6 = 0x06
                           000005   383 	ar5 = 0x05
                           000004   384 	ar4 = 0x04
                           000003   385 	ar3 = 0x03
                           000002   386 	ar2 = 0x02
                           000001   387 	ar1 = 0x01
                           000000   388 	ar0 = 0x00
                                    389 ;	exitapp.h:21: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
      000062 7E 00            [12]  390 	mov	r6,#0x00
      000064 7F 00            [12]  391 	mov	r7,#0x00
      000066                        392 00124$:
      000066 7C C8            [12]  393 	mov	r4,#0xc8
      000068 7D 00            [12]  394 	mov	r5,#0x00
      00006A                        395 00109$:
      00006A 1C               [12]  396 	dec	r4
      00006B BC FF 01         [24]  397 	cjne	r4,#0xff,00178$
      00006E 1D               [12]  398 	dec	r5
      00006F                        399 00178$:
      00006F EC               [12]  400 	mov	a,r4
      000070 4D               [12]  401 	orl	a,r5
      000071 70 F7            [24]  402 	jnz	00109$
      000073 0E               [12]  403 	inc	r6
      000074 BE 00 01         [24]  404 	cjne	r6,#0x00,00180$
      000077 0F               [12]  405 	inc	r7
      000078                        406 00180$:
      000078 C3               [12]  407 	clr	c
      000079 EE               [12]  408 	mov	a,r6
      00007A 94 FA            [12]  409 	subb	a,#0xfa
      00007C EF               [12]  410 	mov	a,r7
      00007D 94 00            [12]  411 	subb	a,#0x00
      00007F 40 E5            [24]  412 	jc	00124$
                                    413 ;	exitapp.h:22: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
      000081 7E 00            [12]  414 	mov	r6,#0x00
      000083 7F 00            [12]  415 	mov	r7,#0x00
      000085                        416 00128$:
      000085 7C C8            [12]  417 	mov	r4,#0xc8
      000087 7D 00            [12]  418 	mov	r5,#0x00
      000089                        419 00114$:
      000089 1C               [12]  420 	dec	r4
      00008A BC FF 01         [24]  421 	cjne	r4,#0xff,00182$
      00008D 1D               [12]  422 	dec	r5
      00008E                        423 00182$:
      00008E EC               [12]  424 	mov	a,r4
      00008F 4D               [12]  425 	orl	a,r5
      000090 70 F7            [24]  426 	jnz	00114$
      000092 0E               [12]  427 	inc	r6
      000093 BE 00 01         [24]  428 	cjne	r6,#0x00,00184$
      000096 0F               [12]  429 	inc	r7
      000097                        430 00184$:
      000097 C3               [12]  431 	clr	c
      000098 EE               [12]  432 	mov	a,r6
      000099 94 FA            [12]  433 	subb	a,#0xfa
      00009B EF               [12]  434 	mov	a,r7
      00009C 94 00            [12]  435 	subb	a,#0x00
      00009E 40 E5            [24]  436 	jc	00128$
                                    437 ;	exitapp.h:25: RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
      0000A0 53 90 EF         [24]  438 	anl	_P1,#0xef
                                    439 ;	exitapp.h:28: for(x=0;x<250;x++) for(y=0;y<100;y++); 	// inner for loop takes about 3 cycles,
      0000A3 7E 00            [12]  440 	mov	r6,#0x00
      0000A5 7F 00            [12]  441 	mov	r7,#0x00
      0000A7                        442 00132$:
      0000A7 7C 64            [12]  443 	mov	r4,#0x64
      0000A9 7D 00            [12]  444 	mov	r5,#0x00
      0000AB                        445 00119$:
      0000AB 1C               [12]  446 	dec	r4
      0000AC BC FF 01         [24]  447 	cjne	r4,#0xff,00186$
      0000AF 1D               [12]  448 	dec	r5
      0000B0                        449 00186$:
      0000B0 EC               [12]  450 	mov	a,r4
      0000B1 4D               [12]  451 	orl	a,r5
      0000B2 70 F7            [24]  452 	jnz	00119$
      0000B4 0E               [12]  453 	inc	r6
      0000B5 BE 00 01         [24]  454 	cjne	r6,#0x00,00188$
      0000B8 0F               [12]  455 	inc	r7
      0000B9                        456 00188$:
      0000B9 C3               [12]  457 	clr	c
      0000BA EE               [12]  458 	mov	a,r6
      0000BB 94 FA            [12]  459 	subb	a,#0xfa
      0000BD EF               [12]  460 	mov	a,r7
      0000BE 94 00            [12]  461 	subb	a,#0x00
      0000C0 40 E5            [24]  462 	jc	00132$
                                    463 ;	exitapp.h:32: RESET_PORT_8052 |= (1 << RESET_PIN_8052);	
      0000C2 43 90 10         [24]  464 	orl	_P1,#0x10
                                    465 ;	exitapp.h:35: }
      0000C5 22               [24]  466 	ret
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'UartBegin'
                                    469 ;------------------------------------------------------------
                                    470 ;	main.c:7: void UartBegin()
                                    471 ;	-----------------------------------------
                                    472 ;	 function UartBegin
                                    473 ;	-----------------------------------------
      0000C6                        474 _UartBegin:
                                    475 ;	main.c:11: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000C6 75 89 20         [24]  476 	mov	_TMOD,#0x20
                                    477 ;	main.c:13: TH1 = 0XF3; //2400
      0000C9 75 8D F3         [24]  478 	mov	_TH1,#0xf3
                                    479 ;	main.c:14: SCON = 0X50;
      0000CC 75 98 50         [24]  480 	mov	_SCON,#0x50
                                    481 ;	main.c:16: PCON |= 1<<7; //double the baudrate - 4800
      0000CF 43 87 80         [24]  482 	orl	_PCON,#0x80
                                    483 ;	main.c:18: TR1 = 1; //START TIMER
                                    484 ;	assignBit
      0000D2 D2 8E            [12]  485 	setb	_TR1
                                    486 ;	main.c:19: }
      0000D4 22               [24]  487 	ret
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'UartReadReady'
                                    490 ;------------------------------------------------------------
                                    491 ;	main.c:21: unsigned char UartReadReady()
                                    492 ;	-----------------------------------------
                                    493 ;	 function UartReadReady
                                    494 ;	-----------------------------------------
      0000D5                        495 _UartReadReady:
                                    496 ;	main.c:23: if(RI==0)return 0; //not received any char
      0000D5 20 98 04         [24]  497 	jb	_RI,00102$
      0000D8 75 82 00         [24]  498 	mov	dpl,#0x00
      0000DB 22               [24]  499 	ret
      0000DC                        500 00102$:
                                    501 ;	main.c:24: else return 1; //received and ready
      0000DC 75 82 01         [24]  502 	mov	dpl,#0x01
                                    503 ;	main.c:25: }
      0000DF 22               [24]  504 	ret
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'UartRead'
                                    507 ;------------------------------------------------------------
                                    508 ;value                     Allocated to registers 
                                    509 ;------------------------------------------------------------
                                    510 ;	main.c:27: unsigned char UartRead()
                                    511 ;	-----------------------------------------
                                    512 ;	 function UartRead
                                    513 ;	-----------------------------------------
      0000E0                        514 _UartRead:
                                    515 ;	main.c:30: while(RI==0); //wait till RX
      0000E0                        516 00101$:
                                    517 ;	main.c:31: RI=0;
                                    518 ;	assignBit
      0000E0 10 98 02         [24]  519 	jbc	_RI,00114$
      0000E3 80 FB            [24]  520 	sjmp	00101$
      0000E5                        521 00114$:
                                    522 ;	main.c:32: value = SBUF;
      0000E5 85 99 82         [24]  523 	mov	dpl,_SBUF
                                    524 ;	main.c:33: return value;
                                    525 ;	main.c:34: }
      0000E8 22               [24]  526 	ret
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'UartWrite'
                                    529 ;------------------------------------------------------------
                                    530 ;value                     Allocated to registers 
                                    531 ;------------------------------------------------------------
                                    532 ;	main.c:37: void UartWrite(unsigned char value)
                                    533 ;	-----------------------------------------
                                    534 ;	 function UartWrite
                                    535 ;	-----------------------------------------
      0000E9                        536 _UartWrite:
      0000E9 85 82 99         [24]  537 	mov	_SBUF,dpl
                                    538 ;	main.c:40: while(TI==0); // wait till TX
      0000EC                        539 00101$:
                                    540 ;	main.c:41: TI=0;
                                    541 ;	assignBit
      0000EC 10 99 02         [24]  542 	jbc	_TI,00114$
      0000EF 80 FB            [24]  543 	sjmp	00101$
      0000F1                        544 00114$:
                                    545 ;	main.c:42: }
      0000F1 22               [24]  546 	ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'UartWriteBuff'
                                    549 ;------------------------------------------------------------
                                    550 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    551 ;p                         Allocated to registers r5 r6 r7 
                                    552 ;i                         Allocated to registers r4 
                                    553 ;------------------------------------------------------------
                                    554 ;	main.c:44: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    555 ;	-----------------------------------------
                                    556 ;	 function UartWriteBuff
                                    557 ;	-----------------------------------------
      0000F2                        558 _UartWriteBuff:
      0000F2 AD 82            [24]  559 	mov	r5,dpl
      0000F4 AE 83            [24]  560 	mov	r6,dph
      0000F6 AF F0            [24]  561 	mov	r7,b
                                    562 ;	main.c:47: for (i=0;i<length;i++)
      0000F8 7C 00            [12]  563 	mov	r4,#0x00
      0000FA                        564 00103$:
      0000FA C3               [12]  565 	clr	c
      0000FB EC               [12]  566 	mov	a,r4
      0000FC 95 08            [12]  567 	subb	a,_UartWriteBuff_PARM_2
      0000FE 50 29            [24]  568 	jnc	00105$
                                    569 ;	main.c:49: UartWrite(p[i]);
      000100 EC               [12]  570 	mov	a,r4
      000101 2D               [12]  571 	add	a,r5
      000102 F9               [12]  572 	mov	r1,a
      000103 E4               [12]  573 	clr	a
      000104 3E               [12]  574 	addc	a,r6
      000105 FA               [12]  575 	mov	r2,a
      000106 8F 03            [24]  576 	mov	ar3,r7
      000108 89 82            [24]  577 	mov	dpl,r1
      00010A 8A 83            [24]  578 	mov	dph,r2
      00010C 8B F0            [24]  579 	mov	b,r3
      00010E 12 02 19         [24]  580 	lcall	__gptrget
      000111 F5 82            [12]  581 	mov	dpl,a
      000113 C0 07            [24]  582 	push	ar7
      000115 C0 06            [24]  583 	push	ar6
      000117 C0 05            [24]  584 	push	ar5
      000119 C0 04            [24]  585 	push	ar4
      00011B 12 00 E9         [24]  586 	lcall	_UartWrite
      00011E D0 04            [24]  587 	pop	ar4
      000120 D0 05            [24]  588 	pop	ar5
      000122 D0 06            [24]  589 	pop	ar6
      000124 D0 07            [24]  590 	pop	ar7
                                    591 ;	main.c:47: for (i=0;i<length;i++)
      000126 0C               [12]  592 	inc	r4
      000127 80 D1            [24]  593 	sjmp	00103$
      000129                        594 00105$:
                                    595 ;	main.c:51: }
      000129 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'UartReadBuff'
                                    599 ;------------------------------------------------------------
                                    600 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    601 ;p                         Allocated to registers r5 r6 r7 
                                    602 ;i                         Allocated to registers r4 
                                    603 ;------------------------------------------------------------
                                    604 ;	main.c:53: void UartReadBuff(unsigned char *p, unsigned char length)
                                    605 ;	-----------------------------------------
                                    606 ;	 function UartReadBuff
                                    607 ;	-----------------------------------------
      00012A                        608 _UartReadBuff:
      00012A AD 82            [24]  609 	mov	r5,dpl
      00012C AE 83            [24]  610 	mov	r6,dph
      00012E AF F0            [24]  611 	mov	r7,b
                                    612 ;	main.c:56: for (i=0;i<length;i++)
      000130 7C 00            [12]  613 	mov	r4,#0x00
      000132                        614 00103$:
      000132 C3               [12]  615 	clr	c
      000133 EC               [12]  616 	mov	a,r4
      000134 95 09            [12]  617 	subb	a,_UartReadBuff_PARM_2
      000136 50 36            [24]  618 	jnc	00105$
                                    619 ;	main.c:58: p[i] = UartRead();
      000138 EC               [12]  620 	mov	a,r4
      000139 2D               [12]  621 	add	a,r5
      00013A F9               [12]  622 	mov	r1,a
      00013B E4               [12]  623 	clr	a
      00013C 3E               [12]  624 	addc	a,r6
      00013D FA               [12]  625 	mov	r2,a
      00013E 8F 03            [24]  626 	mov	ar3,r7
      000140 C0 07            [24]  627 	push	ar7
      000142 C0 06            [24]  628 	push	ar6
      000144 C0 05            [24]  629 	push	ar5
      000146 C0 04            [24]  630 	push	ar4
      000148 C0 03            [24]  631 	push	ar3
      00014A C0 02            [24]  632 	push	ar2
      00014C C0 01            [24]  633 	push	ar1
      00014E 12 00 E0         [24]  634 	lcall	_UartRead
      000151 A8 82            [24]  635 	mov	r0,dpl
      000153 D0 01            [24]  636 	pop	ar1
      000155 D0 02            [24]  637 	pop	ar2
      000157 D0 03            [24]  638 	pop	ar3
      000159 D0 04            [24]  639 	pop	ar4
      00015B D0 05            [24]  640 	pop	ar5
      00015D D0 06            [24]  641 	pop	ar6
      00015F D0 07            [24]  642 	pop	ar7
      000161 89 82            [24]  643 	mov	dpl,r1
      000163 8A 83            [24]  644 	mov	dph,r2
      000165 8B F0            [24]  645 	mov	b,r3
      000167 E8               [12]  646 	mov	a,r0
      000168 12 01 FE         [24]  647 	lcall	__gptrput
                                    648 ;	main.c:56: for (i=0;i<length;i++)
      00016B 0C               [12]  649 	inc	r4
      00016C 80 C4            [24]  650 	sjmp	00103$
      00016E                        651 00105$:
                                    652 ;	main.c:60: }
      00016E 22               [24]  653 	ret
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'UartPrint'
                                    656 ;------------------------------------------------------------
                                    657 ;p                         Allocated to registers 
                                    658 ;------------------------------------------------------------
                                    659 ;	main.c:62: void UartPrint(unsigned char *p)
                                    660 ;	-----------------------------------------
                                    661 ;	 function UartPrint
                                    662 ;	-----------------------------------------
      00016F                        663 _UartPrint:
      00016F AD 82            [24]  664 	mov	r5,dpl
      000171 AE 83            [24]  665 	mov	r6,dph
      000173 AF F0            [24]  666 	mov	r7,b
                                    667 ;	main.c:64: do
      000175                        668 00101$:
                                    669 ;	main.c:66: UartWrite(*p);
      000175 8D 82            [24]  670 	mov	dpl,r5
      000177 8E 83            [24]  671 	mov	dph,r6
      000179 8F F0            [24]  672 	mov	b,r7
      00017B 12 02 19         [24]  673 	lcall	__gptrget
      00017E FC               [12]  674 	mov	r4,a
      00017F A3               [24]  675 	inc	dptr
      000180 AD 82            [24]  676 	mov	r5,dpl
      000182 AE 83            [24]  677 	mov	r6,dph
      000184 8C 82            [24]  678 	mov	dpl,r4
      000186 C0 07            [24]  679 	push	ar7
      000188 C0 06            [24]  680 	push	ar6
      00018A C0 05            [24]  681 	push	ar5
      00018C 12 00 E9         [24]  682 	lcall	_UartWrite
      00018F D0 05            [24]  683 	pop	ar5
      000191 D0 06            [24]  684 	pop	ar6
      000193 D0 07            [24]  685 	pop	ar7
                                    686 ;	main.c:67: }while(*(++p)!=0);
      000195 8D 82            [24]  687 	mov	dpl,r5
      000197 8E 83            [24]  688 	mov	dph,r6
      000199 8F F0            [24]  689 	mov	b,r7
      00019B 12 02 19         [24]  690 	lcall	__gptrget
      00019E 70 D5            [24]  691 	jnz	00101$
                                    692 ;	main.c:68: }
      0001A0 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'delayms'
                                    696 ;------------------------------------------------------------
                                    697 ;ms                        Allocated to registers r6 r7 
                                    698 ;x                         Allocated to registers r4 r5 
                                    699 ;y                         Allocated to registers r2 r3 
                                    700 ;------------------------------------------------------------
                                    701 ;	main.c:72: void delayms(unsigned int ms)
                                    702 ;	-----------------------------------------
                                    703 ;	 function delayms
                                    704 ;	-----------------------------------------
      0001A1                        705 _delayms:
      0001A1 AE 82            [24]  706 	mov	r6,dpl
      0001A3 AF 83            [24]  707 	mov	r7,dph
                                    708 ;	main.c:76: for(x=0;x<ms;x++) for(y=0;y<120;y++);
      0001A5 7C 00            [12]  709 	mov	r4,#0x00
      0001A7 7D 00            [12]  710 	mov	r5,#0x00
      0001A9                        711 00107$:
      0001A9 C3               [12]  712 	clr	c
      0001AA EC               [12]  713 	mov	a,r4
      0001AB 9E               [12]  714 	subb	a,r6
      0001AC ED               [12]  715 	mov	a,r5
      0001AD 9F               [12]  716 	subb	a,r7
      0001AE 50 1B            [24]  717 	jnc	00109$
      0001B0 7A 78            [12]  718 	mov	r2,#0x78
      0001B2 7B 00            [12]  719 	mov	r3,#0x00
      0001B4                        720 00105$:
      0001B4 EA               [12]  721 	mov	a,r2
      0001B5 24 FF            [12]  722 	add	a,#0xff
      0001B7 F8               [12]  723 	mov	r0,a
      0001B8 EB               [12]  724 	mov	a,r3
      0001B9 34 FF            [12]  725 	addc	a,#0xff
      0001BB F9               [12]  726 	mov	r1,a
      0001BC 88 02            [24]  727 	mov	ar2,r0
      0001BE 89 03            [24]  728 	mov	ar3,r1
      0001C0 E8               [12]  729 	mov	a,r0
      0001C1 49               [12]  730 	orl	a,r1
      0001C2 70 F0            [24]  731 	jnz	00105$
      0001C4 0C               [12]  732 	inc	r4
      0001C5 BC 00 E1         [24]  733 	cjne	r4,#0x00,00107$
      0001C8 0D               [12]  734 	inc	r5
      0001C9 80 DE            [24]  735 	sjmp	00107$
      0001CB                        736 00109$:
                                    737 ;	main.c:77: }
      0001CB 22               [24]  738 	ret
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'main'
                                    741 ;------------------------------------------------------------
                                    742 ;	main.c:83: int main()
                                    743 ;	-----------------------------------------
                                    744 ;	 function main
                                    745 ;	-----------------------------------------
      0001CC                        746 _main:
                                    747 ;	main.c:85: UartBegin(); //init uart
      0001CC 12 00 C6         [24]  748 	lcall	_UartBegin
                                    749 ;	main.c:86: while(1)
      0001CF                        750 00106$:
                                    751 ;	main.c:88: delayms(100);
      0001CF 90 00 64         [24]  752 	mov	dptr,#0x0064
      0001D2 12 01 A1         [24]  753 	lcall	_delayms
                                    754 ;	main.c:89: UartPrint("Hello World from Syamputer :)\n");
      0001D5 90 02 39         [24]  755 	mov	dptr,#___str_0
      0001D8 75 F0 80         [24]  756 	mov	b,#0x80
      0001DB 12 01 6F         [24]  757 	lcall	_UartPrint
                                    758 ;	main.c:90: P1 |= 1<<7;
      0001DE 43 90 80         [24]  759 	orl	_P1,#0x80
                                    760 ;	main.c:91: delayms(100);
      0001E1 90 00 64         [24]  761 	mov	dptr,#0x0064
      0001E4 12 01 A1         [24]  762 	lcall	_delayms
                                    763 ;	main.c:92: P1 &= ~(1<<7);
      0001E7 53 90 7F         [24]  764 	anl	_P1,#0x7f
                                    765 ;	main.c:94: if(UartReadReady())
      0001EA 12 00 D5         [24]  766 	lcall	_UartReadReady
      0001ED E5 82            [12]  767 	mov	a,dpl
      0001EF 60 DE            [24]  768 	jz	00106$
                                    769 ;	main.c:96: if(UartRead()=='X') exitApp();
      0001F1 12 00 E0         [24]  770 	lcall	_UartRead
      0001F4 AF 82            [24]  771 	mov	r7,dpl
      0001F6 BF 58 D6         [24]  772 	cjne	r7,#0x58,00106$
      0001F9 12 00 62         [24]  773 	lcall	_exitApp
                                    774 ;	main.c:99: }
      0001FC 80 D1            [24]  775 	sjmp	00106$
                                    776 	.area CSEG    (CODE)
                                    777 	.area CONST   (CODE)
                                    778 	.area CONST   (CODE)
      000239                        779 ___str_0:
      000239 48 65 6C 6C 6F 20 57   780 	.ascii "Hello World from Syamputer :)"
             6F 72 6C 64 20 66 72
             6F 6D 20 53 79 61 6D
             70 75 74 65 72 20 3A
             29
      000256 0A                     781 	.db 0x0a
      000257 00                     782 	.db 0x00
                                    783 	.area CSEG    (CODE)
                                    784 	.area XINIT   (CODE)
                                    785 	.area CABS    (ABS,CODE)
