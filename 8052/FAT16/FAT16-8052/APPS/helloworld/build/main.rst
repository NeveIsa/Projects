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
                                    468 ;Allocation info for local variables in function 'delayms'
                                    469 ;------------------------------------------------------------
                                    470 ;ms                        Allocated to registers r6 r7 
                                    471 ;x                         Allocated to registers r4 r5 
                                    472 ;y                         Allocated to registers r2 r3 
                                    473 ;------------------------------------------------------------
                                    474 ;	delay.h:3: void delayms(unsigned int ms)
                                    475 ;	-----------------------------------------
                                    476 ;	 function delayms
                                    477 ;	-----------------------------------------
      0000C6                        478 _delayms:
      0000C6 AE 82            [24]  479 	mov	r6,dpl
      0000C8 AF 83            [24]  480 	mov	r7,dph
                                    481 ;	delay.h:7: for(x=0;x<ms;x++) for(y=0;y<120;y++);
      0000CA 7C 00            [12]  482 	mov	r4,#0x00
      0000CC 7D 00            [12]  483 	mov	r5,#0x00
      0000CE                        484 00107$:
      0000CE C3               [12]  485 	clr	c
      0000CF EC               [12]  486 	mov	a,r4
      0000D0 9E               [12]  487 	subb	a,r6
      0000D1 ED               [12]  488 	mov	a,r5
      0000D2 9F               [12]  489 	subb	a,r7
      0000D3 50 1B            [24]  490 	jnc	00109$
      0000D5 7A 78            [12]  491 	mov	r2,#0x78
      0000D7 7B 00            [12]  492 	mov	r3,#0x00
      0000D9                        493 00105$:
      0000D9 EA               [12]  494 	mov	a,r2
      0000DA 24 FF            [12]  495 	add	a,#0xff
      0000DC F8               [12]  496 	mov	r0,a
      0000DD EB               [12]  497 	mov	a,r3
      0000DE 34 FF            [12]  498 	addc	a,#0xff
      0000E0 F9               [12]  499 	mov	r1,a
      0000E1 88 02            [24]  500 	mov	ar2,r0
      0000E3 89 03            [24]  501 	mov	ar3,r1
      0000E5 E8               [12]  502 	mov	a,r0
      0000E6 49               [12]  503 	orl	a,r1
      0000E7 70 F0            [24]  504 	jnz	00105$
      0000E9 0C               [12]  505 	inc	r4
      0000EA BC 00 E1         [24]  506 	cjne	r4,#0x00,00107$
      0000ED 0D               [12]  507 	inc	r5
      0000EE 80 DE            [24]  508 	sjmp	00107$
      0000F0                        509 00109$:
                                    510 ;	delay.h:8: }
      0000F0 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'UartBegin'
                                    514 ;------------------------------------------------------------
                                    515 ;	main.c:8: void UartBegin()
                                    516 ;	-----------------------------------------
                                    517 ;	 function UartBegin
                                    518 ;	-----------------------------------------
      0000F1                        519 _UartBegin:
                                    520 ;	main.c:12: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000F1 75 89 20         [24]  521 	mov	_TMOD,#0x20
                                    522 ;	main.c:14: TH1 = 0XF3; //2400
      0000F4 75 8D F3         [24]  523 	mov	_TH1,#0xf3
                                    524 ;	main.c:15: SCON = 0X50;
      0000F7 75 98 50         [24]  525 	mov	_SCON,#0x50
                                    526 ;	main.c:17: PCON |= 1<<7; //double the baudrate - 4800
      0000FA 43 87 80         [24]  527 	orl	_PCON,#0x80
                                    528 ;	main.c:19: TR1 = 1; //START TIMER
                                    529 ;	assignBit
      0000FD D2 8E            [12]  530 	setb	_TR1
                                    531 ;	main.c:20: }
      0000FF 22               [24]  532 	ret
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'UartReadReady'
                                    535 ;------------------------------------------------------------
                                    536 ;	main.c:22: unsigned char UartReadReady()
                                    537 ;	-----------------------------------------
                                    538 ;	 function UartReadReady
                                    539 ;	-----------------------------------------
      000100                        540 _UartReadReady:
                                    541 ;	main.c:24: if(RI==0)return 0; //not received any char
      000100 20 98 04         [24]  542 	jb	_RI,00102$
      000103 75 82 00         [24]  543 	mov	dpl,#0x00
      000106 22               [24]  544 	ret
      000107                        545 00102$:
                                    546 ;	main.c:25: else return 1; //received and ready
      000107 75 82 01         [24]  547 	mov	dpl,#0x01
                                    548 ;	main.c:26: }
      00010A 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'UartRead'
                                    552 ;------------------------------------------------------------
                                    553 ;value                     Allocated to registers 
                                    554 ;------------------------------------------------------------
                                    555 ;	main.c:28: unsigned char UartRead()
                                    556 ;	-----------------------------------------
                                    557 ;	 function UartRead
                                    558 ;	-----------------------------------------
      00010B                        559 _UartRead:
                                    560 ;	main.c:31: while(RI==0); //wait till RX
      00010B                        561 00101$:
                                    562 ;	main.c:32: RI=0;
                                    563 ;	assignBit
      00010B 10 98 02         [24]  564 	jbc	_RI,00114$
      00010E 80 FB            [24]  565 	sjmp	00101$
      000110                        566 00114$:
                                    567 ;	main.c:33: value = SBUF;
      000110 85 99 82         [24]  568 	mov	dpl,_SBUF
                                    569 ;	main.c:34: return value;
                                    570 ;	main.c:35: }
      000113 22               [24]  571 	ret
                                    572 ;------------------------------------------------------------
                                    573 ;Allocation info for local variables in function 'UartWrite'
                                    574 ;------------------------------------------------------------
                                    575 ;value                     Allocated to registers 
                                    576 ;------------------------------------------------------------
                                    577 ;	main.c:38: void UartWrite(unsigned char value)
                                    578 ;	-----------------------------------------
                                    579 ;	 function UartWrite
                                    580 ;	-----------------------------------------
      000114                        581 _UartWrite:
      000114 85 82 99         [24]  582 	mov	_SBUF,dpl
                                    583 ;	main.c:41: while(TI==0); // wait till TX
      000117                        584 00101$:
                                    585 ;	main.c:42: TI=0;
                                    586 ;	assignBit
      000117 10 99 02         [24]  587 	jbc	_TI,00114$
      00011A 80 FB            [24]  588 	sjmp	00101$
      00011C                        589 00114$:
                                    590 ;	main.c:43: }
      00011C 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'UartWriteBuff'
                                    594 ;------------------------------------------------------------
                                    595 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    596 ;p                         Allocated to registers r5 r6 r7 
                                    597 ;i                         Allocated to registers r4 
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:45: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    600 ;	-----------------------------------------
                                    601 ;	 function UartWriteBuff
                                    602 ;	-----------------------------------------
      00011D                        603 _UartWriteBuff:
      00011D AD 82            [24]  604 	mov	r5,dpl
      00011F AE 83            [24]  605 	mov	r6,dph
      000121 AF F0            [24]  606 	mov	r7,b
                                    607 ;	main.c:48: for (i=0;i<length;i++)
      000123 7C 00            [12]  608 	mov	r4,#0x00
      000125                        609 00103$:
      000125 C3               [12]  610 	clr	c
      000126 EC               [12]  611 	mov	a,r4
      000127 95 08            [12]  612 	subb	a,_UartWriteBuff_PARM_2
      000129 50 29            [24]  613 	jnc	00105$
                                    614 ;	main.c:50: UartWrite(p[i]);
      00012B EC               [12]  615 	mov	a,r4
      00012C 2D               [12]  616 	add	a,r5
      00012D F9               [12]  617 	mov	r1,a
      00012E E4               [12]  618 	clr	a
      00012F 3E               [12]  619 	addc	a,r6
      000130 FA               [12]  620 	mov	r2,a
      000131 8F 03            [24]  621 	mov	ar3,r7
      000133 89 82            [24]  622 	mov	dpl,r1
      000135 8A 83            [24]  623 	mov	dph,r2
      000137 8B F0            [24]  624 	mov	b,r3
      000139 12 02 20         [24]  625 	lcall	__gptrget
      00013C F5 82            [12]  626 	mov	dpl,a
      00013E C0 07            [24]  627 	push	ar7
      000140 C0 06            [24]  628 	push	ar6
      000142 C0 05            [24]  629 	push	ar5
      000144 C0 04            [24]  630 	push	ar4
      000146 12 01 14         [24]  631 	lcall	_UartWrite
      000149 D0 04            [24]  632 	pop	ar4
      00014B D0 05            [24]  633 	pop	ar5
      00014D D0 06            [24]  634 	pop	ar6
      00014F D0 07            [24]  635 	pop	ar7
                                    636 ;	main.c:48: for (i=0;i<length;i++)
      000151 0C               [12]  637 	inc	r4
      000152 80 D1            [24]  638 	sjmp	00103$
      000154                        639 00105$:
                                    640 ;	main.c:52: }
      000154 22               [24]  641 	ret
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'UartReadBuff'
                                    644 ;------------------------------------------------------------
                                    645 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    646 ;p                         Allocated to registers r5 r6 r7 
                                    647 ;i                         Allocated to registers r4 
                                    648 ;------------------------------------------------------------
                                    649 ;	main.c:54: void UartReadBuff(unsigned char *p, unsigned char length)
                                    650 ;	-----------------------------------------
                                    651 ;	 function UartReadBuff
                                    652 ;	-----------------------------------------
      000155                        653 _UartReadBuff:
      000155 AD 82            [24]  654 	mov	r5,dpl
      000157 AE 83            [24]  655 	mov	r6,dph
      000159 AF F0            [24]  656 	mov	r7,b
                                    657 ;	main.c:57: for (i=0;i<length;i++)
      00015B 7C 00            [12]  658 	mov	r4,#0x00
      00015D                        659 00103$:
      00015D C3               [12]  660 	clr	c
      00015E EC               [12]  661 	mov	a,r4
      00015F 95 09            [12]  662 	subb	a,_UartReadBuff_PARM_2
      000161 50 36            [24]  663 	jnc	00105$
                                    664 ;	main.c:59: p[i] = UartRead();
      000163 EC               [12]  665 	mov	a,r4
      000164 2D               [12]  666 	add	a,r5
      000165 F9               [12]  667 	mov	r1,a
      000166 E4               [12]  668 	clr	a
      000167 3E               [12]  669 	addc	a,r6
      000168 FA               [12]  670 	mov	r2,a
      000169 8F 03            [24]  671 	mov	ar3,r7
      00016B C0 07            [24]  672 	push	ar7
      00016D C0 06            [24]  673 	push	ar6
      00016F C0 05            [24]  674 	push	ar5
      000171 C0 04            [24]  675 	push	ar4
      000173 C0 03            [24]  676 	push	ar3
      000175 C0 02            [24]  677 	push	ar2
      000177 C0 01            [24]  678 	push	ar1
      000179 12 01 0B         [24]  679 	lcall	_UartRead
      00017C A8 82            [24]  680 	mov	r0,dpl
      00017E D0 01            [24]  681 	pop	ar1
      000180 D0 02            [24]  682 	pop	ar2
      000182 D0 03            [24]  683 	pop	ar3
      000184 D0 04            [24]  684 	pop	ar4
      000186 D0 05            [24]  685 	pop	ar5
      000188 D0 06            [24]  686 	pop	ar6
      00018A D0 07            [24]  687 	pop	ar7
      00018C 89 82            [24]  688 	mov	dpl,r1
      00018E 8A 83            [24]  689 	mov	dph,r2
      000190 8B F0            [24]  690 	mov	b,r3
      000192 E8               [12]  691 	mov	a,r0
      000193 12 02 05         [24]  692 	lcall	__gptrput
                                    693 ;	main.c:57: for (i=0;i<length;i++)
      000196 0C               [12]  694 	inc	r4
      000197 80 C4            [24]  695 	sjmp	00103$
      000199                        696 00105$:
                                    697 ;	main.c:61: }
      000199 22               [24]  698 	ret
                                    699 ;------------------------------------------------------------
                                    700 ;Allocation info for local variables in function 'UartPrint'
                                    701 ;------------------------------------------------------------
                                    702 ;p                         Allocated to registers 
                                    703 ;------------------------------------------------------------
                                    704 ;	main.c:63: void UartPrint(unsigned char *p)
                                    705 ;	-----------------------------------------
                                    706 ;	 function UartPrint
                                    707 ;	-----------------------------------------
      00019A                        708 _UartPrint:
      00019A AD 82            [24]  709 	mov	r5,dpl
      00019C AE 83            [24]  710 	mov	r6,dph
      00019E AF F0            [24]  711 	mov	r7,b
                                    712 ;	main.c:65: do
      0001A0                        713 00101$:
                                    714 ;	main.c:67: UartWrite(*p);
      0001A0 8D 82            [24]  715 	mov	dpl,r5
      0001A2 8E 83            [24]  716 	mov	dph,r6
      0001A4 8F F0            [24]  717 	mov	b,r7
      0001A6 12 02 20         [24]  718 	lcall	__gptrget
      0001A9 FC               [12]  719 	mov	r4,a
      0001AA A3               [24]  720 	inc	dptr
      0001AB AD 82            [24]  721 	mov	r5,dpl
      0001AD AE 83            [24]  722 	mov	r6,dph
      0001AF 8C 82            [24]  723 	mov	dpl,r4
      0001B1 C0 07            [24]  724 	push	ar7
      0001B3 C0 06            [24]  725 	push	ar6
      0001B5 C0 05            [24]  726 	push	ar5
      0001B7 12 01 14         [24]  727 	lcall	_UartWrite
      0001BA D0 05            [24]  728 	pop	ar5
      0001BC D0 06            [24]  729 	pop	ar6
      0001BE D0 07            [24]  730 	pop	ar7
                                    731 ;	main.c:68: }while(*(++p)!=0);
      0001C0 8D 82            [24]  732 	mov	dpl,r5
      0001C2 8E 83            [24]  733 	mov	dph,r6
      0001C4 8F F0            [24]  734 	mov	b,r7
      0001C6 12 02 20         [24]  735 	lcall	__gptrget
      0001C9 70 D5            [24]  736 	jnz	00101$
                                    737 ;	main.c:69: }
      0001CB 22               [24]  738 	ret
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'main'
                                    741 ;------------------------------------------------------------
                                    742 ;i                         Allocated to registers r7 
                                    743 ;------------------------------------------------------------
                                    744 ;	main.c:73: int main()
                                    745 ;	-----------------------------------------
                                    746 ;	 function main
                                    747 ;	-----------------------------------------
      0001CC                        748 _main:
                                    749 ;	main.c:75: UartBegin(); //init uart
      0001CC 12 00 F1         [24]  750 	lcall	_UartBegin
                                    751 ;	main.c:76: UartPrint("Hello World from Syamputer :)\nExiting in...");
      0001CF 90 02 40         [24]  752 	mov	dptr,#___str_0
      0001D2 75 F0 80         [24]  753 	mov	b,#0x80
      0001D5 12 01 9A         [24]  754 	lcall	_UartPrint
                                    755 ;	main.c:77: for(unsigned char i=0;i<5;i++)
      0001D8 7F 00            [12]  756 	mov	r7,#0x00
      0001DA                        757 00106$:
      0001DA BF 05 00         [24]  758 	cjne	r7,#0x05,00123$
      0001DD                        759 00123$:
      0001DD 50 21            [24]  760 	jnc	00101$
                                    761 ;	main.c:79: UartWrite('\t');
      0001DF 75 82 09         [24]  762 	mov	dpl,#0x09
      0001E2 C0 07            [24]  763 	push	ar7
      0001E4 12 01 14         [24]  764 	lcall	_UartWrite
      0001E7 D0 07            [24]  765 	pop	ar7
                                    766 ;	main.c:80: UartWrite('0'+i);
      0001E9 8F 06            [24]  767 	mov	ar6,r7
      0001EB 74 30            [12]  768 	mov	a,#0x30
      0001ED 2E               [12]  769 	add	a,r6
      0001EE F5 82            [12]  770 	mov	dpl,a
      0001F0 C0 07            [24]  771 	push	ar7
      0001F2 12 01 14         [24]  772 	lcall	_UartWrite
                                    773 ;	main.c:81: delayms(1000);		
      0001F5 90 03 E8         [24]  774 	mov	dptr,#0x03e8
      0001F8 12 00 C6         [24]  775 	lcall	_delayms
      0001FB D0 07            [24]  776 	pop	ar7
                                    777 ;	main.c:77: for(unsigned char i=0;i<5;i++)
      0001FD 0F               [12]  778 	inc	r7
      0001FE 80 DA            [24]  779 	sjmp	00106$
      000200                        780 00101$:
                                    781 ;	main.c:83: exitApp();
      000200 12 00 62         [24]  782 	lcall	_exitApp
                                    783 ;	main.c:84: while(1);
      000203                        784 00103$:
                                    785 ;	main.c:85: }
      000203 80 FE            [24]  786 	sjmp	00103$
                                    787 	.area CSEG    (CODE)
                                    788 	.area CONST   (CODE)
                                    789 	.area CONST   (CODE)
      000240                        790 ___str_0:
      000240 48 65 6C 6C 6F 20 57   791 	.ascii "Hello World from Syamputer :)"
             6F 72 6C 64 20 66 72
             6F 6D 20 53 79 61 6D
             70 75 74 65 72 20 3A
             29
      00025D 0A                     792 	.db 0x0a
      00025E 45 78 69 74 69 6E 67   793 	.ascii "Exiting in..."
             20 69 6E 2E 2E 2E
      00026B 00                     794 	.db 0x00
                                    795 	.area CSEG    (CODE)
                                    796 	.area XINIT   (CODE)
                                    797 	.area CABS    (ABS,CODE)
