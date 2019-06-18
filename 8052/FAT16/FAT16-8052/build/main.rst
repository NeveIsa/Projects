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
                                     11 	.globl _HELPER_strncmp_PARM_3
                                     12 	.globl _HELPER_strncmp_PARM_2
                                     13 	.globl _HELPER_strcmp_PARM_2
                                     14 	.globl _spi_transfer_PARM_2
                                     15 	.globl _main
                                     16 	.globl _SelectFAT16PartitionPrompt
                                     17 	.globl _delay
                                     18 	.globl _FAT16_FILE_CAT
                                     19 	.globl _FAT16_FILE_READ
                                     20 	.globl _FAT16_GET_NEXT_CLUSTER
                                     21 	.globl _FAT16_FILE_OPEN
                                     22 	.globl _FAT16_ROOTENTRY_SCAN
                                     23 	.globl _FAT16_ROOTENTRY_SCAN_RESET
                                     24 	.globl _FAT16_ROOTENTRY_READ
                                     25 	.globl _FAT16_IS_ROOTENTRY_VALID_FILE
                                     26 	.globl _FAT16_LOAD_ROOTENTRY
                                     27 	.globl _FAT16_ROOTENTRY_DUMP
                                     28 	.globl _VBR_FAT16_CHECK_COMPATIBILITY
                                     29 	.globl _VBR_MOUNT_VBR
                                     30 	.globl _VBR_DUMP
                                     31 	.globl _MBR_DETECT_FAT16
                                     32 	.globl _MBR_LOAD_PARTITION_TABLE_ENTRY
                                     33 	.globl _MBR_CHECK__SIGNATURE
                                     34 	.globl _HELPER_filename_to_8dot3filename
                                     35 	.globl _HELPER_to_uppercase
                                     36 	.globl _HELPER_rootentry_type
                                     37 	.globl _HELPER_strlen
                                     38 	.globl _HELPER_strncmp
                                     39 	.globl _HELPER_strcmp
                                     40 	.globl _HELPER_load_littleendian32
                                     41 	.globl _HELPER_load_littleendian16
                                     42 	.globl _SDreadBlock
                                     43 	.globl _SDread
                                     44 	.globl _SDinit
                                     45 	.globl _sd_acmd
                                     46 	.globl _sd_cmd
                                     47 	.globl _sd_initial_clk
                                     48 	.globl _sd_isbusy
                                     49 	.globl _spi_transfer_all
                                     50 	.globl _spi_transfer
                                     51 	.globl _spi_init
                                     52 	.globl _spi_delay
                                     53 	.globl _UartScanLine
                                     54 	.globl _UartScanByte
                                     55 	.globl _UartPrintNumber
                                     56 	.globl _UartWriteNumbers
                                     57 	.globl _UartWriteNumber
                                     58 	.globl _UartPrint
                                     59 	.globl _UartReadBuff
                                     60 	.globl _UartWriteBuff
                                     61 	.globl _UartWrite
                                     62 	.globl _UartRead
                                     63 	.globl _UartReadReady
                                     64 	.globl _UartBegin
                                     65 	.globl _dec2hexNibble
                                     66 	.globl _hex2dec
                                     67 	.globl _hexNibble2dec
                                     68 	.globl _TF2
                                     69 	.globl _EXF2
                                     70 	.globl _RCLK
                                     71 	.globl _TCLK
                                     72 	.globl _EXEN2
                                     73 	.globl _TR2
                                     74 	.globl _C_T2
                                     75 	.globl _CP_RL2
                                     76 	.globl _T2CON_7
                                     77 	.globl _T2CON_6
                                     78 	.globl _T2CON_5
                                     79 	.globl _T2CON_4
                                     80 	.globl _T2CON_3
                                     81 	.globl _T2CON_2
                                     82 	.globl _T2CON_1
                                     83 	.globl _T2CON_0
                                     84 	.globl _PT2
                                     85 	.globl _ET2
                                     86 	.globl _CY
                                     87 	.globl _AC
                                     88 	.globl _F0
                                     89 	.globl _RS1
                                     90 	.globl _RS0
                                     91 	.globl _OV
                                     92 	.globl _F1
                                     93 	.globl _P
                                     94 	.globl _PS
                                     95 	.globl _PT1
                                     96 	.globl _PX1
                                     97 	.globl _PT0
                                     98 	.globl _PX0
                                     99 	.globl _RD
                                    100 	.globl _WR
                                    101 	.globl _T1
                                    102 	.globl _T0
                                    103 	.globl _INT1
                                    104 	.globl _INT0
                                    105 	.globl _TXD
                                    106 	.globl _RXD
                                    107 	.globl _P3_7
                                    108 	.globl _P3_6
                                    109 	.globl _P3_5
                                    110 	.globl _P3_4
                                    111 	.globl _P3_3
                                    112 	.globl _P3_2
                                    113 	.globl _P3_1
                                    114 	.globl _P3_0
                                    115 	.globl _EA
                                    116 	.globl _ES
                                    117 	.globl _ET1
                                    118 	.globl _EX1
                                    119 	.globl _ET0
                                    120 	.globl _EX0
                                    121 	.globl _P2_7
                                    122 	.globl _P2_6
                                    123 	.globl _P2_5
                                    124 	.globl _P2_4
                                    125 	.globl _P2_3
                                    126 	.globl _P2_2
                                    127 	.globl _P2_1
                                    128 	.globl _P2_0
                                    129 	.globl _SM0
                                    130 	.globl _SM1
                                    131 	.globl _SM2
                                    132 	.globl _REN
                                    133 	.globl _TB8
                                    134 	.globl _RB8
                                    135 	.globl _TI
                                    136 	.globl _RI
                                    137 	.globl _P1_7
                                    138 	.globl _P1_6
                                    139 	.globl _P1_5
                                    140 	.globl _P1_4
                                    141 	.globl _P1_3
                                    142 	.globl _P1_2
                                    143 	.globl _P1_1
                                    144 	.globl _P1_0
                                    145 	.globl _TF1
                                    146 	.globl _TR1
                                    147 	.globl _TF0
                                    148 	.globl _TR0
                                    149 	.globl _IE1
                                    150 	.globl _IT1
                                    151 	.globl _IE0
                                    152 	.globl _IT0
                                    153 	.globl _P0_7
                                    154 	.globl _P0_6
                                    155 	.globl _P0_5
                                    156 	.globl _P0_4
                                    157 	.globl _P0_3
                                    158 	.globl _P0_2
                                    159 	.globl _P0_1
                                    160 	.globl _P0_0
                                    161 	.globl _TH2
                                    162 	.globl _TL2
                                    163 	.globl _RCAP2H
                                    164 	.globl _RCAP2L
                                    165 	.globl _T2CON
                                    166 	.globl _B
                                    167 	.globl _ACC
                                    168 	.globl _PSW
                                    169 	.globl _IP
                                    170 	.globl _P3
                                    171 	.globl _IE
                                    172 	.globl _P2
                                    173 	.globl _SBUF
                                    174 	.globl _SCON
                                    175 	.globl _P1
                                    176 	.globl _TH1
                                    177 	.globl _TH0
                                    178 	.globl _TL1
                                    179 	.globl _TL0
                                    180 	.globl _TMOD
                                    181 	.globl _TCON
                                    182 	.globl _PCON
                                    183 	.globl _DPH
                                    184 	.globl _DPL
                                    185 	.globl _SP
                                    186 	.globl _P0
                                    187 	.globl _HELPER_filename_to_8dot3filename_PARM_2
                                    188 	.globl _SDreadBlock_PARM_2
                                    189 	.globl _sd_acmd_PARM_2
                                    190 	.globl _sd_cmd_PARM_2
                                    191 	.globl _spi_transfer_all_PARM_3
                                    192 	.globl _spi_transfer_all_PARM_2
                                    193 	.globl _UartReadBuff_PARM_2
                                    194 	.globl _UartWriteBuff_PARM_2
                                    195 	.globl _hex2dec_PARM_2
                                    196 ;--------------------------------------------------------
                                    197 ; special function registers
                                    198 ;--------------------------------------------------------
                                    199 	.area RSEG    (ABS,DATA)
      000000                        200 	.org 0x0000
                           000080   201 _P0	=	0x0080
                           000081   202 _SP	=	0x0081
                           000082   203 _DPL	=	0x0082
                           000083   204 _DPH	=	0x0083
                           000087   205 _PCON	=	0x0087
                           000088   206 _TCON	=	0x0088
                           000089   207 _TMOD	=	0x0089
                           00008A   208 _TL0	=	0x008a
                           00008B   209 _TL1	=	0x008b
                           00008C   210 _TH0	=	0x008c
                           00008D   211 _TH1	=	0x008d
                           000090   212 _P1	=	0x0090
                           000098   213 _SCON	=	0x0098
                           000099   214 _SBUF	=	0x0099
                           0000A0   215 _P2	=	0x00a0
                           0000A8   216 _IE	=	0x00a8
                           0000B0   217 _P3	=	0x00b0
                           0000B8   218 _IP	=	0x00b8
                           0000D0   219 _PSW	=	0x00d0
                           0000E0   220 _ACC	=	0x00e0
                           0000F0   221 _B	=	0x00f0
                           0000C8   222 _T2CON	=	0x00c8
                           0000CA   223 _RCAP2L	=	0x00ca
                           0000CB   224 _RCAP2H	=	0x00cb
                           0000CC   225 _TL2	=	0x00cc
                           0000CD   226 _TH2	=	0x00cd
                                    227 ;--------------------------------------------------------
                                    228 ; special function bits
                                    229 ;--------------------------------------------------------
                                    230 	.area RSEG    (ABS,DATA)
      000000                        231 	.org 0x0000
                           000080   232 _P0_0	=	0x0080
                           000081   233 _P0_1	=	0x0081
                           000082   234 _P0_2	=	0x0082
                           000083   235 _P0_3	=	0x0083
                           000084   236 _P0_4	=	0x0084
                           000085   237 _P0_5	=	0x0085
                           000086   238 _P0_6	=	0x0086
                           000087   239 _P0_7	=	0x0087
                           000088   240 _IT0	=	0x0088
                           000089   241 _IE0	=	0x0089
                           00008A   242 _IT1	=	0x008a
                           00008B   243 _IE1	=	0x008b
                           00008C   244 _TR0	=	0x008c
                           00008D   245 _TF0	=	0x008d
                           00008E   246 _TR1	=	0x008e
                           00008F   247 _TF1	=	0x008f
                           000090   248 _P1_0	=	0x0090
                           000091   249 _P1_1	=	0x0091
                           000092   250 _P1_2	=	0x0092
                           000093   251 _P1_3	=	0x0093
                           000094   252 _P1_4	=	0x0094
                           000095   253 _P1_5	=	0x0095
                           000096   254 _P1_6	=	0x0096
                           000097   255 _P1_7	=	0x0097
                           000098   256 _RI	=	0x0098
                           000099   257 _TI	=	0x0099
                           00009A   258 _RB8	=	0x009a
                           00009B   259 _TB8	=	0x009b
                           00009C   260 _REN	=	0x009c
                           00009D   261 _SM2	=	0x009d
                           00009E   262 _SM1	=	0x009e
                           00009F   263 _SM0	=	0x009f
                           0000A0   264 _P2_0	=	0x00a0
                           0000A1   265 _P2_1	=	0x00a1
                           0000A2   266 _P2_2	=	0x00a2
                           0000A3   267 _P2_3	=	0x00a3
                           0000A4   268 _P2_4	=	0x00a4
                           0000A5   269 _P2_5	=	0x00a5
                           0000A6   270 _P2_6	=	0x00a6
                           0000A7   271 _P2_7	=	0x00a7
                           0000A8   272 _EX0	=	0x00a8
                           0000A9   273 _ET0	=	0x00a9
                           0000AA   274 _EX1	=	0x00aa
                           0000AB   275 _ET1	=	0x00ab
                           0000AC   276 _ES	=	0x00ac
                           0000AF   277 _EA	=	0x00af
                           0000B0   278 _P3_0	=	0x00b0
                           0000B1   279 _P3_1	=	0x00b1
                           0000B2   280 _P3_2	=	0x00b2
                           0000B3   281 _P3_3	=	0x00b3
                           0000B4   282 _P3_4	=	0x00b4
                           0000B5   283 _P3_5	=	0x00b5
                           0000B6   284 _P3_6	=	0x00b6
                           0000B7   285 _P3_7	=	0x00b7
                           0000B0   286 _RXD	=	0x00b0
                           0000B1   287 _TXD	=	0x00b1
                           0000B2   288 _INT0	=	0x00b2
                           0000B3   289 _INT1	=	0x00b3
                           0000B4   290 _T0	=	0x00b4
                           0000B5   291 _T1	=	0x00b5
                           0000B6   292 _WR	=	0x00b6
                           0000B7   293 _RD	=	0x00b7
                           0000B8   294 _PX0	=	0x00b8
                           0000B9   295 _PT0	=	0x00b9
                           0000BA   296 _PX1	=	0x00ba
                           0000BB   297 _PT1	=	0x00bb
                           0000BC   298 _PS	=	0x00bc
                           0000D0   299 _P	=	0x00d0
                           0000D1   300 _F1	=	0x00d1
                           0000D2   301 _OV	=	0x00d2
                           0000D3   302 _RS0	=	0x00d3
                           0000D4   303 _RS1	=	0x00d4
                           0000D5   304 _F0	=	0x00d5
                           0000D6   305 _AC	=	0x00d6
                           0000D7   306 _CY	=	0x00d7
                           0000AD   307 _ET2	=	0x00ad
                           0000BD   308 _PT2	=	0x00bd
                           0000C8   309 _T2CON_0	=	0x00c8
                           0000C9   310 _T2CON_1	=	0x00c9
                           0000CA   311 _T2CON_2	=	0x00ca
                           0000CB   312 _T2CON_3	=	0x00cb
                           0000CC   313 _T2CON_4	=	0x00cc
                           0000CD   314 _T2CON_5	=	0x00cd
                           0000CE   315 _T2CON_6	=	0x00ce
                           0000CF   316 _T2CON_7	=	0x00cf
                           0000C8   317 _CP_RL2	=	0x00c8
                           0000C9   318 _C_T2	=	0x00c9
                           0000CA   319 _TR2	=	0x00ca
                           0000CB   320 _EXEN2	=	0x00cb
                           0000CC   321 _TCLK	=	0x00cc
                           0000CD   322 _RCLK	=	0x00cd
                           0000CE   323 _EXF2	=	0x00ce
                           0000CF   324 _TF2	=	0x00cf
                                    325 ;--------------------------------------------------------
                                    326 ; overlayable register banks
                                    327 ;--------------------------------------------------------
                                    328 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        329 	.ds 8
                                    330 ;--------------------------------------------------------
                                    331 ; internal ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area DSEG    (DATA)
      000008                        334 _hex2dec_PARM_2:
      000008                        335 	.ds 1
      000009                        336 _UartWriteBuff_PARM_2:
      000009                        337 	.ds 1
      00000A                        338 _UartReadBuff_PARM_2:
      00000A                        339 	.ds 1
      00000B                        340 _spi_transfer_all_PARM_2:
      00000B                        341 	.ds 1
      00000C                        342 _spi_transfer_all_PARM_3:
      00000C                        343 	.ds 1
      00000D                        344 _sd_cmd_PARM_2:
      00000D                        345 	.ds 4
      000011                        346 _sd_acmd_PARM_2:
      000011                        347 	.ds 4
      000015                        348 _SDreadBlock_PARM_2:
      000015                        349 	.ds 3
      000018                        350 _HELPER_filename_to_8dot3filename_PARM_2:
      000018                        351 	.ds 3
      00001B                        352 _HELPER_filename_to_8dot3filename_fname_65536_125:
      00001B                        353 	.ds 3
      00001E                        354 _HELPER_filename_to_8dot3filename_i_131072_131:
      00001E                        355 	.ds 1
      00001F                        356 _VBR_MOUNT_VBR_sloc0_1_0:
      00001F                        357 	.ds 4
      000023                        358 _FAT16_LOAD_ROOTENTRY_roote_number_65536_155:
      000023                        359 	.ds 2
      000025                        360 _FAT16_LOAD_ROOTENTRY_sloc0_1_0:
      000025                        361 	.ds 4
      000029                        362 _FAT16_LOAD_ROOTENTRY_sloc1_1_0:
      000029                        363 	.ds 2
      00002B                        364 _main_fname_65536_213:
      00002B                        365 	.ds 11
      000036                        366 _main_buff_65536_213:
      000036                        367 	.ds 8
                                    368 ;--------------------------------------------------------
                                    369 ; overlayable items in internal ram 
                                    370 ;--------------------------------------------------------
                                    371 	.area	OSEG    (OVR,DATA)
                                    372 	.area	OSEG    (OVR,DATA)
                                    373 	.area	OSEG    (OVR,DATA)
                                    374 	.area	OSEG    (OVR,DATA)
                                    375 	.area	OSEG    (OVR,DATA)
                                    376 	.area	OSEG    (OVR,DATA)
      00003F                        377 _spi_transfer_PARM_2:
      00003F                        378 	.ds 1
                                    379 	.area	OSEG    (OVR,DATA)
      00003F                        380 _HELPER_strcmp_PARM_2:
      00003F                        381 	.ds 3
                                    382 	.area	OSEG    (OVR,DATA)
      00003F                        383 _HELPER_strncmp_PARM_2:
      00003F                        384 	.ds 3
      000042                        385 _HELPER_strncmp_PARM_3:
      000042                        386 	.ds 1
                                    387 	.area	OSEG    (OVR,DATA)
                                    388 	.area	OSEG    (OVR,DATA)
                                    389 	.area	OSEG    (OVR,DATA)
                                    390 ;--------------------------------------------------------
                                    391 ; Stack segment in internal ram 
                                    392 ;--------------------------------------------------------
                                    393 	.area	SSEG
      0000C4                        394 __start__stack:
      0000C4                        395 	.ds	1
                                    396 
                                    397 ;--------------------------------------------------------
                                    398 ; indirectly addressable internal ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area ISEG    (DATA)
      000043                        401 ___global_partitionTableEntry:
      000043                        402 	.ds 9
      00004C                        403 ___global_vbr:
      00004C                        404 	.ds 31
      00006B                        405 ___global_nthPartitionVBRmounted:
      00006B                        406 	.ds 1
      00006C                        407 ___global_rootEntry:
      00006C                        408 	.ds 24
      000084                        409 _MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137:
      000084                        410 	.ds 16
      000094                        411 _VBR_MOUNT_VBR_temp_65536_144:
      000094                        412 	.ds 16
      0000A4                        413 _FAT16_LOAD_ROOTENTRY_temp_65536_156:
      0000A4                        414 	.ds 32
                                    415 ;--------------------------------------------------------
                                    416 ; absolute internal ram data
                                    417 ;--------------------------------------------------------
                                    418 	.area IABS    (ABS,DATA)
                                    419 	.area IABS    (ABS,DATA)
                                    420 ;--------------------------------------------------------
                                    421 ; bit data
                                    422 ;--------------------------------------------------------
                                    423 	.area BSEG    (BIT)
                                    424 ;--------------------------------------------------------
                                    425 ; paged external ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area PSEG    (PAG,XDATA)
                                    428 ;--------------------------------------------------------
                                    429 ; external ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area XSEG    (XDATA)
                                    432 ;--------------------------------------------------------
                                    433 ; absolute external ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area XABS    (ABS,XDATA)
                                    436 ;--------------------------------------------------------
                                    437 ; external initialized ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area XISEG   (XDATA)
                                    440 	.area HOME    (CODE)
                                    441 	.area GSINIT0 (CODE)
                                    442 	.area GSINIT1 (CODE)
                                    443 	.area GSINIT2 (CODE)
                                    444 	.area GSINIT3 (CODE)
                                    445 	.area GSINIT4 (CODE)
                                    446 	.area GSINIT5 (CODE)
                                    447 	.area GSINIT  (CODE)
                                    448 	.area GSFINAL (CODE)
                                    449 	.area CSEG    (CODE)
                                    450 ;--------------------------------------------------------
                                    451 ; interrupt vector 
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
      000000                        454 __interrupt_vect:
      000000 02 00 06         [24]  455 	ljmp	__sdcc_gsinit_startup
                                    456 ;--------------------------------------------------------
                                    457 ; global & static initialisations
                                    458 ;--------------------------------------------------------
                                    459 	.area HOME    (CODE)
                                    460 	.area GSINIT  (CODE)
                                    461 	.area GSFINAL (CODE)
                                    462 	.area GSINIT  (CODE)
                                    463 	.globl __sdcc_gsinit_startup
                                    464 	.globl __sdcc_program_startup
                                    465 	.globl __start__stack
                                    466 	.globl __mcs51_genXINIT
                                    467 	.globl __mcs51_genXRAMCLEAR
                                    468 	.globl __mcs51_genRAMCLEAR
                                    469 ;	fat.h:237: __idata static uint8_t __global_nthPartitionVBRmounted=255; //mounted if value is 0-3 for the 4 partitions,else not mounted
      00005F 78 6B            [12]  470 	mov	r0,#___global_nthPartitionVBRmounted
      000061 76 FF            [12]  471 	mov	@r0,#0xff
                                    472 	.area GSFINAL (CODE)
      000063 02 00 03         [24]  473 	ljmp	__sdcc_program_startup
                                    474 ;--------------------------------------------------------
                                    475 ; Home
                                    476 ;--------------------------------------------------------
                                    477 	.area HOME    (CODE)
                                    478 	.area HOME    (CODE)
      000003                        479 __sdcc_program_startup:
      000003 02 18 D7         [24]  480 	ljmp	_main
                                    481 ;	return from main will return to caller
                                    482 ;--------------------------------------------------------
                                    483 ; code
                                    484 ;--------------------------------------------------------
                                    485 	.area CSEG    (CODE)
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'hexNibble2dec'
                                    488 ;------------------------------------------------------------
                                    489 ;nibble                    Allocated to registers r7 
                                    490 ;------------------------------------------------------------
                                    491 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    492 ;	-----------------------------------------
                                    493 ;	 function hexNibble2dec
                                    494 ;	-----------------------------------------
      000066                        495 _hexNibble2dec:
                           000007   496 	ar7 = 0x07
                           000006   497 	ar6 = 0x06
                           000005   498 	ar5 = 0x05
                           000004   499 	ar4 = 0x04
                           000003   500 	ar3 = 0x03
                           000002   501 	ar2 = 0x02
                           000001   502 	ar1 = 0x01
                           000000   503 	ar0 = 0x00
      000066 AF 82            [24]  504 	mov	r7,dpl
                                    505 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      000068 BF 30 00         [24]  506 	cjne	r7,#0x30,00139$
      00006B                        507 00139$:
      00006B 40 0D            [24]  508 	jc	00110$
      00006D EF               [12]  509 	mov	a,r7
      00006E 24 C6            [12]  510 	add	a,#0xff - 0x39
      000070 40 08            [24]  511 	jc	00110$
      000072 8F 06            [24]  512 	mov	ar6,r7
      000074 EE               [12]  513 	mov	a,r6
      000075 24 D0            [12]  514 	add	a,#0xd0
      000077 F5 82            [12]  515 	mov	dpl,a
      000079 22               [24]  516 	ret
      00007A                        517 00110$:
                                    518 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      00007A BF 41 00         [24]  519 	cjne	r7,#0x41,00142$
      00007D                        520 00142$:
      00007D 40 0D            [24]  521 	jc	00106$
      00007F EF               [12]  522 	mov	a,r7
      000080 24 B9            [12]  523 	add	a,#0xff - 0x46
      000082 40 08            [24]  524 	jc	00106$
      000084 8F 06            [24]  525 	mov	ar6,r7
      000086 74 C9            [12]  526 	mov	a,#0xc9
      000088 2E               [12]  527 	add	a,r6
      000089 F5 82            [12]  528 	mov	dpl,a
      00008B 22               [24]  529 	ret
      00008C                        530 00106$:
                                    531 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      00008C BF 61 00         [24]  532 	cjne	r7,#0x61,00145$
      00008F                        533 00145$:
      00008F 40 0B            [24]  534 	jc	00102$
      000091 EF               [12]  535 	mov	a,r7
      000092 24 99            [12]  536 	add	a,#0xff - 0x66
      000094 40 06            [24]  537 	jc	00102$
      000096 74 A9            [12]  538 	mov	a,#0xa9
      000098 2F               [12]  539 	add	a,r7
      000099 F5 82            [12]  540 	mov	dpl,a
      00009B 22               [24]  541 	ret
      00009C                        542 00102$:
                                    543 ;	uart.h:11: else return 0;
      00009C 75 82 00         [24]  544 	mov	dpl,#0x00
                                    545 ;	uart.h:12: }
      00009F 22               [24]  546 	ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'hex2dec'
                                    549 ;------------------------------------------------------------
                                    550 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    551 ;MSnibble                  Allocated to registers r7 
                                    552 ;------------------------------------------------------------
                                    553 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    554 ;	-----------------------------------------
                                    555 ;	 function hex2dec
                                    556 ;	-----------------------------------------
      0000A0                        557 _hex2dec:
                                    558 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      0000A0 12 00 66         [24]  559 	lcall	_hexNibble2dec
      0000A3 E5 82            [12]  560 	mov	a,dpl
      0000A5 C4               [12]  561 	swap	a
      0000A6 54 F0            [12]  562 	anl	a,#0xf0
      0000A8 FF               [12]  563 	mov	r7,a
      0000A9 85 08 82         [24]  564 	mov	dpl,_hex2dec_PARM_2
      0000AC C0 07            [24]  565 	push	ar7
      0000AE 12 00 66         [24]  566 	lcall	_hexNibble2dec
      0000B1 AE 82            [24]  567 	mov	r6,dpl
      0000B3 D0 07            [24]  568 	pop	ar7
      0000B5 EE               [12]  569 	mov	a,r6
      0000B6 2F               [12]  570 	add	a,r7
      0000B7 F5 82            [12]  571 	mov	dpl,a
                                    572 ;	uart.h:18: }
      0000B9 22               [24]  573 	ret
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'dec2hexNibble'
                                    576 ;------------------------------------------------------------
                                    577 ;dec                       Allocated to registers r7 
                                    578 ;------------------------------------------------------------
                                    579 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    580 ;	-----------------------------------------
                                    581 ;	 function dec2hexNibble
                                    582 ;	-----------------------------------------
      0000BA                        583 _dec2hexNibble:
                                    584 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000BA E5 82            [12]  585 	mov	a,dpl
      0000BC FF               [12]  586 	mov	r7,a
      0000BD 24 F0            [12]  587 	add	a,#0xff - 0x0f
      0000BF 50 04            [24]  588 	jnc	00102$
      0000C1 75 82 58         [24]  589 	mov	dpl,#0x58
      0000C4 22               [24]  590 	ret
      0000C5                        591 00102$:
                                    592 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C5 EF               [12]  593 	mov	a,r7
      0000C6 24 F6            [12]  594 	add	a,#0xff - 0x09
      0000C8 40 08            [24]  595 	jc	00104$
      0000CA 8F 06            [24]  596 	mov	ar6,r7
      0000CC 74 30            [12]  597 	mov	a,#0x30
      0000CE 2E               [12]  598 	add	a,r6
      0000CF F5 82            [12]  599 	mov	dpl,a
      0000D1 22               [24]  600 	ret
      0000D2                        601 00104$:
                                    602 ;	uart.h:27: else return 'A' + dec - 10;
      0000D2 74 37            [12]  603 	mov	a,#0x37
      0000D4 2F               [12]  604 	add	a,r7
      0000D5 F5 82            [12]  605 	mov	dpl,a
                                    606 ;	uart.h:28: }
      0000D7 22               [24]  607 	ret
                                    608 ;------------------------------------------------------------
                                    609 ;Allocation info for local variables in function 'UartBegin'
                                    610 ;------------------------------------------------------------
                                    611 ;	uart.h:33: void UartBegin()
                                    612 ;	-----------------------------------------
                                    613 ;	 function UartBegin
                                    614 ;	-----------------------------------------
      0000D8                        615 _UartBegin:
                                    616 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000D8 75 89 20         [24]  617 	mov	_TMOD,#0x20
                                    618 ;	uart.h:39: TH1 = 0XF3; //2400
      0000DB 75 8D F3         [24]  619 	mov	_TH1,#0xf3
                                    620 ;	uart.h:40: SCON = 0X50;
      0000DE 75 98 50         [24]  621 	mov	_SCON,#0x50
                                    622 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000E1 43 87 80         [24]  623 	orl	_PCON,#0x80
                                    624 ;	uart.h:44: TR1 = 1; //START TIMER
                                    625 ;	assignBit
      0000E4 D2 8E            [12]  626 	setb	_TR1
                                    627 ;	uart.h:45: }
      0000E6 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'UartReadReady'
                                    631 ;------------------------------------------------------------
                                    632 ;	uart.h:47: unsigned char UartReadReady()
                                    633 ;	-----------------------------------------
                                    634 ;	 function UartReadReady
                                    635 ;	-----------------------------------------
      0000E7                        636 _UartReadReady:
                                    637 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000E7 20 98 04         [24]  638 	jb	_RI,00102$
      0000EA 75 82 00         [24]  639 	mov	dpl,#0x00
      0000ED 22               [24]  640 	ret
      0000EE                        641 00102$:
                                    642 ;	uart.h:50: else return 1; //received and ready
      0000EE 75 82 01         [24]  643 	mov	dpl,#0x01
                                    644 ;	uart.h:51: }
      0000F1 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'UartRead'
                                    648 ;------------------------------------------------------------
                                    649 ;value                     Allocated to registers 
                                    650 ;------------------------------------------------------------
                                    651 ;	uart.h:53: unsigned char UartRead()
                                    652 ;	-----------------------------------------
                                    653 ;	 function UartRead
                                    654 ;	-----------------------------------------
      0000F2                        655 _UartRead:
                                    656 ;	uart.h:56: while(RI==0); //wait till RX
      0000F2                        657 00101$:
                                    658 ;	uart.h:57: RI=0;
                                    659 ;	assignBit
      0000F2 10 98 02         [24]  660 	jbc	_RI,00114$
      0000F5 80 FB            [24]  661 	sjmp	00101$
      0000F7                        662 00114$:
                                    663 ;	uart.h:58: value = SBUF;
      0000F7 85 99 82         [24]  664 	mov	dpl,_SBUF
                                    665 ;	uart.h:59: return value;
                                    666 ;	uart.h:60: }
      0000FA 22               [24]  667 	ret
                                    668 ;------------------------------------------------------------
                                    669 ;Allocation info for local variables in function 'UartWrite'
                                    670 ;------------------------------------------------------------
                                    671 ;value                     Allocated to registers 
                                    672 ;------------------------------------------------------------
                                    673 ;	uart.h:63: void UartWrite(unsigned char value)
                                    674 ;	-----------------------------------------
                                    675 ;	 function UartWrite
                                    676 ;	-----------------------------------------
      0000FB                        677 _UartWrite:
      0000FB 85 82 99         [24]  678 	mov	_SBUF,dpl
                                    679 ;	uart.h:66: while(TI==0); // wait till TX
      0000FE                        680 00101$:
                                    681 ;	uart.h:67: TI=0;
                                    682 ;	assignBit
      0000FE 10 99 02         [24]  683 	jbc	_TI,00114$
      000101 80 FB            [24]  684 	sjmp	00101$
      000103                        685 00114$:
                                    686 ;	uart.h:68: }
      000103 22               [24]  687 	ret
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'UartWriteBuff'
                                    690 ;------------------------------------------------------------
                                    691 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    692 ;p                         Allocated to registers r5 r6 r7 
                                    693 ;i                         Allocated to registers r4 
                                    694 ;------------------------------------------------------------
                                    695 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    696 ;	-----------------------------------------
                                    697 ;	 function UartWriteBuff
                                    698 ;	-----------------------------------------
      000104                        699 _UartWriteBuff:
      000104 AD 82            [24]  700 	mov	r5,dpl
      000106 AE 83            [24]  701 	mov	r6,dph
      000108 AF F0            [24]  702 	mov	r7,b
                                    703 ;	uart.h:73: for (i=0;i<length;i++)
      00010A 7C 00            [12]  704 	mov	r4,#0x00
      00010C                        705 00103$:
      00010C C3               [12]  706 	clr	c
      00010D EC               [12]  707 	mov	a,r4
      00010E 95 09            [12]  708 	subb	a,_UartWriteBuff_PARM_2
      000110 50 29            [24]  709 	jnc	00105$
                                    710 ;	uart.h:75: UartWrite(p[i]);
      000112 EC               [12]  711 	mov	a,r4
      000113 2D               [12]  712 	add	a,r5
      000114 F9               [12]  713 	mov	r1,a
      000115 E4               [12]  714 	clr	a
      000116 3E               [12]  715 	addc	a,r6
      000117 FA               [12]  716 	mov	r2,a
      000118 8F 03            [24]  717 	mov	ar3,r7
      00011A 89 82            [24]  718 	mov	dpl,r1
      00011C 8A 83            [24]  719 	mov	dph,r2
      00011E 8B F0            [24]  720 	mov	b,r3
      000120 12 1B 6D         [24]  721 	lcall	__gptrget
      000123 F5 82            [12]  722 	mov	dpl,a
      000125 C0 07            [24]  723 	push	ar7
      000127 C0 06            [24]  724 	push	ar6
      000129 C0 05            [24]  725 	push	ar5
      00012B C0 04            [24]  726 	push	ar4
      00012D 12 00 FB         [24]  727 	lcall	_UartWrite
      000130 D0 04            [24]  728 	pop	ar4
      000132 D0 05            [24]  729 	pop	ar5
      000134 D0 06            [24]  730 	pop	ar6
      000136 D0 07            [24]  731 	pop	ar7
                                    732 ;	uart.h:73: for (i=0;i<length;i++)
      000138 0C               [12]  733 	inc	r4
      000139 80 D1            [24]  734 	sjmp	00103$
      00013B                        735 00105$:
                                    736 ;	uart.h:77: }
      00013B 22               [24]  737 	ret
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'UartReadBuff'
                                    740 ;------------------------------------------------------------
                                    741 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    742 ;p                         Allocated to registers r5 r6 r7 
                                    743 ;i                         Allocated to registers r4 
                                    744 ;------------------------------------------------------------
                                    745 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    746 ;	-----------------------------------------
                                    747 ;	 function UartReadBuff
                                    748 ;	-----------------------------------------
      00013C                        749 _UartReadBuff:
      00013C AD 82            [24]  750 	mov	r5,dpl
      00013E AE 83            [24]  751 	mov	r6,dph
      000140 AF F0            [24]  752 	mov	r7,b
                                    753 ;	uart.h:82: for (i=0;i<length;i++)
      000142 7C 00            [12]  754 	mov	r4,#0x00
      000144                        755 00103$:
      000144 C3               [12]  756 	clr	c
      000145 EC               [12]  757 	mov	a,r4
      000146 95 0A            [12]  758 	subb	a,_UartReadBuff_PARM_2
      000148 50 36            [24]  759 	jnc	00105$
                                    760 ;	uart.h:84: p[i] = UartRead();
      00014A EC               [12]  761 	mov	a,r4
      00014B 2D               [12]  762 	add	a,r5
      00014C F9               [12]  763 	mov	r1,a
      00014D E4               [12]  764 	clr	a
      00014E 3E               [12]  765 	addc	a,r6
      00014F FA               [12]  766 	mov	r2,a
      000150 8F 03            [24]  767 	mov	ar3,r7
      000152 C0 07            [24]  768 	push	ar7
      000154 C0 06            [24]  769 	push	ar6
      000156 C0 05            [24]  770 	push	ar5
      000158 C0 04            [24]  771 	push	ar4
      00015A C0 03            [24]  772 	push	ar3
      00015C C0 02            [24]  773 	push	ar2
      00015E C0 01            [24]  774 	push	ar1
      000160 12 00 F2         [24]  775 	lcall	_UartRead
      000163 A8 82            [24]  776 	mov	r0,dpl
      000165 D0 01            [24]  777 	pop	ar1
      000167 D0 02            [24]  778 	pop	ar2
      000169 D0 03            [24]  779 	pop	ar3
      00016B D0 04            [24]  780 	pop	ar4
      00016D D0 05            [24]  781 	pop	ar5
      00016F D0 06            [24]  782 	pop	ar6
      000171 D0 07            [24]  783 	pop	ar7
      000173 89 82            [24]  784 	mov	dpl,r1
      000175 8A 83            [24]  785 	mov	dph,r2
      000177 8B F0            [24]  786 	mov	b,r3
      000179 E8               [12]  787 	mov	a,r0
      00017A 12 1A 7A         [24]  788 	lcall	__gptrput
                                    789 ;	uart.h:82: for (i=0;i<length;i++)
      00017D 0C               [12]  790 	inc	r4
      00017E 80 C4            [24]  791 	sjmp	00103$
      000180                        792 00105$:
                                    793 ;	uart.h:86: }
      000180 22               [24]  794 	ret
                                    795 ;------------------------------------------------------------
                                    796 ;Allocation info for local variables in function 'UartPrint'
                                    797 ;------------------------------------------------------------
                                    798 ;p                         Allocated to registers 
                                    799 ;------------------------------------------------------------
                                    800 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    801 ;	-----------------------------------------
                                    802 ;	 function UartPrint
                                    803 ;	-----------------------------------------
      000181                        804 _UartPrint:
      000181 AD 82            [24]  805 	mov	r5,dpl
      000183 AE 83            [24]  806 	mov	r6,dph
      000185 AF F0            [24]  807 	mov	r7,b
                                    808 ;	uart.h:90: do
      000187                        809 00101$:
                                    810 ;	uart.h:92: UartWrite(*p);
      000187 8D 82            [24]  811 	mov	dpl,r5
      000189 8E 83            [24]  812 	mov	dph,r6
      00018B 8F F0            [24]  813 	mov	b,r7
      00018D 12 1B 6D         [24]  814 	lcall	__gptrget
      000190 FC               [12]  815 	mov	r4,a
      000191 A3               [24]  816 	inc	dptr
      000192 AD 82            [24]  817 	mov	r5,dpl
      000194 AE 83            [24]  818 	mov	r6,dph
      000196 8C 82            [24]  819 	mov	dpl,r4
      000198 C0 07            [24]  820 	push	ar7
      00019A C0 06            [24]  821 	push	ar6
      00019C C0 05            [24]  822 	push	ar5
      00019E 12 00 FB         [24]  823 	lcall	_UartWrite
      0001A1 D0 05            [24]  824 	pop	ar5
      0001A3 D0 06            [24]  825 	pop	ar6
      0001A5 D0 07            [24]  826 	pop	ar7
                                    827 ;	uart.h:93: }while(*(++p)!=0);
      0001A7 8D 82            [24]  828 	mov	dpl,r5
      0001A9 8E 83            [24]  829 	mov	dph,r6
      0001AB 8F F0            [24]  830 	mov	b,r7
      0001AD 12 1B 6D         [24]  831 	lcall	__gptrget
      0001B0 70 D5            [24]  832 	jnz	00101$
                                    833 ;	uart.h:94: }
      0001B2 22               [24]  834 	ret
                                    835 ;------------------------------------------------------------
                                    836 ;Allocation info for local variables in function 'UartWriteNumber'
                                    837 ;------------------------------------------------------------
                                    838 ;format                    Allocated to stack - _bp -3
                                    839 ;num                       Allocated to registers r7 
                                    840 ;msd                       Allocated to registers r4 
                                    841 ;lsd                       Allocated to registers r6 
                                    842 ;extra                     Allocated to registers r3 
                                    843 ;------------------------------------------------------------
                                    844 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    845 ;	-----------------------------------------
                                    846 ;	 function UartWriteNumber
                                    847 ;	-----------------------------------------
      0001B3                        848 _UartWriteNumber:
      0001B3 C0 3E            [24]  849 	push	_bp
      0001B5 85 81 3E         [24]  850 	mov	_bp,sp
      0001B8 AF 82            [24]  851 	mov	r7,dpl
                                    852 ;	uart.h:104: if(format==HEX)
      0001BA E5 3E            [12]  853 	mov	a,_bp
      0001BC 24 FD            [12]  854 	add	a,#0xfd
      0001BE F8               [12]  855 	mov	r0,a
      0001BF E6               [12]  856 	mov	a,@r0
                                    857 ;	uart.h:106: msd = num/16;
      0001C0 70 32            [24]  858 	jnz	00104$
      0001C2 8F 05            [24]  859 	mov	ar5,r7
      0001C4 FE               [12]  860 	mov	r6,a
      0001C5 75 3F 10         [24]  861 	mov	__divsint_PARM_2,#0x10
                                    862 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001C8 8E 40            [24]  863 	mov	(__divsint_PARM_2 + 1),r6
      0001CA 8D 82            [24]  864 	mov	dpl,r5
      0001CC 8E 83            [24]  865 	mov	dph,r6
      0001CE C0 06            [24]  866 	push	ar6
      0001D0 C0 05            [24]  867 	push	ar5
      0001D2 12 1B BF         [24]  868 	lcall	__divsint
      0001D5 AB 82            [24]  869 	mov	r3,dpl
      0001D7 D0 05            [24]  870 	pop	ar5
      0001D9 D0 06            [24]  871 	pop	ar6
                                    872 ;	uart.h:107: lsd = num%16;
      0001DB 53 05 0F         [24]  873 	anl	ar5,#0x0f
                                    874 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001DE 8B 82            [24]  875 	mov	dpl,r3
      0001E0 C0 05            [24]  876 	push	ar5
      0001E2 12 00 BA         [24]  877 	lcall	_dec2hexNibble
      0001E5 12 00 FB         [24]  878 	lcall	_UartWrite
      0001E8 D0 05            [24]  879 	pop	ar5
                                    880 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001EA 8D 82            [24]  881 	mov	dpl,r5
      0001EC 12 00 BA         [24]  882 	lcall	_dec2hexNibble
      0001EF 12 00 FB         [24]  883 	lcall	_UartWrite
      0001F2 80 7B            [24]  884 	sjmp	00106$
      0001F4                        885 00104$:
                                    886 ;	uart.h:112: else if(format==DEC)
      0001F4 E5 3E            [12]  887 	mov	a,_bp
      0001F6 24 FD            [12]  888 	add	a,#0xfd
      0001F8 F8               [12]  889 	mov	r0,a
      0001F9 B6 01 73         [24]  890 	cjne	@r0,#0x01,00106$
                                    891 ;	uart.h:114: msd = num/100; // 100s place
      0001FC 7E 00            [12]  892 	mov	r6,#0x00
      0001FE 75 3F 64         [24]  893 	mov	__divsint_PARM_2,#0x64
                                    894 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000201 8E 40            [24]  895 	mov	(__divsint_PARM_2 + 1),r6
      000203 8F 82            [24]  896 	mov	dpl,r7
      000205 8E 83            [24]  897 	mov	dph,r6
      000207 C0 07            [24]  898 	push	ar7
      000209 C0 06            [24]  899 	push	ar6
      00020B 12 1B BF         [24]  900 	lcall	__divsint
      00020E AC 82            [24]  901 	mov	r4,dpl
      000210 D0 06            [24]  902 	pop	ar6
      000212 D0 07            [24]  903 	pop	ar7
                                    904 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000214 75 3F 64         [24]  905 	mov	__modsint_PARM_2,#0x64
      000217 75 40 00         [24]  906 	mov	(__modsint_PARM_2 + 1),#0x00
      00021A 8F 82            [24]  907 	mov	dpl,r7
      00021C 8E 83            [24]  908 	mov	dph,r6
      00021E C0 07            [24]  909 	push	ar7
      000220 C0 06            [24]  910 	push	ar6
      000222 C0 04            [24]  911 	push	ar4
      000224 12 1B 89         [24]  912 	lcall	__modsint
      000227 75 3F 0A         [24]  913 	mov	__divsint_PARM_2,#0x0a
      00022A 75 40 00         [24]  914 	mov	(__divsint_PARM_2 + 1),#0x00
      00022D 12 1B BF         [24]  915 	lcall	__divsint
      000230 AB 82            [24]  916 	mov	r3,dpl
      000232 D0 04            [24]  917 	pop	ar4
      000234 D0 06            [24]  918 	pop	ar6
      000236 D0 07            [24]  919 	pop	ar7
                                    920 ;	uart.h:116: lsd = num%10;
      000238 75 3F 0A         [24]  921 	mov	__modsint_PARM_2,#0x0a
      00023B 75 40 00         [24]  922 	mov	(__modsint_PARM_2 + 1),#0x00
      00023E 8F 82            [24]  923 	mov	dpl,r7
      000240 8E 83            [24]  924 	mov	dph,r6
      000242 C0 04            [24]  925 	push	ar4
      000244 C0 03            [24]  926 	push	ar3
      000246 12 1B 89         [24]  927 	lcall	__modsint
      000249 AE 82            [24]  928 	mov	r6,dpl
      00024B D0 03            [24]  929 	pop	ar3
      00024D D0 04            [24]  930 	pop	ar4
                                    931 ;	uart.h:118: UartWrite(msd + 0x30);
      00024F 74 30            [12]  932 	mov	a,#0x30
      000251 2C               [12]  933 	add	a,r4
      000252 F5 82            [12]  934 	mov	dpl,a
      000254 C0 06            [24]  935 	push	ar6
      000256 C0 03            [24]  936 	push	ar3
      000258 12 00 FB         [24]  937 	lcall	_UartWrite
      00025B D0 03            [24]  938 	pop	ar3
                                    939 ;	uart.h:119: UartWrite(extra + 0x30);
      00025D 74 30            [12]  940 	mov	a,#0x30
      00025F 2B               [12]  941 	add	a,r3
      000260 F5 82            [12]  942 	mov	dpl,a
      000262 12 00 FB         [24]  943 	lcall	_UartWrite
      000265 D0 06            [24]  944 	pop	ar6
                                    945 ;	uart.h:120: UartWrite(lsd + 0x30);
      000267 74 30            [12]  946 	mov	a,#0x30
      000269 2E               [12]  947 	add	a,r6
      00026A F5 82            [12]  948 	mov	dpl,a
      00026C 12 00 FB         [24]  949 	lcall	_UartWrite
      00026F                        950 00106$:
                                    951 ;	uart.h:123: }
      00026F D0 3E            [24]  952 	pop	_bp
      000271 22               [24]  953 	ret
                                    954 ;------------------------------------------------------------
                                    955 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    956 ;------------------------------------------------------------
                                    957 ;length                    Allocated to stack - _bp -3
                                    958 ;format                    Allocated to stack - _bp -4
                                    959 ;delimiter                 Allocated to stack - _bp -5
                                    960 ;p                         Allocated to registers 
                                    961 ;i                         Allocated to registers r4 
                                    962 ;------------------------------------------------------------
                                    963 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    964 ;	-----------------------------------------
                                    965 ;	 function UartWriteNumbers
                                    966 ;	-----------------------------------------
      000272                        967 _UartWriteNumbers:
      000272 C0 3E            [24]  968 	push	_bp
      000274 85 81 3E         [24]  969 	mov	_bp,sp
      000277 AD 82            [24]  970 	mov	r5,dpl
      000279 AE 83            [24]  971 	mov	r6,dph
      00027B AF F0            [24]  972 	mov	r7,b
                                    973 ;	uart.h:129: for(i=0;i<length;i++,p++)
      00027D 7C 00            [12]  974 	mov	r4,#0x00
      00027F                        975 00103$:
      00027F E5 3E            [12]  976 	mov	a,_bp
      000281 24 FD            [12]  977 	add	a,#0xfd
      000283 F8               [12]  978 	mov	r0,a
      000284 C3               [12]  979 	clr	c
      000285 EC               [12]  980 	mov	a,r4
      000286 96               [12]  981 	subb	a,@r0
      000287 50 3B            [24]  982 	jnc	00105$
                                    983 ;	uart.h:131: UartWriteNumber(*p,format);
      000289 8D 82            [24]  984 	mov	dpl,r5
      00028B 8E 83            [24]  985 	mov	dph,r6
      00028D 8F F0            [24]  986 	mov	b,r7
      00028F 12 1B 6D         [24]  987 	lcall	__gptrget
      000292 FB               [12]  988 	mov	r3,a
      000293 A3               [24]  989 	inc	dptr
      000294 AD 82            [24]  990 	mov	r5,dpl
      000296 AE 83            [24]  991 	mov	r6,dph
      000298 C0 07            [24]  992 	push	ar7
      00029A C0 06            [24]  993 	push	ar6
      00029C C0 05            [24]  994 	push	ar5
      00029E C0 04            [24]  995 	push	ar4
      0002A0 E5 3E            [12]  996 	mov	a,_bp
      0002A2 24 FC            [12]  997 	add	a,#0xfc
      0002A4 F8               [12]  998 	mov	r0,a
      0002A5 E6               [12]  999 	mov	a,@r0
      0002A6 C0 E0            [24] 1000 	push	acc
      0002A8 8B 82            [24] 1001 	mov	dpl,r3
      0002AA 12 01 B3         [24] 1002 	lcall	_UartWriteNumber
      0002AD 15 81            [12] 1003 	dec	sp
                                   1004 ;	uart.h:132: UartWrite(delimiter);
      0002AF E5 3E            [12] 1005 	mov	a,_bp
      0002B1 24 FB            [12] 1006 	add	a,#0xfb
      0002B3 F8               [12] 1007 	mov	r0,a
      0002B4 86 82            [24] 1008 	mov	dpl,@r0
      0002B6 12 00 FB         [24] 1009 	lcall	_UartWrite
      0002B9 D0 04            [24] 1010 	pop	ar4
      0002BB D0 05            [24] 1011 	pop	ar5
      0002BD D0 06            [24] 1012 	pop	ar6
      0002BF D0 07            [24] 1013 	pop	ar7
                                   1014 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002C1 0C               [12] 1015 	inc	r4
      0002C2 80 BB            [24] 1016 	sjmp	00103$
      0002C4                       1017 00105$:
                                   1018 ;	uart.h:134: }
      0002C4 D0 3E            [24] 1019 	pop	_bp
      0002C6 22               [24] 1020 	ret
                                   1021 ;------------------------------------------------------------
                                   1022 ;Allocation info for local variables in function 'UartPrintNumber'
                                   1023 ;------------------------------------------------------------
                                   1024 ;n                         Allocated to stack - _bp +1
                                   1025 ;digit                     Allocated to registers r2 r5 r6 r7 
                                   1026 ;i                         Allocated to registers r3 
                                   1027 ;j                         Allocated to registers r4 
                                   1028 ;sloc0                     Allocated to stack - _bp +5
                                   1029 ;------------------------------------------------------------
                                   1030 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                   1031 ;	-----------------------------------------
                                   1032 ;	 function UartPrintNumber
                                   1033 ;	-----------------------------------------
      0002C7                       1034 _UartPrintNumber:
      0002C7 C0 3E            [24] 1035 	push	_bp
      0002C9 85 81 3E         [24] 1036 	mov	_bp,sp
      0002CC C0 82            [24] 1037 	push	dpl
      0002CE C0 83            [24] 1038 	push	dph
      0002D0 C0 F0            [24] 1039 	push	b
      0002D2 C0 E0            [24] 1040 	push	acc
      0002D4 E5 81            [12] 1041 	mov	a,sp
      0002D6 24 04            [12] 1042 	add	a,#0x04
      0002D8 F5 81            [12] 1043 	mov	sp,a
                                   1044 ;	uart.h:154: for(i=8;i>0;i--)
      0002DA 7B 08            [12] 1045 	mov	r3,#0x08
      0002DC                       1046 00106$:
                                   1047 ;	uart.h:156: digit=n;
      0002DC A8 3E            [24] 1048 	mov	r0,_bp
      0002DE 08               [12] 1049 	inc	r0
      0002DF 86 02            [24] 1050 	mov	ar2,@r0
      0002E1 08               [12] 1051 	inc	r0
      0002E2 86 05            [24] 1052 	mov	ar5,@r0
      0002E4 08               [12] 1053 	inc	r0
      0002E5 86 06            [24] 1054 	mov	ar6,@r0
      0002E7 08               [12] 1055 	inc	r0
      0002E8 86 07            [24] 1056 	mov	ar7,@r0
                                   1057 ;	uart.h:157: for(j=1;j<i;j++) digit/=10;
      0002EA 7C 01            [12] 1058 	mov	r4,#0x01
      0002EC                       1059 00104$:
      0002EC C3               [12] 1060 	clr	c
      0002ED EC               [12] 1061 	mov	a,r4
      0002EE 9B               [12] 1062 	subb	a,r3
      0002EF 50 43            [24] 1063 	jnc	00101$
      0002F1 C0 03            [24] 1064 	push	ar3
      0002F3 75 3F 0A         [24] 1065 	mov	__divulong_PARM_2,#0x0a
      0002F6 E4               [12] 1066 	clr	a
      0002F7 F5 40            [12] 1067 	mov	(__divulong_PARM_2 + 1),a
      0002F9 F5 41            [12] 1068 	mov	(__divulong_PARM_2 + 2),a
      0002FB F5 42            [12] 1069 	mov	(__divulong_PARM_2 + 3),a
      0002FD 8A 82            [24] 1070 	mov	dpl,r2
      0002FF 8D 83            [24] 1071 	mov	dph,r5
      000301 8E F0            [24] 1072 	mov	b,r6
      000303 EF               [12] 1073 	mov	a,r7
      000304 C0 04            [24] 1074 	push	ar4
      000306 C0 03            [24] 1075 	push	ar3
      000308 12 1A 15         [24] 1076 	lcall	__divulong
      00030B C8               [12] 1077 	xch	a,r0
      00030C E5 3E            [12] 1078 	mov	a,_bp
      00030E 24 05            [12] 1079 	add	a,#0x05
      000310 C8               [12] 1080 	xch	a,r0
      000311 A6 82            [24] 1081 	mov	@r0,dpl
      000313 08               [12] 1082 	inc	r0
      000314 A6 83            [24] 1083 	mov	@r0,dph
      000316 08               [12] 1084 	inc	r0
      000317 A6 F0            [24] 1085 	mov	@r0,b
      000319 08               [12] 1086 	inc	r0
      00031A F6               [12] 1087 	mov	@r0,a
      00031B D0 03            [24] 1088 	pop	ar3
      00031D D0 04            [24] 1089 	pop	ar4
      00031F E5 3E            [12] 1090 	mov	a,_bp
      000321 24 05            [12] 1091 	add	a,#0x05
      000323 F8               [12] 1092 	mov	r0,a
      000324 86 02            [24] 1093 	mov	ar2,@r0
      000326 08               [12] 1094 	inc	r0
      000327 86 05            [24] 1095 	mov	ar5,@r0
      000329 08               [12] 1096 	inc	r0
      00032A 86 06            [24] 1097 	mov	ar6,@r0
      00032C 08               [12] 1098 	inc	r0
      00032D 86 07            [24] 1099 	mov	ar7,@r0
      00032F 0C               [12] 1100 	inc	r4
      000330 D0 03            [24] 1101 	pop	ar3
      000332 80 B8            [24] 1102 	sjmp	00104$
      000334                       1103 00101$:
                                   1104 ;	uart.h:158: UartWrite(0x30 + digit%10);
      000334 75 3F 0A         [24] 1105 	mov	__modulong_PARM_2,#0x0a
      000337 E4               [12] 1106 	clr	a
      000338 F5 40            [12] 1107 	mov	(__modulong_PARM_2 + 1),a
      00033A F5 41            [12] 1108 	mov	(__modulong_PARM_2 + 2),a
      00033C F5 42            [12] 1109 	mov	(__modulong_PARM_2 + 3),a
      00033E 8A 82            [24] 1110 	mov	dpl,r2
      000340 8D 83            [24] 1111 	mov	dph,r5
      000342 8E F0            [24] 1112 	mov	b,r6
      000344 EF               [12] 1113 	mov	a,r7
      000345 C0 03            [24] 1114 	push	ar3
      000347 12 19 92         [24] 1115 	lcall	__modulong
      00034A AC 82            [24] 1116 	mov	r4,dpl
      00034C 74 30            [12] 1117 	mov	a,#0x30
      00034E 2C               [12] 1118 	add	a,r4
      00034F F5 82            [12] 1119 	mov	dpl,a
      000351 12 00 FB         [24] 1120 	lcall	_UartWrite
      000354 D0 03            [24] 1121 	pop	ar3
                                   1122 ;	uart.h:154: for(i=8;i>0;i--)
      000356 DB 84            [24] 1123 	djnz	r3,00106$
                                   1124 ;	uart.h:160: }
      000358 85 3E 81         [24] 1125 	mov	sp,_bp
      00035B D0 3E            [24] 1126 	pop	_bp
      00035D 22               [24] 1127 	ret
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function 'UartScanByte'
                                   1130 ;------------------------------------------------------------
                                   1131 ;unibble                   Allocated to registers r7 
                                   1132 ;lnibble                   Allocated to registers r6 
                                   1133 ;------------------------------------------------------------
                                   1134 ;	uart.h:163: uint8_t UartScanByte() __reentrant
                                   1135 ;	-----------------------------------------
                                   1136 ;	 function UartScanByte
                                   1137 ;	-----------------------------------------
      00035E                       1138 _UartScanByte:
                                   1139 ;	uart.h:167: while(UartReadReady()) UartRead(); //flush
      00035E                       1140 00101$:
      00035E 12 00 E7         [24] 1141 	lcall	_UartReadReady
      000361 E5 82            [12] 1142 	mov	a,dpl
      000363 60 05            [24] 1143 	jz	00103$
      000365 12 00 F2         [24] 1144 	lcall	_UartRead
      000368 80 F4            [24] 1145 	sjmp	00101$
      00036A                       1146 00103$:
                                   1147 ;	uart.h:168: UartPrint("Number in Hex - eg(FE for 254): ");
      00036A 90 1B FB         [24] 1148 	mov	dptr,#___str_0
      00036D 75 F0 80         [24] 1149 	mov	b,#0x80
      000370 12 01 81         [24] 1150 	lcall	_UartPrint
                                   1151 ;	uart.h:170: unibble = UartRead();
      000373 12 00 F2         [24] 1152 	lcall	_UartRead
                                   1153 ;	uart.h:171: UartWrite(unibble);
      000376 AF 82            [24] 1154 	mov  r7,dpl
      000378 C0 07            [24] 1155 	push	ar7
      00037A 12 00 FB         [24] 1156 	lcall	_UartWrite
                                   1157 ;	uart.h:172: lnibble = UartRead();
      00037D 12 00 F2         [24] 1158 	lcall	_UartRead
                                   1159 ;	uart.h:173: UartWrite(lnibble);
      000380 AE 82            [24] 1160 	mov  r6,dpl
      000382 C0 06            [24] 1161 	push	ar6
      000384 12 00 FB         [24] 1162 	lcall	_UartWrite
                                   1163 ;	uart.h:175: UartWrite('\n');
      000387 75 82 0A         [24] 1164 	mov	dpl,#0x0a
      00038A 12 00 FB         [24] 1165 	lcall	_UartWrite
      00038D D0 06            [24] 1166 	pop	ar6
      00038F D0 07            [24] 1167 	pop	ar7
                                   1168 ;	uart.h:177: return hex2dec(unibble,lnibble);
      000391 8E 08            [24] 1169 	mov	_hex2dec_PARM_2,r6
      000393 8F 82            [24] 1170 	mov	dpl,r7
                                   1171 ;	uart.h:178: }
      000395 02 00 A0         [24] 1172 	ljmp	_hex2dec
                                   1173 ;------------------------------------------------------------
                                   1174 ;Allocation info for local variables in function 'UartScanLine'
                                   1175 ;------------------------------------------------------------
                                   1176 ;maxLength                 Allocated to stack - _bp -3
                                   1177 ;dst                       Allocated to stack - _bp +1
                                   1178 ;recv                      Allocated to registers r2 
                                   1179 ;count                     Allocated to registers r4 
                                   1180 ;------------------------------------------------------------
                                   1181 ;	uart.h:180: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1182 ;	-----------------------------------------
                                   1183 ;	 function UartScanLine
                                   1184 ;	-----------------------------------------
      000398                       1185 _UartScanLine:
      000398 C0 3E            [24] 1186 	push	_bp
      00039A 85 81 3E         [24] 1187 	mov	_bp,sp
      00039D C0 82            [24] 1188 	push	dpl
      00039F C0 83            [24] 1189 	push	dph
      0003A1 C0 F0            [24] 1190 	push	b
                                   1191 ;	uart.h:182: uint8_t recv,count=0;
      0003A3 7C 00            [12] 1192 	mov	r4,#0x00
                                   1193 ;	uart.h:184: while(UartReadReady()) UartRead(); //flush
      0003A5                       1194 00101$:
      0003A5 C0 04            [24] 1195 	push	ar4
      0003A7 12 00 E7         [24] 1196 	lcall	_UartReadReady
      0003AA E5 82            [12] 1197 	mov	a,dpl
      0003AC D0 04            [24] 1198 	pop	ar4
      0003AE 60 09            [24] 1199 	jz	00118$
      0003B0 C0 04            [24] 1200 	push	ar4
      0003B2 12 00 F2         [24] 1201 	lcall	_UartRead
      0003B5 D0 04            [24] 1202 	pop	ar4
                                   1203 ;	uart.h:186: while(1)
      0003B7 80 EC            [24] 1204 	sjmp	00101$
      0003B9                       1205 00118$:
      0003B9 7B 00            [12] 1206 	mov	r3,#0x00
      0003BB                       1207 00110$:
                                   1208 ;	uart.h:189: recv=UartRead();
      0003BB C0 04            [24] 1209 	push	ar4
      0003BD C0 03            [24] 1210 	push	ar3
      0003BF 12 00 F2         [24] 1211 	lcall	_UartRead
                                   1212 ;	uart.h:190: UartWrite(recv);
      0003C2 AA 82            [24] 1213 	mov  r2,dpl
      0003C4 C0 02            [24] 1214 	push	ar2
      0003C6 12 00 FB         [24] 1215 	lcall	_UartWrite
      0003C9 D0 02            [24] 1216 	pop	ar2
      0003CB D0 03            [24] 1217 	pop	ar3
      0003CD D0 04            [24] 1218 	pop	ar4
                                   1219 ;	uart.h:191: if(recv == '\n') 
      0003CF BA 0A 19         [24] 1220 	cjne	r2,#0x0a,00105$
                                   1221 ;	uart.h:193: *(dst+count)=0; //add string terminate
      0003D2 A8 3E            [24] 1222 	mov	r0,_bp
      0003D4 08               [12] 1223 	inc	r0
      0003D5 EC               [12] 1224 	mov	a,r4
      0003D6 26               [12] 1225 	add	a,@r0
      0003D7 FD               [12] 1226 	mov	r5,a
      0003D8 E4               [12] 1227 	clr	a
      0003D9 08               [12] 1228 	inc	r0
      0003DA 36               [12] 1229 	addc	a,@r0
      0003DB FE               [12] 1230 	mov	r6,a
      0003DC 08               [12] 1231 	inc	r0
      0003DD 86 07            [24] 1232 	mov	ar7,@r0
      0003DF 8D 82            [24] 1233 	mov	dpl,r5
      0003E1 8E 83            [24] 1234 	mov	dph,r6
      0003E3 8F F0            [24] 1235 	mov	b,r7
      0003E5 E4               [12] 1236 	clr	a
      0003E6 12 1A 7A         [24] 1237 	lcall	__gptrput
                                   1238 ;	uart.h:194: break;
      0003E9 80 31            [24] 1239 	sjmp	00111$
      0003EB                       1240 00105$:
                                   1241 ;	uart.h:196: else *(dst+count)=recv;
      0003EB A8 3E            [24] 1242 	mov	r0,_bp
      0003ED 08               [12] 1243 	inc	r0
      0003EE EB               [12] 1244 	mov	a,r3
      0003EF 26               [12] 1245 	add	a,@r0
      0003F0 FD               [12] 1246 	mov	r5,a
      0003F1 E4               [12] 1247 	clr	a
      0003F2 08               [12] 1248 	inc	r0
      0003F3 36               [12] 1249 	addc	a,@r0
      0003F4 FE               [12] 1250 	mov	r6,a
      0003F5 08               [12] 1251 	inc	r0
      0003F6 86 07            [24] 1252 	mov	ar7,@r0
      0003F8 8D 82            [24] 1253 	mov	dpl,r5
      0003FA 8E 83            [24] 1254 	mov	dph,r6
      0003FC 8F F0            [24] 1255 	mov	b,r7
      0003FE EA               [12] 1256 	mov	a,r2
      0003FF 12 1A 7A         [24] 1257 	lcall	__gptrput
                                   1258 ;	uart.h:198: if(count==maxLength) 
      000402 E5 3E            [12] 1259 	mov	a,_bp
      000404 24 FD            [12] 1260 	add	a,#0xfd
      000406 F8               [12] 1261 	mov	r0,a
      000407 E6               [12] 1262 	mov	a,@r0
      000408 B5 03 0C         [24] 1263 	cjne	a,ar3,00108$
                                   1264 ;	uart.h:200: *(dst+count)=0; // terminate string.
      00040B 8D 82            [24] 1265 	mov	dpl,r5
      00040D 8E 83            [24] 1266 	mov	dph,r6
      00040F 8F F0            [24] 1267 	mov	b,r7
      000411 E4               [12] 1268 	clr	a
      000412 12 1A 7A         [24] 1269 	lcall	__gptrput
                                   1270 ;	uart.h:201: break;
      000415 80 05            [24] 1271 	sjmp	00111$
      000417                       1272 00108$:
                                   1273 ;	uart.h:204: count++;
      000417 0B               [12] 1274 	inc	r3
      000418 8B 04            [24] 1275 	mov	ar4,r3
      00041A 80 9F            [24] 1276 	sjmp	00110$
      00041C                       1277 00111$:
                                   1278 ;	uart.h:208: return count;
      00041C 8C 82            [24] 1279 	mov	dpl,r4
                                   1280 ;	uart.h:210: }
      00041E 85 3E 81         [24] 1281 	mov	sp,_bp
      000421 D0 3E            [24] 1282 	pop	_bp
      000423 22               [24] 1283 	ret
                                   1284 ;------------------------------------------------------------
                                   1285 ;Allocation info for local variables in function 'spi_delay'
                                   1286 ;------------------------------------------------------------
                                   1287 ;ms                        Allocated to registers r6 r7 
                                   1288 ;j                         Allocated to registers r4 r5 
                                   1289 ;i                         Allocated to registers r2 r3 
                                   1290 ;------------------------------------------------------------
                                   1291 ;	spi.h:1: void spi_delay(unsigned int ms)
                                   1292 ;	-----------------------------------------
                                   1293 ;	 function spi_delay
                                   1294 ;	-----------------------------------------
      000424                       1295 _spi_delay:
      000424 AE 82            [24] 1296 	mov	r6,dpl
      000426 AF 83            [24] 1297 	mov	r7,dph
                                   1298 ;	spi.h:3: unsigned int j=0,i=0;
      000428 7C 00            [12] 1299 	mov	r4,#0x00
      00042A 7D 00            [12] 1300 	mov	r5,#0x00
                                   1301 ;	spi.h:4: for( i=0;i<ms;i++)
      00042C 7A 00            [12] 1302 	mov	r2,#0x00
      00042E 7B 00            [12] 1303 	mov	r3,#0x00
      000430                       1304 00107$:
      000430 C3               [12] 1305 	clr	c
      000431 EA               [12] 1306 	mov	a,r2
      000432 9E               [12] 1307 	subb	a,r6
      000433 EB               [12] 1308 	mov	a,r3
      000434 9F               [12] 1309 	subb	a,r7
      000435 50 1F            [24] 1310 	jnc	00109$
      000437 8C 00            [24] 1311 	mov	ar0,r4
      000439 8D 01            [24] 1312 	mov	ar1,r5
      00043B                       1313 00104$:
                                   1314 ;	spi.h:6: for(;j<120;j++);
      00043B C3               [12] 1315 	clr	c
      00043C E8               [12] 1316 	mov	a,r0
      00043D 94 78            [12] 1317 	subb	a,#0x78
      00043F E9               [12] 1318 	mov	a,r1
      000440 94 00            [12] 1319 	subb	a,#0x00
      000442 50 07            [24] 1320 	jnc	00114$
      000444 08               [12] 1321 	inc	r0
      000445 B8 00 F3         [24] 1322 	cjne	r0,#0x00,00104$
      000448 09               [12] 1323 	inc	r1
      000449 80 F0            [24] 1324 	sjmp	00104$
      00044B                       1325 00114$:
      00044B 88 04            [24] 1326 	mov	ar4,r0
      00044D 89 05            [24] 1327 	mov	ar5,r1
                                   1328 ;	spi.h:4: for( i=0;i<ms;i++)
      00044F 0A               [12] 1329 	inc	r2
      000450 BA 00 DD         [24] 1330 	cjne	r2,#0x00,00107$
      000453 0B               [12] 1331 	inc	r3
      000454 80 DA            [24] 1332 	sjmp	00107$
      000456                       1333 00109$:
                                   1334 ;	spi.h:8: }
      000456 22               [24] 1335 	ret
                                   1336 ;------------------------------------------------------------
                                   1337 ;Allocation info for local variables in function 'spi_init'
                                   1338 ;------------------------------------------------------------
                                   1339 ;	spi.h:32: void spi_init()
                                   1340 ;	-----------------------------------------
                                   1341 ;	 function spi_init
                                   1342 ;	-----------------------------------------
      000457                       1343 _spi_init:
                                   1344 ;	spi.h:35: spi_miso_high(); //make MISO input
      000457 43 90 04         [24] 1345 	orl	_P1,#0x04
                                   1346 ;	spi.h:36: spi_mosi_high(); //recommended in sd card tutorial
      00045A 43 90 02         [24] 1347 	orl	_P1,#0x02
                                   1348 ;	spi.h:37: spi_cs_high(); //deselect
      00045D 43 90 08         [24] 1349 	orl	_P1,#0x08
                                   1350 ;	spi.h:38: spi_clk_low(); //mode 0, idle clk is low
      000460 53 90 FE         [24] 1351 	anl	_P1,#0xfe
                                   1352 ;	spi.h:39: }
      000463 22               [24] 1353 	ret
                                   1354 ;------------------------------------------------------------
                                   1355 ;Allocation info for local variables in function 'spi_transfer'
                                   1356 ;------------------------------------------------------------
                                   1357 ;handle_cs                 Allocated with name '_spi_transfer_PARM_2'
                                   1358 ;tx                        Allocated to registers r7 
                                   1359 ;rx                        Allocated to registers r6 
                                   1360 ;i                         Allocated to registers r5 
                                   1361 ;------------------------------------------------------------
                                   1362 ;	spi.h:41: uint8_t spi_transfer(uint8_t tx,uint8_t handle_cs)
                                   1363 ;	-----------------------------------------
                                   1364 ;	 function spi_transfer
                                   1365 ;	-----------------------------------------
      000464                       1366 _spi_transfer:
      000464 AF 82            [24] 1367 	mov	r7,dpl
                                   1368 ;	spi.h:44: rx=0; //clear the rx - sdcc compiler throws warning otherwise
      000466 7E 00            [12] 1369 	mov	r6,#0x00
                                   1370 ;	spi.h:47: spi_clk_low();
      000468 53 90 FE         [24] 1371 	anl	_P1,#0xfe
                                   1372 ;	spi.h:50: if(handle_cs)
      00046B E5 3F            [12] 1373 	mov	a,_spi_transfer_PARM_2
      00046D 60 03            [24] 1374 	jz	00139$
                                   1375 ;	spi.h:51: spi_cs_low();
      00046F 53 90 F7         [24] 1376 	anl	_P1,#0xf7
                                   1377 ;	spi.h:54: for(i=0;i<8;i++)
      000472                       1378 00139$:
      000472 7D 00            [12] 1379 	mov	r5,#0x00
      000474                       1380 00132$:
                                   1381 ;	spi.h:57: if(tx & 0x80) spi_mosi_high();
      000474 EF               [12] 1382 	mov	a,r7
      000475 30 E7 05         [24] 1383 	jnb	acc.7,00112$
      000478 43 90 02         [24] 1384 	orl	_P1,#0x02
                                   1385 ;	spi.h:58: else spi_mosi_low();
      00047B 80 03            [24] 1386 	sjmp	00117$
      00047D                       1387 00112$:
      00047D 53 90 FD         [24] 1388 	anl	_P1,#0xfd
      000480                       1389 00117$:
                                   1390 ;	spi.h:60: tx <<=1;
      000480 8F 04            [24] 1391 	mov	ar4,r7
      000482 EC               [12] 1392 	mov	a,r4
      000483 2C               [12] 1393 	add	a,r4
      000484 FF               [12] 1394 	mov	r7,a
                                   1395 ;	spi.h:65: rx <<=1;
      000485 8E 04            [24] 1396 	mov	ar4,r6
      000487 EC               [12] 1397 	mov	a,r4
      000488 2C               [12] 1398 	add	a,r4
      000489 FE               [12] 1399 	mov	r6,a
                                   1400 ;	spi.h:68: spi_clk_high();
      00048A 43 90 01         [24] 1401 	orl	_P1,#0x01
                                   1402 ;	spi.h:71: if(spi_read_miso()) rx |=1;
      00048D E5 90            [12] 1403 	mov	a,_P1
      00048F 30 E2 03         [24] 1404 	jnb	acc.2,00123$
      000492 43 06 01         [24] 1405 	orl	ar6,#0x01
                                   1406 ;	spi.h:76: spi_clk_low();
      000495                       1407 00123$:
      000495 53 90 FE         [24] 1408 	anl	_P1,#0xfe
                                   1409 ;	spi.h:54: for(i=0;i<8;i++)
      000498 0D               [12] 1410 	inc	r5
      000499 BD 08 00         [24] 1411 	cjne	r5,#0x08,00164$
      00049C                       1412 00164$:
      00049C 40 D6            [24] 1413 	jc	00132$
                                   1414 ;	spi.h:81: if(handle_cs)
      00049E E5 3F            [12] 1415 	mov	a,_spi_transfer_PARM_2
      0004A0 60 03            [24] 1416 	jz	00131$
                                   1417 ;	spi.h:82: spi_cs_high();
      0004A2 43 90 08         [24] 1418 	orl	_P1,#0x08
      0004A5                       1419 00131$:
                                   1420 ;	spi.h:84: return rx;
      0004A5 8E 82            [24] 1421 	mov	dpl,r6
                                   1422 ;	spi.h:85: }
      0004A7 22               [24] 1423 	ret
                                   1424 ;------------------------------------------------------------
                                   1425 ;Allocation info for local variables in function 'spi_transfer_all'
                                   1426 ;------------------------------------------------------------
                                   1427 ;len                       Allocated with name '_spi_transfer_all_PARM_2'
                                   1428 ;handle_cs                 Allocated with name '_spi_transfer_all_PARM_3'
                                   1429 ;buff                      Allocated to registers r5 r6 r7 
                                   1430 ;i                         Allocated to registers r4 
                                   1431 ;------------------------------------------------------------
                                   1432 ;	spi.h:89: void spi_transfer_all(uint8_t *buff, uint8_t len,uint8_t handle_cs)
                                   1433 ;	-----------------------------------------
                                   1434 ;	 function spi_transfer_all
                                   1435 ;	-----------------------------------------
      0004A8                       1436 _spi_transfer_all:
      0004A8 AD 82            [24] 1437 	mov	r5,dpl
      0004AA AE 83            [24] 1438 	mov	r6,dph
      0004AC AF F0            [24] 1439 	mov	r7,b
                                   1440 ;	spi.h:94: if(handle_cs)spi_cs_low();
      0004AE E5 0C            [12] 1441 	mov	a,_spi_transfer_all_PARM_3
      0004B0 60 03            [24] 1442 	jz	00119$
      0004B2 53 90 F7         [24] 1443 	anl	_P1,#0xf7
                                   1444 ;	spi.h:96: for(i=0;i<len;i++)
      0004B5                       1445 00119$:
      0004B5 7C 00            [12] 1446 	mov	r4,#0x00
      0004B7                       1447 00113$:
      0004B7 C3               [12] 1448 	clr	c
      0004B8 EC               [12] 1449 	mov	a,r4
      0004B9 95 0B            [12] 1450 	subb	a,_spi_transfer_all_PARM_2
      0004BB 50 2D            [24] 1451 	jnc	00106$
                                   1452 ;	spi.h:98: spi_transfer(buff[i],0);
      0004BD EC               [12] 1453 	mov	a,r4
      0004BE 2D               [12] 1454 	add	a,r5
      0004BF F9               [12] 1455 	mov	r1,a
      0004C0 E4               [12] 1456 	clr	a
      0004C1 3E               [12] 1457 	addc	a,r6
      0004C2 FA               [12] 1458 	mov	r2,a
      0004C3 8F 03            [24] 1459 	mov	ar3,r7
      0004C5 89 82            [24] 1460 	mov	dpl,r1
      0004C7 8A 83            [24] 1461 	mov	dph,r2
      0004C9 8B F0            [24] 1462 	mov	b,r3
      0004CB 12 1B 6D         [24] 1463 	lcall	__gptrget
      0004CE F9               [12] 1464 	mov	r1,a
      0004CF 75 3F 00         [24] 1465 	mov	_spi_transfer_PARM_2,#0x00
      0004D2 89 82            [24] 1466 	mov	dpl,r1
      0004D4 C0 07            [24] 1467 	push	ar7
      0004D6 C0 06            [24] 1468 	push	ar6
      0004D8 C0 05            [24] 1469 	push	ar5
      0004DA C0 04            [24] 1470 	push	ar4
      0004DC 12 04 64         [24] 1471 	lcall	_spi_transfer
      0004DF D0 04            [24] 1472 	pop	ar4
      0004E1 D0 05            [24] 1473 	pop	ar5
      0004E3 D0 06            [24] 1474 	pop	ar6
      0004E5 D0 07            [24] 1475 	pop	ar7
                                   1476 ;	spi.h:96: for(i=0;i<len;i++)
      0004E7 0C               [12] 1477 	inc	r4
      0004E8 80 CD            [24] 1478 	sjmp	00113$
      0004EA                       1479 00106$:
                                   1480 ;	spi.h:102: if(handle_cs)spi_cs_high();
      0004EA E5 0C            [12] 1481 	mov	a,_spi_transfer_all_PARM_3
      0004EC 60 03            [24] 1482 	jz	00115$
      0004EE 43 90 08         [24] 1483 	orl	_P1,#0x08
      0004F1                       1484 00115$:
                                   1485 ;	spi.h:104: }
      0004F1 22               [24] 1486 	ret
                                   1487 ;------------------------------------------------------------
                                   1488 ;Allocation info for local variables in function 'sd_isbusy'
                                   1489 ;------------------------------------------------------------
                                   1490 ;i                         Allocated to registers r7 
                                   1491 ;------------------------------------------------------------
                                   1492 ;	sdcard.h:26: uint8_t sd_isbusy()
                                   1493 ;	-----------------------------------------
                                   1494 ;	 function sd_isbusy
                                   1495 ;	-----------------------------------------
      0004F2                       1496 _sd_isbusy:
                                   1497 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      0004F2 7F 00            [12] 1498 	mov	r7,#0x00
      0004F4                       1499 00104$:
                                   1500 ;	sdcard.h:31: if(sd_spi_write(0xff)==0xff) return 0; //not busy
      0004F4 75 3F 00         [24] 1501 	mov	_spi_transfer_PARM_2,#0x00
      0004F7 75 82 FF         [24] 1502 	mov	dpl,#0xff
      0004FA C0 07            [24] 1503 	push	ar7
      0004FC 12 04 64         [24] 1504 	lcall	_spi_transfer
      0004FF AE 82            [24] 1505 	mov	r6,dpl
      000501 D0 07            [24] 1506 	pop	ar7
      000503 BE FF 04         [24] 1507 	cjne	r6,#0xff,00105$
      000506 75 82 00         [24] 1508 	mov	dpl,#0x00
      000509 22               [24] 1509 	ret
      00050A                       1510 00105$:
                                   1511 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      00050A 0F               [12] 1512 	inc	r7
      00050B BF FE 00         [24] 1513 	cjne	r7,#0xfe,00122$
      00050E                       1514 00122$:
      00050E 40 E4            [24] 1515 	jc	00104$
                                   1516 ;	sdcard.h:34: return 1; //busy
      000510 75 82 01         [24] 1517 	mov	dpl,#0x01
                                   1518 ;	sdcard.h:35: }
      000513 22               [24] 1519 	ret
                                   1520 ;------------------------------------------------------------
                                   1521 ;Allocation info for local variables in function 'sd_initial_clk'
                                   1522 ;------------------------------------------------------------
                                   1523 ;i                         Allocated to registers r7 
                                   1524 ;------------------------------------------------------------
                                   1525 ;	sdcard.h:37: void sd_initial_clk()
                                   1526 ;	-----------------------------------------
                                   1527 ;	 function sd_initial_clk
                                   1528 ;	-----------------------------------------
      000514                       1529 _sd_initial_clk:
                                   1530 ;	sdcard.h:45: spi_cs_high(); // required by spec but works fine even when cs pin of SDCARD is always pulled to ground to save uC pins
      000514 43 90 08         [24] 1531 	orl	_P1,#0x08
                                   1532 ;	sdcard.h:46: for(uint8_t i=0;i<10;i++)spi_transfer(0xff,0);
      000517 7F 00            [12] 1533 	mov	r7,#0x00
      000519                       1534 00106$:
      000519 BF 0A 00         [24] 1535 	cjne	r7,#0x0a,00119$
      00051C                       1536 00119$:
      00051C 50 10            [24] 1537 	jnc	00108$
      00051E 75 3F 00         [24] 1538 	mov	_spi_transfer_PARM_2,#0x00
      000521 75 82 FF         [24] 1539 	mov	dpl,#0xff
      000524 C0 07            [24] 1540 	push	ar7
      000526 12 04 64         [24] 1541 	lcall	_spi_transfer
      000529 D0 07            [24] 1542 	pop	ar7
      00052B 0F               [12] 1543 	inc	r7
      00052C 80 EB            [24] 1544 	sjmp	00106$
      00052E                       1545 00108$:
                                   1546 ;	sdcard.h:47: }
      00052E 22               [24] 1547 	ret
                                   1548 ;------------------------------------------------------------
                                   1549 ;Allocation info for local variables in function 'sd_cmd'
                                   1550 ;------------------------------------------------------------
                                   1551 ;arg                       Allocated with name '_sd_cmd_PARM_2'
                                   1552 ;cmd                       Allocated to registers r7 
                                   1553 ;_resp                     Allocated to registers r5 
                                   1554 ;retries                   Allocated to registers r6 
                                   1555 ;crc                       Allocated to registers r6 
                                   1556 ;i                         Allocated to registers r6 
                                   1557 ;i                         Allocated to registers r7 
                                   1558 ;------------------------------------------------------------
                                   1559 ;	sdcard.h:49: uint8_t sd_cmd(uint8_t cmd, uint32_t arg)
                                   1560 ;	-----------------------------------------
                                   1561 ;	 function sd_cmd
                                   1562 ;	-----------------------------------------
      00052F                       1563 _sd_cmd:
      00052F AF 82            [24] 1564 	mov	r7,dpl
                                   1565 ;	sdcard.h:51: uint8_t _resp=0,retries=0,crc=0xff;
      000531 7E FF            [12] 1566 	mov	r6,#0xff
                                   1567 ;	sdcard.h:53: spi_cs_low();
      000533 53 90 F7         [24] 1568 	anl	_P1,#0xf7
                                   1569 ;	sdcard.h:55: sd_isbusy(); //wait while sd is busy
      000536 C0 07            [24] 1570 	push	ar7
      000538 C0 06            [24] 1571 	push	ar6
      00053A 12 04 F2         [24] 1572 	lcall	_sd_isbusy
      00053D D0 06            [24] 1573 	pop	ar6
      00053F D0 07            [24] 1574 	pop	ar7
                                   1575 ;	sdcard.h:63: sd_spi_write(cmd | 0x40);
      000541 74 40            [12] 1576 	mov	a,#0x40
      000543 4F               [12] 1577 	orl	a,r7
      000544 F5 82            [12] 1578 	mov	dpl,a
      000546 75 3F 00         [24] 1579 	mov	_spi_transfer_PARM_2,#0x00
      000549 C0 07            [24] 1580 	push	ar7
      00054B C0 06            [24] 1581 	push	ar6
      00054D 12 04 64         [24] 1582 	lcall	_spi_transfer
      000550 D0 06            [24] 1583 	pop	ar6
      000552 D0 07            [24] 1584 	pop	ar7
                                   1585 ;	sdcard.h:65: sd_spi_write((arg >> 24) & 0xff);
      000554 85 10 82         [24] 1586 	mov	dpl,(_sd_cmd_PARM_2 + 3)
      000557 75 3F 00         [24] 1587 	mov	_spi_transfer_PARM_2,#0x00
      00055A C0 07            [24] 1588 	push	ar7
      00055C C0 06            [24] 1589 	push	ar6
      00055E 12 04 64         [24] 1590 	lcall	_spi_transfer
      000561 D0 06            [24] 1591 	pop	ar6
      000563 D0 07            [24] 1592 	pop	ar7
                                   1593 ;	sdcard.h:66: sd_spi_write((arg >> 16) & 0xff);
      000565 85 0F 82         [24] 1594 	mov	dpl,(_sd_cmd_PARM_2 + 2)
      000568 75 3F 00         [24] 1595 	mov	_spi_transfer_PARM_2,#0x00
      00056B C0 07            [24] 1596 	push	ar7
      00056D C0 06            [24] 1597 	push	ar6
      00056F 12 04 64         [24] 1598 	lcall	_spi_transfer
      000572 D0 06            [24] 1599 	pop	ar6
      000574 D0 07            [24] 1600 	pop	ar7
                                   1601 ;	sdcard.h:67: sd_spi_write((arg >> 8) & 0xff);
      000576 85 0E 82         [24] 1602 	mov	dpl,(_sd_cmd_PARM_2 + 1)
      000579 75 3F 00         [24] 1603 	mov	_spi_transfer_PARM_2,#0x00
      00057C C0 07            [24] 1604 	push	ar7
      00057E C0 06            [24] 1605 	push	ar6
      000580 12 04 64         [24] 1606 	lcall	_spi_transfer
      000583 D0 06            [24] 1607 	pop	ar6
      000585 D0 07            [24] 1608 	pop	ar7
                                   1609 ;	sdcard.h:68: sd_spi_write(arg & 0xff);
      000587 85 0D 82         [24] 1610 	mov	dpl,_sd_cmd_PARM_2
      00058A 75 3F 00         [24] 1611 	mov	_spi_transfer_PARM_2,#0x00
      00058D C0 07            [24] 1612 	push	ar7
      00058F C0 06            [24] 1613 	push	ar6
      000591 12 04 64         [24] 1614 	lcall	_spi_transfer
      000594 D0 06            [24] 1615 	pop	ar6
      000596 D0 07            [24] 1616 	pop	ar7
                                   1617 ;	sdcard.h:70: if(cmd==CMD0) 
      000598 EF               [12] 1618 	mov	a,r7
      000599 70 04            [24] 1619 	jnz	00107$
                                   1620 ;	sdcard.h:72: crc=0x95;
      00059B 7E 95            [12] 1621 	mov	r6,#0x95
      00059D 80 05            [24] 1622 	sjmp	00108$
      00059F                       1623 00107$:
                                   1624 ;	sdcard.h:74: else if(cmd==CMD8) 
      00059F BF 08 02         [24] 1625 	cjne	r7,#0x08,00108$
                                   1626 ;	sdcard.h:76: crc=0x87;
      0005A2 7E 87            [12] 1627 	mov	r6,#0x87
      0005A4                       1628 00108$:
                                   1629 ;	sdcard.h:78: sd_spi_write(crc);	
      0005A4 75 3F 00         [24] 1630 	mov	_spi_transfer_PARM_2,#0x00
      0005A7 8E 82            [24] 1631 	mov	dpl,r6
      0005A9 C0 07            [24] 1632 	push	ar7
      0005AB 12 04 64         [24] 1633 	lcall	_spi_transfer
      0005AE D0 07            [24] 1634 	pop	ar7
                                   1635 ;	sdcard.h:81: while(1) 
      0005B0 7E 00            [12] 1636 	mov	r6,#0x00
      0005B2                       1637 00115$:
                                   1638 ;	sdcard.h:83: _resp = sd_spi_write(0xff);
      0005B2 75 3F 00         [24] 1639 	mov	_spi_transfer_PARM_2,#0x00
      0005B5 75 82 FF         [24] 1640 	mov	dpl,#0xff
      0005B8 C0 07            [24] 1641 	push	ar7
      0005BA C0 06            [24] 1642 	push	ar6
      0005BC 12 04 64         [24] 1643 	lcall	_spi_transfer
      0005BF AD 82            [24] 1644 	mov	r5,dpl
      0005C1 D0 06            [24] 1645 	pop	ar6
      0005C3 D0 07            [24] 1646 	pop	ar7
                                   1647 ;	sdcard.h:85: if(_resp & 0x80);
      0005C5 ED               [12] 1648 	mov	a,r5
      0005C6 30 E7 0A         [24] 1649 	jnb	acc.7,00116$
                                   1650 ;	sdcard.h:88: if(retries++ == SD_MAX_RETRIES) 
      0005C9 8E 04            [24] 1651 	mov	ar4,r6
      0005CB 0E               [12] 1652 	inc	r6
      0005CC BC 19 E3         [24] 1653 	cjne	r4,#0x19,00115$
                                   1654 ;	sdcard.h:94: return SD_MAX_RETRIES_FAIL; // 0xff means failed
      0005CF 75 82 FE         [24] 1655 	mov	dpl,#0xfe
      0005D2 22               [24] 1656 	ret
      0005D3                       1657 00116$:
                                   1658 ;	sdcard.h:106: if(cmd==CMD8 || cmd==CMD58)
      0005D3 E4               [12] 1659 	clr	a
      0005D4 BF 08 01         [24] 1660 	cjne	r7,#0x08,00203$
      0005D7 04               [12] 1661 	inc	a
      0005D8                       1662 00203$:
      0005D8 FE               [12] 1663 	mov	r6,a
      0005D9 70 08            [24] 1664 	jnz	00128$
      0005DB BF 3A 02         [24] 1665 	cjne	r7,#0x3a,00206$
      0005DE 80 03            [24] 1666 	sjmp	00207$
      0005E0                       1667 00206$:
      0005E0 02 06 5C         [24] 1668 	ljmp	00129$
      0005E3                       1669 00207$:
      0005E3                       1670 00128$:
                                   1671 ;	sdcard.h:114: if(cmd==CMD8)
      0005E3 EE               [12] 1672 	mov	a,r6
      0005E4 60 33            [24] 1673 	jz	00126$
                                   1674 ;	sdcard.h:116: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      0005E6 7E 00            [12] 1675 	mov	r6,#0x00
      0005E8                       1676 00132$:
      0005E8 BE 03 00         [24] 1677 	cjne	r6,#0x03,00209$
      0005EB                       1678 00209$:
      0005EB 50 14            [24] 1679 	jnc	00117$
      0005ED 75 3F 00         [24] 1680 	mov	_spi_transfer_PARM_2,#0x00
      0005F0 75 82 FF         [24] 1681 	mov	dpl,#0xff
      0005F3 C0 06            [24] 1682 	push	ar6
      0005F5 C0 05            [24] 1683 	push	ar5
      0005F7 12 04 64         [24] 1684 	lcall	_spi_transfer
      0005FA D0 05            [24] 1685 	pop	ar5
      0005FC D0 06            [24] 1686 	pop	ar6
      0005FE 0E               [12] 1687 	inc	r6
      0005FF 80 E7            [24] 1688 	sjmp	00132$
      000601                       1689 00117$:
                                   1690 ;	sdcard.h:117: if(sd_spi_write(0xff)!=0xAA) return SD_CMD_FAIL;
      000601 75 3F 00         [24] 1691 	mov	_spi_transfer_PARM_2,#0x00
      000604 75 82 FF         [24] 1692 	mov	dpl,#0xff
      000607 C0 05            [24] 1693 	push	ar5
      000609 12 04 64         [24] 1694 	lcall	_spi_transfer
      00060C AE 82            [24] 1695 	mov	r6,dpl
      00060E D0 05            [24] 1696 	pop	ar5
      000610 BE AA 02         [24] 1697 	cjne	r6,#0xaa,00211$
      000613 80 3A            [24] 1698 	sjmp	00127$
      000615                       1699 00211$:
      000615 75 82 FF         [24] 1700 	mov	dpl,#0xff
      000618 22               [24] 1701 	ret
      000619                       1702 00126$:
                                   1703 ;	sdcard.h:119: else if(cmd==CMD58)
      000619 BF 3A 33         [24] 1704 	cjne	r7,#0x3a,00127$
                                   1705 ;	sdcard.h:121: if(sd_spi_write(0xff)!=0xC0) return SD_CMD_FAIL;
      00061C 75 3F 00         [24] 1706 	mov	_spi_transfer_PARM_2,#0x00
      00061F 75 82 FF         [24] 1707 	mov	dpl,#0xff
      000622 C0 05            [24] 1708 	push	ar5
      000624 12 04 64         [24] 1709 	lcall	_spi_transfer
      000627 AF 82            [24] 1710 	mov	r7,dpl
      000629 D0 05            [24] 1711 	pop	ar5
      00062B BF C0 02         [24] 1712 	cjne	r7,#0xc0,00214$
      00062E 80 04            [24] 1713 	sjmp	00152$
      000630                       1714 00214$:
      000630 75 82 FF         [24] 1715 	mov	dpl,#0xff
                                   1716 ;	sdcard.h:123: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000633 22               [24] 1717 	ret
      000634                       1718 00152$:
      000634 7F 00            [12] 1719 	mov	r7,#0x00
      000636                       1720 00135$:
      000636 BF 03 00         [24] 1721 	cjne	r7,#0x03,00215$
      000639                       1722 00215$:
      000639 50 14            [24] 1723 	jnc	00127$
      00063B 75 3F 00         [24] 1724 	mov	_spi_transfer_PARM_2,#0x00
      00063E 75 82 FF         [24] 1725 	mov	dpl,#0xff
      000641 C0 07            [24] 1726 	push	ar7
      000643 C0 05            [24] 1727 	push	ar5
      000645 12 04 64         [24] 1728 	lcall	_spi_transfer
      000648 D0 05            [24] 1729 	pop	ar5
      00064A D0 07            [24] 1730 	pop	ar7
      00064C 0F               [12] 1731 	inc	r7
      00064D 80 E7            [24] 1732 	sjmp	00135$
      00064F                       1733 00127$:
                                   1734 ;	sdcard.h:128: sd_spi_write(0xff);
      00064F 75 3F 00         [24] 1735 	mov	_spi_transfer_PARM_2,#0x00
      000652 75 82 FF         [24] 1736 	mov	dpl,#0xff
      000655 C0 05            [24] 1737 	push	ar5
      000657 12 04 64         [24] 1738 	lcall	_spi_transfer
      00065A D0 05            [24] 1739 	pop	ar5
      00065C                       1740 00129$:
                                   1741 ;	sdcard.h:136: return _resp;
      00065C 8D 82            [24] 1742 	mov	dpl,r5
                                   1743 ;	sdcard.h:138: }
      00065E 22               [24] 1744 	ret
                                   1745 ;------------------------------------------------------------
                                   1746 ;Allocation info for local variables in function 'sd_acmd'
                                   1747 ;------------------------------------------------------------
                                   1748 ;arg                       Allocated with name '_sd_acmd_PARM_2'
                                   1749 ;cmd                       Allocated to registers r7 
                                   1750 ;_resp                     Allocated to registers 
                                   1751 ;------------------------------------------------------------
                                   1752 ;	sdcard.h:140: uint8_t sd_acmd(uint8_t cmd, uint32_t arg)
                                   1753 ;	-----------------------------------------
                                   1754 ;	 function sd_acmd
                                   1755 ;	-----------------------------------------
      00065F                       1756 _sd_acmd:
      00065F AF 82            [24] 1757 	mov	r7,dpl
                                   1758 ;	sdcard.h:144: _resp=sd_cmd(CMD55,0);
      000661 E4               [12] 1759 	clr	a
      000662 F5 0D            [12] 1760 	mov	_sd_cmd_PARM_2,a
      000664 F5 0E            [12] 1761 	mov	(_sd_cmd_PARM_2 + 1),a
      000666 F5 0F            [12] 1762 	mov	(_sd_cmd_PARM_2 + 2),a
      000668 F5 10            [12] 1763 	mov	(_sd_cmd_PARM_2 + 3),a
      00066A 75 82 37         [24] 1764 	mov	dpl,#0x37
      00066D C0 07            [24] 1765 	push	ar7
      00066F 12 05 2F         [24] 1766 	lcall	_sd_cmd
      000672 AE 82            [24] 1767 	mov	r6,dpl
      000674 D0 07            [24] 1768 	pop	ar7
                                   1769 ;	sdcard.h:145: if(_resp!=1) return SD_CMD_FAIL;
      000676 BE 01 02         [24] 1770 	cjne	r6,#0x01,00110$
      000679 80 04            [24] 1771 	sjmp	00102$
      00067B                       1772 00110$:
      00067B 75 82 FF         [24] 1773 	mov	dpl,#0xff
      00067E 22               [24] 1774 	ret
      00067F                       1775 00102$:
                                   1776 ;	sdcard.h:148: _resp=sd_cmd(cmd,arg);
      00067F 85 11 0D         [24] 1777 	mov	_sd_cmd_PARM_2,_sd_acmd_PARM_2
      000682 85 12 0E         [24] 1778 	mov	(_sd_cmd_PARM_2 + 1),(_sd_acmd_PARM_2 + 1)
      000685 85 13 0F         [24] 1779 	mov	(_sd_cmd_PARM_2 + 2),(_sd_acmd_PARM_2 + 2)
      000688 85 14 10         [24] 1780 	mov	(_sd_cmd_PARM_2 + 3),(_sd_acmd_PARM_2 + 3)
      00068B 8F 82            [24] 1781 	mov	dpl,r7
                                   1782 ;	sdcard.h:149: return _resp;
                                   1783 ;	sdcard.h:151: }
      00068D 02 05 2F         [24] 1784 	ljmp	_sd_cmd
                                   1785 ;------------------------------------------------------------
                                   1786 ;Allocation info for local variables in function 'SDinit'
                                   1787 ;------------------------------------------------------------
                                   1788 ;retries                   Allocated to registers r7 
                                   1789 ;------------------------------------------------------------
                                   1790 ;	sdcard.h:161: uint8_t SDinit()
                                   1791 ;	-----------------------------------------
                                   1792 ;	 function SDinit
                                   1793 ;	-----------------------------------------
      000690                       1794 _SDinit:
                                   1795 ;	sdcard.h:165: sd_initial_clk(); // 74 minimum clks for initialization
      000690 12 05 14         [24] 1796 	lcall	_sd_initial_clk
                                   1797 ;	sdcard.h:167: while(1)
      000693 7F 00            [12] 1798 	mov	r7,#0x00
      000695                       1799 00107$:
                                   1800 ;	sdcard.h:169: if(sd_cmd(CMD0,0)==0x01)break; // correct response is 0x01 -> signals card is idling
      000695 E4               [12] 1801 	clr	a
      000696 F5 0D            [12] 1802 	mov	_sd_cmd_PARM_2,a
      000698 F5 0E            [12] 1803 	mov	(_sd_cmd_PARM_2 + 1),a
      00069A F5 0F            [12] 1804 	mov	(_sd_cmd_PARM_2 + 2),a
      00069C F5 10            [12] 1805 	mov	(_sd_cmd_PARM_2 + 3),a
      00069E 75 82 00         [24] 1806 	mov	dpl,#0x00
      0006A1 C0 07            [24] 1807 	push	ar7
      0006A3 12 05 2F         [24] 1808 	lcall	_sd_cmd
      0006A6 AE 82            [24] 1809 	mov	r6,dpl
      0006A8 D0 07            [24] 1810 	pop	ar7
      0006AA BE 01 02         [24] 1811 	cjne	r6,#0x01,00155$
      0006AD 80 0A            [24] 1812 	sjmp	00108$
      0006AF                       1813 00155$:
                                   1814 ;	sdcard.h:170: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      0006AF 8F 06            [24] 1815 	mov	ar6,r7
      0006B1 0F               [12] 1816 	inc	r7
      0006B2 BE 19 E0         [24] 1817 	cjne	r6,#0x19,00107$
      0006B5 75 82 FE         [24] 1818 	mov	dpl,#0xfe
      0006B8 22               [24] 1819 	ret
      0006B9                       1820 00108$:
                                   1821 ;	sdcard.h:174: if(sd_cmd(CMD8,0x1AA)!=0x01) return SD_CMD_FAIL; // correct response for cmd8 is 0x01
      0006B9 75 0D AA         [24] 1822 	mov	_sd_cmd_PARM_2,#0xaa
      0006BC 75 0E 01         [24] 1823 	mov	(_sd_cmd_PARM_2 + 1),#0x01
      0006BF E4               [12] 1824 	clr	a
      0006C0 F5 0F            [12] 1825 	mov	(_sd_cmd_PARM_2 + 2),a
      0006C2 F5 10            [12] 1826 	mov	(_sd_cmd_PARM_2 + 3),a
      0006C4 75 82 08         [24] 1827 	mov	dpl,#0x08
      0006C7 12 05 2F         [24] 1828 	lcall	_sd_cmd
      0006CA AF 82            [24] 1829 	mov	r7,dpl
      0006CC BF 01 02         [24] 1830 	cjne	r7,#0x01,00158$
      0006CF 80 04            [24] 1831 	sjmp	00128$
      0006D1                       1832 00158$:
      0006D1 75 82 FF         [24] 1833 	mov	dpl,#0xff
                                   1834 ;	sdcard.h:177: while(1)
      0006D4 22               [24] 1835 	ret
      0006D5                       1836 00128$:
      0006D5 7F 00            [12] 1837 	mov	r7,#0x00
      0006D7                       1838 00117$:
                                   1839 ;	sdcard.h:179: if(sd_acmd(CMD41,0x40000000)==0)break; //correct response
      0006D7 E4               [12] 1840 	clr	a
      0006D8 F5 11            [12] 1841 	mov	_sd_acmd_PARM_2,a
      0006DA F5 12            [12] 1842 	mov	(_sd_acmd_PARM_2 + 1),a
      0006DC F5 13            [12] 1843 	mov	(_sd_acmd_PARM_2 + 2),a
      0006DE 75 14 40         [24] 1844 	mov	(_sd_acmd_PARM_2 + 3),#0x40
      0006E1 75 82 29         [24] 1845 	mov	dpl,#0x29
      0006E4 C0 07            [24] 1846 	push	ar7
      0006E6 12 06 5F         [24] 1847 	lcall	_sd_acmd
      0006E9 E5 82            [12] 1848 	mov	a,dpl
      0006EB D0 07            [24] 1849 	pop	ar7
      0006ED 60 0A            [24] 1850 	jz	00118$
                                   1851 ;	sdcard.h:180: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      0006EF 8F 06            [24] 1852 	mov	ar6,r7
      0006F1 0F               [12] 1853 	inc	r7
      0006F2 BE 19 E2         [24] 1854 	cjne	r6,#0x19,00117$
      0006F5 75 82 FE         [24] 1855 	mov	dpl,#0xfe
      0006F8 22               [24] 1856 	ret
      0006F9                       1857 00118$:
                                   1858 ;	sdcard.h:186: if(sd_cmd(CMD58,0)) return SD_CMD_FAIL;  
      0006F9 E4               [12] 1859 	clr	a
      0006FA F5 0D            [12] 1860 	mov	_sd_cmd_PARM_2,a
      0006FC F5 0E            [12] 1861 	mov	(_sd_cmd_PARM_2 + 1),a
      0006FE F5 0F            [12] 1862 	mov	(_sd_cmd_PARM_2 + 2),a
      000700 F5 10            [12] 1863 	mov	(_sd_cmd_PARM_2 + 3),a
      000702 75 82 3A         [24] 1864 	mov	dpl,#0x3a
      000705 12 05 2F         [24] 1865 	lcall	_sd_cmd
      000708 E5 82            [12] 1866 	mov	a,dpl
      00070A 60 04            [24] 1867 	jz	00120$
      00070C 75 82 FF         [24] 1868 	mov	dpl,#0xff
      00070F 22               [24] 1869 	ret
      000710                       1870 00120$:
                                   1871 ;	sdcard.h:194: return 0; //successful init
      000710 75 82 00         [24] 1872 	mov	dpl,#0x00
                                   1873 ;	sdcard.h:195: }
      000713 22               [24] 1874 	ret
                                   1875 ;------------------------------------------------------------
                                   1876 ;Allocation info for local variables in function 'SDread'
                                   1877 ;------------------------------------------------------------
                                   1878 ;offset                    Allocated to stack - _bp -4
                                   1879 ;count                     Allocated to stack - _bp -6
                                   1880 ;dst                       Allocated to stack - _bp -9
                                   1881 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   1882 ;retries                   Allocated to registers r7 
                                   1883 ;response                  Allocated to registers r3 
                                   1884 ;i                         Allocated to registers r4 r5 
                                   1885 ;------------------------------------------------------------
                                   1886 ;	sdcard.h:210: uint8_t SDread(uint32_t block_addr, uint16_t offset, uint16_t count, uint8_t* dst ) __reentrant
                                   1887 ;	-----------------------------------------
                                   1888 ;	 function SDread
                                   1889 ;	-----------------------------------------
      000714                       1890 _SDread:
      000714 C0 3E            [24] 1891 	push	_bp
      000716 85 81 3E         [24] 1892 	mov	_bp,sp
      000719 AC 82            [24] 1893 	mov	r4,dpl
      00071B AD 83            [24] 1894 	mov	r5,dph
      00071D AE F0            [24] 1895 	mov	r6,b
      00071F FF               [12] 1896 	mov	r7,a
                                   1897 ;	sdcard.h:217: if (count == 0) return 0; //success
      000720 E5 3E            [12] 1898 	mov	a,_bp
      000722 24 FA            [12] 1899 	add	a,#0xfa
      000724 F8               [12] 1900 	mov	r0,a
      000725 E6               [12] 1901 	mov	a,@r0
      000726 08               [12] 1902 	inc	r0
      000727 46               [12] 1903 	orl	a,@r0
      000728 70 05            [24] 1904 	jnz	00102$
      00072A F5 82            [12] 1905 	mov	dpl,a
      00072C 02 08 2D         [24] 1906 	ljmp	00131$
      00072F                       1907 00102$:
                                   1908 ;	sdcard.h:218: if ((count + offset) > SD_BLOCK_SIZE) {
      00072F E5 3E            [12] 1909 	mov	a,_bp
      000731 24 FA            [12] 1910 	add	a,#0xfa
      000733 F8               [12] 1911 	mov	r0,a
      000734 E5 3E            [12] 1912 	mov	a,_bp
      000736 24 FC            [12] 1913 	add	a,#0xfc
      000738 F9               [12] 1914 	mov	r1,a
      000739 E7               [12] 1915 	mov	a,@r1
      00073A 26               [12] 1916 	add	a,@r0
      00073B FA               [12] 1917 	mov	r2,a
      00073C 09               [12] 1918 	inc	r1
      00073D E7               [12] 1919 	mov	a,@r1
      00073E 08               [12] 1920 	inc	r0
      00073F 36               [12] 1921 	addc	a,@r0
      000740 FB               [12] 1922 	mov	r3,a
      000741 C3               [12] 1923 	clr	c
      000742 E4               [12] 1924 	clr	a
      000743 9A               [12] 1925 	subb	a,r2
      000744 74 02            [12] 1926 	mov	a,#0x02
      000746 9B               [12] 1927 	subb	a,r3
      000747 50 06            [24] 1928 	jnc	00105$
                                   1929 ;	sdcard.h:219: return 1; //fail
      000749 75 82 01         [24] 1930 	mov	dpl,#0x01
      00074C 02 08 2D         [24] 1931 	ljmp	00131$
                                   1932 ;	sdcard.h:227: spi_cs_low();
      00074F                       1933 00105$:
      00074F 53 90 F7         [24] 1934 	anl	_P1,#0xf7
                                   1935 ;	sdcard.h:232: if(sd_cmd(CMD17,block_addr)) return SD_CMD_FAIL; 
      000752 8C 0D            [24] 1936 	mov	_sd_cmd_PARM_2,r4
      000754 8D 0E            [24] 1937 	mov	(_sd_cmd_PARM_2 + 1),r5
      000756 8E 0F            [24] 1938 	mov	(_sd_cmd_PARM_2 + 2),r6
      000758 8F 10            [24] 1939 	mov	(_sd_cmd_PARM_2 + 3),r7
      00075A 75 82 11         [24] 1940 	mov	dpl,#0x11
      00075D 12 05 2F         [24] 1941 	lcall	_sd_cmd
      000760 E5 82            [12] 1942 	mov	a,dpl
      000762 60 06            [24] 1943 	jz	00138$
      000764 75 82 FF         [24] 1944 	mov	dpl,#0xff
      000767 02 08 2D         [24] 1945 	ljmp	00131$
                                   1946 ;	sdcard.h:236: while(1)
      00076A                       1947 00138$:
      00076A 7F 00            [12] 1948 	mov	r7,#0x00
      00076C                       1949 00119$:
                                   1950 ;	sdcard.h:238: response = sd_spi_write(0xff);
      00076C 75 3F 00         [24] 1951 	mov	_spi_transfer_PARM_2,#0x00
      00076F 75 82 FF         [24] 1952 	mov	dpl,#0xff
      000772 C0 07            [24] 1953 	push	ar7
      000774 12 04 64         [24] 1954 	lcall	_spi_transfer
      000777 AE 82            [24] 1955 	mov	r6,dpl
      000779 D0 07            [24] 1956 	pop	ar7
                                   1957 ;	sdcard.h:246: if(response==0xff); //pass
      00077B BE FF 02         [24] 1958 	cjne	r6,#0xff,00192$
      00077E 80 0B            [24] 1959 	sjmp	00115$
      000780                       1960 00192$:
                                   1961 ;	sdcard.h:247: else if(response == DATA_START_BLOCK) break; // if the last response is DATA_START_BLOCK=0xFE, then success, else fail
      000780 BE FE 02         [24] 1962 	cjne	r6,#0xfe,00193$
      000783 80 12            [24] 1963 	sjmp	00143$
      000785                       1964 00193$:
                                   1965 ;	sdcard.h:248: else return DATA_START_BLOCK_FAIL; // if anything other than 0xff or DATA_START_BLOCK=0xFE
      000785 75 82 FD         [24] 1966 	mov	dpl,#0xfd
      000788 02 08 2D         [24] 1967 	ljmp	00131$
      00078B                       1968 00115$:
                                   1969 ;	sdcard.h:250: if(retries++==255) return SD_MAX_RETRIES_FAIL;
      00078B 8F 06            [24] 1970 	mov	ar6,r7
      00078D 0F               [12] 1971 	inc	r7
      00078E BE FF DB         [24] 1972 	cjne	r6,#0xff,00119$
      000791 75 82 FE         [24] 1973 	mov	dpl,#0xfe
      000794 02 08 2D         [24] 1974 	ljmp	00131$
                                   1975 ;	sdcard.h:256: for(uint16_t i=0;i<512;i++)
      000797                       1976 00143$:
      000797 E5 3E            [12] 1977 	mov	a,_bp
      000799 24 FC            [12] 1978 	add	a,#0xfc
      00079B F8               [12] 1979 	mov	r0,a
      00079C E5 3E            [12] 1980 	mov	a,_bp
      00079E 24 FA            [12] 1981 	add	a,#0xfa
      0007A0 F9               [12] 1982 	mov	r1,a
      0007A1 E7               [12] 1983 	mov	a,@r1
      0007A2 26               [12] 1984 	add	a,@r0
      0007A3 FE               [12] 1985 	mov	r6,a
      0007A4 09               [12] 1986 	inc	r1
      0007A5 E7               [12] 1987 	mov	a,@r1
      0007A6 08               [12] 1988 	inc	r0
      0007A7 36               [12] 1989 	addc	a,@r0
      0007A8 FF               [12] 1990 	mov	r7,a
      0007A9 7C 00            [12] 1991 	mov	r4,#0x00
      0007AB 7D 00            [12] 1992 	mov	r5,#0x00
      0007AD                       1993 00129$:
      0007AD 74 FE            [12] 1994 	mov	a,#0x100 - 0x02
      0007AF 2D               [12] 1995 	add	a,r5
      0007B0 40 63            [24] 1996 	jc	00124$
                                   1997 ;	sdcard.h:258: response = spi_transfer(0xff,0);
      0007B2 75 3F 00         [24] 1998 	mov	_spi_transfer_PARM_2,#0x00
      0007B5 75 82 FF         [24] 1999 	mov	dpl,#0xff
      0007B8 C0 07            [24] 2000 	push	ar7
      0007BA C0 06            [24] 2001 	push	ar6
      0007BC C0 05            [24] 2002 	push	ar5
      0007BE C0 04            [24] 2003 	push	ar4
      0007C0 12 04 64         [24] 2004 	lcall	_spi_transfer
      0007C3 AB 82            [24] 2005 	mov	r3,dpl
      0007C5 D0 04            [24] 2006 	pop	ar4
      0007C7 D0 05            [24] 2007 	pop	ar5
      0007C9 D0 06            [24] 2008 	pop	ar6
      0007CB D0 07            [24] 2009 	pop	ar7
                                   2010 ;	sdcard.h:266: if(i>=offset && i<offset+count)
      0007CD E5 3E            [12] 2011 	mov	a,_bp
      0007CF 24 FC            [12] 2012 	add	a,#0xfc
      0007D1 F8               [12] 2013 	mov	r0,a
      0007D2 C3               [12] 2014 	clr	c
      0007D3 EC               [12] 2015 	mov	a,r4
      0007D4 96               [12] 2016 	subb	a,@r0
      0007D5 ED               [12] 2017 	mov	a,r5
      0007D6 08               [12] 2018 	inc	r0
      0007D7 96               [12] 2019 	subb	a,@r0
      0007D8 40 34            [24] 2020 	jc	00130$
      0007DA EC               [12] 2021 	mov	a,r4
      0007DB 9E               [12] 2022 	subb	a,r6
      0007DC ED               [12] 2023 	mov	a,r5
      0007DD 9F               [12] 2024 	subb	a,r7
      0007DE 50 2E            [24] 2025 	jnc	00130$
                                   2026 ;	sdcard.h:268: dst[i-offset] = response;
      0007E0 C0 06            [24] 2027 	push	ar6
      0007E2 C0 07            [24] 2028 	push	ar7
      0007E4 E5 3E            [12] 2029 	mov	a,_bp
      0007E6 24 FC            [12] 2030 	add	a,#0xfc
      0007E8 F8               [12] 2031 	mov	r0,a
      0007E9 EC               [12] 2032 	mov	a,r4
      0007EA C3               [12] 2033 	clr	c
      0007EB 96               [12] 2034 	subb	a,@r0
      0007EC FA               [12] 2035 	mov	r2,a
      0007ED ED               [12] 2036 	mov	a,r5
      0007EE 08               [12] 2037 	inc	r0
      0007EF 96               [12] 2038 	subb	a,@r0
      0007F0 FF               [12] 2039 	mov	r7,a
      0007F1 E5 3E            [12] 2040 	mov	a,_bp
      0007F3 24 F7            [12] 2041 	add	a,#0xf7
      0007F5 F8               [12] 2042 	mov	r0,a
      0007F6 EA               [12] 2043 	mov	a,r2
      0007F7 26               [12] 2044 	add	a,@r0
      0007F8 FA               [12] 2045 	mov	r2,a
      0007F9 EF               [12] 2046 	mov	a,r7
      0007FA 08               [12] 2047 	inc	r0
      0007FB 36               [12] 2048 	addc	a,@r0
      0007FC FF               [12] 2049 	mov	r7,a
      0007FD 08               [12] 2050 	inc	r0
      0007FE 86 06            [24] 2051 	mov	ar6,@r0
      000800 8A 82            [24] 2052 	mov	dpl,r2
      000802 8F 83            [24] 2053 	mov	dph,r7
      000804 8E F0            [24] 2054 	mov	b,r6
      000806 EB               [12] 2055 	mov	a,r3
      000807 12 1A 7A         [24] 2056 	lcall	__gptrput
                                   2057 ;	sdcard.h:283: return 0; //success
      00080A D0 07            [24] 2058 	pop	ar7
      00080C D0 06            [24] 2059 	pop	ar6
                                   2060 ;	sdcard.h:268: dst[i-offset] = response;
      00080E                       2061 00130$:
                                   2062 ;	sdcard.h:256: for(uint16_t i=0;i<512;i++)
      00080E 0C               [12] 2063 	inc	r4
      00080F BC 00 9B         [24] 2064 	cjne	r4,#0x00,00129$
      000812 0D               [12] 2065 	inc	r5
      000813 80 98            [24] 2066 	sjmp	00129$
      000815                       2067 00124$:
                                   2068 ;	sdcard.h:276: sd_spi_write(0xff);
      000815 75 3F 00         [24] 2069 	mov	_spi_transfer_PARM_2,#0x00
      000818 75 82 FF         [24] 2070 	mov	dpl,#0xff
      00081B 12 04 64         [24] 2071 	lcall	_spi_transfer
                                   2072 ;	sdcard.h:277: sd_spi_write(0xff);
      00081E 75 3F 00         [24] 2073 	mov	_spi_transfer_PARM_2,#0x00
      000821 75 82 FF         [24] 2074 	mov	dpl,#0xff
      000824 12 04 64         [24] 2075 	lcall	_spi_transfer
                                   2076 ;	sdcard.h:280: spi_cs_high(); //leave clock high
      000827 43 90 08         [24] 2077 	orl	_P1,#0x08
                                   2078 ;	sdcard.h:283: return 0; //success
      00082A 75 82 00         [24] 2079 	mov	dpl,#0x00
      00082D                       2080 00131$:
                                   2081 ;	sdcard.h:285: }
      00082D D0 3E            [24] 2082 	pop	_bp
      00082F 22               [24] 2083 	ret
                                   2084 ;------------------------------------------------------------
                                   2085 ;Allocation info for local variables in function 'SDreadBlock'
                                   2086 ;------------------------------------------------------------
                                   2087 ;dst                       Allocated with name '_SDreadBlock_PARM_2'
                                   2088 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   2089 ;------------------------------------------------------------
                                   2090 ;	sdcard.h:287: uint8_t SDreadBlock(uint32_t block_addr,uint8_t* dst)
                                   2091 ;	-----------------------------------------
                                   2092 ;	 function SDreadBlock
                                   2093 ;	-----------------------------------------
      000830                       2094 _SDreadBlock:
      000830 AC 82            [24] 2095 	mov	r4,dpl
      000832 AD 83            [24] 2096 	mov	r5,dph
      000834 AE F0            [24] 2097 	mov	r6,b
      000836 FF               [12] 2098 	mov	r7,a
                                   2099 ;	sdcard.h:289: return SDread(block_addr,0,SD_BLOCK_SIZE,dst);
      000837 C0 15            [24] 2100 	push	_SDreadBlock_PARM_2
      000839 C0 16            [24] 2101 	push	(_SDreadBlock_PARM_2 + 1)
      00083B C0 17            [24] 2102 	push	(_SDreadBlock_PARM_2 + 2)
      00083D E4               [12] 2103 	clr	a
      00083E C0 E0            [24] 2104 	push	acc
      000840 74 02            [12] 2105 	mov	a,#0x02
      000842 C0 E0            [24] 2106 	push	acc
      000844 E4               [12] 2107 	clr	a
      000845 C0 E0            [24] 2108 	push	acc
      000847 C0 E0            [24] 2109 	push	acc
      000849 8C 82            [24] 2110 	mov	dpl,r4
      00084B 8D 83            [24] 2111 	mov	dph,r5
      00084D 8E F0            [24] 2112 	mov	b,r6
      00084F EF               [12] 2113 	mov	a,r7
      000850 12 07 14         [24] 2114 	lcall	_SDread
      000853 E5 81            [12] 2115 	mov	a,sp
      000855 24 F9            [12] 2116 	add	a,#0xf9
      000857 F5 81            [12] 2117 	mov	sp,a
                                   2118 ;	sdcard.h:290: }
      000859 22               [24] 2119 	ret
                                   2120 ;------------------------------------------------------------
                                   2121 ;Allocation info for local variables in function 'HELPER_load_littleendian16'
                                   2122 ;------------------------------------------------------------
                                   2123 ;src                       Allocated to registers r5 r6 r7 
                                   2124 ;val                       Allocated to registers r2 r4 
                                   2125 ;------------------------------------------------------------
                                   2126 ;	fat.h:85: uint16_t HELPER_load_littleendian16(uint8_t *src) __reentrant
                                   2127 ;	-----------------------------------------
                                   2128 ;	 function HELPER_load_littleendian16
                                   2129 ;	-----------------------------------------
      00085A                       2130 _HELPER_load_littleendian16:
      00085A AD 82            [24] 2131 	mov	r5,dpl
      00085C AE 83            [24] 2132 	mov	r6,dph
      00085E AF F0            [24] 2133 	mov	r7,b
                                   2134 ;	fat.h:89: val = *(src+1);
      000860 74 01            [12] 2135 	mov	a,#0x01
      000862 2D               [12] 2136 	add	a,r5
      000863 FA               [12] 2137 	mov	r2,a
      000864 E4               [12] 2138 	clr	a
      000865 3E               [12] 2139 	addc	a,r6
      000866 FB               [12] 2140 	mov	r3,a
      000867 8F 04            [24] 2141 	mov	ar4,r7
      000869 8A 82            [24] 2142 	mov	dpl,r2
      00086B 8B 83            [24] 2143 	mov	dph,r3
      00086D 8C F0            [24] 2144 	mov	b,r4
      00086F 12 1B 6D         [24] 2145 	lcall	__gptrget
                                   2146 ;	fat.h:90: val <<= 8;
      000872 FC               [12] 2147 	mov	r4,a
      000873 7A 00            [12] 2148 	mov	r2,#0x00
                                   2149 ;	fat.h:91: val |= *src;
      000875 8D 82            [24] 2150 	mov	dpl,r5
      000877 8E 83            [24] 2151 	mov	dph,r6
      000879 8F F0            [24] 2152 	mov	b,r7
      00087B 12 1B 6D         [24] 2153 	lcall	__gptrget
      00087E 7F 00            [12] 2154 	mov	r7,#0x00
      000880 4A               [12] 2155 	orl	a,r2
      000881 F5 82            [12] 2156 	mov	dpl,a
      000883 EF               [12] 2157 	mov	a,r7
      000884 4C               [12] 2158 	orl	a,r4
      000885 F5 83            [12] 2159 	mov	dph,a
                                   2160 ;	fat.h:93: return val;
                                   2161 ;	fat.h:94: }
      000887 22               [24] 2162 	ret
                                   2163 ;------------------------------------------------------------
                                   2164 ;Allocation info for local variables in function 'HELPER_load_littleendian32'
                                   2165 ;------------------------------------------------------------
                                   2166 ;src                       Allocated to stack - _bp +1
                                   2167 ;val                       Allocated to stack - _bp +8
                                   2168 ;i                         Allocated to stack - _bp +12
                                   2169 ;sloc0                     Allocated to stack - _bp +9
                                   2170 ;sloc1                     Allocated to stack - _bp +4
                                   2171 ;------------------------------------------------------------
                                   2172 ;	fat.h:96: uint32_t HELPER_load_littleendian32(uint8_t *src) __reentrant
                                   2173 ;	-----------------------------------------
                                   2174 ;	 function HELPER_load_littleendian32
                                   2175 ;	-----------------------------------------
      000888                       2176 _HELPER_load_littleendian32:
      000888 C0 3E            [24] 2177 	push	_bp
      00088A 85 81 3E         [24] 2178 	mov	_bp,sp
      00088D C0 82            [24] 2179 	push	dpl
      00088F C0 83            [24] 2180 	push	dph
      000891 C0 F0            [24] 2181 	push	b
      000893 E5 81            [12] 2182 	mov	a,sp
      000895 24 09            [12] 2183 	add	a,#0x09
      000897 F5 81            [12] 2184 	mov	sp,a
                                   2185 ;	fat.h:98: uint32_t val=0;
                                   2186 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      000899 E4               [12] 2187 	clr	a
      00089A FA               [12] 2188 	mov	r2,a
      00089B FB               [12] 2189 	mov	r3,a
      00089C FC               [12] 2190 	mov	r4,a
      00089D FF               [12] 2191 	mov	r7,a
      00089E E5 3E            [12] 2192 	mov	a,_bp
      0008A0 24 0C            [12] 2193 	add	a,#0x0c
      0008A2 F8               [12] 2194 	mov	r0,a
      0008A3 76 00            [12] 2195 	mov	@r0,#0x00
      0008A5                       2196 00103$:
      0008A5 E5 3E            [12] 2197 	mov	a,_bp
      0008A7 24 0C            [12] 2198 	add	a,#0x0c
      0008A9 F8               [12] 2199 	mov	r0,a
      0008AA B6 04 00         [24] 2200 	cjne	@r0,#0x04,00118$
      0008AD                       2201 00118$:
      0008AD 50 6F            [24] 2202 	jnc	00101$
                                   2203 ;	fat.h:102: val <<= 8;
      0008AF E5 3E            [12] 2204 	mov	a,_bp
      0008B1 24 08            [12] 2205 	add	a,#0x08
      0008B3 F8               [12] 2206 	mov	r0,a
      0008B4 08               [12] 2207 	inc	r0
      0008B5 08               [12] 2208 	inc	r0
      0008B6 08               [12] 2209 	inc	r0
      0008B7 A6 04            [24] 2210 	mov	@r0,ar4
      0008B9 18               [12] 2211 	dec	r0
      0008BA A6 03            [24] 2212 	mov	@r0,ar3
      0008BC 18               [12] 2213 	dec	r0
      0008BD A6 02            [24] 2214 	mov	@r0,ar2
      0008BF 18               [12] 2215 	dec	r0
      0008C0 76 00            [12] 2216 	mov	@r0,#0x00
                                   2217 ;	fat.h:103: val |= src[3-i];
      0008C2 E5 3E            [12] 2218 	mov	a,_bp
      0008C4 24 0C            [12] 2219 	add	a,#0x0c
      0008C6 F8               [12] 2220 	mov	r0,a
      0008C7 86 05            [24] 2221 	mov	ar5,@r0
      0008C9 7E 00            [12] 2222 	mov	r6,#0x00
      0008CB 74 03            [12] 2223 	mov	a,#0x03
      0008CD C3               [12] 2224 	clr	c
      0008CE 9D               [12] 2225 	subb	a,r5
      0008CF FD               [12] 2226 	mov	r5,a
      0008D0 E4               [12] 2227 	clr	a
      0008D1 9E               [12] 2228 	subb	a,r6
      0008D2 FE               [12] 2229 	mov	r6,a
      0008D3 A8 3E            [24] 2230 	mov	r0,_bp
      0008D5 08               [12] 2231 	inc	r0
      0008D6 ED               [12] 2232 	mov	a,r5
      0008D7 26               [12] 2233 	add	a,@r0
      0008D8 FF               [12] 2234 	mov	r7,a
      0008D9 EE               [12] 2235 	mov	a,r6
      0008DA 08               [12] 2236 	inc	r0
      0008DB 36               [12] 2237 	addc	a,@r0
      0008DC FE               [12] 2238 	mov	r6,a
      0008DD 08               [12] 2239 	inc	r0
      0008DE 86 05            [24] 2240 	mov	ar5,@r0
      0008E0 8F 82            [24] 2241 	mov	dpl,r7
      0008E2 8E 83            [24] 2242 	mov	dph,r6
      0008E4 8D F0            [24] 2243 	mov	b,r5
      0008E6 12 1B 6D         [24] 2244 	lcall	__gptrget
      0008E9 FE               [12] 2245 	mov	r6,a
      0008EA E5 3E            [12] 2246 	mov	a,_bp
      0008EC 24 04            [12] 2247 	add	a,#0x04
      0008EE F8               [12] 2248 	mov	r0,a
      0008EF A6 06            [24] 2249 	mov	@r0,ar6
      0008F1 08               [12] 2250 	inc	r0
      0008F2 76 00            [12] 2251 	mov	@r0,#0x00
      0008F4 08               [12] 2252 	inc	r0
      0008F5 76 00            [12] 2253 	mov	@r0,#0x00
      0008F7 08               [12] 2254 	inc	r0
      0008F8 76 00            [12] 2255 	mov	@r0,#0x00
      0008FA E5 3E            [12] 2256 	mov	a,_bp
      0008FC 24 08            [12] 2257 	add	a,#0x08
      0008FE F8               [12] 2258 	mov	r0,a
      0008FF E5 3E            [12] 2259 	mov	a,_bp
      000901 24 04            [12] 2260 	add	a,#0x04
      000903 F9               [12] 2261 	mov	r1,a
      000904 E7               [12] 2262 	mov	a,@r1
      000905 46               [12] 2263 	orl	a,@r0
      000906 FA               [12] 2264 	mov	r2,a
      000907 09               [12] 2265 	inc	r1
      000908 E7               [12] 2266 	mov	a,@r1
      000909 08               [12] 2267 	inc	r0
      00090A 46               [12] 2268 	orl	a,@r0
      00090B FB               [12] 2269 	mov	r3,a
      00090C 09               [12] 2270 	inc	r1
      00090D E7               [12] 2271 	mov	a,@r1
      00090E 08               [12] 2272 	inc	r0
      00090F 46               [12] 2273 	orl	a,@r0
      000910 FC               [12] 2274 	mov	r4,a
      000911 09               [12] 2275 	inc	r1
      000912 E7               [12] 2276 	mov	a,@r1
      000913 08               [12] 2277 	inc	r0
      000914 46               [12] 2278 	orl	a,@r0
      000915 FF               [12] 2279 	mov	r7,a
                                   2280 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      000916 E5 3E            [12] 2281 	mov	a,_bp
      000918 24 0C            [12] 2282 	add	a,#0x0c
      00091A F8               [12] 2283 	mov	r0,a
      00091B 06               [12] 2284 	inc	@r0
      00091C 80 87            [24] 2285 	sjmp	00103$
      00091E                       2286 00101$:
                                   2287 ;	fat.h:106: return val;
      00091E 8A 82            [24] 2288 	mov	dpl,r2
      000920 8B 83            [24] 2289 	mov	dph,r3
      000922 8C F0            [24] 2290 	mov	b,r4
      000924 EF               [12] 2291 	mov	a,r7
                                   2292 ;	fat.h:107: }
      000925 85 3E 81         [24] 2293 	mov	sp,_bp
      000928 D0 3E            [24] 2294 	pop	_bp
      00092A 22               [24] 2295 	ret
                                   2296 ;------------------------------------------------------------
                                   2297 ;Allocation info for local variables in function 'HELPER_strcmp'
                                   2298 ;------------------------------------------------------------
                                   2299 ;s2                        Allocated with name '_HELPER_strcmp_PARM_2'
                                   2300 ;s1                        Allocated to registers r5 r6 r7 
                                   2301 ;i                         Allocated to registers r4 
                                   2302 ;------------------------------------------------------------
                                   2303 ;	fat.h:109: uint8_t HELPER_strcmp(char *s1,char* s2)
                                   2304 ;	-----------------------------------------
                                   2305 ;	 function HELPER_strcmp
                                   2306 ;	-----------------------------------------
      00092B                       2307 _HELPER_strcmp:
      00092B AD 82            [24] 2308 	mov	r5,dpl
      00092D AE 83            [24] 2309 	mov	r6,dph
      00092F AF F0            [24] 2310 	mov	r7,b
                                   2311 ;	fat.h:112: while(1)
      000931 7C 00            [12] 2312 	mov	r4,#0x00
      000933                       2313 00107$:
                                   2314 ;	fat.h:114: if(s1[i]==s2[i]);
      000933 EC               [12] 2315 	mov	a,r4
      000934 2D               [12] 2316 	add	a,r5
      000935 F9               [12] 2317 	mov	r1,a
      000936 E4               [12] 2318 	clr	a
      000937 3E               [12] 2319 	addc	a,r6
      000938 FA               [12] 2320 	mov	r2,a
      000939 8F 03            [24] 2321 	mov	ar3,r7
      00093B 89 82            [24] 2322 	mov	dpl,r1
      00093D 8A 83            [24] 2323 	mov	dph,r2
      00093F 8B F0            [24] 2324 	mov	b,r3
      000941 12 1B 6D         [24] 2325 	lcall	__gptrget
      000944 FB               [12] 2326 	mov	r3,a
      000945 EC               [12] 2327 	mov	a,r4
      000946 25 3F            [12] 2328 	add	a,_HELPER_strcmp_PARM_2
      000948 F8               [12] 2329 	mov	r0,a
      000949 E4               [12] 2330 	clr	a
      00094A 35 40            [12] 2331 	addc	a,(_HELPER_strcmp_PARM_2 + 1)
      00094C F9               [12] 2332 	mov	r1,a
      00094D AA 41            [24] 2333 	mov	r2,(_HELPER_strcmp_PARM_2 + 2)
      00094F 88 82            [24] 2334 	mov	dpl,r0
      000951 89 83            [24] 2335 	mov	dph,r1
      000953 8A F0            [24] 2336 	mov	b,r2
      000955 12 1B 6D         [24] 2337 	lcall	__gptrget
      000958 F8               [12] 2338 	mov	r0,a
      000959 EB               [12] 2339 	mov	a,r3
      00095A B5 00 02         [24] 2340 	cjne	a,ar0,00123$
      00095D 80 04            [24] 2341 	sjmp	00103$
      00095F                       2342 00123$:
                                   2343 ;	fat.h:115: else return 1;
      00095F 75 82 01         [24] 2344 	mov	dpl,#0x01
      000962 22               [24] 2345 	ret
      000963                       2346 00103$:
                                   2347 ;	fat.h:117: if(s1[i]==0) return 0;
      000963 EB               [12] 2348 	mov	a,r3
      000964 70 03            [24] 2349 	jnz	00105$
      000966 F5 82            [12] 2350 	mov	dpl,a
      000968 22               [24] 2351 	ret
      000969                       2352 00105$:
                                   2353 ;	fat.h:118: i++;
      000969 0C               [12] 2354 	inc	r4
                                   2355 ;	fat.h:120: }
      00096A 80 C7            [24] 2356 	sjmp	00107$
                                   2357 ;------------------------------------------------------------
                                   2358 ;Allocation info for local variables in function 'HELPER_strncmp'
                                   2359 ;------------------------------------------------------------
                                   2360 ;s2                        Allocated with name '_HELPER_strncmp_PARM_2'
                                   2361 ;n                         Allocated with name '_HELPER_strncmp_PARM_3'
                                   2362 ;s1                        Allocated to registers r5 r6 r7 
                                   2363 ;i                         Allocated to registers r4 
                                   2364 ;------------------------------------------------------------
                                   2365 ;	fat.h:122: uint8_t HELPER_strncmp(char *s1,char* s2,uint8_t n)
                                   2366 ;	-----------------------------------------
                                   2367 ;	 function HELPER_strncmp
                                   2368 ;	-----------------------------------------
      00096C                       2369 _HELPER_strncmp:
      00096C AD 82            [24] 2370 	mov	r5,dpl
      00096E AE 83            [24] 2371 	mov	r6,dph
      000970 AF F0            [24] 2372 	mov	r7,b
                                   2373 ;	fat.h:125: while(1)
      000972 7C 00            [12] 2374 	mov	r4,#0x00
      000974                       2375 00109$:
                                   2376 ;	fat.h:127: if(i==n) return 0; //done - successful
      000974 EC               [12] 2377 	mov	a,r4
      000975 B5 42 04         [24] 2378 	cjne	a,_HELPER_strncmp_PARM_3,00102$
      000978 75 82 00         [24] 2379 	mov	dpl,#0x00
      00097B 22               [24] 2380 	ret
      00097C                       2381 00102$:
                                   2382 ;	fat.h:129: if(s1[i]==s2[i]);
      00097C EC               [12] 2383 	mov	a,r4
      00097D 2D               [12] 2384 	add	a,r5
      00097E F9               [12] 2385 	mov	r1,a
      00097F E4               [12] 2386 	clr	a
      000980 3E               [12] 2387 	addc	a,r6
      000981 FA               [12] 2388 	mov	r2,a
      000982 8F 03            [24] 2389 	mov	ar3,r7
      000984 89 82            [24] 2390 	mov	dpl,r1
      000986 8A 83            [24] 2391 	mov	dph,r2
      000988 8B F0            [24] 2392 	mov	b,r3
      00098A 12 1B 6D         [24] 2393 	lcall	__gptrget
      00098D FB               [12] 2394 	mov	r3,a
      00098E EC               [12] 2395 	mov	a,r4
      00098F 25 3F            [12] 2396 	add	a,_HELPER_strncmp_PARM_2
      000991 F8               [12] 2397 	mov	r0,a
      000992 E4               [12] 2398 	clr	a
      000993 35 40            [12] 2399 	addc	a,(_HELPER_strncmp_PARM_2 + 1)
      000995 F9               [12] 2400 	mov	r1,a
      000996 AA 41            [24] 2401 	mov	r2,(_HELPER_strncmp_PARM_2 + 2)
      000998 88 82            [24] 2402 	mov	dpl,r0
      00099A 89 83            [24] 2403 	mov	dph,r1
      00099C 8A F0            [24] 2404 	mov	b,r2
      00099E 12 1B 6D         [24] 2405 	lcall	__gptrget
      0009A1 F8               [12] 2406 	mov	r0,a
      0009A2 EB               [12] 2407 	mov	a,r3
      0009A3 B5 00 02         [24] 2408 	cjne	a,ar0,00131$
      0009A6 80 04            [24] 2409 	sjmp	00105$
      0009A8                       2410 00131$:
                                   2411 ;	fat.h:130: else return 1;
      0009A8 75 82 01         [24] 2412 	mov	dpl,#0x01
      0009AB 22               [24] 2413 	ret
      0009AC                       2414 00105$:
                                   2415 ;	fat.h:132: if(s1[i]==0) return 0; //if string length < n, return success as well as we donot want to compare more
      0009AC EB               [12] 2416 	mov	a,r3
      0009AD 70 03            [24] 2417 	jnz	00107$
      0009AF F5 82            [12] 2418 	mov	dpl,a
      0009B1 22               [24] 2419 	ret
      0009B2                       2420 00107$:
                                   2421 ;	fat.h:133: i++;
      0009B2 0C               [12] 2422 	inc	r4
                                   2423 ;	fat.h:135: }
      0009B3 80 BF            [24] 2424 	sjmp	00109$
                                   2425 ;------------------------------------------------------------
                                   2426 ;Allocation info for local variables in function 'HELPER_strlen'
                                   2427 ;------------------------------------------------------------
                                   2428 ;s                         Allocated to registers r5 r6 r7 
                                   2429 ;i                         Allocated to registers r4 
                                   2430 ;------------------------------------------------------------
                                   2431 ;	fat.h:137: uint8_t HELPER_strlen(char *s)
                                   2432 ;	-----------------------------------------
                                   2433 ;	 function HELPER_strlen
                                   2434 ;	-----------------------------------------
      0009B5                       2435 _HELPER_strlen:
      0009B5 AD 82            [24] 2436 	mov	r5,dpl
      0009B7 AE 83            [24] 2437 	mov	r6,dph
      0009B9 AF F0            [24] 2438 	mov	r7,b
                                   2439 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      0009BB 7C 00            [12] 2440 	mov	r4,#0x00
      0009BD 7B 00            [12] 2441 	mov	r3,#0x00
      0009BF                       2442 00105$:
      0009BF BB FF 00         [24] 2443 	cjne	r3,#0xff,00121$
      0009C2                       2444 00121$:
      0009C2 50 1B            [24] 2445 	jnc	00103$
                                   2446 ;	fat.h:141: if(s[i]==0) return i;
      0009C4 EB               [12] 2447 	mov	a,r3
      0009C5 2D               [12] 2448 	add	a,r5
      0009C6 F8               [12] 2449 	mov	r0,a
      0009C7 E4               [12] 2450 	clr	a
      0009C8 3E               [12] 2451 	addc	a,r6
      0009C9 F9               [12] 2452 	mov	r1,a
      0009CA 8F 02            [24] 2453 	mov	ar2,r7
      0009CC 88 82            [24] 2454 	mov	dpl,r0
      0009CE 89 83            [24] 2455 	mov	dph,r1
      0009D0 8A F0            [24] 2456 	mov	b,r2
      0009D2 12 1B 6D         [24] 2457 	lcall	__gptrget
      0009D5 70 03            [24] 2458 	jnz	00106$
      0009D7 8C 82            [24] 2459 	mov	dpl,r4
      0009D9 22               [24] 2460 	ret
      0009DA                       2461 00106$:
                                   2462 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      0009DA 0B               [12] 2463 	inc	r3
      0009DB 8B 04            [24] 2464 	mov	ar4,r3
      0009DD 80 E0            [24] 2465 	sjmp	00105$
      0009DF                       2466 00103$:
                                   2467 ;	fat.h:144: return 255;
      0009DF 75 82 FF         [24] 2468 	mov	dpl,#0xff
                                   2469 ;	fat.h:145: }
      0009E2 22               [24] 2470 	ret
                                   2471 ;------------------------------------------------------------
                                   2472 ;Allocation info for local variables in function 'HELPER_rootentry_type'
                                   2473 ;------------------------------------------------------------
                                   2474 ;re                        Allocated to registers r5 r6 r7 
                                   2475 ;------------------------------------------------------------
                                   2476 ;	fat.h:147: uint8_t HELPER_rootentry_type(ROOTENTRY *re)
                                   2477 ;	-----------------------------------------
                                   2478 ;	 function HELPER_rootentry_type
                                   2479 ;	-----------------------------------------
      0009E3                       2480 _HELPER_rootentry_type:
      0009E3 AD 82            [24] 2481 	mov	r5,dpl
      0009E5 AE 83            [24] 2482 	mov	r6,dph
      0009E7 AF F0            [24] 2483 	mov	r7,b
                                   2484 ;	fat.h:149: if(re->attributes & 1<<FILETYPE_HIDDEN) return FILETYPE_HIDDEN; //directory entry
      0009E9 74 0B            [12] 2485 	mov	a,#0x0b
      0009EB 2D               [12] 2486 	add	a,r5
      0009EC FA               [12] 2487 	mov	r2,a
      0009ED E4               [12] 2488 	clr	a
      0009EE 3E               [12] 2489 	addc	a,r6
      0009EF FB               [12] 2490 	mov	r3,a
      0009F0 8F 04            [24] 2491 	mov	ar4,r7
      0009F2 8A 82            [24] 2492 	mov	dpl,r2
      0009F4 8B 83            [24] 2493 	mov	dph,r3
      0009F6 8C F0            [24] 2494 	mov	b,r4
      0009F8 12 1B 6D         [24] 2495 	lcall	__gptrget
      0009FB FC               [12] 2496 	mov	r4,a
      0009FC 30 E1 04         [24] 2497 	jnb	acc.1,00102$
      0009FF 75 82 01         [24] 2498 	mov	dpl,#0x01
      000A02 22               [24] 2499 	ret
      000A03                       2500 00102$:
                                   2501 ;	fat.h:150: if(re->attributes & 1<<FILETYPE_SYSTEM) return FILETYPE_SYSTEM; //directory entry
      000A03 EC               [12] 2502 	mov	a,r4
      000A04 30 E2 04         [24] 2503 	jnb	acc.2,00104$
      000A07 75 82 02         [24] 2504 	mov	dpl,#0x02
      000A0A 22               [24] 2505 	ret
      000A0B                       2506 00104$:
                                   2507 ;	fat.h:151: if(re->attributes & 1<<FILETYPE_VOLUME) return FILETYPE_VOLUME; //directory entry
      000A0B EC               [12] 2508 	mov	a,r4
      000A0C 30 E3 04         [24] 2509 	jnb	acc.3,00106$
      000A0F 75 82 03         [24] 2510 	mov	dpl,#0x03
      000A12 22               [24] 2511 	ret
      000A13                       2512 00106$:
                                   2513 ;	fat.h:153: if(re->startCluster==0) return FILETYPE_NOFILE; //no file
      000A13 74 0C            [12] 2514 	mov	a,#0x0c
      000A15 2D               [12] 2515 	add	a,r5
      000A16 FA               [12] 2516 	mov	r2,a
      000A17 E4               [12] 2517 	clr	a
      000A18 3E               [12] 2518 	addc	a,r6
      000A19 FB               [12] 2519 	mov	r3,a
      000A1A 8F 04            [24] 2520 	mov	ar4,r7
      000A1C 8A 82            [24] 2521 	mov	dpl,r2
      000A1E 8B 83            [24] 2522 	mov	dph,r3
      000A20 8C F0            [24] 2523 	mov	b,r4
      000A22 12 1B 6D         [24] 2524 	lcall	__gptrget
      000A25 FA               [12] 2525 	mov	r2,a
      000A26 A3               [24] 2526 	inc	dptr
      000A27 12 1B 6D         [24] 2527 	lcall	__gptrget
      000A2A 4A               [12] 2528 	orl	a,r2
      000A2B 70 04            [24] 2529 	jnz	00111$
      000A2D 75 82 FF         [24] 2530 	mov	dpl,#0xff
      000A30 22               [24] 2531 	ret
      000A31                       2532 00111$:
                                   2533 ;	fat.h:154: else if(re->size==0) return FILETYPE_EMPTYFILE; //empty file
      000A31 74 0E            [12] 2534 	mov	a,#0x0e
      000A33 2D               [12] 2535 	add	a,r5
      000A34 FD               [12] 2536 	mov	r5,a
      000A35 E4               [12] 2537 	clr	a
      000A36 3E               [12] 2538 	addc	a,r6
      000A37 FE               [12] 2539 	mov	r6,a
      000A38 8D 82            [24] 2540 	mov	dpl,r5
      000A3A 8E 83            [24] 2541 	mov	dph,r6
      000A3C 8F F0            [24] 2542 	mov	b,r7
      000A3E 12 1B 6D         [24] 2543 	lcall	__gptrget
      000A41 FD               [12] 2544 	mov	r5,a
      000A42 A3               [24] 2545 	inc	dptr
      000A43 12 1B 6D         [24] 2546 	lcall	__gptrget
      000A46 FE               [12] 2547 	mov	r6,a
      000A47 A3               [24] 2548 	inc	dptr
      000A48 12 1B 6D         [24] 2549 	lcall	__gptrget
      000A4B FF               [12] 2550 	mov	r7,a
      000A4C A3               [24] 2551 	inc	dptr
      000A4D 12 1B 6D         [24] 2552 	lcall	__gptrget
      000A50 FC               [12] 2553 	mov	r4,a
      000A51 ED               [12] 2554 	mov	a,r5
      000A52 4E               [12] 2555 	orl	a,r6
      000A53 4F               [12] 2556 	orl	a,r7
      000A54 4C               [12] 2557 	orl	a,r4
      000A55 70 04            [24] 2558 	jnz	00108$
      000A57 75 82 FE         [24] 2559 	mov	dpl,#0xfe
      000A5A 22               [24] 2560 	ret
      000A5B                       2561 00108$:
                                   2562 ;	fat.h:155: else return 0; // valid non-empty file
      000A5B 75 82 00         [24] 2563 	mov	dpl,#0x00
                                   2564 ;	fat.h:157: }
      000A5E 22               [24] 2565 	ret
                                   2566 ;------------------------------------------------------------
                                   2567 ;Allocation info for local variables in function 'HELPER_to_uppercase'
                                   2568 ;------------------------------------------------------------
                                   2569 ;s                         Allocated to registers r5 r6 r7 
                                   2570 ;i                         Allocated to registers r4 
                                   2571 ;------------------------------------------------------------
                                   2572 ;	fat.h:162: void HELPER_to_uppercase(char *s)
                                   2573 ;	-----------------------------------------
                                   2574 ;	 function HELPER_to_uppercase
                                   2575 ;	-----------------------------------------
      000A5F                       2576 _HELPER_to_uppercase:
      000A5F AD 82            [24] 2577 	mov	r5,dpl
      000A61 AE 83            [24] 2578 	mov	r6,dph
      000A63 AF F0            [24] 2579 	mov	r7,b
                                   2580 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000A65 7C 00            [12] 2581 	mov	r4,#0x00
      000A67                       2582 00108$:
      000A67 BC FF 00         [24] 2583 	cjne	r4,#0xff,00132$
      000A6A                       2584 00132$:
      000A6A 50 2F            [24] 2585 	jnc	00110$
                                   2586 ;	fat.h:166: if(s[i]==0) return; //done
      000A6C EC               [12] 2587 	mov	a,r4
      000A6D 2D               [12] 2588 	add	a,r5
      000A6E F9               [12] 2589 	mov	r1,a
      000A6F E4               [12] 2590 	clr	a
      000A70 3E               [12] 2591 	addc	a,r6
      000A71 FA               [12] 2592 	mov	r2,a
      000A72 8F 03            [24] 2593 	mov	ar3,r7
      000A74 89 82            [24] 2594 	mov	dpl,r1
      000A76 8A 83            [24] 2595 	mov	dph,r2
      000A78 8B F0            [24] 2596 	mov	b,r3
      000A7A 12 1B 6D         [24] 2597 	lcall	__gptrget
      000A7D F8               [12] 2598 	mov	r0,a
      000A7E 70 01            [24] 2599 	jnz	00102$
      000A80 22               [24] 2600 	ret
      000A81                       2601 00102$:
                                   2602 ;	fat.h:167: if('a'<=s[i] && s[i]<='z') s[i] = s[i] - 32;
      000A81 B8 61 00         [24] 2603 	cjne	r0,#0x61,00135$
      000A84                       2604 00135$:
      000A84 40 12            [24] 2605 	jc	00109$
      000A86 E8               [12] 2606 	mov	a,r0
      000A87 24 85            [12] 2607 	add	a,#0xff - 0x7a
      000A89 40 0D            [24] 2608 	jc	00109$
      000A8B E8               [12] 2609 	mov	a,r0
      000A8C 24 E0            [12] 2610 	add	a,#0xe0
      000A8E F8               [12] 2611 	mov	r0,a
      000A8F 89 82            [24] 2612 	mov	dpl,r1
      000A91 8A 83            [24] 2613 	mov	dph,r2
      000A93 8B F0            [24] 2614 	mov	b,r3
      000A95 12 1A 7A         [24] 2615 	lcall	__gptrput
      000A98                       2616 00109$:
                                   2617 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000A98 0C               [12] 2618 	inc	r4
      000A99 80 CC            [24] 2619 	sjmp	00108$
      000A9B                       2620 00110$:
                                   2621 ;	fat.h:169: }
      000A9B 22               [24] 2622 	ret
                                   2623 ;------------------------------------------------------------
                                   2624 ;Allocation info for local variables in function 'HELPER_filename_to_8dot3filename'
                                   2625 ;------------------------------------------------------------
                                   2626 ;fname83                   Allocated with name '_HELPER_filename_to_8dot3filename_PARM_2'
                                   2627 ;fname                     Allocated with name '_HELPER_filename_to_8dot3filename_fname_65536_125'
                                   2628 ;index                     Allocated to registers r4 
                                   2629 ;i                         Allocated to registers r4 
                                   2630 ;i                         Allocated with name '_HELPER_filename_to_8dot3filename_i_131072_131'
                                   2631 ;------------------------------------------------------------
                                   2632 ;	fat.h:171: uint8_t HELPER_filename_to_8dot3filename( char *fname,  char *fname83)
                                   2633 ;	-----------------------------------------
                                   2634 ;	 function HELPER_filename_to_8dot3filename
                                   2635 ;	-----------------------------------------
      000A9C                       2636 _HELPER_filename_to_8dot3filename:
                                   2637 ;	fat.h:176: HELPER_to_uppercase(fname);
      000A9C 85 82 1B         [24] 2638 	mov	_HELPER_filename_to_8dot3filename_fname_65536_125,dpl
      000A9F 85 83 1C         [24] 2639 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1),dph
      000AA2 85 F0 1D         [24] 2640 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2),b
      000AA5 12 0A 5F         [24] 2641 	lcall	_HELPER_to_uppercase
                                   2642 ;	fat.h:184: for(uint8_t i=0;i<11;i++) fname83[i]=' '; //default fill by empty space
      000AA8 7C 00            [12] 2643 	mov	r4,#0x00
      000AAA                       2644 00120$:
      000AAA BC 0B 00         [24] 2645 	cjne	r4,#0x0b,00178$
      000AAD                       2646 00178$:
      000AAD 50 18            [24] 2647 	jnc	00101$
      000AAF EC               [12] 2648 	mov	a,r4
      000AB0 25 18            [12] 2649 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000AB2 F9               [12] 2650 	mov	r1,a
      000AB3 E4               [12] 2651 	clr	a
      000AB4 35 19            [12] 2652 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000AB6 FA               [12] 2653 	mov	r2,a
      000AB7 AB 1A            [24] 2654 	mov	r3,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000AB9 89 82            [24] 2655 	mov	dpl,r1
      000ABB 8A 83            [24] 2656 	mov	dph,r2
      000ABD 8B F0            [24] 2657 	mov	b,r3
      000ABF 74 20            [12] 2658 	mov	a,#0x20
      000AC1 12 1A 7A         [24] 2659 	lcall	__gptrput
      000AC4 0C               [12] 2660 	inc	r4
      000AC5 80 E3            [24] 2661 	sjmp	00120$
      000AC7                       2662 00101$:
                                   2663 ;	fat.h:185: fname83[11]=0; //set last character as 0;
      000AC7 74 0B            [12] 2664 	mov	a,#0x0b
      000AC9 25 18            [12] 2665 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000ACB FA               [12] 2666 	mov	r2,a
      000ACC E4               [12] 2667 	clr	a
      000ACD 35 19            [12] 2668 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000ACF FB               [12] 2669 	mov	r3,a
      000AD0 AC 1A            [24] 2670 	mov	r4,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000AD2 8A 82            [24] 2671 	mov	dpl,r2
      000AD4 8B 83            [24] 2672 	mov	dph,r3
      000AD6 8C F0            [24] 2673 	mov	b,r4
      000AD8 E4               [12] 2674 	clr	a
      000AD9 12 1A 7A         [24] 2675 	lcall	__gptrput
                                   2676 ;	fat.h:188: for(index=0;index<9;index++)
      000ADC 7C 00            [12] 2677 	mov	r4,#0x00
      000ADE 7B 00            [12] 2678 	mov	r3,#0x00
      000AE0                       2679 00122$:
                                   2680 ;	fat.h:191: if(index==8 && fname[index]!='.') 
      000AE0 BB 08 1D         [24] 2681 	cjne	r3,#0x08,00103$
      000AE3 EB               [12] 2682 	mov	a,r3
      000AE4 25 1B            [12] 2683 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000AE6 F8               [12] 2684 	mov	r0,a
      000AE7 E4               [12] 2685 	clr	a
      000AE8 35 1C            [12] 2686 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000AEA F9               [12] 2687 	mov	r1,a
      000AEB AA 1D            [24] 2688 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000AED 88 82            [24] 2689 	mov	dpl,r0
      000AEF 89 83            [24] 2690 	mov	dph,r1
      000AF1 8A F0            [24] 2691 	mov	b,r2
      000AF3 12 1B 6D         [24] 2692 	lcall	__gptrget
      000AF6 F8               [12] 2693 	mov	r0,a
      000AF7 B8 2E 02         [24] 2694 	cjne	r0,#0x2e,00182$
      000AFA 80 04            [24] 2695 	sjmp	00103$
      000AFC                       2696 00182$:
                                   2697 ;	fat.h:196: return 1; //error - invalid filename as dot not found till 9th charcter
      000AFC 75 82 01         [24] 2698 	mov	dpl,#0x01
      000AFF 22               [24] 2699 	ret
      000B00                       2700 00103$:
                                   2701 ;	fat.h:199: if(fname[index]==0) return 0; // success - we reached the end of the filename string before the dot character - filename has no extension
      000B00 EB               [12] 2702 	mov	a,r3
      000B01 25 1B            [12] 2703 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000B03 F8               [12] 2704 	mov	r0,a
      000B04 E4               [12] 2705 	clr	a
      000B05 35 1C            [12] 2706 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000B07 F9               [12] 2707 	mov	r1,a
      000B08 AA 1D            [24] 2708 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000B0A 88 82            [24] 2709 	mov	dpl,r0
      000B0C 89 83            [24] 2710 	mov	dph,r1
      000B0E 8A F0            [24] 2711 	mov	b,r2
      000B10 12 1B 6D         [24] 2712 	lcall	__gptrget
      000B13 FA               [12] 2713 	mov	r2,a
      000B14 70 03            [24] 2714 	jnz	00109$
      000B16 F5 82            [12] 2715 	mov	dpl,a
      000B18 22               [24] 2716 	ret
      000B19                       2717 00109$:
                                   2718 ;	fat.h:200: else if(fname[index]=='.') break; //found the dot, break the for loop
      000B19 BA 2E 02         [24] 2719 	cjne	r2,#0x2e,00184$
      000B1C 80 1C            [24] 2720 	sjmp	00140$
      000B1E                       2721 00184$:
                                   2722 ;	fat.h:201: else fname83[index]=fname[index];
      000B1E EB               [12] 2723 	mov	a,r3
      000B1F 25 18            [12] 2724 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B21 F8               [12] 2725 	mov	r0,a
      000B22 E4               [12] 2726 	clr	a
      000B23 35 19            [12] 2727 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B25 F9               [12] 2728 	mov	r1,a
      000B26 AF 1A            [24] 2729 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B28 88 82            [24] 2730 	mov	dpl,r0
      000B2A 89 83            [24] 2731 	mov	dph,r1
      000B2C 8F F0            [24] 2732 	mov	b,r7
      000B2E EA               [12] 2733 	mov	a,r2
      000B2F 12 1A 7A         [24] 2734 	lcall	__gptrput
                                   2735 ;	fat.h:188: for(index=0;index<9;index++)
      000B32 0B               [12] 2736 	inc	r3
      000B33 8B 04            [24] 2737 	mov	ar4,r3
      000B35 BB 09 00         [24] 2738 	cjne	r3,#0x09,00185$
      000B38                       2739 00185$:
      000B38 40 A6            [24] 2740 	jc	00122$
                                   2741 ;	fat.h:204: for(uint8_t i=0;i<4;i++)
      000B3A                       2742 00140$:
      000B3A 75 1E 00         [24] 2743 	mov	_HELPER_filename_to_8dot3filename_i_131072_131,#0x00
      000B3D                       2744 00125$:
      000B3D 74 FC            [12] 2745 	mov	a,#0x100 - 0x04
      000B3F 25 1E            [12] 2746 	add	a,_HELPER_filename_to_8dot3filename_i_131072_131
      000B41 50 03            [24] 2747 	jnc	00187$
      000B43 02 0B E0         [24] 2748 	ljmp	00118$
      000B46                       2749 00187$:
                                   2750 ;	fat.h:206: if(i==3 && fname[index+i+1]!=0) 
      000B46 74 03            [12] 2751 	mov	a,#0x03
      000B48 B5 1E 2C         [24] 2752 	cjne	a,_HELPER_filename_to_8dot3filename_i_131072_131,00113$
      000B4B 8C 05            [24] 2753 	mov	ar5,r4
      000B4D 7E 00            [12] 2754 	mov	r6,#0x00
      000B4F AA 1E            [24] 2755 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_131
      000B51 7B 00            [12] 2756 	mov	r3,#0x00
      000B53 EA               [12] 2757 	mov	a,r2
      000B54 2D               [12] 2758 	add	a,r5
      000B55 FD               [12] 2759 	mov	r5,a
      000B56 EB               [12] 2760 	mov	a,r3
      000B57 3E               [12] 2761 	addc	a,r6
      000B58 FE               [12] 2762 	mov	r6,a
      000B59 0D               [12] 2763 	inc	r5
      000B5A BD 00 01         [24] 2764 	cjne	r5,#0x00,00190$
      000B5D 0E               [12] 2765 	inc	r6
      000B5E                       2766 00190$:
      000B5E ED               [12] 2767 	mov	a,r5
      000B5F 25 1B            [12] 2768 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000B61 FD               [12] 2769 	mov	r5,a
      000B62 EE               [12] 2770 	mov	a,r6
      000B63 35 1C            [12] 2771 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000B65 FE               [12] 2772 	mov	r6,a
      000B66 AB 1D            [24] 2773 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000B68 8D 82            [24] 2774 	mov	dpl,r5
      000B6A 8E 83            [24] 2775 	mov	dph,r6
      000B6C 8B F0            [24] 2776 	mov	b,r3
      000B6E 12 1B 6D         [24] 2777 	lcall	__gptrget
      000B71 60 04            [24] 2778 	jz	00113$
                                   2779 ;	fat.h:211: return 2; // error - extension has more than 3 characters
      000B73 75 82 02         [24] 2780 	mov	dpl,#0x02
      000B76 22               [24] 2781 	ret
      000B77                       2782 00113$:
                                   2783 ;	fat.h:215: if(fname[index+i+1]==0) 
      000B77 8C 05            [24] 2784 	mov	ar5,r4
      000B79 7E 00            [12] 2785 	mov	r6,#0x00
      000B7B AA 1E            [24] 2786 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_131
      000B7D 7B 00            [12] 2787 	mov	r3,#0x00
      000B7F EA               [12] 2788 	mov	a,r2
      000B80 2D               [12] 2789 	add	a,r5
      000B81 F8               [12] 2790 	mov	r0,a
      000B82 EB               [12] 2791 	mov	a,r3
      000B83 3E               [12] 2792 	addc	a,r6
      000B84 F9               [12] 2793 	mov	r1,a
      000B85 08               [12] 2794 	inc	r0
      000B86 B8 00 01         [24] 2795 	cjne	r0,#0x00,00192$
      000B89 09               [12] 2796 	inc	r1
      000B8A                       2797 00192$:
      000B8A E8               [12] 2798 	mov	a,r0
      000B8B 25 1B            [12] 2799 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000B8D F8               [12] 2800 	mov	r0,a
      000B8E E9               [12] 2801 	mov	a,r1
      000B8F 35 1C            [12] 2802 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000B91 F9               [12] 2803 	mov	r1,a
      000B92 AF 1D            [24] 2804 	mov	r7,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000B94 88 82            [24] 2805 	mov	dpl,r0
      000B96 89 83            [24] 2806 	mov	dph,r1
      000B98 8F F0            [24] 2807 	mov	b,r7
      000B9A 12 1B 6D         [24] 2808 	lcall	__gptrget
                                   2809 ;	fat.h:224: return 0; 
      000B9D 70 03            [24] 2810 	jnz	00116$
      000B9F F5 82            [12] 2811 	mov	dpl,a
      000BA1 22               [24] 2812 	ret
      000BA2                       2813 00116$:
                                   2814 ;	fat.h:226: else fname83[8+i]=fname[index+i+1]; // in a valid fname, there is just an extra dot in fname than in fname83
      000BA2 74 08            [12] 2815 	mov	a,#0x08
      000BA4 2A               [12] 2816 	add	a,r2
      000BA5 F9               [12] 2817 	mov	r1,a
      000BA6 E4               [12] 2818 	clr	a
      000BA7 3B               [12] 2819 	addc	a,r3
      000BA8 FF               [12] 2820 	mov	r7,a
      000BA9 E9               [12] 2821 	mov	a,r1
      000BAA 25 18            [12] 2822 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000BAC F9               [12] 2823 	mov	r1,a
      000BAD EF               [12] 2824 	mov	a,r7
      000BAE 35 19            [12] 2825 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000BB0 F8               [12] 2826 	mov	r0,a
      000BB1 AF 1A            [24] 2827 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000BB3 EA               [12] 2828 	mov	a,r2
      000BB4 2D               [12] 2829 	add	a,r5
      000BB5 FD               [12] 2830 	mov	r5,a
      000BB6 EB               [12] 2831 	mov	a,r3
      000BB7 3E               [12] 2832 	addc	a,r6
      000BB8 FE               [12] 2833 	mov	r6,a
      000BB9 0D               [12] 2834 	inc	r5
      000BBA BD 00 01         [24] 2835 	cjne	r5,#0x00,00194$
      000BBD 0E               [12] 2836 	inc	r6
      000BBE                       2837 00194$:
      000BBE ED               [12] 2838 	mov	a,r5
      000BBF 25 1B            [12] 2839 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000BC1 FD               [12] 2840 	mov	r5,a
      000BC2 EE               [12] 2841 	mov	a,r6
      000BC3 35 1C            [12] 2842 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000BC5 FE               [12] 2843 	mov	r6,a
      000BC6 AB 1D            [24] 2844 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000BC8 8D 82            [24] 2845 	mov	dpl,r5
      000BCA 8E 83            [24] 2846 	mov	dph,r6
      000BCC 8B F0            [24] 2847 	mov	b,r3
      000BCE 12 1B 6D         [24] 2848 	lcall	__gptrget
      000BD1 FD               [12] 2849 	mov	r5,a
      000BD2 89 82            [24] 2850 	mov	dpl,r1
      000BD4 88 83            [24] 2851 	mov	dph,r0
      000BD6 8F F0            [24] 2852 	mov	b,r7
      000BD8 12 1A 7A         [24] 2853 	lcall	__gptrput
                                   2854 ;	fat.h:204: for(uint8_t i=0;i<4;i++)
      000BDB 05 1E            [12] 2855 	inc	_HELPER_filename_to_8dot3filename_i_131072_131
      000BDD 02 0B 3D         [24] 2856 	ljmp	00125$
      000BE0                       2857 00118$:
                                   2858 ;	fat.h:229: return 3;// if reached here, then it is an error
      000BE0 75 82 03         [24] 2859 	mov	dpl,#0x03
                                   2860 ;	fat.h:230: }
      000BE3 22               [24] 2861 	ret
                                   2862 ;------------------------------------------------------------
                                   2863 ;Allocation info for local variables in function 'MBR_CHECK__SIGNATURE'
                                   2864 ;------------------------------------------------------------
                                   2865 ;signature                 Allocated to stack - _bp +1
                                   2866 ;------------------------------------------------------------
                                   2867 ;	fat.h:244: uint8_t MBR_CHECK__SIGNATURE() __reentrant
                                   2868 ;	-----------------------------------------
                                   2869 ;	 function MBR_CHECK__SIGNATURE
                                   2870 ;	-----------------------------------------
      000BE4                       2871 _MBR_CHECK__SIGNATURE:
      000BE4 C0 3E            [24] 2872 	push	_bp
      000BE6 85 81 3E         [24] 2873 	mov	_bp,sp
      000BE9 05 81            [12] 2874 	inc	sp
      000BEB 05 81            [12] 2875 	inc	sp
                                   2876 ;	fat.h:247: SDread(0,510,2,signature);
      000BED A9 3E            [24] 2877 	mov	r1,_bp
      000BEF 09               [12] 2878 	inc	r1
      000BF0 89 05            [24] 2879 	mov	ar5,r1
      000BF2 7E 00            [12] 2880 	mov	r6,#0x00
      000BF4 7F 40            [12] 2881 	mov	r7,#0x40
      000BF6 C0 01            [24] 2882 	push	ar1
      000BF8 C0 05            [24] 2883 	push	ar5
      000BFA C0 06            [24] 2884 	push	ar6
      000BFC C0 07            [24] 2885 	push	ar7
      000BFE 74 02            [12] 2886 	mov	a,#0x02
      000C00 C0 E0            [24] 2887 	push	acc
      000C02 E4               [12] 2888 	clr	a
      000C03 C0 E0            [24] 2889 	push	acc
      000C05 74 FE            [12] 2890 	mov	a,#0xfe
      000C07 C0 E0            [24] 2891 	push	acc
      000C09 F4               [12] 2892 	cpl	a
      000C0A C0 E0            [24] 2893 	push	acc
      000C0C 90 00 00         [24] 2894 	mov	dptr,#(0x00&0x00ff)
      000C0F E4               [12] 2895 	clr	a
      000C10 F5 F0            [12] 2896 	mov	b,a
      000C12 12 07 14         [24] 2897 	lcall	_SDread
      000C15 E5 81            [12] 2898 	mov	a,sp
      000C17 24 F9            [12] 2899 	add	a,#0xf9
      000C19 F5 81            [12] 2900 	mov	sp,a
      000C1B D0 01            [24] 2901 	pop	ar1
                                   2902 ;	fat.h:256: if(signature[0]==0x55 && signature[1]==0xAA) return 0;
      000C1D 87 07            [24] 2903 	mov	ar7,@r1
      000C1F BF 55 0B         [24] 2904 	cjne	r7,#0x55,00102$
      000C22 09               [12] 2905 	inc	r1
      000C23 87 07            [24] 2906 	mov	ar7,@r1
      000C25 BF AA 05         [24] 2907 	cjne	r7,#0xaa,00102$
      000C28 75 82 00         [24] 2908 	mov	dpl,#0x00
      000C2B 80 03            [24] 2909 	sjmp	00105$
      000C2D                       2910 00102$:
                                   2911 ;	fat.h:257: else return 1;
      000C2D 75 82 01         [24] 2912 	mov	dpl,#0x01
      000C30                       2913 00105$:
                                   2914 ;	fat.h:258: }
      000C30 85 3E 81         [24] 2915 	mov	sp,_bp
      000C33 D0 3E            [24] 2916 	pop	_bp
      000C35 22               [24] 2917 	ret
                                   2918 ;------------------------------------------------------------
                                   2919 ;Allocation info for local variables in function 'MBR_LOAD_PARTITION_TABLE_ENTRY'
                                   2920 ;------------------------------------------------------------
                                   2921 ;partition_number          Allocated to registers r7 
                                   2922 ;temp                      Allocated with name '_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137'
                                   2923 ;offset                    Allocated to registers r5 r6 
                                   2924 ;------------------------------------------------------------
                                   2925 ;	fat.h:260: uint8_t MBR_LOAD_PARTITION_TABLE_ENTRY(uint8_t partition_number)
                                   2926 ;	-----------------------------------------
                                   2927 ;	 function MBR_LOAD_PARTITION_TABLE_ENTRY
                                   2928 ;	-----------------------------------------
      000C36                       2929 _MBR_LOAD_PARTITION_TABLE_ENTRY:
      000C36 AF 82            [24] 2930 	mov	r7,dpl
                                   2931 ;	fat.h:263: __idata uint16_t offset= 446 + partition_number*16; // get to the nth partition entry out of 0,1,2,3
      000C38 8F 05            [24] 2932 	mov	ar5,r7
      000C3A E4               [12] 2933 	clr	a
      000C3B CD               [12] 2934 	xch	a,r5
      000C3C C4               [12] 2935 	swap	a
      000C3D CD               [12] 2936 	xch	a,r5
      000C3E 6D               [12] 2937 	xrl	a,r5
      000C3F CD               [12] 2938 	xch	a,r5
      000C40 54 F0            [12] 2939 	anl	a,#0xf0
      000C42 CD               [12] 2940 	xch	a,r5
      000C43 6D               [12] 2941 	xrl	a,r5
      000C44 FE               [12] 2942 	mov	r6,a
      000C45 74 BE            [12] 2943 	mov	a,#0xbe
      000C47 2D               [12] 2944 	add	a,r5
      000C48 FD               [12] 2945 	mov	r5,a
      000C49 74 01            [12] 2946 	mov	a,#0x01
      000C4B 3E               [12] 2947 	addc	a,r6
      000C4C FE               [12] 2948 	mov	r6,a
                                   2949 ;	fat.h:265: if(partition_number>4) 
      000C4D EF               [12] 2950 	mov	a,r7
      000C4E 24 FB            [12] 2951 	add	a,#0xff - 0x04
      000C50 50 04            [24] 2952 	jnc	00102$
                                   2953 ;	fat.h:272: return 1; //error
      000C52 75 82 01         [24] 2954 	mov	dpl,#0x01
      000C55 22               [24] 2955 	ret
      000C56                       2956 00102$:
                                   2957 ;	fat.h:275: SDread(0,offset,16,temp);
      000C56 74 84            [12] 2958 	mov	a,#_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137
      000C58 C0 E0            [24] 2959 	push	acc
      000C5A 74 00            [12] 2960 	mov	a,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 >> 8)
      000C5C C0 E0            [24] 2961 	push	acc
      000C5E 74 40            [12] 2962 	mov	a,#0x40
      000C60 C0 E0            [24] 2963 	push	acc
      000C62 74 10            [12] 2964 	mov	a,#0x10
      000C64 C0 E0            [24] 2965 	push	acc
      000C66 E4               [12] 2966 	clr	a
      000C67 C0 E0            [24] 2967 	push	acc
      000C69 C0 05            [24] 2968 	push	ar5
      000C6B C0 06            [24] 2969 	push	ar6
      000C6D 90 00 00         [24] 2970 	mov	dptr,#(0x00&0x00ff)
      000C70 E4               [12] 2971 	clr	a
      000C71 F5 F0            [12] 2972 	mov	b,a
      000C73 12 07 14         [24] 2973 	lcall	_SDread
      000C76 E5 81            [12] 2974 	mov	a,sp
      000C78 24 F9            [12] 2975 	add	a,#0xf9
      000C7A F5 81            [12] 2976 	mov	sp,a
                                   2977 ;	fat.h:277: __global_partitionTableEntry.type = temp[4]; // type offset is 4
      000C7C 78 88            [12] 2978 	mov	r0,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x0004)
      000C7E 86 07            [24] 2979 	mov	ar7,@r0
      000C80 78 43            [12] 2980 	mov	r0,#___global_partitionTableEntry
      000C82 A6 07            [24] 2981 	mov	@r0,ar7
                                   2982 ;	fat.h:278: __global_partitionTableEntry.start=HELPER_load_littleendian32(&temp[8]); //partition start LBA offset is 8
      000C84 90 00 8C         [24] 2983 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x0008)
      000C87 75 F0 40         [24] 2984 	mov	b,#0x40
      000C8A 12 08 88         [24] 2985 	lcall	_HELPER_load_littleendian32
      000C8D AC 82            [24] 2986 	mov	r4,dpl
      000C8F AD 83            [24] 2987 	mov	r5,dph
      000C91 AE F0            [24] 2988 	mov	r6,b
      000C93 FF               [12] 2989 	mov	r7,a
      000C94 78 44            [12] 2990 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000C96 A6 04            [24] 2991 	mov	@r0,ar4
      000C98 08               [12] 2992 	inc	r0
      000C99 A6 05            [24] 2993 	mov	@r0,ar5
      000C9B 08               [12] 2994 	inc	r0
      000C9C A6 06            [24] 2995 	mov	@r0,ar6
      000C9E 08               [12] 2996 	inc	r0
      000C9F A6 07            [24] 2997 	mov	@r0,ar7
                                   2998 ;	fat.h:279: __global_partitionTableEntry.size=HELPER_load_littleendian32(&temp[12]); //partiiton size offset is 12
      000CA1 90 00 90         [24] 2999 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x000c)
      000CA4 75 F0 40         [24] 3000 	mov	b,#0x40
      000CA7 12 08 88         [24] 3001 	lcall	_HELPER_load_littleendian32
      000CAA AC 82            [24] 3002 	mov	r4,dpl
      000CAC AD 83            [24] 3003 	mov	r5,dph
      000CAE AE F0            [24] 3004 	mov	r6,b
      000CB0 FF               [12] 3005 	mov	r7,a
      000CB1 78 48            [12] 3006 	mov	r0,#(___global_partitionTableEntry + 0x0005)
      000CB3 A6 04            [24] 3007 	mov	@r0,ar4
      000CB5 08               [12] 3008 	inc	r0
      000CB6 A6 05            [24] 3009 	mov	@r0,ar5
      000CB8 08               [12] 3010 	inc	r0
      000CB9 A6 06            [24] 3011 	mov	@r0,ar6
      000CBB 08               [12] 3012 	inc	r0
      000CBC A6 07            [24] 3013 	mov	@r0,ar7
                                   3014 ;	fat.h:281: return 0;
      000CBE 75 82 00         [24] 3015 	mov	dpl,#0x00
                                   3016 ;	fat.h:283: }
      000CC1 22               [24] 3017 	ret
                                   3018 ;------------------------------------------------------------
                                   3019 ;Allocation info for local variables in function 'MBR_DETECT_FAT16'
                                   3020 ;------------------------------------------------------------
                                   3021 ;result                    Allocated to registers r7 
                                   3022 ;i                         Allocated to registers r6 
                                   3023 ;------------------------------------------------------------
                                   3024 ;	fat.h:285: uint8_t MBR_DETECT_FAT16()
                                   3025 ;	-----------------------------------------
                                   3026 ;	 function MBR_DETECT_FAT16
                                   3027 ;	-----------------------------------------
      000CC2                       3028 _MBR_DETECT_FAT16:
                                   3029 ;	fat.h:290: uint8_t result=0;
      000CC2 7F 00            [12] 3030 	mov	r7,#0x00
                                   3031 ;	fat.h:292: for(uint8_t i=0;i<4;i++) 
      000CC4 7E 00            [12] 3032 	mov	r6,#0x00
      000CC6                       3033 00105$:
      000CC6 BE 04 00         [24] 3034 	cjne	r6,#0x04,00122$
      000CC9                       3035 00122$:
      000CC9 50 2B            [24] 3036 	jnc	00103$
                                   3037 ;	fat.h:294: MBR_LOAD_PARTITION_TABLE_ENTRY(i);
      000CCB 8E 82            [24] 3038 	mov	dpl,r6
      000CCD C0 07            [24] 3039 	push	ar7
      000CCF C0 06            [24] 3040 	push	ar6
      000CD1 12 0C 36         [24] 3041 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000CD4 D0 06            [24] 3042 	pop	ar6
      000CD6 D0 07            [24] 3043 	pop	ar7
                                   3044 ;	fat.h:295: if(__global_partitionTableEntry.type==FAT16_PARTITION_TYPE_ID) result |= (1<<i); //set corresponding bit
      000CD8 78 43            [12] 3045 	mov	r0,#___global_partitionTableEntry
      000CDA 86 05            [24] 3046 	mov	ar5,@r0
      000CDC BD 06 14         [24] 3047 	cjne	r5,#0x06,00106$
      000CDF 8E 05            [24] 3048 	mov	ar5,r6
      000CE1 8D F0            [24] 3049 	mov	b,r5
      000CE3 05 F0            [12] 3050 	inc	b
      000CE5 74 01            [12] 3051 	mov	a,#0x01
      000CE7 80 02            [24] 3052 	sjmp	00128$
      000CE9                       3053 00126$:
      000CE9 25 E0            [12] 3054 	add	a,acc
      000CEB                       3055 00128$:
      000CEB D5 F0 FB         [24] 3056 	djnz	b,00126$
      000CEE FD               [12] 3057 	mov	r5,a
      000CEF 8F 04            [24] 3058 	mov	ar4,r7
      000CF1 4C               [12] 3059 	orl	a,r4
      000CF2 FF               [12] 3060 	mov	r7,a
      000CF3                       3061 00106$:
                                   3062 ;	fat.h:292: for(uint8_t i=0;i<4;i++) 
      000CF3 0E               [12] 3063 	inc	r6
      000CF4 80 D0            [24] 3064 	sjmp	00105$
      000CF6                       3065 00103$:
                                   3066 ;	fat.h:304: return result;
      000CF6 8F 82            [24] 3067 	mov	dpl,r7
                                   3068 ;	fat.h:305: }
      000CF8 22               [24] 3069 	ret
                                   3070 ;------------------------------------------------------------
                                   3071 ;Allocation info for local variables in function 'VBR_DUMP'
                                   3072 ;------------------------------------------------------------
                                   3073 ;	fat.h:312: void VBR_DUMP() __reentrant
                                   3074 ;	-----------------------------------------
                                   3075 ;	 function VBR_DUMP
                                   3076 ;	-----------------------------------------
      000CF9                       3077 _VBR_DUMP:
                                   3078 ;	fat.h:314: UartPrint("VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start,roote_start,data_start\n"); 
      000CF9 90 1C 1C         [24] 3079 	mov	dptr,#___str_1
      000CFC 75 F0 80         [24] 3080 	mov	b,#0x80
      000CFF 12 01 81         [24] 3081 	lcall	_UartPrint
                                   3082 ;	fat.h:315: UartPrintNumber(__global_vbr.volumeStartSector);UartWrite(',');
      000D02 78 4C            [12] 3083 	mov	r0,#___global_vbr
      000D04 86 04            [24] 3084 	mov	ar4,@r0
      000D06 08               [12] 3085 	inc	r0
      000D07 86 05            [24] 3086 	mov	ar5,@r0
      000D09 08               [12] 3087 	inc	r0
      000D0A 86 06            [24] 3088 	mov	ar6,@r0
      000D0C 08               [12] 3089 	inc	r0
      000D0D 86 07            [24] 3090 	mov	ar7,@r0
      000D0F 8C 82            [24] 3091 	mov	dpl,r4
      000D11 8D 83            [24] 3092 	mov	dph,r5
      000D13 8E F0            [24] 3093 	mov	b,r6
      000D15 EF               [12] 3094 	mov	a,r7
      000D16 12 02 C7         [24] 3095 	lcall	_UartPrintNumber
      000D19 75 82 2C         [24] 3096 	mov	dpl,#0x2c
      000D1C 12 00 FB         [24] 3097 	lcall	_UartWrite
                                   3098 ;	fat.h:316: UartPrintNumber(__global_vbr.bps);UartWrite(',');
      000D1F 78 52            [12] 3099 	mov	r0,#(___global_vbr + 0x0006)
      000D21 86 06            [24] 3100 	mov	ar6,@r0
      000D23 08               [12] 3101 	inc	r0
      000D24 86 07            [24] 3102 	mov	ar7,@r0
      000D26 7D 00            [12] 3103 	mov	r5,#0x00
      000D28 7C 00            [12] 3104 	mov	r4,#0x00
      000D2A 8E 82            [24] 3105 	mov	dpl,r6
      000D2C 8F 83            [24] 3106 	mov	dph,r7
      000D2E 8D F0            [24] 3107 	mov	b,r5
      000D30 EC               [12] 3108 	mov	a,r4
      000D31 12 02 C7         [24] 3109 	lcall	_UartPrintNumber
      000D34 75 82 2C         [24] 3110 	mov	dpl,#0x2c
      000D37 12 00 FB         [24] 3111 	lcall	_UartWrite
                                   3112 ;	fat.h:317: UartPrintNumber(__global_vbr.spc);UartWrite(',');
      000D3A 78 54            [12] 3113 	mov	r0,#(___global_vbr + 0x0008)
      000D3C 86 07            [24] 3114 	mov	ar7,@r0
      000D3E 7E 00            [12] 3115 	mov	r6,#0x00
      000D40 7D 00            [12] 3116 	mov	r5,#0x00
      000D42 7C 00            [12] 3117 	mov	r4,#0x00
      000D44 8F 82            [24] 3118 	mov	dpl,r7
      000D46 8E 83            [24] 3119 	mov	dph,r6
      000D48 8D F0            [24] 3120 	mov	b,r5
      000D4A EC               [12] 3121 	mov	a,r4
      000D4B 12 02 C7         [24] 3122 	lcall	_UartPrintNumber
      000D4E 75 82 2C         [24] 3123 	mov	dpl,#0x2c
      000D51 12 00 FB         [24] 3124 	lcall	_UartWrite
                                   3125 ;	fat.h:318: UartPrintNumber(__global_vbr.reservedSectors);UartWrite(',');
      000D54 78 50            [12] 3126 	mov	r0,#(___global_vbr + 0x0004)
      000D56 86 06            [24] 3127 	mov	ar6,@r0
      000D58 08               [12] 3128 	inc	r0
      000D59 86 07            [24] 3129 	mov	ar7,@r0
      000D5B 7D 00            [12] 3130 	mov	r5,#0x00
      000D5D 7C 00            [12] 3131 	mov	r4,#0x00
      000D5F 8E 82            [24] 3132 	mov	dpl,r6
      000D61 8F 83            [24] 3133 	mov	dph,r7
      000D63 8D F0            [24] 3134 	mov	b,r5
      000D65 EC               [12] 3135 	mov	a,r4
      000D66 12 02 C7         [24] 3136 	lcall	_UartPrintNumber
      000D69 75 82 2C         [24] 3137 	mov	dpl,#0x2c
      000D6C 12 00 FB         [24] 3138 	lcall	_UartWrite
                                   3139 ;	fat.h:319: UartPrintNumber(__global_vbr.nfat);UartWrite(',');
      000D6F 78 55            [12] 3140 	mov	r0,#(___global_vbr + 0x0009)
      000D71 86 06            [24] 3141 	mov	ar6,@r0
      000D73 08               [12] 3142 	inc	r0
      000D74 86 07            [24] 3143 	mov	ar7,@r0
      000D76 7D 00            [12] 3144 	mov	r5,#0x00
      000D78 7C 00            [12] 3145 	mov	r4,#0x00
      000D7A 8E 82            [24] 3146 	mov	dpl,r6
      000D7C 8F 83            [24] 3147 	mov	dph,r7
      000D7E 8D F0            [24] 3148 	mov	b,r5
      000D80 EC               [12] 3149 	mov	a,r4
      000D81 12 02 C7         [24] 3150 	lcall	_UartPrintNumber
      000D84 75 82 2C         [24] 3151 	mov	dpl,#0x2c
      000D87 12 00 FB         [24] 3152 	lcall	_UartWrite
                                   3153 ;	fat.h:320: UartPrintNumber(__global_vbr.nroote);UartWrite(',');
      000D8A 78 59            [12] 3154 	mov	r0,#(___global_vbr + 0x000d)
      000D8C 86 06            [24] 3155 	mov	ar6,@r0
      000D8E 08               [12] 3156 	inc	r0
      000D8F 86 07            [24] 3157 	mov	ar7,@r0
      000D91 7D 00            [12] 3158 	mov	r5,#0x00
      000D93 7C 00            [12] 3159 	mov	r4,#0x00
      000D95 8E 82            [24] 3160 	mov	dpl,r6
      000D97 8F 83            [24] 3161 	mov	dph,r7
      000D99 8D F0            [24] 3162 	mov	b,r5
      000D9B EC               [12] 3163 	mov	a,r4
      000D9C 12 02 C7         [24] 3164 	lcall	_UartPrintNumber
      000D9F 75 82 2C         [24] 3165 	mov	dpl,#0x2c
      000DA2 12 00 FB         [24] 3166 	lcall	_UartWrite
                                   3167 ;	fat.h:321: UartPrintNumber(__global_vbr.spf);UartWrite(',');
      000DA5 78 57            [12] 3168 	mov	r0,#(___global_vbr + 0x000b)
      000DA7 86 06            [24] 3169 	mov	ar6,@r0
      000DA9 08               [12] 3170 	inc	r0
      000DAA 86 07            [24] 3171 	mov	ar7,@r0
      000DAC 7D 00            [12] 3172 	mov	r5,#0x00
      000DAE 7C 00            [12] 3173 	mov	r4,#0x00
      000DB0 8E 82            [24] 3174 	mov	dpl,r6
      000DB2 8F 83            [24] 3175 	mov	dph,r7
      000DB4 8D F0            [24] 3176 	mov	b,r5
      000DB6 EC               [12] 3177 	mov	a,r4
      000DB7 12 02 C7         [24] 3178 	lcall	_UartPrintNumber
      000DBA 75 82 2C         [24] 3179 	mov	dpl,#0x2c
      000DBD 12 00 FB         [24] 3180 	lcall	_UartWrite
                                   3181 ;	fat.h:323: UartPrintNumber(__global_vbr.addr_fat_start);UartWrite(',');
      000DC0 78 5F            [12] 3182 	mov	r0,#(___global_vbr + 0x0013)
      000DC2 86 04            [24] 3183 	mov	ar4,@r0
      000DC4 08               [12] 3184 	inc	r0
      000DC5 86 05            [24] 3185 	mov	ar5,@r0
      000DC7 08               [12] 3186 	inc	r0
      000DC8 86 06            [24] 3187 	mov	ar6,@r0
      000DCA 08               [12] 3188 	inc	r0
      000DCB 86 07            [24] 3189 	mov	ar7,@r0
      000DCD 8C 82            [24] 3190 	mov	dpl,r4
      000DCF 8D 83            [24] 3191 	mov	dph,r5
      000DD1 8E F0            [24] 3192 	mov	b,r6
      000DD3 EF               [12] 3193 	mov	a,r7
      000DD4 12 02 C7         [24] 3194 	lcall	_UartPrintNumber
      000DD7 75 82 2C         [24] 3195 	mov	dpl,#0x2c
      000DDA 12 00 FB         [24] 3196 	lcall	_UartWrite
                                   3197 ;	fat.h:324: UartPrintNumber(__global_vbr.addr_roote_start);UartWrite(',');
      000DDD 78 63            [12] 3198 	mov	r0,#(___global_vbr + 0x0017)
      000DDF 86 04            [24] 3199 	mov	ar4,@r0
      000DE1 08               [12] 3200 	inc	r0
      000DE2 86 05            [24] 3201 	mov	ar5,@r0
      000DE4 08               [12] 3202 	inc	r0
      000DE5 86 06            [24] 3203 	mov	ar6,@r0
      000DE7 08               [12] 3204 	inc	r0
      000DE8 86 07            [24] 3205 	mov	ar7,@r0
      000DEA 8C 82            [24] 3206 	mov	dpl,r4
      000DEC 8D 83            [24] 3207 	mov	dph,r5
      000DEE 8E F0            [24] 3208 	mov	b,r6
      000DF0 EF               [12] 3209 	mov	a,r7
      000DF1 12 02 C7         [24] 3210 	lcall	_UartPrintNumber
      000DF4 75 82 2C         [24] 3211 	mov	dpl,#0x2c
      000DF7 12 00 FB         [24] 3212 	lcall	_UartWrite
                                   3213 ;	fat.h:325: UartPrintNumber(__global_vbr.addr_data_start);UartWrite(',');
      000DFA 78 67            [12] 3214 	mov	r0,#(___global_vbr + 0x001b)
      000DFC 86 04            [24] 3215 	mov	ar4,@r0
      000DFE 08               [12] 3216 	inc	r0
      000DFF 86 05            [24] 3217 	mov	ar5,@r0
      000E01 08               [12] 3218 	inc	r0
      000E02 86 06            [24] 3219 	mov	ar6,@r0
      000E04 08               [12] 3220 	inc	r0
      000E05 86 07            [24] 3221 	mov	ar7,@r0
      000E07 8C 82            [24] 3222 	mov	dpl,r4
      000E09 8D 83            [24] 3223 	mov	dph,r5
      000E0B 8E F0            [24] 3224 	mov	b,r6
      000E0D EF               [12] 3225 	mov	a,r7
      000E0E 12 02 C7         [24] 3226 	lcall	_UartPrintNumber
      000E11 75 82 2C         [24] 3227 	mov	dpl,#0x2c
      000E14 12 00 FB         [24] 3228 	lcall	_UartWrite
                                   3229 ;	fat.h:326: UartWrite('\n');
      000E17 75 82 0A         [24] 3230 	mov	dpl,#0x0a
                                   3231 ;	fat.h:327: }
      000E1A 02 00 FB         [24] 3232 	ljmp	_UartWrite
                                   3233 ;------------------------------------------------------------
                                   3234 ;Allocation info for local variables in function 'VBR_MOUNT_VBR'
                                   3235 ;------------------------------------------------------------
                                   3236 ;partition_number          Allocated to registers r7 
                                   3237 ;sloc0                     Allocated with name '_VBR_MOUNT_VBR_sloc0_1_0'
                                   3238 ;temp                      Allocated with name '_VBR_MOUNT_VBR_temp_65536_144'
                                   3239 ;------------------------------------------------------------
                                   3240 ;	fat.h:330: uint8_t VBR_MOUNT_VBR(uint8_t partition_number)
                                   3241 ;	-----------------------------------------
                                   3242 ;	 function VBR_MOUNT_VBR
                                   3243 ;	-----------------------------------------
      000E1D                       3244 _VBR_MOUNT_VBR:
      000E1D AF 82            [24] 3245 	mov	r7,dpl
                                   3246 ;	fat.h:336: if(__global_nthPartitionVBRmounted == partition_number ) 
      000E1F 78 6B            [12] 3247 	mov	r0,#___global_nthPartitionVBRmounted
      000E21 E6               [12] 3248 	mov	a,@r0
      000E22 B5 07 04         [24] 3249 	cjne	a,ar7,00102$
                                   3250 ;	fat.h:344: return 0; //return if already loaded, else continue;
      000E25 75 82 00         [24] 3251 	mov	dpl,#0x00
      000E28 22               [24] 3252 	ret
      000E29                       3253 00102$:
                                   3254 ;	fat.h:355: __global_nthPartitionVBRmounted=partition_number; //set global variable
      000E29 78 6B            [12] 3255 	mov	r0,#___global_nthPartitionVBRmounted
      000E2B A6 07            [24] 3256 	mov	@r0,ar7
                                   3257 ;	fat.h:358: if(MBR_LOAD_PARTITION_TABLE_ENTRY(partition_number))  //if error, 0 is success
      000E2D 8F 82            [24] 3258 	mov	dpl,r7
      000E2F 12 0C 36         [24] 3259 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000E32 E5 82            [12] 3260 	mov	a,dpl
      000E34 60 04            [24] 3261 	jz	00104$
                                   3262 ;	fat.h:360: return 1; //return error
      000E36 75 82 01         [24] 3263 	mov	dpl,#0x01
      000E39 22               [24] 3264 	ret
      000E3A                       3265 00104$:
                                   3266 ;	fat.h:364: SDread(__global_partitionTableEntry.start,0,16,temp);
      000E3A 78 44            [12] 3267 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000E3C 86 04            [24] 3268 	mov	ar4,@r0
      000E3E 08               [12] 3269 	inc	r0
      000E3F 86 05            [24] 3270 	mov	ar5,@r0
      000E41 08               [12] 3271 	inc	r0
      000E42 86 06            [24] 3272 	mov	ar6,@r0
      000E44 08               [12] 3273 	inc	r0
      000E45 86 07            [24] 3274 	mov	ar7,@r0
      000E47 74 94            [12] 3275 	mov	a,#_VBR_MOUNT_VBR_temp_65536_144
      000E49 C0 E0            [24] 3276 	push	acc
      000E4B 74 00            [12] 3277 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_144 >> 8)
      000E4D C0 E0            [24] 3278 	push	acc
      000E4F 74 40            [12] 3279 	mov	a,#0x40
      000E51 C0 E0            [24] 3280 	push	acc
      000E53 74 10            [12] 3281 	mov	a,#0x10
      000E55 C0 E0            [24] 3282 	push	acc
      000E57 E4               [12] 3283 	clr	a
      000E58 C0 E0            [24] 3284 	push	acc
      000E5A C0 E0            [24] 3285 	push	acc
      000E5C C0 E0            [24] 3286 	push	acc
      000E5E 8C 82            [24] 3287 	mov	dpl,r4
      000E60 8D 83            [24] 3288 	mov	dph,r5
      000E62 8E F0            [24] 3289 	mov	b,r6
      000E64 EF               [12] 3290 	mov	a,r7
      000E65 12 07 14         [24] 3291 	lcall	_SDread
      000E68 E5 81            [12] 3292 	mov	a,sp
      000E6A 24 F9            [12] 3293 	add	a,#0xf9
      000E6C F5 81            [12] 3294 	mov	sp,a
                                   3295 ;	fat.h:373: __global_vbr.volumeStartSector = __global_partitionTableEntry.start;
      000E6E 78 44            [12] 3296 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000E70 86 04            [24] 3297 	mov	ar4,@r0
      000E72 08               [12] 3298 	inc	r0
      000E73 86 05            [24] 3299 	mov	ar5,@r0
      000E75 08               [12] 3300 	inc	r0
      000E76 86 06            [24] 3301 	mov	ar6,@r0
      000E78 08               [12] 3302 	inc	r0
      000E79 86 07            [24] 3303 	mov	ar7,@r0
      000E7B 78 4C            [12] 3304 	mov	r0,#___global_vbr
      000E7D A6 04            [24] 3305 	mov	@r0,ar4
      000E7F 08               [12] 3306 	inc	r0
      000E80 A6 05            [24] 3307 	mov	@r0,ar5
      000E82 08               [12] 3308 	inc	r0
      000E83 A6 06            [24] 3309 	mov	@r0,ar6
      000E85 08               [12] 3310 	inc	r0
      000E86 A6 07            [24] 3311 	mov	@r0,ar7
                                   3312 ;	fat.h:375: __global_vbr.bps = HELPER_load_littleendian16(&temp[0x0b]); // bps starts at offset 0x0b
      000E88 90 00 9F         [24] 3313 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000b)
      000E8B 75 F0 40         [24] 3314 	mov	b,#0x40
      000E8E 12 08 5A         [24] 3315 	lcall	_HELPER_load_littleendian16
      000E91 E5 82            [12] 3316 	mov	a,dpl
      000E93 85 83 F0         [24] 3317 	mov	b,dph
      000E96 78 52            [12] 3318 	mov	r0,#(___global_vbr + 0x0006)
      000E98 F6               [12] 3319 	mov	@r0,a
      000E99 08               [12] 3320 	inc	r0
      000E9A A6 F0            [24] 3321 	mov	@r0,b
                                   3322 ;	fat.h:376: __global_vbr.spc = temp[0x0d]; //spc offset 0x0d
      000E9C 78 A1            [12] 3323 	mov	r0,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000d)
      000E9E 86 07            [24] 3324 	mov	ar7,@r0
      000EA0 78 54            [12] 3325 	mov	r0,#(___global_vbr + 0x0008)
      000EA2 A6 07            [24] 3326 	mov	@r0,ar7
                                   3327 ;	fat.h:377: __global_vbr.reservedSectors = HELPER_load_littleendian16(&temp[0x0e]);
      000EA4 90 00 A2         [24] 3328 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000e)
      000EA7 75 F0 40         [24] 3329 	mov	b,#0x40
      000EAA 12 08 5A         [24] 3330 	lcall	_HELPER_load_littleendian16
      000EAD E5 82            [12] 3331 	mov	a,dpl
      000EAF 85 83 F0         [24] 3332 	mov	b,dph
      000EB2 78 50            [12] 3333 	mov	r0,#(___global_vbr + 0x0004)
      000EB4 F6               [12] 3334 	mov	@r0,a
      000EB5 08               [12] 3335 	inc	r0
      000EB6 A6 F0            [24] 3336 	mov	@r0,b
                                   3337 ;	fat.h:381: SDread(__global_partitionTableEntry.start,16,16,temp);
      000EB8 78 44            [12] 3338 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000EBA 86 04            [24] 3339 	mov	ar4,@r0
      000EBC 08               [12] 3340 	inc	r0
      000EBD 86 05            [24] 3341 	mov	ar5,@r0
      000EBF 08               [12] 3342 	inc	r0
      000EC0 86 06            [24] 3343 	mov	ar6,@r0
      000EC2 08               [12] 3344 	inc	r0
      000EC3 86 07            [24] 3345 	mov	ar7,@r0
      000EC5 74 94            [12] 3346 	mov	a,#_VBR_MOUNT_VBR_temp_65536_144
      000EC7 C0 E0            [24] 3347 	push	acc
      000EC9 74 00            [12] 3348 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_144 >> 8)
      000ECB C0 E0            [24] 3349 	push	acc
      000ECD 74 40            [12] 3350 	mov	a,#0x40
      000ECF C0 E0            [24] 3351 	push	acc
      000ED1 74 10            [12] 3352 	mov	a,#0x10
      000ED3 C0 E0            [24] 3353 	push	acc
      000ED5 E4               [12] 3354 	clr	a
      000ED6 C0 E0            [24] 3355 	push	acc
      000ED8 74 10            [12] 3356 	mov	a,#0x10
      000EDA C0 E0            [24] 3357 	push	acc
      000EDC E4               [12] 3358 	clr	a
      000EDD C0 E0            [24] 3359 	push	acc
      000EDF 8C 82            [24] 3360 	mov	dpl,r4
      000EE1 8D 83            [24] 3361 	mov	dph,r5
      000EE3 8E F0            [24] 3362 	mov	b,r6
      000EE5 EF               [12] 3363 	mov	a,r7
      000EE6 12 07 14         [24] 3364 	lcall	_SDread
      000EE9 E5 81            [12] 3365 	mov	a,sp
      000EEB 24 F9            [12] 3366 	add	a,#0xf9
      000EED F5 81            [12] 3367 	mov	sp,a
                                   3368 ;	fat.h:390: __global_vbr.nfat = HELPER_load_littleendian16(&temp[0x10-16]); //offset of nfat is 0x01, but we subtract 16 as we have read from 16 offset in SDread
      000EEF 90 00 94         [24] 3369 	mov	dptr,#_VBR_MOUNT_VBR_temp_65536_144
      000EF2 75 F0 40         [24] 3370 	mov	b,#0x40
      000EF5 12 08 5A         [24] 3371 	lcall	_HELPER_load_littleendian16
      000EF8 E5 82            [12] 3372 	mov	a,dpl
      000EFA 85 83 F0         [24] 3373 	mov	b,dph
      000EFD 78 55            [12] 3374 	mov	r0,#(___global_vbr + 0x0009)
      000EFF F6               [12] 3375 	mov	@r0,a
      000F00 08               [12] 3376 	inc	r0
      000F01 A6 F0            [24] 3377 	mov	@r0,b
                                   3378 ;	fat.h:391: __global_vbr.nroote = HELPER_load_littleendian16(&temp[0x11-16]); //offset of number_root_entrie is 0x11
      000F03 90 00 95         [24] 3379 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x0001)
      000F06 75 F0 40         [24] 3380 	mov	b,#0x40
      000F09 12 08 5A         [24] 3381 	lcall	_HELPER_load_littleendian16
      000F0C E5 82            [12] 3382 	mov	a,dpl
      000F0E 85 83 F0         [24] 3383 	mov	b,dph
      000F11 78 59            [12] 3384 	mov	r0,#(___global_vbr + 0x000d)
      000F13 F6               [12] 3385 	mov	@r0,a
      000F14 08               [12] 3386 	inc	r0
      000F15 A6 F0            [24] 3387 	mov	@r0,b
                                   3388 ;	fat.h:392: __global_vbr.spf = HELPER_load_littleendian16(&temp[0x16-16]); //offset of sectors_per_fat is 0x16
      000F17 90 00 9A         [24] 3389 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x0006)
      000F1A 75 F0 40         [24] 3390 	mov	b,#0x40
      000F1D 12 08 5A         [24] 3391 	lcall	_HELPER_load_littleendian16
      000F20 AE 82            [24] 3392 	mov	r6,dpl
      000F22 AF 83            [24] 3393 	mov	r7,dph
      000F24 78 57            [12] 3394 	mov	r0,#(___global_vbr + 0x000b)
      000F26 A6 06            [24] 3395 	mov	@r0,ar6
      000F28 08               [12] 3396 	inc	r0
      000F29 A6 07            [24] 3397 	mov	@r0,ar7
                                   3398 ;	fat.h:401: __global_vbr.bpc =  (uint32_t)__global_vbr.bps * (uint32_t)__global_vbr.spc; 
      000F2B 78 52            [12] 3399 	mov	r0,#(___global_vbr + 0x0006)
      000F2D 86 04            [24] 3400 	mov	ar4,@r0
      000F2F 08               [12] 3401 	inc	r0
      000F30 86 05            [24] 3402 	mov	ar5,@r0
      000F32 8C 1F            [24] 3403 	mov	_VBR_MOUNT_VBR_sloc0_1_0,r4
      000F34 8D 20            [24] 3404 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),r5
      000F36 75 21 00         [24] 3405 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),#0x00
      000F39 75 22 00         [24] 3406 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),#0x00
      000F3C 78 54            [12] 3407 	mov	r0,#(___global_vbr + 0x0008)
      000F3E 86 05            [24] 3408 	mov	ar5,@r0
      000F40 8D 3F            [24] 3409 	mov	__mullong_PARM_2,r5
      000F42 75 40 00         [24] 3410 	mov	(__mullong_PARM_2 + 1),#0x00
      000F45 75 41 00         [24] 3411 	mov	(__mullong_PARM_2 + 2),#0x00
      000F48 75 42 00         [24] 3412 	mov	(__mullong_PARM_2 + 3),#0x00
      000F4B 85 1F 82         [24] 3413 	mov	dpl,_VBR_MOUNT_VBR_sloc0_1_0
      000F4E 85 20 83         [24] 3414 	mov	dph,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F51 85 21 F0         [24] 3415 	mov	b,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F54 E5 22            [12] 3416 	mov	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000F56 C0 07            [24] 3417 	push	ar7
      000F58 C0 06            [24] 3418 	push	ar6
      000F5A 12 1A FF         [24] 3419 	lcall	__mullong
      000F5D AA 82            [24] 3420 	mov	r2,dpl
      000F5F AB 83            [24] 3421 	mov	r3,dph
      000F61 AC F0            [24] 3422 	mov	r4,b
      000F63 FD               [12] 3423 	mov	r5,a
      000F64 D0 06            [24] 3424 	pop	ar6
      000F66 D0 07            [24] 3425 	pop	ar7
      000F68 78 5B            [12] 3426 	mov	r0,#(___global_vbr + 0x000f)
      000F6A A6 02            [24] 3427 	mov	@r0,ar2
      000F6C 08               [12] 3428 	inc	r0
      000F6D A6 03            [24] 3429 	mov	@r0,ar3
      000F6F 08               [12] 3430 	inc	r0
      000F70 A6 04            [24] 3431 	mov	@r0,ar4
      000F72 08               [12] 3432 	inc	r0
      000F73 A6 05            [24] 3433 	mov	@r0,ar5
                                   3434 ;	fat.h:404: __global_vbr.addr_fat_start = __global_vbr.volumeStartSector + __global_vbr.reservedSectors;
      000F75 78 4C            [12] 3435 	mov	r0,#___global_vbr
      000F77 86 1F            [24] 3436 	mov	_VBR_MOUNT_VBR_sloc0_1_0,@r0
      000F79 08               [12] 3437 	inc	r0
      000F7A 86 20            [24] 3438 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),@r0
      000F7C 08               [12] 3439 	inc	r0
      000F7D 86 21            [24] 3440 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),@r0
      000F7F 08               [12] 3441 	inc	r0
      000F80 86 22            [24] 3442 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),@r0
      000F82 78 50            [12] 3443 	mov	r0,#(___global_vbr + 0x0004)
      000F84 86 04            [24] 3444 	mov	ar4,@r0
      000F86 08               [12] 3445 	inc	r0
      000F87 86 05            [24] 3446 	mov	ar5,@r0
      000F89 E4               [12] 3447 	clr	a
      000F8A FB               [12] 3448 	mov	r3,a
      000F8B FA               [12] 3449 	mov	r2,a
      000F8C EC               [12] 3450 	mov	a,r4
      000F8D 25 1F            [12] 3451 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000F8F F5 1F            [12] 3452 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000F91 ED               [12] 3453 	mov	a,r5
      000F92 35 20            [12] 3454 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F94 F5 20            [12] 3455 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000F96 EB               [12] 3456 	mov	a,r3
      000F97 35 21            [12] 3457 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F99 F5 21            [12] 3458 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      000F9B EA               [12] 3459 	mov	a,r2
      000F9C 35 22            [12] 3460 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000F9E F5 22            [12] 3461 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      000FA0 78 5F            [12] 3462 	mov	r0,#(___global_vbr + 0x0013)
      000FA2 A6 1F            [24] 3463 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      000FA4 08               [12] 3464 	inc	r0
      000FA5 A6 20            [24] 3465 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FA7 08               [12] 3466 	inc	r0
      000FA8 A6 21            [24] 3467 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FAA 08               [12] 3468 	inc	r0
      000FAB A6 22            [24] 3469 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3470 ;	fat.h:405: __global_vbr.addr_roote_start = __global_vbr.addr_fat_start + __global_vbr.nfat * __global_vbr.spf;
      000FAD 78 55            [12] 3471 	mov	r0,#(___global_vbr + 0x0009)
      000FAF 86 82            [24] 3472 	mov	dpl,@r0
      000FB1 08               [12] 3473 	inc	r0
      000FB2 86 83            [24] 3474 	mov	dph,@r0
      000FB4 8E 3F            [24] 3475 	mov	__mulint_PARM_2,r6
      000FB6 8F 40            [24] 3476 	mov	(__mulint_PARM_2 + 1),r7
      000FB8 12 1A 95         [24] 3477 	lcall	__mulint
      000FBB AE 82            [24] 3478 	mov	r6,dpl
      000FBD AF 83            [24] 3479 	mov	r7,dph
      000FBF 8E 04            [24] 3480 	mov	ar4,r6
      000FC1 8F 05            [24] 3481 	mov	ar5,r7
      000FC3 E4               [12] 3482 	clr	a
      000FC4 FE               [12] 3483 	mov	r6,a
      000FC5 FF               [12] 3484 	mov	r7,a
      000FC6 EC               [12] 3485 	mov	a,r4
      000FC7 25 1F            [12] 3486 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000FC9 F5 1F            [12] 3487 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000FCB ED               [12] 3488 	mov	a,r5
      000FCC 35 20            [12] 3489 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FCE F5 20            [12] 3490 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000FD0 EE               [12] 3491 	mov	a,r6
      000FD1 35 21            [12] 3492 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FD3 F5 21            [12] 3493 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      000FD5 EF               [12] 3494 	mov	a,r7
      000FD6 35 22            [12] 3495 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000FD8 F5 22            [12] 3496 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      000FDA 78 63            [12] 3497 	mov	r0,#(___global_vbr + 0x0017)
      000FDC A6 1F            [24] 3498 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      000FDE 08               [12] 3499 	inc	r0
      000FDF A6 20            [24] 3500 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FE1 08               [12] 3501 	inc	r0
      000FE2 A6 21            [24] 3502 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FE4 08               [12] 3503 	inc	r0
      000FE5 A6 22            [24] 3504 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3505 ;	fat.h:406: __global_vbr.addr_data_start = __global_vbr.addr_roote_start + (__global_vbr.nroote*32)/__global_vbr.bps;
      000FE7 78 59            [12] 3506 	mov	r0,#(___global_vbr + 0x000d)
      000FE9 86 02            [24] 3507 	mov	ar2,@r0
      000FEB 08               [12] 3508 	inc	r0
      000FEC 86 03            [24] 3509 	mov	ar3,@r0
      000FEE 8A 82            [24] 3510 	mov	dpl,r2
      000FF0 EB               [12] 3511 	mov	a,r3
      000FF1 C4               [12] 3512 	swap	a
      000FF2 23               [12] 3513 	rl	a
      000FF3 54 E0            [12] 3514 	anl	a,#0xe0
      000FF5 C5 82            [12] 3515 	xch	a,dpl
      000FF7 C4               [12] 3516 	swap	a
      000FF8 23               [12] 3517 	rl	a
      000FF9 C5 82            [12] 3518 	xch	a,dpl
      000FFB 65 82            [12] 3519 	xrl	a,dpl
      000FFD C5 82            [12] 3520 	xch	a,dpl
      000FFF 54 E0            [12] 3521 	anl	a,#0xe0
      001001 C5 82            [12] 3522 	xch	a,dpl
      001003 65 82            [12] 3523 	xrl	a,dpl
      001005 F5 83            [12] 3524 	mov	dph,a
      001007 78 52            [12] 3525 	mov	r0,#(___global_vbr + 0x0006)
      001009 86 3F            [24] 3526 	mov	__divuint_PARM_2,@r0
      00100B 08               [12] 3527 	inc	r0
      00100C 86 40            [24] 3528 	mov	(__divuint_PARM_2 + 1),@r0
      00100E 12 19 69         [24] 3529 	lcall	__divuint
      001011 AA 82            [24] 3530 	mov	r2,dpl
      001013 AB 83            [24] 3531 	mov	r3,dph
      001015 E4               [12] 3532 	clr	a
      001016 FE               [12] 3533 	mov	r6,a
      001017 FF               [12] 3534 	mov	r7,a
      001018 EA               [12] 3535 	mov	a,r2
      001019 25 1F            [12] 3536 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      00101B FA               [12] 3537 	mov	r2,a
      00101C EB               [12] 3538 	mov	a,r3
      00101D 35 20            [12] 3539 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      00101F FB               [12] 3540 	mov	r3,a
      001020 EE               [12] 3541 	mov	a,r6
      001021 35 21            [12] 3542 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001023 FE               [12] 3543 	mov	r6,a
      001024 EF               [12] 3544 	mov	a,r7
      001025 35 22            [12] 3545 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      001027 FF               [12] 3546 	mov	r7,a
      001028 78 67            [12] 3547 	mov	r0,#(___global_vbr + 0x001b)
      00102A A6 02            [24] 3548 	mov	@r0,ar2
      00102C 08               [12] 3549 	inc	r0
      00102D A6 03            [24] 3550 	mov	@r0,ar3
      00102F 08               [12] 3551 	inc	r0
      001030 A6 06            [24] 3552 	mov	@r0,ar6
      001032 08               [12] 3553 	inc	r0
      001033 A6 07            [24] 3554 	mov	@r0,ar7
                                   3555 ;	fat.h:414: return 0;
      001035 75 82 00         [24] 3556 	mov	dpl,#0x00
                                   3557 ;	fat.h:416: }
      001038 22               [24] 3558 	ret
                                   3559 ;------------------------------------------------------------
                                   3560 ;Allocation info for local variables in function 'VBR_FAT16_CHECK_COMPATIBILITY'
                                   3561 ;------------------------------------------------------------
                                   3562 ;partition_number          Allocated to registers r7 
                                   3563 ;------------------------------------------------------------
                                   3564 ;	fat.h:418: uint8_t VBR_FAT16_CHECK_COMPATIBILITY(uint8_t partition_number)
                                   3565 ;	-----------------------------------------
                                   3566 ;	 function VBR_FAT16_CHECK_COMPATIBILITY
                                   3567 ;	-----------------------------------------
      001039                       3568 _VBR_FAT16_CHECK_COMPATIBILITY:
                                   3569 ;	fat.h:424: if(VBR_MOUNT_VBR(partition_number))
      001039 12 0E 1D         [24] 3570 	lcall	_VBR_MOUNT_VBR
      00103C E5 82            [12] 3571 	mov	a,dpl
      00103E 60 04            [24] 3572 	jz	00102$
                                   3573 ;	fat.h:426: return 1; //error
      001040 75 82 01         [24] 3574 	mov	dpl,#0x01
      001043 22               [24] 3575 	ret
      001044                       3576 00102$:
                                   3577 ;	fat.h:429: if(__global_vbr.bps!=SD_BLOCK_SIZE) 
      001044 78 52            [12] 3578 	mov	r0,#(___global_vbr + 0x0006)
      001046 86 06            [24] 3579 	mov	ar6,@r0
      001048 08               [12] 3580 	inc	r0
      001049 86 07            [24] 3581 	mov	ar7,@r0
      00104B BE 00 05         [24] 3582 	cjne	r6,#0x00,00116$
      00104E BF 02 02         [24] 3583 	cjne	r7,#0x02,00116$
      001051 80 04            [24] 3584 	sjmp	00104$
      001053                       3585 00116$:
                                   3586 ;	fat.h:434: return 2; //error - not supported fat16
      001053 75 82 02         [24] 3587 	mov	dpl,#0x02
      001056 22               [24] 3588 	ret
      001057                       3589 00104$:
                                   3590 ;	fat.h:437: return 0;
      001057 75 82 00         [24] 3591 	mov	dpl,#0x00
                                   3592 ;	fat.h:438: }
      00105A 22               [24] 3593 	ret
                                   3594 ;------------------------------------------------------------
                                   3595 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_DUMP'
                                   3596 ;------------------------------------------------------------
                                   3597 ;i                         Allocated to registers r7 
                                   3598 ;i                         Allocated to registers r7 
                                   3599 ;------------------------------------------------------------
                                   3600 ;	fat.h:441: void FAT16_ROOTENTRY_DUMP()
                                   3601 ;	-----------------------------------------
                                   3602 ;	 function FAT16_ROOTENTRY_DUMP
                                   3603 ;	-----------------------------------------
      00105B                       3604 _FAT16_ROOTENTRY_DUMP:
                                   3605 ;	fat.h:443: UartPrint("\nROOT_ENTRY_INDEX:");
      00105B 90 1C 71         [24] 3606 	mov	dptr,#___str_2
      00105E 75 F0 80         [24] 3607 	mov	b,#0x80
      001061 12 01 81         [24] 3608 	lcall	_UartPrint
                                   3609 ;	fat.h:444: UartPrintNumber(__global_rootEntry.entry_index);
      001064 78 7E            [12] 3610 	mov	r0,#(___global_rootEntry + 0x0012)
      001066 86 06            [24] 3611 	mov	ar6,@r0
      001068 08               [12] 3612 	inc	r0
      001069 86 07            [24] 3613 	mov	ar7,@r0
      00106B 7D 00            [12] 3614 	mov	r5,#0x00
      00106D 7C 00            [12] 3615 	mov	r4,#0x00
      00106F 8E 82            [24] 3616 	mov	dpl,r6
      001071 8F 83            [24] 3617 	mov	dph,r7
      001073 8D F0            [24] 3618 	mov	b,r5
      001075 EC               [12] 3619 	mov	a,r4
      001076 12 02 C7         [24] 3620 	lcall	_UartPrintNumber
                                   3621 ;	fat.h:445: UartPrint("\nFILE: ");
      001079 90 1C 84         [24] 3622 	mov	dptr,#___str_3
      00107C 75 F0 80         [24] 3623 	mov	b,#0x80
      00107F 12 01 81         [24] 3624 	lcall	_UartPrint
                                   3625 ;	fat.h:446: for(uint8_t i=0;i<8;i++)UartWrite(__global_rootEntry.name[i]);
      001082 7F 00            [12] 3626 	mov	r7,#0x00
      001084                       3627 00104$:
      001084 BF 08 00         [24] 3628 	cjne	r7,#0x08,00129$
      001087                       3629 00129$:
      001087 50 10            [24] 3630 	jnc	00101$
      001089 EF               [12] 3631 	mov	a,r7
      00108A 24 6C            [12] 3632 	add	a,#___global_rootEntry
      00108C F9               [12] 3633 	mov	r1,a
      00108D 87 82            [24] 3634 	mov	dpl,@r1
      00108F C0 07            [24] 3635 	push	ar7
      001091 12 00 FB         [24] 3636 	lcall	_UartWrite
      001094 D0 07            [24] 3637 	pop	ar7
      001096 0F               [12] 3638 	inc	r7
      001097 80 EB            [24] 3639 	sjmp	00104$
      001099                       3640 00101$:
                                   3641 ;	fat.h:447: for(uint8_t i=0;i<3;i++)UartWrite(__global_rootEntry.extension[i]);
      001099 7F 00            [12] 3642 	mov	r7,#0x00
      00109B                       3643 00107$:
      00109B BF 03 00         [24] 3644 	cjne	r7,#0x03,00131$
      00109E                       3645 00131$:
      00109E 50 10            [24] 3646 	jnc	00102$
      0010A0 EF               [12] 3647 	mov	a,r7
      0010A1 24 74            [12] 3648 	add	a,#(___global_rootEntry + 0x0008)
      0010A3 F9               [12] 3649 	mov	r1,a
      0010A4 87 82            [24] 3650 	mov	dpl,@r1
      0010A6 C0 07            [24] 3651 	push	ar7
      0010A8 12 00 FB         [24] 3652 	lcall	_UartWrite
      0010AB D0 07            [24] 3653 	pop	ar7
      0010AD 0F               [12] 3654 	inc	r7
      0010AE 80 EB            [24] 3655 	sjmp	00107$
      0010B0                       3656 00102$:
                                   3657 ;	fat.h:448: UartPrint("\nSTART: ");
      0010B0 90 1C 8C         [24] 3658 	mov	dptr,#___str_4
      0010B3 75 F0 80         [24] 3659 	mov	b,#0x80
      0010B6 12 01 81         [24] 3660 	lcall	_UartPrint
                                   3661 ;	fat.h:449: UartPrintNumber(__global_rootEntry.startCluster);
      0010B9 78 78            [12] 3662 	mov	r0,#(___global_rootEntry + 0x000c)
      0010BB 86 06            [24] 3663 	mov	ar6,@r0
      0010BD 08               [12] 3664 	inc	r0
      0010BE 86 07            [24] 3665 	mov	ar7,@r0
      0010C0 7D 00            [12] 3666 	mov	r5,#0x00
      0010C2 7C 00            [12] 3667 	mov	r4,#0x00
      0010C4 8E 82            [24] 3668 	mov	dpl,r6
      0010C6 8F 83            [24] 3669 	mov	dph,r7
      0010C8 8D F0            [24] 3670 	mov	b,r5
      0010CA EC               [12] 3671 	mov	a,r4
      0010CB 12 02 C7         [24] 3672 	lcall	_UartPrintNumber
                                   3673 ;	fat.h:450: UartPrint("\nSIZE: ");
      0010CE 90 1C 95         [24] 3674 	mov	dptr,#___str_5
      0010D1 75 F0 80         [24] 3675 	mov	b,#0x80
      0010D4 12 01 81         [24] 3676 	lcall	_UartPrint
                                   3677 ;	fat.h:451: UartPrintNumber(__global_rootEntry.size);			
      0010D7 78 7A            [12] 3678 	mov	r0,#(___global_rootEntry + 0x000e)
      0010D9 86 04            [24] 3679 	mov	ar4,@r0
      0010DB 08               [12] 3680 	inc	r0
      0010DC 86 05            [24] 3681 	mov	ar5,@r0
      0010DE 08               [12] 3682 	inc	r0
      0010DF 86 06            [24] 3683 	mov	ar6,@r0
      0010E1 08               [12] 3684 	inc	r0
      0010E2 86 07            [24] 3685 	mov	ar7,@r0
      0010E4 8C 82            [24] 3686 	mov	dpl,r4
      0010E6 8D 83            [24] 3687 	mov	dph,r5
      0010E8 8E F0            [24] 3688 	mov	b,r6
      0010EA EF               [12] 3689 	mov	a,r7
      0010EB 12 02 C7         [24] 3690 	lcall	_UartPrintNumber
                                   3691 ;	fat.h:452: UartPrint("\nATTR: 0x");
      0010EE 90 1C 9D         [24] 3692 	mov	dptr,#___str_6
      0010F1 75 F0 80         [24] 3693 	mov	b,#0x80
      0010F4 12 01 81         [24] 3694 	lcall	_UartPrint
                                   3695 ;	fat.h:453: UartWriteNumber(__global_rootEntry.attributes,HEX);			
      0010F7 78 77            [12] 3696 	mov	r0,#(___global_rootEntry + 0x000b)
      0010F9 86 82            [24] 3697 	mov	dpl,@r0
      0010FB E4               [12] 3698 	clr	a
      0010FC C0 E0            [24] 3699 	push	acc
      0010FE 12 01 B3         [24] 3700 	lcall	_UartWriteNumber
      001101 15 81            [12] 3701 	dec	sp
                                   3702 ;	fat.h:454: UartWrite('\n\n');
      001103 75 82 0A         [24] 3703 	mov	dpl,#0x0a
                                   3704 ;	fat.h:455: }
      001106 02 00 FB         [24] 3705 	ljmp	_UartWrite
                                   3706 ;------------------------------------------------------------
                                   3707 ;Allocation info for local variables in function 'FAT16_LOAD_ROOTENTRY'
                                   3708 ;------------------------------------------------------------
                                   3709 ;roote_number              Allocated with name '_FAT16_LOAD_ROOTENTRY_roote_number_65536_155'
                                   3710 ;i                         Allocated to registers r7 
                                   3711 ;i                         Allocated to registers r7 
                                   3712 ;sloc0                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc0_1_0'
                                   3713 ;sloc1                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc1_1_0'
                                   3714 ;temp                      Allocated with name '_FAT16_LOAD_ROOTENTRY_temp_65536_156'
                                   3715 ;sector_of_given_roote     Allocated to registers r2 r3 r4 r5 
                                   3716 ;offset_in_this_sector     Allocated to registers r6 r7 
                                   3717 ;------------------------------------------------------------
                                   3718 ;	fat.h:465: uint8_t FAT16_LOAD_ROOTENTRY(uint16_t roote_number)
                                   3719 ;	-----------------------------------------
                                   3720 ;	 function FAT16_LOAD_ROOTENTRY
                                   3721 ;	-----------------------------------------
      001109                       3722 _FAT16_LOAD_ROOTENTRY:
      001109 85 82 23         [24] 3723 	mov	_FAT16_LOAD_ROOTENTRY_roote_number_65536_155,dpl
      00110C 85 83 24         [24] 3724 	mov	(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1),dph
                                   3725 ;	fat.h:474: if(roote_number < __global_vbr.nroote);//pass
      00110F 78 59            [12] 3726 	mov	r0,#(___global_vbr + 0x000d)
      001111 86 04            [24] 3727 	mov	ar4,@r0
      001113 08               [12] 3728 	inc	r0
      001114 86 05            [24] 3729 	mov	ar5,@r0
      001116 C3               [12] 3730 	clr	c
      001117 E5 23            [12] 3731 	mov	a,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
      001119 9C               [12] 3732 	subb	a,r4
      00111A E5 24            [12] 3733 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
      00111C 9D               [12] 3734 	subb	a,r5
      00111D 40 04            [24] 3735 	jc	00103$
                                   3736 ;	fat.h:475: else return 1; // error as roote_number is more than number of root entries present in rootentry table 
      00111F 75 82 01         [24] 3737 	mov	dpl,#0x01
      001122 22               [24] 3738 	ret
      001123                       3739 00103$:
                                   3740 ;	fat.h:477: VBR_MOUNT_VBR(__global_nthPartitionVBRmounted);
      001123 78 6B            [12] 3741 	mov	r0,#___global_nthPartitionVBRmounted
      001125 86 82            [24] 3742 	mov	dpl,@r0
      001127 12 0E 1D         [24] 3743 	lcall	_VBR_MOUNT_VBR
                                   3744 ;	fat.h:480: sector_of_given_roote = __global_vbr.addr_roote_start + (roote_number*32)/__global_vbr.bps;
      00112A 78 63            [12] 3745 	mov	r0,#(___global_vbr + 0x0017)
      00112C 86 25            [24] 3746 	mov	_FAT16_LOAD_ROOTENTRY_sloc0_1_0,@r0
      00112E 08               [12] 3747 	inc	r0
      00112F 86 26            [24] 3748 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1),@r0
      001131 08               [12] 3749 	inc	r0
      001132 86 27            [24] 3750 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2),@r0
      001134 08               [12] 3751 	inc	r0
      001135 86 28            [24] 3752 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3),@r0
      001137 AE 23            [24] 3753 	mov	r6,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
      001139 E5 24            [12] 3754 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
      00113B C4               [12] 3755 	swap	a
      00113C 23               [12] 3756 	rl	a
      00113D 54 E0            [12] 3757 	anl	a,#0xe0
      00113F CE               [12] 3758 	xch	a,r6
      001140 C4               [12] 3759 	swap	a
      001141 23               [12] 3760 	rl	a
      001142 CE               [12] 3761 	xch	a,r6
      001143 6E               [12] 3762 	xrl	a,r6
      001144 CE               [12] 3763 	xch	a,r6
      001145 54 E0            [12] 3764 	anl	a,#0xe0
      001147 CE               [12] 3765 	xch	a,r6
      001148 6E               [12] 3766 	xrl	a,r6
      001149 FF               [12] 3767 	mov	r7,a
      00114A 78 52            [12] 3768 	mov	r0,#(___global_vbr + 0x0006)
      00114C 86 29            [24] 3769 	mov	_FAT16_LOAD_ROOTENTRY_sloc1_1_0,@r0
      00114E 08               [12] 3770 	inc	r0
      00114F 86 2A            [24] 3771 	mov	(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1),@r0
      001151 85 29 3F         [24] 3772 	mov	__divuint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      001154 85 2A 40         [24] 3773 	mov	(__divuint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      001157 8E 82            [24] 3774 	mov	dpl,r6
      001159 8F 83            [24] 3775 	mov	dph,r7
      00115B C0 07            [24] 3776 	push	ar7
      00115D C0 06            [24] 3777 	push	ar6
      00115F 12 19 69         [24] 3778 	lcall	__divuint
      001162 AA 82            [24] 3779 	mov	r2,dpl
      001164 AB 83            [24] 3780 	mov	r3,dph
      001166 D0 06            [24] 3781 	pop	ar6
      001168 D0 07            [24] 3782 	pop	ar7
      00116A E4               [12] 3783 	clr	a
      00116B FC               [12] 3784 	mov	r4,a
      00116C FD               [12] 3785 	mov	r5,a
      00116D EA               [12] 3786 	mov	a,r2
      00116E 25 25            [12] 3787 	add	a,_FAT16_LOAD_ROOTENTRY_sloc0_1_0
      001170 FA               [12] 3788 	mov	r2,a
      001171 EB               [12] 3789 	mov	a,r3
      001172 35 26            [12] 3790 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1)
      001174 FB               [12] 3791 	mov	r3,a
      001175 EC               [12] 3792 	mov	a,r4
      001176 35 27            [12] 3793 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2)
      001178 FC               [12] 3794 	mov	r4,a
      001179 ED               [12] 3795 	mov	a,r5
      00117A 35 28            [12] 3796 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3)
      00117C FD               [12] 3797 	mov	r5,a
                                   3798 ;	fat.h:481: offset_in_this_sector = (roote_number*32)%__global_vbr.bps;
      00117D 85 29 3F         [24] 3799 	mov	__moduint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      001180 85 2A 40         [24] 3800 	mov	(__moduint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      001183 8E 82            [24] 3801 	mov	dpl,r6
      001185 8F 83            [24] 3802 	mov	dph,r7
      001187 C0 05            [24] 3803 	push	ar5
      001189 C0 04            [24] 3804 	push	ar4
      00118B C0 03            [24] 3805 	push	ar3
      00118D C0 02            [24] 3806 	push	ar2
      00118F 12 1A B2         [24] 3807 	lcall	__moduint
      001192 AE 82            [24] 3808 	mov	r6,dpl
      001194 AF 83            [24] 3809 	mov	r7,dph
      001196 D0 02            [24] 3810 	pop	ar2
      001198 D0 03            [24] 3811 	pop	ar3
      00119A D0 04            [24] 3812 	pop	ar4
      00119C D0 05            [24] 3813 	pop	ar5
                                   3814 ;	fat.h:483: SDread(sector_of_given_roote,offset_in_this_sector,32,temp);
      00119E 74 A4            [12] 3815 	mov	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
      0011A0 C0 E0            [24] 3816 	push	acc
      0011A2 74 00            [12] 3817 	mov	a,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 >> 8)
      0011A4 C0 E0            [24] 3818 	push	acc
      0011A6 74 40            [12] 3819 	mov	a,#0x40
      0011A8 C0 E0            [24] 3820 	push	acc
      0011AA 03               [12] 3821 	rr	a
      0011AB C0 E0            [24] 3822 	push	acc
      0011AD E4               [12] 3823 	clr	a
      0011AE C0 E0            [24] 3824 	push	acc
      0011B0 C0 06            [24] 3825 	push	ar6
      0011B2 C0 07            [24] 3826 	push	ar7
      0011B4 8A 82            [24] 3827 	mov	dpl,r2
      0011B6 8B 83            [24] 3828 	mov	dph,r3
      0011B8 8C F0            [24] 3829 	mov	b,r4
      0011BA ED               [12] 3830 	mov	a,r5
      0011BB 12 07 14         [24] 3831 	lcall	_SDread
      0011BE E5 81            [12] 3832 	mov	a,sp
      0011C0 24 F9            [12] 3833 	add	a,#0xf9
      0011C2 F5 81            [12] 3834 	mov	sp,a
                                   3835 ;	fat.h:485: __global_rootEntry.entry_index = roote_number; //save the index of the root_entry
      0011C4 78 7E            [12] 3836 	mov	r0,#(___global_rootEntry + 0x0012)
      0011C6 A6 23            [24] 3837 	mov	@r0,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
      0011C8 08               [12] 3838 	inc	r0
      0011C9 A6 24            [24] 3839 	mov	@r0,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
                                   3840 ;	fat.h:486: __global_rootEntry.bytes_read = 0; //no bytes has been read so far by FAT16_FILE_READ as we have just loaded the rootentry
      0011CB 78 80            [12] 3841 	mov	r0,#(___global_rootEntry + 0x0014)
      0011CD 76 00            [12] 3842 	mov	@r0,#0x00
      0011CF 08               [12] 3843 	inc	r0
      0011D0 76 00            [12] 3844 	mov	@r0,#0x00
      0011D2 08               [12] 3845 	inc	r0
      0011D3 76 00            [12] 3846 	mov	@r0,#0x00
      0011D5 08               [12] 3847 	inc	r0
      0011D6 76 00            [12] 3848 	mov	@r0,#0x00
                                   3849 ;	fat.h:488: for(uint8_t i=0;i<8;i++) __global_rootEntry.name[i] = temp[i];
      0011D8 7F 00            [12] 3850 	mov	r7,#0x00
      0011DA                       3851 00107$:
      0011DA BF 08 00         [24] 3852 	cjne	r7,#0x08,00137$
      0011DD                       3853 00137$:
      0011DD 50 0F            [24] 3854 	jnc	00104$
      0011DF EF               [12] 3855 	mov	a,r7
      0011E0 24 6C            [12] 3856 	add	a,#___global_rootEntry
      0011E2 F9               [12] 3857 	mov	r1,a
      0011E3 EF               [12] 3858 	mov	a,r7
      0011E4 24 A4            [12] 3859 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
      0011E6 F8               [12] 3860 	mov	r0,a
      0011E7 86 06            [24] 3861 	mov	ar6,@r0
      0011E9 A7 06            [24] 3862 	mov	@r1,ar6
      0011EB 0F               [12] 3863 	inc	r7
      0011EC 80 EC            [24] 3864 	sjmp	00107$
      0011EE                       3865 00104$:
                                   3866 ;	fat.h:489: for(uint8_t i=8;i<11;i++) __global_rootEntry.extension[i-8] = temp[i];
      0011EE 7F 08            [12] 3867 	mov	r7,#0x08
      0011F0                       3868 00110$:
      0011F0 BF 0B 00         [24] 3869 	cjne	r7,#0x0b,00139$
      0011F3                       3870 00139$:
      0011F3 50 13            [24] 3871 	jnc	00105$
      0011F5 8F 06            [24] 3872 	mov	ar6,r7
      0011F7 EE               [12] 3873 	mov	a,r6
      0011F8 24 F8            [12] 3874 	add	a,#0xf8
      0011FA 24 74            [12] 3875 	add	a,#(___global_rootEntry + 0x0008)
      0011FC F9               [12] 3876 	mov	r1,a
      0011FD EF               [12] 3877 	mov	a,r7
      0011FE 24 A4            [12] 3878 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
      001200 F8               [12] 3879 	mov	r0,a
      001201 86 06            [24] 3880 	mov	ar6,@r0
      001203 A7 06            [24] 3881 	mov	@r1,ar6
      001205 0F               [12] 3882 	inc	r7
      001206 80 E8            [24] 3883 	sjmp	00110$
      001208                       3884 00105$:
                                   3885 ;	fat.h:491: __global_rootEntry.attributes = temp[0x0b];
      001208 78 AF            [12] 3886 	mov	r0,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x000b)
      00120A 86 07            [24] 3887 	mov	ar7,@r0
      00120C 78 77            [12] 3888 	mov	r0,#(___global_rootEntry + 0x000b)
      00120E A6 07            [24] 3889 	mov	@r0,ar7
                                   3890 ;	fat.h:492: __global_rootEntry.startCluster = HELPER_load_littleendian16(&temp[0x1a]);
      001210 90 00 BE         [24] 3891 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x001a)
      001213 75 F0 40         [24] 3892 	mov	b,#0x40
      001216 12 08 5A         [24] 3893 	lcall	_HELPER_load_littleendian16
      001219 E5 82            [12] 3894 	mov	a,dpl
      00121B 85 83 F0         [24] 3895 	mov	b,dph
      00121E 78 78            [12] 3896 	mov	r0,#(___global_rootEntry + 0x000c)
      001220 F6               [12] 3897 	mov	@r0,a
      001221 08               [12] 3898 	inc	r0
      001222 A6 F0            [24] 3899 	mov	@r0,b
                                   3900 ;	fat.h:493: __global_rootEntry.size = HELPER_load_littleendian32(&temp[0x1c]);
      001224 90 00 C0         [24] 3901 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x001c)
      001227 75 F0 40         [24] 3902 	mov	b,#0x40
      00122A 12 08 88         [24] 3903 	lcall	_HELPER_load_littleendian32
      00122D AC 82            [24] 3904 	mov	r4,dpl
      00122F AD 83            [24] 3905 	mov	r5,dph
      001231 AE F0            [24] 3906 	mov	r6,b
      001233 FF               [12] 3907 	mov	r7,a
      001234 78 7A            [12] 3908 	mov	r0,#(___global_rootEntry + 0x000e)
      001236 A6 04            [24] 3909 	mov	@r0,ar4
      001238 08               [12] 3910 	inc	r0
      001239 A6 05            [24] 3911 	mov	@r0,ar5
      00123B 08               [12] 3912 	inc	r0
      00123C A6 06            [24] 3913 	mov	@r0,ar6
      00123E 08               [12] 3914 	inc	r0
      00123F A6 07            [24] 3915 	mov	@r0,ar7
                                   3916 ;	fat.h:495: return 0;
      001241 75 82 00         [24] 3917 	mov	dpl,#0x00
                                   3918 ;	fat.h:496: }
      001244 22               [24] 3919 	ret
                                   3920 ;------------------------------------------------------------
                                   3921 ;Allocation info for local variables in function 'FAT16_IS_ROOTENTRY_VALID_FILE'
                                   3922 ;------------------------------------------------------------
                                   3923 ;	fat.h:497: uint8_t FAT16_IS_ROOTENTRY_VALID_FILE()
                                   3924 ;	-----------------------------------------
                                   3925 ;	 function FAT16_IS_ROOTENTRY_VALID_FILE
                                   3926 ;	-----------------------------------------
      001245                       3927 _FAT16_IS_ROOTENTRY_VALID_FILE:
                                   3928 ;	fat.h:500: if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_AVAILABLE)
      001245 78 6C            [12] 3929 	mov	r0,#___global_rootEntry
      001247 E6               [12] 3930 	mov	a,@r0
      001248 FF               [12] 3931 	mov	r7,a
      001249 70 04            [24] 3932 	jnz	00112$
                                   3933 ;	fat.h:505: return 255; //no more entries, stop scanning
      00124B 75 82 FF         [24] 3934 	mov	dpl,#0xff
      00124E 22               [24] 3935 	ret
      00124F                       3936 00112$:
                                   3937 ;	fat.h:507: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DELETED)
      00124F BF E5 04         [24] 3938 	cjne	r7,#0xe5,00109$
                                   3939 ;	fat.h:513: return FAT16_ROOTENTRY_DELETED; //deleted and available
      001252 75 82 E5         [24] 3940 	mov	dpl,#0xe5
      001255 22               [24] 3941 	ret
      001256                       3942 00109$:
                                   3943 ;	fat.h:515: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DOT)
      001256 BF 2E 04         [24] 3944 	cjne	r7,#0x2e,00106$
                                   3945 ;	fat.h:520: return FAT16_ROOTENTRY_DOT; //this is the entry to self
      001259 75 82 2E         [24] 3946 	mov	dpl,#0x2e
      00125C 22               [24] 3947 	ret
      00125D                       3948 00106$:
                                   3949 ;	fat.h:525: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_HIDDEN ||
      00125D 90 00 6C         [24] 3950 	mov	dptr,#___global_rootEntry
      001260 75 F0 40         [24] 3951 	mov	b,#0x40
      001263 12 09 E3         [24] 3952 	lcall	_HELPER_rootentry_type
      001266 AF 82            [24] 3953 	mov	r7,dpl
      001268 BF 01 02         [24] 3954 	cjne	r7,#0x01,00141$
      00126B 80 1E            [24] 3955 	sjmp	00101$
      00126D                       3956 00141$:
                                   3957 ;	fat.h:526: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_SYSTEM ||
      00126D 90 00 6C         [24] 3958 	mov	dptr,#___global_rootEntry
      001270 75 F0 40         [24] 3959 	mov	b,#0x40
      001273 12 09 E3         [24] 3960 	lcall	_HELPER_rootentry_type
      001276 AF 82            [24] 3961 	mov	r7,dpl
      001278 BF 02 02         [24] 3962 	cjne	r7,#0x02,00142$
      00127B 80 0E            [24] 3963 	sjmp	00101$
      00127D                       3964 00142$:
                                   3965 ;	fat.h:527: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_VOLUME
      00127D 90 00 6C         [24] 3966 	mov	dptr,#___global_rootEntry
      001280 75 F0 40         [24] 3967 	mov	b,#0x40
      001283 12 09 E3         [24] 3968 	lcall	_HELPER_rootentry_type
      001286 AF 82            [24] 3969 	mov	r7,dpl
      001288 BF 03 04         [24] 3970 	cjne	r7,#0x03,00110$
      00128B                       3971 00101$:
                                   3972 ;	fat.h:534: return 254;
      00128B 75 82 FE         [24] 3973 	mov	dpl,#0xfe
      00128E 22               [24] 3974 	ret
      00128F                       3975 00110$:
                                   3976 ;	fat.h:537: return 0;
      00128F 75 82 00         [24] 3977 	mov	dpl,#0x00
                                   3978 ;	fat.h:538: }
      001292 22               [24] 3979 	ret
                                   3980 ;------------------------------------------------------------
                                   3981 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_READ'
                                   3982 ;------------------------------------------------------------
                                   3983 ;roote_index               Allocated to registers r6 r7 
                                   3984 ;file_validity             Allocated to registers r7 
                                   3985 ;------------------------------------------------------------
                                   3986 ;	fat.h:541: uint8_t FAT16_ROOTENTRY_READ(uint16_t roote_index)
                                   3987 ;	-----------------------------------------
                                   3988 ;	 function FAT16_ROOTENTRY_READ
                                   3989 ;	-----------------------------------------
      001293                       3990 _FAT16_ROOTENTRY_READ:
                                   3991 ;	fat.h:551: if(FAT16_LOAD_ROOTENTRY(roote_index)) // if returns 1, then we have reached the end of the rootentry table
      001293 12 11 09         [24] 3992 	lcall	_FAT16_LOAD_ROOTENTRY
      001296 E5 82            [12] 3993 	mov	a,dpl
      001298 60 04            [24] 3994 	jz	00102$
                                   3995 ;	fat.h:553: return 0xff; //end of scan
      00129A 75 82 FF         [24] 3996 	mov	dpl,#0xff
      00129D 22               [24] 3997 	ret
      00129E                       3998 00102$:
                                   3999 ;	fat.h:557: file_validity=FAT16_IS_ROOTENTRY_VALID_FILE(); //check validity
      00129E 12 12 45         [24] 4000 	lcall	_FAT16_IS_ROOTENTRY_VALID_FILE
      0012A1 AF 82            [24] 4001 	mov	r7,dpl
                                   4002 ;	fat.h:559: if(file_validity==255)return 0xff; //end of scan
      0012A3 BF FF 04         [24] 4003 	cjne	r7,#0xff,00106$
      0012A6 75 82 FF         [24] 4004 	mov	dpl,#0xff
      0012A9 22               [24] 4005 	ret
      0012AA                       4006 00106$:
                                   4007 ;	fat.h:560: else if(file_validity==0)
      0012AA EF               [12] 4008 	mov	a,r7
                                   4009 ;	fat.h:566: return 0;
      0012AB 70 03            [24] 4010 	jnz	00107$
      0012AD F5 82            [12] 4011 	mov	dpl,a
      0012AF 22               [24] 4012 	ret
      0012B0                       4013 00107$:
                                   4014 ;	fat.h:569: return 1; //invalid file if context reaches here
      0012B0 75 82 01         [24] 4015 	mov	dpl,#0x01
                                   4016 ;	fat.h:572: }
      0012B3 22               [24] 4017 	ret
                                   4018 ;------------------------------------------------------------
                                   4019 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN_RESET'
                                   4020 ;------------------------------------------------------------
                                   4021 ;	fat.h:574: void FAT16_ROOTENTRY_SCAN_RESET()
                                   4022 ;	-----------------------------------------
                                   4023 ;	 function FAT16_ROOTENTRY_SCAN_RESET
                                   4024 ;	-----------------------------------------
      0012B4                       4025 _FAT16_ROOTENTRY_SCAN_RESET:
                                   4026 ;	fat.h:576: __global_rootEntry.entry_index=0xffff; // in FAT16, maximum number of root entries can never reach 0xffff.
      0012B4 78 7E            [12] 4027 	mov	r0,#(___global_rootEntry + 0x0012)
      0012B6 76 FF            [12] 4028 	mov	@r0,#0xff
      0012B8 08               [12] 4029 	inc	r0
      0012B9 76 FF            [12] 4030 	mov	@r0,#0xff
                                   4031 ;	fat.h:582: __global_rootEntry.attributes |= 1<<FILETYPE_SYSTEM;
      0012BB 78 77            [12] 4032 	mov	r0,#(___global_rootEntry + 0x000b)
      0012BD 86 07            [24] 4033 	mov	ar7,@r0
      0012BF 74 04            [12] 4034 	mov	a,#0x04
      0012C1 4F               [12] 4035 	orl	a,r7
      0012C2 78 77            [12] 4036 	mov	r0,#(___global_rootEntry + 0x000b)
      0012C4 F6               [12] 4037 	mov	@r0,a
                                   4038 ;	fat.h:583: }
      0012C5 22               [24] 4039 	ret
                                   4040 ;------------------------------------------------------------
                                   4041 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN'
                                   4042 ;------------------------------------------------------------
                                   4043 ;validity                  Allocated to registers r7 
                                   4044 ;------------------------------------------------------------
                                   4045 ;	fat.h:585: uint8_t FAT16_ROOTENTRY_SCAN() __reentrant
                                   4046 ;	-----------------------------------------
                                   4047 ;	 function FAT16_ROOTENTRY_SCAN
                                   4048 ;	-----------------------------------------
      0012C6                       4049 _FAT16_ROOTENTRY_SCAN:
                                   4050 ;	fat.h:590: while(1)
      0012C6                       4051 00110$:
                                   4052 ;	fat.h:598: validity=FAT16_ROOTENTRY_READ(__global_rootEntry.entry_index+1); //read the next entry
      0012C6 78 7E            [12] 4053 	mov	r0,#(___global_rootEntry + 0x0012)
      0012C8 86 06            [24] 4054 	mov	ar6,@r0
      0012CA 08               [12] 4055 	inc	r0
      0012CB 86 07            [24] 4056 	mov	ar7,@r0
      0012CD 8E 82            [24] 4057 	mov	dpl,r6
      0012CF 8F 83            [24] 4058 	mov	dph,r7
      0012D1 A3               [24] 4059 	inc	dptr
      0012D2 12 12 93         [24] 4060 	lcall	_FAT16_ROOTENTRY_READ
      0012D5 AF 82            [24] 4061 	mov	r7,dpl
                                   4062 ;	fat.h:600: if ( validity == 255 )
      0012D7 BF FF 04         [24] 4063 	cjne	r7,#0xff,00107$
                                   4064 ;	fat.h:606: return 255; //end scan
      0012DA 75 82 FF         [24] 4065 	mov	dpl,#0xff
      0012DD 22               [24] 4066 	ret
      0012DE                       4067 00107$:
                                   4068 ;	fat.h:608: else if (validity == 1) 
      0012DE BF 01 02         [24] 4069 	cjne	r7,#0x01,00132$
      0012E1 80 E3            [24] 4070 	sjmp	00110$
      0012E3                       4071 00132$:
                                   4072 ;	fat.h:616: else if(validity == 0)
      0012E3 EF               [12] 4073 	mov	a,r7
                                   4074 ;	fat.h:623: return 0; // found a valid file,break out of the loop
      0012E4 70 E0            [24] 4075 	jnz	00110$
      0012E6 F5 82            [12] 4076 	mov	dpl,a
                                   4077 ;	fat.h:630: }
      0012E8 22               [24] 4078 	ret
                                   4079 ;------------------------------------------------------------
                                   4080 ;Allocation info for local variables in function 'FAT16_FILE_OPEN'
                                   4081 ;------------------------------------------------------------
                                   4082 ;filename                  Allocated to registers r5 r6 r7 
                                   4083 ;filename83                Allocated to stack - _bp +1
                                   4084 ;------------------------------------------------------------
                                   4085 ;	fat.h:632: uint8_t FAT16_FILE_OPEN(char *filename) __reentrant
                                   4086 ;	-----------------------------------------
                                   4087 ;	 function FAT16_FILE_OPEN
                                   4088 ;	-----------------------------------------
      0012E9                       4089 _FAT16_FILE_OPEN:
      0012E9 C0 3E            [24] 4090 	push	_bp
      0012EB E5 81            [12] 4091 	mov	a,sp
      0012ED F5 3E            [12] 4092 	mov	_bp,a
      0012EF 24 0C            [12] 4093 	add	a,#0x0c
      0012F1 F5 81            [12] 4094 	mov	sp,a
      0012F3 AD 82            [24] 4095 	mov	r5,dpl
      0012F5 AE 83            [24] 4096 	mov	r6,dph
      0012F7 AF F0            [24] 4097 	mov	r7,b
                                   4098 ;	fat.h:638: if(HELPER_filename_to_8dot3filename(filename,filename83)) 
      0012F9 AC 3E            [24] 4099 	mov	r4,_bp
      0012FB 0C               [12] 4100 	inc	r4
      0012FC 8C 18            [24] 4101 	mov	_HELPER_filename_to_8dot3filename_PARM_2,r4
      0012FE 75 19 00         [24] 4102 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 1),#0x00
      001301 75 1A 40         [24] 4103 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 2),#0x40
      001304 8D 82            [24] 4104 	mov	dpl,r5
      001306 8E 83            [24] 4105 	mov	dph,r6
      001308 8F F0            [24] 4106 	mov	b,r7
      00130A C0 04            [24] 4107 	push	ar4
      00130C 12 0A 9C         [24] 4108 	lcall	_HELPER_filename_to_8dot3filename
      00130F E5 82            [12] 4109 	mov	a,dpl
      001311 D0 04            [24] 4110 	pop	ar4
      001313 60 05            [24] 4111 	jz	00102$
                                   4112 ;	fat.h:643: return 1; //invalid filename
      001315 75 82 01         [24] 4113 	mov	dpl,#0x01
      001318 80 61            [24] 4114 	sjmp	00109$
      00131A                       4115 00102$:
                                   4116 ;	fat.h:646: FAT16_ROOTENTRY_SCAN_RESET();
      00131A C0 04            [24] 4117 	push	ar4
      00131C 12 12 B4         [24] 4118 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
      00131F D0 04            [24] 4119 	pop	ar4
                                   4120 ;	fat.h:647: while(FAT16_ROOTENTRY_SCAN()==0)
      001321 8C 07            [24] 4121 	mov	ar7,r4
      001323 74 08            [12] 4122 	mov	a,#0x08
      001325 2C               [12] 4123 	add	a,r4
      001326 FE               [12] 4124 	mov	r6,a
      001327                       4125 00106$:
      001327 C0 07            [24] 4126 	push	ar7
      001329 C0 06            [24] 4127 	push	ar6
      00132B 12 12 C6         [24] 4128 	lcall	_FAT16_ROOTENTRY_SCAN
      00132E E5 82            [12] 4129 	mov	a,dpl
      001330 D0 06            [24] 4130 	pop	ar6
      001332 D0 07            [24] 4131 	pop	ar7
                                   4132 ;	fat.h:649: if( HELPER_strncmp(__global_rootEntry.name,filename83,8)==0 && 
      001334 70 42            [24] 4133 	jnz	00108$
      001336 8F 3F            [24] 4134 	mov	_HELPER_strncmp_PARM_2,r7
      001338 F5 40            [12] 4135 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      00133A 75 41 40         [24] 4136 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      00133D 75 42 08         [24] 4137 	mov	_HELPER_strncmp_PARM_3,#0x08
      001340 90 00 6C         [24] 4138 	mov	dptr,#___global_rootEntry
      001343 75 F0 40         [24] 4139 	mov	b,#0x40
      001346 C0 07            [24] 4140 	push	ar7
      001348 C0 06            [24] 4141 	push	ar6
      00134A 12 09 6C         [24] 4142 	lcall	_HELPER_strncmp
      00134D E5 82            [12] 4143 	mov	a,dpl
      00134F D0 06            [24] 4144 	pop	ar6
      001351 D0 07            [24] 4145 	pop	ar7
                                   4146 ;	fat.h:650: HELPER_strncmp(__global_rootEntry.extension,&filename83[8],3)==0 )
      001353 70 D2            [24] 4147 	jnz	00106$
      001355 8E 3F            [24] 4148 	mov	_HELPER_strncmp_PARM_2,r6
      001357 F5 40            [12] 4149 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      001359 75 41 40         [24] 4150 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      00135C 75 42 03         [24] 4151 	mov	_HELPER_strncmp_PARM_3,#0x03
      00135F 90 00 74         [24] 4152 	mov	dptr,#(___global_rootEntry + 0x0008)
      001362 75 F0 40         [24] 4153 	mov	b,#0x40
      001365 C0 07            [24] 4154 	push	ar7
      001367 C0 06            [24] 4155 	push	ar6
      001369 12 09 6C         [24] 4156 	lcall	_HELPER_strncmp
      00136C E5 82            [12] 4157 	mov	a,dpl
      00136E D0 06            [24] 4158 	pop	ar6
      001370 D0 07            [24] 4159 	pop	ar7
                                   4160 ;	fat.h:656: return 0; //file found
      001372 70 B3            [24] 4161 	jnz	00106$
      001374 F5 82            [12] 4162 	mov	dpl,a
      001376 80 03            [24] 4163 	sjmp	00109$
      001378                       4164 00108$:
                                   4165 ;	fat.h:663: return 2; // file not found
      001378 75 82 02         [24] 4166 	mov	dpl,#0x02
      00137B                       4167 00109$:
                                   4168 ;	fat.h:665: }
      00137B 85 3E 81         [24] 4169 	mov	sp,_bp
      00137E D0 3E            [24] 4170 	pop	_bp
      001380 22               [24] 4171 	ret
                                   4172 ;------------------------------------------------------------
                                   4173 ;Allocation info for local variables in function 'FAT16_GET_NEXT_CLUSTER'
                                   4174 ;------------------------------------------------------------
                                   4175 ;current_cluster           Allocated to registers r6 r7 
                                   4176 ;temp                      Allocated to stack - _bp +8
                                   4177 ;sloc0                     Allocated to stack - _bp +1
                                   4178 ;sloc1                     Allocated to stack - _bp +8
                                   4179 ;sloc2                     Allocated to stack - _bp +10
                                   4180 ;sloc3                     Allocated to stack - _bp +4
                                   4181 ;------------------------------------------------------------
                                   4182 ;	fat.h:668: uint16_t FAT16_GET_NEXT_CLUSTER(uint16_t current_cluster) __reentrant
                                   4183 ;	-----------------------------------------
                                   4184 ;	 function FAT16_GET_NEXT_CLUSTER
                                   4185 ;	-----------------------------------------
      001381                       4186 _FAT16_GET_NEXT_CLUSTER:
      001381 C0 3E            [24] 4187 	push	_bp
      001383 E5 81            [12] 4188 	mov	a,sp
      001385 F5 3E            [12] 4189 	mov	_bp,a
      001387 24 09            [12] 4190 	add	a,#0x09
      001389 F5 81            [12] 4191 	mov	sp,a
      00138B AE 82            [24] 4192 	mov	r6,dpl
      00138D AF 83            [24] 4193 	mov	r7,dph
                                   4194 ;	fat.h:677: SDread(__global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps, (current_cluster*2) % __global_vbr.bps, 2, temp);
      00138F E5 3E            [12] 4195 	mov	a,_bp
      001391 24 08            [12] 4196 	add	a,#0x08
      001393 F9               [12] 4197 	mov	r1,a
      001394 A8 3E            [24] 4198 	mov	r0,_bp
      001396 08               [12] 4199 	inc	r0
      001397 A6 01            [24] 4200 	mov	@r0,ar1
      001399 08               [12] 4201 	inc	r0
      00139A 76 00            [12] 4202 	mov	@r0,#0x00
      00139C 08               [12] 4203 	inc	r0
      00139D 76 40            [12] 4204 	mov	@r0,#0x40
      00139F EE               [12] 4205 	mov	a,r6
      0013A0 2E               [12] 4206 	add	a,r6
      0013A1 FE               [12] 4207 	mov	r6,a
      0013A2 EF               [12] 4208 	mov	a,r7
      0013A3 33               [12] 4209 	rlc	a
      0013A4 FF               [12] 4210 	mov	r7,a
      0013A5 78 52            [12] 4211 	mov	r0,#(___global_vbr + 0x0006)
      0013A7 86 05            [24] 4212 	mov	ar5,@r0
      0013A9 08               [12] 4213 	inc	r0
      0013AA 86 04            [24] 4214 	mov	ar4,@r0
      0013AC 8D 3F            [24] 4215 	mov	__moduint_PARM_2,r5
      0013AE 8C 40            [24] 4216 	mov	(__moduint_PARM_2 + 1),r4
      0013B0 8E 82            [24] 4217 	mov	dpl,r6
      0013B2 8F 83            [24] 4218 	mov	dph,r7
      0013B4 C0 07            [24] 4219 	push	ar7
      0013B6 C0 06            [24] 4220 	push	ar6
      0013B8 C0 05            [24] 4221 	push	ar5
      0013BA C0 04            [24] 4222 	push	ar4
      0013BC C0 01            [24] 4223 	push	ar1
      0013BE 12 1A B2         [24] 4224 	lcall	__moduint
      0013C1 AB 82            [24] 4225 	mov	r3,dpl
      0013C3 AA 83            [24] 4226 	mov	r2,dph
      0013C5 D0 01            [24] 4227 	pop	ar1
      0013C7 D0 04            [24] 4228 	pop	ar4
      0013C9 D0 05            [24] 4229 	pop	ar5
      0013CB D0 06            [24] 4230 	pop	ar6
      0013CD D0 07            [24] 4231 	pop	ar7
      0013CF E5 3E            [12] 4232 	mov	a,_bp
      0013D1 24 04            [12] 4233 	add	a,#0x04
      0013D3 F8               [12] 4234 	mov	r0,a
      0013D4 C0 01            [24] 4235 	push	ar1
      0013D6 79 5F            [12] 4236 	mov	r1,#(___global_vbr + 0x0013)
      0013D8 E7               [12] 4237 	mov	a,@r1
      0013D9 F6               [12] 4238 	mov	@r0,a
      0013DA 09               [12] 4239 	inc	r1
      0013DB E7               [12] 4240 	mov	a,@r1
      0013DC 08               [12] 4241 	inc	r0
      0013DD F6               [12] 4242 	mov	@r0,a
      0013DE 09               [12] 4243 	inc	r1
      0013DF E7               [12] 4244 	mov	a,@r1
      0013E0 08               [12] 4245 	inc	r0
      0013E1 F6               [12] 4246 	mov	@r0,a
      0013E2 09               [12] 4247 	inc	r1
      0013E3 E7               [12] 4248 	mov	a,@r1
      0013E4 08               [12] 4249 	inc	r0
      0013E5 F6               [12] 4250 	mov	@r0,a
      0013E6 D0 01            [24] 4251 	pop	ar1
      0013E8 8D 3F            [24] 4252 	mov	__divuint_PARM_2,r5
      0013EA 8C 40            [24] 4253 	mov	(__divuint_PARM_2 + 1),r4
      0013EC 8E 82            [24] 4254 	mov	dpl,r6
      0013EE 8F 83            [24] 4255 	mov	dph,r7
      0013F0 C0 03            [24] 4256 	push	ar3
      0013F2 C0 02            [24] 4257 	push	ar2
      0013F4 C0 01            [24] 4258 	push	ar1
      0013F6 12 19 69         [24] 4259 	lcall	__divuint
      0013F9 AE 82            [24] 4260 	mov	r6,dpl
      0013FB AF 83            [24] 4261 	mov	r7,dph
      0013FD D0 01            [24] 4262 	pop	ar1
      0013FF D0 02            [24] 4263 	pop	ar2
      001401 D0 03            [24] 4264 	pop	ar3
      001403 8E 04            [24] 4265 	mov	ar4,r6
      001405 8F 05            [24] 4266 	mov	ar5,r7
      001407 E4               [12] 4267 	clr	a
      001408 FE               [12] 4268 	mov	r6,a
      001409 FF               [12] 4269 	mov	r7,a
      00140A E5 3E            [12] 4270 	mov	a,_bp
      00140C 24 04            [12] 4271 	add	a,#0x04
      00140E F8               [12] 4272 	mov	r0,a
      00140F EC               [12] 4273 	mov	a,r4
      001410 26               [12] 4274 	add	a,@r0
      001411 FC               [12] 4275 	mov	r4,a
      001412 ED               [12] 4276 	mov	a,r5
      001413 08               [12] 4277 	inc	r0
      001414 36               [12] 4278 	addc	a,@r0
      001415 FD               [12] 4279 	mov	r5,a
      001416 EE               [12] 4280 	mov	a,r6
      001417 08               [12] 4281 	inc	r0
      001418 36               [12] 4282 	addc	a,@r0
      001419 FE               [12] 4283 	mov	r6,a
      00141A EF               [12] 4284 	mov	a,r7
      00141B 08               [12] 4285 	inc	r0
      00141C 36               [12] 4286 	addc	a,@r0
      00141D FF               [12] 4287 	mov	r7,a
      00141E C0 01            [24] 4288 	push	ar1
      001420 A8 3E            [24] 4289 	mov	r0,_bp
      001422 08               [12] 4290 	inc	r0
      001423 E6               [12] 4291 	mov	a,@r0
      001424 C0 E0            [24] 4292 	push	acc
      001426 08               [12] 4293 	inc	r0
      001427 E6               [12] 4294 	mov	a,@r0
      001428 C0 E0            [24] 4295 	push	acc
      00142A 08               [12] 4296 	inc	r0
      00142B E6               [12] 4297 	mov	a,@r0
      00142C C0 E0            [24] 4298 	push	acc
      00142E 74 02            [12] 4299 	mov	a,#0x02
      001430 C0 E0            [24] 4300 	push	acc
      001432 E4               [12] 4301 	clr	a
      001433 C0 E0            [24] 4302 	push	acc
      001435 C0 03            [24] 4303 	push	ar3
      001437 C0 02            [24] 4304 	push	ar2
      001439 8C 82            [24] 4305 	mov	dpl,r4
      00143B 8D 83            [24] 4306 	mov	dph,r5
      00143D 8E F0            [24] 4307 	mov	b,r6
      00143F EF               [12] 4308 	mov	a,r7
      001440 12 07 14         [24] 4309 	lcall	_SDread
      001443 E5 81            [12] 4310 	mov	a,sp
      001445 24 F9            [12] 4311 	add	a,#0xf9
      001447 F5 81            [12] 4312 	mov	sp,a
      001449 D0 01            [24] 4313 	pop	ar1
                                   4314 ;	fat.h:678: return (uint16_t)temp[1] << 8 | temp[0]; 
      00144B E9               [12] 4315 	mov	a,r1
      00144C 04               [12] 4316 	inc	a
      00144D F8               [12] 4317 	mov	r0,a
      00144E 86 07            [24] 4318 	mov	ar7,@r0
      001450 8F 06            [24] 4319 	mov	ar6,r7
      001452 7F 00            [12] 4320 	mov	r7,#0x00
      001454 87 05            [24] 4321 	mov	ar5,@r1
      001456 7C 00            [12] 4322 	mov	r4,#0x00
      001458 ED               [12] 4323 	mov	a,r5
      001459 4F               [12] 4324 	orl	a,r7
      00145A F5 82            [12] 4325 	mov	dpl,a
      00145C EC               [12] 4326 	mov	a,r4
      00145D 4E               [12] 4327 	orl	a,r6
      00145E F5 83            [12] 4328 	mov	dph,a
                                   4329 ;	fat.h:684: }
      001460 85 3E 81         [24] 4330 	mov	sp,_bp
      001463 D0 3E            [24] 4331 	pop	_bp
      001465 22               [24] 4332 	ret
                                   4333 ;------------------------------------------------------------
                                   4334 ;Allocation info for local variables in function 'FAT16_FILE_READ'
                                   4335 ;------------------------------------------------------------
                                   4336 ;dst                       Allocated to stack - _bp -5
                                   4337 ;nbytes                    Allocated to stack - _bp +1
                                   4338 ;current_cluster           Allocated to registers r7 r6 
                                   4339 ;bytes_read_in_current_cluster Allocated to stack - _bp +10
                                   4340 ;bytes_read_in_current_sector Allocated to stack - _bp +12
                                   4341 ;current_sector            Allocated to stack - _bp +14
                                   4342 ;sloc0                     Allocated to stack - _bp +2
                                   4343 ;sloc1                     Allocated to stack - _bp +6
                                   4344 ;------------------------------------------------------------
                                   4345 ;	fat.h:705: uint8_t FAT16_FILE_READ(uint8_t nbytes, uint8_t *dst) __reentrant
                                   4346 ;	-----------------------------------------
                                   4347 ;	 function FAT16_FILE_READ
                                   4348 ;	-----------------------------------------
      001466                       4349 _FAT16_FILE_READ:
      001466 C0 3E            [24] 4350 	push	_bp
      001468 85 81 3E         [24] 4351 	mov	_bp,sp
      00146B C0 82            [24] 4352 	push	dpl
      00146D E5 81            [12] 4353 	mov	a,sp
      00146F 24 10            [12] 4354 	add	a,#0x10
      001471 F5 81            [12] 4355 	mov	sp,a
                                   4356 ;	fat.h:714: if(nbytes==0)
      001473 A8 3E            [24] 4357 	mov	r0,_bp
      001475 08               [12] 4358 	inc	r0
      001476 E6               [12] 4359 	mov	a,@r0
                                   4360 ;	fat.h:716: return 0; //read 0 bytes
      001477 70 05            [24] 4361 	jnz	00102$
      001479 F5 82            [12] 4362 	mov	dpl,a
      00147B 02 16 C9         [24] 4363 	ljmp	00113$
      00147E                       4364 00102$:
                                   4365 ;	fat.h:719: if(nbytes & (nbytes-1))
      00147E A8 3E            [24] 4366 	mov	r0,_bp
      001480 08               [12] 4367 	inc	r0
      001481 86 05            [24] 4368 	mov	ar5,@r0
      001483 7E 00            [12] 4369 	mov	r6,#0x00
      001485 ED               [12] 4370 	mov	a,r5
      001486 24 FF            [12] 4371 	add	a,#0xff
      001488 FB               [12] 4372 	mov	r3,a
      001489 EE               [12] 4373 	mov	a,r6
      00148A 34 FF            [12] 4374 	addc	a,#0xff
      00148C FC               [12] 4375 	mov	r4,a
      00148D EB               [12] 4376 	mov	a,r3
      00148E 52 05            [12] 4377 	anl	ar5,a
      001490 EC               [12] 4378 	mov	a,r4
      001491 52 06            [12] 4379 	anl	ar6,a
      001493 ED               [12] 4380 	mov	a,r5
      001494 4E               [12] 4381 	orl	a,r6
      001495 60 06            [24] 4382 	jz	00104$
                                   4383 ;	fat.h:724: return 255; //error
      001497 75 82 FF         [24] 4384 	mov	dpl,#0xff
      00149A 02 16 C9         [24] 4385 	ljmp	00113$
      00149D                       4386 00104$:
                                   4387 ;	fat.h:727: if(__global_rootEntry.bytes_read == __global_rootEntry.size)
      00149D A8 3E            [24] 4388 	mov	r0,_bp
      00149F 08               [12] 4389 	inc	r0
      0014A0 08               [12] 4390 	inc	r0
      0014A1 79 80            [12] 4391 	mov	r1,#(___global_rootEntry + 0x0014)
      0014A3 E7               [12] 4392 	mov	a,@r1
      0014A4 F6               [12] 4393 	mov	@r0,a
      0014A5 09               [12] 4394 	inc	r1
      0014A6 E7               [12] 4395 	mov	a,@r1
      0014A7 08               [12] 4396 	inc	r0
      0014A8 F6               [12] 4397 	mov	@r0,a
      0014A9 09               [12] 4398 	inc	r1
      0014AA E7               [12] 4399 	mov	a,@r1
      0014AB 08               [12] 4400 	inc	r0
      0014AC F6               [12] 4401 	mov	@r0,a
      0014AD 09               [12] 4402 	inc	r1
      0014AE E7               [12] 4403 	mov	a,@r1
      0014AF 08               [12] 4404 	inc	r0
      0014B0 F6               [12] 4405 	mov	@r0,a
      0014B1 78 7A            [12] 4406 	mov	r0,#(___global_rootEntry + 0x000e)
      0014B3 86 02            [24] 4407 	mov	ar2,@r0
      0014B5 08               [12] 4408 	inc	r0
      0014B6 86 05            [24] 4409 	mov	ar5,@r0
      0014B8 08               [12] 4410 	inc	r0
      0014B9 86 06            [24] 4411 	mov	ar6,@r0
      0014BB 08               [12] 4412 	inc	r0
      0014BC 86 07            [24] 4413 	mov	ar7,@r0
      0014BE A8 3E            [24] 4414 	mov	r0,_bp
      0014C0 08               [12] 4415 	inc	r0
      0014C1 08               [12] 4416 	inc	r0
      0014C2 E6               [12] 4417 	mov	a,@r0
      0014C3 B5 02 11         [24] 4418 	cjne	a,ar2,00141$
      0014C6 08               [12] 4419 	inc	r0
      0014C7 E6               [12] 4420 	mov	a,@r0
      0014C8 B5 05 0C         [24] 4421 	cjne	a,ar5,00141$
      0014CB 08               [12] 4422 	inc	r0
      0014CC E6               [12] 4423 	mov	a,@r0
      0014CD B5 06 07         [24] 4424 	cjne	a,ar6,00141$
      0014D0 08               [12] 4425 	inc	r0
      0014D1 E6               [12] 4426 	mov	a,@r0
      0014D2 B5 07 02         [24] 4427 	cjne	a,ar7,00141$
      0014D5 80 02            [24] 4428 	sjmp	00142$
      0014D7                       4429 00141$:
      0014D7 80 06            [24] 4430 	sjmp	00111$
      0014D9                       4431 00142$:
                                   4432 ;	fat.h:729: return 0; //end of file - return number of bytes read
      0014D9 75 82 00         [24] 4433 	mov	dpl,#0x00
      0014DC 02 16 C9         [24] 4434 	ljmp	00113$
      0014DF                       4435 00111$:
                                   4436 ;	fat.h:734: bytes_read_in_current_cluster = __global_rootEntry.bytes_read % __global_vbr.bpc;
      0014DF 78 5B            [12] 4437 	mov	r0,#(___global_vbr + 0x000f)
      0014E1 86 3F            [24] 4438 	mov	__modulong_PARM_2,@r0
      0014E3 08               [12] 4439 	inc	r0
      0014E4 86 40            [24] 4440 	mov	(__modulong_PARM_2 + 1),@r0
      0014E6 08               [12] 4441 	inc	r0
      0014E7 86 41            [24] 4442 	mov	(__modulong_PARM_2 + 2),@r0
      0014E9 08               [12] 4443 	inc	r0
      0014EA 86 42            [24] 4444 	mov	(__modulong_PARM_2 + 3),@r0
      0014EC A8 3E            [24] 4445 	mov	r0,_bp
      0014EE 08               [12] 4446 	inc	r0
      0014EF 08               [12] 4447 	inc	r0
      0014F0 86 82            [24] 4448 	mov	dpl,@r0
      0014F2 08               [12] 4449 	inc	r0
      0014F3 86 83            [24] 4450 	mov	dph,@r0
      0014F5 08               [12] 4451 	inc	r0
      0014F6 86 F0            [24] 4452 	mov	b,@r0
      0014F8 08               [12] 4453 	inc	r0
      0014F9 E6               [12] 4454 	mov	a,@r0
      0014FA 12 19 92         [24] 4455 	lcall	__modulong
      0014FD AB 82            [24] 4456 	mov	r3,dpl
      0014FF AC 83            [24] 4457 	mov	r4,dph
      001501 E5 3E            [12] 4458 	mov	a,_bp
      001503 24 0A            [12] 4459 	add	a,#0x0a
      001505 F8               [12] 4460 	mov	r0,a
      001506 A6 03            [24] 4461 	mov	@r0,ar3
      001508 08               [12] 4462 	inc	r0
      001509 A6 04            [24] 4463 	mov	@r0,ar4
                                   4464 ;	fat.h:778: if(__global_rootEntry.bytes_read!=0 && bytes_read_in_current_cluster==0)
      00150B A8 3E            [24] 4465 	mov	r0,_bp
      00150D 08               [12] 4466 	inc	r0
      00150E 08               [12] 4467 	inc	r0
      00150F E6               [12] 4468 	mov	a,@r0
      001510 08               [12] 4469 	inc	r0
      001511 46               [12] 4470 	orl	a,@r0
      001512 08               [12] 4471 	inc	r0
      001513 46               [12] 4472 	orl	a,@r0
      001514 08               [12] 4473 	inc	r0
      001515 46               [12] 4474 	orl	a,@r0
      001516 60 1F            [24] 4475 	jz	00106$
      001518 E5 3E            [12] 4476 	mov	a,_bp
      00151A 24 0A            [12] 4477 	add	a,#0x0a
      00151C F8               [12] 4478 	mov	r0,a
      00151D E6               [12] 4479 	mov	a,@r0
      00151E 08               [12] 4480 	inc	r0
      00151F 46               [12] 4481 	orl	a,@r0
      001520 70 15            [24] 4482 	jnz	00106$
                                   4483 ;	fat.h:780: __global_rootEntry.startCluster = FAT16_GET_NEXT_CLUSTER(__global_rootEntry.startCluster);
      001522 78 78            [12] 4484 	mov	r0,#(___global_rootEntry + 0x000c)
      001524 86 82            [24] 4485 	mov	dpl,@r0
      001526 08               [12] 4486 	inc	r0
      001527 86 83            [24] 4487 	mov	dph,@r0
      001529 12 13 81         [24] 4488 	lcall	_FAT16_GET_NEXT_CLUSTER
      00152C E5 82            [12] 4489 	mov	a,dpl
      00152E 85 83 F0         [24] 4490 	mov	b,dph
      001531 78 78            [12] 4491 	mov	r0,#(___global_rootEntry + 0x000c)
      001533 F6               [12] 4492 	mov	@r0,a
      001534 08               [12] 4493 	inc	r0
      001535 A6 F0            [24] 4494 	mov	@r0,b
      001537                       4495 00106$:
                                   4496 ;	fat.h:784: current_cluster = __global_rootEntry.startCluster;
      001537 78 78            [12] 4497 	mov	r0,#(___global_rootEntry + 0x000c)
      001539 86 07            [24] 4498 	mov	ar7,@r0
      00153B 08               [12] 4499 	inc	r0
      00153C 86 06            [24] 4500 	mov	ar6,@r0
                                   4501 ;	fat.h:789: current_sector =    __global_vbr.addr_data_start 						//start of data
      00153E A8 3E            [24] 4502 	mov	r0,_bp
      001540 08               [12] 4503 	inc	r0
      001541 08               [12] 4504 	inc	r0
      001542 79 67            [12] 4505 	mov	r1,#(___global_vbr + 0x001b)
      001544 E7               [12] 4506 	mov	a,@r1
      001545 F6               [12] 4507 	mov	@r0,a
      001546 09               [12] 4508 	inc	r1
      001547 E7               [12] 4509 	mov	a,@r1
      001548 08               [12] 4510 	inc	r0
      001549 F6               [12] 4511 	mov	@r0,a
      00154A 09               [12] 4512 	inc	r1
      00154B E7               [12] 4513 	mov	a,@r1
      00154C 08               [12] 4514 	inc	r0
      00154D F6               [12] 4515 	mov	@r0,a
      00154E 09               [12] 4516 	inc	r1
      00154F E7               [12] 4517 	mov	a,@r1
      001550 08               [12] 4518 	inc	r0
      001551 F6               [12] 4519 	mov	@r0,a
                                   4520 ;	fat.h:790: + (current_cluster-2) * __global_vbr.spc 				//skip to the start of current cluster
      001552 EF               [12] 4521 	mov	a,r7
      001553 24 FE            [12] 4522 	add	a,#0xfe
      001555 F5 82            [12] 4523 	mov	dpl,a
      001557 EE               [12] 4524 	mov	a,r6
      001558 34 FF            [12] 4525 	addc	a,#0xff
      00155A F5 83            [12] 4526 	mov	dph,a
      00155C 78 54            [12] 4527 	mov	r0,#(___global_vbr + 0x0008)
      00155E 86 03            [24] 4528 	mov	ar3,@r0
      001560 8B 3F            [24] 4529 	mov	__mulint_PARM_2,r3
      001562 75 40 00         [24] 4530 	mov	(__mulint_PARM_2 + 1),#0x00
      001565 12 1A 95         [24] 4531 	lcall	__mulint
      001568 AB 82            [24] 4532 	mov	r3,dpl
      00156A AF 83            [24] 4533 	mov	r7,dph
      00156C 8F 05            [24] 4534 	mov	ar5,r7
      00156E 7E 00            [12] 4535 	mov	r6,#0x00
      001570 7F 00            [12] 4536 	mov	r7,#0x00
      001572 A8 3E            [24] 4537 	mov	r0,_bp
      001574 08               [12] 4538 	inc	r0
      001575 08               [12] 4539 	inc	r0
      001576 EB               [12] 4540 	mov	a,r3
      001577 26               [12] 4541 	add	a,@r0
      001578 F6               [12] 4542 	mov	@r0,a
      001579 ED               [12] 4543 	mov	a,r5
      00157A 08               [12] 4544 	inc	r0
      00157B 36               [12] 4545 	addc	a,@r0
      00157C F6               [12] 4546 	mov	@r0,a
      00157D EE               [12] 4547 	mov	a,r6
      00157E 08               [12] 4548 	inc	r0
      00157F 36               [12] 4549 	addc	a,@r0
      001580 F6               [12] 4550 	mov	@r0,a
      001581 EF               [12] 4551 	mov	a,r7
      001582 08               [12] 4552 	inc	r0
      001583 36               [12] 4553 	addc	a,@r0
      001584 F6               [12] 4554 	mov	@r0,a
                                   4555 ;	fat.h:791: + bytes_read_in_current_cluster/__global_vbr.bps;	//skip sectors already read in current cluster
      001585 78 52            [12] 4556 	mov	r0,#(___global_vbr + 0x0006)
      001587 86 02            [24] 4557 	mov	ar2,@r0
      001589 08               [12] 4558 	inc	r0
      00158A 86 04            [24] 4559 	mov	ar4,@r0
      00158C 8A 3F            [24] 4560 	mov	__divuint_PARM_2,r2
      00158E 8C 40            [24] 4561 	mov	(__divuint_PARM_2 + 1),r4
      001590 E5 3E            [12] 4562 	mov	a,_bp
      001592 24 0A            [12] 4563 	add	a,#0x0a
      001594 F8               [12] 4564 	mov	r0,a
      001595 86 82            [24] 4565 	mov	dpl,@r0
      001597 08               [12] 4566 	inc	r0
      001598 86 83            [24] 4567 	mov	dph,@r0
      00159A C0 04            [24] 4568 	push	ar4
      00159C C0 02            [24] 4569 	push	ar2
      00159E 12 19 69         [24] 4570 	lcall	__divuint
      0015A1 AE 82            [24] 4571 	mov	r6,dpl
      0015A3 AF 83            [24] 4572 	mov	r7,dph
      0015A5 D0 02            [24] 4573 	pop	ar2
      0015A7 D0 04            [24] 4574 	pop	ar4
      0015A9 7D 00            [12] 4575 	mov	r5,#0x00
      0015AB 7B 00            [12] 4576 	mov	r3,#0x00
      0015AD A8 3E            [24] 4577 	mov	r0,_bp
      0015AF 08               [12] 4578 	inc	r0
      0015B0 08               [12] 4579 	inc	r0
      0015B1 EE               [12] 4580 	mov	a,r6
      0015B2 26               [12] 4581 	add	a,@r0
      0015B3 FE               [12] 4582 	mov	r6,a
      0015B4 EF               [12] 4583 	mov	a,r7
      0015B5 08               [12] 4584 	inc	r0
      0015B6 36               [12] 4585 	addc	a,@r0
      0015B7 FF               [12] 4586 	mov	r7,a
      0015B8 ED               [12] 4587 	mov	a,r5
      0015B9 08               [12] 4588 	inc	r0
      0015BA 36               [12] 4589 	addc	a,@r0
      0015BB FD               [12] 4590 	mov	r5,a
      0015BC EB               [12] 4591 	mov	a,r3
      0015BD 08               [12] 4592 	inc	r0
      0015BE 36               [12] 4593 	addc	a,@r0
      0015BF FB               [12] 4594 	mov	r3,a
      0015C0 E5 3E            [12] 4595 	mov	a,_bp
      0015C2 24 0E            [12] 4596 	add	a,#0x0e
      0015C4 F8               [12] 4597 	mov	r0,a
      0015C5 A6 06            [24] 4598 	mov	@r0,ar6
      0015C7 08               [12] 4599 	inc	r0
      0015C8 A6 07            [24] 4600 	mov	@r0,ar7
      0015CA 08               [12] 4601 	inc	r0
      0015CB A6 05            [24] 4602 	mov	@r0,ar5
      0015CD 08               [12] 4603 	inc	r0
      0015CE A6 03            [24] 4604 	mov	@r0,ar3
                                   4605 ;	fat.h:794: bytes_read_in_current_sector = bytes_read_in_current_cluster % __global_vbr.bps;
      0015D0 8A 3F            [24] 4606 	mov	__moduint_PARM_2,r2
      0015D2 8C 40            [24] 4607 	mov	(__moduint_PARM_2 + 1),r4
      0015D4 E5 3E            [12] 4608 	mov	a,_bp
      0015D6 24 0A            [12] 4609 	add	a,#0x0a
      0015D8 F8               [12] 4610 	mov	r0,a
      0015D9 86 82            [24] 4611 	mov	dpl,@r0
      0015DB 08               [12] 4612 	inc	r0
      0015DC 86 83            [24] 4613 	mov	dph,@r0
      0015DE 12 1A B2         [24] 4614 	lcall	__moduint
      0015E1 C8               [12] 4615 	xch	a,r0
      0015E2 E5 3E            [12] 4616 	mov	a,_bp
      0015E4 24 0C            [12] 4617 	add	a,#0x0c
      0015E6 C8               [12] 4618 	xch	a,r0
      0015E7 A6 82            [24] 4619 	mov	@r0,dpl
      0015E9 08               [12] 4620 	inc	r0
      0015EA A6 83            [24] 4621 	mov	@r0,dph
                                   4622 ;	fat.h:798: if(__global_rootEntry.bytes_read + nbytes > __global_rootEntry.size )
      0015EC A8 3E            [24] 4623 	mov	r0,_bp
      0015EE 08               [12] 4624 	inc	r0
      0015EF 08               [12] 4625 	inc	r0
      0015F0 79 80            [12] 4626 	mov	r1,#(___global_rootEntry + 0x0014)
      0015F2 E7               [12] 4627 	mov	a,@r1
      0015F3 F6               [12] 4628 	mov	@r0,a
      0015F4 09               [12] 4629 	inc	r1
      0015F5 E7               [12] 4630 	mov	a,@r1
      0015F6 08               [12] 4631 	inc	r0
      0015F7 F6               [12] 4632 	mov	@r0,a
      0015F8 09               [12] 4633 	inc	r1
      0015F9 E7               [12] 4634 	mov	a,@r1
      0015FA 08               [12] 4635 	inc	r0
      0015FB F6               [12] 4636 	mov	@r0,a
      0015FC 09               [12] 4637 	inc	r1
      0015FD E7               [12] 4638 	mov	a,@r1
      0015FE 08               [12] 4639 	inc	r0
      0015FF F6               [12] 4640 	mov	@r0,a
      001600 A8 3E            [24] 4641 	mov	r0,_bp
      001602 08               [12] 4642 	inc	r0
      001603 86 03            [24] 4643 	mov	ar3,@r0
      001605 7D 00            [12] 4644 	mov	r5,#0x00
      001607 7E 00            [12] 4645 	mov	r6,#0x00
      001609 7F 00            [12] 4646 	mov	r7,#0x00
      00160B A8 3E            [24] 4647 	mov	r0,_bp
      00160D 08               [12] 4648 	inc	r0
      00160E 08               [12] 4649 	inc	r0
      00160F EB               [12] 4650 	mov	a,r3
      001610 26               [12] 4651 	add	a,@r0
      001611 FB               [12] 4652 	mov	r3,a
      001612 ED               [12] 4653 	mov	a,r5
      001613 08               [12] 4654 	inc	r0
      001614 36               [12] 4655 	addc	a,@r0
      001615 FD               [12] 4656 	mov	r5,a
      001616 EE               [12] 4657 	mov	a,r6
      001617 08               [12] 4658 	inc	r0
      001618 36               [12] 4659 	addc	a,@r0
      001619 FE               [12] 4660 	mov	r6,a
      00161A EF               [12] 4661 	mov	a,r7
      00161B 08               [12] 4662 	inc	r0
      00161C 36               [12] 4663 	addc	a,@r0
      00161D FF               [12] 4664 	mov	r7,a
      00161E E5 3E            [12] 4665 	mov	a,_bp
      001620 24 06            [12] 4666 	add	a,#0x06
      001622 F8               [12] 4667 	mov	r0,a
      001623 79 7A            [12] 4668 	mov	r1,#(___global_rootEntry + 0x000e)
      001625 E7               [12] 4669 	mov	a,@r1
      001626 F6               [12] 4670 	mov	@r0,a
      001627 09               [12] 4671 	inc	r1
      001628 E7               [12] 4672 	mov	a,@r1
      001629 08               [12] 4673 	inc	r0
      00162A F6               [12] 4674 	mov	@r0,a
      00162B 09               [12] 4675 	inc	r1
      00162C E7               [12] 4676 	mov	a,@r1
      00162D 08               [12] 4677 	inc	r0
      00162E F6               [12] 4678 	mov	@r0,a
      00162F 09               [12] 4679 	inc	r1
      001630 E7               [12] 4680 	mov	a,@r1
      001631 08               [12] 4681 	inc	r0
      001632 F6               [12] 4682 	mov	@r0,a
      001633 E5 3E            [12] 4683 	mov	a,_bp
      001635 24 06            [12] 4684 	add	a,#0x06
      001637 F8               [12] 4685 	mov	r0,a
      001638 C3               [12] 4686 	clr	c
      001639 E6               [12] 4687 	mov	a,@r0
      00163A 9B               [12] 4688 	subb	a,r3
      00163B 08               [12] 4689 	inc	r0
      00163C E6               [12] 4690 	mov	a,@r0
      00163D 9D               [12] 4691 	subb	a,r5
      00163E 08               [12] 4692 	inc	r0
      00163F E6               [12] 4693 	mov	a,@r0
      001640 9E               [12] 4694 	subb	a,r6
      001641 08               [12] 4695 	inc	r0
      001642 E6               [12] 4696 	mov	a,@r0
      001643 9F               [12] 4697 	subb	a,r7
      001644 50 14            [24] 4698 	jnc	00109$
                                   4699 ;	fat.h:800: nbytes = __global_rootEntry.size - __global_rootEntry.bytes_read;//;
      001646 E5 3E            [12] 4700 	mov	a,_bp
      001648 24 06            [12] 4701 	add	a,#0x06
      00164A F8               [12] 4702 	mov	r0,a
      00164B 86 07            [24] 4703 	mov	ar7,@r0
      00164D A8 3E            [24] 4704 	mov	r0,_bp
      00164F 08               [12] 4705 	inc	r0
      001650 08               [12] 4706 	inc	r0
      001651 86 02            [24] 4707 	mov	ar2,@r0
      001653 A8 3E            [24] 4708 	mov	r0,_bp
      001655 08               [12] 4709 	inc	r0
      001656 EF               [12] 4710 	mov	a,r7
      001657 C3               [12] 4711 	clr	c
      001658 9A               [12] 4712 	subb	a,r2
      001659 F6               [12] 4713 	mov	@r0,a
      00165A                       4714 00109$:
                                   4715 ;	fat.h:819: __global_rootEntry.bytes_read += nbytes;
      00165A A8 3E            [24] 4716 	mov	r0,_bp
      00165C 08               [12] 4717 	inc	r0
      00165D 86 04            [24] 4718 	mov	ar4,@r0
      00165F 7D 00            [12] 4719 	mov	r5,#0x00
      001661 7E 00            [12] 4720 	mov	r6,#0x00
      001663 7F 00            [12] 4721 	mov	r7,#0x00
      001665 A8 3E            [24] 4722 	mov	r0,_bp
      001667 08               [12] 4723 	inc	r0
      001668 08               [12] 4724 	inc	r0
      001669 EC               [12] 4725 	mov	a,r4
      00166A 26               [12] 4726 	add	a,@r0
      00166B FC               [12] 4727 	mov	r4,a
      00166C ED               [12] 4728 	mov	a,r5
      00166D 08               [12] 4729 	inc	r0
      00166E 36               [12] 4730 	addc	a,@r0
      00166F FD               [12] 4731 	mov	r5,a
      001670 EE               [12] 4732 	mov	a,r6
      001671 08               [12] 4733 	inc	r0
      001672 36               [12] 4734 	addc	a,@r0
      001673 FE               [12] 4735 	mov	r6,a
      001674 EF               [12] 4736 	mov	a,r7
      001675 08               [12] 4737 	inc	r0
      001676 36               [12] 4738 	addc	a,@r0
      001677 FF               [12] 4739 	mov	r7,a
      001678 78 80            [12] 4740 	mov	r0,#(___global_rootEntry + 0x0014)
      00167A A6 04            [24] 4741 	mov	@r0,ar4
      00167C 08               [12] 4742 	inc	r0
      00167D A6 05            [24] 4743 	mov	@r0,ar5
      00167F 08               [12] 4744 	inc	r0
      001680 A6 06            [24] 4745 	mov	@r0,ar6
      001682 08               [12] 4746 	inc	r0
      001683 A6 07            [24] 4747 	mov	@r0,ar7
                                   4748 ;	fat.h:822: SDread(current_sector,bytes_read_in_current_sector,nbytes,dst);
      001685 A8 3E            [24] 4749 	mov	r0,_bp
      001687 08               [12] 4750 	inc	r0
      001688 86 06            [24] 4751 	mov	ar6,@r0
      00168A 7F 00            [12] 4752 	mov	r7,#0x00
      00168C E5 3E            [12] 4753 	mov	a,_bp
      00168E 24 FB            [12] 4754 	add	a,#0xfb
      001690 F8               [12] 4755 	mov	r0,a
      001691 E6               [12] 4756 	mov	a,@r0
      001692 C0 E0            [24] 4757 	push	acc
      001694 08               [12] 4758 	inc	r0
      001695 E6               [12] 4759 	mov	a,@r0
      001696 C0 E0            [24] 4760 	push	acc
      001698 08               [12] 4761 	inc	r0
      001699 E6               [12] 4762 	mov	a,@r0
      00169A C0 E0            [24] 4763 	push	acc
      00169C C0 06            [24] 4764 	push	ar6
      00169E C0 07            [24] 4765 	push	ar7
      0016A0 E5 3E            [12] 4766 	mov	a,_bp
      0016A2 24 0C            [12] 4767 	add	a,#0x0c
      0016A4 F8               [12] 4768 	mov	r0,a
      0016A5 E6               [12] 4769 	mov	a,@r0
      0016A6 C0 E0            [24] 4770 	push	acc
      0016A8 08               [12] 4771 	inc	r0
      0016A9 E6               [12] 4772 	mov	a,@r0
      0016AA C0 E0            [24] 4773 	push	acc
      0016AC E5 3E            [12] 4774 	mov	a,_bp
      0016AE 24 0E            [12] 4775 	add	a,#0x0e
      0016B0 F8               [12] 4776 	mov	r0,a
      0016B1 86 82            [24] 4777 	mov	dpl,@r0
      0016B3 08               [12] 4778 	inc	r0
      0016B4 86 83            [24] 4779 	mov	dph,@r0
      0016B6 08               [12] 4780 	inc	r0
      0016B7 86 F0            [24] 4781 	mov	b,@r0
      0016B9 08               [12] 4782 	inc	r0
      0016BA E6               [12] 4783 	mov	a,@r0
      0016BB 12 07 14         [24] 4784 	lcall	_SDread
      0016BE E5 81            [12] 4785 	mov	a,sp
      0016C0 24 F9            [12] 4786 	add	a,#0xf9
      0016C2 F5 81            [12] 4787 	mov	sp,a
                                   4788 ;	fat.h:827: return nbytes;
      0016C4 A8 3E            [24] 4789 	mov	r0,_bp
      0016C6 08               [12] 4790 	inc	r0
      0016C7 86 82            [24] 4791 	mov	dpl,@r0
      0016C9                       4792 00113$:
                                   4793 ;	fat.h:829: }
      0016C9 85 3E 81         [24] 4794 	mov	sp,_bp
      0016CC D0 3E            [24] 4795 	pop	_bp
      0016CE 22               [24] 4796 	ret
                                   4797 ;------------------------------------------------------------
                                   4798 ;Allocation info for local variables in function 'FAT16_FILE_CAT'
                                   4799 ;------------------------------------------------------------
                                   4800 ;filename                  Allocated to registers r5 r6 r7 
                                   4801 ;temp                      Allocated to stack - _bp +1
                                   4802 ;resp                      Allocated to registers r6 
                                   4803 ;i                         Allocated to registers r5 
                                   4804 ;------------------------------------------------------------
                                   4805 ;	fat.h:831: void FAT16_FILE_CAT(uint8_t *filename) __reentrant
                                   4806 ;	-----------------------------------------
                                   4807 ;	 function FAT16_FILE_CAT
                                   4808 ;	-----------------------------------------
      0016CF                       4809 _FAT16_FILE_CAT:
      0016CF C0 3E            [24] 4810 	push	_bp
      0016D1 E5 81            [12] 4811 	mov	a,sp
      0016D3 F5 3E            [12] 4812 	mov	_bp,a
      0016D5 24 08            [12] 4813 	add	a,#0x08
      0016D7 F5 81            [12] 4814 	mov	sp,a
                                   4815 ;	fat.h:838: if(FAT16_FILE_OPEN(filename))
      0016D9 12 12 E9         [24] 4816 	lcall	_FAT16_FILE_OPEN
      0016DC E5 82            [12] 4817 	mov	a,dpl
      0016DE 60 0B            [24] 4818 	jz	00115$
                                   4819 ;	fat.h:840: UartPrint("FILE NOT FOUND\n.");
      0016E0 90 1C A7         [24] 4820 	mov	dptr,#___str_8
      0016E3 75 F0 80         [24] 4821 	mov	b,#0x80
      0016E6 12 01 81         [24] 4822 	lcall	_UartPrint
                                   4823 ;	fat.h:841: return;
                                   4824 ;	fat.h:844: do
      0016E9 80 42            [24] 4825 	sjmp	00110$
      0016EB                       4826 00115$:
      0016EB AF 3E            [24] 4827 	mov	r7,_bp
      0016ED 0F               [12] 4828 	inc	r7
      0016EE                       4829 00104$:
                                   4830 ;	fat.h:846: resp=FAT16_FILE_READ(FILE_CAT_BUFFER_SIZE,temp);
      0016EE 8F 04            [24] 4831 	mov	ar4,r7
      0016F0 7D 00            [12] 4832 	mov	r5,#0x00
      0016F2 7E 40            [12] 4833 	mov	r6,#0x40
      0016F4 C0 07            [24] 4834 	push	ar7
      0016F6 C0 04            [24] 4835 	push	ar4
      0016F8 C0 05            [24] 4836 	push	ar5
      0016FA C0 06            [24] 4837 	push	ar6
      0016FC 75 82 08         [24] 4838 	mov	dpl,#0x08
      0016FF 12 14 66         [24] 4839 	lcall	_FAT16_FILE_READ
      001702 AE 82            [24] 4840 	mov	r6,dpl
      001704 15 81            [12] 4841 	dec	sp
      001706 15 81            [12] 4842 	dec	sp
      001708 15 81            [12] 4843 	dec	sp
      00170A D0 07            [24] 4844 	pop	ar7
                                   4845 ;	fat.h:847: for(uint8_t i=0;i<resp;i++) UartWrite(temp[i]);
      00170C 7D 00            [12] 4846 	mov	r5,#0x00
      00170E                       4847 00108$:
      00170E C3               [12] 4848 	clr	c
      00170F ED               [12] 4849 	mov	a,r5
      001710 9E               [12] 4850 	subb	a,r6
      001711 50 17            [24] 4851 	jnc	00105$
      001713 ED               [12] 4852 	mov	a,r5
      001714 2F               [12] 4853 	add	a,r7
      001715 F9               [12] 4854 	mov	r1,a
      001716 87 82            [24] 4855 	mov	dpl,@r1
      001718 C0 07            [24] 4856 	push	ar7
      00171A C0 06            [24] 4857 	push	ar6
      00171C C0 05            [24] 4858 	push	ar5
      00171E 12 00 FB         [24] 4859 	lcall	_UartWrite
      001721 D0 05            [24] 4860 	pop	ar5
      001723 D0 06            [24] 4861 	pop	ar6
      001725 D0 07            [24] 4862 	pop	ar7
      001727 0D               [12] 4863 	inc	r5
      001728 80 E4            [24] 4864 	sjmp	00108$
      00172A                       4865 00105$:
                                   4866 ;	fat.h:850: } while (resp!=0);
      00172A EE               [12] 4867 	mov	a,r6
      00172B 70 C1            [24] 4868 	jnz	00104$
                                   4869 ;	fat.h:852: return;
      00172D                       4870 00110$:
                                   4871 ;	fat.h:854: }
      00172D 85 3E 81         [24] 4872 	mov	sp,_bp
      001730 D0 3E            [24] 4873 	pop	_bp
      001732 22               [24] 4874 	ret
                                   4875 ;------------------------------------------------------------
                                   4876 ;Allocation info for local variables in function 'delay'
                                   4877 ;------------------------------------------------------------
                                   4878 ;i                         Allocated to registers r7 
                                   4879 ;j                         Allocated to registers r6 
                                   4880 ;------------------------------------------------------------
                                   4881 ;	main.c:15: void delay(void) __reentrant
                                   4882 ;	-----------------------------------------
                                   4883 ;	 function delay
                                   4884 ;	-----------------------------------------
      001733                       4885 _delay:
                                   4886 ;	main.c:18: for(i=0;i<127;i++)
      001733 7F 00            [12] 4887 	mov	r7,#0x00
      001735                       4888 00106$:
                                   4889 ;	main.c:19: for(j=0;j<127;j++);
      001735 7E 7F            [12] 4890 	mov	r6,#0x7f
      001737                       4891 00105$:
      001737 EE               [12] 4892 	mov	a,r6
      001738 14               [12] 4893 	dec	a
      001739 FE               [12] 4894 	mov	r6,a
      00173A 70 FB            [24] 4895 	jnz	00105$
                                   4896 ;	main.c:18: for(i=0;i<127;i++)
      00173C 0F               [12] 4897 	inc	r7
      00173D BF 7F 00         [24] 4898 	cjne	r7,#0x7f,00124$
      001740                       4899 00124$:
      001740 40 F3            [24] 4900 	jc	00106$
                                   4901 ;	main.c:20: }
      001742 22               [24] 4902 	ret
                                   4903 ;------------------------------------------------------------
                                   4904 ;Allocation info for local variables in function 'SelectFAT16PartitionPrompt'
                                   4905 ;------------------------------------------------------------
                                   4906 ;_resp                     Allocated to registers r6 
                                   4907 ;_temp                     Allocated to registers r5 
                                   4908 ;i                         Allocated to registers r5 
                                   4909 ;i                         Allocated to registers r5 
                                   4910 ;------------------------------------------------------------
                                   4911 ;	main.c:22: void SelectFAT16PartitionPrompt() __reentrant
                                   4912 ;	-----------------------------------------
                                   4913 ;	 function SelectFAT16PartitionPrompt
                                   4914 ;	-----------------------------------------
      001743                       4915 _SelectFAT16PartitionPrompt:
                                   4916 ;	main.c:27: if(MBR_CHECK__SIGNATURE())
      001743 12 0B E4         [24] 4917 	lcall	_MBR_CHECK__SIGNATURE
      001746 E5 82            [12] 4918 	mov	a,dpl
      001748 60 09            [24] 4919 	jz	00102$
                                   4920 ;	main.c:30: UartPrint("ERROR:NO MBR FOUND\n");
      00174A 90 1C B8         [24] 4921 	mov	dptr,#___str_10
      00174D 75 F0 80         [24] 4922 	mov	b,#0x80
      001750 12 01 81         [24] 4923 	lcall	_UartPrint
      001753                       4924 00102$:
                                   4925 ;	main.c:34: _resp=MBR_DETECT_FAT16();
      001753 12 0C C2         [24] 4926 	lcall	_MBR_DETECT_FAT16
                                   4927 ;	main.c:35: if(_resp)
      001756 E5 82            [12] 4928 	mov	a,dpl
      001758 FF               [12] 4929 	mov	r7,a
      001759 FE               [12] 4930 	mov	r6,a
      00175A 70 03            [24] 4931 	jnz	00201$
      00175C 02 18 C3         [24] 4932 	ljmp	00129$
      00175F                       4933 00201$:
                                   4934 ;	main.c:39: if( (_resp & (_resp-1)) == 0)
      00175F 7F 00            [12] 4935 	mov	r7,#0x00
      001761 EE               [12] 4936 	mov	a,r6
      001762 24 FF            [12] 4937 	add	a,#0xff
      001764 FC               [12] 4938 	mov	r4,a
      001765 EF               [12] 4939 	mov	a,r7
      001766 34 FF            [12] 4940 	addc	a,#0xff
      001768 FD               [12] 4941 	mov	r5,a
      001769 EE               [12] 4942 	mov	a,r6
      00176A 52 04            [12] 4943 	anl	ar4,a
      00176C EF               [12] 4944 	mov	a,r7
      00176D 52 05            [12] 4945 	anl	ar5,a
      00176F EC               [12] 4946 	mov	a,r4
      001770 4D               [12] 4947 	orl	a,r5
                                   4948 ;	main.c:41: for(uint8_t i=0;i<4;i++)
      001771 70 68            [24] 4949 	jnz	00149$
      001773 FD               [12] 4950 	mov	r5,a
      001774 FC               [12] 4951 	mov	r4,a
      001775                       4952 00132$:
      001775 BC 04 00         [24] 4953 	cjne	r4,#0x04,00203$
      001778                       4954 00203$:
      001778 40 01            [24] 4955 	jc	00204$
      00177A 22               [24] 4956 	ret
      00177B                       4957 00204$:
                                   4958 ;	main.c:43: if(_resp & 1<<i) 
      00177B 8C F0            [24] 4959 	mov	b,r4
      00177D 05 F0            [12] 4960 	inc	b
      00177F 7A 01            [12] 4961 	mov	r2,#0x01
      001781 7B 00            [12] 4962 	mov	r3,#0x00
      001783 80 06            [24] 4963 	sjmp	00206$
      001785                       4964 00205$:
      001785 EA               [12] 4965 	mov	a,r2
      001786 2A               [12] 4966 	add	a,r2
      001787 FA               [12] 4967 	mov	r2,a
      001788 EB               [12] 4968 	mov	a,r3
      001789 33               [12] 4969 	rlc	a
      00178A FB               [12] 4970 	mov	r3,a
      00178B                       4971 00206$:
      00178B D5 F0 F7         [24] 4972 	djnz	b,00205$
      00178E EE               [12] 4973 	mov	a,r6
      00178F 52 02            [12] 4974 	anl	ar2,a
      001791 EF               [12] 4975 	mov	a,r7
      001792 52 03            [12] 4976 	anl	ar3,a
      001794 EA               [12] 4977 	mov	a,r2
      001795 4B               [12] 4978 	orl	a,r3
      001796 60 3E            [24] 4979 	jz	00133$
                                   4980 ;	main.c:45: VBR_MOUNT_VBR(i);
      001798 8D 82            [24] 4981 	mov	dpl,r5
      00179A C0 05            [24] 4982 	push	ar5
      00179C 12 0E 1D         [24] 4983 	lcall	_VBR_MOUNT_VBR
                                   4984 ;	main.c:46: UartPrint("Partition Mounted:");UartWriteNumber(i,HEX);
      00179F 90 1C CC         [24] 4985 	mov	dptr,#___str_11
      0017A2 75 F0 80         [24] 4986 	mov	b,#0x80
      0017A5 12 01 81         [24] 4987 	lcall	_UartPrint
      0017A8 D0 05            [24] 4988 	pop	ar5
      0017AA C0 05            [24] 4989 	push	ar5
      0017AC E4               [12] 4990 	clr	a
      0017AD C0 E0            [24] 4991 	push	acc
      0017AF 8D 82            [24] 4992 	mov	dpl,r5
      0017B1 12 01 B3         [24] 4993 	lcall	_UartWriteNumber
      0017B4 15 81            [12] 4994 	dec	sp
      0017B6 D0 05            [24] 4995 	pop	ar5
                                   4996 ;	main.c:47: if(VBR_FAT16_CHECK_COMPATIBILITY(i))
      0017B8 8D 82            [24] 4997 	mov	dpl,r5
      0017BA 12 10 39         [24] 4998 	lcall	_VBR_FAT16_CHECK_COMPATIBILITY
      0017BD E5 82            [12] 4999 	mov	a,dpl
      0017BF 70 01            [24] 5000 	jnz	00208$
      0017C1 22               [24] 5001 	ret
      0017C2                       5002 00208$:
                                   5003 ;	main.c:49: UartPrint("Incompatible FAT16\n");
      0017C2 90 1C DF         [24] 5004 	mov	dptr,#___str_12
      0017C5 75 F0 80         [24] 5005 	mov	b,#0x80
      0017C8 12 01 81         [24] 5006 	lcall	_UartPrint
                                   5007 ;	main.c:50: UartPrint(HALTING_MSG); while(1);
      0017CB 90 19 5E         [24] 5008 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_198
      0017CE 75 F0 80         [24] 5009 	mov	b,#0x80
      0017D1 12 01 81         [24] 5010 	lcall	_UartPrint
      0017D4                       5011 00104$:
                                   5012 ;	main.c:52: break; //break from for loop
      0017D4 80 FE            [24] 5013 	sjmp	00104$
      0017D6                       5014 00133$:
                                   5015 ;	main.c:41: for(uint8_t i=0;i<4;i++)
      0017D6 0C               [12] 5016 	inc	r4
      0017D7 8C 05            [24] 5017 	mov	ar5,r4
                                   5018 ;	main.c:58: for(uint8_t i=0;i<4;i++)
      0017D9 80 9A            [24] 5019 	sjmp	00132$
      0017DB                       5020 00149$:
      0017DB 7D 00            [12] 5021 	mov	r5,#0x00
      0017DD                       5022 00135$:
      0017DD BD 04 00         [24] 5023 	cjne	r5,#0x04,00209$
      0017E0                       5024 00209$:
      0017E0 50 75            [24] 5025 	jnc	00114$
                                   5026 ;	main.c:60: UartPrint("Partition-");UartWriteNumber(i,HEX);UartWrite('> ');
      0017E2 90 1C F3         [24] 5027 	mov	dptr,#___str_13
      0017E5 75 F0 80         [24] 5028 	mov	b,#0x80
      0017E8 C0 07            [24] 5029 	push	ar7
      0017EA C0 06            [24] 5030 	push	ar6
      0017EC C0 05            [24] 5031 	push	ar5
      0017EE 12 01 81         [24] 5032 	lcall	_UartPrint
      0017F1 D0 05            [24] 5033 	pop	ar5
      0017F3 C0 05            [24] 5034 	push	ar5
      0017F5 E4               [12] 5035 	clr	a
      0017F6 C0 E0            [24] 5036 	push	acc
      0017F8 8D 82            [24] 5037 	mov	dpl,r5
      0017FA 12 01 B3         [24] 5038 	lcall	_UartWriteNumber
      0017FD 15 81            [12] 5039 	dec	sp
      0017FF 75 82 3E         [24] 5040 	mov	dpl,#0x3e
      001802 12 00 FB         [24] 5041 	lcall	_UartWrite
      001805 D0 05            [24] 5042 	pop	ar5
      001807 D0 06            [24] 5043 	pop	ar6
      001809 D0 07            [24] 5044 	pop	ar7
                                   5045 ;	main.c:61: if(_resp & 1<<i) UartPrint("FAT16\n");
      00180B 8D F0            [24] 5046 	mov	b,r5
      00180D 05 F0            [12] 5047 	inc	b
      00180F 7B 01            [12] 5048 	mov	r3,#0x01
      001811 7C 00            [12] 5049 	mov	r4,#0x00
      001813 80 06            [24] 5050 	sjmp	00212$
      001815                       5051 00211$:
      001815 EB               [12] 5052 	mov	a,r3
      001816 2B               [12] 5053 	add	a,r3
      001817 FB               [12] 5054 	mov	r3,a
      001818 EC               [12] 5055 	mov	a,r4
      001819 33               [12] 5056 	rlc	a
      00181A FC               [12] 5057 	mov	r4,a
      00181B                       5058 00212$:
      00181B D5 F0 F7         [24] 5059 	djnz	b,00211$
      00181E EE               [12] 5060 	mov	a,r6
      00181F 52 03            [12] 5061 	anl	ar3,a
      001821 EF               [12] 5062 	mov	a,r7
      001822 52 04            [12] 5063 	anl	ar4,a
      001824 EB               [12] 5064 	mov	a,r3
      001825 4C               [12] 5065 	orl	a,r4
      001826 60 17            [24] 5066 	jz	00112$
      001828 90 1C FE         [24] 5067 	mov	dptr,#___str_14
      00182B 75 F0 80         [24] 5068 	mov	b,#0x80
      00182E C0 07            [24] 5069 	push	ar7
      001830 C0 06            [24] 5070 	push	ar6
      001832 C0 05            [24] 5071 	push	ar5
      001834 12 01 81         [24] 5072 	lcall	_UartPrint
      001837 D0 05            [24] 5073 	pop	ar5
      001839 D0 06            [24] 5074 	pop	ar6
      00183B D0 07            [24] 5075 	pop	ar7
      00183D 80 15            [24] 5076 	sjmp	00136$
      00183F                       5077 00112$:
                                   5078 ;	main.c:62: else UartPrint("Unknown\n");
      00183F 90 1D 05         [24] 5079 	mov	dptr,#___str_15
      001842 75 F0 80         [24] 5080 	mov	b,#0x80
      001845 C0 07            [24] 5081 	push	ar7
      001847 C0 06            [24] 5082 	push	ar6
      001849 C0 05            [24] 5083 	push	ar5
      00184B 12 01 81         [24] 5084 	lcall	_UartPrint
      00184E D0 05            [24] 5085 	pop	ar5
      001850 D0 06            [24] 5086 	pop	ar6
      001852 D0 07            [24] 5087 	pop	ar7
      001854                       5088 00136$:
                                   5089 ;	main.c:58: for(uint8_t i=0;i<4;i++)
      001854 0D               [12] 5090 	inc	r5
      001855 80 86            [24] 5091 	sjmp	00135$
      001857                       5092 00114$:
                                   5093 ;	main.c:65: UartPrint("\nSelect FAT16 Partition->\n");
      001857 90 1D 0E         [24] 5094 	mov	dptr,#___str_16
      00185A 75 F0 80         [24] 5095 	mov	b,#0x80
      00185D C0 07            [24] 5096 	push	ar7
      00185F C0 06            [24] 5097 	push	ar6
      001861 12 01 81         [24] 5098 	lcall	_UartPrint
                                   5099 ;	main.c:66: _temp=UartScanByte();
      001864 12 03 5E         [24] 5100 	lcall	_UartScanByte
      001867 AD 82            [24] 5101 	mov	r5,dpl
      001869 D0 06            [24] 5102 	pop	ar6
      00186B D0 07            [24] 5103 	pop	ar7
                                   5104 ;	main.c:67: if( _temp<4 && (_resp & (1<<_temp)) )
      00186D BD 04 00         [24] 5105 	cjne	r5,#0x04,00214$
      001870                       5106 00214$:
      001870 50 3D            [24] 5107 	jnc	00119$
      001872 8D F0            [24] 5108 	mov	b,r5
      001874 05 F0            [12] 5109 	inc	b
      001876 7B 01            [12] 5110 	mov	r3,#0x01
      001878 7C 00            [12] 5111 	mov	r4,#0x00
      00187A 80 06            [24] 5112 	sjmp	00217$
      00187C                       5113 00216$:
      00187C EB               [12] 5114 	mov	a,r3
      00187D 2B               [12] 5115 	add	a,r3
      00187E FB               [12] 5116 	mov	r3,a
      00187F EC               [12] 5117 	mov	a,r4
      001880 33               [12] 5118 	rlc	a
      001881 FC               [12] 5119 	mov	r4,a
      001882                       5120 00217$:
      001882 D5 F0 F7         [24] 5121 	djnz	b,00216$
      001885 EB               [12] 5122 	mov	a,r3
      001886 52 06            [12] 5123 	anl	ar6,a
      001888 EC               [12] 5124 	mov	a,r4
      001889 52 07            [12] 5125 	anl	ar7,a
      00188B EE               [12] 5126 	mov	a,r6
      00188C 4F               [12] 5127 	orl	a,r7
      00188D 60 20            [24] 5128 	jz	00119$
                                   5129 ;	main.c:69: UartPrint("Partition Mounted:");UartWriteNumber(_temp,HEX);
      00188F 90 1C CC         [24] 5130 	mov	dptr,#___str_11
      001892 75 F0 80         [24] 5131 	mov	b,#0x80
      001895 C0 05            [24] 5132 	push	ar5
      001897 12 01 81         [24] 5133 	lcall	_UartPrint
      00189A D0 05            [24] 5134 	pop	ar5
      00189C C0 05            [24] 5135 	push	ar5
      00189E E4               [12] 5136 	clr	a
      00189F C0 E0            [24] 5137 	push	acc
      0018A1 8D 82            [24] 5138 	mov	dpl,r5
      0018A3 12 01 B3         [24] 5139 	lcall	_UartWriteNumber
      0018A6 15 81            [12] 5140 	dec	sp
      0018A8 D0 05            [24] 5141 	pop	ar5
                                   5142 ;	main.c:70: VBR_MOUNT_VBR(_temp);
      0018AA 8D 82            [24] 5143 	mov	dpl,r5
      0018AC 02 0E 1D         [24] 5144 	ljmp	_VBR_MOUNT_VBR
      0018AF                       5145 00119$:
                                   5146 ;	main.c:74: UartPrint("Invalid selection.\n");
      0018AF 90 1D 29         [24] 5147 	mov	dptr,#___str_17
      0018B2 75 F0 80         [24] 5148 	mov	b,#0x80
      0018B5 12 01 81         [24] 5149 	lcall	_UartPrint
                                   5150 ;	main.c:75: UartPrint(HALTING_MSG); while(1);
      0018B8 90 19 5E         [24] 5151 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_198
      0018BB 75 F0 80         [24] 5152 	mov	b,#0x80
      0018BE 12 01 81         [24] 5153 	lcall	_UartPrint
      0018C1                       5154 00116$:
      0018C1 80 FE            [24] 5155 	sjmp	00116$
      0018C3                       5156 00129$:
                                   5157 ;	main.c:83: UartPrint("No FAT16 Partition.\n");
      0018C3 90 1D 3D         [24] 5158 	mov	dptr,#___str_18
      0018C6 75 F0 80         [24] 5159 	mov	b,#0x80
      0018C9 12 01 81         [24] 5160 	lcall	_UartPrint
                                   5161 ;	main.c:84: UartPrint(HALTING_MSG); while(1);
      0018CC 90 19 5E         [24] 5162 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_198
      0018CF 75 F0 80         [24] 5163 	mov	b,#0x80
      0018D2 12 01 81         [24] 5164 	lcall	_UartPrint
      0018D5                       5165 00126$:
                                   5166 ;	main.c:87: }
      0018D5 80 FE            [24] 5167 	sjmp	00126$
                                   5168 ;------------------------------------------------------------
                                   5169 ;Allocation info for local variables in function 'main'
                                   5170 ;------------------------------------------------------------
                                   5171 ;_resp                     Allocated to registers r7 
                                   5172 ;_temp                     Allocated to registers 
                                   5173 ;fname                     Allocated with name '_main_fname_65536_213'
                                   5174 ;buff                      Allocated with name '_main_buff_65536_213'
                                   5175 ;i                         Allocated to registers r7 
                                   5176 ;------------------------------------------------------------
                                   5177 ;	main.c:95: void main(void)
                                   5178 ;	-----------------------------------------
                                   5179 ;	 function main
                                   5180 ;	-----------------------------------------
      0018D7                       5181 _main:
                                   5182 ;	main.c:99: unsigned char fname[11]="hello.txt";
      0018D7 75 2B 68         [24] 5183 	mov	_main_fname_65536_213,#0x68
      0018DA 75 2C 65         [24] 5184 	mov	(_main_fname_65536_213 + 0x0001),#0x65
      0018DD 75 2D 6C         [24] 5185 	mov	(_main_fname_65536_213 + 0x0002),#0x6c
      0018E0 75 2E 6C         [24] 5186 	mov	(_main_fname_65536_213 + 0x0003),#0x6c
      0018E3 75 2F 6F         [24] 5187 	mov	(_main_fname_65536_213 + 0x0004),#0x6f
      0018E6 75 30 2E         [24] 5188 	mov	(_main_fname_65536_213 + 0x0005),#0x2e
      0018E9 75 31 74         [24] 5189 	mov	(_main_fname_65536_213 + 0x0006),#0x74
      0018EC 75 32 78         [24] 5190 	mov	(_main_fname_65536_213 + 0x0007),#0x78
      0018EF 75 33 74         [24] 5191 	mov	(_main_fname_65536_213 + 0x0008),#0x74
      0018F2 75 34 00         [24] 5192 	mov	(_main_fname_65536_213 + 0x0009),#0x00
      0018F5 75 35 00         [24] 5193 	mov	(_main_fname_65536_213 + 0x000a),#0x00
                                   5194 ;	main.c:103: UartBegin();
      0018F8 12 00 D8         [24] 5195 	lcall	_UartBegin
                                   5196 ;	main.c:104: spi_init(); 
      0018FB 12 04 57         [24] 5197 	lcall	_spi_init
                                   5198 ;	main.c:105: SDinit();
      0018FE 12 06 90         [24] 5199 	lcall	_SDinit
                                   5200 ;	main.c:107: SelectFAT16PartitionPrompt();
      001901 12 17 43         [24] 5201 	lcall	_SelectFAT16PartitionPrompt
                                   5202 ;	main.c:110: FAT16_FILE_OPEN(fname);
      001904 90 00 2B         [24] 5203 	mov	dptr,#_main_fname_65536_213
      001907 75 F0 40         [24] 5204 	mov	b,#0x40
      00190A 12 12 E9         [24] 5205 	lcall	_FAT16_FILE_OPEN
                                   5206 ;	main.c:111: while(1)
      00190D                       5207 00105$:
                                   5208 ;	main.c:113: _resp=FAT16_FILE_READ(8,buff);
      00190D 74 36            [12] 5209 	mov	a,#_main_buff_65536_213
      00190F C0 E0            [24] 5210 	push	acc
      001911 74 00            [12] 5211 	mov	a,#(_main_buff_65536_213 >> 8)
      001913 C0 E0            [24] 5212 	push	acc
      001915 74 40            [12] 5213 	mov	a,#0x40
      001917 C0 E0            [24] 5214 	push	acc
      001919 75 82 08         [24] 5215 	mov	dpl,#0x08
      00191C 12 14 66         [24] 5216 	lcall	_FAT16_FILE_READ
      00191F AF 82            [24] 5217 	mov	r7,dpl
      001921 15 81            [12] 5218 	dec	sp
      001923 15 81            [12] 5219 	dec	sp
      001925 15 81            [12] 5220 	dec	sp
                                   5221 ;	main.c:114: if(_resp==0) break;
      001927 EF               [12] 5222 	mov	a,r7
      001928 60 17            [24] 5223 	jz	00108$
                                   5224 ;	main.c:116: for(uint8_t i=0;i<8;i++) UartWrite(buff[i]);
      00192A 7F 00            [12] 5225 	mov	r7,#0x00
      00192C                       5226 00111$:
      00192C BF 08 00         [24] 5227 	cjne	r7,#0x08,00136$
      00192F                       5228 00136$:
      00192F 50 DC            [24] 5229 	jnc	00105$
      001931 EF               [12] 5230 	mov	a,r7
      001932 24 36            [12] 5231 	add	a,#_main_buff_65536_213
      001934 F9               [12] 5232 	mov	r1,a
      001935 87 82            [24] 5233 	mov	dpl,@r1
      001937 C0 07            [24] 5234 	push	ar7
      001939 12 00 FB         [24] 5235 	lcall	_UartWrite
      00193C D0 07            [24] 5236 	pop	ar7
      00193E 0F               [12] 5237 	inc	r7
                                   5238 ;	main.c:126: while(1);        
      00193F 80 EB            [24] 5239 	sjmp	00111$
      001941                       5240 00108$:
                                   5241 ;	main.c:129: }
      001941 80 FE            [24] 5242 	sjmp	00108$
                                   5243 	.area CSEG    (CODE)
                                   5244 	.area CONST   (CODE)
                                   5245 	.area CONST   (CODE)
      001BFB                       5246 ___str_0:
      001BFB 4E 75 6D 62 65 72 20  5247 	.ascii "Number in Hex - eg(FE for 254): "
             69 6E 20 48 65 78 20
             2D 20 65 67 28 46 45
             20 66 6F 72 20 32 35
             34 29 3A 20
      001C1B 00                    5248 	.db 0x00
                                   5249 	.area CSEG    (CODE)
                                   5250 	.area CONST   (CODE)
      001C1C                       5251 ___str_1:
      001C1C 56 42 52 3A 20 73 74  5252 	.ascii "VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start"
             61 72 74 2C 62 70 73
             2C 73 70 63 2C 72 65
             73 65 72 76 65 64 53
             65 63 74 6F 72 73 2C
             6E 66 61 74 2C 6E 72
             6F 6F 74 65 2C 73 70
             66 2C 66 61 74 5F 73
             74 61 72 74
      001C58 2C 72 6F 6F 74 65 5F  5253 	.ascii ",roote_start,data_start"
             73 74 61 72 74 2C 64
             61 74 61 5F 73 74 61
             72 74
      001C6F 0A                    5254 	.db 0x0a
      001C70 00                    5255 	.db 0x00
                                   5256 	.area CSEG    (CODE)
                                   5257 	.area CONST   (CODE)
      001C71                       5258 ___str_2:
      001C71 0A                    5259 	.db 0x0a
      001C72 52 4F 4F 54 5F 45 4E  5260 	.ascii "ROOT_ENTRY_INDEX:"
             54 52 59 5F 49 4E 44
             45 58 3A
      001C83 00                    5261 	.db 0x00
                                   5262 	.area CSEG    (CODE)
                                   5263 	.area CONST   (CODE)
      001C84                       5264 ___str_3:
      001C84 0A                    5265 	.db 0x0a
      001C85 46 49 4C 45 3A 20     5266 	.ascii "FILE: "
      001C8B 00                    5267 	.db 0x00
                                   5268 	.area CSEG    (CODE)
                                   5269 	.area CONST   (CODE)
      001C8C                       5270 ___str_4:
      001C8C 0A                    5271 	.db 0x0a
      001C8D 53 54 41 52 54 3A 20  5272 	.ascii "START: "
      001C94 00                    5273 	.db 0x00
                                   5274 	.area CSEG    (CODE)
                                   5275 	.area CONST   (CODE)
      001C95                       5276 ___str_5:
      001C95 0A                    5277 	.db 0x0a
      001C96 53 49 5A 45 3A 20     5278 	.ascii "SIZE: "
      001C9C 00                    5279 	.db 0x00
                                   5280 	.area CSEG    (CODE)
                                   5281 	.area CONST   (CODE)
      001C9D                       5282 ___str_6:
      001C9D 0A                    5283 	.db 0x0a
      001C9E 41 54 54 52 3A 20 30  5284 	.ascii "ATTR: 0x"
             78
      001CA6 00                    5285 	.db 0x00
                                   5286 	.area CSEG    (CODE)
      001943                       5287 _FAT16_FILE_READ_power2error_65536_182:
      001943 6E 62 79 74 65 73 20  5288 	.ascii "nbytes must be power of 2"
             6D 75 73 74 20 62 65
             20 70 6F 77 65 72 20
             6F 66 20 32
      00195C 0A                    5289 	.db 0x0a
      00195D 00                    5290 	.db 0x00
                                   5291 	.area CONST   (CODE)
      001CA7                       5292 ___str_8:
      001CA7 46 49 4C 45 20 4E 4F  5293 	.ascii "FILE NOT FOUND"
             54 20 46 4F 55 4E 44
      001CB5 0A                    5294 	.db 0x0a
      001CB6 2E                    5295 	.ascii "."
      001CB7 00                    5296 	.db 0x00
                                   5297 	.area CSEG    (CODE)
      00195E                       5298 _SelectFAT16PartitionPrompt_HALTING_MSG_65536_198:
      00195E 48 41 4C 54 49 4E 47  5299 	.ascii "HALTING..."
             2E 2E 2E
      001968 00                    5300 	.db 0x00
                                   5301 	.area CONST   (CODE)
      001CB8                       5302 ___str_10:
      001CB8 45 52 52 4F 52 3A 4E  5303 	.ascii "ERROR:NO MBR FOUND"
             4F 20 4D 42 52 20 46
             4F 55 4E 44
      001CCA 0A                    5304 	.db 0x0a
      001CCB 00                    5305 	.db 0x00
                                   5306 	.area CSEG    (CODE)
                                   5307 	.area CONST   (CODE)
      001CCC                       5308 ___str_11:
      001CCC 50 61 72 74 69 74 69  5309 	.ascii "Partition Mounted:"
             6F 6E 20 4D 6F 75 6E
             74 65 64 3A
      001CDE 00                    5310 	.db 0x00
                                   5311 	.area CSEG    (CODE)
                                   5312 	.area CONST   (CODE)
      001CDF                       5313 ___str_12:
      001CDF 49 6E 63 6F 6D 70 61  5314 	.ascii "Incompatible FAT16"
             74 69 62 6C 65 20 46
             41 54 31 36
      001CF1 0A                    5315 	.db 0x0a
      001CF2 00                    5316 	.db 0x00
                                   5317 	.area CSEG    (CODE)
                                   5318 	.area CONST   (CODE)
      001CF3                       5319 ___str_13:
      001CF3 50 61 72 74 69 74 69  5320 	.ascii "Partition-"
             6F 6E 2D
      001CFD 00                    5321 	.db 0x00
                                   5322 	.area CSEG    (CODE)
                                   5323 	.area CONST   (CODE)
      001CFE                       5324 ___str_14:
      001CFE 46 41 54 31 36        5325 	.ascii "FAT16"
      001D03 0A                    5326 	.db 0x0a
      001D04 00                    5327 	.db 0x00
                                   5328 	.area CSEG    (CODE)
                                   5329 	.area CONST   (CODE)
      001D05                       5330 ___str_15:
      001D05 55 6E 6B 6E 6F 77 6E  5331 	.ascii "Unknown"
      001D0C 0A                    5332 	.db 0x0a
      001D0D 00                    5333 	.db 0x00
                                   5334 	.area CSEG    (CODE)
                                   5335 	.area CONST   (CODE)
      001D0E                       5336 ___str_16:
      001D0E 0A                    5337 	.db 0x0a
      001D0F 53 65 6C 65 63 74 20  5338 	.ascii "Select FAT16 Partition->"
             46 41 54 31 36 20 50
             61 72 74 69 74 69 6F
             6E 2D 3E
      001D27 0A                    5339 	.db 0x0a
      001D28 00                    5340 	.db 0x00
                                   5341 	.area CSEG    (CODE)
                                   5342 	.area CONST   (CODE)
      001D29                       5343 ___str_17:
      001D29 49 6E 76 61 6C 69 64  5344 	.ascii "Invalid selection."
             20 73 65 6C 65 63 74
             69 6F 6E 2E
      001D3B 0A                    5345 	.db 0x0a
      001D3C 00                    5346 	.db 0x00
                                   5347 	.area CSEG    (CODE)
                                   5348 	.area CONST   (CODE)
      001D3D                       5349 ___str_18:
      001D3D 4E 6F 20 46 41 54 31  5350 	.ascii "No FAT16 Partition."
             36 20 50 61 72 74 69
             74 69 6F 6E 2E
      001D50 0A                    5351 	.db 0x0a
      001D51 00                    5352 	.db 0x00
                                   5353 	.area CSEG    (CODE)
                                   5354 	.area XINIT   (CODE)
                                   5355 	.area CABS    (ABS,CODE)
