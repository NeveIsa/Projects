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
                                     15 	.globl _SERIAL_LOADER_VERSION_INFO
                                     16 	.globl _main
                                     17 	.globl _SelectFileAndFileOpen
                                     18 	.globl _SelectFAT16PartitionPrompt
                                     19 	.globl _SL_getcmd
                                     20 	.globl _SL_read
                                     21 	.globl _SL_write
                                     22 	.globl _SL_enable_write_protection
                                     23 	.globl _SL_disable_write_protection
                                     24 	.globl _FAT16_FILE_CAT
                                     25 	.globl _FAT16_FILE_READ
                                     26 	.globl _FAT16_GET_NEXT_CLUSTER
                                     27 	.globl _FAT16_FILE_OPEN
                                     28 	.globl _FAT16_ROOTENTRY_SCAN
                                     29 	.globl _FAT16_ROOTENTRY_SCAN_RESET
                                     30 	.globl _FAT16_ROOTENTRY_READ
                                     31 	.globl _FAT16_IS_ROOTENTRY_VALID_FILE
                                     32 	.globl _FAT16_LOAD_ROOTENTRY
                                     33 	.globl _FAT16_ROOTENTRY_DUMP
                                     34 	.globl _VBR_FAT16_CHECK_COMPATIBILITY
                                     35 	.globl _VBR_MOUNT_VBR
                                     36 	.globl _VBR_DUMP
                                     37 	.globl _MBR_DETECT_FAT16
                                     38 	.globl _MBR_LOAD_PARTITION_TABLE_ENTRY
                                     39 	.globl _MBR_CHECK__SIGNATURE
                                     40 	.globl _HELPER_filename_to_8dot3filename
                                     41 	.globl _HELPER_to_uppercase
                                     42 	.globl _HELPER_rootentry_type
                                     43 	.globl _HELPER_strlen
                                     44 	.globl _HELPER_strncmp
                                     45 	.globl _HELPER_strcmp
                                     46 	.globl _HELPER_load_littleendian32
                                     47 	.globl _HELPER_load_littleendian16
                                     48 	.globl _SDreadBlock
                                     49 	.globl _SDread
                                     50 	.globl _SDinit
                                     51 	.globl _sd_acmd
                                     52 	.globl _sd_cmd
                                     53 	.globl _sd_initial_clk
                                     54 	.globl _sd_isbusy
                                     55 	.globl _spi_transfer_all
                                     56 	.globl _spi_transfer
                                     57 	.globl _spi_init
                                     58 	.globl _UartScanLine
                                     59 	.globl _UartScanByte
                                     60 	.globl _UartPrintNumber
                                     61 	.globl _UartWriteNumbers
                                     62 	.globl _UartWriteNumber
                                     63 	.globl _UartPrint
                                     64 	.globl _UartReadBuff
                                     65 	.globl _UartWriteBuff
                                     66 	.globl _UartWrite
                                     67 	.globl _UartRead
                                     68 	.globl _UartReadReady
                                     69 	.globl _UartBegin
                                     70 	.globl _dec2hexNibble
                                     71 	.globl _hex2dec
                                     72 	.globl _hexNibble2dec
                                     73 	.globl _TF2
                                     74 	.globl _EXF2
                                     75 	.globl _RCLK
                                     76 	.globl _TCLK
                                     77 	.globl _EXEN2
                                     78 	.globl _TR2
                                     79 	.globl _C_T2
                                     80 	.globl _CP_RL2
                                     81 	.globl _T2CON_7
                                     82 	.globl _T2CON_6
                                     83 	.globl _T2CON_5
                                     84 	.globl _T2CON_4
                                     85 	.globl _T2CON_3
                                     86 	.globl _T2CON_2
                                     87 	.globl _T2CON_1
                                     88 	.globl _T2CON_0
                                     89 	.globl _PT2
                                     90 	.globl _ET2
                                     91 	.globl _CY
                                     92 	.globl _AC
                                     93 	.globl _F0
                                     94 	.globl _RS1
                                     95 	.globl _RS0
                                     96 	.globl _OV
                                     97 	.globl _F1
                                     98 	.globl _P
                                     99 	.globl _PS
                                    100 	.globl _PT1
                                    101 	.globl _PX1
                                    102 	.globl _PT0
                                    103 	.globl _PX0
                                    104 	.globl _RD
                                    105 	.globl _WR
                                    106 	.globl _T1
                                    107 	.globl _T0
                                    108 	.globl _INT1
                                    109 	.globl _INT0
                                    110 	.globl _TXD
                                    111 	.globl _RXD
                                    112 	.globl _P3_7
                                    113 	.globl _P3_6
                                    114 	.globl _P3_5
                                    115 	.globl _P3_4
                                    116 	.globl _P3_3
                                    117 	.globl _P3_2
                                    118 	.globl _P3_1
                                    119 	.globl _P3_0
                                    120 	.globl _EA
                                    121 	.globl _ES
                                    122 	.globl _ET1
                                    123 	.globl _EX1
                                    124 	.globl _ET0
                                    125 	.globl _EX0
                                    126 	.globl _P2_7
                                    127 	.globl _P2_6
                                    128 	.globl _P2_5
                                    129 	.globl _P2_4
                                    130 	.globl _P2_3
                                    131 	.globl _P2_2
                                    132 	.globl _P2_1
                                    133 	.globl _P2_0
                                    134 	.globl _SM0
                                    135 	.globl _SM1
                                    136 	.globl _SM2
                                    137 	.globl _REN
                                    138 	.globl _TB8
                                    139 	.globl _RB8
                                    140 	.globl _TI
                                    141 	.globl _RI
                                    142 	.globl _P1_7
                                    143 	.globl _P1_6
                                    144 	.globl _P1_5
                                    145 	.globl _P1_4
                                    146 	.globl _P1_3
                                    147 	.globl _P1_2
                                    148 	.globl _P1_1
                                    149 	.globl _P1_0
                                    150 	.globl _TF1
                                    151 	.globl _TR1
                                    152 	.globl _TF0
                                    153 	.globl _TR0
                                    154 	.globl _IE1
                                    155 	.globl _IT1
                                    156 	.globl _IE0
                                    157 	.globl _IT0
                                    158 	.globl _P0_7
                                    159 	.globl _P0_6
                                    160 	.globl _P0_5
                                    161 	.globl _P0_4
                                    162 	.globl _P0_3
                                    163 	.globl _P0_2
                                    164 	.globl _P0_1
                                    165 	.globl _P0_0
                                    166 	.globl _TH2
                                    167 	.globl _TL2
                                    168 	.globl _RCAP2H
                                    169 	.globl _RCAP2L
                                    170 	.globl _T2CON
                                    171 	.globl _B
                                    172 	.globl _ACC
                                    173 	.globl _PSW
                                    174 	.globl _IP
                                    175 	.globl _P3
                                    176 	.globl _IE
                                    177 	.globl _P2
                                    178 	.globl _SBUF
                                    179 	.globl _SCON
                                    180 	.globl _P1
                                    181 	.globl _TH1
                                    182 	.globl _TH0
                                    183 	.globl _TL1
                                    184 	.globl _TL0
                                    185 	.globl _TMOD
                                    186 	.globl _TCON
                                    187 	.globl _PCON
                                    188 	.globl _DPH
                                    189 	.globl _DPL
                                    190 	.globl _SP
                                    191 	.globl _P0
                                    192 	.globl _EEPROM_WRITE_PROTECTION
                                    193 	.globl _HELPER_filename_to_8dot3filename_PARM_2
                                    194 	.globl _SDreadBlock_PARM_2
                                    195 	.globl _sd_acmd_PARM_2
                                    196 	.globl _sd_cmd_PARM_2
                                    197 	.globl _spi_transfer_all_PARM_3
                                    198 	.globl _spi_transfer_all_PARM_2
                                    199 	.globl _UartReadBuff_PARM_2
                                    200 	.globl _UartWriteBuff_PARM_2
                                    201 	.globl _hex2dec_PARM_2
                                    202 ;--------------------------------------------------------
                                    203 ; special function registers
                                    204 ;--------------------------------------------------------
                                    205 	.area RSEG    (ABS,DATA)
      000000                        206 	.org 0x0000
                           000080   207 _P0	=	0x0080
                           000081   208 _SP	=	0x0081
                           000082   209 _DPL	=	0x0082
                           000083   210 _DPH	=	0x0083
                           000087   211 _PCON	=	0x0087
                           000088   212 _TCON	=	0x0088
                           000089   213 _TMOD	=	0x0089
                           00008A   214 _TL0	=	0x008a
                           00008B   215 _TL1	=	0x008b
                           00008C   216 _TH0	=	0x008c
                           00008D   217 _TH1	=	0x008d
                           000090   218 _P1	=	0x0090
                           000098   219 _SCON	=	0x0098
                           000099   220 _SBUF	=	0x0099
                           0000A0   221 _P2	=	0x00a0
                           0000A8   222 _IE	=	0x00a8
                           0000B0   223 _P3	=	0x00b0
                           0000B8   224 _IP	=	0x00b8
                           0000D0   225 _PSW	=	0x00d0
                           0000E0   226 _ACC	=	0x00e0
                           0000F0   227 _B	=	0x00f0
                           0000C8   228 _T2CON	=	0x00c8
                           0000CA   229 _RCAP2L	=	0x00ca
                           0000CB   230 _RCAP2H	=	0x00cb
                           0000CC   231 _TL2	=	0x00cc
                           0000CD   232 _TH2	=	0x00cd
                                    233 ;--------------------------------------------------------
                                    234 ; special function bits
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           000080   238 _P0_0	=	0x0080
                           000081   239 _P0_1	=	0x0081
                           000082   240 _P0_2	=	0x0082
                           000083   241 _P0_3	=	0x0083
                           000084   242 _P0_4	=	0x0084
                           000085   243 _P0_5	=	0x0085
                           000086   244 _P0_6	=	0x0086
                           000087   245 _P0_7	=	0x0087
                           000088   246 _IT0	=	0x0088
                           000089   247 _IE0	=	0x0089
                           00008A   248 _IT1	=	0x008a
                           00008B   249 _IE1	=	0x008b
                           00008C   250 _TR0	=	0x008c
                           00008D   251 _TF0	=	0x008d
                           00008E   252 _TR1	=	0x008e
                           00008F   253 _TF1	=	0x008f
                           000090   254 _P1_0	=	0x0090
                           000091   255 _P1_1	=	0x0091
                           000092   256 _P1_2	=	0x0092
                           000093   257 _P1_3	=	0x0093
                           000094   258 _P1_4	=	0x0094
                           000095   259 _P1_5	=	0x0095
                           000096   260 _P1_6	=	0x0096
                           000097   261 _P1_7	=	0x0097
                           000098   262 _RI	=	0x0098
                           000099   263 _TI	=	0x0099
                           00009A   264 _RB8	=	0x009a
                           00009B   265 _TB8	=	0x009b
                           00009C   266 _REN	=	0x009c
                           00009D   267 _SM2	=	0x009d
                           00009E   268 _SM1	=	0x009e
                           00009F   269 _SM0	=	0x009f
                           0000A0   270 _P2_0	=	0x00a0
                           0000A1   271 _P2_1	=	0x00a1
                           0000A2   272 _P2_2	=	0x00a2
                           0000A3   273 _P2_3	=	0x00a3
                           0000A4   274 _P2_4	=	0x00a4
                           0000A5   275 _P2_5	=	0x00a5
                           0000A6   276 _P2_6	=	0x00a6
                           0000A7   277 _P2_7	=	0x00a7
                           0000A8   278 _EX0	=	0x00a8
                           0000A9   279 _ET0	=	0x00a9
                           0000AA   280 _EX1	=	0x00aa
                           0000AB   281 _ET1	=	0x00ab
                           0000AC   282 _ES	=	0x00ac
                           0000AF   283 _EA	=	0x00af
                           0000B0   284 _P3_0	=	0x00b0
                           0000B1   285 _P3_1	=	0x00b1
                           0000B2   286 _P3_2	=	0x00b2
                           0000B3   287 _P3_3	=	0x00b3
                           0000B4   288 _P3_4	=	0x00b4
                           0000B5   289 _P3_5	=	0x00b5
                           0000B6   290 _P3_6	=	0x00b6
                           0000B7   291 _P3_7	=	0x00b7
                           0000B0   292 _RXD	=	0x00b0
                           0000B1   293 _TXD	=	0x00b1
                           0000B2   294 _INT0	=	0x00b2
                           0000B3   295 _INT1	=	0x00b3
                           0000B4   296 _T0	=	0x00b4
                           0000B5   297 _T1	=	0x00b5
                           0000B6   298 _WR	=	0x00b6
                           0000B7   299 _RD	=	0x00b7
                           0000B8   300 _PX0	=	0x00b8
                           0000B9   301 _PT0	=	0x00b9
                           0000BA   302 _PX1	=	0x00ba
                           0000BB   303 _PT1	=	0x00bb
                           0000BC   304 _PS	=	0x00bc
                           0000D0   305 _P	=	0x00d0
                           0000D1   306 _F1	=	0x00d1
                           0000D2   307 _OV	=	0x00d2
                           0000D3   308 _RS0	=	0x00d3
                           0000D4   309 _RS1	=	0x00d4
                           0000D5   310 _F0	=	0x00d5
                           0000D6   311 _AC	=	0x00d6
                           0000D7   312 _CY	=	0x00d7
                           0000AD   313 _ET2	=	0x00ad
                           0000BD   314 _PT2	=	0x00bd
                           0000C8   315 _T2CON_0	=	0x00c8
                           0000C9   316 _T2CON_1	=	0x00c9
                           0000CA   317 _T2CON_2	=	0x00ca
                           0000CB   318 _T2CON_3	=	0x00cb
                           0000CC   319 _T2CON_4	=	0x00cc
                           0000CD   320 _T2CON_5	=	0x00cd
                           0000CE   321 _T2CON_6	=	0x00ce
                           0000CF   322 _T2CON_7	=	0x00cf
                           0000C8   323 _CP_RL2	=	0x00c8
                           0000C9   324 _C_T2	=	0x00c9
                           0000CA   325 _TR2	=	0x00ca
                           0000CB   326 _EXEN2	=	0x00cb
                           0000CC   327 _TCLK	=	0x00cc
                           0000CD   328 _RCLK	=	0x00cd
                           0000CE   329 _EXF2	=	0x00ce
                           0000CF   330 _TF2	=	0x00cf
                                    331 ;--------------------------------------------------------
                                    332 ; overlayable register banks
                                    333 ;--------------------------------------------------------
                                    334 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        335 	.ds 8
                                    336 ;--------------------------------------------------------
                                    337 ; internal ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area DSEG    (DATA)
      000008                        340 _hex2dec_PARM_2:
      000008                        341 	.ds 1
      000009                        342 _UartWriteBuff_PARM_2:
      000009                        343 	.ds 1
      00000A                        344 _UartReadBuff_PARM_2:
      00000A                        345 	.ds 1
      00000B                        346 _spi_transfer_all_PARM_2:
      00000B                        347 	.ds 1
      00000C                        348 _spi_transfer_all_PARM_3:
      00000C                        349 	.ds 1
      00000D                        350 _sd_cmd_PARM_2:
      00000D                        351 	.ds 4
      000011                        352 _sd_acmd_PARM_2:
      000011                        353 	.ds 4
      000015                        354 _SDreadBlock_PARM_2:
      000015                        355 	.ds 3
      000018                        356 _HELPER_filename_to_8dot3filename_PARM_2:
      000018                        357 	.ds 3
      00001B                        358 _HELPER_filename_to_8dot3filename_fname_65536_120:
      00001B                        359 	.ds 3
      00001E                        360 _HELPER_filename_to_8dot3filename_i_131072_126:
      00001E                        361 	.ds 1
      00001F                        362 _VBR_MOUNT_VBR_sloc0_1_0:
      00001F                        363 	.ds 4
      000023                        364 _FAT16_LOAD_ROOTENTRY_roote_number_65536_150:
      000023                        365 	.ds 2
      000025                        366 _FAT16_LOAD_ROOTENTRY_sloc0_1_0:
      000025                        367 	.ds 4
      000029                        368 _FAT16_LOAD_ROOTENTRY_sloc1_1_0:
      000029                        369 	.ds 2
      00002B                        370 _EEPROM_WRITE_PROTECTION::
      00002B                        371 	.ds 1
      00002C                        372 _main_buff_65536_215:
      00002C                        373 	.ds 16
                                    374 ;--------------------------------------------------------
                                    375 ; overlayable items in internal ram 
                                    376 ;--------------------------------------------------------
                                    377 	.area	OSEG    (OVR,DATA)
                                    378 	.area	OSEG    (OVR,DATA)
                                    379 	.area	OSEG    (OVR,DATA)
                                    380 	.area	OSEG    (OVR,DATA)
                                    381 	.area	OSEG    (OVR,DATA)
      00003D                        382 _spi_transfer_PARM_2:
      00003D                        383 	.ds 1
                                    384 	.area	OSEG    (OVR,DATA)
      00003D                        385 _HELPER_strcmp_PARM_2:
      00003D                        386 	.ds 3
                                    387 	.area	OSEG    (OVR,DATA)
      00003D                        388 _HELPER_strncmp_PARM_2:
      00003D                        389 	.ds 3
      000040                        390 _HELPER_strncmp_PARM_3:
      000040                        391 	.ds 1
                                    392 	.area	OSEG    (OVR,DATA)
                                    393 	.area	OSEG    (OVR,DATA)
                                    394 	.area	OSEG    (OVR,DATA)
                                    395 ;--------------------------------------------------------
                                    396 ; Stack segment in internal ram 
                                    397 ;--------------------------------------------------------
                                    398 	.area	SSEG
      0000C2                        399 __start__stack:
      0000C2                        400 	.ds	1
                                    401 
                                    402 ;--------------------------------------------------------
                                    403 ; indirectly addressable internal ram data
                                    404 ;--------------------------------------------------------
                                    405 	.area ISEG    (DATA)
      000041                        406 ___global_partitionTableEntry:
      000041                        407 	.ds 9
      00004A                        408 ___global_vbr:
      00004A                        409 	.ds 31
      000069                        410 ___global_nthPartitionVBRmounted:
      000069                        411 	.ds 1
      00006A                        412 ___global_rootEntry:
      00006A                        413 	.ds 24
      000082                        414 _MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132:
      000082                        415 	.ds 16
      000092                        416 _VBR_MOUNT_VBR_temp_65536_139:
      000092                        417 	.ds 16
      0000A2                        418 _FAT16_LOAD_ROOTENTRY_temp_65536_151:
      0000A2                        419 	.ds 32
                                    420 ;--------------------------------------------------------
                                    421 ; absolute internal ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area IABS    (ABS,DATA)
                                    424 	.area IABS    (ABS,DATA)
                                    425 ;--------------------------------------------------------
                                    426 ; bit data
                                    427 ;--------------------------------------------------------
                                    428 	.area BSEG    (BIT)
                                    429 ;--------------------------------------------------------
                                    430 ; paged external ram data
                                    431 ;--------------------------------------------------------
                                    432 	.area PSEG    (PAG,XDATA)
                                    433 ;--------------------------------------------------------
                                    434 ; external ram data
                                    435 ;--------------------------------------------------------
                                    436 	.area XSEG    (XDATA)
                                    437 ;--------------------------------------------------------
                                    438 ; absolute external ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area XABS    (ABS,XDATA)
                                    441 ;--------------------------------------------------------
                                    442 ; external initialized ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area XISEG   (XDATA)
                                    445 	.area HOME    (CODE)
                                    446 	.area GSINIT0 (CODE)
                                    447 	.area GSINIT1 (CODE)
                                    448 	.area GSINIT2 (CODE)
                                    449 	.area GSINIT3 (CODE)
                                    450 	.area GSINIT4 (CODE)
                                    451 	.area GSINIT5 (CODE)
                                    452 	.area GSINIT  (CODE)
                                    453 	.area GSFINAL (CODE)
                                    454 	.area CSEG    (CODE)
                                    455 ;--------------------------------------------------------
                                    456 ; interrupt vector 
                                    457 ;--------------------------------------------------------
                                    458 	.area HOME    (CODE)
      000000                        459 __interrupt_vect:
      000000 02 00 06         [24]  460 	ljmp	__sdcc_gsinit_startup
                                    461 ;--------------------------------------------------------
                                    462 ; global & static initialisations
                                    463 ;--------------------------------------------------------
                                    464 	.area HOME    (CODE)
                                    465 	.area GSINIT  (CODE)
                                    466 	.area GSFINAL (CODE)
                                    467 	.area GSINIT  (CODE)
                                    468 	.globl __sdcc_gsinit_startup
                                    469 	.globl __sdcc_program_startup
                                    470 	.globl __start__stack
                                    471 	.globl __mcs51_genXINIT
                                    472 	.globl __mcs51_genXRAMCLEAR
                                    473 	.globl __mcs51_genRAMCLEAR
                                    474 ;	serialloader.h:20: volatile unsigned char EEPROM_WRITE_PROTECTION=1;
      00005F 75 2B 01         [24]  475 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                    476 ;	fat.h:238: __idata static uint8_t __global_nthPartitionVBRmounted=255; //mounted if value is 0-3 for the 4 partitions,else not mounted
      000062 78 69            [12]  477 	mov	r0,#___global_nthPartitionVBRmounted
      000064 76 FF            [12]  478 	mov	@r0,#0xff
                                    479 	.area GSFINAL (CODE)
      000066 02 00 03         [24]  480 	ljmp	__sdcc_program_startup
                                    481 ;--------------------------------------------------------
                                    482 ; Home
                                    483 ;--------------------------------------------------------
                                    484 	.area HOME    (CODE)
                                    485 	.area HOME    (CODE)
      000003                        486 __sdcc_program_startup:
      000003 02 1A 83         [24]  487 	ljmp	_main
                                    488 ;	return from main will return to caller
                                    489 ;--------------------------------------------------------
                                    490 ; code
                                    491 ;--------------------------------------------------------
                                    492 	.area CSEG    (CODE)
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'hexNibble2dec'
                                    495 ;------------------------------------------------------------
                                    496 ;nibble                    Allocated to registers r7 
                                    497 ;------------------------------------------------------------
                                    498 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    499 ;	-----------------------------------------
                                    500 ;	 function hexNibble2dec
                                    501 ;	-----------------------------------------
      000069                        502 _hexNibble2dec:
                           000007   503 	ar7 = 0x07
                           000006   504 	ar6 = 0x06
                           000005   505 	ar5 = 0x05
                           000004   506 	ar4 = 0x04
                           000003   507 	ar3 = 0x03
                           000002   508 	ar2 = 0x02
                           000001   509 	ar1 = 0x01
                           000000   510 	ar0 = 0x00
      000069 AF 82            [24]  511 	mov	r7,dpl
                                    512 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      00006B BF 30 00         [24]  513 	cjne	r7,#0x30,00139$
      00006E                        514 00139$:
      00006E 40 0D            [24]  515 	jc	00110$
      000070 EF               [12]  516 	mov	a,r7
      000071 24 C6            [12]  517 	add	a,#0xff - 0x39
      000073 40 08            [24]  518 	jc	00110$
      000075 8F 06            [24]  519 	mov	ar6,r7
      000077 EE               [12]  520 	mov	a,r6
      000078 24 D0            [12]  521 	add	a,#0xd0
      00007A F5 82            [12]  522 	mov	dpl,a
      00007C 22               [24]  523 	ret
      00007D                        524 00110$:
                                    525 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      00007D BF 41 00         [24]  526 	cjne	r7,#0x41,00142$
      000080                        527 00142$:
      000080 40 0D            [24]  528 	jc	00106$
      000082 EF               [12]  529 	mov	a,r7
      000083 24 B9            [12]  530 	add	a,#0xff - 0x46
      000085 40 08            [24]  531 	jc	00106$
      000087 8F 06            [24]  532 	mov	ar6,r7
      000089 74 C9            [12]  533 	mov	a,#0xc9
      00008B 2E               [12]  534 	add	a,r6
      00008C F5 82            [12]  535 	mov	dpl,a
      00008E 22               [24]  536 	ret
      00008F                        537 00106$:
                                    538 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      00008F BF 61 00         [24]  539 	cjne	r7,#0x61,00145$
      000092                        540 00145$:
      000092 40 0B            [24]  541 	jc	00102$
      000094 EF               [12]  542 	mov	a,r7
      000095 24 99            [12]  543 	add	a,#0xff - 0x66
      000097 40 06            [24]  544 	jc	00102$
      000099 74 A9            [12]  545 	mov	a,#0xa9
      00009B 2F               [12]  546 	add	a,r7
      00009C F5 82            [12]  547 	mov	dpl,a
      00009E 22               [24]  548 	ret
      00009F                        549 00102$:
                                    550 ;	uart.h:11: else return 0;
      00009F 75 82 00         [24]  551 	mov	dpl,#0x00
                                    552 ;	uart.h:12: }
      0000A2 22               [24]  553 	ret
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'hex2dec'
                                    556 ;------------------------------------------------------------
                                    557 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    558 ;MSnibble                  Allocated to registers r7 
                                    559 ;------------------------------------------------------------
                                    560 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    561 ;	-----------------------------------------
                                    562 ;	 function hex2dec
                                    563 ;	-----------------------------------------
      0000A3                        564 _hex2dec:
                                    565 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      0000A3 12 00 69         [24]  566 	lcall	_hexNibble2dec
      0000A6 E5 82            [12]  567 	mov	a,dpl
      0000A8 C4               [12]  568 	swap	a
      0000A9 54 F0            [12]  569 	anl	a,#0xf0
      0000AB FF               [12]  570 	mov	r7,a
      0000AC 85 08 82         [24]  571 	mov	dpl,_hex2dec_PARM_2
      0000AF C0 07            [24]  572 	push	ar7
      0000B1 12 00 69         [24]  573 	lcall	_hexNibble2dec
      0000B4 AE 82            [24]  574 	mov	r6,dpl
      0000B6 D0 07            [24]  575 	pop	ar7
      0000B8 EE               [12]  576 	mov	a,r6
      0000B9 2F               [12]  577 	add	a,r7
      0000BA F5 82            [12]  578 	mov	dpl,a
                                    579 ;	uart.h:18: }
      0000BC 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'dec2hexNibble'
                                    583 ;------------------------------------------------------------
                                    584 ;dec                       Allocated to registers r7 
                                    585 ;------------------------------------------------------------
                                    586 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    587 ;	-----------------------------------------
                                    588 ;	 function dec2hexNibble
                                    589 ;	-----------------------------------------
      0000BD                        590 _dec2hexNibble:
                                    591 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000BD E5 82            [12]  592 	mov	a,dpl
      0000BF FF               [12]  593 	mov	r7,a
      0000C0 24 F0            [12]  594 	add	a,#0xff - 0x0f
      0000C2 50 04            [24]  595 	jnc	00102$
      0000C4 75 82 58         [24]  596 	mov	dpl,#0x58
      0000C7 22               [24]  597 	ret
      0000C8                        598 00102$:
                                    599 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C8 EF               [12]  600 	mov	a,r7
      0000C9 24 F6            [12]  601 	add	a,#0xff - 0x09
      0000CB 40 08            [24]  602 	jc	00104$
      0000CD 8F 06            [24]  603 	mov	ar6,r7
      0000CF 74 30            [12]  604 	mov	a,#0x30
      0000D1 2E               [12]  605 	add	a,r6
      0000D2 F5 82            [12]  606 	mov	dpl,a
      0000D4 22               [24]  607 	ret
      0000D5                        608 00104$:
                                    609 ;	uart.h:27: else return 'A' + dec - 10;
      0000D5 74 37            [12]  610 	mov	a,#0x37
      0000D7 2F               [12]  611 	add	a,r7
      0000D8 F5 82            [12]  612 	mov	dpl,a
                                    613 ;	uart.h:28: }
      0000DA 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'UartBegin'
                                    617 ;------------------------------------------------------------
                                    618 ;	uart.h:33: void UartBegin()
                                    619 ;	-----------------------------------------
                                    620 ;	 function UartBegin
                                    621 ;	-----------------------------------------
      0000DB                        622 _UartBegin:
                                    623 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000DB 75 89 20         [24]  624 	mov	_TMOD,#0x20
                                    625 ;	uart.h:39: TH1 = 0XF3; //2400
      0000DE 75 8D F3         [24]  626 	mov	_TH1,#0xf3
                                    627 ;	uart.h:40: SCON = 0X50;
      0000E1 75 98 50         [24]  628 	mov	_SCON,#0x50
                                    629 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000E4 43 87 80         [24]  630 	orl	_PCON,#0x80
                                    631 ;	uart.h:44: TR1 = 1; //START TIMER
                                    632 ;	assignBit
      0000E7 D2 8E            [12]  633 	setb	_TR1
                                    634 ;	uart.h:45: }
      0000E9 22               [24]  635 	ret
                                    636 ;------------------------------------------------------------
                                    637 ;Allocation info for local variables in function 'UartReadReady'
                                    638 ;------------------------------------------------------------
                                    639 ;	uart.h:47: unsigned char UartReadReady()
                                    640 ;	-----------------------------------------
                                    641 ;	 function UartReadReady
                                    642 ;	-----------------------------------------
      0000EA                        643 _UartReadReady:
                                    644 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000EA 20 98 04         [24]  645 	jb	_RI,00102$
      0000ED 75 82 00         [24]  646 	mov	dpl,#0x00
      0000F0 22               [24]  647 	ret
      0000F1                        648 00102$:
                                    649 ;	uart.h:50: else return 1; //received and ready
      0000F1 75 82 01         [24]  650 	mov	dpl,#0x01
                                    651 ;	uart.h:51: }
      0000F4 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'UartRead'
                                    655 ;------------------------------------------------------------
                                    656 ;value                     Allocated to registers 
                                    657 ;------------------------------------------------------------
                                    658 ;	uart.h:53: unsigned char UartRead()
                                    659 ;	-----------------------------------------
                                    660 ;	 function UartRead
                                    661 ;	-----------------------------------------
      0000F5                        662 _UartRead:
                                    663 ;	uart.h:56: while(RI==0); //wait till RX
      0000F5                        664 00101$:
                                    665 ;	uart.h:57: RI=0;
                                    666 ;	assignBit
      0000F5 10 98 02         [24]  667 	jbc	_RI,00114$
      0000F8 80 FB            [24]  668 	sjmp	00101$
      0000FA                        669 00114$:
                                    670 ;	uart.h:58: value = SBUF;
      0000FA 85 99 82         [24]  671 	mov	dpl,_SBUF
                                    672 ;	uart.h:59: return value;
                                    673 ;	uart.h:60: }
      0000FD 22               [24]  674 	ret
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'UartWrite'
                                    677 ;------------------------------------------------------------
                                    678 ;value                     Allocated to registers 
                                    679 ;------------------------------------------------------------
                                    680 ;	uart.h:63: void UartWrite(unsigned char value)
                                    681 ;	-----------------------------------------
                                    682 ;	 function UartWrite
                                    683 ;	-----------------------------------------
      0000FE                        684 _UartWrite:
      0000FE 85 82 99         [24]  685 	mov	_SBUF,dpl
                                    686 ;	uart.h:66: while(TI==0); // wait till TX
      000101                        687 00101$:
                                    688 ;	uart.h:67: TI=0;
                                    689 ;	assignBit
      000101 10 99 02         [24]  690 	jbc	_TI,00114$
      000104 80 FB            [24]  691 	sjmp	00101$
      000106                        692 00114$:
                                    693 ;	uart.h:68: }
      000106 22               [24]  694 	ret
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'UartWriteBuff'
                                    697 ;------------------------------------------------------------
                                    698 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    699 ;p                         Allocated to registers r5 r6 r7 
                                    700 ;i                         Allocated to registers r4 
                                    701 ;------------------------------------------------------------
                                    702 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    703 ;	-----------------------------------------
                                    704 ;	 function UartWriteBuff
                                    705 ;	-----------------------------------------
      000107                        706 _UartWriteBuff:
      000107 AD 82            [24]  707 	mov	r5,dpl
      000109 AE 83            [24]  708 	mov	r6,dph
      00010B AF F0            [24]  709 	mov	r7,b
                                    710 ;	uart.h:73: for (i=0;i<length;i++)
      00010D 7C 00            [12]  711 	mov	r4,#0x00
      00010F                        712 00103$:
      00010F C3               [12]  713 	clr	c
      000110 EC               [12]  714 	mov	a,r4
      000111 95 09            [12]  715 	subb	a,_UartWriteBuff_PARM_2
      000113 50 29            [24]  716 	jnc	00105$
                                    717 ;	uart.h:75: UartWrite(p[i]);
      000115 EC               [12]  718 	mov	a,r4
      000116 2D               [12]  719 	add	a,r5
      000117 F9               [12]  720 	mov	r1,a
      000118 E4               [12]  721 	clr	a
      000119 3E               [12]  722 	addc	a,r6
      00011A FA               [12]  723 	mov	r2,a
      00011B 8F 03            [24]  724 	mov	ar3,r7
      00011D 89 82            [24]  725 	mov	dpl,r1
      00011F 8A 83            [24]  726 	mov	dph,r2
      000121 8B F0            [24]  727 	mov	b,r3
      000123 12 1D FF         [24]  728 	lcall	__gptrget
      000126 F5 82            [12]  729 	mov	dpl,a
      000128 C0 07            [24]  730 	push	ar7
      00012A C0 06            [24]  731 	push	ar6
      00012C C0 05            [24]  732 	push	ar5
      00012E C0 04            [24]  733 	push	ar4
      000130 12 00 FE         [24]  734 	lcall	_UartWrite
      000133 D0 04            [24]  735 	pop	ar4
      000135 D0 05            [24]  736 	pop	ar5
      000137 D0 06            [24]  737 	pop	ar6
      000139 D0 07            [24]  738 	pop	ar7
                                    739 ;	uart.h:73: for (i=0;i<length;i++)
      00013B 0C               [12]  740 	inc	r4
      00013C 80 D1            [24]  741 	sjmp	00103$
      00013E                        742 00105$:
                                    743 ;	uart.h:77: }
      00013E 22               [24]  744 	ret
                                    745 ;------------------------------------------------------------
                                    746 ;Allocation info for local variables in function 'UartReadBuff'
                                    747 ;------------------------------------------------------------
                                    748 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    749 ;p                         Allocated to registers r5 r6 r7 
                                    750 ;i                         Allocated to registers r4 
                                    751 ;------------------------------------------------------------
                                    752 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    753 ;	-----------------------------------------
                                    754 ;	 function UartReadBuff
                                    755 ;	-----------------------------------------
      00013F                        756 _UartReadBuff:
      00013F AD 82            [24]  757 	mov	r5,dpl
      000141 AE 83            [24]  758 	mov	r6,dph
      000143 AF F0            [24]  759 	mov	r7,b
                                    760 ;	uart.h:82: for (i=0;i<length;i++)
      000145 7C 00            [12]  761 	mov	r4,#0x00
      000147                        762 00103$:
      000147 C3               [12]  763 	clr	c
      000148 EC               [12]  764 	mov	a,r4
      000149 95 0A            [12]  765 	subb	a,_UartReadBuff_PARM_2
      00014B 50 36            [24]  766 	jnc	00105$
                                    767 ;	uart.h:84: p[i] = UartRead();
      00014D EC               [12]  768 	mov	a,r4
      00014E 2D               [12]  769 	add	a,r5
      00014F F9               [12]  770 	mov	r1,a
      000150 E4               [12]  771 	clr	a
      000151 3E               [12]  772 	addc	a,r6
      000152 FA               [12]  773 	mov	r2,a
      000153 8F 03            [24]  774 	mov	ar3,r7
      000155 C0 07            [24]  775 	push	ar7
      000157 C0 06            [24]  776 	push	ar6
      000159 C0 05            [24]  777 	push	ar5
      00015B C0 04            [24]  778 	push	ar4
      00015D C0 03            [24]  779 	push	ar3
      00015F C0 02            [24]  780 	push	ar2
      000161 C0 01            [24]  781 	push	ar1
      000163 12 00 F5         [24]  782 	lcall	_UartRead
      000166 A8 82            [24]  783 	mov	r0,dpl
      000168 D0 01            [24]  784 	pop	ar1
      00016A D0 02            [24]  785 	pop	ar2
      00016C D0 03            [24]  786 	pop	ar3
      00016E D0 04            [24]  787 	pop	ar4
      000170 D0 05            [24]  788 	pop	ar5
      000172 D0 06            [24]  789 	pop	ar6
      000174 D0 07            [24]  790 	pop	ar7
      000176 89 82            [24]  791 	mov	dpl,r1
      000178 8A 83            [24]  792 	mov	dph,r2
      00017A 8B F0            [24]  793 	mov	b,r3
      00017C E8               [12]  794 	mov	a,r0
      00017D 12 1D 0C         [24]  795 	lcall	__gptrput
                                    796 ;	uart.h:82: for (i=0;i<length;i++)
      000180 0C               [12]  797 	inc	r4
      000181 80 C4            [24]  798 	sjmp	00103$
      000183                        799 00105$:
                                    800 ;	uart.h:86: }
      000183 22               [24]  801 	ret
                                    802 ;------------------------------------------------------------
                                    803 ;Allocation info for local variables in function 'UartPrint'
                                    804 ;------------------------------------------------------------
                                    805 ;p                         Allocated to registers 
                                    806 ;------------------------------------------------------------
                                    807 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    808 ;	-----------------------------------------
                                    809 ;	 function UartPrint
                                    810 ;	-----------------------------------------
      000184                        811 _UartPrint:
      000184 AD 82            [24]  812 	mov	r5,dpl
      000186 AE 83            [24]  813 	mov	r6,dph
      000188 AF F0            [24]  814 	mov	r7,b
                                    815 ;	uart.h:90: do
      00018A                        816 00101$:
                                    817 ;	uart.h:92: UartWrite(*p);
      00018A 8D 82            [24]  818 	mov	dpl,r5
      00018C 8E 83            [24]  819 	mov	dph,r6
      00018E 8F F0            [24]  820 	mov	b,r7
      000190 12 1D FF         [24]  821 	lcall	__gptrget
      000193 FC               [12]  822 	mov	r4,a
      000194 A3               [24]  823 	inc	dptr
      000195 AD 82            [24]  824 	mov	r5,dpl
      000197 AE 83            [24]  825 	mov	r6,dph
      000199 8C 82            [24]  826 	mov	dpl,r4
      00019B C0 07            [24]  827 	push	ar7
      00019D C0 06            [24]  828 	push	ar6
      00019F C0 05            [24]  829 	push	ar5
      0001A1 12 00 FE         [24]  830 	lcall	_UartWrite
      0001A4 D0 05            [24]  831 	pop	ar5
      0001A6 D0 06            [24]  832 	pop	ar6
      0001A8 D0 07            [24]  833 	pop	ar7
                                    834 ;	uart.h:93: }while(*(++p)!=0);
      0001AA 8D 82            [24]  835 	mov	dpl,r5
      0001AC 8E 83            [24]  836 	mov	dph,r6
      0001AE 8F F0            [24]  837 	mov	b,r7
      0001B0 12 1D FF         [24]  838 	lcall	__gptrget
      0001B3 70 D5            [24]  839 	jnz	00101$
                                    840 ;	uart.h:94: }
      0001B5 22               [24]  841 	ret
                                    842 ;------------------------------------------------------------
                                    843 ;Allocation info for local variables in function 'UartWriteNumber'
                                    844 ;------------------------------------------------------------
                                    845 ;format                    Allocated to stack - _bp -3
                                    846 ;num                       Allocated to registers r7 
                                    847 ;msd                       Allocated to registers r4 
                                    848 ;lsd                       Allocated to registers r6 
                                    849 ;extra                     Allocated to registers r3 
                                    850 ;------------------------------------------------------------
                                    851 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    852 ;	-----------------------------------------
                                    853 ;	 function UartWriteNumber
                                    854 ;	-----------------------------------------
      0001B6                        855 _UartWriteNumber:
      0001B6 C0 3C            [24]  856 	push	_bp
      0001B8 85 81 3C         [24]  857 	mov	_bp,sp
      0001BB AF 82            [24]  858 	mov	r7,dpl
                                    859 ;	uart.h:104: if(format==HEX)
      0001BD E5 3C            [12]  860 	mov	a,_bp
      0001BF 24 FD            [12]  861 	add	a,#0xfd
      0001C1 F8               [12]  862 	mov	r0,a
      0001C2 E6               [12]  863 	mov	a,@r0
                                    864 ;	uart.h:106: msd = num/16;
      0001C3 70 32            [24]  865 	jnz	00104$
      0001C5 8F 05            [24]  866 	mov	ar5,r7
      0001C7 FE               [12]  867 	mov	r6,a
      0001C8 75 3D 10         [24]  868 	mov	__divsint_PARM_2,#0x10
                                    869 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001CB 8E 3E            [24]  870 	mov	(__divsint_PARM_2 + 1),r6
      0001CD 8D 82            [24]  871 	mov	dpl,r5
      0001CF 8E 83            [24]  872 	mov	dph,r6
      0001D1 C0 06            [24]  873 	push	ar6
      0001D3 C0 05            [24]  874 	push	ar5
      0001D5 12 1E 51         [24]  875 	lcall	__divsint
      0001D8 AB 82            [24]  876 	mov	r3,dpl
      0001DA D0 05            [24]  877 	pop	ar5
      0001DC D0 06            [24]  878 	pop	ar6
                                    879 ;	uart.h:107: lsd = num%16;
      0001DE 53 05 0F         [24]  880 	anl	ar5,#0x0f
                                    881 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001E1 8B 82            [24]  882 	mov	dpl,r3
      0001E3 C0 05            [24]  883 	push	ar5
      0001E5 12 00 BD         [24]  884 	lcall	_dec2hexNibble
      0001E8 12 00 FE         [24]  885 	lcall	_UartWrite
      0001EB D0 05            [24]  886 	pop	ar5
                                    887 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001ED 8D 82            [24]  888 	mov	dpl,r5
      0001EF 12 00 BD         [24]  889 	lcall	_dec2hexNibble
      0001F2 12 00 FE         [24]  890 	lcall	_UartWrite
      0001F5 80 7B            [24]  891 	sjmp	00106$
      0001F7                        892 00104$:
                                    893 ;	uart.h:112: else if(format==DEC)
      0001F7 E5 3C            [12]  894 	mov	a,_bp
      0001F9 24 FD            [12]  895 	add	a,#0xfd
      0001FB F8               [12]  896 	mov	r0,a
      0001FC B6 01 73         [24]  897 	cjne	@r0,#0x01,00106$
                                    898 ;	uart.h:114: msd = num/100; // 100s place
      0001FF 7E 00            [12]  899 	mov	r6,#0x00
      000201 75 3D 64         [24]  900 	mov	__divsint_PARM_2,#0x64
                                    901 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000204 8E 3E            [24]  902 	mov	(__divsint_PARM_2 + 1),r6
      000206 8F 82            [24]  903 	mov	dpl,r7
      000208 8E 83            [24]  904 	mov	dph,r6
      00020A C0 07            [24]  905 	push	ar7
      00020C C0 06            [24]  906 	push	ar6
      00020E 12 1E 51         [24]  907 	lcall	__divsint
      000211 AC 82            [24]  908 	mov	r4,dpl
      000213 D0 06            [24]  909 	pop	ar6
      000215 D0 07            [24]  910 	pop	ar7
                                    911 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000217 75 3D 64         [24]  912 	mov	__modsint_PARM_2,#0x64
      00021A 75 3E 00         [24]  913 	mov	(__modsint_PARM_2 + 1),#0x00
      00021D 8F 82            [24]  914 	mov	dpl,r7
      00021F 8E 83            [24]  915 	mov	dph,r6
      000221 C0 07            [24]  916 	push	ar7
      000223 C0 06            [24]  917 	push	ar6
      000225 C0 04            [24]  918 	push	ar4
      000227 12 1E 1B         [24]  919 	lcall	__modsint
      00022A 75 3D 0A         [24]  920 	mov	__divsint_PARM_2,#0x0a
      00022D 75 3E 00         [24]  921 	mov	(__divsint_PARM_2 + 1),#0x00
      000230 12 1E 51         [24]  922 	lcall	__divsint
      000233 AB 82            [24]  923 	mov	r3,dpl
      000235 D0 04            [24]  924 	pop	ar4
      000237 D0 06            [24]  925 	pop	ar6
      000239 D0 07            [24]  926 	pop	ar7
                                    927 ;	uart.h:116: lsd = num%10;
      00023B 75 3D 0A         [24]  928 	mov	__modsint_PARM_2,#0x0a
      00023E 75 3E 00         [24]  929 	mov	(__modsint_PARM_2 + 1),#0x00
      000241 8F 82            [24]  930 	mov	dpl,r7
      000243 8E 83            [24]  931 	mov	dph,r6
      000245 C0 04            [24]  932 	push	ar4
      000247 C0 03            [24]  933 	push	ar3
      000249 12 1E 1B         [24]  934 	lcall	__modsint
      00024C AE 82            [24]  935 	mov	r6,dpl
      00024E D0 03            [24]  936 	pop	ar3
      000250 D0 04            [24]  937 	pop	ar4
                                    938 ;	uart.h:118: UartWrite(msd + 0x30);
      000252 74 30            [12]  939 	mov	a,#0x30
      000254 2C               [12]  940 	add	a,r4
      000255 F5 82            [12]  941 	mov	dpl,a
      000257 C0 06            [24]  942 	push	ar6
      000259 C0 03            [24]  943 	push	ar3
      00025B 12 00 FE         [24]  944 	lcall	_UartWrite
      00025E D0 03            [24]  945 	pop	ar3
                                    946 ;	uart.h:119: UartWrite(extra + 0x30);
      000260 74 30            [12]  947 	mov	a,#0x30
      000262 2B               [12]  948 	add	a,r3
      000263 F5 82            [12]  949 	mov	dpl,a
      000265 12 00 FE         [24]  950 	lcall	_UartWrite
      000268 D0 06            [24]  951 	pop	ar6
                                    952 ;	uart.h:120: UartWrite(lsd + 0x30);
      00026A 74 30            [12]  953 	mov	a,#0x30
      00026C 2E               [12]  954 	add	a,r6
      00026D F5 82            [12]  955 	mov	dpl,a
      00026F 12 00 FE         [24]  956 	lcall	_UartWrite
      000272                        957 00106$:
                                    958 ;	uart.h:123: }
      000272 D0 3C            [24]  959 	pop	_bp
      000274 22               [24]  960 	ret
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    963 ;------------------------------------------------------------
                                    964 ;length                    Allocated to stack - _bp -3
                                    965 ;format                    Allocated to stack - _bp -4
                                    966 ;delimiter                 Allocated to stack - _bp -5
                                    967 ;p                         Allocated to registers 
                                    968 ;i                         Allocated to registers r4 
                                    969 ;------------------------------------------------------------
                                    970 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    971 ;	-----------------------------------------
                                    972 ;	 function UartWriteNumbers
                                    973 ;	-----------------------------------------
      000275                        974 _UartWriteNumbers:
      000275 C0 3C            [24]  975 	push	_bp
      000277 85 81 3C         [24]  976 	mov	_bp,sp
      00027A AD 82            [24]  977 	mov	r5,dpl
      00027C AE 83            [24]  978 	mov	r6,dph
      00027E AF F0            [24]  979 	mov	r7,b
                                    980 ;	uart.h:129: for(i=0;i<length;i++,p++)
      000280 7C 00            [12]  981 	mov	r4,#0x00
      000282                        982 00103$:
      000282 E5 3C            [12]  983 	mov	a,_bp
      000284 24 FD            [12]  984 	add	a,#0xfd
      000286 F8               [12]  985 	mov	r0,a
      000287 C3               [12]  986 	clr	c
      000288 EC               [12]  987 	mov	a,r4
      000289 96               [12]  988 	subb	a,@r0
      00028A 50 3B            [24]  989 	jnc	00105$
                                    990 ;	uart.h:131: UartWriteNumber(*p,format);
      00028C 8D 82            [24]  991 	mov	dpl,r5
      00028E 8E 83            [24]  992 	mov	dph,r6
      000290 8F F0            [24]  993 	mov	b,r7
      000292 12 1D FF         [24]  994 	lcall	__gptrget
      000295 FB               [12]  995 	mov	r3,a
      000296 A3               [24]  996 	inc	dptr
      000297 AD 82            [24]  997 	mov	r5,dpl
      000299 AE 83            [24]  998 	mov	r6,dph
      00029B C0 07            [24]  999 	push	ar7
      00029D C0 06            [24] 1000 	push	ar6
      00029F C0 05            [24] 1001 	push	ar5
      0002A1 C0 04            [24] 1002 	push	ar4
      0002A3 E5 3C            [12] 1003 	mov	a,_bp
      0002A5 24 FC            [12] 1004 	add	a,#0xfc
      0002A7 F8               [12] 1005 	mov	r0,a
      0002A8 E6               [12] 1006 	mov	a,@r0
      0002A9 C0 E0            [24] 1007 	push	acc
      0002AB 8B 82            [24] 1008 	mov	dpl,r3
      0002AD 12 01 B6         [24] 1009 	lcall	_UartWriteNumber
      0002B0 15 81            [12] 1010 	dec	sp
                                   1011 ;	uart.h:132: UartWrite(delimiter);
      0002B2 E5 3C            [12] 1012 	mov	a,_bp
      0002B4 24 FB            [12] 1013 	add	a,#0xfb
      0002B6 F8               [12] 1014 	mov	r0,a
      0002B7 86 82            [24] 1015 	mov	dpl,@r0
      0002B9 12 00 FE         [24] 1016 	lcall	_UartWrite
      0002BC D0 04            [24] 1017 	pop	ar4
      0002BE D0 05            [24] 1018 	pop	ar5
      0002C0 D0 06            [24] 1019 	pop	ar6
      0002C2 D0 07            [24] 1020 	pop	ar7
                                   1021 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002C4 0C               [12] 1022 	inc	r4
      0002C5 80 BB            [24] 1023 	sjmp	00103$
      0002C7                       1024 00105$:
                                   1025 ;	uart.h:134: }
      0002C7 D0 3C            [24] 1026 	pop	_bp
      0002C9 22               [24] 1027 	ret
                                   1028 ;------------------------------------------------------------
                                   1029 ;Allocation info for local variables in function 'UartPrintNumber'
                                   1030 ;------------------------------------------------------------
                                   1031 ;n                         Allocated to stack - _bp +1
                                   1032 ;digit                     Allocated to stack - _bp +7
                                   1033 ;i                         Allocated to stack - _bp +5
                                   1034 ;j                         Allocated to registers r3 
                                   1035 ;leading_zeroes_flag       Allocated to stack - _bp +6
                                   1036 ;sloc0                     Allocated to stack - _bp +12
                                   1037 ;------------------------------------------------------------
                                   1038 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function UartPrintNumber
                                   1041 ;	-----------------------------------------
      0002CA                       1042 _UartPrintNumber:
      0002CA C0 3C            [24] 1043 	push	_bp
      0002CC 85 81 3C         [24] 1044 	mov	_bp,sp
      0002CF C0 82            [24] 1045 	push	dpl
      0002D1 C0 83            [24] 1046 	push	dph
      0002D3 C0 F0            [24] 1047 	push	b
      0002D5 C0 E0            [24] 1048 	push	acc
      0002D7 E5 81            [12] 1049 	mov	a,sp
      0002D9 24 06            [12] 1050 	add	a,#0x06
      0002DB F5 81            [12] 1051 	mov	sp,a
                                   1052 ;	uart.h:152: char i,j,leading_zeroes_flag=1;
      0002DD E5 3C            [12] 1053 	mov	a,_bp
      0002DF 24 06            [12] 1054 	add	a,#0x06
      0002E1 F8               [12] 1055 	mov	r0,a
      0002E2 76 01            [12] 1056 	mov	@r0,#0x01
                                   1057 ;	uart.h:153: for(i=8;i>0;i--)
      0002E4 E5 3C            [12] 1058 	mov	a,_bp
      0002E6 24 05            [12] 1059 	add	a,#0x05
      0002E8 F8               [12] 1060 	mov	r0,a
      0002E9 76 08            [12] 1061 	mov	@r0,#0x08
      0002EB                       1062 00112$:
                                   1063 ;	uart.h:155: digit=n;
      0002EB A8 3C            [24] 1064 	mov	r0,_bp
      0002ED 08               [12] 1065 	inc	r0
      0002EE E5 3C            [12] 1066 	mov	a,_bp
      0002F0 24 07            [12] 1067 	add	a,#0x07
      0002F2 F9               [12] 1068 	mov	r1,a
      0002F3 E6               [12] 1069 	mov	a,@r0
      0002F4 F7               [12] 1070 	mov	@r1,a
      0002F5 08               [12] 1071 	inc	r0
      0002F6 09               [12] 1072 	inc	r1
      0002F7 E6               [12] 1073 	mov	a,@r0
      0002F8 F7               [12] 1074 	mov	@r1,a
      0002F9 08               [12] 1075 	inc	r0
      0002FA 09               [12] 1076 	inc	r1
      0002FB E6               [12] 1077 	mov	a,@r0
      0002FC F7               [12] 1078 	mov	@r1,a
      0002FD 08               [12] 1079 	inc	r0
      0002FE 09               [12] 1080 	inc	r1
      0002FF E6               [12] 1081 	mov	a,@r0
      000300 F7               [12] 1082 	mov	@r1,a
                                   1083 ;	uart.h:156: for(j=1;j<i;j++) digit/=10;
      000301 7B 01            [12] 1084 	mov	r3,#0x01
      000303                       1085 00110$:
      000303 E5 3C            [12] 1086 	mov	a,_bp
      000305 24 05            [12] 1087 	add	a,#0x05
      000307 F8               [12] 1088 	mov	r0,a
      000308 C3               [12] 1089 	clr	c
      000309 EB               [12] 1090 	mov	a,r3
      00030A 96               [12] 1091 	subb	a,@r0
      00030B 50 3A            [24] 1092 	jnc	00101$
      00030D 75 3D 0A         [24] 1093 	mov	__divulong_PARM_2,#0x0a
      000310 E4               [12] 1094 	clr	a
      000311 F5 3E            [12] 1095 	mov	(__divulong_PARM_2 + 1),a
      000313 F5 3F            [12] 1096 	mov	(__divulong_PARM_2 + 2),a
      000315 F5 40            [12] 1097 	mov	(__divulong_PARM_2 + 3),a
      000317 E5 3C            [12] 1098 	mov	a,_bp
      000319 24 07            [12] 1099 	add	a,#0x07
      00031B F8               [12] 1100 	mov	r0,a
      00031C 86 82            [24] 1101 	mov	dpl,@r0
      00031E 08               [12] 1102 	inc	r0
      00031F 86 83            [24] 1103 	mov	dph,@r0
      000321 08               [12] 1104 	inc	r0
      000322 86 F0            [24] 1105 	mov	b,@r0
      000324 08               [12] 1106 	inc	r0
      000325 E6               [12] 1107 	mov	a,@r0
      000326 C0 03            [24] 1108 	push	ar3
      000328 12 1C A7         [24] 1109 	lcall	__divulong
      00032B AC 82            [24] 1110 	mov	r4,dpl
      00032D AD 83            [24] 1111 	mov	r5,dph
      00032F AE F0            [24] 1112 	mov	r6,b
      000331 FF               [12] 1113 	mov	r7,a
      000332 D0 03            [24] 1114 	pop	ar3
      000334 E5 3C            [12] 1115 	mov	a,_bp
      000336 24 07            [12] 1116 	add	a,#0x07
      000338 F8               [12] 1117 	mov	r0,a
      000339 A6 04            [24] 1118 	mov	@r0,ar4
      00033B 08               [12] 1119 	inc	r0
      00033C A6 05            [24] 1120 	mov	@r0,ar5
      00033E 08               [12] 1121 	inc	r0
      00033F A6 06            [24] 1122 	mov	@r0,ar6
      000341 08               [12] 1123 	inc	r0
      000342 A6 07            [24] 1124 	mov	@r0,ar7
      000344 0B               [12] 1125 	inc	r3
      000345 80 BC            [24] 1126 	sjmp	00110$
      000347                       1127 00101$:
                                   1128 ;	uart.h:158: if(leading_zeroes_flag && digit%10) leading_zeroes_flag=0; //flag to start printing
      000347 E5 3C            [12] 1129 	mov	a,_bp
      000349 24 06            [12] 1130 	add	a,#0x06
      00034B F8               [12] 1131 	mov	r0,a
      00034C E6               [12] 1132 	mov	a,@r0
      00034D 60 30            [24] 1133 	jz	00103$
      00034F 75 3D 0A         [24] 1134 	mov	__modulong_PARM_2,#0x0a
      000352 E4               [12] 1135 	clr	a
      000353 F5 3E            [12] 1136 	mov	(__modulong_PARM_2 + 1),a
      000355 F5 3F            [12] 1137 	mov	(__modulong_PARM_2 + 2),a
      000357 F5 40            [12] 1138 	mov	(__modulong_PARM_2 + 3),a
      000359 E5 3C            [12] 1139 	mov	a,_bp
      00035B 24 07            [12] 1140 	add	a,#0x07
      00035D F8               [12] 1141 	mov	r0,a
      00035E 86 82            [24] 1142 	mov	dpl,@r0
      000360 08               [12] 1143 	inc	r0
      000361 86 83            [24] 1144 	mov	dph,@r0
      000363 08               [12] 1145 	inc	r0
      000364 86 F0            [24] 1146 	mov	b,@r0
      000366 08               [12] 1147 	inc	r0
      000367 E6               [12] 1148 	mov	a,@r0
      000368 12 1C 24         [24] 1149 	lcall	__modulong
      00036B AA 82            [24] 1150 	mov	r2,dpl
      00036D AB 83            [24] 1151 	mov	r3,dph
      00036F AE F0            [24] 1152 	mov	r6,b
      000371 FF               [12] 1153 	mov	r7,a
      000372 EA               [12] 1154 	mov	a,r2
      000373 4B               [12] 1155 	orl	a,r3
      000374 4E               [12] 1156 	orl	a,r6
      000375 4F               [12] 1157 	orl	a,r7
      000376 60 07            [24] 1158 	jz	00103$
      000378 E5 3C            [12] 1159 	mov	a,_bp
      00037A 24 06            [12] 1160 	add	a,#0x06
      00037C F8               [12] 1161 	mov	r0,a
      00037D 76 00            [12] 1162 	mov	@r0,#0x00
      00037F                       1163 00103$:
                                   1164 ;	uart.h:160: if(leading_zeroes_flag); //pass - do not print
      00037F E5 3C            [12] 1165 	mov	a,_bp
      000381 24 06            [12] 1166 	add	a,#0x06
      000383 F8               [12] 1167 	mov	r0,a
      000384 E6               [12] 1168 	mov	a,@r0
      000385 70 26            [24] 1169 	jnz	00113$
                                   1170 ;	uart.h:161: else UartWrite(0x30 + digit%10);
      000387 75 3D 0A         [24] 1171 	mov	__modulong_PARM_2,#0x0a
      00038A E4               [12] 1172 	clr	a
      00038B F5 3E            [12] 1173 	mov	(__modulong_PARM_2 + 1),a
      00038D F5 3F            [12] 1174 	mov	(__modulong_PARM_2 + 2),a
      00038F F5 40            [12] 1175 	mov	(__modulong_PARM_2 + 3),a
      000391 E5 3C            [12] 1176 	mov	a,_bp
      000393 24 07            [12] 1177 	add	a,#0x07
      000395 F8               [12] 1178 	mov	r0,a
      000396 86 82            [24] 1179 	mov	dpl,@r0
      000398 08               [12] 1180 	inc	r0
      000399 86 83            [24] 1181 	mov	dph,@r0
      00039B 08               [12] 1182 	inc	r0
      00039C 86 F0            [24] 1183 	mov	b,@r0
      00039E 08               [12] 1184 	inc	r0
      00039F E6               [12] 1185 	mov	a,@r0
      0003A0 12 1C 24         [24] 1186 	lcall	__modulong
      0003A3 AC 82            [24] 1187 	mov	r4,dpl
      0003A5 74 30            [12] 1188 	mov	a,#0x30
      0003A7 2C               [12] 1189 	add	a,r4
      0003A8 F5 82            [12] 1190 	mov	dpl,a
      0003AA 12 00 FE         [24] 1191 	lcall	_UartWrite
      0003AD                       1192 00113$:
                                   1193 ;	uart.h:153: for(i=8;i>0;i--)
      0003AD E5 3C            [12] 1194 	mov	a,_bp
      0003AF 24 05            [12] 1195 	add	a,#0x05
      0003B1 F8               [12] 1196 	mov	r0,a
      0003B2 16               [12] 1197 	dec	@r0
      0003B3 E5 3C            [12] 1198 	mov	a,_bp
      0003B5 24 05            [12] 1199 	add	a,#0x05
      0003B7 F8               [12] 1200 	mov	r0,a
      0003B8 E6               [12] 1201 	mov	a,@r0
      0003B9 60 03            [24] 1202 	jz	00149$
      0003BB 02 02 EB         [24] 1203 	ljmp	00112$
      0003BE                       1204 00149$:
                                   1205 ;	uart.h:163: }
      0003BE 85 3C 81         [24] 1206 	mov	sp,_bp
      0003C1 D0 3C            [24] 1207 	pop	_bp
      0003C3 22               [24] 1208 	ret
                                   1209 ;------------------------------------------------------------
                                   1210 ;Allocation info for local variables in function 'UartScanByte'
                                   1211 ;------------------------------------------------------------
                                   1212 ;unibble                   Allocated to registers r7 
                                   1213 ;lnibble                   Allocated to registers r6 
                                   1214 ;------------------------------------------------------------
                                   1215 ;	uart.h:166: uint8_t UartScanByte() __reentrant
                                   1216 ;	-----------------------------------------
                                   1217 ;	 function UartScanByte
                                   1218 ;	-----------------------------------------
      0003C4                       1219 _UartScanByte:
                                   1220 ;	uart.h:170: while(UartReadReady()) UartRead(); //flush
      0003C4                       1221 00101$:
      0003C4 12 00 EA         [24] 1222 	lcall	_UartReadReady
      0003C7 E5 82            [12] 1223 	mov	a,dpl
      0003C9 60 05            [24] 1224 	jz	00103$
      0003CB 12 00 F5         [24] 1225 	lcall	_UartRead
      0003CE 80 F4            [24] 1226 	sjmp	00101$
      0003D0                       1227 00103$:
                                   1228 ;	uart.h:171: UartPrint("Number(hex) < ");
      0003D0 90 1E 8D         [24] 1229 	mov	dptr,#___str_0
      0003D3 75 F0 80         [24] 1230 	mov	b,#0x80
      0003D6 12 01 84         [24] 1231 	lcall	_UartPrint
                                   1232 ;	uart.h:173: unibble = UartRead();
      0003D9 12 00 F5         [24] 1233 	lcall	_UartRead
                                   1234 ;	uart.h:174: UartWrite(unibble);
      0003DC AF 82            [24] 1235 	mov  r7,dpl
      0003DE C0 07            [24] 1236 	push	ar7
      0003E0 12 00 FE         [24] 1237 	lcall	_UartWrite
                                   1238 ;	uart.h:175: lnibble = UartRead();
      0003E3 12 00 F5         [24] 1239 	lcall	_UartRead
                                   1240 ;	uart.h:176: UartWrite(lnibble);
      0003E6 AE 82            [24] 1241 	mov  r6,dpl
      0003E8 C0 06            [24] 1242 	push	ar6
      0003EA 12 00 FE         [24] 1243 	lcall	_UartWrite
                                   1244 ;	uart.h:178: UartWrite('\n');
      0003ED 75 82 0A         [24] 1245 	mov	dpl,#0x0a
      0003F0 12 00 FE         [24] 1246 	lcall	_UartWrite
      0003F3 D0 06            [24] 1247 	pop	ar6
      0003F5 D0 07            [24] 1248 	pop	ar7
                                   1249 ;	uart.h:180: return hex2dec(unibble,lnibble);
      0003F7 8E 08            [24] 1250 	mov	_hex2dec_PARM_2,r6
      0003F9 8F 82            [24] 1251 	mov	dpl,r7
                                   1252 ;	uart.h:181: }
      0003FB 02 00 A3         [24] 1253 	ljmp	_hex2dec
                                   1254 ;------------------------------------------------------------
                                   1255 ;Allocation info for local variables in function 'UartScanLine'
                                   1256 ;------------------------------------------------------------
                                   1257 ;maxLength                 Allocated to stack - _bp -3
                                   1258 ;dst                       Allocated to stack - _bp +1
                                   1259 ;recv                      Allocated to registers r2 
                                   1260 ;count                     Allocated to registers r4 
                                   1261 ;------------------------------------------------------------
                                   1262 ;	uart.h:183: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1263 ;	-----------------------------------------
                                   1264 ;	 function UartScanLine
                                   1265 ;	-----------------------------------------
      0003FE                       1266 _UartScanLine:
      0003FE C0 3C            [24] 1267 	push	_bp
      000400 85 81 3C         [24] 1268 	mov	_bp,sp
      000403 C0 82            [24] 1269 	push	dpl
      000405 C0 83            [24] 1270 	push	dph
      000407 C0 F0            [24] 1271 	push	b
                                   1272 ;	uart.h:185: uint8_t recv,count=0;
      000409 7C 00            [12] 1273 	mov	r4,#0x00
                                   1274 ;	uart.h:187: while(UartReadReady()) UartRead(); //flush
      00040B                       1275 00101$:
      00040B C0 04            [24] 1276 	push	ar4
      00040D 12 00 EA         [24] 1277 	lcall	_UartReadReady
      000410 E5 82            [12] 1278 	mov	a,dpl
      000412 D0 04            [24] 1279 	pop	ar4
      000414 60 09            [24] 1280 	jz	00118$
      000416 C0 04            [24] 1281 	push	ar4
      000418 12 00 F5         [24] 1282 	lcall	_UartRead
      00041B D0 04            [24] 1283 	pop	ar4
                                   1284 ;	uart.h:189: while(1)
      00041D 80 EC            [24] 1285 	sjmp	00101$
      00041F                       1286 00118$:
      00041F 7B 00            [12] 1287 	mov	r3,#0x00
      000421                       1288 00110$:
                                   1289 ;	uart.h:192: recv=UartRead();
      000421 C0 04            [24] 1290 	push	ar4
      000423 C0 03            [24] 1291 	push	ar3
      000425 12 00 F5         [24] 1292 	lcall	_UartRead
                                   1293 ;	uart.h:193: UartWrite(recv);
      000428 AA 82            [24] 1294 	mov  r2,dpl
      00042A C0 02            [24] 1295 	push	ar2
      00042C 12 00 FE         [24] 1296 	lcall	_UartWrite
      00042F D0 02            [24] 1297 	pop	ar2
      000431 D0 03            [24] 1298 	pop	ar3
      000433 D0 04            [24] 1299 	pop	ar4
                                   1300 ;	uart.h:194: if(recv == '\n') 
      000435 BA 0A 19         [24] 1301 	cjne	r2,#0x0a,00105$
                                   1302 ;	uart.h:196: *(dst+count)=0; //add string terminate
      000438 A8 3C            [24] 1303 	mov	r0,_bp
      00043A 08               [12] 1304 	inc	r0
      00043B EC               [12] 1305 	mov	a,r4
      00043C 26               [12] 1306 	add	a,@r0
      00043D FD               [12] 1307 	mov	r5,a
      00043E E4               [12] 1308 	clr	a
      00043F 08               [12] 1309 	inc	r0
      000440 36               [12] 1310 	addc	a,@r0
      000441 FE               [12] 1311 	mov	r6,a
      000442 08               [12] 1312 	inc	r0
      000443 86 07            [24] 1313 	mov	ar7,@r0
      000445 8D 82            [24] 1314 	mov	dpl,r5
      000447 8E 83            [24] 1315 	mov	dph,r6
      000449 8F F0            [24] 1316 	mov	b,r7
      00044B E4               [12] 1317 	clr	a
      00044C 12 1D 0C         [24] 1318 	lcall	__gptrput
                                   1319 ;	uart.h:197: break;
      00044F 80 31            [24] 1320 	sjmp	00111$
      000451                       1321 00105$:
                                   1322 ;	uart.h:199: else *(dst+count)=recv;
      000451 A8 3C            [24] 1323 	mov	r0,_bp
      000453 08               [12] 1324 	inc	r0
      000454 EB               [12] 1325 	mov	a,r3
      000455 26               [12] 1326 	add	a,@r0
      000456 FD               [12] 1327 	mov	r5,a
      000457 E4               [12] 1328 	clr	a
      000458 08               [12] 1329 	inc	r0
      000459 36               [12] 1330 	addc	a,@r0
      00045A FE               [12] 1331 	mov	r6,a
      00045B 08               [12] 1332 	inc	r0
      00045C 86 07            [24] 1333 	mov	ar7,@r0
      00045E 8D 82            [24] 1334 	mov	dpl,r5
      000460 8E 83            [24] 1335 	mov	dph,r6
      000462 8F F0            [24] 1336 	mov	b,r7
      000464 EA               [12] 1337 	mov	a,r2
      000465 12 1D 0C         [24] 1338 	lcall	__gptrput
                                   1339 ;	uart.h:201: if(count==maxLength) 
      000468 E5 3C            [12] 1340 	mov	a,_bp
      00046A 24 FD            [12] 1341 	add	a,#0xfd
      00046C F8               [12] 1342 	mov	r0,a
      00046D E6               [12] 1343 	mov	a,@r0
      00046E B5 03 0C         [24] 1344 	cjne	a,ar3,00108$
                                   1345 ;	uart.h:203: *(dst+count)=0; // terminate string.
      000471 8D 82            [24] 1346 	mov	dpl,r5
      000473 8E 83            [24] 1347 	mov	dph,r6
      000475 8F F0            [24] 1348 	mov	b,r7
      000477 E4               [12] 1349 	clr	a
      000478 12 1D 0C         [24] 1350 	lcall	__gptrput
                                   1351 ;	uart.h:204: break;
      00047B 80 05            [24] 1352 	sjmp	00111$
      00047D                       1353 00108$:
                                   1354 ;	uart.h:207: count++;
      00047D 0B               [12] 1355 	inc	r3
      00047E 8B 04            [24] 1356 	mov	ar4,r3
      000480 80 9F            [24] 1357 	sjmp	00110$
      000482                       1358 00111$:
                                   1359 ;	uart.h:211: return count;
      000482 8C 82            [24] 1360 	mov	dpl,r4
                                   1361 ;	uart.h:213: }
      000484 85 3C 81         [24] 1362 	mov	sp,_bp
      000487 D0 3C            [24] 1363 	pop	_bp
      000489 22               [24] 1364 	ret
                                   1365 ;------------------------------------------------------------
                                   1366 ;Allocation info for local variables in function 'spi_init'
                                   1367 ;------------------------------------------------------------
                                   1368 ;	spi.h:37: void spi_init()
                                   1369 ;	-----------------------------------------
                                   1370 ;	 function spi_init
                                   1371 ;	-----------------------------------------
      00048A                       1372 _spi_init:
                                   1373 ;	spi.h:40: spi_miso_high(); //make MISO input
      00048A 43 90 04         [24] 1374 	orl	_P1,#0x04
                                   1375 ;	spi.h:41: spi_mosi_high(); //recommended in sd card tutorial
      00048D 43 90 02         [24] 1376 	orl	_P1,#0x02
                                   1377 ;	spi.h:42: spi_cs_high(); //deselect
      000490 43 90 08         [24] 1378 	orl	_P1,#0x08
                                   1379 ;	spi.h:43: spi_clk_low(); //mode 0, idle clk is low
      000493 53 90 FE         [24] 1380 	anl	_P1,#0xfe
                                   1381 ;	spi.h:44: }
      000496 22               [24] 1382 	ret
                                   1383 ;------------------------------------------------------------
                                   1384 ;Allocation info for local variables in function 'spi_transfer'
                                   1385 ;------------------------------------------------------------
                                   1386 ;handle_cs                 Allocated with name '_spi_transfer_PARM_2'
                                   1387 ;tx                        Allocated to registers r7 
                                   1388 ;rx                        Allocated to registers r6 
                                   1389 ;i                         Allocated to registers r5 
                                   1390 ;------------------------------------------------------------
                                   1391 ;	spi.h:46: uint8_t spi_transfer(uint8_t tx,uint8_t handle_cs)
                                   1392 ;	-----------------------------------------
                                   1393 ;	 function spi_transfer
                                   1394 ;	-----------------------------------------
      000497                       1395 _spi_transfer:
      000497 AF 82            [24] 1396 	mov	r7,dpl
                                   1397 ;	spi.h:49: rx=0; //clear the rx - sdcc compiler throws warning otherwise
      000499 7E 00            [12] 1398 	mov	r6,#0x00
                                   1399 ;	spi.h:52: spi_clk_low();
      00049B 53 90 FE         [24] 1400 	anl	_P1,#0xfe
                                   1401 ;	spi.h:55: if(handle_cs)
      00049E E5 3D            [12] 1402 	mov	a,_spi_transfer_PARM_2
      0004A0 60 03            [24] 1403 	jz	00139$
                                   1404 ;	spi.h:56: spi_cs_low();
      0004A2 53 90 F7         [24] 1405 	anl	_P1,#0xf7
                                   1406 ;	spi.h:59: for(i=0;i<8;i++)
      0004A5                       1407 00139$:
      0004A5 7D 00            [12] 1408 	mov	r5,#0x00
      0004A7                       1409 00132$:
                                   1410 ;	spi.h:62: if(tx & 0x80) spi_mosi_high();
      0004A7 EF               [12] 1411 	mov	a,r7
      0004A8 30 E7 05         [24] 1412 	jnb	acc.7,00112$
      0004AB 43 90 02         [24] 1413 	orl	_P1,#0x02
                                   1414 ;	spi.h:63: else spi_mosi_low();
      0004AE 80 03            [24] 1415 	sjmp	00117$
      0004B0                       1416 00112$:
      0004B0 53 90 FD         [24] 1417 	anl	_P1,#0xfd
      0004B3                       1418 00117$:
                                   1419 ;	spi.h:65: tx <<=1;
      0004B3 8F 04            [24] 1420 	mov	ar4,r7
      0004B5 EC               [12] 1421 	mov	a,r4
      0004B6 2C               [12] 1422 	add	a,r4
      0004B7 FF               [12] 1423 	mov	r7,a
                                   1424 ;	spi.h:70: rx <<=1;
      0004B8 8E 04            [24] 1425 	mov	ar4,r6
      0004BA EC               [12] 1426 	mov	a,r4
      0004BB 2C               [12] 1427 	add	a,r4
      0004BC FE               [12] 1428 	mov	r6,a
                                   1429 ;	spi.h:73: spi_clk_high();
      0004BD 43 90 01         [24] 1430 	orl	_P1,#0x01
                                   1431 ;	spi.h:76: if(spi_read_miso()) rx |=1;
      0004C0 E5 90            [12] 1432 	mov	a,_P1
      0004C2 30 E2 03         [24] 1433 	jnb	acc.2,00123$
      0004C5 43 06 01         [24] 1434 	orl	ar6,#0x01
                                   1435 ;	spi.h:81: spi_clk_low();
      0004C8                       1436 00123$:
      0004C8 53 90 FE         [24] 1437 	anl	_P1,#0xfe
                                   1438 ;	spi.h:59: for(i=0;i<8;i++)
      0004CB 0D               [12] 1439 	inc	r5
      0004CC BD 08 00         [24] 1440 	cjne	r5,#0x08,00164$
      0004CF                       1441 00164$:
      0004CF 40 D6            [24] 1442 	jc	00132$
                                   1443 ;	spi.h:86: if(handle_cs)
      0004D1 E5 3D            [12] 1444 	mov	a,_spi_transfer_PARM_2
      0004D3 60 03            [24] 1445 	jz	00131$
                                   1446 ;	spi.h:87: spi_cs_high();
      0004D5 43 90 08         [24] 1447 	orl	_P1,#0x08
      0004D8                       1448 00131$:
                                   1449 ;	spi.h:89: return rx;
      0004D8 8E 82            [24] 1450 	mov	dpl,r6
                                   1451 ;	spi.h:90: }
      0004DA 22               [24] 1452 	ret
                                   1453 ;------------------------------------------------------------
                                   1454 ;Allocation info for local variables in function 'spi_transfer_all'
                                   1455 ;------------------------------------------------------------
                                   1456 ;len                       Allocated with name '_spi_transfer_all_PARM_2'
                                   1457 ;handle_cs                 Allocated with name '_spi_transfer_all_PARM_3'
                                   1458 ;buff                      Allocated to registers r5 r6 r7 
                                   1459 ;i                         Allocated to registers r4 
                                   1460 ;------------------------------------------------------------
                                   1461 ;	spi.h:94: void spi_transfer_all(uint8_t *buff, uint8_t len,uint8_t handle_cs)
                                   1462 ;	-----------------------------------------
                                   1463 ;	 function spi_transfer_all
                                   1464 ;	-----------------------------------------
      0004DB                       1465 _spi_transfer_all:
      0004DB AD 82            [24] 1466 	mov	r5,dpl
      0004DD AE 83            [24] 1467 	mov	r6,dph
      0004DF AF F0            [24] 1468 	mov	r7,b
                                   1469 ;	spi.h:99: if(handle_cs)spi_cs_low();
      0004E1 E5 0C            [12] 1470 	mov	a,_spi_transfer_all_PARM_3
      0004E3 60 03            [24] 1471 	jz	00119$
      0004E5 53 90 F7         [24] 1472 	anl	_P1,#0xf7
                                   1473 ;	spi.h:101: for(i=0;i<len;i++)
      0004E8                       1474 00119$:
      0004E8 7C 00            [12] 1475 	mov	r4,#0x00
      0004EA                       1476 00113$:
      0004EA C3               [12] 1477 	clr	c
      0004EB EC               [12] 1478 	mov	a,r4
      0004EC 95 0B            [12] 1479 	subb	a,_spi_transfer_all_PARM_2
      0004EE 50 2D            [24] 1480 	jnc	00106$
                                   1481 ;	spi.h:103: spi_transfer(buff[i],0);
      0004F0 EC               [12] 1482 	mov	a,r4
      0004F1 2D               [12] 1483 	add	a,r5
      0004F2 F9               [12] 1484 	mov	r1,a
      0004F3 E4               [12] 1485 	clr	a
      0004F4 3E               [12] 1486 	addc	a,r6
      0004F5 FA               [12] 1487 	mov	r2,a
      0004F6 8F 03            [24] 1488 	mov	ar3,r7
      0004F8 89 82            [24] 1489 	mov	dpl,r1
      0004FA 8A 83            [24] 1490 	mov	dph,r2
      0004FC 8B F0            [24] 1491 	mov	b,r3
      0004FE 12 1D FF         [24] 1492 	lcall	__gptrget
      000501 F9               [12] 1493 	mov	r1,a
      000502 75 3D 00         [24] 1494 	mov	_spi_transfer_PARM_2,#0x00
      000505 89 82            [24] 1495 	mov	dpl,r1
      000507 C0 07            [24] 1496 	push	ar7
      000509 C0 06            [24] 1497 	push	ar6
      00050B C0 05            [24] 1498 	push	ar5
      00050D C0 04            [24] 1499 	push	ar4
      00050F 12 04 97         [24] 1500 	lcall	_spi_transfer
      000512 D0 04            [24] 1501 	pop	ar4
      000514 D0 05            [24] 1502 	pop	ar5
      000516 D0 06            [24] 1503 	pop	ar6
      000518 D0 07            [24] 1504 	pop	ar7
                                   1505 ;	spi.h:101: for(i=0;i<len;i++)
      00051A 0C               [12] 1506 	inc	r4
      00051B 80 CD            [24] 1507 	sjmp	00113$
      00051D                       1508 00106$:
                                   1509 ;	spi.h:107: if(handle_cs)spi_cs_high();
      00051D E5 0C            [12] 1510 	mov	a,_spi_transfer_all_PARM_3
      00051F 60 03            [24] 1511 	jz	00115$
      000521 43 90 08         [24] 1512 	orl	_P1,#0x08
      000524                       1513 00115$:
                                   1514 ;	spi.h:109: }
      000524 22               [24] 1515 	ret
                                   1516 ;------------------------------------------------------------
                                   1517 ;Allocation info for local variables in function 'sd_isbusy'
                                   1518 ;------------------------------------------------------------
                                   1519 ;i                         Allocated to registers r7 
                                   1520 ;------------------------------------------------------------
                                   1521 ;	sdcard.h:26: uint8_t sd_isbusy()
                                   1522 ;	-----------------------------------------
                                   1523 ;	 function sd_isbusy
                                   1524 ;	-----------------------------------------
      000525                       1525 _sd_isbusy:
                                   1526 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      000525 7F 00            [12] 1527 	mov	r7,#0x00
      000527                       1528 00104$:
                                   1529 ;	sdcard.h:31: if(sd_spi_write(0xff)==0xff) return 0; //not busy
      000527 75 3D 00         [24] 1530 	mov	_spi_transfer_PARM_2,#0x00
      00052A 75 82 FF         [24] 1531 	mov	dpl,#0xff
      00052D C0 07            [24] 1532 	push	ar7
      00052F 12 04 97         [24] 1533 	lcall	_spi_transfer
      000532 AE 82            [24] 1534 	mov	r6,dpl
      000534 D0 07            [24] 1535 	pop	ar7
      000536 BE FF 04         [24] 1536 	cjne	r6,#0xff,00105$
      000539 75 82 00         [24] 1537 	mov	dpl,#0x00
      00053C 22               [24] 1538 	ret
      00053D                       1539 00105$:
                                   1540 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      00053D 0F               [12] 1541 	inc	r7
      00053E BF FE 00         [24] 1542 	cjne	r7,#0xfe,00122$
      000541                       1543 00122$:
      000541 40 E4            [24] 1544 	jc	00104$
                                   1545 ;	sdcard.h:34: return 1; //busy
      000543 75 82 01         [24] 1546 	mov	dpl,#0x01
                                   1547 ;	sdcard.h:35: }
      000546 22               [24] 1548 	ret
                                   1549 ;------------------------------------------------------------
                                   1550 ;Allocation info for local variables in function 'sd_initial_clk'
                                   1551 ;------------------------------------------------------------
                                   1552 ;i                         Allocated to registers r7 
                                   1553 ;------------------------------------------------------------
                                   1554 ;	sdcard.h:37: void sd_initial_clk()
                                   1555 ;	-----------------------------------------
                                   1556 ;	 function sd_initial_clk
                                   1557 ;	-----------------------------------------
      000547                       1558 _sd_initial_clk:
                                   1559 ;	sdcard.h:45: spi_cs_high(); // required by spec but works fine even when cs pin of SDCARD is always pulled to ground to save uC pins
      000547 43 90 08         [24] 1560 	orl	_P1,#0x08
                                   1561 ;	sdcard.h:46: for(uint8_t i=0;i<10;i++)spi_transfer(0xff,0);
      00054A 7F 00            [12] 1562 	mov	r7,#0x00
      00054C                       1563 00106$:
      00054C BF 0A 00         [24] 1564 	cjne	r7,#0x0a,00119$
      00054F                       1565 00119$:
      00054F 50 10            [24] 1566 	jnc	00108$
      000551 75 3D 00         [24] 1567 	mov	_spi_transfer_PARM_2,#0x00
      000554 75 82 FF         [24] 1568 	mov	dpl,#0xff
      000557 C0 07            [24] 1569 	push	ar7
      000559 12 04 97         [24] 1570 	lcall	_spi_transfer
      00055C D0 07            [24] 1571 	pop	ar7
      00055E 0F               [12] 1572 	inc	r7
      00055F 80 EB            [24] 1573 	sjmp	00106$
      000561                       1574 00108$:
                                   1575 ;	sdcard.h:47: }
      000561 22               [24] 1576 	ret
                                   1577 ;------------------------------------------------------------
                                   1578 ;Allocation info for local variables in function 'sd_cmd'
                                   1579 ;------------------------------------------------------------
                                   1580 ;arg                       Allocated with name '_sd_cmd_PARM_2'
                                   1581 ;cmd                       Allocated to registers r7 
                                   1582 ;_resp                     Allocated to registers r5 
                                   1583 ;retries                   Allocated to registers r6 
                                   1584 ;crc                       Allocated to registers r6 
                                   1585 ;i                         Allocated to registers r6 
                                   1586 ;i                         Allocated to registers r7 
                                   1587 ;------------------------------------------------------------
                                   1588 ;	sdcard.h:49: uint8_t sd_cmd(uint8_t cmd, uint32_t arg)
                                   1589 ;	-----------------------------------------
                                   1590 ;	 function sd_cmd
                                   1591 ;	-----------------------------------------
      000562                       1592 _sd_cmd:
      000562 AF 82            [24] 1593 	mov	r7,dpl
                                   1594 ;	sdcard.h:51: uint8_t _resp=0,retries=0,crc=0xff;
      000564 7E FF            [12] 1595 	mov	r6,#0xff
                                   1596 ;	sdcard.h:53: spi_cs_low();
      000566 53 90 F7         [24] 1597 	anl	_P1,#0xf7
                                   1598 ;	sdcard.h:55: sd_isbusy(); //wait while sd is busy
      000569 C0 07            [24] 1599 	push	ar7
      00056B C0 06            [24] 1600 	push	ar6
      00056D 12 05 25         [24] 1601 	lcall	_sd_isbusy
      000570 D0 06            [24] 1602 	pop	ar6
      000572 D0 07            [24] 1603 	pop	ar7
                                   1604 ;	sdcard.h:63: sd_spi_write(cmd | 0x40);
      000574 74 40            [12] 1605 	mov	a,#0x40
      000576 4F               [12] 1606 	orl	a,r7
      000577 F5 82            [12] 1607 	mov	dpl,a
      000579 75 3D 00         [24] 1608 	mov	_spi_transfer_PARM_2,#0x00
      00057C C0 07            [24] 1609 	push	ar7
      00057E C0 06            [24] 1610 	push	ar6
      000580 12 04 97         [24] 1611 	lcall	_spi_transfer
      000583 D0 06            [24] 1612 	pop	ar6
      000585 D0 07            [24] 1613 	pop	ar7
                                   1614 ;	sdcard.h:65: sd_spi_write((arg >> 24) & 0xff);
      000587 85 10 82         [24] 1615 	mov	dpl,(_sd_cmd_PARM_2 + 3)
      00058A 75 3D 00         [24] 1616 	mov	_spi_transfer_PARM_2,#0x00
      00058D C0 07            [24] 1617 	push	ar7
      00058F C0 06            [24] 1618 	push	ar6
      000591 12 04 97         [24] 1619 	lcall	_spi_transfer
      000594 D0 06            [24] 1620 	pop	ar6
      000596 D0 07            [24] 1621 	pop	ar7
                                   1622 ;	sdcard.h:66: sd_spi_write((arg >> 16) & 0xff);
      000598 85 0F 82         [24] 1623 	mov	dpl,(_sd_cmd_PARM_2 + 2)
      00059B 75 3D 00         [24] 1624 	mov	_spi_transfer_PARM_2,#0x00
      00059E C0 07            [24] 1625 	push	ar7
      0005A0 C0 06            [24] 1626 	push	ar6
      0005A2 12 04 97         [24] 1627 	lcall	_spi_transfer
      0005A5 D0 06            [24] 1628 	pop	ar6
      0005A7 D0 07            [24] 1629 	pop	ar7
                                   1630 ;	sdcard.h:67: sd_spi_write((arg >> 8) & 0xff);
      0005A9 85 0E 82         [24] 1631 	mov	dpl,(_sd_cmd_PARM_2 + 1)
      0005AC 75 3D 00         [24] 1632 	mov	_spi_transfer_PARM_2,#0x00
      0005AF C0 07            [24] 1633 	push	ar7
      0005B1 C0 06            [24] 1634 	push	ar6
      0005B3 12 04 97         [24] 1635 	lcall	_spi_transfer
      0005B6 D0 06            [24] 1636 	pop	ar6
      0005B8 D0 07            [24] 1637 	pop	ar7
                                   1638 ;	sdcard.h:68: sd_spi_write(arg & 0xff);
      0005BA 85 0D 82         [24] 1639 	mov	dpl,_sd_cmd_PARM_2
      0005BD 75 3D 00         [24] 1640 	mov	_spi_transfer_PARM_2,#0x00
      0005C0 C0 07            [24] 1641 	push	ar7
      0005C2 C0 06            [24] 1642 	push	ar6
      0005C4 12 04 97         [24] 1643 	lcall	_spi_transfer
      0005C7 D0 06            [24] 1644 	pop	ar6
      0005C9 D0 07            [24] 1645 	pop	ar7
                                   1646 ;	sdcard.h:70: if(cmd==CMD0) 
      0005CB EF               [12] 1647 	mov	a,r7
      0005CC 70 04            [24] 1648 	jnz	00107$
                                   1649 ;	sdcard.h:72: crc=0x95;
      0005CE 7E 95            [12] 1650 	mov	r6,#0x95
      0005D0 80 05            [24] 1651 	sjmp	00108$
      0005D2                       1652 00107$:
                                   1653 ;	sdcard.h:74: else if(cmd==CMD8) 
      0005D2 BF 08 02         [24] 1654 	cjne	r7,#0x08,00108$
                                   1655 ;	sdcard.h:76: crc=0x87;
      0005D5 7E 87            [12] 1656 	mov	r6,#0x87
      0005D7                       1657 00108$:
                                   1658 ;	sdcard.h:78: sd_spi_write(crc);	
      0005D7 75 3D 00         [24] 1659 	mov	_spi_transfer_PARM_2,#0x00
      0005DA 8E 82            [24] 1660 	mov	dpl,r6
      0005DC C0 07            [24] 1661 	push	ar7
      0005DE 12 04 97         [24] 1662 	lcall	_spi_transfer
      0005E1 D0 07            [24] 1663 	pop	ar7
                                   1664 ;	sdcard.h:81: while(1) 
      0005E3 7E 00            [12] 1665 	mov	r6,#0x00
      0005E5                       1666 00115$:
                                   1667 ;	sdcard.h:83: _resp = sd_spi_write(0xff);
      0005E5 75 3D 00         [24] 1668 	mov	_spi_transfer_PARM_2,#0x00
      0005E8 75 82 FF         [24] 1669 	mov	dpl,#0xff
      0005EB C0 07            [24] 1670 	push	ar7
      0005ED C0 06            [24] 1671 	push	ar6
      0005EF 12 04 97         [24] 1672 	lcall	_spi_transfer
      0005F2 AD 82            [24] 1673 	mov	r5,dpl
      0005F4 D0 06            [24] 1674 	pop	ar6
      0005F6 D0 07            [24] 1675 	pop	ar7
                                   1676 ;	sdcard.h:85: if(_resp & 0x80);
      0005F8 ED               [12] 1677 	mov	a,r5
      0005F9 30 E7 0A         [24] 1678 	jnb	acc.7,00116$
                                   1679 ;	sdcard.h:88: if(retries++ == SD_MAX_RETRIES) 
      0005FC 8E 04            [24] 1680 	mov	ar4,r6
      0005FE 0E               [12] 1681 	inc	r6
      0005FF BC 19 E3         [24] 1682 	cjne	r4,#0x19,00115$
                                   1683 ;	sdcard.h:94: return SD_MAX_RETRIES_FAIL; // 0xff means failed
      000602 75 82 FE         [24] 1684 	mov	dpl,#0xfe
      000605 22               [24] 1685 	ret
      000606                       1686 00116$:
                                   1687 ;	sdcard.h:106: if(cmd==CMD8 || cmd==CMD58)
      000606 E4               [12] 1688 	clr	a
      000607 BF 08 01         [24] 1689 	cjne	r7,#0x08,00203$
      00060A 04               [12] 1690 	inc	a
      00060B                       1691 00203$:
      00060B FE               [12] 1692 	mov	r6,a
      00060C 70 08            [24] 1693 	jnz	00128$
      00060E BF 3A 02         [24] 1694 	cjne	r7,#0x3a,00206$
      000611 80 03            [24] 1695 	sjmp	00207$
      000613                       1696 00206$:
      000613 02 06 8F         [24] 1697 	ljmp	00129$
      000616                       1698 00207$:
      000616                       1699 00128$:
                                   1700 ;	sdcard.h:114: if(cmd==CMD8)
      000616 EE               [12] 1701 	mov	a,r6
      000617 60 33            [24] 1702 	jz	00126$
                                   1703 ;	sdcard.h:116: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000619 7E 00            [12] 1704 	mov	r6,#0x00
      00061B                       1705 00132$:
      00061B BE 03 00         [24] 1706 	cjne	r6,#0x03,00209$
      00061E                       1707 00209$:
      00061E 50 14            [24] 1708 	jnc	00117$
      000620 75 3D 00         [24] 1709 	mov	_spi_transfer_PARM_2,#0x00
      000623 75 82 FF         [24] 1710 	mov	dpl,#0xff
      000626 C0 06            [24] 1711 	push	ar6
      000628 C0 05            [24] 1712 	push	ar5
      00062A 12 04 97         [24] 1713 	lcall	_spi_transfer
      00062D D0 05            [24] 1714 	pop	ar5
      00062F D0 06            [24] 1715 	pop	ar6
      000631 0E               [12] 1716 	inc	r6
      000632 80 E7            [24] 1717 	sjmp	00132$
      000634                       1718 00117$:
                                   1719 ;	sdcard.h:117: if(sd_spi_write(0xff)!=0xAA) return SD_CMD_FAIL;
      000634 75 3D 00         [24] 1720 	mov	_spi_transfer_PARM_2,#0x00
      000637 75 82 FF         [24] 1721 	mov	dpl,#0xff
      00063A C0 05            [24] 1722 	push	ar5
      00063C 12 04 97         [24] 1723 	lcall	_spi_transfer
      00063F AE 82            [24] 1724 	mov	r6,dpl
      000641 D0 05            [24] 1725 	pop	ar5
      000643 BE AA 02         [24] 1726 	cjne	r6,#0xaa,00211$
      000646 80 3A            [24] 1727 	sjmp	00127$
      000648                       1728 00211$:
      000648 75 82 FF         [24] 1729 	mov	dpl,#0xff
      00064B 22               [24] 1730 	ret
      00064C                       1731 00126$:
                                   1732 ;	sdcard.h:119: else if(cmd==CMD58)
      00064C BF 3A 33         [24] 1733 	cjne	r7,#0x3a,00127$
                                   1734 ;	sdcard.h:121: if(sd_spi_write(0xff)!=0xC0) return SD_CMD_FAIL;
      00064F 75 3D 00         [24] 1735 	mov	_spi_transfer_PARM_2,#0x00
      000652 75 82 FF         [24] 1736 	mov	dpl,#0xff
      000655 C0 05            [24] 1737 	push	ar5
      000657 12 04 97         [24] 1738 	lcall	_spi_transfer
      00065A AF 82            [24] 1739 	mov	r7,dpl
      00065C D0 05            [24] 1740 	pop	ar5
      00065E BF C0 02         [24] 1741 	cjne	r7,#0xc0,00214$
      000661 80 04            [24] 1742 	sjmp	00152$
      000663                       1743 00214$:
      000663 75 82 FF         [24] 1744 	mov	dpl,#0xff
                                   1745 ;	sdcard.h:123: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000666 22               [24] 1746 	ret
      000667                       1747 00152$:
      000667 7F 00            [12] 1748 	mov	r7,#0x00
      000669                       1749 00135$:
      000669 BF 03 00         [24] 1750 	cjne	r7,#0x03,00215$
      00066C                       1751 00215$:
      00066C 50 14            [24] 1752 	jnc	00127$
      00066E 75 3D 00         [24] 1753 	mov	_spi_transfer_PARM_2,#0x00
      000671 75 82 FF         [24] 1754 	mov	dpl,#0xff
      000674 C0 07            [24] 1755 	push	ar7
      000676 C0 05            [24] 1756 	push	ar5
      000678 12 04 97         [24] 1757 	lcall	_spi_transfer
      00067B D0 05            [24] 1758 	pop	ar5
      00067D D0 07            [24] 1759 	pop	ar7
      00067F 0F               [12] 1760 	inc	r7
      000680 80 E7            [24] 1761 	sjmp	00135$
      000682                       1762 00127$:
                                   1763 ;	sdcard.h:128: sd_spi_write(0xff);
      000682 75 3D 00         [24] 1764 	mov	_spi_transfer_PARM_2,#0x00
      000685 75 82 FF         [24] 1765 	mov	dpl,#0xff
      000688 C0 05            [24] 1766 	push	ar5
      00068A 12 04 97         [24] 1767 	lcall	_spi_transfer
      00068D D0 05            [24] 1768 	pop	ar5
      00068F                       1769 00129$:
                                   1770 ;	sdcard.h:136: return _resp;
      00068F 8D 82            [24] 1771 	mov	dpl,r5
                                   1772 ;	sdcard.h:138: }
      000691 22               [24] 1773 	ret
                                   1774 ;------------------------------------------------------------
                                   1775 ;Allocation info for local variables in function 'sd_acmd'
                                   1776 ;------------------------------------------------------------
                                   1777 ;arg                       Allocated with name '_sd_acmd_PARM_2'
                                   1778 ;cmd                       Allocated to registers r7 
                                   1779 ;_resp                     Allocated to registers 
                                   1780 ;------------------------------------------------------------
                                   1781 ;	sdcard.h:140: uint8_t sd_acmd(uint8_t cmd, uint32_t arg)
                                   1782 ;	-----------------------------------------
                                   1783 ;	 function sd_acmd
                                   1784 ;	-----------------------------------------
      000692                       1785 _sd_acmd:
      000692 AF 82            [24] 1786 	mov	r7,dpl
                                   1787 ;	sdcard.h:144: _resp=sd_cmd(CMD55,0);
      000694 E4               [12] 1788 	clr	a
      000695 F5 0D            [12] 1789 	mov	_sd_cmd_PARM_2,a
      000697 F5 0E            [12] 1790 	mov	(_sd_cmd_PARM_2 + 1),a
      000699 F5 0F            [12] 1791 	mov	(_sd_cmd_PARM_2 + 2),a
      00069B F5 10            [12] 1792 	mov	(_sd_cmd_PARM_2 + 3),a
      00069D 75 82 37         [24] 1793 	mov	dpl,#0x37
      0006A0 C0 07            [24] 1794 	push	ar7
      0006A2 12 05 62         [24] 1795 	lcall	_sd_cmd
      0006A5 AE 82            [24] 1796 	mov	r6,dpl
      0006A7 D0 07            [24] 1797 	pop	ar7
                                   1798 ;	sdcard.h:145: if(_resp!=1) return SD_CMD_FAIL;
      0006A9 BE 01 02         [24] 1799 	cjne	r6,#0x01,00110$
      0006AC 80 04            [24] 1800 	sjmp	00102$
      0006AE                       1801 00110$:
      0006AE 75 82 FF         [24] 1802 	mov	dpl,#0xff
      0006B1 22               [24] 1803 	ret
      0006B2                       1804 00102$:
                                   1805 ;	sdcard.h:148: _resp=sd_cmd(cmd,arg);
      0006B2 85 11 0D         [24] 1806 	mov	_sd_cmd_PARM_2,_sd_acmd_PARM_2
      0006B5 85 12 0E         [24] 1807 	mov	(_sd_cmd_PARM_2 + 1),(_sd_acmd_PARM_2 + 1)
      0006B8 85 13 0F         [24] 1808 	mov	(_sd_cmd_PARM_2 + 2),(_sd_acmd_PARM_2 + 2)
      0006BB 85 14 10         [24] 1809 	mov	(_sd_cmd_PARM_2 + 3),(_sd_acmd_PARM_2 + 3)
      0006BE 8F 82            [24] 1810 	mov	dpl,r7
                                   1811 ;	sdcard.h:149: return _resp;
                                   1812 ;	sdcard.h:151: }
      0006C0 02 05 62         [24] 1813 	ljmp	_sd_cmd
                                   1814 ;------------------------------------------------------------
                                   1815 ;Allocation info for local variables in function 'SDinit'
                                   1816 ;------------------------------------------------------------
                                   1817 ;retries                   Allocated to registers r7 
                                   1818 ;------------------------------------------------------------
                                   1819 ;	sdcard.h:157: uint8_t SDinit()
                                   1820 ;	-----------------------------------------
                                   1821 ;	 function SDinit
                                   1822 ;	-----------------------------------------
      0006C3                       1823 _SDinit:
                                   1824 ;	sdcard.h:161: sd_initial_clk(); // 74 minimum clks for initialization
      0006C3 12 05 47         [24] 1825 	lcall	_sd_initial_clk
                                   1826 ;	sdcard.h:163: while(1)
      0006C6 7F 00            [12] 1827 	mov	r7,#0x00
      0006C8                       1828 00107$:
                                   1829 ;	sdcard.h:165: if(sd_cmd(CMD0,0)==0x01)break; // correct response is 0x01 -> signals card is idling
      0006C8 E4               [12] 1830 	clr	a
      0006C9 F5 0D            [12] 1831 	mov	_sd_cmd_PARM_2,a
      0006CB F5 0E            [12] 1832 	mov	(_sd_cmd_PARM_2 + 1),a
      0006CD F5 0F            [12] 1833 	mov	(_sd_cmd_PARM_2 + 2),a
      0006CF F5 10            [12] 1834 	mov	(_sd_cmd_PARM_2 + 3),a
      0006D1 75 82 00         [24] 1835 	mov	dpl,#0x00
      0006D4 C0 07            [24] 1836 	push	ar7
      0006D6 12 05 62         [24] 1837 	lcall	_sd_cmd
      0006D9 AE 82            [24] 1838 	mov	r6,dpl
      0006DB D0 07            [24] 1839 	pop	ar7
      0006DD BE 01 02         [24] 1840 	cjne	r6,#0x01,00155$
      0006E0 80 0A            [24] 1841 	sjmp	00108$
      0006E2                       1842 00155$:
                                   1843 ;	sdcard.h:166: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      0006E2 8F 06            [24] 1844 	mov	ar6,r7
      0006E4 0F               [12] 1845 	inc	r7
      0006E5 BE 19 E0         [24] 1846 	cjne	r6,#0x19,00107$
      0006E8 75 82 FE         [24] 1847 	mov	dpl,#0xfe
      0006EB 22               [24] 1848 	ret
      0006EC                       1849 00108$:
                                   1850 ;	sdcard.h:170: if(sd_cmd(CMD8,0x1AA)!=0x01) return SD_CMD_FAIL; // correct response for cmd8 is 0x01
      0006EC 75 0D AA         [24] 1851 	mov	_sd_cmd_PARM_2,#0xaa
      0006EF 75 0E 01         [24] 1852 	mov	(_sd_cmd_PARM_2 + 1),#0x01
      0006F2 E4               [12] 1853 	clr	a
      0006F3 F5 0F            [12] 1854 	mov	(_sd_cmd_PARM_2 + 2),a
      0006F5 F5 10            [12] 1855 	mov	(_sd_cmd_PARM_2 + 3),a
      0006F7 75 82 08         [24] 1856 	mov	dpl,#0x08
      0006FA 12 05 62         [24] 1857 	lcall	_sd_cmd
      0006FD AF 82            [24] 1858 	mov	r7,dpl
      0006FF BF 01 02         [24] 1859 	cjne	r7,#0x01,00158$
      000702 80 04            [24] 1860 	sjmp	00128$
      000704                       1861 00158$:
      000704 75 82 FF         [24] 1862 	mov	dpl,#0xff
                                   1863 ;	sdcard.h:173: while(1)
      000707 22               [24] 1864 	ret
      000708                       1865 00128$:
      000708 7F 00            [12] 1866 	mov	r7,#0x00
      00070A                       1867 00117$:
                                   1868 ;	sdcard.h:175: if(sd_acmd(CMD41,0x40000000)==0)break; //correct response
      00070A E4               [12] 1869 	clr	a
      00070B F5 11            [12] 1870 	mov	_sd_acmd_PARM_2,a
      00070D F5 12            [12] 1871 	mov	(_sd_acmd_PARM_2 + 1),a
      00070F F5 13            [12] 1872 	mov	(_sd_acmd_PARM_2 + 2),a
      000711 75 14 40         [24] 1873 	mov	(_sd_acmd_PARM_2 + 3),#0x40
      000714 75 82 29         [24] 1874 	mov	dpl,#0x29
      000717 C0 07            [24] 1875 	push	ar7
      000719 12 06 92         [24] 1876 	lcall	_sd_acmd
      00071C E5 82            [12] 1877 	mov	a,dpl
      00071E D0 07            [24] 1878 	pop	ar7
      000720 60 0A            [24] 1879 	jz	00118$
                                   1880 ;	sdcard.h:176: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      000722 8F 06            [24] 1881 	mov	ar6,r7
      000724 0F               [12] 1882 	inc	r7
      000725 BE 19 E2         [24] 1883 	cjne	r6,#0x19,00117$
      000728 75 82 FE         [24] 1884 	mov	dpl,#0xfe
      00072B 22               [24] 1885 	ret
      00072C                       1886 00118$:
                                   1887 ;	sdcard.h:182: if(sd_cmd(CMD58,0)) return SD_CMD_FAIL;  
      00072C E4               [12] 1888 	clr	a
      00072D F5 0D            [12] 1889 	mov	_sd_cmd_PARM_2,a
      00072F F5 0E            [12] 1890 	mov	(_sd_cmd_PARM_2 + 1),a
      000731 F5 0F            [12] 1891 	mov	(_sd_cmd_PARM_2 + 2),a
      000733 F5 10            [12] 1892 	mov	(_sd_cmd_PARM_2 + 3),a
      000735 75 82 3A         [24] 1893 	mov	dpl,#0x3a
      000738 12 05 62         [24] 1894 	lcall	_sd_cmd
      00073B E5 82            [12] 1895 	mov	a,dpl
      00073D 60 04            [24] 1896 	jz	00120$
      00073F 75 82 FF         [24] 1897 	mov	dpl,#0xff
      000742 22               [24] 1898 	ret
      000743                       1899 00120$:
                                   1900 ;	sdcard.h:190: return 0; //successful init
      000743 75 82 00         [24] 1901 	mov	dpl,#0x00
                                   1902 ;	sdcard.h:191: }
      000746 22               [24] 1903 	ret
                                   1904 ;------------------------------------------------------------
                                   1905 ;Allocation info for local variables in function 'SDread'
                                   1906 ;------------------------------------------------------------
                                   1907 ;offset                    Allocated to stack - _bp -4
                                   1908 ;count                     Allocated to stack - _bp -6
                                   1909 ;dst                       Allocated to stack - _bp -9
                                   1910 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   1911 ;retries                   Allocated to registers r7 
                                   1912 ;response                  Allocated to registers r3 
                                   1913 ;i                         Allocated to registers r4 r5 
                                   1914 ;------------------------------------------------------------
                                   1915 ;	sdcard.h:206: uint8_t SDread(uint32_t block_addr, uint16_t offset, uint16_t count, uint8_t* dst ) __reentrant
                                   1916 ;	-----------------------------------------
                                   1917 ;	 function SDread
                                   1918 ;	-----------------------------------------
      000747                       1919 _SDread:
      000747 C0 3C            [24] 1920 	push	_bp
      000749 85 81 3C         [24] 1921 	mov	_bp,sp
      00074C AC 82            [24] 1922 	mov	r4,dpl
      00074E AD 83            [24] 1923 	mov	r5,dph
      000750 AE F0            [24] 1924 	mov	r6,b
      000752 FF               [12] 1925 	mov	r7,a
                                   1926 ;	sdcard.h:221: if (count == 0) return 0; //success
      000753 E5 3C            [12] 1927 	mov	a,_bp
      000755 24 FA            [12] 1928 	add	a,#0xfa
      000757 F8               [12] 1929 	mov	r0,a
      000758 E6               [12] 1930 	mov	a,@r0
      000759 08               [12] 1931 	inc	r0
      00075A 46               [12] 1932 	orl	a,@r0
      00075B 70 05            [24] 1933 	jnz	00102$
      00075D F5 82            [12] 1934 	mov	dpl,a
      00075F 02 08 60         [24] 1935 	ljmp	00131$
      000762                       1936 00102$:
                                   1937 ;	sdcard.h:222: if ((count + offset) > SD_BLOCK_SIZE) {
      000762 E5 3C            [12] 1938 	mov	a,_bp
      000764 24 FA            [12] 1939 	add	a,#0xfa
      000766 F8               [12] 1940 	mov	r0,a
      000767 E5 3C            [12] 1941 	mov	a,_bp
      000769 24 FC            [12] 1942 	add	a,#0xfc
      00076B F9               [12] 1943 	mov	r1,a
      00076C E7               [12] 1944 	mov	a,@r1
      00076D 26               [12] 1945 	add	a,@r0
      00076E FA               [12] 1946 	mov	r2,a
      00076F 09               [12] 1947 	inc	r1
      000770 E7               [12] 1948 	mov	a,@r1
      000771 08               [12] 1949 	inc	r0
      000772 36               [12] 1950 	addc	a,@r0
      000773 FB               [12] 1951 	mov	r3,a
      000774 C3               [12] 1952 	clr	c
      000775 E4               [12] 1953 	clr	a
      000776 9A               [12] 1954 	subb	a,r2
      000777 74 02            [12] 1955 	mov	a,#0x02
      000779 9B               [12] 1956 	subb	a,r3
      00077A 50 06            [24] 1957 	jnc	00105$
                                   1958 ;	sdcard.h:223: return 1; //fail
      00077C 75 82 01         [24] 1959 	mov	dpl,#0x01
      00077F 02 08 60         [24] 1960 	ljmp	00131$
                                   1961 ;	sdcard.h:231: spi_cs_low();
      000782                       1962 00105$:
      000782 53 90 F7         [24] 1963 	anl	_P1,#0xf7
                                   1964 ;	sdcard.h:236: if(sd_cmd(CMD17,block_addr)) return SD_CMD_FAIL; 
      000785 8C 0D            [24] 1965 	mov	_sd_cmd_PARM_2,r4
      000787 8D 0E            [24] 1966 	mov	(_sd_cmd_PARM_2 + 1),r5
      000789 8E 0F            [24] 1967 	mov	(_sd_cmd_PARM_2 + 2),r6
      00078B 8F 10            [24] 1968 	mov	(_sd_cmd_PARM_2 + 3),r7
      00078D 75 82 11         [24] 1969 	mov	dpl,#0x11
      000790 12 05 62         [24] 1970 	lcall	_sd_cmd
      000793 E5 82            [12] 1971 	mov	a,dpl
      000795 60 06            [24] 1972 	jz	00138$
      000797 75 82 FF         [24] 1973 	mov	dpl,#0xff
      00079A 02 08 60         [24] 1974 	ljmp	00131$
                                   1975 ;	sdcard.h:240: while(1)
      00079D                       1976 00138$:
      00079D 7F 00            [12] 1977 	mov	r7,#0x00
      00079F                       1978 00119$:
                                   1979 ;	sdcard.h:242: response = sd_spi_write(0xff);
      00079F 75 3D 00         [24] 1980 	mov	_spi_transfer_PARM_2,#0x00
      0007A2 75 82 FF         [24] 1981 	mov	dpl,#0xff
      0007A5 C0 07            [24] 1982 	push	ar7
      0007A7 12 04 97         [24] 1983 	lcall	_spi_transfer
      0007AA AE 82            [24] 1984 	mov	r6,dpl
      0007AC D0 07            [24] 1985 	pop	ar7
                                   1986 ;	sdcard.h:250: if(response==0xff); //pass
      0007AE BE FF 02         [24] 1987 	cjne	r6,#0xff,00192$
      0007B1 80 0B            [24] 1988 	sjmp	00115$
      0007B3                       1989 00192$:
                                   1990 ;	sdcard.h:251: else if(response == DATA_START_BLOCK) break; // if the last response is DATA_START_BLOCK=0xFE, then success, else fail
      0007B3 BE FE 02         [24] 1991 	cjne	r6,#0xfe,00193$
      0007B6 80 12            [24] 1992 	sjmp	00143$
      0007B8                       1993 00193$:
                                   1994 ;	sdcard.h:252: else return DATA_START_BLOCK_FAIL; // if anything other than 0xff or DATA_START_BLOCK=0xFE
      0007B8 75 82 FD         [24] 1995 	mov	dpl,#0xfd
      0007BB 02 08 60         [24] 1996 	ljmp	00131$
      0007BE                       1997 00115$:
                                   1998 ;	sdcard.h:254: if(retries++==255) return SD_MAX_RETRIES_FAIL;
      0007BE 8F 06            [24] 1999 	mov	ar6,r7
      0007C0 0F               [12] 2000 	inc	r7
      0007C1 BE FF DB         [24] 2001 	cjne	r6,#0xff,00119$
      0007C4 75 82 FE         [24] 2002 	mov	dpl,#0xfe
      0007C7 02 08 60         [24] 2003 	ljmp	00131$
                                   2004 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      0007CA                       2005 00143$:
      0007CA E5 3C            [12] 2006 	mov	a,_bp
      0007CC 24 FC            [12] 2007 	add	a,#0xfc
      0007CE F8               [12] 2008 	mov	r0,a
      0007CF E5 3C            [12] 2009 	mov	a,_bp
      0007D1 24 FA            [12] 2010 	add	a,#0xfa
      0007D3 F9               [12] 2011 	mov	r1,a
      0007D4 E7               [12] 2012 	mov	a,@r1
      0007D5 26               [12] 2013 	add	a,@r0
      0007D6 FE               [12] 2014 	mov	r6,a
      0007D7 09               [12] 2015 	inc	r1
      0007D8 E7               [12] 2016 	mov	a,@r1
      0007D9 08               [12] 2017 	inc	r0
      0007DA 36               [12] 2018 	addc	a,@r0
      0007DB FF               [12] 2019 	mov	r7,a
      0007DC 7C 00            [12] 2020 	mov	r4,#0x00
      0007DE 7D 00            [12] 2021 	mov	r5,#0x00
      0007E0                       2022 00129$:
      0007E0 74 FE            [12] 2023 	mov	a,#0x100 - 0x02
      0007E2 2D               [12] 2024 	add	a,r5
      0007E3 40 63            [24] 2025 	jc	00124$
                                   2026 ;	sdcard.h:262: response = spi_transfer(0xff,0);
      0007E5 75 3D 00         [24] 2027 	mov	_spi_transfer_PARM_2,#0x00
      0007E8 75 82 FF         [24] 2028 	mov	dpl,#0xff
      0007EB C0 07            [24] 2029 	push	ar7
      0007ED C0 06            [24] 2030 	push	ar6
      0007EF C0 05            [24] 2031 	push	ar5
      0007F1 C0 04            [24] 2032 	push	ar4
      0007F3 12 04 97         [24] 2033 	lcall	_spi_transfer
      0007F6 AB 82            [24] 2034 	mov	r3,dpl
      0007F8 D0 04            [24] 2035 	pop	ar4
      0007FA D0 05            [24] 2036 	pop	ar5
      0007FC D0 06            [24] 2037 	pop	ar6
      0007FE D0 07            [24] 2038 	pop	ar7
                                   2039 ;	sdcard.h:270: if(i>=offset && i<offset+count)
      000800 E5 3C            [12] 2040 	mov	a,_bp
      000802 24 FC            [12] 2041 	add	a,#0xfc
      000804 F8               [12] 2042 	mov	r0,a
      000805 C3               [12] 2043 	clr	c
      000806 EC               [12] 2044 	mov	a,r4
      000807 96               [12] 2045 	subb	a,@r0
      000808 ED               [12] 2046 	mov	a,r5
      000809 08               [12] 2047 	inc	r0
      00080A 96               [12] 2048 	subb	a,@r0
      00080B 40 34            [24] 2049 	jc	00130$
      00080D EC               [12] 2050 	mov	a,r4
      00080E 9E               [12] 2051 	subb	a,r6
      00080F ED               [12] 2052 	mov	a,r5
      000810 9F               [12] 2053 	subb	a,r7
      000811 50 2E            [24] 2054 	jnc	00130$
                                   2055 ;	sdcard.h:272: dst[i-offset] = response;
      000813 C0 06            [24] 2056 	push	ar6
      000815 C0 07            [24] 2057 	push	ar7
      000817 E5 3C            [12] 2058 	mov	a,_bp
      000819 24 FC            [12] 2059 	add	a,#0xfc
      00081B F8               [12] 2060 	mov	r0,a
      00081C EC               [12] 2061 	mov	a,r4
      00081D C3               [12] 2062 	clr	c
      00081E 96               [12] 2063 	subb	a,@r0
      00081F FA               [12] 2064 	mov	r2,a
      000820 ED               [12] 2065 	mov	a,r5
      000821 08               [12] 2066 	inc	r0
      000822 96               [12] 2067 	subb	a,@r0
      000823 FF               [12] 2068 	mov	r7,a
      000824 E5 3C            [12] 2069 	mov	a,_bp
      000826 24 F7            [12] 2070 	add	a,#0xf7
      000828 F8               [12] 2071 	mov	r0,a
      000829 EA               [12] 2072 	mov	a,r2
      00082A 26               [12] 2073 	add	a,@r0
      00082B FA               [12] 2074 	mov	r2,a
      00082C EF               [12] 2075 	mov	a,r7
      00082D 08               [12] 2076 	inc	r0
      00082E 36               [12] 2077 	addc	a,@r0
      00082F FF               [12] 2078 	mov	r7,a
      000830 08               [12] 2079 	inc	r0
      000831 86 06            [24] 2080 	mov	ar6,@r0
      000833 8A 82            [24] 2081 	mov	dpl,r2
      000835 8F 83            [24] 2082 	mov	dph,r7
      000837 8E F0            [24] 2083 	mov	b,r6
      000839 EB               [12] 2084 	mov	a,r3
      00083A 12 1D 0C         [24] 2085 	lcall	__gptrput
                                   2086 ;	sdcard.h:287: return 0; //success
      00083D D0 07            [24] 2087 	pop	ar7
      00083F D0 06            [24] 2088 	pop	ar6
                                   2089 ;	sdcard.h:272: dst[i-offset] = response;
      000841                       2090 00130$:
                                   2091 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      000841 0C               [12] 2092 	inc	r4
      000842 BC 00 9B         [24] 2093 	cjne	r4,#0x00,00129$
      000845 0D               [12] 2094 	inc	r5
      000846 80 98            [24] 2095 	sjmp	00129$
      000848                       2096 00124$:
                                   2097 ;	sdcard.h:280: sd_spi_write(0xff);
      000848 75 3D 00         [24] 2098 	mov	_spi_transfer_PARM_2,#0x00
      00084B 75 82 FF         [24] 2099 	mov	dpl,#0xff
      00084E 12 04 97         [24] 2100 	lcall	_spi_transfer
                                   2101 ;	sdcard.h:281: sd_spi_write(0xff);
      000851 75 3D 00         [24] 2102 	mov	_spi_transfer_PARM_2,#0x00
      000854 75 82 FF         [24] 2103 	mov	dpl,#0xff
      000857 12 04 97         [24] 2104 	lcall	_spi_transfer
                                   2105 ;	sdcard.h:284: spi_cs_high(); //leave clock high
      00085A 43 90 08         [24] 2106 	orl	_P1,#0x08
                                   2107 ;	sdcard.h:287: return 0; //success
      00085D 75 82 00         [24] 2108 	mov	dpl,#0x00
      000860                       2109 00131$:
                                   2110 ;	sdcard.h:289: }
      000860 D0 3C            [24] 2111 	pop	_bp
      000862 22               [24] 2112 	ret
                                   2113 ;------------------------------------------------------------
                                   2114 ;Allocation info for local variables in function 'SDreadBlock'
                                   2115 ;------------------------------------------------------------
                                   2116 ;dst                       Allocated with name '_SDreadBlock_PARM_2'
                                   2117 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   2118 ;------------------------------------------------------------
                                   2119 ;	sdcard.h:291: uint8_t SDreadBlock(uint32_t block_addr,uint8_t* dst)
                                   2120 ;	-----------------------------------------
                                   2121 ;	 function SDreadBlock
                                   2122 ;	-----------------------------------------
      000863                       2123 _SDreadBlock:
      000863 AC 82            [24] 2124 	mov	r4,dpl
      000865 AD 83            [24] 2125 	mov	r5,dph
      000867 AE F0            [24] 2126 	mov	r6,b
      000869 FF               [12] 2127 	mov	r7,a
                                   2128 ;	sdcard.h:293: return SDread(block_addr,0,SD_BLOCK_SIZE,dst);
      00086A C0 15            [24] 2129 	push	_SDreadBlock_PARM_2
      00086C C0 16            [24] 2130 	push	(_SDreadBlock_PARM_2 + 1)
      00086E C0 17            [24] 2131 	push	(_SDreadBlock_PARM_2 + 2)
      000870 E4               [12] 2132 	clr	a
      000871 C0 E0            [24] 2133 	push	acc
      000873 74 02            [12] 2134 	mov	a,#0x02
      000875 C0 E0            [24] 2135 	push	acc
      000877 E4               [12] 2136 	clr	a
      000878 C0 E0            [24] 2137 	push	acc
      00087A C0 E0            [24] 2138 	push	acc
      00087C 8C 82            [24] 2139 	mov	dpl,r4
      00087E 8D 83            [24] 2140 	mov	dph,r5
      000880 8E F0            [24] 2141 	mov	b,r6
      000882 EF               [12] 2142 	mov	a,r7
      000883 12 07 47         [24] 2143 	lcall	_SDread
      000886 E5 81            [12] 2144 	mov	a,sp
      000888 24 F9            [12] 2145 	add	a,#0xf9
      00088A F5 81            [12] 2146 	mov	sp,a
                                   2147 ;	sdcard.h:294: }
      00088C 22               [24] 2148 	ret
                                   2149 ;------------------------------------------------------------
                                   2150 ;Allocation info for local variables in function 'HELPER_load_littleendian16'
                                   2151 ;------------------------------------------------------------
                                   2152 ;src                       Allocated to registers r5 r6 r7 
                                   2153 ;val                       Allocated to registers r2 r4 
                                   2154 ;------------------------------------------------------------
                                   2155 ;	fat.h:85: uint16_t HELPER_load_littleendian16(uint8_t *src) __reentrant
                                   2156 ;	-----------------------------------------
                                   2157 ;	 function HELPER_load_littleendian16
                                   2158 ;	-----------------------------------------
      00088D                       2159 _HELPER_load_littleendian16:
      00088D AD 82            [24] 2160 	mov	r5,dpl
      00088F AE 83            [24] 2161 	mov	r6,dph
      000891 AF F0            [24] 2162 	mov	r7,b
                                   2163 ;	fat.h:89: val = *(src+1);
      000893 74 01            [12] 2164 	mov	a,#0x01
      000895 2D               [12] 2165 	add	a,r5
      000896 FA               [12] 2166 	mov	r2,a
      000897 E4               [12] 2167 	clr	a
      000898 3E               [12] 2168 	addc	a,r6
      000899 FB               [12] 2169 	mov	r3,a
      00089A 8F 04            [24] 2170 	mov	ar4,r7
      00089C 8A 82            [24] 2171 	mov	dpl,r2
      00089E 8B 83            [24] 2172 	mov	dph,r3
      0008A0 8C F0            [24] 2173 	mov	b,r4
      0008A2 12 1D FF         [24] 2174 	lcall	__gptrget
                                   2175 ;	fat.h:90: val <<= 8;
      0008A5 FC               [12] 2176 	mov	r4,a
      0008A6 7A 00            [12] 2177 	mov	r2,#0x00
                                   2178 ;	fat.h:91: val |= *src;
      0008A8 8D 82            [24] 2179 	mov	dpl,r5
      0008AA 8E 83            [24] 2180 	mov	dph,r6
      0008AC 8F F0            [24] 2181 	mov	b,r7
      0008AE 12 1D FF         [24] 2182 	lcall	__gptrget
      0008B1 7F 00            [12] 2183 	mov	r7,#0x00
      0008B3 4A               [12] 2184 	orl	a,r2
      0008B4 F5 82            [12] 2185 	mov	dpl,a
      0008B6 EF               [12] 2186 	mov	a,r7
      0008B7 4C               [12] 2187 	orl	a,r4
      0008B8 F5 83            [12] 2188 	mov	dph,a
                                   2189 ;	fat.h:93: return val;
                                   2190 ;	fat.h:94: }
      0008BA 22               [24] 2191 	ret
                                   2192 ;------------------------------------------------------------
                                   2193 ;Allocation info for local variables in function 'HELPER_load_littleendian32'
                                   2194 ;------------------------------------------------------------
                                   2195 ;src                       Allocated to stack - _bp +1
                                   2196 ;val                       Allocated to stack - _bp +8
                                   2197 ;i                         Allocated to stack - _bp +12
                                   2198 ;sloc0                     Allocated to stack - _bp +9
                                   2199 ;sloc1                     Allocated to stack - _bp +4
                                   2200 ;------------------------------------------------------------
                                   2201 ;	fat.h:96: uint32_t HELPER_load_littleendian32(uint8_t *src) __reentrant
                                   2202 ;	-----------------------------------------
                                   2203 ;	 function HELPER_load_littleendian32
                                   2204 ;	-----------------------------------------
      0008BB                       2205 _HELPER_load_littleendian32:
      0008BB C0 3C            [24] 2206 	push	_bp
      0008BD 85 81 3C         [24] 2207 	mov	_bp,sp
      0008C0 C0 82            [24] 2208 	push	dpl
      0008C2 C0 83            [24] 2209 	push	dph
      0008C4 C0 F0            [24] 2210 	push	b
      0008C6 E5 81            [12] 2211 	mov	a,sp
      0008C8 24 09            [12] 2212 	add	a,#0x09
      0008CA F5 81            [12] 2213 	mov	sp,a
                                   2214 ;	fat.h:98: uint32_t val=0;
                                   2215 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      0008CC E4               [12] 2216 	clr	a
      0008CD FA               [12] 2217 	mov	r2,a
      0008CE FB               [12] 2218 	mov	r3,a
      0008CF FC               [12] 2219 	mov	r4,a
      0008D0 FF               [12] 2220 	mov	r7,a
      0008D1 E5 3C            [12] 2221 	mov	a,_bp
      0008D3 24 0C            [12] 2222 	add	a,#0x0c
      0008D5 F8               [12] 2223 	mov	r0,a
      0008D6 76 00            [12] 2224 	mov	@r0,#0x00
      0008D8                       2225 00103$:
      0008D8 E5 3C            [12] 2226 	mov	a,_bp
      0008DA 24 0C            [12] 2227 	add	a,#0x0c
      0008DC F8               [12] 2228 	mov	r0,a
      0008DD B6 04 00         [24] 2229 	cjne	@r0,#0x04,00118$
      0008E0                       2230 00118$:
      0008E0 50 6F            [24] 2231 	jnc	00101$
                                   2232 ;	fat.h:102: val <<= 8;
      0008E2 E5 3C            [12] 2233 	mov	a,_bp
      0008E4 24 08            [12] 2234 	add	a,#0x08
      0008E6 F8               [12] 2235 	mov	r0,a
      0008E7 08               [12] 2236 	inc	r0
      0008E8 08               [12] 2237 	inc	r0
      0008E9 08               [12] 2238 	inc	r0
      0008EA A6 04            [24] 2239 	mov	@r0,ar4
      0008EC 18               [12] 2240 	dec	r0
      0008ED A6 03            [24] 2241 	mov	@r0,ar3
      0008EF 18               [12] 2242 	dec	r0
      0008F0 A6 02            [24] 2243 	mov	@r0,ar2
      0008F2 18               [12] 2244 	dec	r0
      0008F3 76 00            [12] 2245 	mov	@r0,#0x00
                                   2246 ;	fat.h:103: val |= src[3-i];
      0008F5 E5 3C            [12] 2247 	mov	a,_bp
      0008F7 24 0C            [12] 2248 	add	a,#0x0c
      0008F9 F8               [12] 2249 	mov	r0,a
      0008FA 86 05            [24] 2250 	mov	ar5,@r0
      0008FC 7E 00            [12] 2251 	mov	r6,#0x00
      0008FE 74 03            [12] 2252 	mov	a,#0x03
      000900 C3               [12] 2253 	clr	c
      000901 9D               [12] 2254 	subb	a,r5
      000902 FD               [12] 2255 	mov	r5,a
      000903 E4               [12] 2256 	clr	a
      000904 9E               [12] 2257 	subb	a,r6
      000905 FE               [12] 2258 	mov	r6,a
      000906 A8 3C            [24] 2259 	mov	r0,_bp
      000908 08               [12] 2260 	inc	r0
      000909 ED               [12] 2261 	mov	a,r5
      00090A 26               [12] 2262 	add	a,@r0
      00090B FF               [12] 2263 	mov	r7,a
      00090C EE               [12] 2264 	mov	a,r6
      00090D 08               [12] 2265 	inc	r0
      00090E 36               [12] 2266 	addc	a,@r0
      00090F FE               [12] 2267 	mov	r6,a
      000910 08               [12] 2268 	inc	r0
      000911 86 05            [24] 2269 	mov	ar5,@r0
      000913 8F 82            [24] 2270 	mov	dpl,r7
      000915 8E 83            [24] 2271 	mov	dph,r6
      000917 8D F0            [24] 2272 	mov	b,r5
      000919 12 1D FF         [24] 2273 	lcall	__gptrget
      00091C FE               [12] 2274 	mov	r6,a
      00091D E5 3C            [12] 2275 	mov	a,_bp
      00091F 24 04            [12] 2276 	add	a,#0x04
      000921 F8               [12] 2277 	mov	r0,a
      000922 A6 06            [24] 2278 	mov	@r0,ar6
      000924 08               [12] 2279 	inc	r0
      000925 76 00            [12] 2280 	mov	@r0,#0x00
      000927 08               [12] 2281 	inc	r0
      000928 76 00            [12] 2282 	mov	@r0,#0x00
      00092A 08               [12] 2283 	inc	r0
      00092B 76 00            [12] 2284 	mov	@r0,#0x00
      00092D E5 3C            [12] 2285 	mov	a,_bp
      00092F 24 08            [12] 2286 	add	a,#0x08
      000931 F8               [12] 2287 	mov	r0,a
      000932 E5 3C            [12] 2288 	mov	a,_bp
      000934 24 04            [12] 2289 	add	a,#0x04
      000936 F9               [12] 2290 	mov	r1,a
      000937 E7               [12] 2291 	mov	a,@r1
      000938 46               [12] 2292 	orl	a,@r0
      000939 FA               [12] 2293 	mov	r2,a
      00093A 09               [12] 2294 	inc	r1
      00093B E7               [12] 2295 	mov	a,@r1
      00093C 08               [12] 2296 	inc	r0
      00093D 46               [12] 2297 	orl	a,@r0
      00093E FB               [12] 2298 	mov	r3,a
      00093F 09               [12] 2299 	inc	r1
      000940 E7               [12] 2300 	mov	a,@r1
      000941 08               [12] 2301 	inc	r0
      000942 46               [12] 2302 	orl	a,@r0
      000943 FC               [12] 2303 	mov	r4,a
      000944 09               [12] 2304 	inc	r1
      000945 E7               [12] 2305 	mov	a,@r1
      000946 08               [12] 2306 	inc	r0
      000947 46               [12] 2307 	orl	a,@r0
      000948 FF               [12] 2308 	mov	r7,a
                                   2309 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      000949 E5 3C            [12] 2310 	mov	a,_bp
      00094B 24 0C            [12] 2311 	add	a,#0x0c
      00094D F8               [12] 2312 	mov	r0,a
      00094E 06               [12] 2313 	inc	@r0
      00094F 80 87            [24] 2314 	sjmp	00103$
      000951                       2315 00101$:
                                   2316 ;	fat.h:106: return val;
      000951 8A 82            [24] 2317 	mov	dpl,r2
      000953 8B 83            [24] 2318 	mov	dph,r3
      000955 8C F0            [24] 2319 	mov	b,r4
      000957 EF               [12] 2320 	mov	a,r7
                                   2321 ;	fat.h:107: }
      000958 85 3C 81         [24] 2322 	mov	sp,_bp
      00095B D0 3C            [24] 2323 	pop	_bp
      00095D 22               [24] 2324 	ret
                                   2325 ;------------------------------------------------------------
                                   2326 ;Allocation info for local variables in function 'HELPER_strcmp'
                                   2327 ;------------------------------------------------------------
                                   2328 ;s2                        Allocated with name '_HELPER_strcmp_PARM_2'
                                   2329 ;s1                        Allocated to registers r5 r6 r7 
                                   2330 ;i                         Allocated to registers r4 
                                   2331 ;------------------------------------------------------------
                                   2332 ;	fat.h:109: uint8_t HELPER_strcmp(char *s1,char* s2)
                                   2333 ;	-----------------------------------------
                                   2334 ;	 function HELPER_strcmp
                                   2335 ;	-----------------------------------------
      00095E                       2336 _HELPER_strcmp:
      00095E AD 82            [24] 2337 	mov	r5,dpl
      000960 AE 83            [24] 2338 	mov	r6,dph
      000962 AF F0            [24] 2339 	mov	r7,b
                                   2340 ;	fat.h:112: while(1)
      000964 7C 00            [12] 2341 	mov	r4,#0x00
      000966                       2342 00107$:
                                   2343 ;	fat.h:114: if(s1[i]==s2[i]);
      000966 EC               [12] 2344 	mov	a,r4
      000967 2D               [12] 2345 	add	a,r5
      000968 F9               [12] 2346 	mov	r1,a
      000969 E4               [12] 2347 	clr	a
      00096A 3E               [12] 2348 	addc	a,r6
      00096B FA               [12] 2349 	mov	r2,a
      00096C 8F 03            [24] 2350 	mov	ar3,r7
      00096E 89 82            [24] 2351 	mov	dpl,r1
      000970 8A 83            [24] 2352 	mov	dph,r2
      000972 8B F0            [24] 2353 	mov	b,r3
      000974 12 1D FF         [24] 2354 	lcall	__gptrget
      000977 FB               [12] 2355 	mov	r3,a
      000978 EC               [12] 2356 	mov	a,r4
      000979 25 3D            [12] 2357 	add	a,_HELPER_strcmp_PARM_2
      00097B F8               [12] 2358 	mov	r0,a
      00097C E4               [12] 2359 	clr	a
      00097D 35 3E            [12] 2360 	addc	a,(_HELPER_strcmp_PARM_2 + 1)
      00097F F9               [12] 2361 	mov	r1,a
      000980 AA 3F            [24] 2362 	mov	r2,(_HELPER_strcmp_PARM_2 + 2)
      000982 88 82            [24] 2363 	mov	dpl,r0
      000984 89 83            [24] 2364 	mov	dph,r1
      000986 8A F0            [24] 2365 	mov	b,r2
      000988 12 1D FF         [24] 2366 	lcall	__gptrget
      00098B F8               [12] 2367 	mov	r0,a
      00098C EB               [12] 2368 	mov	a,r3
      00098D B5 00 02         [24] 2369 	cjne	a,ar0,00123$
      000990 80 04            [24] 2370 	sjmp	00103$
      000992                       2371 00123$:
                                   2372 ;	fat.h:115: else return 1;
      000992 75 82 01         [24] 2373 	mov	dpl,#0x01
      000995 22               [24] 2374 	ret
      000996                       2375 00103$:
                                   2376 ;	fat.h:117: if(s1[i]==0) return 0;
      000996 EB               [12] 2377 	mov	a,r3
      000997 70 03            [24] 2378 	jnz	00105$
      000999 F5 82            [12] 2379 	mov	dpl,a
      00099B 22               [24] 2380 	ret
      00099C                       2381 00105$:
                                   2382 ;	fat.h:118: i++;
      00099C 0C               [12] 2383 	inc	r4
                                   2384 ;	fat.h:120: }
      00099D 80 C7            [24] 2385 	sjmp	00107$
                                   2386 ;------------------------------------------------------------
                                   2387 ;Allocation info for local variables in function 'HELPER_strncmp'
                                   2388 ;------------------------------------------------------------
                                   2389 ;s2                        Allocated with name '_HELPER_strncmp_PARM_2'
                                   2390 ;n                         Allocated with name '_HELPER_strncmp_PARM_3'
                                   2391 ;s1                        Allocated to registers r5 r6 r7 
                                   2392 ;i                         Allocated to registers r4 
                                   2393 ;------------------------------------------------------------
                                   2394 ;	fat.h:122: uint8_t HELPER_strncmp(char *s1,char* s2,uint8_t n)
                                   2395 ;	-----------------------------------------
                                   2396 ;	 function HELPER_strncmp
                                   2397 ;	-----------------------------------------
      00099F                       2398 _HELPER_strncmp:
      00099F AD 82            [24] 2399 	mov	r5,dpl
      0009A1 AE 83            [24] 2400 	mov	r6,dph
      0009A3 AF F0            [24] 2401 	mov	r7,b
                                   2402 ;	fat.h:125: while(1)
      0009A5 7C 00            [12] 2403 	mov	r4,#0x00
      0009A7                       2404 00109$:
                                   2405 ;	fat.h:127: if(i==n) return 0; //done - successful
      0009A7 EC               [12] 2406 	mov	a,r4
      0009A8 B5 40 04         [24] 2407 	cjne	a,_HELPER_strncmp_PARM_3,00102$
      0009AB 75 82 00         [24] 2408 	mov	dpl,#0x00
      0009AE 22               [24] 2409 	ret
      0009AF                       2410 00102$:
                                   2411 ;	fat.h:129: if(s1[i]==s2[i]);
      0009AF EC               [12] 2412 	mov	a,r4
      0009B0 2D               [12] 2413 	add	a,r5
      0009B1 F9               [12] 2414 	mov	r1,a
      0009B2 E4               [12] 2415 	clr	a
      0009B3 3E               [12] 2416 	addc	a,r6
      0009B4 FA               [12] 2417 	mov	r2,a
      0009B5 8F 03            [24] 2418 	mov	ar3,r7
      0009B7 89 82            [24] 2419 	mov	dpl,r1
      0009B9 8A 83            [24] 2420 	mov	dph,r2
      0009BB 8B F0            [24] 2421 	mov	b,r3
      0009BD 12 1D FF         [24] 2422 	lcall	__gptrget
      0009C0 FB               [12] 2423 	mov	r3,a
      0009C1 EC               [12] 2424 	mov	a,r4
      0009C2 25 3D            [12] 2425 	add	a,_HELPER_strncmp_PARM_2
      0009C4 F8               [12] 2426 	mov	r0,a
      0009C5 E4               [12] 2427 	clr	a
      0009C6 35 3E            [12] 2428 	addc	a,(_HELPER_strncmp_PARM_2 + 1)
      0009C8 F9               [12] 2429 	mov	r1,a
      0009C9 AA 3F            [24] 2430 	mov	r2,(_HELPER_strncmp_PARM_2 + 2)
      0009CB 88 82            [24] 2431 	mov	dpl,r0
      0009CD 89 83            [24] 2432 	mov	dph,r1
      0009CF 8A F0            [24] 2433 	mov	b,r2
      0009D1 12 1D FF         [24] 2434 	lcall	__gptrget
      0009D4 F8               [12] 2435 	mov	r0,a
      0009D5 EB               [12] 2436 	mov	a,r3
      0009D6 B5 00 02         [24] 2437 	cjne	a,ar0,00131$
      0009D9 80 04            [24] 2438 	sjmp	00105$
      0009DB                       2439 00131$:
                                   2440 ;	fat.h:130: else return 1;
      0009DB 75 82 01         [24] 2441 	mov	dpl,#0x01
      0009DE 22               [24] 2442 	ret
      0009DF                       2443 00105$:
                                   2444 ;	fat.h:132: if(s1[i]==0) return 0; //if string length < n, return success as well as we donot want to compare more
      0009DF EB               [12] 2445 	mov	a,r3
      0009E0 70 03            [24] 2446 	jnz	00107$
      0009E2 F5 82            [12] 2447 	mov	dpl,a
      0009E4 22               [24] 2448 	ret
      0009E5                       2449 00107$:
                                   2450 ;	fat.h:133: i++;
      0009E5 0C               [12] 2451 	inc	r4
                                   2452 ;	fat.h:135: }
      0009E6 80 BF            [24] 2453 	sjmp	00109$
                                   2454 ;------------------------------------------------------------
                                   2455 ;Allocation info for local variables in function 'HELPER_strlen'
                                   2456 ;------------------------------------------------------------
                                   2457 ;s                         Allocated to registers r5 r6 r7 
                                   2458 ;i                         Allocated to registers r4 
                                   2459 ;------------------------------------------------------------
                                   2460 ;	fat.h:137: uint8_t HELPER_strlen(char *s)
                                   2461 ;	-----------------------------------------
                                   2462 ;	 function HELPER_strlen
                                   2463 ;	-----------------------------------------
      0009E8                       2464 _HELPER_strlen:
      0009E8 AD 82            [24] 2465 	mov	r5,dpl
      0009EA AE 83            [24] 2466 	mov	r6,dph
      0009EC AF F0            [24] 2467 	mov	r7,b
                                   2468 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      0009EE 7C 00            [12] 2469 	mov	r4,#0x00
      0009F0 7B 00            [12] 2470 	mov	r3,#0x00
      0009F2                       2471 00105$:
      0009F2 BB FF 00         [24] 2472 	cjne	r3,#0xff,00121$
      0009F5                       2473 00121$:
      0009F5 50 1B            [24] 2474 	jnc	00103$
                                   2475 ;	fat.h:141: if(s[i]==0) return i;
      0009F7 EB               [12] 2476 	mov	a,r3
      0009F8 2D               [12] 2477 	add	a,r5
      0009F9 F8               [12] 2478 	mov	r0,a
      0009FA E4               [12] 2479 	clr	a
      0009FB 3E               [12] 2480 	addc	a,r6
      0009FC F9               [12] 2481 	mov	r1,a
      0009FD 8F 02            [24] 2482 	mov	ar2,r7
      0009FF 88 82            [24] 2483 	mov	dpl,r0
      000A01 89 83            [24] 2484 	mov	dph,r1
      000A03 8A F0            [24] 2485 	mov	b,r2
      000A05 12 1D FF         [24] 2486 	lcall	__gptrget
      000A08 70 03            [24] 2487 	jnz	00106$
      000A0A 8C 82            [24] 2488 	mov	dpl,r4
      000A0C 22               [24] 2489 	ret
      000A0D                       2490 00106$:
                                   2491 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      000A0D 0B               [12] 2492 	inc	r3
      000A0E 8B 04            [24] 2493 	mov	ar4,r3
      000A10 80 E0            [24] 2494 	sjmp	00105$
      000A12                       2495 00103$:
                                   2496 ;	fat.h:144: return 255;
      000A12 75 82 FF         [24] 2497 	mov	dpl,#0xff
                                   2498 ;	fat.h:145: }
      000A15 22               [24] 2499 	ret
                                   2500 ;------------------------------------------------------------
                                   2501 ;Allocation info for local variables in function 'HELPER_rootentry_type'
                                   2502 ;------------------------------------------------------------
                                   2503 ;re                        Allocated to registers r5 r6 r7 
                                   2504 ;------------------------------------------------------------
                                   2505 ;	fat.h:147: uint8_t HELPER_rootentry_type(ROOTENTRY *re)
                                   2506 ;	-----------------------------------------
                                   2507 ;	 function HELPER_rootentry_type
                                   2508 ;	-----------------------------------------
      000A16                       2509 _HELPER_rootentry_type:
      000A16 AD 82            [24] 2510 	mov	r5,dpl
      000A18 AE 83            [24] 2511 	mov	r6,dph
      000A1A AF F0            [24] 2512 	mov	r7,b
                                   2513 ;	fat.h:149: if(re->attributes & 1<<FILETYPE_HIDDEN) return FILETYPE_HIDDEN; //directory entry
      000A1C 74 0B            [12] 2514 	mov	a,#0x0b
      000A1E 2D               [12] 2515 	add	a,r5
      000A1F FA               [12] 2516 	mov	r2,a
      000A20 E4               [12] 2517 	clr	a
      000A21 3E               [12] 2518 	addc	a,r6
      000A22 FB               [12] 2519 	mov	r3,a
      000A23 8F 04            [24] 2520 	mov	ar4,r7
      000A25 8A 82            [24] 2521 	mov	dpl,r2
      000A27 8B 83            [24] 2522 	mov	dph,r3
      000A29 8C F0            [24] 2523 	mov	b,r4
      000A2B 12 1D FF         [24] 2524 	lcall	__gptrget
      000A2E FC               [12] 2525 	mov	r4,a
      000A2F 30 E1 04         [24] 2526 	jnb	acc.1,00102$
      000A32 75 82 01         [24] 2527 	mov	dpl,#0x01
      000A35 22               [24] 2528 	ret
      000A36                       2529 00102$:
                                   2530 ;	fat.h:150: if(re->attributes & 1<<FILETYPE_SYSTEM) return FILETYPE_SYSTEM; //directory entry
      000A36 EC               [12] 2531 	mov	a,r4
      000A37 30 E2 04         [24] 2532 	jnb	acc.2,00104$
      000A3A 75 82 02         [24] 2533 	mov	dpl,#0x02
      000A3D 22               [24] 2534 	ret
      000A3E                       2535 00104$:
                                   2536 ;	fat.h:151: if(re->attributes & 1<<FILETYPE_VOLUME) return FILETYPE_VOLUME; //directory entry
      000A3E EC               [12] 2537 	mov	a,r4
      000A3F 30 E3 04         [24] 2538 	jnb	acc.3,00106$
      000A42 75 82 03         [24] 2539 	mov	dpl,#0x03
      000A45 22               [24] 2540 	ret
      000A46                       2541 00106$:
                                   2542 ;	fat.h:153: if(re->startCluster==0) return FILETYPE_NOFILE; //no file
      000A46 74 0C            [12] 2543 	mov	a,#0x0c
      000A48 2D               [12] 2544 	add	a,r5
      000A49 FA               [12] 2545 	mov	r2,a
      000A4A E4               [12] 2546 	clr	a
      000A4B 3E               [12] 2547 	addc	a,r6
      000A4C FB               [12] 2548 	mov	r3,a
      000A4D 8F 04            [24] 2549 	mov	ar4,r7
      000A4F 8A 82            [24] 2550 	mov	dpl,r2
      000A51 8B 83            [24] 2551 	mov	dph,r3
      000A53 8C F0            [24] 2552 	mov	b,r4
      000A55 12 1D FF         [24] 2553 	lcall	__gptrget
      000A58 FA               [12] 2554 	mov	r2,a
      000A59 A3               [24] 2555 	inc	dptr
      000A5A 12 1D FF         [24] 2556 	lcall	__gptrget
      000A5D 4A               [12] 2557 	orl	a,r2
      000A5E 70 04            [24] 2558 	jnz	00111$
      000A60 75 82 FF         [24] 2559 	mov	dpl,#0xff
      000A63 22               [24] 2560 	ret
      000A64                       2561 00111$:
                                   2562 ;	fat.h:154: else if(re->size==0) return FILETYPE_EMPTYFILE; //empty file
      000A64 74 0E            [12] 2563 	mov	a,#0x0e
      000A66 2D               [12] 2564 	add	a,r5
      000A67 FD               [12] 2565 	mov	r5,a
      000A68 E4               [12] 2566 	clr	a
      000A69 3E               [12] 2567 	addc	a,r6
      000A6A FE               [12] 2568 	mov	r6,a
      000A6B 8D 82            [24] 2569 	mov	dpl,r5
      000A6D 8E 83            [24] 2570 	mov	dph,r6
      000A6F 8F F0            [24] 2571 	mov	b,r7
      000A71 12 1D FF         [24] 2572 	lcall	__gptrget
      000A74 FD               [12] 2573 	mov	r5,a
      000A75 A3               [24] 2574 	inc	dptr
      000A76 12 1D FF         [24] 2575 	lcall	__gptrget
      000A79 FE               [12] 2576 	mov	r6,a
      000A7A A3               [24] 2577 	inc	dptr
      000A7B 12 1D FF         [24] 2578 	lcall	__gptrget
      000A7E FF               [12] 2579 	mov	r7,a
      000A7F A3               [24] 2580 	inc	dptr
      000A80 12 1D FF         [24] 2581 	lcall	__gptrget
      000A83 FC               [12] 2582 	mov	r4,a
      000A84 ED               [12] 2583 	mov	a,r5
      000A85 4E               [12] 2584 	orl	a,r6
      000A86 4F               [12] 2585 	orl	a,r7
      000A87 4C               [12] 2586 	orl	a,r4
      000A88 70 04            [24] 2587 	jnz	00108$
      000A8A 75 82 FE         [24] 2588 	mov	dpl,#0xfe
      000A8D 22               [24] 2589 	ret
      000A8E                       2590 00108$:
                                   2591 ;	fat.h:155: else return 0; // valid non-empty file
      000A8E 75 82 00         [24] 2592 	mov	dpl,#0x00
                                   2593 ;	fat.h:157: }
      000A91 22               [24] 2594 	ret
                                   2595 ;------------------------------------------------------------
                                   2596 ;Allocation info for local variables in function 'HELPER_to_uppercase'
                                   2597 ;------------------------------------------------------------
                                   2598 ;s                         Allocated to registers r5 r6 r7 
                                   2599 ;i                         Allocated to registers r4 
                                   2600 ;------------------------------------------------------------
                                   2601 ;	fat.h:162: void HELPER_to_uppercase(unsigned char *s)
                                   2602 ;	-----------------------------------------
                                   2603 ;	 function HELPER_to_uppercase
                                   2604 ;	-----------------------------------------
      000A92                       2605 _HELPER_to_uppercase:
      000A92 AD 82            [24] 2606 	mov	r5,dpl
      000A94 AE 83            [24] 2607 	mov	r6,dph
      000A96 AF F0            [24] 2608 	mov	r7,b
                                   2609 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000A98 7C 00            [12] 2610 	mov	r4,#0x00
      000A9A                       2611 00108$:
      000A9A BC FF 00         [24] 2612 	cjne	r4,#0xff,00132$
      000A9D                       2613 00132$:
      000A9D 50 2F            [24] 2614 	jnc	00110$
                                   2615 ;	fat.h:166: if(s[i]==0) return; //done
      000A9F EC               [12] 2616 	mov	a,r4
      000AA0 2D               [12] 2617 	add	a,r5
      000AA1 F9               [12] 2618 	mov	r1,a
      000AA2 E4               [12] 2619 	clr	a
      000AA3 3E               [12] 2620 	addc	a,r6
      000AA4 FA               [12] 2621 	mov	r2,a
      000AA5 8F 03            [24] 2622 	mov	ar3,r7
      000AA7 89 82            [24] 2623 	mov	dpl,r1
      000AA9 8A 83            [24] 2624 	mov	dph,r2
      000AAB 8B F0            [24] 2625 	mov	b,r3
      000AAD 12 1D FF         [24] 2626 	lcall	__gptrget
      000AB0 F8               [12] 2627 	mov	r0,a
      000AB1 70 01            [24] 2628 	jnz	00102$
      000AB3 22               [24] 2629 	ret
      000AB4                       2630 00102$:
                                   2631 ;	fat.h:167: if('a'<=s[i] && s[i]<='z') s[i] = s[i] - 32;
      000AB4 B8 61 00         [24] 2632 	cjne	r0,#0x61,00135$
      000AB7                       2633 00135$:
      000AB7 40 12            [24] 2634 	jc	00109$
      000AB9 E8               [12] 2635 	mov	a,r0
      000ABA 24 85            [12] 2636 	add	a,#0xff - 0x7a
      000ABC 40 0D            [24] 2637 	jc	00109$
      000ABE E8               [12] 2638 	mov	a,r0
      000ABF 24 E0            [12] 2639 	add	a,#0xe0
      000AC1 F8               [12] 2640 	mov	r0,a
      000AC2 89 82            [24] 2641 	mov	dpl,r1
      000AC4 8A 83            [24] 2642 	mov	dph,r2
      000AC6 8B F0            [24] 2643 	mov	b,r3
      000AC8 12 1D 0C         [24] 2644 	lcall	__gptrput
      000ACB                       2645 00109$:
                                   2646 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000ACB 0C               [12] 2647 	inc	r4
      000ACC 80 CC            [24] 2648 	sjmp	00108$
      000ACE                       2649 00110$:
                                   2650 ;	fat.h:169: }
      000ACE 22               [24] 2651 	ret
                                   2652 ;------------------------------------------------------------
                                   2653 ;Allocation info for local variables in function 'HELPER_filename_to_8dot3filename'
                                   2654 ;------------------------------------------------------------
                                   2655 ;fname83                   Allocated with name '_HELPER_filename_to_8dot3filename_PARM_2'
                                   2656 ;fname                     Allocated with name '_HELPER_filename_to_8dot3filename_fname_65536_120'
                                   2657 ;index                     Allocated to registers r4 
                                   2658 ;i                         Allocated to registers r4 
                                   2659 ;i                         Allocated with name '_HELPER_filename_to_8dot3filename_i_131072_126'
                                   2660 ;------------------------------------------------------------
                                   2661 ;	fat.h:172: uint8_t HELPER_filename_to_8dot3filename( char *fname,  char *fname83)
                                   2662 ;	-----------------------------------------
                                   2663 ;	 function HELPER_filename_to_8dot3filename
                                   2664 ;	-----------------------------------------
      000ACF                       2665 _HELPER_filename_to_8dot3filename:
                                   2666 ;	fat.h:177: HELPER_to_uppercase(fname);
      000ACF 85 82 1B         [24] 2667 	mov	_HELPER_filename_to_8dot3filename_fname_65536_120,dpl
      000AD2 85 83 1C         [24] 2668 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1),dph
      000AD5 85 F0 1D         [24] 2669 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2),b
      000AD8 12 0A 92         [24] 2670 	lcall	_HELPER_to_uppercase
                                   2671 ;	fat.h:185: for(uint8_t i=0;i<11;i++) fname83[i]=' '; //default fill by empty space
      000ADB 7C 00            [12] 2672 	mov	r4,#0x00
      000ADD                       2673 00120$:
      000ADD BC 0B 00         [24] 2674 	cjne	r4,#0x0b,00178$
      000AE0                       2675 00178$:
      000AE0 50 18            [24] 2676 	jnc	00101$
      000AE2 EC               [12] 2677 	mov	a,r4
      000AE3 25 18            [12] 2678 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000AE5 F9               [12] 2679 	mov	r1,a
      000AE6 E4               [12] 2680 	clr	a
      000AE7 35 19            [12] 2681 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000AE9 FA               [12] 2682 	mov	r2,a
      000AEA AB 1A            [24] 2683 	mov	r3,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000AEC 89 82            [24] 2684 	mov	dpl,r1
      000AEE 8A 83            [24] 2685 	mov	dph,r2
      000AF0 8B F0            [24] 2686 	mov	b,r3
      000AF2 74 20            [12] 2687 	mov	a,#0x20
      000AF4 12 1D 0C         [24] 2688 	lcall	__gptrput
      000AF7 0C               [12] 2689 	inc	r4
      000AF8 80 E3            [24] 2690 	sjmp	00120$
      000AFA                       2691 00101$:
                                   2692 ;	fat.h:186: fname83[11]=0; //set last character as 0;
      000AFA 74 0B            [12] 2693 	mov	a,#0x0b
      000AFC 25 18            [12] 2694 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000AFE FA               [12] 2695 	mov	r2,a
      000AFF E4               [12] 2696 	clr	a
      000B00 35 19            [12] 2697 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B02 FB               [12] 2698 	mov	r3,a
      000B03 AC 1A            [24] 2699 	mov	r4,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B05 8A 82            [24] 2700 	mov	dpl,r2
      000B07 8B 83            [24] 2701 	mov	dph,r3
      000B09 8C F0            [24] 2702 	mov	b,r4
      000B0B E4               [12] 2703 	clr	a
      000B0C 12 1D 0C         [24] 2704 	lcall	__gptrput
                                   2705 ;	fat.h:189: for(index=0;index<9;index++)
      000B0F 7C 00            [12] 2706 	mov	r4,#0x00
      000B11 7B 00            [12] 2707 	mov	r3,#0x00
      000B13                       2708 00122$:
                                   2709 ;	fat.h:192: if(index==8 && fname[index]!='.') 
      000B13 BB 08 1D         [24] 2710 	cjne	r3,#0x08,00103$
      000B16 EB               [12] 2711 	mov	a,r3
      000B17 25 1B            [12] 2712 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B19 F8               [12] 2713 	mov	r0,a
      000B1A E4               [12] 2714 	clr	a
      000B1B 35 1C            [12] 2715 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B1D F9               [12] 2716 	mov	r1,a
      000B1E AA 1D            [24] 2717 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B20 88 82            [24] 2718 	mov	dpl,r0
      000B22 89 83            [24] 2719 	mov	dph,r1
      000B24 8A F0            [24] 2720 	mov	b,r2
      000B26 12 1D FF         [24] 2721 	lcall	__gptrget
      000B29 F8               [12] 2722 	mov	r0,a
      000B2A B8 2E 02         [24] 2723 	cjne	r0,#0x2e,00182$
      000B2D 80 04            [24] 2724 	sjmp	00103$
      000B2F                       2725 00182$:
                                   2726 ;	fat.h:197: return 1; //error - invalid filename as dot not found till 9th charcter
      000B2F 75 82 01         [24] 2727 	mov	dpl,#0x01
      000B32 22               [24] 2728 	ret
      000B33                       2729 00103$:
                                   2730 ;	fat.h:200: if(fname[index]==0) return 0; // success - we reached the end of the filename string before the dot character - filename has no extension
      000B33 EB               [12] 2731 	mov	a,r3
      000B34 25 1B            [12] 2732 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B36 F8               [12] 2733 	mov	r0,a
      000B37 E4               [12] 2734 	clr	a
      000B38 35 1C            [12] 2735 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B3A F9               [12] 2736 	mov	r1,a
      000B3B AA 1D            [24] 2737 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B3D 88 82            [24] 2738 	mov	dpl,r0
      000B3F 89 83            [24] 2739 	mov	dph,r1
      000B41 8A F0            [24] 2740 	mov	b,r2
      000B43 12 1D FF         [24] 2741 	lcall	__gptrget
      000B46 FA               [12] 2742 	mov	r2,a
      000B47 70 03            [24] 2743 	jnz	00109$
      000B49 F5 82            [12] 2744 	mov	dpl,a
      000B4B 22               [24] 2745 	ret
      000B4C                       2746 00109$:
                                   2747 ;	fat.h:201: else if(fname[index]=='.') break; //found the dot, break the for loop
      000B4C BA 2E 02         [24] 2748 	cjne	r2,#0x2e,00184$
      000B4F 80 1C            [24] 2749 	sjmp	00140$
      000B51                       2750 00184$:
                                   2751 ;	fat.h:202: else fname83[index]=fname[index];
      000B51 EB               [12] 2752 	mov	a,r3
      000B52 25 18            [12] 2753 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B54 F8               [12] 2754 	mov	r0,a
      000B55 E4               [12] 2755 	clr	a
      000B56 35 19            [12] 2756 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B58 F9               [12] 2757 	mov	r1,a
      000B59 AF 1A            [24] 2758 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B5B 88 82            [24] 2759 	mov	dpl,r0
      000B5D 89 83            [24] 2760 	mov	dph,r1
      000B5F 8F F0            [24] 2761 	mov	b,r7
      000B61 EA               [12] 2762 	mov	a,r2
      000B62 12 1D 0C         [24] 2763 	lcall	__gptrput
                                   2764 ;	fat.h:189: for(index=0;index<9;index++)
      000B65 0B               [12] 2765 	inc	r3
      000B66 8B 04            [24] 2766 	mov	ar4,r3
      000B68 BB 09 00         [24] 2767 	cjne	r3,#0x09,00185$
      000B6B                       2768 00185$:
      000B6B 40 A6            [24] 2769 	jc	00122$
                                   2770 ;	fat.h:205: for(uint8_t i=0;i<4;i++)
      000B6D                       2771 00140$:
      000B6D 75 1E 00         [24] 2772 	mov	_HELPER_filename_to_8dot3filename_i_131072_126,#0x00
      000B70                       2773 00125$:
      000B70 74 FC            [12] 2774 	mov	a,#0x100 - 0x04
      000B72 25 1E            [12] 2775 	add	a,_HELPER_filename_to_8dot3filename_i_131072_126
      000B74 50 03            [24] 2776 	jnc	00187$
      000B76 02 0C 13         [24] 2777 	ljmp	00118$
      000B79                       2778 00187$:
                                   2779 ;	fat.h:207: if(i==3 && fname[index+i+1]!=0) 
      000B79 74 03            [12] 2780 	mov	a,#0x03
      000B7B B5 1E 2C         [24] 2781 	cjne	a,_HELPER_filename_to_8dot3filename_i_131072_126,00113$
      000B7E 8C 05            [24] 2782 	mov	ar5,r4
      000B80 7E 00            [12] 2783 	mov	r6,#0x00
      000B82 AA 1E            [24] 2784 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_126
      000B84 7B 00            [12] 2785 	mov	r3,#0x00
      000B86 EA               [12] 2786 	mov	a,r2
      000B87 2D               [12] 2787 	add	a,r5
      000B88 FD               [12] 2788 	mov	r5,a
      000B89 EB               [12] 2789 	mov	a,r3
      000B8A 3E               [12] 2790 	addc	a,r6
      000B8B FE               [12] 2791 	mov	r6,a
      000B8C 0D               [12] 2792 	inc	r5
      000B8D BD 00 01         [24] 2793 	cjne	r5,#0x00,00190$
      000B90 0E               [12] 2794 	inc	r6
      000B91                       2795 00190$:
      000B91 ED               [12] 2796 	mov	a,r5
      000B92 25 1B            [12] 2797 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B94 FD               [12] 2798 	mov	r5,a
      000B95 EE               [12] 2799 	mov	a,r6
      000B96 35 1C            [12] 2800 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B98 FE               [12] 2801 	mov	r6,a
      000B99 AB 1D            [24] 2802 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B9B 8D 82            [24] 2803 	mov	dpl,r5
      000B9D 8E 83            [24] 2804 	mov	dph,r6
      000B9F 8B F0            [24] 2805 	mov	b,r3
      000BA1 12 1D FF         [24] 2806 	lcall	__gptrget
      000BA4 60 04            [24] 2807 	jz	00113$
                                   2808 ;	fat.h:212: return 2; // error - extension has more than 3 characters
      000BA6 75 82 02         [24] 2809 	mov	dpl,#0x02
      000BA9 22               [24] 2810 	ret
      000BAA                       2811 00113$:
                                   2812 ;	fat.h:216: if(fname[index+i+1]==0) 
      000BAA 8C 05            [24] 2813 	mov	ar5,r4
      000BAC 7E 00            [12] 2814 	mov	r6,#0x00
      000BAE AA 1E            [24] 2815 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_126
      000BB0 7B 00            [12] 2816 	mov	r3,#0x00
      000BB2 EA               [12] 2817 	mov	a,r2
      000BB3 2D               [12] 2818 	add	a,r5
      000BB4 F8               [12] 2819 	mov	r0,a
      000BB5 EB               [12] 2820 	mov	a,r3
      000BB6 3E               [12] 2821 	addc	a,r6
      000BB7 F9               [12] 2822 	mov	r1,a
      000BB8 08               [12] 2823 	inc	r0
      000BB9 B8 00 01         [24] 2824 	cjne	r0,#0x00,00192$
      000BBC 09               [12] 2825 	inc	r1
      000BBD                       2826 00192$:
      000BBD E8               [12] 2827 	mov	a,r0
      000BBE 25 1B            [12] 2828 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000BC0 F8               [12] 2829 	mov	r0,a
      000BC1 E9               [12] 2830 	mov	a,r1
      000BC2 35 1C            [12] 2831 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000BC4 F9               [12] 2832 	mov	r1,a
      000BC5 AF 1D            [24] 2833 	mov	r7,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000BC7 88 82            [24] 2834 	mov	dpl,r0
      000BC9 89 83            [24] 2835 	mov	dph,r1
      000BCB 8F F0            [24] 2836 	mov	b,r7
      000BCD 12 1D FF         [24] 2837 	lcall	__gptrget
                                   2838 ;	fat.h:225: return 0; 
      000BD0 70 03            [24] 2839 	jnz	00116$
      000BD2 F5 82            [12] 2840 	mov	dpl,a
      000BD4 22               [24] 2841 	ret
      000BD5                       2842 00116$:
                                   2843 ;	fat.h:227: else fname83[8+i]=fname[index+i+1]; // in a valid fname, there is just an extra dot in fname than in fname83
      000BD5 74 08            [12] 2844 	mov	a,#0x08
      000BD7 2A               [12] 2845 	add	a,r2
      000BD8 F9               [12] 2846 	mov	r1,a
      000BD9 E4               [12] 2847 	clr	a
      000BDA 3B               [12] 2848 	addc	a,r3
      000BDB FF               [12] 2849 	mov	r7,a
      000BDC E9               [12] 2850 	mov	a,r1
      000BDD 25 18            [12] 2851 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000BDF F9               [12] 2852 	mov	r1,a
      000BE0 EF               [12] 2853 	mov	a,r7
      000BE1 35 19            [12] 2854 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000BE3 F8               [12] 2855 	mov	r0,a
      000BE4 AF 1A            [24] 2856 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000BE6 EA               [12] 2857 	mov	a,r2
      000BE7 2D               [12] 2858 	add	a,r5
      000BE8 FD               [12] 2859 	mov	r5,a
      000BE9 EB               [12] 2860 	mov	a,r3
      000BEA 3E               [12] 2861 	addc	a,r6
      000BEB FE               [12] 2862 	mov	r6,a
      000BEC 0D               [12] 2863 	inc	r5
      000BED BD 00 01         [24] 2864 	cjne	r5,#0x00,00194$
      000BF0 0E               [12] 2865 	inc	r6
      000BF1                       2866 00194$:
      000BF1 ED               [12] 2867 	mov	a,r5
      000BF2 25 1B            [12] 2868 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000BF4 FD               [12] 2869 	mov	r5,a
      000BF5 EE               [12] 2870 	mov	a,r6
      000BF6 35 1C            [12] 2871 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000BF8 FE               [12] 2872 	mov	r6,a
      000BF9 AB 1D            [24] 2873 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000BFB 8D 82            [24] 2874 	mov	dpl,r5
      000BFD 8E 83            [24] 2875 	mov	dph,r6
      000BFF 8B F0            [24] 2876 	mov	b,r3
      000C01 12 1D FF         [24] 2877 	lcall	__gptrget
      000C04 FD               [12] 2878 	mov	r5,a
      000C05 89 82            [24] 2879 	mov	dpl,r1
      000C07 88 83            [24] 2880 	mov	dph,r0
      000C09 8F F0            [24] 2881 	mov	b,r7
      000C0B 12 1D 0C         [24] 2882 	lcall	__gptrput
                                   2883 ;	fat.h:205: for(uint8_t i=0;i<4;i++)
      000C0E 05 1E            [12] 2884 	inc	_HELPER_filename_to_8dot3filename_i_131072_126
      000C10 02 0B 70         [24] 2885 	ljmp	00125$
      000C13                       2886 00118$:
                                   2887 ;	fat.h:230: return 3;// if reached here, then it is an error
      000C13 75 82 03         [24] 2888 	mov	dpl,#0x03
                                   2889 ;	fat.h:231: }
      000C16 22               [24] 2890 	ret
                                   2891 ;------------------------------------------------------------
                                   2892 ;Allocation info for local variables in function 'MBR_CHECK__SIGNATURE'
                                   2893 ;------------------------------------------------------------
                                   2894 ;signature                 Allocated to stack - _bp +1
                                   2895 ;------------------------------------------------------------
                                   2896 ;	fat.h:245: uint8_t MBR_CHECK__SIGNATURE() __reentrant
                                   2897 ;	-----------------------------------------
                                   2898 ;	 function MBR_CHECK__SIGNATURE
                                   2899 ;	-----------------------------------------
      000C17                       2900 _MBR_CHECK__SIGNATURE:
      000C17 C0 3C            [24] 2901 	push	_bp
      000C19 85 81 3C         [24] 2902 	mov	_bp,sp
      000C1C 05 81            [12] 2903 	inc	sp
      000C1E 05 81            [12] 2904 	inc	sp
                                   2905 ;	fat.h:248: SDread(0,510,2,signature);
      000C20 A9 3C            [24] 2906 	mov	r1,_bp
      000C22 09               [12] 2907 	inc	r1
      000C23 89 05            [24] 2908 	mov	ar5,r1
      000C25 7E 00            [12] 2909 	mov	r6,#0x00
      000C27 7F 40            [12] 2910 	mov	r7,#0x40
      000C29 C0 01            [24] 2911 	push	ar1
      000C2B C0 05            [24] 2912 	push	ar5
      000C2D C0 06            [24] 2913 	push	ar6
      000C2F C0 07            [24] 2914 	push	ar7
      000C31 74 02            [12] 2915 	mov	a,#0x02
      000C33 C0 E0            [24] 2916 	push	acc
      000C35 E4               [12] 2917 	clr	a
      000C36 C0 E0            [24] 2918 	push	acc
      000C38 74 FE            [12] 2919 	mov	a,#0xfe
      000C3A C0 E0            [24] 2920 	push	acc
      000C3C F4               [12] 2921 	cpl	a
      000C3D C0 E0            [24] 2922 	push	acc
      000C3F 90 00 00         [24] 2923 	mov	dptr,#(0x00&0x00ff)
      000C42 E4               [12] 2924 	clr	a
      000C43 F5 F0            [12] 2925 	mov	b,a
      000C45 12 07 47         [24] 2926 	lcall	_SDread
      000C48 E5 81            [12] 2927 	mov	a,sp
      000C4A 24 F9            [12] 2928 	add	a,#0xf9
      000C4C F5 81            [12] 2929 	mov	sp,a
      000C4E D0 01            [24] 2930 	pop	ar1
                                   2931 ;	fat.h:257: if(signature[0]==0x55 && signature[1]==0xAA) return 0;
      000C50 87 07            [24] 2932 	mov	ar7,@r1
      000C52 BF 55 0B         [24] 2933 	cjne	r7,#0x55,00102$
      000C55 09               [12] 2934 	inc	r1
      000C56 87 07            [24] 2935 	mov	ar7,@r1
      000C58 BF AA 05         [24] 2936 	cjne	r7,#0xaa,00102$
      000C5B 75 82 00         [24] 2937 	mov	dpl,#0x00
      000C5E 80 03            [24] 2938 	sjmp	00105$
      000C60                       2939 00102$:
                                   2940 ;	fat.h:258: else return 1;
      000C60 75 82 01         [24] 2941 	mov	dpl,#0x01
      000C63                       2942 00105$:
                                   2943 ;	fat.h:259: }
      000C63 85 3C 81         [24] 2944 	mov	sp,_bp
      000C66 D0 3C            [24] 2945 	pop	_bp
      000C68 22               [24] 2946 	ret
                                   2947 ;------------------------------------------------------------
                                   2948 ;Allocation info for local variables in function 'MBR_LOAD_PARTITION_TABLE_ENTRY'
                                   2949 ;------------------------------------------------------------
                                   2950 ;partition_number          Allocated to registers r7 
                                   2951 ;temp                      Allocated with name '_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132'
                                   2952 ;offset                    Allocated to registers r5 r6 
                                   2953 ;------------------------------------------------------------
                                   2954 ;	fat.h:261: uint8_t MBR_LOAD_PARTITION_TABLE_ENTRY(uint8_t partition_number)
                                   2955 ;	-----------------------------------------
                                   2956 ;	 function MBR_LOAD_PARTITION_TABLE_ENTRY
                                   2957 ;	-----------------------------------------
      000C69                       2958 _MBR_LOAD_PARTITION_TABLE_ENTRY:
      000C69 AF 82            [24] 2959 	mov	r7,dpl
                                   2960 ;	fat.h:264: __idata uint16_t offset= 446 + partition_number*16; // get to the nth partition entry out of 0,1,2,3
      000C6B 8F 05            [24] 2961 	mov	ar5,r7
      000C6D E4               [12] 2962 	clr	a
      000C6E CD               [12] 2963 	xch	a,r5
      000C6F C4               [12] 2964 	swap	a
      000C70 CD               [12] 2965 	xch	a,r5
      000C71 6D               [12] 2966 	xrl	a,r5
      000C72 CD               [12] 2967 	xch	a,r5
      000C73 54 F0            [12] 2968 	anl	a,#0xf0
      000C75 CD               [12] 2969 	xch	a,r5
      000C76 6D               [12] 2970 	xrl	a,r5
      000C77 FE               [12] 2971 	mov	r6,a
      000C78 74 BE            [12] 2972 	mov	a,#0xbe
      000C7A 2D               [12] 2973 	add	a,r5
      000C7B FD               [12] 2974 	mov	r5,a
      000C7C 74 01            [12] 2975 	mov	a,#0x01
      000C7E 3E               [12] 2976 	addc	a,r6
      000C7F FE               [12] 2977 	mov	r6,a
                                   2978 ;	fat.h:266: if(partition_number>4) 
      000C80 EF               [12] 2979 	mov	a,r7
      000C81 24 FB            [12] 2980 	add	a,#0xff - 0x04
      000C83 50 04            [24] 2981 	jnc	00102$
                                   2982 ;	fat.h:273: return 1; //error
      000C85 75 82 01         [24] 2983 	mov	dpl,#0x01
      000C88 22               [24] 2984 	ret
      000C89                       2985 00102$:
                                   2986 ;	fat.h:276: SDread(0,offset,16,temp);
      000C89 74 82            [12] 2987 	mov	a,#_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132
      000C8B C0 E0            [24] 2988 	push	acc
      000C8D 74 00            [12] 2989 	mov	a,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 >> 8)
      000C8F C0 E0            [24] 2990 	push	acc
      000C91 74 40            [12] 2991 	mov	a,#0x40
      000C93 C0 E0            [24] 2992 	push	acc
      000C95 74 10            [12] 2993 	mov	a,#0x10
      000C97 C0 E0            [24] 2994 	push	acc
      000C99 E4               [12] 2995 	clr	a
      000C9A C0 E0            [24] 2996 	push	acc
      000C9C C0 05            [24] 2997 	push	ar5
      000C9E C0 06            [24] 2998 	push	ar6
      000CA0 90 00 00         [24] 2999 	mov	dptr,#(0x00&0x00ff)
      000CA3 E4               [12] 3000 	clr	a
      000CA4 F5 F0            [12] 3001 	mov	b,a
      000CA6 12 07 47         [24] 3002 	lcall	_SDread
      000CA9 E5 81            [12] 3003 	mov	a,sp
      000CAB 24 F9            [12] 3004 	add	a,#0xf9
      000CAD F5 81            [12] 3005 	mov	sp,a
                                   3006 ;	fat.h:278: __global_partitionTableEntry.type = temp[4]; // type offset is 4
      000CAF 78 86            [12] 3007 	mov	r0,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x0004)
      000CB1 86 07            [24] 3008 	mov	ar7,@r0
      000CB3 78 41            [12] 3009 	mov	r0,#___global_partitionTableEntry
      000CB5 A6 07            [24] 3010 	mov	@r0,ar7
                                   3011 ;	fat.h:279: __global_partitionTableEntry.start=HELPER_load_littleendian32(&temp[8]); //partition start LBA offset is 8
      000CB7 90 00 8A         [24] 3012 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x0008)
      000CBA 75 F0 40         [24] 3013 	mov	b,#0x40
      000CBD 12 08 BB         [24] 3014 	lcall	_HELPER_load_littleendian32
      000CC0 AC 82            [24] 3015 	mov	r4,dpl
      000CC2 AD 83            [24] 3016 	mov	r5,dph
      000CC4 AE F0            [24] 3017 	mov	r6,b
      000CC6 FF               [12] 3018 	mov	r7,a
      000CC7 78 42            [12] 3019 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000CC9 A6 04            [24] 3020 	mov	@r0,ar4
      000CCB 08               [12] 3021 	inc	r0
      000CCC A6 05            [24] 3022 	mov	@r0,ar5
      000CCE 08               [12] 3023 	inc	r0
      000CCF A6 06            [24] 3024 	mov	@r0,ar6
      000CD1 08               [12] 3025 	inc	r0
      000CD2 A6 07            [24] 3026 	mov	@r0,ar7
                                   3027 ;	fat.h:280: __global_partitionTableEntry.size=HELPER_load_littleendian32(&temp[12]); //partiiton size offset is 12
      000CD4 90 00 8E         [24] 3028 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x000c)
      000CD7 75 F0 40         [24] 3029 	mov	b,#0x40
      000CDA 12 08 BB         [24] 3030 	lcall	_HELPER_load_littleendian32
      000CDD AC 82            [24] 3031 	mov	r4,dpl
      000CDF AD 83            [24] 3032 	mov	r5,dph
      000CE1 AE F0            [24] 3033 	mov	r6,b
      000CE3 FF               [12] 3034 	mov	r7,a
      000CE4 78 46            [12] 3035 	mov	r0,#(___global_partitionTableEntry + 0x0005)
      000CE6 A6 04            [24] 3036 	mov	@r0,ar4
      000CE8 08               [12] 3037 	inc	r0
      000CE9 A6 05            [24] 3038 	mov	@r0,ar5
      000CEB 08               [12] 3039 	inc	r0
      000CEC A6 06            [24] 3040 	mov	@r0,ar6
      000CEE 08               [12] 3041 	inc	r0
      000CEF A6 07            [24] 3042 	mov	@r0,ar7
                                   3043 ;	fat.h:282: return 0;
      000CF1 75 82 00         [24] 3044 	mov	dpl,#0x00
                                   3045 ;	fat.h:284: }
      000CF4 22               [24] 3046 	ret
                                   3047 ;------------------------------------------------------------
                                   3048 ;Allocation info for local variables in function 'MBR_DETECT_FAT16'
                                   3049 ;------------------------------------------------------------
                                   3050 ;result                    Allocated to registers r7 
                                   3051 ;i                         Allocated to registers r6 
                                   3052 ;------------------------------------------------------------
                                   3053 ;	fat.h:286: uint8_t MBR_DETECT_FAT16()
                                   3054 ;	-----------------------------------------
                                   3055 ;	 function MBR_DETECT_FAT16
                                   3056 ;	-----------------------------------------
      000CF5                       3057 _MBR_DETECT_FAT16:
                                   3058 ;	fat.h:291: uint8_t result=0;
      000CF5 7F 00            [12] 3059 	mov	r7,#0x00
                                   3060 ;	fat.h:293: for(uint8_t i=0;i<4;i++) 
      000CF7 7E 00            [12] 3061 	mov	r6,#0x00
      000CF9                       3062 00105$:
      000CF9 BE 04 00         [24] 3063 	cjne	r6,#0x04,00122$
      000CFC                       3064 00122$:
      000CFC 50 2B            [24] 3065 	jnc	00103$
                                   3066 ;	fat.h:295: MBR_LOAD_PARTITION_TABLE_ENTRY(i);
      000CFE 8E 82            [24] 3067 	mov	dpl,r6
      000D00 C0 07            [24] 3068 	push	ar7
      000D02 C0 06            [24] 3069 	push	ar6
      000D04 12 0C 69         [24] 3070 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000D07 D0 06            [24] 3071 	pop	ar6
      000D09 D0 07            [24] 3072 	pop	ar7
                                   3073 ;	fat.h:296: if(__global_partitionTableEntry.type==FAT16_PARTITION_TYPE_ID) result |= (1<<i); //set corresponding bit
      000D0B 78 41            [12] 3074 	mov	r0,#___global_partitionTableEntry
      000D0D 86 05            [24] 3075 	mov	ar5,@r0
      000D0F BD 06 14         [24] 3076 	cjne	r5,#0x06,00106$
      000D12 8E 05            [24] 3077 	mov	ar5,r6
      000D14 8D F0            [24] 3078 	mov	b,r5
      000D16 05 F0            [12] 3079 	inc	b
      000D18 74 01            [12] 3080 	mov	a,#0x01
      000D1A 80 02            [24] 3081 	sjmp	00128$
      000D1C                       3082 00126$:
      000D1C 25 E0            [12] 3083 	add	a,acc
      000D1E                       3084 00128$:
      000D1E D5 F0 FB         [24] 3085 	djnz	b,00126$
      000D21 FD               [12] 3086 	mov	r5,a
      000D22 8F 04            [24] 3087 	mov	ar4,r7
      000D24 4C               [12] 3088 	orl	a,r4
      000D25 FF               [12] 3089 	mov	r7,a
      000D26                       3090 00106$:
                                   3091 ;	fat.h:293: for(uint8_t i=0;i<4;i++) 
      000D26 0E               [12] 3092 	inc	r6
      000D27 80 D0            [24] 3093 	sjmp	00105$
      000D29                       3094 00103$:
                                   3095 ;	fat.h:305: return result;
      000D29 8F 82            [24] 3096 	mov	dpl,r7
                                   3097 ;	fat.h:306: }
      000D2B 22               [24] 3098 	ret
                                   3099 ;------------------------------------------------------------
                                   3100 ;Allocation info for local variables in function 'VBR_DUMP'
                                   3101 ;------------------------------------------------------------
                                   3102 ;	fat.h:313: void VBR_DUMP() __reentrant
                                   3103 ;	-----------------------------------------
                                   3104 ;	 function VBR_DUMP
                                   3105 ;	-----------------------------------------
      000D2C                       3106 _VBR_DUMP:
                                   3107 ;	fat.h:315: UartPrint("VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start,roote_start,data_start\n"); 
      000D2C 90 1E 9C         [24] 3108 	mov	dptr,#___str_1
      000D2F 75 F0 80         [24] 3109 	mov	b,#0x80
      000D32 12 01 84         [24] 3110 	lcall	_UartPrint
                                   3111 ;	fat.h:316: UartPrintNumber(__global_vbr.volumeStartSector);UartWrite(',');
      000D35 78 4A            [12] 3112 	mov	r0,#___global_vbr
      000D37 86 04            [24] 3113 	mov	ar4,@r0
      000D39 08               [12] 3114 	inc	r0
      000D3A 86 05            [24] 3115 	mov	ar5,@r0
      000D3C 08               [12] 3116 	inc	r0
      000D3D 86 06            [24] 3117 	mov	ar6,@r0
      000D3F 08               [12] 3118 	inc	r0
      000D40 86 07            [24] 3119 	mov	ar7,@r0
      000D42 8C 82            [24] 3120 	mov	dpl,r4
      000D44 8D 83            [24] 3121 	mov	dph,r5
      000D46 8E F0            [24] 3122 	mov	b,r6
      000D48 EF               [12] 3123 	mov	a,r7
      000D49 12 02 CA         [24] 3124 	lcall	_UartPrintNumber
      000D4C 75 82 2C         [24] 3125 	mov	dpl,#0x2c
      000D4F 12 00 FE         [24] 3126 	lcall	_UartWrite
                                   3127 ;	fat.h:317: UartPrintNumber(__global_vbr.bps);UartWrite(',');
      000D52 78 50            [12] 3128 	mov	r0,#(___global_vbr + 0x0006)
      000D54 86 06            [24] 3129 	mov	ar6,@r0
      000D56 08               [12] 3130 	inc	r0
      000D57 86 07            [24] 3131 	mov	ar7,@r0
      000D59 7D 00            [12] 3132 	mov	r5,#0x00
      000D5B 7C 00            [12] 3133 	mov	r4,#0x00
      000D5D 8E 82            [24] 3134 	mov	dpl,r6
      000D5F 8F 83            [24] 3135 	mov	dph,r7
      000D61 8D F0            [24] 3136 	mov	b,r5
      000D63 EC               [12] 3137 	mov	a,r4
      000D64 12 02 CA         [24] 3138 	lcall	_UartPrintNumber
      000D67 75 82 2C         [24] 3139 	mov	dpl,#0x2c
      000D6A 12 00 FE         [24] 3140 	lcall	_UartWrite
                                   3141 ;	fat.h:318: UartPrintNumber(__global_vbr.spc);UartWrite(',');
      000D6D 78 52            [12] 3142 	mov	r0,#(___global_vbr + 0x0008)
      000D6F 86 07            [24] 3143 	mov	ar7,@r0
      000D71 7E 00            [12] 3144 	mov	r6,#0x00
      000D73 7D 00            [12] 3145 	mov	r5,#0x00
      000D75 7C 00            [12] 3146 	mov	r4,#0x00
      000D77 8F 82            [24] 3147 	mov	dpl,r7
      000D79 8E 83            [24] 3148 	mov	dph,r6
      000D7B 8D F0            [24] 3149 	mov	b,r5
      000D7D EC               [12] 3150 	mov	a,r4
      000D7E 12 02 CA         [24] 3151 	lcall	_UartPrintNumber
      000D81 75 82 2C         [24] 3152 	mov	dpl,#0x2c
      000D84 12 00 FE         [24] 3153 	lcall	_UartWrite
                                   3154 ;	fat.h:319: UartPrintNumber(__global_vbr.reservedSectors);UartWrite(',');
      000D87 78 4E            [12] 3155 	mov	r0,#(___global_vbr + 0x0004)
      000D89 86 06            [24] 3156 	mov	ar6,@r0
      000D8B 08               [12] 3157 	inc	r0
      000D8C 86 07            [24] 3158 	mov	ar7,@r0
      000D8E 7D 00            [12] 3159 	mov	r5,#0x00
      000D90 7C 00            [12] 3160 	mov	r4,#0x00
      000D92 8E 82            [24] 3161 	mov	dpl,r6
      000D94 8F 83            [24] 3162 	mov	dph,r7
      000D96 8D F0            [24] 3163 	mov	b,r5
      000D98 EC               [12] 3164 	mov	a,r4
      000D99 12 02 CA         [24] 3165 	lcall	_UartPrintNumber
      000D9C 75 82 2C         [24] 3166 	mov	dpl,#0x2c
      000D9F 12 00 FE         [24] 3167 	lcall	_UartWrite
                                   3168 ;	fat.h:320: UartPrintNumber(__global_vbr.nfat);UartWrite(',');
      000DA2 78 53            [12] 3169 	mov	r0,#(___global_vbr + 0x0009)
      000DA4 86 06            [24] 3170 	mov	ar6,@r0
      000DA6 08               [12] 3171 	inc	r0
      000DA7 86 07            [24] 3172 	mov	ar7,@r0
      000DA9 7D 00            [12] 3173 	mov	r5,#0x00
      000DAB 7C 00            [12] 3174 	mov	r4,#0x00
      000DAD 8E 82            [24] 3175 	mov	dpl,r6
      000DAF 8F 83            [24] 3176 	mov	dph,r7
      000DB1 8D F0            [24] 3177 	mov	b,r5
      000DB3 EC               [12] 3178 	mov	a,r4
      000DB4 12 02 CA         [24] 3179 	lcall	_UartPrintNumber
      000DB7 75 82 2C         [24] 3180 	mov	dpl,#0x2c
      000DBA 12 00 FE         [24] 3181 	lcall	_UartWrite
                                   3182 ;	fat.h:321: UartPrintNumber(__global_vbr.nroote);UartWrite(',');
      000DBD 78 57            [12] 3183 	mov	r0,#(___global_vbr + 0x000d)
      000DBF 86 06            [24] 3184 	mov	ar6,@r0
      000DC1 08               [12] 3185 	inc	r0
      000DC2 86 07            [24] 3186 	mov	ar7,@r0
      000DC4 7D 00            [12] 3187 	mov	r5,#0x00
      000DC6 7C 00            [12] 3188 	mov	r4,#0x00
      000DC8 8E 82            [24] 3189 	mov	dpl,r6
      000DCA 8F 83            [24] 3190 	mov	dph,r7
      000DCC 8D F0            [24] 3191 	mov	b,r5
      000DCE EC               [12] 3192 	mov	a,r4
      000DCF 12 02 CA         [24] 3193 	lcall	_UartPrintNumber
      000DD2 75 82 2C         [24] 3194 	mov	dpl,#0x2c
      000DD5 12 00 FE         [24] 3195 	lcall	_UartWrite
                                   3196 ;	fat.h:322: UartPrintNumber(__global_vbr.spf);UartWrite(',');
      000DD8 78 55            [12] 3197 	mov	r0,#(___global_vbr + 0x000b)
      000DDA 86 06            [24] 3198 	mov	ar6,@r0
      000DDC 08               [12] 3199 	inc	r0
      000DDD 86 07            [24] 3200 	mov	ar7,@r0
      000DDF 7D 00            [12] 3201 	mov	r5,#0x00
      000DE1 7C 00            [12] 3202 	mov	r4,#0x00
      000DE3 8E 82            [24] 3203 	mov	dpl,r6
      000DE5 8F 83            [24] 3204 	mov	dph,r7
      000DE7 8D F0            [24] 3205 	mov	b,r5
      000DE9 EC               [12] 3206 	mov	a,r4
      000DEA 12 02 CA         [24] 3207 	lcall	_UartPrintNumber
      000DED 75 82 2C         [24] 3208 	mov	dpl,#0x2c
      000DF0 12 00 FE         [24] 3209 	lcall	_UartWrite
                                   3210 ;	fat.h:324: UartPrintNumber(__global_vbr.addr_fat_start);UartWrite(',');
      000DF3 78 5D            [12] 3211 	mov	r0,#(___global_vbr + 0x0013)
      000DF5 86 04            [24] 3212 	mov	ar4,@r0
      000DF7 08               [12] 3213 	inc	r0
      000DF8 86 05            [24] 3214 	mov	ar5,@r0
      000DFA 08               [12] 3215 	inc	r0
      000DFB 86 06            [24] 3216 	mov	ar6,@r0
      000DFD 08               [12] 3217 	inc	r0
      000DFE 86 07            [24] 3218 	mov	ar7,@r0
      000E00 8C 82            [24] 3219 	mov	dpl,r4
      000E02 8D 83            [24] 3220 	mov	dph,r5
      000E04 8E F0            [24] 3221 	mov	b,r6
      000E06 EF               [12] 3222 	mov	a,r7
      000E07 12 02 CA         [24] 3223 	lcall	_UartPrintNumber
      000E0A 75 82 2C         [24] 3224 	mov	dpl,#0x2c
      000E0D 12 00 FE         [24] 3225 	lcall	_UartWrite
                                   3226 ;	fat.h:325: UartPrintNumber(__global_vbr.addr_roote_start);UartWrite(',');
      000E10 78 61            [12] 3227 	mov	r0,#(___global_vbr + 0x0017)
      000E12 86 04            [24] 3228 	mov	ar4,@r0
      000E14 08               [12] 3229 	inc	r0
      000E15 86 05            [24] 3230 	mov	ar5,@r0
      000E17 08               [12] 3231 	inc	r0
      000E18 86 06            [24] 3232 	mov	ar6,@r0
      000E1A 08               [12] 3233 	inc	r0
      000E1B 86 07            [24] 3234 	mov	ar7,@r0
      000E1D 8C 82            [24] 3235 	mov	dpl,r4
      000E1F 8D 83            [24] 3236 	mov	dph,r5
      000E21 8E F0            [24] 3237 	mov	b,r6
      000E23 EF               [12] 3238 	mov	a,r7
      000E24 12 02 CA         [24] 3239 	lcall	_UartPrintNumber
      000E27 75 82 2C         [24] 3240 	mov	dpl,#0x2c
      000E2A 12 00 FE         [24] 3241 	lcall	_UartWrite
                                   3242 ;	fat.h:326: UartPrintNumber(__global_vbr.addr_data_start);UartWrite(',');
      000E2D 78 65            [12] 3243 	mov	r0,#(___global_vbr + 0x001b)
      000E2F 86 04            [24] 3244 	mov	ar4,@r0
      000E31 08               [12] 3245 	inc	r0
      000E32 86 05            [24] 3246 	mov	ar5,@r0
      000E34 08               [12] 3247 	inc	r0
      000E35 86 06            [24] 3248 	mov	ar6,@r0
      000E37 08               [12] 3249 	inc	r0
      000E38 86 07            [24] 3250 	mov	ar7,@r0
      000E3A 8C 82            [24] 3251 	mov	dpl,r4
      000E3C 8D 83            [24] 3252 	mov	dph,r5
      000E3E 8E F0            [24] 3253 	mov	b,r6
      000E40 EF               [12] 3254 	mov	a,r7
      000E41 12 02 CA         [24] 3255 	lcall	_UartPrintNumber
      000E44 75 82 2C         [24] 3256 	mov	dpl,#0x2c
      000E47 12 00 FE         [24] 3257 	lcall	_UartWrite
                                   3258 ;	fat.h:327: UartWrite('\n');
      000E4A 75 82 0A         [24] 3259 	mov	dpl,#0x0a
                                   3260 ;	fat.h:328: }
      000E4D 02 00 FE         [24] 3261 	ljmp	_UartWrite
                                   3262 ;------------------------------------------------------------
                                   3263 ;Allocation info for local variables in function 'VBR_MOUNT_VBR'
                                   3264 ;------------------------------------------------------------
                                   3265 ;partition_number          Allocated to registers r7 
                                   3266 ;sloc0                     Allocated with name '_VBR_MOUNT_VBR_sloc0_1_0'
                                   3267 ;temp                      Allocated with name '_VBR_MOUNT_VBR_temp_65536_139'
                                   3268 ;------------------------------------------------------------
                                   3269 ;	fat.h:331: uint8_t VBR_MOUNT_VBR(uint8_t partition_number)
                                   3270 ;	-----------------------------------------
                                   3271 ;	 function VBR_MOUNT_VBR
                                   3272 ;	-----------------------------------------
      000E50                       3273 _VBR_MOUNT_VBR:
      000E50 AF 82            [24] 3274 	mov	r7,dpl
                                   3275 ;	fat.h:337: if(__global_nthPartitionVBRmounted == partition_number ) 
      000E52 78 69            [12] 3276 	mov	r0,#___global_nthPartitionVBRmounted
      000E54 E6               [12] 3277 	mov	a,@r0
      000E55 B5 07 04         [24] 3278 	cjne	a,ar7,00102$
                                   3279 ;	fat.h:345: return 0; //return if already loaded, else continue;
      000E58 75 82 00         [24] 3280 	mov	dpl,#0x00
      000E5B 22               [24] 3281 	ret
      000E5C                       3282 00102$:
                                   3283 ;	fat.h:356: __global_nthPartitionVBRmounted=partition_number; //set global variable
      000E5C 78 69            [12] 3284 	mov	r0,#___global_nthPartitionVBRmounted
      000E5E A6 07            [24] 3285 	mov	@r0,ar7
                                   3286 ;	fat.h:359: if(MBR_LOAD_PARTITION_TABLE_ENTRY(partition_number))  //if error, 0 is success
      000E60 8F 82            [24] 3287 	mov	dpl,r7
      000E62 12 0C 69         [24] 3288 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000E65 E5 82            [12] 3289 	mov	a,dpl
      000E67 60 04            [24] 3290 	jz	00104$
                                   3291 ;	fat.h:361: return 1; //return error
      000E69 75 82 01         [24] 3292 	mov	dpl,#0x01
      000E6C 22               [24] 3293 	ret
      000E6D                       3294 00104$:
                                   3295 ;	fat.h:365: SDread(__global_partitionTableEntry.start,0,16,temp);
      000E6D 78 42            [12] 3296 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000E6F 86 04            [24] 3297 	mov	ar4,@r0
      000E71 08               [12] 3298 	inc	r0
      000E72 86 05            [24] 3299 	mov	ar5,@r0
      000E74 08               [12] 3300 	inc	r0
      000E75 86 06            [24] 3301 	mov	ar6,@r0
      000E77 08               [12] 3302 	inc	r0
      000E78 86 07            [24] 3303 	mov	ar7,@r0
      000E7A 74 92            [12] 3304 	mov	a,#_VBR_MOUNT_VBR_temp_65536_139
      000E7C C0 E0            [24] 3305 	push	acc
      000E7E 74 00            [12] 3306 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_139 >> 8)
      000E80 C0 E0            [24] 3307 	push	acc
      000E82 74 40            [12] 3308 	mov	a,#0x40
      000E84 C0 E0            [24] 3309 	push	acc
      000E86 74 10            [12] 3310 	mov	a,#0x10
      000E88 C0 E0            [24] 3311 	push	acc
      000E8A E4               [12] 3312 	clr	a
      000E8B C0 E0            [24] 3313 	push	acc
      000E8D C0 E0            [24] 3314 	push	acc
      000E8F C0 E0            [24] 3315 	push	acc
      000E91 8C 82            [24] 3316 	mov	dpl,r4
      000E93 8D 83            [24] 3317 	mov	dph,r5
      000E95 8E F0            [24] 3318 	mov	b,r6
      000E97 EF               [12] 3319 	mov	a,r7
      000E98 12 07 47         [24] 3320 	lcall	_SDread
      000E9B E5 81            [12] 3321 	mov	a,sp
      000E9D 24 F9            [12] 3322 	add	a,#0xf9
      000E9F F5 81            [12] 3323 	mov	sp,a
                                   3324 ;	fat.h:374: __global_vbr.volumeStartSector = __global_partitionTableEntry.start;
      000EA1 78 42            [12] 3325 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000EA3 86 04            [24] 3326 	mov	ar4,@r0
      000EA5 08               [12] 3327 	inc	r0
      000EA6 86 05            [24] 3328 	mov	ar5,@r0
      000EA8 08               [12] 3329 	inc	r0
      000EA9 86 06            [24] 3330 	mov	ar6,@r0
      000EAB 08               [12] 3331 	inc	r0
      000EAC 86 07            [24] 3332 	mov	ar7,@r0
      000EAE 78 4A            [12] 3333 	mov	r0,#___global_vbr
      000EB0 A6 04            [24] 3334 	mov	@r0,ar4
      000EB2 08               [12] 3335 	inc	r0
      000EB3 A6 05            [24] 3336 	mov	@r0,ar5
      000EB5 08               [12] 3337 	inc	r0
      000EB6 A6 06            [24] 3338 	mov	@r0,ar6
      000EB8 08               [12] 3339 	inc	r0
      000EB9 A6 07            [24] 3340 	mov	@r0,ar7
                                   3341 ;	fat.h:376: __global_vbr.bps = HELPER_load_littleendian16(&temp[0x0b]); // bps starts at offset 0x0b
      000EBB 90 00 9D         [24] 3342 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x000b)
      000EBE 75 F0 40         [24] 3343 	mov	b,#0x40
      000EC1 12 08 8D         [24] 3344 	lcall	_HELPER_load_littleendian16
      000EC4 E5 82            [12] 3345 	mov	a,dpl
      000EC6 85 83 F0         [24] 3346 	mov	b,dph
      000EC9 78 50            [12] 3347 	mov	r0,#(___global_vbr + 0x0006)
      000ECB F6               [12] 3348 	mov	@r0,a
      000ECC 08               [12] 3349 	inc	r0
      000ECD A6 F0            [24] 3350 	mov	@r0,b
                                   3351 ;	fat.h:377: __global_vbr.spc = temp[0x0d]; //spc offset 0x0d
      000ECF 78 9F            [12] 3352 	mov	r0,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x000d)
      000ED1 86 07            [24] 3353 	mov	ar7,@r0
      000ED3 78 52            [12] 3354 	mov	r0,#(___global_vbr + 0x0008)
      000ED5 A6 07            [24] 3355 	mov	@r0,ar7
                                   3356 ;	fat.h:378: __global_vbr.reservedSectors = HELPER_load_littleendian16(&temp[0x0e]);
      000ED7 90 00 A0         [24] 3357 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x000e)
      000EDA 75 F0 40         [24] 3358 	mov	b,#0x40
      000EDD 12 08 8D         [24] 3359 	lcall	_HELPER_load_littleendian16
      000EE0 E5 82            [12] 3360 	mov	a,dpl
      000EE2 85 83 F0         [24] 3361 	mov	b,dph
      000EE5 78 4E            [12] 3362 	mov	r0,#(___global_vbr + 0x0004)
      000EE7 F6               [12] 3363 	mov	@r0,a
      000EE8 08               [12] 3364 	inc	r0
      000EE9 A6 F0            [24] 3365 	mov	@r0,b
                                   3366 ;	fat.h:382: SDread(__global_partitionTableEntry.start,16,16,temp);
      000EEB 78 42            [12] 3367 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000EED 86 04            [24] 3368 	mov	ar4,@r0
      000EEF 08               [12] 3369 	inc	r0
      000EF0 86 05            [24] 3370 	mov	ar5,@r0
      000EF2 08               [12] 3371 	inc	r0
      000EF3 86 06            [24] 3372 	mov	ar6,@r0
      000EF5 08               [12] 3373 	inc	r0
      000EF6 86 07            [24] 3374 	mov	ar7,@r0
      000EF8 74 92            [12] 3375 	mov	a,#_VBR_MOUNT_VBR_temp_65536_139
      000EFA C0 E0            [24] 3376 	push	acc
      000EFC 74 00            [12] 3377 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_139 >> 8)
      000EFE C0 E0            [24] 3378 	push	acc
      000F00 74 40            [12] 3379 	mov	a,#0x40
      000F02 C0 E0            [24] 3380 	push	acc
      000F04 74 10            [12] 3381 	mov	a,#0x10
      000F06 C0 E0            [24] 3382 	push	acc
      000F08 E4               [12] 3383 	clr	a
      000F09 C0 E0            [24] 3384 	push	acc
      000F0B 74 10            [12] 3385 	mov	a,#0x10
      000F0D C0 E0            [24] 3386 	push	acc
      000F0F E4               [12] 3387 	clr	a
      000F10 C0 E0            [24] 3388 	push	acc
      000F12 8C 82            [24] 3389 	mov	dpl,r4
      000F14 8D 83            [24] 3390 	mov	dph,r5
      000F16 8E F0            [24] 3391 	mov	b,r6
      000F18 EF               [12] 3392 	mov	a,r7
      000F19 12 07 47         [24] 3393 	lcall	_SDread
      000F1C E5 81            [12] 3394 	mov	a,sp
      000F1E 24 F9            [12] 3395 	add	a,#0xf9
      000F20 F5 81            [12] 3396 	mov	sp,a
                                   3397 ;	fat.h:391: __global_vbr.nfat = HELPER_load_littleendian16(&temp[0x10-16]); //offset of nfat is 0x01, but we subtract 16 as we have read from 16 offset in SDread
      000F22 90 00 92         [24] 3398 	mov	dptr,#_VBR_MOUNT_VBR_temp_65536_139
      000F25 75 F0 40         [24] 3399 	mov	b,#0x40
      000F28 12 08 8D         [24] 3400 	lcall	_HELPER_load_littleendian16
      000F2B E5 82            [12] 3401 	mov	a,dpl
      000F2D 85 83 F0         [24] 3402 	mov	b,dph
      000F30 78 53            [12] 3403 	mov	r0,#(___global_vbr + 0x0009)
      000F32 F6               [12] 3404 	mov	@r0,a
      000F33 08               [12] 3405 	inc	r0
      000F34 A6 F0            [24] 3406 	mov	@r0,b
                                   3407 ;	fat.h:392: __global_vbr.nroote = HELPER_load_littleendian16(&temp[0x11-16]); //offset of number_root_entrie is 0x11
      000F36 90 00 93         [24] 3408 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x0001)
      000F39 75 F0 40         [24] 3409 	mov	b,#0x40
      000F3C 12 08 8D         [24] 3410 	lcall	_HELPER_load_littleendian16
      000F3F E5 82            [12] 3411 	mov	a,dpl
      000F41 85 83 F0         [24] 3412 	mov	b,dph
      000F44 78 57            [12] 3413 	mov	r0,#(___global_vbr + 0x000d)
      000F46 F6               [12] 3414 	mov	@r0,a
      000F47 08               [12] 3415 	inc	r0
      000F48 A6 F0            [24] 3416 	mov	@r0,b
                                   3417 ;	fat.h:393: __global_vbr.spf = HELPER_load_littleendian16(&temp[0x16-16]); //offset of sectors_per_fat is 0x16
      000F4A 90 00 98         [24] 3418 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x0006)
      000F4D 75 F0 40         [24] 3419 	mov	b,#0x40
      000F50 12 08 8D         [24] 3420 	lcall	_HELPER_load_littleendian16
      000F53 AE 82            [24] 3421 	mov	r6,dpl
      000F55 AF 83            [24] 3422 	mov	r7,dph
      000F57 78 55            [12] 3423 	mov	r0,#(___global_vbr + 0x000b)
      000F59 A6 06            [24] 3424 	mov	@r0,ar6
      000F5B 08               [12] 3425 	inc	r0
      000F5C A6 07            [24] 3426 	mov	@r0,ar7
                                   3427 ;	fat.h:402: __global_vbr.bpc =  (uint32_t)__global_vbr.bps * (uint32_t)__global_vbr.spc; 
      000F5E 78 50            [12] 3428 	mov	r0,#(___global_vbr + 0x0006)
      000F60 86 04            [24] 3429 	mov	ar4,@r0
      000F62 08               [12] 3430 	inc	r0
      000F63 86 05            [24] 3431 	mov	ar5,@r0
      000F65 8C 1F            [24] 3432 	mov	_VBR_MOUNT_VBR_sloc0_1_0,r4
      000F67 8D 20            [24] 3433 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),r5
      000F69 75 21 00         [24] 3434 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),#0x00
      000F6C 75 22 00         [24] 3435 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),#0x00
      000F6F 78 52            [12] 3436 	mov	r0,#(___global_vbr + 0x0008)
      000F71 86 05            [24] 3437 	mov	ar5,@r0
      000F73 8D 3D            [24] 3438 	mov	__mullong_PARM_2,r5
      000F75 75 3E 00         [24] 3439 	mov	(__mullong_PARM_2 + 1),#0x00
      000F78 75 3F 00         [24] 3440 	mov	(__mullong_PARM_2 + 2),#0x00
      000F7B 75 40 00         [24] 3441 	mov	(__mullong_PARM_2 + 3),#0x00
      000F7E 85 1F 82         [24] 3442 	mov	dpl,_VBR_MOUNT_VBR_sloc0_1_0
      000F81 85 20 83         [24] 3443 	mov	dph,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F84 85 21 F0         [24] 3444 	mov	b,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F87 E5 22            [12] 3445 	mov	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000F89 C0 07            [24] 3446 	push	ar7
      000F8B C0 06            [24] 3447 	push	ar6
      000F8D 12 1D 91         [24] 3448 	lcall	__mullong
      000F90 AA 82            [24] 3449 	mov	r2,dpl
      000F92 AB 83            [24] 3450 	mov	r3,dph
      000F94 AC F0            [24] 3451 	mov	r4,b
      000F96 FD               [12] 3452 	mov	r5,a
      000F97 D0 06            [24] 3453 	pop	ar6
      000F99 D0 07            [24] 3454 	pop	ar7
      000F9B 78 59            [12] 3455 	mov	r0,#(___global_vbr + 0x000f)
      000F9D A6 02            [24] 3456 	mov	@r0,ar2
      000F9F 08               [12] 3457 	inc	r0
      000FA0 A6 03            [24] 3458 	mov	@r0,ar3
      000FA2 08               [12] 3459 	inc	r0
      000FA3 A6 04            [24] 3460 	mov	@r0,ar4
      000FA5 08               [12] 3461 	inc	r0
      000FA6 A6 05            [24] 3462 	mov	@r0,ar5
                                   3463 ;	fat.h:405: __global_vbr.addr_fat_start = __global_vbr.volumeStartSector + __global_vbr.reservedSectors;
      000FA8 78 4A            [12] 3464 	mov	r0,#___global_vbr
      000FAA 86 1F            [24] 3465 	mov	_VBR_MOUNT_VBR_sloc0_1_0,@r0
      000FAC 08               [12] 3466 	inc	r0
      000FAD 86 20            [24] 3467 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),@r0
      000FAF 08               [12] 3468 	inc	r0
      000FB0 86 21            [24] 3469 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),@r0
      000FB2 08               [12] 3470 	inc	r0
      000FB3 86 22            [24] 3471 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),@r0
      000FB5 78 4E            [12] 3472 	mov	r0,#(___global_vbr + 0x0004)
      000FB7 86 04            [24] 3473 	mov	ar4,@r0
      000FB9 08               [12] 3474 	inc	r0
      000FBA 86 05            [24] 3475 	mov	ar5,@r0
      000FBC E4               [12] 3476 	clr	a
      000FBD FB               [12] 3477 	mov	r3,a
      000FBE FA               [12] 3478 	mov	r2,a
      000FBF EC               [12] 3479 	mov	a,r4
      000FC0 25 1F            [12] 3480 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000FC2 F5 1F            [12] 3481 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000FC4 ED               [12] 3482 	mov	a,r5
      000FC5 35 20            [12] 3483 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FC7 F5 20            [12] 3484 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000FC9 EB               [12] 3485 	mov	a,r3
      000FCA 35 21            [12] 3486 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FCC F5 21            [12] 3487 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      000FCE EA               [12] 3488 	mov	a,r2
      000FCF 35 22            [12] 3489 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000FD1 F5 22            [12] 3490 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      000FD3 78 5D            [12] 3491 	mov	r0,#(___global_vbr + 0x0013)
      000FD5 A6 1F            [24] 3492 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      000FD7 08               [12] 3493 	inc	r0
      000FD8 A6 20            [24] 3494 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FDA 08               [12] 3495 	inc	r0
      000FDB A6 21            [24] 3496 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FDD 08               [12] 3497 	inc	r0
      000FDE A6 22            [24] 3498 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3499 ;	fat.h:406: __global_vbr.addr_roote_start = __global_vbr.addr_fat_start + __global_vbr.nfat * __global_vbr.spf;
      000FE0 78 53            [12] 3500 	mov	r0,#(___global_vbr + 0x0009)
      000FE2 86 82            [24] 3501 	mov	dpl,@r0
      000FE4 08               [12] 3502 	inc	r0
      000FE5 86 83            [24] 3503 	mov	dph,@r0
      000FE7 8E 3D            [24] 3504 	mov	__mulint_PARM_2,r6
      000FE9 8F 3E            [24] 3505 	mov	(__mulint_PARM_2 + 1),r7
      000FEB 12 1D 27         [24] 3506 	lcall	__mulint
      000FEE AE 82            [24] 3507 	mov	r6,dpl
      000FF0 AF 83            [24] 3508 	mov	r7,dph
      000FF2 8E 04            [24] 3509 	mov	ar4,r6
      000FF4 8F 05            [24] 3510 	mov	ar5,r7
      000FF6 E4               [12] 3511 	clr	a
      000FF7 FE               [12] 3512 	mov	r6,a
      000FF8 FF               [12] 3513 	mov	r7,a
      000FF9 EC               [12] 3514 	mov	a,r4
      000FFA 25 1F            [12] 3515 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000FFC F5 1F            [12] 3516 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000FFE ED               [12] 3517 	mov	a,r5
      000FFF 35 20            [12] 3518 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001001 F5 20            [12] 3519 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      001003 EE               [12] 3520 	mov	a,r6
      001004 35 21            [12] 3521 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001006 F5 21            [12] 3522 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      001008 EF               [12] 3523 	mov	a,r7
      001009 35 22            [12] 3524 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      00100B F5 22            [12] 3525 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      00100D 78 61            [12] 3526 	mov	r0,#(___global_vbr + 0x0017)
      00100F A6 1F            [24] 3527 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      001011 08               [12] 3528 	inc	r0
      001012 A6 20            [24] 3529 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001014 08               [12] 3530 	inc	r0
      001015 A6 21            [24] 3531 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001017 08               [12] 3532 	inc	r0
      001018 A6 22            [24] 3533 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3534 ;	fat.h:407: __global_vbr.addr_data_start = __global_vbr.addr_roote_start + (__global_vbr.nroote*32)/__global_vbr.bps;
      00101A 78 57            [12] 3535 	mov	r0,#(___global_vbr + 0x000d)
      00101C 86 02            [24] 3536 	mov	ar2,@r0
      00101E 08               [12] 3537 	inc	r0
      00101F 86 03            [24] 3538 	mov	ar3,@r0
      001021 8A 82            [24] 3539 	mov	dpl,r2
      001023 EB               [12] 3540 	mov	a,r3
      001024 C4               [12] 3541 	swap	a
      001025 23               [12] 3542 	rl	a
      001026 54 E0            [12] 3543 	anl	a,#0xe0
      001028 C5 82            [12] 3544 	xch	a,dpl
      00102A C4               [12] 3545 	swap	a
      00102B 23               [12] 3546 	rl	a
      00102C C5 82            [12] 3547 	xch	a,dpl
      00102E 65 82            [12] 3548 	xrl	a,dpl
      001030 C5 82            [12] 3549 	xch	a,dpl
      001032 54 E0            [12] 3550 	anl	a,#0xe0
      001034 C5 82            [12] 3551 	xch	a,dpl
      001036 65 82            [12] 3552 	xrl	a,dpl
      001038 F5 83            [12] 3553 	mov	dph,a
      00103A 78 50            [12] 3554 	mov	r0,#(___global_vbr + 0x0006)
      00103C 86 3D            [24] 3555 	mov	__divuint_PARM_2,@r0
      00103E 08               [12] 3556 	inc	r0
      00103F 86 3E            [24] 3557 	mov	(__divuint_PARM_2 + 1),@r0
      001041 12 1B FB         [24] 3558 	lcall	__divuint
      001044 AA 82            [24] 3559 	mov	r2,dpl
      001046 AB 83            [24] 3560 	mov	r3,dph
      001048 E4               [12] 3561 	clr	a
      001049 FE               [12] 3562 	mov	r6,a
      00104A FF               [12] 3563 	mov	r7,a
      00104B EA               [12] 3564 	mov	a,r2
      00104C 25 1F            [12] 3565 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      00104E FA               [12] 3566 	mov	r2,a
      00104F EB               [12] 3567 	mov	a,r3
      001050 35 20            [12] 3568 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001052 FB               [12] 3569 	mov	r3,a
      001053 EE               [12] 3570 	mov	a,r6
      001054 35 21            [12] 3571 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001056 FE               [12] 3572 	mov	r6,a
      001057 EF               [12] 3573 	mov	a,r7
      001058 35 22            [12] 3574 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      00105A FF               [12] 3575 	mov	r7,a
      00105B 78 65            [12] 3576 	mov	r0,#(___global_vbr + 0x001b)
      00105D A6 02            [24] 3577 	mov	@r0,ar2
      00105F 08               [12] 3578 	inc	r0
      001060 A6 03            [24] 3579 	mov	@r0,ar3
      001062 08               [12] 3580 	inc	r0
      001063 A6 06            [24] 3581 	mov	@r0,ar6
      001065 08               [12] 3582 	inc	r0
      001066 A6 07            [24] 3583 	mov	@r0,ar7
                                   3584 ;	fat.h:415: return 0;
      001068 75 82 00         [24] 3585 	mov	dpl,#0x00
                                   3586 ;	fat.h:417: }
      00106B 22               [24] 3587 	ret
                                   3588 ;------------------------------------------------------------
                                   3589 ;Allocation info for local variables in function 'VBR_FAT16_CHECK_COMPATIBILITY'
                                   3590 ;------------------------------------------------------------
                                   3591 ;partition_number          Allocated to registers r7 
                                   3592 ;------------------------------------------------------------
                                   3593 ;	fat.h:419: uint8_t VBR_FAT16_CHECK_COMPATIBILITY(uint8_t partition_number)
                                   3594 ;	-----------------------------------------
                                   3595 ;	 function VBR_FAT16_CHECK_COMPATIBILITY
                                   3596 ;	-----------------------------------------
      00106C                       3597 _VBR_FAT16_CHECK_COMPATIBILITY:
                                   3598 ;	fat.h:425: if(VBR_MOUNT_VBR(partition_number))
      00106C 12 0E 50         [24] 3599 	lcall	_VBR_MOUNT_VBR
      00106F E5 82            [12] 3600 	mov	a,dpl
      001071 60 04            [24] 3601 	jz	00102$
                                   3602 ;	fat.h:427: return 1; //error
      001073 75 82 01         [24] 3603 	mov	dpl,#0x01
      001076 22               [24] 3604 	ret
      001077                       3605 00102$:
                                   3606 ;	fat.h:430: if(__global_vbr.bps!=SD_BLOCK_SIZE) 
      001077 78 50            [12] 3607 	mov	r0,#(___global_vbr + 0x0006)
      001079 86 06            [24] 3608 	mov	ar6,@r0
      00107B 08               [12] 3609 	inc	r0
      00107C 86 07            [24] 3610 	mov	ar7,@r0
      00107E BE 00 05         [24] 3611 	cjne	r6,#0x00,00116$
      001081 BF 02 02         [24] 3612 	cjne	r7,#0x02,00116$
      001084 80 04            [24] 3613 	sjmp	00104$
      001086                       3614 00116$:
                                   3615 ;	fat.h:435: return 2; //error - not supported fat16
      001086 75 82 02         [24] 3616 	mov	dpl,#0x02
      001089 22               [24] 3617 	ret
      00108A                       3618 00104$:
                                   3619 ;	fat.h:438: return 0;
      00108A 75 82 00         [24] 3620 	mov	dpl,#0x00
                                   3621 ;	fat.h:439: }
      00108D 22               [24] 3622 	ret
                                   3623 ;------------------------------------------------------------
                                   3624 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_DUMP'
                                   3625 ;------------------------------------------------------------
                                   3626 ;i                         Allocated to registers r7 
                                   3627 ;i                         Allocated to registers r7 
                                   3628 ;------------------------------------------------------------
                                   3629 ;	fat.h:442: void FAT16_ROOTENTRY_DUMP()
                                   3630 ;	-----------------------------------------
                                   3631 ;	 function FAT16_ROOTENTRY_DUMP
                                   3632 ;	-----------------------------------------
      00108E                       3633 _FAT16_ROOTENTRY_DUMP:
                                   3634 ;	fat.h:444: UartPrint("\nROOT_ENTRY_INDEX:");
      00108E 90 1E F1         [24] 3635 	mov	dptr,#___str_2
      001091 75 F0 80         [24] 3636 	mov	b,#0x80
      001094 12 01 84         [24] 3637 	lcall	_UartPrint
                                   3638 ;	fat.h:445: UartPrintNumber(__global_rootEntry.entry_index);
      001097 78 7C            [12] 3639 	mov	r0,#(___global_rootEntry + 0x0012)
      001099 86 06            [24] 3640 	mov	ar6,@r0
      00109B 08               [12] 3641 	inc	r0
      00109C 86 07            [24] 3642 	mov	ar7,@r0
      00109E 7D 00            [12] 3643 	mov	r5,#0x00
      0010A0 7C 00            [12] 3644 	mov	r4,#0x00
      0010A2 8E 82            [24] 3645 	mov	dpl,r6
      0010A4 8F 83            [24] 3646 	mov	dph,r7
      0010A6 8D F0            [24] 3647 	mov	b,r5
      0010A8 EC               [12] 3648 	mov	a,r4
      0010A9 12 02 CA         [24] 3649 	lcall	_UartPrintNumber
                                   3650 ;	fat.h:446: UartPrint("\nFILE: ");
      0010AC 90 1F 04         [24] 3651 	mov	dptr,#___str_3
      0010AF 75 F0 80         [24] 3652 	mov	b,#0x80
      0010B2 12 01 84         [24] 3653 	lcall	_UartPrint
                                   3654 ;	fat.h:447: for(uint8_t i=0;i<8;i++)UartWrite(__global_rootEntry.name[i]);
      0010B5 7F 00            [12] 3655 	mov	r7,#0x00
      0010B7                       3656 00104$:
      0010B7 BF 08 00         [24] 3657 	cjne	r7,#0x08,00129$
      0010BA                       3658 00129$:
      0010BA 50 10            [24] 3659 	jnc	00101$
      0010BC EF               [12] 3660 	mov	a,r7
      0010BD 24 6A            [12] 3661 	add	a,#___global_rootEntry
      0010BF F9               [12] 3662 	mov	r1,a
      0010C0 87 82            [24] 3663 	mov	dpl,@r1
      0010C2 C0 07            [24] 3664 	push	ar7
      0010C4 12 00 FE         [24] 3665 	lcall	_UartWrite
      0010C7 D0 07            [24] 3666 	pop	ar7
      0010C9 0F               [12] 3667 	inc	r7
      0010CA 80 EB            [24] 3668 	sjmp	00104$
      0010CC                       3669 00101$:
                                   3670 ;	fat.h:448: for(uint8_t i=0;i<3;i++)UartWrite(__global_rootEntry.extension[i]);
      0010CC 7F 00            [12] 3671 	mov	r7,#0x00
      0010CE                       3672 00107$:
      0010CE BF 03 00         [24] 3673 	cjne	r7,#0x03,00131$
      0010D1                       3674 00131$:
      0010D1 50 10            [24] 3675 	jnc	00102$
      0010D3 EF               [12] 3676 	mov	a,r7
      0010D4 24 72            [12] 3677 	add	a,#(___global_rootEntry + 0x0008)
      0010D6 F9               [12] 3678 	mov	r1,a
      0010D7 87 82            [24] 3679 	mov	dpl,@r1
      0010D9 C0 07            [24] 3680 	push	ar7
      0010DB 12 00 FE         [24] 3681 	lcall	_UartWrite
      0010DE D0 07            [24] 3682 	pop	ar7
      0010E0 0F               [12] 3683 	inc	r7
      0010E1 80 EB            [24] 3684 	sjmp	00107$
      0010E3                       3685 00102$:
                                   3686 ;	fat.h:449: UartPrint("\nSTART: ");
      0010E3 90 1F 0C         [24] 3687 	mov	dptr,#___str_4
      0010E6 75 F0 80         [24] 3688 	mov	b,#0x80
      0010E9 12 01 84         [24] 3689 	lcall	_UartPrint
                                   3690 ;	fat.h:450: UartPrintNumber(__global_rootEntry.startCluster);
      0010EC 78 76            [12] 3691 	mov	r0,#(___global_rootEntry + 0x000c)
      0010EE 86 06            [24] 3692 	mov	ar6,@r0
      0010F0 08               [12] 3693 	inc	r0
      0010F1 86 07            [24] 3694 	mov	ar7,@r0
      0010F3 7D 00            [12] 3695 	mov	r5,#0x00
      0010F5 7C 00            [12] 3696 	mov	r4,#0x00
      0010F7 8E 82            [24] 3697 	mov	dpl,r6
      0010F9 8F 83            [24] 3698 	mov	dph,r7
      0010FB 8D F0            [24] 3699 	mov	b,r5
      0010FD EC               [12] 3700 	mov	a,r4
      0010FE 12 02 CA         [24] 3701 	lcall	_UartPrintNumber
                                   3702 ;	fat.h:451: UartPrint("\nSIZE: ");
      001101 90 1F 15         [24] 3703 	mov	dptr,#___str_5
      001104 75 F0 80         [24] 3704 	mov	b,#0x80
      001107 12 01 84         [24] 3705 	lcall	_UartPrint
                                   3706 ;	fat.h:452: UartPrintNumber(__global_rootEntry.size);			
      00110A 78 78            [12] 3707 	mov	r0,#(___global_rootEntry + 0x000e)
      00110C 86 04            [24] 3708 	mov	ar4,@r0
      00110E 08               [12] 3709 	inc	r0
      00110F 86 05            [24] 3710 	mov	ar5,@r0
      001111 08               [12] 3711 	inc	r0
      001112 86 06            [24] 3712 	mov	ar6,@r0
      001114 08               [12] 3713 	inc	r0
      001115 86 07            [24] 3714 	mov	ar7,@r0
      001117 8C 82            [24] 3715 	mov	dpl,r4
      001119 8D 83            [24] 3716 	mov	dph,r5
      00111B 8E F0            [24] 3717 	mov	b,r6
      00111D EF               [12] 3718 	mov	a,r7
      00111E 12 02 CA         [24] 3719 	lcall	_UartPrintNumber
                                   3720 ;	fat.h:453: UartPrint("\nATTR: 0x");
      001121 90 1F 1D         [24] 3721 	mov	dptr,#___str_6
      001124 75 F0 80         [24] 3722 	mov	b,#0x80
      001127 12 01 84         [24] 3723 	lcall	_UartPrint
                                   3724 ;	fat.h:454: UartWriteNumber(__global_rootEntry.attributes,HEX);			
      00112A 78 75            [12] 3725 	mov	r0,#(___global_rootEntry + 0x000b)
      00112C 86 82            [24] 3726 	mov	dpl,@r0
      00112E E4               [12] 3727 	clr	a
      00112F C0 E0            [24] 3728 	push	acc
      001131 12 01 B6         [24] 3729 	lcall	_UartWriteNumber
      001134 15 81            [12] 3730 	dec	sp
                                   3731 ;	fat.h:455: UartWrite('\n\n');
      001136 75 82 0A         [24] 3732 	mov	dpl,#0x0a
                                   3733 ;	fat.h:456: }
      001139 02 00 FE         [24] 3734 	ljmp	_UartWrite
                                   3735 ;------------------------------------------------------------
                                   3736 ;Allocation info for local variables in function 'FAT16_LOAD_ROOTENTRY'
                                   3737 ;------------------------------------------------------------
                                   3738 ;roote_number              Allocated with name '_FAT16_LOAD_ROOTENTRY_roote_number_65536_150'
                                   3739 ;i                         Allocated to registers r7 
                                   3740 ;i                         Allocated to registers r7 
                                   3741 ;sloc0                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc0_1_0'
                                   3742 ;sloc1                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc1_1_0'
                                   3743 ;temp                      Allocated with name '_FAT16_LOAD_ROOTENTRY_temp_65536_151'
                                   3744 ;sector_of_given_roote     Allocated to registers r2 r3 r4 r5 
                                   3745 ;offset_in_this_sector     Allocated to registers r6 r7 
                                   3746 ;------------------------------------------------------------
                                   3747 ;	fat.h:466: uint8_t FAT16_LOAD_ROOTENTRY(uint16_t roote_number)
                                   3748 ;	-----------------------------------------
                                   3749 ;	 function FAT16_LOAD_ROOTENTRY
                                   3750 ;	-----------------------------------------
      00113C                       3751 _FAT16_LOAD_ROOTENTRY:
      00113C 85 82 23         [24] 3752 	mov	_FAT16_LOAD_ROOTENTRY_roote_number_65536_150,dpl
      00113F 85 83 24         [24] 3753 	mov	(_FAT16_LOAD_ROOTENTRY_roote_number_65536_150 + 1),dph
                                   3754 ;	fat.h:475: if(roote_number < __global_vbr.nroote);//pass
      001142 78 57            [12] 3755 	mov	r0,#(___global_vbr + 0x000d)
      001144 86 04            [24] 3756 	mov	ar4,@r0
      001146 08               [12] 3757 	inc	r0
      001147 86 05            [24] 3758 	mov	ar5,@r0
      001149 C3               [12] 3759 	clr	c
      00114A E5 23            [12] 3760 	mov	a,_FAT16_LOAD_ROOTENTRY_roote_number_65536_150
      00114C 9C               [12] 3761 	subb	a,r4
      00114D E5 24            [12] 3762 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_150 + 1)
      00114F 9D               [12] 3763 	subb	a,r5
      001150 40 04            [24] 3764 	jc	00103$
                                   3765 ;	fat.h:476: else return 1; // error as roote_number is more than number of root entries present in rootentry table 
      001152 75 82 01         [24] 3766 	mov	dpl,#0x01
      001155 22               [24] 3767 	ret
      001156                       3768 00103$:
                                   3769 ;	fat.h:478: VBR_MOUNT_VBR(__global_nthPartitionVBRmounted);
      001156 78 69            [12] 3770 	mov	r0,#___global_nthPartitionVBRmounted
      001158 86 82            [24] 3771 	mov	dpl,@r0
      00115A 12 0E 50         [24] 3772 	lcall	_VBR_MOUNT_VBR
                                   3773 ;	fat.h:481: sector_of_given_roote = __global_vbr.addr_roote_start + (roote_number*32)/__global_vbr.bps;
      00115D 78 61            [12] 3774 	mov	r0,#(___global_vbr + 0x0017)
      00115F 86 25            [24] 3775 	mov	_FAT16_LOAD_ROOTENTRY_sloc0_1_0,@r0
      001161 08               [12] 3776 	inc	r0
      001162 86 26            [24] 3777 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1),@r0
      001164 08               [12] 3778 	inc	r0
      001165 86 27            [24] 3779 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2),@r0
      001167 08               [12] 3780 	inc	r0
      001168 86 28            [24] 3781 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3),@r0
      00116A AE 23            [24] 3782 	mov	r6,_FAT16_LOAD_ROOTENTRY_roote_number_65536_150
      00116C E5 24            [12] 3783 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_150 + 1)
      00116E C4               [12] 3784 	swap	a
      00116F 23               [12] 3785 	rl	a
      001170 54 E0            [12] 3786 	anl	a,#0xe0
      001172 CE               [12] 3787 	xch	a,r6
      001173 C4               [12] 3788 	swap	a
      001174 23               [12] 3789 	rl	a
      001175 CE               [12] 3790 	xch	a,r6
      001176 6E               [12] 3791 	xrl	a,r6
      001177 CE               [12] 3792 	xch	a,r6
      001178 54 E0            [12] 3793 	anl	a,#0xe0
      00117A CE               [12] 3794 	xch	a,r6
      00117B 6E               [12] 3795 	xrl	a,r6
      00117C FF               [12] 3796 	mov	r7,a
      00117D 78 50            [12] 3797 	mov	r0,#(___global_vbr + 0x0006)
      00117F 86 29            [24] 3798 	mov	_FAT16_LOAD_ROOTENTRY_sloc1_1_0,@r0
      001181 08               [12] 3799 	inc	r0
      001182 86 2A            [24] 3800 	mov	(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1),@r0
      001184 85 29 3D         [24] 3801 	mov	__divuint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      001187 85 2A 3E         [24] 3802 	mov	(__divuint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      00118A 8E 82            [24] 3803 	mov	dpl,r6
      00118C 8F 83            [24] 3804 	mov	dph,r7
      00118E C0 07            [24] 3805 	push	ar7
      001190 C0 06            [24] 3806 	push	ar6
      001192 12 1B FB         [24] 3807 	lcall	__divuint
      001195 AA 82            [24] 3808 	mov	r2,dpl
      001197 AB 83            [24] 3809 	mov	r3,dph
      001199 D0 06            [24] 3810 	pop	ar6
      00119B D0 07            [24] 3811 	pop	ar7
      00119D E4               [12] 3812 	clr	a
      00119E FC               [12] 3813 	mov	r4,a
      00119F FD               [12] 3814 	mov	r5,a
      0011A0 EA               [12] 3815 	mov	a,r2
      0011A1 25 25            [12] 3816 	add	a,_FAT16_LOAD_ROOTENTRY_sloc0_1_0
      0011A3 FA               [12] 3817 	mov	r2,a
      0011A4 EB               [12] 3818 	mov	a,r3
      0011A5 35 26            [12] 3819 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1)
      0011A7 FB               [12] 3820 	mov	r3,a
      0011A8 EC               [12] 3821 	mov	a,r4
      0011A9 35 27            [12] 3822 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2)
      0011AB FC               [12] 3823 	mov	r4,a
      0011AC ED               [12] 3824 	mov	a,r5
      0011AD 35 28            [12] 3825 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3)
      0011AF FD               [12] 3826 	mov	r5,a
                                   3827 ;	fat.h:482: offset_in_this_sector = (roote_number*32)%__global_vbr.bps;
      0011B0 85 29 3D         [24] 3828 	mov	__moduint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      0011B3 85 2A 3E         [24] 3829 	mov	(__moduint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      0011B6 8E 82            [24] 3830 	mov	dpl,r6
      0011B8 8F 83            [24] 3831 	mov	dph,r7
      0011BA C0 05            [24] 3832 	push	ar5
      0011BC C0 04            [24] 3833 	push	ar4
      0011BE C0 03            [24] 3834 	push	ar3
      0011C0 C0 02            [24] 3835 	push	ar2
      0011C2 12 1D 44         [24] 3836 	lcall	__moduint
      0011C5 AE 82            [24] 3837 	mov	r6,dpl
      0011C7 AF 83            [24] 3838 	mov	r7,dph
      0011C9 D0 02            [24] 3839 	pop	ar2
      0011CB D0 03            [24] 3840 	pop	ar3
      0011CD D0 04            [24] 3841 	pop	ar4
      0011CF D0 05            [24] 3842 	pop	ar5
                                   3843 ;	fat.h:484: SDread(sector_of_given_roote,offset_in_this_sector,32,temp);
      0011D1 74 A2            [12] 3844 	mov	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_151
      0011D3 C0 E0            [24] 3845 	push	acc
      0011D5 74 00            [12] 3846 	mov	a,#(_FAT16_LOAD_ROOTENTRY_temp_65536_151 >> 8)
      0011D7 C0 E0            [24] 3847 	push	acc
      0011D9 74 40            [12] 3848 	mov	a,#0x40
      0011DB C0 E0            [24] 3849 	push	acc
      0011DD 03               [12] 3850 	rr	a
      0011DE C0 E0            [24] 3851 	push	acc
      0011E0 E4               [12] 3852 	clr	a
      0011E1 C0 E0            [24] 3853 	push	acc
      0011E3 C0 06            [24] 3854 	push	ar6
      0011E5 C0 07            [24] 3855 	push	ar7
      0011E7 8A 82            [24] 3856 	mov	dpl,r2
      0011E9 8B 83            [24] 3857 	mov	dph,r3
      0011EB 8C F0            [24] 3858 	mov	b,r4
      0011ED ED               [12] 3859 	mov	a,r5
      0011EE 12 07 47         [24] 3860 	lcall	_SDread
      0011F1 E5 81            [12] 3861 	mov	a,sp
      0011F3 24 F9            [12] 3862 	add	a,#0xf9
      0011F5 F5 81            [12] 3863 	mov	sp,a
                                   3864 ;	fat.h:486: __global_rootEntry.entry_index = roote_number; //save the index of the root_entry
      0011F7 78 7C            [12] 3865 	mov	r0,#(___global_rootEntry + 0x0012)
      0011F9 A6 23            [24] 3866 	mov	@r0,_FAT16_LOAD_ROOTENTRY_roote_number_65536_150
      0011FB 08               [12] 3867 	inc	r0
      0011FC A6 24            [24] 3868 	mov	@r0,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_150 + 1)
                                   3869 ;	fat.h:487: __global_rootEntry.bytes_read = 0; //no bytes has been read so far by FAT16_FILE_READ as we have just loaded the rootentry
      0011FE 78 7E            [12] 3870 	mov	r0,#(___global_rootEntry + 0x0014)
      001200 76 00            [12] 3871 	mov	@r0,#0x00
      001202 08               [12] 3872 	inc	r0
      001203 76 00            [12] 3873 	mov	@r0,#0x00
      001205 08               [12] 3874 	inc	r0
      001206 76 00            [12] 3875 	mov	@r0,#0x00
      001208 08               [12] 3876 	inc	r0
      001209 76 00            [12] 3877 	mov	@r0,#0x00
                                   3878 ;	fat.h:489: for(uint8_t i=0;i<8;i++) __global_rootEntry.name[i] = temp[i];
      00120B 7F 00            [12] 3879 	mov	r7,#0x00
      00120D                       3880 00107$:
      00120D BF 08 00         [24] 3881 	cjne	r7,#0x08,00137$
      001210                       3882 00137$:
      001210 50 0F            [24] 3883 	jnc	00104$
      001212 EF               [12] 3884 	mov	a,r7
      001213 24 6A            [12] 3885 	add	a,#___global_rootEntry
      001215 F9               [12] 3886 	mov	r1,a
      001216 EF               [12] 3887 	mov	a,r7
      001217 24 A2            [12] 3888 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_151
      001219 F8               [12] 3889 	mov	r0,a
      00121A 86 06            [24] 3890 	mov	ar6,@r0
      00121C A7 06            [24] 3891 	mov	@r1,ar6
      00121E 0F               [12] 3892 	inc	r7
      00121F 80 EC            [24] 3893 	sjmp	00107$
      001221                       3894 00104$:
                                   3895 ;	fat.h:490: for(uint8_t i=8;i<11;i++) __global_rootEntry.extension[i-8] = temp[i];
      001221 7F 08            [12] 3896 	mov	r7,#0x08
      001223                       3897 00110$:
      001223 BF 0B 00         [24] 3898 	cjne	r7,#0x0b,00139$
      001226                       3899 00139$:
      001226 50 13            [24] 3900 	jnc	00105$
      001228 8F 06            [24] 3901 	mov	ar6,r7
      00122A EE               [12] 3902 	mov	a,r6
      00122B 24 F8            [12] 3903 	add	a,#0xf8
      00122D 24 72            [12] 3904 	add	a,#(___global_rootEntry + 0x0008)
      00122F F9               [12] 3905 	mov	r1,a
      001230 EF               [12] 3906 	mov	a,r7
      001231 24 A2            [12] 3907 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_151
      001233 F8               [12] 3908 	mov	r0,a
      001234 86 06            [24] 3909 	mov	ar6,@r0
      001236 A7 06            [24] 3910 	mov	@r1,ar6
      001238 0F               [12] 3911 	inc	r7
      001239 80 E8            [24] 3912 	sjmp	00110$
      00123B                       3913 00105$:
                                   3914 ;	fat.h:492: __global_rootEntry.attributes = temp[0x0b];
      00123B 78 AD            [12] 3915 	mov	r0,#(_FAT16_LOAD_ROOTENTRY_temp_65536_151 + 0x000b)
      00123D 86 07            [24] 3916 	mov	ar7,@r0
      00123F 78 75            [12] 3917 	mov	r0,#(___global_rootEntry + 0x000b)
      001241 A6 07            [24] 3918 	mov	@r0,ar7
                                   3919 ;	fat.h:493: __global_rootEntry.startCluster = HELPER_load_littleendian16(&temp[0x1a]);
      001243 90 00 BC         [24] 3920 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_151 + 0x001a)
      001246 75 F0 40         [24] 3921 	mov	b,#0x40
      001249 12 08 8D         [24] 3922 	lcall	_HELPER_load_littleendian16
      00124C E5 82            [12] 3923 	mov	a,dpl
      00124E 85 83 F0         [24] 3924 	mov	b,dph
      001251 78 76            [12] 3925 	mov	r0,#(___global_rootEntry + 0x000c)
      001253 F6               [12] 3926 	mov	@r0,a
      001254 08               [12] 3927 	inc	r0
      001255 A6 F0            [24] 3928 	mov	@r0,b
                                   3929 ;	fat.h:494: __global_rootEntry.size = HELPER_load_littleendian32(&temp[0x1c]);
      001257 90 00 BE         [24] 3930 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_151 + 0x001c)
      00125A 75 F0 40         [24] 3931 	mov	b,#0x40
      00125D 12 08 BB         [24] 3932 	lcall	_HELPER_load_littleendian32
      001260 AC 82            [24] 3933 	mov	r4,dpl
      001262 AD 83            [24] 3934 	mov	r5,dph
      001264 AE F0            [24] 3935 	mov	r6,b
      001266 FF               [12] 3936 	mov	r7,a
      001267 78 78            [12] 3937 	mov	r0,#(___global_rootEntry + 0x000e)
      001269 A6 04            [24] 3938 	mov	@r0,ar4
      00126B 08               [12] 3939 	inc	r0
      00126C A6 05            [24] 3940 	mov	@r0,ar5
      00126E 08               [12] 3941 	inc	r0
      00126F A6 06            [24] 3942 	mov	@r0,ar6
      001271 08               [12] 3943 	inc	r0
      001272 A6 07            [24] 3944 	mov	@r0,ar7
                                   3945 ;	fat.h:496: return 0;
      001274 75 82 00         [24] 3946 	mov	dpl,#0x00
                                   3947 ;	fat.h:497: }
      001277 22               [24] 3948 	ret
                                   3949 ;------------------------------------------------------------
                                   3950 ;Allocation info for local variables in function 'FAT16_IS_ROOTENTRY_VALID_FILE'
                                   3951 ;------------------------------------------------------------
                                   3952 ;	fat.h:498: uint8_t FAT16_IS_ROOTENTRY_VALID_FILE()
                                   3953 ;	-----------------------------------------
                                   3954 ;	 function FAT16_IS_ROOTENTRY_VALID_FILE
                                   3955 ;	-----------------------------------------
      001278                       3956 _FAT16_IS_ROOTENTRY_VALID_FILE:
                                   3957 ;	fat.h:501: if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_AVAILABLE)
      001278 78 6A            [12] 3958 	mov	r0,#___global_rootEntry
      00127A E6               [12] 3959 	mov	a,@r0
      00127B FF               [12] 3960 	mov	r7,a
      00127C 70 04            [24] 3961 	jnz	00112$
                                   3962 ;	fat.h:506: return 255; //no more entries, stop scanning
      00127E 75 82 FF         [24] 3963 	mov	dpl,#0xff
      001281 22               [24] 3964 	ret
      001282                       3965 00112$:
                                   3966 ;	fat.h:508: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DELETED)
      001282 BF E5 04         [24] 3967 	cjne	r7,#0xe5,00109$
                                   3968 ;	fat.h:514: return FAT16_ROOTENTRY_DELETED; //deleted and available
      001285 75 82 E5         [24] 3969 	mov	dpl,#0xe5
      001288 22               [24] 3970 	ret
      001289                       3971 00109$:
                                   3972 ;	fat.h:516: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DOT)
      001289 BF 2E 04         [24] 3973 	cjne	r7,#0x2e,00106$
                                   3974 ;	fat.h:521: return FAT16_ROOTENTRY_DOT; //this is the entry to self
      00128C 75 82 2E         [24] 3975 	mov	dpl,#0x2e
      00128F 22               [24] 3976 	ret
      001290                       3977 00106$:
                                   3978 ;	fat.h:526: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_HIDDEN ||
      001290 90 00 6A         [24] 3979 	mov	dptr,#___global_rootEntry
      001293 75 F0 40         [24] 3980 	mov	b,#0x40
      001296 12 0A 16         [24] 3981 	lcall	_HELPER_rootentry_type
      001299 AF 82            [24] 3982 	mov	r7,dpl
      00129B BF 01 02         [24] 3983 	cjne	r7,#0x01,00141$
      00129E 80 1E            [24] 3984 	sjmp	00101$
      0012A0                       3985 00141$:
                                   3986 ;	fat.h:527: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_SYSTEM ||
      0012A0 90 00 6A         [24] 3987 	mov	dptr,#___global_rootEntry
      0012A3 75 F0 40         [24] 3988 	mov	b,#0x40
      0012A6 12 0A 16         [24] 3989 	lcall	_HELPER_rootentry_type
      0012A9 AF 82            [24] 3990 	mov	r7,dpl
      0012AB BF 02 02         [24] 3991 	cjne	r7,#0x02,00142$
      0012AE 80 0E            [24] 3992 	sjmp	00101$
      0012B0                       3993 00142$:
                                   3994 ;	fat.h:528: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_VOLUME
      0012B0 90 00 6A         [24] 3995 	mov	dptr,#___global_rootEntry
      0012B3 75 F0 40         [24] 3996 	mov	b,#0x40
      0012B6 12 0A 16         [24] 3997 	lcall	_HELPER_rootentry_type
      0012B9 AF 82            [24] 3998 	mov	r7,dpl
      0012BB BF 03 04         [24] 3999 	cjne	r7,#0x03,00110$
      0012BE                       4000 00101$:
                                   4001 ;	fat.h:535: return 254;
      0012BE 75 82 FE         [24] 4002 	mov	dpl,#0xfe
      0012C1 22               [24] 4003 	ret
      0012C2                       4004 00110$:
                                   4005 ;	fat.h:538: return 0;
      0012C2 75 82 00         [24] 4006 	mov	dpl,#0x00
                                   4007 ;	fat.h:539: }
      0012C5 22               [24] 4008 	ret
                                   4009 ;------------------------------------------------------------
                                   4010 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_READ'
                                   4011 ;------------------------------------------------------------
                                   4012 ;roote_index               Allocated to registers r6 r7 
                                   4013 ;file_validity             Allocated to registers r7 
                                   4014 ;------------------------------------------------------------
                                   4015 ;	fat.h:542: uint8_t FAT16_ROOTENTRY_READ(uint16_t roote_index)
                                   4016 ;	-----------------------------------------
                                   4017 ;	 function FAT16_ROOTENTRY_READ
                                   4018 ;	-----------------------------------------
      0012C6                       4019 _FAT16_ROOTENTRY_READ:
                                   4020 ;	fat.h:552: if(FAT16_LOAD_ROOTENTRY(roote_index)) // if returns 1, then we have reached the end of the rootentry table
      0012C6 12 11 3C         [24] 4021 	lcall	_FAT16_LOAD_ROOTENTRY
      0012C9 E5 82            [12] 4022 	mov	a,dpl
      0012CB 60 04            [24] 4023 	jz	00102$
                                   4024 ;	fat.h:554: return 0xff; //end of scan
      0012CD 75 82 FF         [24] 4025 	mov	dpl,#0xff
      0012D0 22               [24] 4026 	ret
      0012D1                       4027 00102$:
                                   4028 ;	fat.h:558: file_validity=FAT16_IS_ROOTENTRY_VALID_FILE(); //check validity
      0012D1 12 12 78         [24] 4029 	lcall	_FAT16_IS_ROOTENTRY_VALID_FILE
      0012D4 AF 82            [24] 4030 	mov	r7,dpl
                                   4031 ;	fat.h:560: if(file_validity==255)return 0xff; //end of scan
      0012D6 BF FF 04         [24] 4032 	cjne	r7,#0xff,00106$
      0012D9 75 82 FF         [24] 4033 	mov	dpl,#0xff
      0012DC 22               [24] 4034 	ret
      0012DD                       4035 00106$:
                                   4036 ;	fat.h:561: else if(file_validity==0)
      0012DD EF               [12] 4037 	mov	a,r7
                                   4038 ;	fat.h:567: return 0;
      0012DE 70 03            [24] 4039 	jnz	00107$
      0012E0 F5 82            [12] 4040 	mov	dpl,a
      0012E2 22               [24] 4041 	ret
      0012E3                       4042 00107$:
                                   4043 ;	fat.h:570: return 1; //invalid file if context reaches here
      0012E3 75 82 01         [24] 4044 	mov	dpl,#0x01
                                   4045 ;	fat.h:573: }
      0012E6 22               [24] 4046 	ret
                                   4047 ;------------------------------------------------------------
                                   4048 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN_RESET'
                                   4049 ;------------------------------------------------------------
                                   4050 ;	fat.h:575: void FAT16_ROOTENTRY_SCAN_RESET()
                                   4051 ;	-----------------------------------------
                                   4052 ;	 function FAT16_ROOTENTRY_SCAN_RESET
                                   4053 ;	-----------------------------------------
      0012E7                       4054 _FAT16_ROOTENTRY_SCAN_RESET:
                                   4055 ;	fat.h:577: __global_rootEntry.entry_index=0xffff; // in FAT16, maximum number of root entries can never reach 0xffff.
      0012E7 78 7C            [12] 4056 	mov	r0,#(___global_rootEntry + 0x0012)
      0012E9 76 FF            [12] 4057 	mov	@r0,#0xff
      0012EB 08               [12] 4058 	inc	r0
      0012EC 76 FF            [12] 4059 	mov	@r0,#0xff
                                   4060 ;	fat.h:583: __global_rootEntry.attributes |= 1<<FILETYPE_SYSTEM;
      0012EE 78 75            [12] 4061 	mov	r0,#(___global_rootEntry + 0x000b)
      0012F0 86 07            [24] 4062 	mov	ar7,@r0
      0012F2 74 04            [12] 4063 	mov	a,#0x04
      0012F4 4F               [12] 4064 	orl	a,r7
      0012F5 78 75            [12] 4065 	mov	r0,#(___global_rootEntry + 0x000b)
      0012F7 F6               [12] 4066 	mov	@r0,a
                                   4067 ;	fat.h:584: }
      0012F8 22               [24] 4068 	ret
                                   4069 ;------------------------------------------------------------
                                   4070 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN'
                                   4071 ;------------------------------------------------------------
                                   4072 ;validity                  Allocated to registers r7 
                                   4073 ;------------------------------------------------------------
                                   4074 ;	fat.h:586: uint8_t FAT16_ROOTENTRY_SCAN() __reentrant
                                   4075 ;	-----------------------------------------
                                   4076 ;	 function FAT16_ROOTENTRY_SCAN
                                   4077 ;	-----------------------------------------
      0012F9                       4078 _FAT16_ROOTENTRY_SCAN:
                                   4079 ;	fat.h:591: while(1)
      0012F9                       4080 00110$:
                                   4081 ;	fat.h:599: validity=FAT16_ROOTENTRY_READ(__global_rootEntry.entry_index+1); //read the next entry
      0012F9 78 7C            [12] 4082 	mov	r0,#(___global_rootEntry + 0x0012)
      0012FB 86 06            [24] 4083 	mov	ar6,@r0
      0012FD 08               [12] 4084 	inc	r0
      0012FE 86 07            [24] 4085 	mov	ar7,@r0
      001300 8E 82            [24] 4086 	mov	dpl,r6
      001302 8F 83            [24] 4087 	mov	dph,r7
      001304 A3               [24] 4088 	inc	dptr
      001305 12 12 C6         [24] 4089 	lcall	_FAT16_ROOTENTRY_READ
      001308 AF 82            [24] 4090 	mov	r7,dpl
                                   4091 ;	fat.h:601: if ( validity == 255 )
      00130A BF FF 04         [24] 4092 	cjne	r7,#0xff,00107$
                                   4093 ;	fat.h:607: return 255; //end scan
      00130D 75 82 FF         [24] 4094 	mov	dpl,#0xff
      001310 22               [24] 4095 	ret
      001311                       4096 00107$:
                                   4097 ;	fat.h:609: else if (validity == 1) 
      001311 BF 01 02         [24] 4098 	cjne	r7,#0x01,00132$
      001314 80 E3            [24] 4099 	sjmp	00110$
      001316                       4100 00132$:
                                   4101 ;	fat.h:617: else if(validity == 0)
      001316 EF               [12] 4102 	mov	a,r7
                                   4103 ;	fat.h:624: return 0; // found a valid file,break out of the loop
      001317 70 E0            [24] 4104 	jnz	00110$
      001319 F5 82            [12] 4105 	mov	dpl,a
                                   4106 ;	fat.h:631: }
      00131B 22               [24] 4107 	ret
                                   4108 ;------------------------------------------------------------
                                   4109 ;Allocation info for local variables in function 'FAT16_FILE_OPEN'
                                   4110 ;------------------------------------------------------------
                                   4111 ;filename                  Allocated to registers r5 r6 r7 
                                   4112 ;filename83                Allocated to stack - _bp +1
                                   4113 ;------------------------------------------------------------
                                   4114 ;	fat.h:633: uint8_t FAT16_FILE_OPEN(char *filename) __reentrant
                                   4115 ;	-----------------------------------------
                                   4116 ;	 function FAT16_FILE_OPEN
                                   4117 ;	-----------------------------------------
      00131C                       4118 _FAT16_FILE_OPEN:
      00131C C0 3C            [24] 4119 	push	_bp
      00131E E5 81            [12] 4120 	mov	a,sp
      001320 F5 3C            [12] 4121 	mov	_bp,a
      001322 24 0C            [12] 4122 	add	a,#0x0c
      001324 F5 81            [12] 4123 	mov	sp,a
      001326 AD 82            [24] 4124 	mov	r5,dpl
      001328 AE 83            [24] 4125 	mov	r6,dph
      00132A AF F0            [24] 4126 	mov	r7,b
                                   4127 ;	fat.h:639: if(HELPER_filename_to_8dot3filename(filename,filename83)) 
      00132C AC 3C            [24] 4128 	mov	r4,_bp
      00132E 0C               [12] 4129 	inc	r4
      00132F 8C 18            [24] 4130 	mov	_HELPER_filename_to_8dot3filename_PARM_2,r4
      001331 75 19 00         [24] 4131 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 1),#0x00
      001334 75 1A 40         [24] 4132 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 2),#0x40
      001337 8D 82            [24] 4133 	mov	dpl,r5
      001339 8E 83            [24] 4134 	mov	dph,r6
      00133B 8F F0            [24] 4135 	mov	b,r7
      00133D C0 04            [24] 4136 	push	ar4
      00133F 12 0A CF         [24] 4137 	lcall	_HELPER_filename_to_8dot3filename
      001342 E5 82            [12] 4138 	mov	a,dpl
      001344 D0 04            [24] 4139 	pop	ar4
      001346 60 05            [24] 4140 	jz	00102$
                                   4141 ;	fat.h:644: return 1; //invalid filename
      001348 75 82 01         [24] 4142 	mov	dpl,#0x01
      00134B 80 61            [24] 4143 	sjmp	00109$
      00134D                       4144 00102$:
                                   4145 ;	fat.h:647: FAT16_ROOTENTRY_SCAN_RESET();
      00134D C0 04            [24] 4146 	push	ar4
      00134F 12 12 E7         [24] 4147 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
      001352 D0 04            [24] 4148 	pop	ar4
                                   4149 ;	fat.h:648: while(FAT16_ROOTENTRY_SCAN()==0)
      001354 8C 07            [24] 4150 	mov	ar7,r4
      001356 74 08            [12] 4151 	mov	a,#0x08
      001358 2C               [12] 4152 	add	a,r4
      001359 FE               [12] 4153 	mov	r6,a
      00135A                       4154 00106$:
      00135A C0 07            [24] 4155 	push	ar7
      00135C C0 06            [24] 4156 	push	ar6
      00135E 12 12 F9         [24] 4157 	lcall	_FAT16_ROOTENTRY_SCAN
      001361 E5 82            [12] 4158 	mov	a,dpl
      001363 D0 06            [24] 4159 	pop	ar6
      001365 D0 07            [24] 4160 	pop	ar7
                                   4161 ;	fat.h:650: if( HELPER_strncmp(__global_rootEntry.name,filename83,8)==0 && 
      001367 70 42            [24] 4162 	jnz	00108$
      001369 8F 3D            [24] 4163 	mov	_HELPER_strncmp_PARM_2,r7
      00136B F5 3E            [12] 4164 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      00136D 75 3F 40         [24] 4165 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      001370 75 40 08         [24] 4166 	mov	_HELPER_strncmp_PARM_3,#0x08
      001373 90 00 6A         [24] 4167 	mov	dptr,#___global_rootEntry
      001376 75 F0 40         [24] 4168 	mov	b,#0x40
      001379 C0 07            [24] 4169 	push	ar7
      00137B C0 06            [24] 4170 	push	ar6
      00137D 12 09 9F         [24] 4171 	lcall	_HELPER_strncmp
      001380 E5 82            [12] 4172 	mov	a,dpl
      001382 D0 06            [24] 4173 	pop	ar6
      001384 D0 07            [24] 4174 	pop	ar7
                                   4175 ;	fat.h:651: HELPER_strncmp(__global_rootEntry.extension,&filename83[8],3)==0 )
      001386 70 D2            [24] 4176 	jnz	00106$
      001388 8E 3D            [24] 4177 	mov	_HELPER_strncmp_PARM_2,r6
      00138A F5 3E            [12] 4178 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      00138C 75 3F 40         [24] 4179 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      00138F 75 40 03         [24] 4180 	mov	_HELPER_strncmp_PARM_3,#0x03
      001392 90 00 72         [24] 4181 	mov	dptr,#(___global_rootEntry + 0x0008)
      001395 75 F0 40         [24] 4182 	mov	b,#0x40
      001398 C0 07            [24] 4183 	push	ar7
      00139A C0 06            [24] 4184 	push	ar6
      00139C 12 09 9F         [24] 4185 	lcall	_HELPER_strncmp
      00139F E5 82            [12] 4186 	mov	a,dpl
      0013A1 D0 06            [24] 4187 	pop	ar6
      0013A3 D0 07            [24] 4188 	pop	ar7
                                   4189 ;	fat.h:657: return 0; //file found
      0013A5 70 B3            [24] 4190 	jnz	00106$
      0013A7 F5 82            [12] 4191 	mov	dpl,a
      0013A9 80 03            [24] 4192 	sjmp	00109$
      0013AB                       4193 00108$:
                                   4194 ;	fat.h:664: return 2; // file not found
      0013AB 75 82 02         [24] 4195 	mov	dpl,#0x02
      0013AE                       4196 00109$:
                                   4197 ;	fat.h:666: }
      0013AE 85 3C 81         [24] 4198 	mov	sp,_bp
      0013B1 D0 3C            [24] 4199 	pop	_bp
      0013B3 22               [24] 4200 	ret
                                   4201 ;------------------------------------------------------------
                                   4202 ;Allocation info for local variables in function 'FAT16_GET_NEXT_CLUSTER'
                                   4203 ;------------------------------------------------------------
                                   4204 ;current_cluster           Allocated to registers r6 r7 
                                   4205 ;temp                      Allocated to stack - _bp +8
                                   4206 ;sloc0                     Allocated to stack - _bp +1
                                   4207 ;sloc1                     Allocated to stack - _bp +8
                                   4208 ;sloc2                     Allocated to stack - _bp +10
                                   4209 ;sloc3                     Allocated to stack - _bp +4
                                   4210 ;------------------------------------------------------------
                                   4211 ;	fat.h:669: uint16_t FAT16_GET_NEXT_CLUSTER(uint16_t current_cluster) __reentrant
                                   4212 ;	-----------------------------------------
                                   4213 ;	 function FAT16_GET_NEXT_CLUSTER
                                   4214 ;	-----------------------------------------
      0013B4                       4215 _FAT16_GET_NEXT_CLUSTER:
      0013B4 C0 3C            [24] 4216 	push	_bp
      0013B6 E5 81            [12] 4217 	mov	a,sp
      0013B8 F5 3C            [12] 4218 	mov	_bp,a
      0013BA 24 09            [12] 4219 	add	a,#0x09
      0013BC F5 81            [12] 4220 	mov	sp,a
      0013BE AE 82            [24] 4221 	mov	r6,dpl
      0013C0 AF 83            [24] 4222 	mov	r7,dph
                                   4223 ;	fat.h:678: SDread(__global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps, (current_cluster*2) % __global_vbr.bps, 2, temp);
      0013C2 E5 3C            [12] 4224 	mov	a,_bp
      0013C4 24 08            [12] 4225 	add	a,#0x08
      0013C6 F9               [12] 4226 	mov	r1,a
      0013C7 A8 3C            [24] 4227 	mov	r0,_bp
      0013C9 08               [12] 4228 	inc	r0
      0013CA A6 01            [24] 4229 	mov	@r0,ar1
      0013CC 08               [12] 4230 	inc	r0
      0013CD 76 00            [12] 4231 	mov	@r0,#0x00
      0013CF 08               [12] 4232 	inc	r0
      0013D0 76 40            [12] 4233 	mov	@r0,#0x40
      0013D2 EE               [12] 4234 	mov	a,r6
      0013D3 2E               [12] 4235 	add	a,r6
      0013D4 FE               [12] 4236 	mov	r6,a
      0013D5 EF               [12] 4237 	mov	a,r7
      0013D6 33               [12] 4238 	rlc	a
      0013D7 FF               [12] 4239 	mov	r7,a
      0013D8 78 50            [12] 4240 	mov	r0,#(___global_vbr + 0x0006)
      0013DA 86 05            [24] 4241 	mov	ar5,@r0
      0013DC 08               [12] 4242 	inc	r0
      0013DD 86 04            [24] 4243 	mov	ar4,@r0
      0013DF 8D 3D            [24] 4244 	mov	__moduint_PARM_2,r5
      0013E1 8C 3E            [24] 4245 	mov	(__moduint_PARM_2 + 1),r4
      0013E3 8E 82            [24] 4246 	mov	dpl,r6
      0013E5 8F 83            [24] 4247 	mov	dph,r7
      0013E7 C0 07            [24] 4248 	push	ar7
      0013E9 C0 06            [24] 4249 	push	ar6
      0013EB C0 05            [24] 4250 	push	ar5
      0013ED C0 04            [24] 4251 	push	ar4
      0013EF C0 01            [24] 4252 	push	ar1
      0013F1 12 1D 44         [24] 4253 	lcall	__moduint
      0013F4 AB 82            [24] 4254 	mov	r3,dpl
      0013F6 AA 83            [24] 4255 	mov	r2,dph
      0013F8 D0 01            [24] 4256 	pop	ar1
      0013FA D0 04            [24] 4257 	pop	ar4
      0013FC D0 05            [24] 4258 	pop	ar5
      0013FE D0 06            [24] 4259 	pop	ar6
      001400 D0 07            [24] 4260 	pop	ar7
      001402 E5 3C            [12] 4261 	mov	a,_bp
      001404 24 04            [12] 4262 	add	a,#0x04
      001406 F8               [12] 4263 	mov	r0,a
      001407 C0 01            [24] 4264 	push	ar1
      001409 79 5D            [12] 4265 	mov	r1,#(___global_vbr + 0x0013)
      00140B E7               [12] 4266 	mov	a,@r1
      00140C F6               [12] 4267 	mov	@r0,a
      00140D 09               [12] 4268 	inc	r1
      00140E E7               [12] 4269 	mov	a,@r1
      00140F 08               [12] 4270 	inc	r0
      001410 F6               [12] 4271 	mov	@r0,a
      001411 09               [12] 4272 	inc	r1
      001412 E7               [12] 4273 	mov	a,@r1
      001413 08               [12] 4274 	inc	r0
      001414 F6               [12] 4275 	mov	@r0,a
      001415 09               [12] 4276 	inc	r1
      001416 E7               [12] 4277 	mov	a,@r1
      001417 08               [12] 4278 	inc	r0
      001418 F6               [12] 4279 	mov	@r0,a
      001419 D0 01            [24] 4280 	pop	ar1
      00141B 8D 3D            [24] 4281 	mov	__divuint_PARM_2,r5
      00141D 8C 3E            [24] 4282 	mov	(__divuint_PARM_2 + 1),r4
      00141F 8E 82            [24] 4283 	mov	dpl,r6
      001421 8F 83            [24] 4284 	mov	dph,r7
      001423 C0 03            [24] 4285 	push	ar3
      001425 C0 02            [24] 4286 	push	ar2
      001427 C0 01            [24] 4287 	push	ar1
      001429 12 1B FB         [24] 4288 	lcall	__divuint
      00142C AE 82            [24] 4289 	mov	r6,dpl
      00142E AF 83            [24] 4290 	mov	r7,dph
      001430 D0 01            [24] 4291 	pop	ar1
      001432 D0 02            [24] 4292 	pop	ar2
      001434 D0 03            [24] 4293 	pop	ar3
      001436 8E 04            [24] 4294 	mov	ar4,r6
      001438 8F 05            [24] 4295 	mov	ar5,r7
      00143A E4               [12] 4296 	clr	a
      00143B FE               [12] 4297 	mov	r6,a
      00143C FF               [12] 4298 	mov	r7,a
      00143D E5 3C            [12] 4299 	mov	a,_bp
      00143F 24 04            [12] 4300 	add	a,#0x04
      001441 F8               [12] 4301 	mov	r0,a
      001442 EC               [12] 4302 	mov	a,r4
      001443 26               [12] 4303 	add	a,@r0
      001444 FC               [12] 4304 	mov	r4,a
      001445 ED               [12] 4305 	mov	a,r5
      001446 08               [12] 4306 	inc	r0
      001447 36               [12] 4307 	addc	a,@r0
      001448 FD               [12] 4308 	mov	r5,a
      001449 EE               [12] 4309 	mov	a,r6
      00144A 08               [12] 4310 	inc	r0
      00144B 36               [12] 4311 	addc	a,@r0
      00144C FE               [12] 4312 	mov	r6,a
      00144D EF               [12] 4313 	mov	a,r7
      00144E 08               [12] 4314 	inc	r0
      00144F 36               [12] 4315 	addc	a,@r0
      001450 FF               [12] 4316 	mov	r7,a
      001451 C0 01            [24] 4317 	push	ar1
      001453 A8 3C            [24] 4318 	mov	r0,_bp
      001455 08               [12] 4319 	inc	r0
      001456 E6               [12] 4320 	mov	a,@r0
      001457 C0 E0            [24] 4321 	push	acc
      001459 08               [12] 4322 	inc	r0
      00145A E6               [12] 4323 	mov	a,@r0
      00145B C0 E0            [24] 4324 	push	acc
      00145D 08               [12] 4325 	inc	r0
      00145E E6               [12] 4326 	mov	a,@r0
      00145F C0 E0            [24] 4327 	push	acc
      001461 74 02            [12] 4328 	mov	a,#0x02
      001463 C0 E0            [24] 4329 	push	acc
      001465 E4               [12] 4330 	clr	a
      001466 C0 E0            [24] 4331 	push	acc
      001468 C0 03            [24] 4332 	push	ar3
      00146A C0 02            [24] 4333 	push	ar2
      00146C 8C 82            [24] 4334 	mov	dpl,r4
      00146E 8D 83            [24] 4335 	mov	dph,r5
      001470 8E F0            [24] 4336 	mov	b,r6
      001472 EF               [12] 4337 	mov	a,r7
      001473 12 07 47         [24] 4338 	lcall	_SDread
      001476 E5 81            [12] 4339 	mov	a,sp
      001478 24 F9            [12] 4340 	add	a,#0xf9
      00147A F5 81            [12] 4341 	mov	sp,a
      00147C D0 01            [24] 4342 	pop	ar1
                                   4343 ;	fat.h:679: return (uint16_t)temp[1] << 8 | temp[0]; 
      00147E E9               [12] 4344 	mov	a,r1
      00147F 04               [12] 4345 	inc	a
      001480 F8               [12] 4346 	mov	r0,a
      001481 86 07            [24] 4347 	mov	ar7,@r0
      001483 8F 06            [24] 4348 	mov	ar6,r7
      001485 7F 00            [12] 4349 	mov	r7,#0x00
      001487 87 05            [24] 4350 	mov	ar5,@r1
      001489 7C 00            [12] 4351 	mov	r4,#0x00
      00148B ED               [12] 4352 	mov	a,r5
      00148C 4F               [12] 4353 	orl	a,r7
      00148D F5 82            [12] 4354 	mov	dpl,a
      00148F EC               [12] 4355 	mov	a,r4
      001490 4E               [12] 4356 	orl	a,r6
      001491 F5 83            [12] 4357 	mov	dph,a
                                   4358 ;	fat.h:685: }
      001493 85 3C 81         [24] 4359 	mov	sp,_bp
      001496 D0 3C            [24] 4360 	pop	_bp
      001498 22               [24] 4361 	ret
                                   4362 ;------------------------------------------------------------
                                   4363 ;Allocation info for local variables in function 'FAT16_FILE_READ'
                                   4364 ;------------------------------------------------------------
                                   4365 ;dst                       Allocated to stack - _bp -5
                                   4366 ;nbytes                    Allocated to stack - _bp +1
                                   4367 ;current_cluster           Allocated to registers r7 r6 
                                   4368 ;bytes_read_in_current_cluster Allocated to stack - _bp +10
                                   4369 ;bytes_read_in_current_sector Allocated to stack - _bp +12
                                   4370 ;current_sector            Allocated to stack - _bp +14
                                   4371 ;sloc0                     Allocated to stack - _bp +2
                                   4372 ;sloc1                     Allocated to stack - _bp +6
                                   4373 ;------------------------------------------------------------
                                   4374 ;	fat.h:706: uint8_t FAT16_FILE_READ(uint8_t nbytes, uint8_t *dst) __reentrant
                                   4375 ;	-----------------------------------------
                                   4376 ;	 function FAT16_FILE_READ
                                   4377 ;	-----------------------------------------
      001499                       4378 _FAT16_FILE_READ:
      001499 C0 3C            [24] 4379 	push	_bp
      00149B 85 81 3C         [24] 4380 	mov	_bp,sp
      00149E C0 82            [24] 4381 	push	dpl
      0014A0 E5 81            [12] 4382 	mov	a,sp
      0014A2 24 10            [12] 4383 	add	a,#0x10
      0014A4 F5 81            [12] 4384 	mov	sp,a
                                   4385 ;	fat.h:715: if(nbytes==0)
      0014A6 A8 3C            [24] 4386 	mov	r0,_bp
      0014A8 08               [12] 4387 	inc	r0
      0014A9 E6               [12] 4388 	mov	a,@r0
                                   4389 ;	fat.h:717: return 0; //read 0 bytes
      0014AA 70 05            [24] 4390 	jnz	00102$
      0014AC F5 82            [12] 4391 	mov	dpl,a
      0014AE 02 16 FC         [24] 4392 	ljmp	00113$
      0014B1                       4393 00102$:
                                   4394 ;	fat.h:720: if(nbytes & (nbytes-1))
      0014B1 A8 3C            [24] 4395 	mov	r0,_bp
      0014B3 08               [12] 4396 	inc	r0
      0014B4 86 05            [24] 4397 	mov	ar5,@r0
      0014B6 7E 00            [12] 4398 	mov	r6,#0x00
      0014B8 ED               [12] 4399 	mov	a,r5
      0014B9 24 FF            [12] 4400 	add	a,#0xff
      0014BB FB               [12] 4401 	mov	r3,a
      0014BC EE               [12] 4402 	mov	a,r6
      0014BD 34 FF            [12] 4403 	addc	a,#0xff
      0014BF FC               [12] 4404 	mov	r4,a
      0014C0 EB               [12] 4405 	mov	a,r3
      0014C1 52 05            [12] 4406 	anl	ar5,a
      0014C3 EC               [12] 4407 	mov	a,r4
      0014C4 52 06            [12] 4408 	anl	ar6,a
      0014C6 ED               [12] 4409 	mov	a,r5
      0014C7 4E               [12] 4410 	orl	a,r6
      0014C8 60 06            [24] 4411 	jz	00104$
                                   4412 ;	fat.h:725: return 255; //error
      0014CA 75 82 FF         [24] 4413 	mov	dpl,#0xff
      0014CD 02 16 FC         [24] 4414 	ljmp	00113$
      0014D0                       4415 00104$:
                                   4416 ;	fat.h:728: if(__global_rootEntry.bytes_read == __global_rootEntry.size)
      0014D0 A8 3C            [24] 4417 	mov	r0,_bp
      0014D2 08               [12] 4418 	inc	r0
      0014D3 08               [12] 4419 	inc	r0
      0014D4 79 7E            [12] 4420 	mov	r1,#(___global_rootEntry + 0x0014)
      0014D6 E7               [12] 4421 	mov	a,@r1
      0014D7 F6               [12] 4422 	mov	@r0,a
      0014D8 09               [12] 4423 	inc	r1
      0014D9 E7               [12] 4424 	mov	a,@r1
      0014DA 08               [12] 4425 	inc	r0
      0014DB F6               [12] 4426 	mov	@r0,a
      0014DC 09               [12] 4427 	inc	r1
      0014DD E7               [12] 4428 	mov	a,@r1
      0014DE 08               [12] 4429 	inc	r0
      0014DF F6               [12] 4430 	mov	@r0,a
      0014E0 09               [12] 4431 	inc	r1
      0014E1 E7               [12] 4432 	mov	a,@r1
      0014E2 08               [12] 4433 	inc	r0
      0014E3 F6               [12] 4434 	mov	@r0,a
      0014E4 78 78            [12] 4435 	mov	r0,#(___global_rootEntry + 0x000e)
      0014E6 86 02            [24] 4436 	mov	ar2,@r0
      0014E8 08               [12] 4437 	inc	r0
      0014E9 86 05            [24] 4438 	mov	ar5,@r0
      0014EB 08               [12] 4439 	inc	r0
      0014EC 86 06            [24] 4440 	mov	ar6,@r0
      0014EE 08               [12] 4441 	inc	r0
      0014EF 86 07            [24] 4442 	mov	ar7,@r0
      0014F1 A8 3C            [24] 4443 	mov	r0,_bp
      0014F3 08               [12] 4444 	inc	r0
      0014F4 08               [12] 4445 	inc	r0
      0014F5 E6               [12] 4446 	mov	a,@r0
      0014F6 B5 02 11         [24] 4447 	cjne	a,ar2,00141$
      0014F9 08               [12] 4448 	inc	r0
      0014FA E6               [12] 4449 	mov	a,@r0
      0014FB B5 05 0C         [24] 4450 	cjne	a,ar5,00141$
      0014FE 08               [12] 4451 	inc	r0
      0014FF E6               [12] 4452 	mov	a,@r0
      001500 B5 06 07         [24] 4453 	cjne	a,ar6,00141$
      001503 08               [12] 4454 	inc	r0
      001504 E6               [12] 4455 	mov	a,@r0
      001505 B5 07 02         [24] 4456 	cjne	a,ar7,00141$
      001508 80 02            [24] 4457 	sjmp	00142$
      00150A                       4458 00141$:
      00150A 80 06            [24] 4459 	sjmp	00111$
      00150C                       4460 00142$:
                                   4461 ;	fat.h:730: return 0; //end of file - return number of bytes read
      00150C 75 82 00         [24] 4462 	mov	dpl,#0x00
      00150F 02 16 FC         [24] 4463 	ljmp	00113$
      001512                       4464 00111$:
                                   4465 ;	fat.h:735: bytes_read_in_current_cluster = __global_rootEntry.bytes_read % __global_vbr.bpc;
      001512 78 59            [12] 4466 	mov	r0,#(___global_vbr + 0x000f)
      001514 86 3D            [24] 4467 	mov	__modulong_PARM_2,@r0
      001516 08               [12] 4468 	inc	r0
      001517 86 3E            [24] 4469 	mov	(__modulong_PARM_2 + 1),@r0
      001519 08               [12] 4470 	inc	r0
      00151A 86 3F            [24] 4471 	mov	(__modulong_PARM_2 + 2),@r0
      00151C 08               [12] 4472 	inc	r0
      00151D 86 40            [24] 4473 	mov	(__modulong_PARM_2 + 3),@r0
      00151F A8 3C            [24] 4474 	mov	r0,_bp
      001521 08               [12] 4475 	inc	r0
      001522 08               [12] 4476 	inc	r0
      001523 86 82            [24] 4477 	mov	dpl,@r0
      001525 08               [12] 4478 	inc	r0
      001526 86 83            [24] 4479 	mov	dph,@r0
      001528 08               [12] 4480 	inc	r0
      001529 86 F0            [24] 4481 	mov	b,@r0
      00152B 08               [12] 4482 	inc	r0
      00152C E6               [12] 4483 	mov	a,@r0
      00152D 12 1C 24         [24] 4484 	lcall	__modulong
      001530 AB 82            [24] 4485 	mov	r3,dpl
      001532 AC 83            [24] 4486 	mov	r4,dph
      001534 E5 3C            [12] 4487 	mov	a,_bp
      001536 24 0A            [12] 4488 	add	a,#0x0a
      001538 F8               [12] 4489 	mov	r0,a
      001539 A6 03            [24] 4490 	mov	@r0,ar3
      00153B 08               [12] 4491 	inc	r0
      00153C A6 04            [24] 4492 	mov	@r0,ar4
                                   4493 ;	fat.h:779: if(__global_rootEntry.bytes_read!=0 && bytes_read_in_current_cluster==0)
      00153E A8 3C            [24] 4494 	mov	r0,_bp
      001540 08               [12] 4495 	inc	r0
      001541 08               [12] 4496 	inc	r0
      001542 E6               [12] 4497 	mov	a,@r0
      001543 08               [12] 4498 	inc	r0
      001544 46               [12] 4499 	orl	a,@r0
      001545 08               [12] 4500 	inc	r0
      001546 46               [12] 4501 	orl	a,@r0
      001547 08               [12] 4502 	inc	r0
      001548 46               [12] 4503 	orl	a,@r0
      001549 60 1F            [24] 4504 	jz	00106$
      00154B E5 3C            [12] 4505 	mov	a,_bp
      00154D 24 0A            [12] 4506 	add	a,#0x0a
      00154F F8               [12] 4507 	mov	r0,a
      001550 E6               [12] 4508 	mov	a,@r0
      001551 08               [12] 4509 	inc	r0
      001552 46               [12] 4510 	orl	a,@r0
      001553 70 15            [24] 4511 	jnz	00106$
                                   4512 ;	fat.h:781: __global_rootEntry.startCluster = FAT16_GET_NEXT_CLUSTER(__global_rootEntry.startCluster);
      001555 78 76            [12] 4513 	mov	r0,#(___global_rootEntry + 0x000c)
      001557 86 82            [24] 4514 	mov	dpl,@r0
      001559 08               [12] 4515 	inc	r0
      00155A 86 83            [24] 4516 	mov	dph,@r0
      00155C 12 13 B4         [24] 4517 	lcall	_FAT16_GET_NEXT_CLUSTER
      00155F E5 82            [12] 4518 	mov	a,dpl
      001561 85 83 F0         [24] 4519 	mov	b,dph
      001564 78 76            [12] 4520 	mov	r0,#(___global_rootEntry + 0x000c)
      001566 F6               [12] 4521 	mov	@r0,a
      001567 08               [12] 4522 	inc	r0
      001568 A6 F0            [24] 4523 	mov	@r0,b
      00156A                       4524 00106$:
                                   4525 ;	fat.h:785: current_cluster = __global_rootEntry.startCluster;
      00156A 78 76            [12] 4526 	mov	r0,#(___global_rootEntry + 0x000c)
      00156C 86 07            [24] 4527 	mov	ar7,@r0
      00156E 08               [12] 4528 	inc	r0
      00156F 86 06            [24] 4529 	mov	ar6,@r0
                                   4530 ;	fat.h:790: current_sector =    __global_vbr.addr_data_start 						//start of data
      001571 A8 3C            [24] 4531 	mov	r0,_bp
      001573 08               [12] 4532 	inc	r0
      001574 08               [12] 4533 	inc	r0
      001575 79 65            [12] 4534 	mov	r1,#(___global_vbr + 0x001b)
      001577 E7               [12] 4535 	mov	a,@r1
      001578 F6               [12] 4536 	mov	@r0,a
      001579 09               [12] 4537 	inc	r1
      00157A E7               [12] 4538 	mov	a,@r1
      00157B 08               [12] 4539 	inc	r0
      00157C F6               [12] 4540 	mov	@r0,a
      00157D 09               [12] 4541 	inc	r1
      00157E E7               [12] 4542 	mov	a,@r1
      00157F 08               [12] 4543 	inc	r0
      001580 F6               [12] 4544 	mov	@r0,a
      001581 09               [12] 4545 	inc	r1
      001582 E7               [12] 4546 	mov	a,@r1
      001583 08               [12] 4547 	inc	r0
      001584 F6               [12] 4548 	mov	@r0,a
                                   4549 ;	fat.h:791: + (current_cluster-2) * __global_vbr.spc 				//skip to the start of current cluster
      001585 EF               [12] 4550 	mov	a,r7
      001586 24 FE            [12] 4551 	add	a,#0xfe
      001588 F5 82            [12] 4552 	mov	dpl,a
      00158A EE               [12] 4553 	mov	a,r6
      00158B 34 FF            [12] 4554 	addc	a,#0xff
      00158D F5 83            [12] 4555 	mov	dph,a
      00158F 78 52            [12] 4556 	mov	r0,#(___global_vbr + 0x0008)
      001591 86 03            [24] 4557 	mov	ar3,@r0
      001593 8B 3D            [24] 4558 	mov	__mulint_PARM_2,r3
      001595 75 3E 00         [24] 4559 	mov	(__mulint_PARM_2 + 1),#0x00
      001598 12 1D 27         [24] 4560 	lcall	__mulint
      00159B AB 82            [24] 4561 	mov	r3,dpl
      00159D AF 83            [24] 4562 	mov	r7,dph
      00159F 8F 05            [24] 4563 	mov	ar5,r7
      0015A1 7E 00            [12] 4564 	mov	r6,#0x00
      0015A3 7F 00            [12] 4565 	mov	r7,#0x00
      0015A5 A8 3C            [24] 4566 	mov	r0,_bp
      0015A7 08               [12] 4567 	inc	r0
      0015A8 08               [12] 4568 	inc	r0
      0015A9 EB               [12] 4569 	mov	a,r3
      0015AA 26               [12] 4570 	add	a,@r0
      0015AB F6               [12] 4571 	mov	@r0,a
      0015AC ED               [12] 4572 	mov	a,r5
      0015AD 08               [12] 4573 	inc	r0
      0015AE 36               [12] 4574 	addc	a,@r0
      0015AF F6               [12] 4575 	mov	@r0,a
      0015B0 EE               [12] 4576 	mov	a,r6
      0015B1 08               [12] 4577 	inc	r0
      0015B2 36               [12] 4578 	addc	a,@r0
      0015B3 F6               [12] 4579 	mov	@r0,a
      0015B4 EF               [12] 4580 	mov	a,r7
      0015B5 08               [12] 4581 	inc	r0
      0015B6 36               [12] 4582 	addc	a,@r0
      0015B7 F6               [12] 4583 	mov	@r0,a
                                   4584 ;	fat.h:792: + bytes_read_in_current_cluster/__global_vbr.bps;	//skip sectors already read in current cluster
      0015B8 78 50            [12] 4585 	mov	r0,#(___global_vbr + 0x0006)
      0015BA 86 02            [24] 4586 	mov	ar2,@r0
      0015BC 08               [12] 4587 	inc	r0
      0015BD 86 04            [24] 4588 	mov	ar4,@r0
      0015BF 8A 3D            [24] 4589 	mov	__divuint_PARM_2,r2
      0015C1 8C 3E            [24] 4590 	mov	(__divuint_PARM_2 + 1),r4
      0015C3 E5 3C            [12] 4591 	mov	a,_bp
      0015C5 24 0A            [12] 4592 	add	a,#0x0a
      0015C7 F8               [12] 4593 	mov	r0,a
      0015C8 86 82            [24] 4594 	mov	dpl,@r0
      0015CA 08               [12] 4595 	inc	r0
      0015CB 86 83            [24] 4596 	mov	dph,@r0
      0015CD C0 04            [24] 4597 	push	ar4
      0015CF C0 02            [24] 4598 	push	ar2
      0015D1 12 1B FB         [24] 4599 	lcall	__divuint
      0015D4 AE 82            [24] 4600 	mov	r6,dpl
      0015D6 AF 83            [24] 4601 	mov	r7,dph
      0015D8 D0 02            [24] 4602 	pop	ar2
      0015DA D0 04            [24] 4603 	pop	ar4
      0015DC 7D 00            [12] 4604 	mov	r5,#0x00
      0015DE 7B 00            [12] 4605 	mov	r3,#0x00
      0015E0 A8 3C            [24] 4606 	mov	r0,_bp
      0015E2 08               [12] 4607 	inc	r0
      0015E3 08               [12] 4608 	inc	r0
      0015E4 EE               [12] 4609 	mov	a,r6
      0015E5 26               [12] 4610 	add	a,@r0
      0015E6 FE               [12] 4611 	mov	r6,a
      0015E7 EF               [12] 4612 	mov	a,r7
      0015E8 08               [12] 4613 	inc	r0
      0015E9 36               [12] 4614 	addc	a,@r0
      0015EA FF               [12] 4615 	mov	r7,a
      0015EB ED               [12] 4616 	mov	a,r5
      0015EC 08               [12] 4617 	inc	r0
      0015ED 36               [12] 4618 	addc	a,@r0
      0015EE FD               [12] 4619 	mov	r5,a
      0015EF EB               [12] 4620 	mov	a,r3
      0015F0 08               [12] 4621 	inc	r0
      0015F1 36               [12] 4622 	addc	a,@r0
      0015F2 FB               [12] 4623 	mov	r3,a
      0015F3 E5 3C            [12] 4624 	mov	a,_bp
      0015F5 24 0E            [12] 4625 	add	a,#0x0e
      0015F7 F8               [12] 4626 	mov	r0,a
      0015F8 A6 06            [24] 4627 	mov	@r0,ar6
      0015FA 08               [12] 4628 	inc	r0
      0015FB A6 07            [24] 4629 	mov	@r0,ar7
      0015FD 08               [12] 4630 	inc	r0
      0015FE A6 05            [24] 4631 	mov	@r0,ar5
      001600 08               [12] 4632 	inc	r0
      001601 A6 03            [24] 4633 	mov	@r0,ar3
                                   4634 ;	fat.h:795: bytes_read_in_current_sector = bytes_read_in_current_cluster % __global_vbr.bps;
      001603 8A 3D            [24] 4635 	mov	__moduint_PARM_2,r2
      001605 8C 3E            [24] 4636 	mov	(__moduint_PARM_2 + 1),r4
      001607 E5 3C            [12] 4637 	mov	a,_bp
      001609 24 0A            [12] 4638 	add	a,#0x0a
      00160B F8               [12] 4639 	mov	r0,a
      00160C 86 82            [24] 4640 	mov	dpl,@r0
      00160E 08               [12] 4641 	inc	r0
      00160F 86 83            [24] 4642 	mov	dph,@r0
      001611 12 1D 44         [24] 4643 	lcall	__moduint
      001614 C8               [12] 4644 	xch	a,r0
      001615 E5 3C            [12] 4645 	mov	a,_bp
      001617 24 0C            [12] 4646 	add	a,#0x0c
      001619 C8               [12] 4647 	xch	a,r0
      00161A A6 82            [24] 4648 	mov	@r0,dpl
      00161C 08               [12] 4649 	inc	r0
      00161D A6 83            [24] 4650 	mov	@r0,dph
                                   4651 ;	fat.h:799: if(__global_rootEntry.bytes_read + nbytes > __global_rootEntry.size )
      00161F A8 3C            [24] 4652 	mov	r0,_bp
      001621 08               [12] 4653 	inc	r0
      001622 08               [12] 4654 	inc	r0
      001623 79 7E            [12] 4655 	mov	r1,#(___global_rootEntry + 0x0014)
      001625 E7               [12] 4656 	mov	a,@r1
      001626 F6               [12] 4657 	mov	@r0,a
      001627 09               [12] 4658 	inc	r1
      001628 E7               [12] 4659 	mov	a,@r1
      001629 08               [12] 4660 	inc	r0
      00162A F6               [12] 4661 	mov	@r0,a
      00162B 09               [12] 4662 	inc	r1
      00162C E7               [12] 4663 	mov	a,@r1
      00162D 08               [12] 4664 	inc	r0
      00162E F6               [12] 4665 	mov	@r0,a
      00162F 09               [12] 4666 	inc	r1
      001630 E7               [12] 4667 	mov	a,@r1
      001631 08               [12] 4668 	inc	r0
      001632 F6               [12] 4669 	mov	@r0,a
      001633 A8 3C            [24] 4670 	mov	r0,_bp
      001635 08               [12] 4671 	inc	r0
      001636 86 03            [24] 4672 	mov	ar3,@r0
      001638 7D 00            [12] 4673 	mov	r5,#0x00
      00163A 7E 00            [12] 4674 	mov	r6,#0x00
      00163C 7F 00            [12] 4675 	mov	r7,#0x00
      00163E A8 3C            [24] 4676 	mov	r0,_bp
      001640 08               [12] 4677 	inc	r0
      001641 08               [12] 4678 	inc	r0
      001642 EB               [12] 4679 	mov	a,r3
      001643 26               [12] 4680 	add	a,@r0
      001644 FB               [12] 4681 	mov	r3,a
      001645 ED               [12] 4682 	mov	a,r5
      001646 08               [12] 4683 	inc	r0
      001647 36               [12] 4684 	addc	a,@r0
      001648 FD               [12] 4685 	mov	r5,a
      001649 EE               [12] 4686 	mov	a,r6
      00164A 08               [12] 4687 	inc	r0
      00164B 36               [12] 4688 	addc	a,@r0
      00164C FE               [12] 4689 	mov	r6,a
      00164D EF               [12] 4690 	mov	a,r7
      00164E 08               [12] 4691 	inc	r0
      00164F 36               [12] 4692 	addc	a,@r0
      001650 FF               [12] 4693 	mov	r7,a
      001651 E5 3C            [12] 4694 	mov	a,_bp
      001653 24 06            [12] 4695 	add	a,#0x06
      001655 F8               [12] 4696 	mov	r0,a
      001656 79 78            [12] 4697 	mov	r1,#(___global_rootEntry + 0x000e)
      001658 E7               [12] 4698 	mov	a,@r1
      001659 F6               [12] 4699 	mov	@r0,a
      00165A 09               [12] 4700 	inc	r1
      00165B E7               [12] 4701 	mov	a,@r1
      00165C 08               [12] 4702 	inc	r0
      00165D F6               [12] 4703 	mov	@r0,a
      00165E 09               [12] 4704 	inc	r1
      00165F E7               [12] 4705 	mov	a,@r1
      001660 08               [12] 4706 	inc	r0
      001661 F6               [12] 4707 	mov	@r0,a
      001662 09               [12] 4708 	inc	r1
      001663 E7               [12] 4709 	mov	a,@r1
      001664 08               [12] 4710 	inc	r0
      001665 F6               [12] 4711 	mov	@r0,a
      001666 E5 3C            [12] 4712 	mov	a,_bp
      001668 24 06            [12] 4713 	add	a,#0x06
      00166A F8               [12] 4714 	mov	r0,a
      00166B C3               [12] 4715 	clr	c
      00166C E6               [12] 4716 	mov	a,@r0
      00166D 9B               [12] 4717 	subb	a,r3
      00166E 08               [12] 4718 	inc	r0
      00166F E6               [12] 4719 	mov	a,@r0
      001670 9D               [12] 4720 	subb	a,r5
      001671 08               [12] 4721 	inc	r0
      001672 E6               [12] 4722 	mov	a,@r0
      001673 9E               [12] 4723 	subb	a,r6
      001674 08               [12] 4724 	inc	r0
      001675 E6               [12] 4725 	mov	a,@r0
      001676 9F               [12] 4726 	subb	a,r7
      001677 50 14            [24] 4727 	jnc	00109$
                                   4728 ;	fat.h:801: nbytes = __global_rootEntry.size - __global_rootEntry.bytes_read;//;
      001679 E5 3C            [12] 4729 	mov	a,_bp
      00167B 24 06            [12] 4730 	add	a,#0x06
      00167D F8               [12] 4731 	mov	r0,a
      00167E 86 07            [24] 4732 	mov	ar7,@r0
      001680 A8 3C            [24] 4733 	mov	r0,_bp
      001682 08               [12] 4734 	inc	r0
      001683 08               [12] 4735 	inc	r0
      001684 86 02            [24] 4736 	mov	ar2,@r0
      001686 A8 3C            [24] 4737 	mov	r0,_bp
      001688 08               [12] 4738 	inc	r0
      001689 EF               [12] 4739 	mov	a,r7
      00168A C3               [12] 4740 	clr	c
      00168B 9A               [12] 4741 	subb	a,r2
      00168C F6               [12] 4742 	mov	@r0,a
      00168D                       4743 00109$:
                                   4744 ;	fat.h:820: __global_rootEntry.bytes_read += nbytes;
      00168D A8 3C            [24] 4745 	mov	r0,_bp
      00168F 08               [12] 4746 	inc	r0
      001690 86 04            [24] 4747 	mov	ar4,@r0
      001692 7D 00            [12] 4748 	mov	r5,#0x00
      001694 7E 00            [12] 4749 	mov	r6,#0x00
      001696 7F 00            [12] 4750 	mov	r7,#0x00
      001698 A8 3C            [24] 4751 	mov	r0,_bp
      00169A 08               [12] 4752 	inc	r0
      00169B 08               [12] 4753 	inc	r0
      00169C EC               [12] 4754 	mov	a,r4
      00169D 26               [12] 4755 	add	a,@r0
      00169E FC               [12] 4756 	mov	r4,a
      00169F ED               [12] 4757 	mov	a,r5
      0016A0 08               [12] 4758 	inc	r0
      0016A1 36               [12] 4759 	addc	a,@r0
      0016A2 FD               [12] 4760 	mov	r5,a
      0016A3 EE               [12] 4761 	mov	a,r6
      0016A4 08               [12] 4762 	inc	r0
      0016A5 36               [12] 4763 	addc	a,@r0
      0016A6 FE               [12] 4764 	mov	r6,a
      0016A7 EF               [12] 4765 	mov	a,r7
      0016A8 08               [12] 4766 	inc	r0
      0016A9 36               [12] 4767 	addc	a,@r0
      0016AA FF               [12] 4768 	mov	r7,a
      0016AB 78 7E            [12] 4769 	mov	r0,#(___global_rootEntry + 0x0014)
      0016AD A6 04            [24] 4770 	mov	@r0,ar4
      0016AF 08               [12] 4771 	inc	r0
      0016B0 A6 05            [24] 4772 	mov	@r0,ar5
      0016B2 08               [12] 4773 	inc	r0
      0016B3 A6 06            [24] 4774 	mov	@r0,ar6
      0016B5 08               [12] 4775 	inc	r0
      0016B6 A6 07            [24] 4776 	mov	@r0,ar7
                                   4777 ;	fat.h:823: SDread(current_sector,bytes_read_in_current_sector,nbytes,dst);
      0016B8 A8 3C            [24] 4778 	mov	r0,_bp
      0016BA 08               [12] 4779 	inc	r0
      0016BB 86 06            [24] 4780 	mov	ar6,@r0
      0016BD 7F 00            [12] 4781 	mov	r7,#0x00
      0016BF E5 3C            [12] 4782 	mov	a,_bp
      0016C1 24 FB            [12] 4783 	add	a,#0xfb
      0016C3 F8               [12] 4784 	mov	r0,a
      0016C4 E6               [12] 4785 	mov	a,@r0
      0016C5 C0 E0            [24] 4786 	push	acc
      0016C7 08               [12] 4787 	inc	r0
      0016C8 E6               [12] 4788 	mov	a,@r0
      0016C9 C0 E0            [24] 4789 	push	acc
      0016CB 08               [12] 4790 	inc	r0
      0016CC E6               [12] 4791 	mov	a,@r0
      0016CD C0 E0            [24] 4792 	push	acc
      0016CF C0 06            [24] 4793 	push	ar6
      0016D1 C0 07            [24] 4794 	push	ar7
      0016D3 E5 3C            [12] 4795 	mov	a,_bp
      0016D5 24 0C            [12] 4796 	add	a,#0x0c
      0016D7 F8               [12] 4797 	mov	r0,a
      0016D8 E6               [12] 4798 	mov	a,@r0
      0016D9 C0 E0            [24] 4799 	push	acc
      0016DB 08               [12] 4800 	inc	r0
      0016DC E6               [12] 4801 	mov	a,@r0
      0016DD C0 E0            [24] 4802 	push	acc
      0016DF E5 3C            [12] 4803 	mov	a,_bp
      0016E1 24 0E            [12] 4804 	add	a,#0x0e
      0016E3 F8               [12] 4805 	mov	r0,a
      0016E4 86 82            [24] 4806 	mov	dpl,@r0
      0016E6 08               [12] 4807 	inc	r0
      0016E7 86 83            [24] 4808 	mov	dph,@r0
      0016E9 08               [12] 4809 	inc	r0
      0016EA 86 F0            [24] 4810 	mov	b,@r0
      0016EC 08               [12] 4811 	inc	r0
      0016ED E6               [12] 4812 	mov	a,@r0
      0016EE 12 07 47         [24] 4813 	lcall	_SDread
      0016F1 E5 81            [12] 4814 	mov	a,sp
      0016F3 24 F9            [12] 4815 	add	a,#0xf9
      0016F5 F5 81            [12] 4816 	mov	sp,a
                                   4817 ;	fat.h:828: return nbytes;
      0016F7 A8 3C            [24] 4818 	mov	r0,_bp
      0016F9 08               [12] 4819 	inc	r0
      0016FA 86 82            [24] 4820 	mov	dpl,@r0
      0016FC                       4821 00113$:
                                   4822 ;	fat.h:830: }
      0016FC 85 3C 81         [24] 4823 	mov	sp,_bp
      0016FF D0 3C            [24] 4824 	pop	_bp
      001701 22               [24] 4825 	ret
                                   4826 ;------------------------------------------------------------
                                   4827 ;Allocation info for local variables in function 'FAT16_FILE_CAT'
                                   4828 ;------------------------------------------------------------
                                   4829 ;filename                  Allocated to registers r5 r6 r7 
                                   4830 ;temp                      Allocated to stack - _bp +1
                                   4831 ;resp                      Allocated to registers r6 
                                   4832 ;i                         Allocated to registers r5 
                                   4833 ;------------------------------------------------------------
                                   4834 ;	fat.h:832: void FAT16_FILE_CAT(uint8_t *filename) __reentrant
                                   4835 ;	-----------------------------------------
                                   4836 ;	 function FAT16_FILE_CAT
                                   4837 ;	-----------------------------------------
      001702                       4838 _FAT16_FILE_CAT:
      001702 C0 3C            [24] 4839 	push	_bp
      001704 E5 81            [12] 4840 	mov	a,sp
      001706 F5 3C            [12] 4841 	mov	_bp,a
      001708 24 08            [12] 4842 	add	a,#0x08
      00170A F5 81            [12] 4843 	mov	sp,a
                                   4844 ;	fat.h:839: if(FAT16_FILE_OPEN(filename))
      00170C 12 13 1C         [24] 4845 	lcall	_FAT16_FILE_OPEN
      00170F E5 82            [12] 4846 	mov	a,dpl
      001711 60 0B            [24] 4847 	jz	00115$
                                   4848 ;	fat.h:841: UartPrint("FILE NOT FOUND\n.");
      001713 90 1F 27         [24] 4849 	mov	dptr,#___str_8
      001716 75 F0 80         [24] 4850 	mov	b,#0x80
      001719 12 01 84         [24] 4851 	lcall	_UartPrint
                                   4852 ;	fat.h:842: return;
                                   4853 ;	fat.h:845: do
      00171C 80 42            [24] 4854 	sjmp	00110$
      00171E                       4855 00115$:
      00171E AF 3C            [24] 4856 	mov	r7,_bp
      001720 0F               [12] 4857 	inc	r7
      001721                       4858 00104$:
                                   4859 ;	fat.h:847: resp=FAT16_FILE_READ(FILE_CAT_BUFFER_SIZE,temp);
      001721 8F 04            [24] 4860 	mov	ar4,r7
      001723 7D 00            [12] 4861 	mov	r5,#0x00
      001725 7E 40            [12] 4862 	mov	r6,#0x40
      001727 C0 07            [24] 4863 	push	ar7
      001729 C0 04            [24] 4864 	push	ar4
      00172B C0 05            [24] 4865 	push	ar5
      00172D C0 06            [24] 4866 	push	ar6
      00172F 75 82 08         [24] 4867 	mov	dpl,#0x08
      001732 12 14 99         [24] 4868 	lcall	_FAT16_FILE_READ
      001735 AE 82            [24] 4869 	mov	r6,dpl
      001737 15 81            [12] 4870 	dec	sp
      001739 15 81            [12] 4871 	dec	sp
      00173B 15 81            [12] 4872 	dec	sp
      00173D D0 07            [24] 4873 	pop	ar7
                                   4874 ;	fat.h:848: for(uint8_t i=0;i<resp;i++) UartWrite(temp[i]);
      00173F 7D 00            [12] 4875 	mov	r5,#0x00
      001741                       4876 00108$:
      001741 C3               [12] 4877 	clr	c
      001742 ED               [12] 4878 	mov	a,r5
      001743 9E               [12] 4879 	subb	a,r6
      001744 50 17            [24] 4880 	jnc	00105$
      001746 ED               [12] 4881 	mov	a,r5
      001747 2F               [12] 4882 	add	a,r7
      001748 F9               [12] 4883 	mov	r1,a
      001749 87 82            [24] 4884 	mov	dpl,@r1
      00174B C0 07            [24] 4885 	push	ar7
      00174D C0 06            [24] 4886 	push	ar6
      00174F C0 05            [24] 4887 	push	ar5
      001751 12 00 FE         [24] 4888 	lcall	_UartWrite
      001754 D0 05            [24] 4889 	pop	ar5
      001756 D0 06            [24] 4890 	pop	ar6
      001758 D0 07            [24] 4891 	pop	ar7
      00175A 0D               [12] 4892 	inc	r5
      00175B 80 E4            [24] 4893 	sjmp	00108$
      00175D                       4894 00105$:
                                   4895 ;	fat.h:851: } while (resp!=0);
      00175D EE               [12] 4896 	mov	a,r6
      00175E 70 C1            [24] 4897 	jnz	00104$
                                   4898 ;	fat.h:853: return;
      001760                       4899 00110$:
                                   4900 ;	fat.h:855: }
      001760 85 3C 81         [24] 4901 	mov	sp,_bp
      001763 D0 3C            [24] 4902 	pop	_bp
      001765 22               [24] 4903 	ret
                                   4904 ;------------------------------------------------------------
                                   4905 ;Allocation info for local variables in function 'SL_disable_write_protection'
                                   4906 ;------------------------------------------------------------
                                   4907 ;xram_addr                 Allocated to registers 
                                   4908 ;------------------------------------------------------------
                                   4909 ;	serialloader.h:24: void SL_disable_write_protection()
                                   4910 ;	-----------------------------------------
                                   4911 ;	 function SL_disable_write_protection
                                   4912 ;	-----------------------------------------
      001766                       4913 _SL_disable_write_protection:
                                   4914 ;	serialloader.h:29: *(xram_addr) = 0xAA;
      001766 90 15 55         [24] 4915 	mov	dptr,#0x1555
      001769 74 AA            [12] 4916 	mov	a,#0xaa
      00176B F0               [24] 4917 	movx	@dptr,a
                                   4918 ;	serialloader.h:31: *(xram_addr) = 0x55;
      00176C 90 0A AA         [24] 4919 	mov	dptr,#0x0aaa
      00176F F4               [12] 4920 	cpl	a
      001770 F0               [24] 4921 	movx	@dptr,a
                                   4922 ;	serialloader.h:33: *(xram_addr) = 0x80;
                                   4923 ;	serialloader.h:37: *(xram_addr) = 0xAA;
      001771 90 15 55         [24] 4924 	mov	dptr,#0x1555
      001774 74 80            [12] 4925 	mov	a,#0x80
      001776 F0               [24] 4926 	movx	@dptr,a
      001777 74 AA            [12] 4927 	mov	a,#0xaa
      001779 F0               [24] 4928 	movx	@dptr,a
                                   4929 ;	serialloader.h:39: *(xram_addr) = 0x55;
      00177A 90 0A AA         [24] 4930 	mov	dptr,#0x0aaa
      00177D F4               [12] 4931 	cpl	a
      00177E F0               [24] 4932 	movx	@dptr,a
                                   4933 ;	serialloader.h:41: *(xram_addr) = 0x20;
      00177F 90 15 55         [24] 4934 	mov	dptr,#0x1555
      001782 74 20            [12] 4935 	mov	a,#0x20
      001784 F0               [24] 4936 	movx	@dptr,a
                                   4937 ;	serialloader.h:43: UartWrite('D'); //ack
      001785 75 82 44         [24] 4938 	mov	dpl,#0x44
      001788 12 00 FE         [24] 4939 	lcall	_UartWrite
                                   4940 ;	serialloader.h:45: EEPROM_WRITE_PROTECTION=0; //change flag
      00178B 75 2B 00         [24] 4941 	mov	_EEPROM_WRITE_PROTECTION,#0x00
                                   4942 ;	serialloader.h:46: }
      00178E 22               [24] 4943 	ret
                                   4944 ;------------------------------------------------------------
                                   4945 ;Allocation info for local variables in function 'SL_enable_write_protection'
                                   4946 ;------------------------------------------------------------
                                   4947 ;	serialloader.h:48: void SL_enable_write_protection()
                                   4948 ;	-----------------------------------------
                                   4949 ;	 function SL_enable_write_protection
                                   4950 ;	-----------------------------------------
      00178F                       4951 _SL_enable_write_protection:
                                   4952 ;	serialloader.h:50: EEPROM_WRITE_PROTECTION=1; //change flag
      00178F 75 2B 01         [24] 4953 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                   4954 ;	serialloader.h:51: UartWrite('E'); 
      001792 75 82 45         [24] 4955 	mov	dpl,#0x45
                                   4956 ;	serialloader.h:52: }
      001795 02 00 FE         [24] 4957 	ljmp	_UartWrite
                                   4958 ;------------------------------------------------------------
                                   4959 ;Allocation info for local variables in function 'SL_write'
                                   4960 ;------------------------------------------------------------
                                   4961 ;data                      Allocated to registers r5 
                                   4962 ;addr                      Allocated to registers r7 r6 
                                   4963 ;xram_addr                 Allocated to registers 
                                   4964 ;------------------------------------------------------------
                                   4965 ;	serialloader.h:54: void SL_write()
                                   4966 ;	-----------------------------------------
                                   4967 ;	 function SL_write
                                   4968 ;	-----------------------------------------
      001798                       4969 _SL_write:
                                   4970 ;	serialloader.h:60: while(UartReadReady()==0); //wait till we rcv data
      001798                       4971 00101$:
      001798 12 00 EA         [24] 4972 	lcall	_UartReadReady
      00179B E5 82            [12] 4973 	mov	a,dpl
      00179D 60 F9            [24] 4974 	jz	00101$
                                   4975 ;	serialloader.h:63: addr = UartRead(); //msb
      00179F 12 00 F5         [24] 4976 	lcall	_UartRead
                                   4977 ;	serialloader.h:64: addr = addr << 8;
      0017A2 AE 82            [24] 4978 	mov	r6,dpl
      0017A4 7F 00            [12] 4979 	mov	r7,#0x00
                                   4980 ;	serialloader.h:65: addr |= UartRead(); //lsb
      0017A6 C0 07            [24] 4981 	push	ar7
      0017A8 C0 06            [24] 4982 	push	ar6
      0017AA 12 00 F5         [24] 4983 	lcall	_UartRead
      0017AD AD 82            [24] 4984 	mov	r5,dpl
      0017AF D0 06            [24] 4985 	pop	ar6
      0017B1 D0 07            [24] 4986 	pop	ar7
      0017B3 7C 00            [12] 4987 	mov	r4,#0x00
      0017B5 ED               [12] 4988 	mov	a,r5
      0017B6 42 07            [12] 4989 	orl	ar7,a
      0017B8 EC               [12] 4990 	mov	a,r4
      0017B9 42 06            [12] 4991 	orl	ar6,a
                                   4992 ;	serialloader.h:67: data = UartRead(); //read data
      0017BB C0 07            [24] 4993 	push	ar7
      0017BD C0 06            [24] 4994 	push	ar6
      0017BF 12 00 F5         [24] 4995 	lcall	_UartRead
      0017C2 AD 82            [24] 4996 	mov	r5,dpl
      0017C4 D0 06            [24] 4997 	pop	ar6
      0017C6 D0 07            [24] 4998 	pop	ar7
                                   4999 ;	serialloader.h:69: if(EEPROM_WRITE_PROTECTION)
      0017C8 E5 2B            [12] 5000 	mov	a,_EEPROM_WRITE_PROTECTION
      0017CA 60 11            [24] 5001 	jz	00105$
                                   5002 ;	serialloader.h:73: *(xram_addr) = 0xAA;
      0017CC 90 15 55         [24] 5003 	mov	dptr,#0x1555
      0017CF 74 AA            [12] 5004 	mov	a,#0xaa
      0017D1 F0               [24] 5005 	movx	@dptr,a
                                   5006 ;	serialloader.h:75: *(xram_addr) = 0x55;
      0017D2 90 0A AA         [24] 5007 	mov	dptr,#0x0aaa
      0017D5 F4               [12] 5008 	cpl	a
      0017D6 F0               [24] 5009 	movx	@dptr,a
                                   5010 ;	serialloader.h:77: *(xram_addr) = 0xA0;
      0017D7 90 15 55         [24] 5011 	mov	dptr,#0x1555
      0017DA 74 A0            [12] 5012 	mov	a,#0xa0
      0017DC F0               [24] 5013 	movx	@dptr,a
      0017DD                       5014 00105$:
                                   5015 ;	serialloader.h:80: xram_addr = (__xdata unsigned char*) addr;
      0017DD 8F 82            [24] 5016 	mov	dpl,r7
      0017DF 8E 83            [24] 5017 	mov	dph,r6
                                   5018 ;	serialloader.h:82: *(xram_addr) = data; //write to xram
      0017E1 ED               [12] 5019 	mov	a,r5
      0017E2 F0               [24] 5020 	movx	@dptr,a
                                   5021 ;	serialloader.h:84: UartWrite('W'); //ack
      0017E3 75 82 57         [24] 5022 	mov	dpl,#0x57
                                   5023 ;	serialloader.h:86: }
      0017E6 02 00 FE         [24] 5024 	ljmp	_UartWrite
                                   5025 ;------------------------------------------------------------
                                   5026 ;Allocation info for local variables in function 'SL_read'
                                   5027 ;------------------------------------------------------------
                                   5028 ;data                      Allocated to registers r7 
                                   5029 ;addr                      Allocated to registers r7 r6 
                                   5030 ;xram_addr                 Allocated to registers 
                                   5031 ;------------------------------------------------------------
                                   5032 ;	serialloader.h:88: void SL_read()
                                   5033 ;	-----------------------------------------
                                   5034 ;	 function SL_read
                                   5035 ;	-----------------------------------------
      0017E9                       5036 _SL_read:
                                   5037 ;	serialloader.h:94: while(UartReadReady()==0); //wait till we rcv data
      0017E9                       5038 00101$:
      0017E9 12 00 EA         [24] 5039 	lcall	_UartReadReady
      0017EC E5 82            [12] 5040 	mov	a,dpl
      0017EE 60 F9            [24] 5041 	jz	00101$
                                   5042 ;	serialloader.h:98: addr = UartRead(); //msb
      0017F0 12 00 F5         [24] 5043 	lcall	_UartRead
                                   5044 ;	serialloader.h:99: addr = addr << 8;
      0017F3 AE 82            [24] 5045 	mov	r6,dpl
      0017F5 7F 00            [12] 5046 	mov	r7,#0x00
                                   5047 ;	serialloader.h:100: addr |= UartRead(); //lsb
      0017F7 C0 07            [24] 5048 	push	ar7
      0017F9 C0 06            [24] 5049 	push	ar6
      0017FB 12 00 F5         [24] 5050 	lcall	_UartRead
      0017FE AD 82            [24] 5051 	mov	r5,dpl
      001800 D0 06            [24] 5052 	pop	ar6
      001802 D0 07            [24] 5053 	pop	ar7
      001804 7C 00            [12] 5054 	mov	r4,#0x00
      001806 ED               [12] 5055 	mov	a,r5
      001807 42 07            [12] 5056 	orl	ar7,a
      001809 EC               [12] 5057 	mov	a,r4
      00180A 42 06            [12] 5058 	orl	ar6,a
                                   5059 ;	serialloader.h:102: xram_addr = (__xdata unsigned char*) addr;
      00180C 8F 82            [24] 5060 	mov	dpl,r7
      00180E 8E 83            [24] 5061 	mov	dph,r6
                                   5062 ;	serialloader.h:104: data = *(xram_addr); //read from xram
      001810 E0               [24] 5063 	movx	a,@dptr
                                   5064 ;	serialloader.h:106: UartWrite(data);
      001811 F5 82            [12] 5065 	mov	dpl,a
                                   5066 ;	serialloader.h:108: }
      001813 02 00 FE         [24] 5067 	ljmp	_UartWrite
                                   5068 ;------------------------------------------------------------
                                   5069 ;Allocation info for local variables in function 'SL_getcmd'
                                   5070 ;------------------------------------------------------------
                                   5071 ;cmd                       Allocated to registers r7 
                                   5072 ;------------------------------------------------------------
                                   5073 ;	serialloader.h:111: unsigned char SL_getcmd()
                                   5074 ;	-----------------------------------------
                                   5075 ;	 function SL_getcmd
                                   5076 ;	-----------------------------------------
      001816                       5077 _SL_getcmd:
                                   5078 ;	serialloader.h:114: while(UartReadReady()) UartRead(); //flush 
      001816                       5079 00101$:
      001816 12 00 EA         [24] 5080 	lcall	_UartReadReady
      001819 E5 82            [12] 5081 	mov	a,dpl
      00181B 60 05            [24] 5082 	jz	00104$
      00181D 12 00 F5         [24] 5083 	lcall	_UartRead
                                   5084 ;	serialloader.h:116: while(UartReadReady()==0); //wait till we rcv data 
      001820 80 F4            [24] 5085 	sjmp	00101$
      001822                       5086 00104$:
      001822 12 00 EA         [24] 5087 	lcall	_UartReadReady
      001825 E5 82            [12] 5088 	mov	a,dpl
      001827 60 F9            [24] 5089 	jz	00104$
                                   5090 ;	serialloader.h:119: cmd = UartRead(); //read
      001829 12 00 F5         [24] 5091 	lcall	_UartRead
      00182C AF 82            [24] 5092 	mov	r7,dpl
                                   5093 ;	serialloader.h:121: switch(cmd)
      00182E BF 44 02         [24] 5094 	cjne	r7,#0x44,00159$
      001831 80 3A            [24] 5095 	sjmp	00110$
      001833                       5096 00159$:
      001833 BF 45 02         [24] 5097 	cjne	r7,#0x45,00160$
      001836 80 3E            [24] 5098 	sjmp	00111$
      001838                       5099 00160$:
      001838 BF 52 02         [24] 5100 	cjne	r7,#0x52,00161$
      00183B 80 1E            [24] 5101 	sjmp	00108$
      00183D                       5102 00161$:
      00183D BF 56 02         [24] 5103 	cjne	r7,#0x56,00162$
      001840 80 0A            [24] 5104 	sjmp	00107$
      001842                       5105 00162$:
      001842 BF 57 02         [24] 5106 	cjne	r7,#0x57,00163$
      001845 80 1D            [24] 5107 	sjmp	00109$
      001847                       5108 00163$:
                                   5109 ;	serialloader.h:123: case 'V':
      001847 BF 58 38         [24] 5110 	cjne	r7,#0x58,00114$
      00184A 80 33            [24] 5111 	sjmp	00112$
      00184C                       5112 00107$:
                                   5113 ;	serialloader.h:124: UartPrint(SERIAL_LOADER_VERSION_INFO);
      00184C 90 1B E8         [24] 5114 	mov	dptr,#_SERIAL_LOADER_VERSION_INFO
      00184F 75 F0 80         [24] 5115 	mov	b,#0x80
      001852 C0 07            [24] 5116 	push	ar7
      001854 12 01 84         [24] 5117 	lcall	_UartPrint
      001857 D0 07            [24] 5118 	pop	ar7
                                   5119 ;	serialloader.h:125: break;
                                   5120 ;	serialloader.h:126: case 'R':
      001859 80 27            [24] 5121 	sjmp	00114$
      00185B                       5122 00108$:
                                   5123 ;	serialloader.h:127: SL_read();
      00185B C0 07            [24] 5124 	push	ar7
      00185D 12 17 E9         [24] 5125 	lcall	_SL_read
      001860 D0 07            [24] 5126 	pop	ar7
                                   5127 ;	serialloader.h:128: break;
                                   5128 ;	serialloader.h:129: case 'W':
      001862 80 1E            [24] 5129 	sjmp	00114$
      001864                       5130 00109$:
                                   5131 ;	serialloader.h:130: SL_write();
      001864 C0 07            [24] 5132 	push	ar7
      001866 12 17 98         [24] 5133 	lcall	_SL_write
      001869 D0 07            [24] 5134 	pop	ar7
                                   5135 ;	serialloader.h:131: break;
                                   5136 ;	serialloader.h:132: case 'D':
      00186B 80 15            [24] 5137 	sjmp	00114$
      00186D                       5138 00110$:
                                   5139 ;	serialloader.h:133: SL_disable_write_protection();
      00186D C0 07            [24] 5140 	push	ar7
      00186F 12 17 66         [24] 5141 	lcall	_SL_disable_write_protection
      001872 D0 07            [24] 5142 	pop	ar7
                                   5143 ;	serialloader.h:134: break;
                                   5144 ;	serialloader.h:135: case 'E':
      001874 80 0C            [24] 5145 	sjmp	00114$
      001876                       5146 00111$:
                                   5147 ;	serialloader.h:136: SL_enable_write_protection();
      001876 C0 07            [24] 5148 	push	ar7
      001878 12 17 8F         [24] 5149 	lcall	_SL_enable_write_protection
      00187B D0 07            [24] 5150 	pop	ar7
                                   5151 ;	serialloader.h:137: break;
                                   5152 ;	serialloader.h:138: case 'X': //execute
      00187D 80 03            [24] 5153 	sjmp	00114$
      00187F                       5154 00112$:
                                   5155 ;	serialloader.h:139: SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);
      00187F 53 90 EF         [24] 5156 	anl	_P1,#0xef
                                   5157 ;	serialloader.h:143: }
      001882                       5158 00114$:
                                   5159 ;	serialloader.h:145: return cmd;
      001882 8F 82            [24] 5160 	mov	dpl,r7
                                   5161 ;	serialloader.h:146: }
      001884 22               [24] 5162 	ret
                                   5163 ;------------------------------------------------------------
                                   5164 ;Allocation info for local variables in function 'SelectFAT16PartitionPrompt'
                                   5165 ;------------------------------------------------------------
                                   5166 ;_resp                     Allocated to registers r6 
                                   5167 ;_temp                     Allocated to registers r7 
                                   5168 ;i                         Allocated to registers r5 
                                   5169 ;i                         Allocated to registers r4 
                                   5170 ;------------------------------------------------------------
                                   5171 ;	main.c:31: void SelectFAT16PartitionPrompt() __reentrant
                                   5172 ;	-----------------------------------------
                                   5173 ;	 function SelectFAT16PartitionPrompt
                                   5174 ;	-----------------------------------------
      001885                       5175 _SelectFAT16PartitionPrompt:
                                   5176 ;	main.c:33: uint8_t _resp=0,_temp=0;
      001885 7F 00            [12] 5177 	mov	r7,#0x00
                                   5178 ;	main.c:36: if(MBR_CHECK__SIGNATURE())
      001887 C0 07            [24] 5179 	push	ar7
      001889 12 0C 17         [24] 5180 	lcall	_MBR_CHECK__SIGNATURE
      00188C E5 82            [12] 5181 	mov	a,dpl
      00188E D0 07            [24] 5182 	pop	ar7
      001890 60 0D            [24] 5183 	jz	00102$
                                   5184 ;	main.c:39: UartPrint("BAD MBR!\n");
      001892 90 1F 38         [24] 5185 	mov	dptr,#___str_10
      001895 75 F0 80         [24] 5186 	mov	b,#0x80
      001898 C0 07            [24] 5187 	push	ar7
      00189A 12 01 84         [24] 5188 	lcall	_UartPrint
      00189D D0 07            [24] 5189 	pop	ar7
      00189F                       5190 00102$:
                                   5191 ;	main.c:43: _resp=MBR_DETECT_FAT16(); 	// _resp now contains the bit set for the partitions which have valid FAT16 ID
      00189F C0 07            [24] 5192 	push	ar7
      0018A1 12 0C F5         [24] 5193 	lcall	_MBR_DETECT_FAT16
      0018A4 AE 82            [24] 5194 	mov	r6,dpl
      0018A6 D0 07            [24] 5195 	pop	ar7
                                   5196 ;	main.c:46: if(_resp)
      0018A8 EE               [12] 5197 	mov	a,r6
      0018A9 70 03            [24] 5198 	jnz	00188$
      0018AB 02 19 F1         [24] 5199 	ljmp	00124$
      0018AE                       5200 00188$:
                                   5201 ;	main.c:50: for(uint8_t i=0;i<4;i++)
      0018AE 7D 00            [12] 5202 	mov	r5,#0x00
      0018B0                       5203 00127$:
      0018B0 BD 04 00         [24] 5204 	cjne	r5,#0x04,00189$
      0018B3                       5205 00189$:
      0018B3 40 03            [24] 5206 	jc	00190$
      0018B5 02 19 36         [24] 5207 	ljmp	00106$
      0018B8                       5208 00190$:
                                   5209 ;	main.c:52: UartPrint("\nPtn. ");UartWriteNumber(i,HEX);UartWrite('> ');
      0018B8 C0 07            [24] 5210 	push	ar7
      0018BA 90 1F 42         [24] 5211 	mov	dptr,#___str_11
      0018BD 75 F0 80         [24] 5212 	mov	b,#0x80
      0018C0 C0 07            [24] 5213 	push	ar7
      0018C2 C0 06            [24] 5214 	push	ar6
      0018C4 C0 05            [24] 5215 	push	ar5
      0018C6 12 01 84         [24] 5216 	lcall	_UartPrint
      0018C9 D0 05            [24] 5217 	pop	ar5
      0018CB C0 05            [24] 5218 	push	ar5
      0018CD E4               [12] 5219 	clr	a
      0018CE C0 E0            [24] 5220 	push	acc
      0018D0 8D 82            [24] 5221 	mov	dpl,r5
      0018D2 12 01 B6         [24] 5222 	lcall	_UartWriteNumber
      0018D5 15 81            [12] 5223 	dec	sp
      0018D7 75 82 3E         [24] 5224 	mov	dpl,#0x3e
      0018DA 12 00 FE         [24] 5225 	lcall	_UartWrite
      0018DD D0 05            [24] 5226 	pop	ar5
      0018DF D0 06            [24] 5227 	pop	ar6
      0018E1 D0 07            [24] 5228 	pop	ar7
                                   5229 ;	main.c:53: if(_resp & 1<<i) UartPrint("FAT16");
      0018E3 8D F0            [24] 5230 	mov	b,r5
      0018E5 05 F0            [12] 5231 	inc	b
      0018E7 7B 01            [12] 5232 	mov	r3,#0x01
      0018E9 7C 00            [12] 5233 	mov	r4,#0x00
      0018EB 80 06            [24] 5234 	sjmp	00192$
      0018ED                       5235 00191$:
      0018ED EB               [12] 5236 	mov	a,r3
      0018EE 2B               [12] 5237 	add	a,r3
      0018EF FB               [12] 5238 	mov	r3,a
      0018F0 EC               [12] 5239 	mov	a,r4
      0018F1 33               [12] 5240 	rlc	a
      0018F2 FC               [12] 5241 	mov	r4,a
      0018F3                       5242 00192$:
      0018F3 D5 F0 F7         [24] 5243 	djnz	b,00191$
      0018F6 8E 02            [24] 5244 	mov	ar2,r6
      0018F8 7F 00            [12] 5245 	mov	r7,#0x00
      0018FA EA               [12] 5246 	mov	a,r2
      0018FB 52 03            [12] 5247 	anl	ar3,a
      0018FD EF               [12] 5248 	mov	a,r7
      0018FE 52 04            [12] 5249 	anl	ar4,a
      001900 D0 07            [24] 5250 	pop	ar7
      001902 EB               [12] 5251 	mov	a,r3
      001903 4C               [12] 5252 	orl	a,r4
      001904 60 17            [24] 5253 	jz	00104$
      001906 90 1F 49         [24] 5254 	mov	dptr,#___str_12
      001909 75 F0 80         [24] 5255 	mov	b,#0x80
      00190C C0 07            [24] 5256 	push	ar7
      00190E C0 06            [24] 5257 	push	ar6
      001910 C0 05            [24] 5258 	push	ar5
      001912 12 01 84         [24] 5259 	lcall	_UartPrint
      001915 D0 05            [24] 5260 	pop	ar5
      001917 D0 06            [24] 5261 	pop	ar6
      001919 D0 07            [24] 5262 	pop	ar7
      00191B 80 15            [24] 5263 	sjmp	00128$
      00191D                       5264 00104$:
                                   5265 ;	main.c:54: else UartPrint("Unknown");
      00191D 90 1F 4F         [24] 5266 	mov	dptr,#___str_13
      001920 75 F0 80         [24] 5267 	mov	b,#0x80
      001923 C0 07            [24] 5268 	push	ar7
      001925 C0 06            [24] 5269 	push	ar6
      001927 C0 05            [24] 5270 	push	ar5
      001929 12 01 84         [24] 5271 	lcall	_UartPrint
      00192C D0 05            [24] 5272 	pop	ar5
      00192E D0 06            [24] 5273 	pop	ar6
      001930 D0 07            [24] 5274 	pop	ar7
      001932                       5275 00128$:
                                   5276 ;	main.c:50: for(uint8_t i=0;i<4;i++)
      001932 0D               [12] 5277 	inc	r5
      001933 02 18 B0         [24] 5278 	ljmp	00127$
      001936                       5279 00106$:
                                   5280 ;	main.c:60: if( (_resp & (_resp-1)) == 0)
      001936 8E 05            [24] 5281 	mov	ar5,r6
      001938 7E 00            [12] 5282 	mov	r6,#0x00
      00193A ED               [12] 5283 	mov	a,r5
      00193B 24 FF            [12] 5284 	add	a,#0xff
      00193D FB               [12] 5285 	mov	r3,a
      00193E EE               [12] 5286 	mov	a,r6
      00193F 34 FF            [12] 5287 	addc	a,#0xff
      001941 FC               [12] 5288 	mov	r4,a
      001942 ED               [12] 5289 	mov	a,r5
      001943 52 03            [12] 5290 	anl	ar3,a
      001945 EE               [12] 5291 	mov	a,r6
      001946 52 04            [12] 5292 	anl	ar4,a
      001948 EB               [12] 5293 	mov	a,r3
      001949 4C               [12] 5294 	orl	a,r4
                                   5295 ;	main.c:62: for(uint8_t i=0;i<4;i++)
      00194A 70 31            [24] 5296 	jnz	00111$
      00194C FC               [12] 5297 	mov	r4,a
      00194D FB               [12] 5298 	mov	r3,a
      00194E                       5299 00130$:
      00194E BB 04 00         [24] 5300 	cjne	r3,#0x04,00195$
      001951                       5301 00195$:
      001951 50 42            [24] 5302 	jnc	00112$
                                   5303 ;	main.c:64: if(_resp & 1<<i) 
      001953 C0 04            [24] 5304 	push	ar4
      001955 8B F0            [24] 5305 	mov	b,r3
      001957 05 F0            [12] 5306 	inc	b
      001959 7A 01            [12] 5307 	mov	r2,#0x01
      00195B 7C 00            [12] 5308 	mov	r4,#0x00
      00195D 80 06            [24] 5309 	sjmp	00198$
      00195F                       5310 00197$:
      00195F EA               [12] 5311 	mov	a,r2
      001960 2A               [12] 5312 	add	a,r2
      001961 FA               [12] 5313 	mov	r2,a
      001962 EC               [12] 5314 	mov	a,r4
      001963 33               [12] 5315 	rlc	a
      001964 FC               [12] 5316 	mov	r4,a
      001965                       5317 00198$:
      001965 D5 F0 F7         [24] 5318 	djnz	b,00197$
      001968 ED               [12] 5319 	mov	a,r5
      001969 52 02            [12] 5320 	anl	ar2,a
      00196B EE               [12] 5321 	mov	a,r6
      00196C 52 04            [12] 5322 	anl	ar4,a
      00196E EA               [12] 5323 	mov	a,r2
      00196F 4C               [12] 5324 	orl	a,r4
      001970 D0 04            [24] 5325 	pop	ar4
      001972 60 04            [24] 5326 	jz	00131$
                                   5327 ;	main.c:66: _temp=i; // select the i-th partition
      001974 8C 07            [24] 5328 	mov	ar7,r4
                                   5329 ;	main.c:67: break; //break from for loop
      001976 80 1D            [24] 5330 	sjmp	00112$
      001978                       5331 00131$:
                                   5332 ;	main.c:62: for(uint8_t i=0;i<4;i++)
      001978 0B               [12] 5333 	inc	r3
      001979 8B 04            [24] 5334 	mov	ar4,r3
      00197B 80 D1            [24] 5335 	sjmp	00130$
      00197D                       5336 00111$:
                                   5337 ;	main.c:74: UartPrint("Slct Ptn. >\n");
      00197D 90 1F 57         [24] 5338 	mov	dptr,#___str_14
      001980 75 F0 80         [24] 5339 	mov	b,#0x80
      001983 C0 06            [24] 5340 	push	ar6
      001985 C0 05            [24] 5341 	push	ar5
      001987 12 01 84         [24] 5342 	lcall	_UartPrint
                                   5343 ;	main.c:75: _temp=UartScanByte();
      00198A 12 03 C4         [24] 5344 	lcall	_UartScanByte
      00198D AC 82            [24] 5345 	mov	r4,dpl
      00198F D0 05            [24] 5346 	pop	ar5
      001991 D0 06            [24] 5347 	pop	ar6
      001993 8C 07            [24] 5348 	mov	ar7,r4
      001995                       5349 00112$:
                                   5350 ;	main.c:79: if( _temp<4 && (_resp & (1<<_temp)) )
      001995 BF 04 00         [24] 5351 	cjne	r7,#0x04,00200$
      001998                       5352 00200$:
      001998 50 43            [24] 5353 	jnc	00117$
      00199A 8F F0            [24] 5354 	mov	b,r7
      00199C 05 F0            [12] 5355 	inc	b
      00199E 7B 01            [12] 5356 	mov	r3,#0x01
      0019A0 7C 00            [12] 5357 	mov	r4,#0x00
      0019A2 80 06            [24] 5358 	sjmp	00203$
      0019A4                       5359 00202$:
      0019A4 EB               [12] 5360 	mov	a,r3
      0019A5 2B               [12] 5361 	add	a,r3
      0019A6 FB               [12] 5362 	mov	r3,a
      0019A7 EC               [12] 5363 	mov	a,r4
      0019A8 33               [12] 5364 	rlc	a
      0019A9 FC               [12] 5365 	mov	r4,a
      0019AA                       5366 00203$:
      0019AA D5 F0 F7         [24] 5367 	djnz	b,00202$
      0019AD EB               [12] 5368 	mov	a,r3
      0019AE 52 05            [12] 5369 	anl	ar5,a
      0019B0 EC               [12] 5370 	mov	a,r4
      0019B1 52 06            [12] 5371 	anl	ar6,a
      0019B3 ED               [12] 5372 	mov	a,r5
      0019B4 4E               [12] 5373 	orl	a,r6
      0019B5 60 26            [24] 5374 	jz	00117$
                                   5375 ;	main.c:81: UartPrint("\nPtn. Mounted:");UartWriteNumber(_temp,HEX);
      0019B7 90 1F 64         [24] 5376 	mov	dptr,#___str_15
      0019BA 75 F0 80         [24] 5377 	mov	b,#0x80
      0019BD C0 07            [24] 5378 	push	ar7
      0019BF 12 01 84         [24] 5379 	lcall	_UartPrint
      0019C2 D0 07            [24] 5380 	pop	ar7
      0019C4 C0 07            [24] 5381 	push	ar7
      0019C6 E4               [12] 5382 	clr	a
      0019C7 C0 E0            [24] 5383 	push	acc
      0019C9 8F 82            [24] 5384 	mov	dpl,r7
      0019CB 12 01 B6         [24] 5385 	lcall	_UartWriteNumber
      0019CE 15 81            [12] 5386 	dec	sp
                                   5387 ;	main.c:82: UartWrite('\n');
      0019D0 75 82 0A         [24] 5388 	mov	dpl,#0x0a
      0019D3 12 00 FE         [24] 5389 	lcall	_UartWrite
      0019D6 D0 07            [24] 5390 	pop	ar7
                                   5391 ;	main.c:83: VBR_MOUNT_VBR(_temp);
      0019D8 8F 82            [24] 5392 	mov	dpl,r7
      0019DA 02 0E 50         [24] 5393 	ljmp	_VBR_MOUNT_VBR
      0019DD                       5394 00117$:
                                   5395 ;	main.c:87: UartPrint("\nBad Ptn.\n");
      0019DD 90 1F 73         [24] 5396 	mov	dptr,#___str_16
      0019E0 75 F0 80         [24] 5397 	mov	b,#0x80
      0019E3 12 01 84         [24] 5398 	lcall	_UartPrint
                                   5399 ;	main.c:88: UartPrint(HALTING_MSG); while(1);
      0019E6 90 1B F5         [24] 5400 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_196
      0019E9 75 F0 80         [24] 5401 	mov	b,#0x80
      0019EC 12 01 84         [24] 5402 	lcall	_UartPrint
      0019EF                       5403 00114$:
      0019EF 80 FE            [24] 5404 	sjmp	00114$
      0019F1                       5405 00124$:
                                   5406 ;	main.c:94: UartPrint("No FAT16 Ptn.\n");
      0019F1 90 1F 7E         [24] 5407 	mov	dptr,#___str_17
      0019F4 75 F0 80         [24] 5408 	mov	b,#0x80
      0019F7 12 01 84         [24] 5409 	lcall	_UartPrint
                                   5410 ;	main.c:95: UartPrint(HALTING_MSG); while(1);
      0019FA 90 1B F5         [24] 5411 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_196
      0019FD 75 F0 80         [24] 5412 	mov	b,#0x80
      001A00 12 01 84         [24] 5413 	lcall	_UartPrint
      001A03                       5414 00121$:
                                   5415 ;	main.c:98: }
      001A03 80 FE            [24] 5416 	sjmp	00121$
                                   5417 ;------------------------------------------------------------
                                   5418 ;Allocation info for local variables in function 'SelectFileAndFileOpen'
                                   5419 ;------------------------------------------------------------
                                   5420 ;_result                   Allocated to registers r7 
                                   5421 ;i                         Allocated to registers r7 
                                   5422 ;j                         Allocated to registers r6 
                                   5423 ;------------------------------------------------------------
                                   5424 ;	main.c:100: void SelectFileAndFileOpen() __reentrant
                                   5425 ;	-----------------------------------------
                                   5426 ;	 function SelectFileAndFileOpen
                                   5427 ;	-----------------------------------------
      001A05                       5428 _SelectFileAndFileOpen:
                                   5429 ;	main.c:103: FAT16_ROOTENTRY_SCAN_RESET();
      001A05 12 12 E7         [24] 5430 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
                                   5431 ;	main.c:104: UartPrint("INDEX\t\tFILE\n\n");
      001A08 90 1F 8D         [24] 5432 	mov	dptr,#___str_18
      001A0B 75 F0 80         [24] 5433 	mov	b,#0x80
      001A0E 12 01 84         [24] 5434 	lcall	_UartPrint
                                   5435 ;	main.c:107: for(uint8_t i=0;i<255;i++) 
      001A11 7F 00            [12] 5436 	mov	r7,#0x00
      001A13                       5437 00112$:
      001A13 BF FF 00         [24] 5438 	cjne	r7,#0xff,00148$
      001A16                       5439 00148$:
      001A16 50 58            [24] 5440 	jnc	00107$
                                   5441 ;	main.c:109: _result = FAT16_ROOTENTRY_SCAN();
      001A18 C0 07            [24] 5442 	push	ar7
      001A1A 12 12 F9         [24] 5443 	lcall	_FAT16_ROOTENTRY_SCAN
      001A1D AE 82            [24] 5444 	mov	r6,dpl
      001A1F D0 07            [24] 5445 	pop	ar7
                                   5446 ;	main.c:110: if(_result==0xff) break; //end of scan
      001A21 BE FF 02         [24] 5447 	cjne	r6,#0xff,00150$
      001A24 80 4A            [24] 5448 	sjmp	00107$
      001A26                       5449 00150$:
                                   5450 ;	main.c:111: else if (_result==0) //valid file
      001A26 EE               [12] 5451 	mov	a,r6
      001A27 70 44            [24] 5452 	jnz	00113$
                                   5453 ;	main.c:113: UartWriteNumber(__global_rootEntry.entry_index,DEC); //print root entry index
      001A29 78 7C            [12] 5454 	mov	r0,#(___global_rootEntry + 0x0012)
      001A2B 86 06            [24] 5455 	mov	ar6,@r0
      001A2D C0 07            [24] 5456 	push	ar7
      001A2F 74 01            [12] 5457 	mov	a,#0x01
      001A31 C0 E0            [24] 5458 	push	acc
      001A33 8E 82            [24] 5459 	mov	dpl,r6
      001A35 12 01 B6         [24] 5460 	lcall	_UartWriteNumber
      001A38 15 81            [12] 5461 	dec	sp
                                   5462 ;	main.c:114: UartWrite('\t');
      001A3A 75 82 09         [24] 5463 	mov	dpl,#0x09
      001A3D 12 00 FE         [24] 5464 	lcall	_UartWrite
                                   5465 ;	main.c:115: UartWrite('\t');
      001A40 75 82 09         [24] 5466 	mov	dpl,#0x09
      001A43 12 00 FE         [24] 5467 	lcall	_UartWrite
      001A46 D0 07            [24] 5468 	pop	ar7
                                   5469 ;	main.c:116: for(uint8_t j=0;j<11;j++)UartWrite(__global_rootEntry.name[j]); //print name
      001A48 7E 00            [12] 5470 	mov	r6,#0x00
      001A4A                       5471 00109$:
      001A4A BE 0B 00         [24] 5472 	cjne	r6,#0x0b,00152$
      001A4D                       5473 00152$:
      001A4D 50 14            [24] 5474 	jnc	00101$
      001A4F EE               [12] 5475 	mov	a,r6
      001A50 24 6A            [12] 5476 	add	a,#___global_rootEntry
      001A52 F9               [12] 5477 	mov	r1,a
      001A53 87 82            [24] 5478 	mov	dpl,@r1
      001A55 C0 07            [24] 5479 	push	ar7
      001A57 C0 06            [24] 5480 	push	ar6
      001A59 12 00 FE         [24] 5481 	lcall	_UartWrite
      001A5C D0 06            [24] 5482 	pop	ar6
      001A5E D0 07            [24] 5483 	pop	ar7
      001A60 0E               [12] 5484 	inc	r6
      001A61 80 E7            [24] 5485 	sjmp	00109$
      001A63                       5486 00101$:
                                   5487 ;	main.c:117: UartWrite('\n');
      001A63 75 82 0A         [24] 5488 	mov	dpl,#0x0a
      001A66 C0 07            [24] 5489 	push	ar7
      001A68 12 00 FE         [24] 5490 	lcall	_UartWrite
      001A6B D0 07            [24] 5491 	pop	ar7
      001A6D                       5492 00113$:
                                   5493 ;	main.c:107: for(uint8_t i=0;i<255;i++) 
      001A6D 0F               [12] 5494 	inc	r7
      001A6E 80 A3            [24] 5495 	sjmp	00112$
      001A70                       5496 00107$:
                                   5497 ;	main.c:121: UartPrint("Slct index >\n");
      001A70 90 1F 9B         [24] 5498 	mov	dptr,#___str_19
      001A73 75 F0 80         [24] 5499 	mov	b,#0x80
      001A76 12 01 84         [24] 5500 	lcall	_UartPrint
                                   5501 ;	main.c:122: _result=UartScanByte();
      001A79 12 03 C4         [24] 5502 	lcall	_UartScanByte
                                   5503 ;	main.c:123: FAT16_ROOTENTRY_READ(_result); //load the selected
      001A7C 7E 00            [12] 5504 	mov	r6,#0x00
      001A7E 8E 83            [24] 5505 	mov	dph,r6
                                   5506 ;	main.c:124: }
      001A80 02 12 C6         [24] 5507 	ljmp	_FAT16_ROOTENTRY_READ
                                   5508 ;------------------------------------------------------------
                                   5509 ;Allocation info for local variables in function 'main'
                                   5510 ;------------------------------------------------------------
                                   5511 ;buff                      Allocated with name '_main_buff_65536_215'
                                   5512 ;_resp                     Allocated to registers r7 
                                   5513 ;xram_addr                 Allocated to registers r6 r7 
                                   5514 ;_t                        Allocated to registers r5 r6 
                                   5515 ;wastetime                 Allocated to registers r4 
                                   5516 ;i                         Allocated to registers r5 
                                   5517 ;i                         Allocated to registers r5 
                                   5518 ;------------------------------------------------------------
                                   5519 ;	main.c:135: void main(void)
                                   5520 ;	-----------------------------------------
                                   5521 ;	 function main
                                   5522 ;	-----------------------------------------
      001A83                       5523 _main:
                                   5524 ;	main.c:144: uint8_t _resp=0;
      001A83 7F 00            [12] 5525 	mov	r7,#0x00
                                   5526 ;	main.c:151: UartBegin();
      001A85 C0 07            [24] 5527 	push	ar7
      001A87 12 00 DB         [24] 5528 	lcall	_UartBegin
                                   5529 ;	main.c:152: spi_init(); 
      001A8A 12 04 8A         [24] 5530 	lcall	_spi_init
                                   5531 ;	main.c:153: SDinit();
      001A8D 12 06 C3         [24] 5532 	lcall	_SDinit
      001A90 D0 07            [24] 5533 	pop	ar7
                                   5534 ;	main.c:157: while(UartReadReady())UartRead(); //flush
      001A92                       5535 00101$:
      001A92 C0 07            [24] 5536 	push	ar7
      001A94 12 00 EA         [24] 5537 	lcall	_UartReadReady
      001A97 E5 82            [12] 5538 	mov	a,dpl
      001A99 D0 07            [24] 5539 	pop	ar7
      001A9B 60 09            [24] 5540 	jz	00152$
      001A9D C0 07            [24] 5541 	push	ar7
      001A9F 12 00 F5         [24] 5542 	lcall	_UartRead
      001AA2 D0 07            [24] 5543 	pop	ar7
                                   5544 ;	main.c:162: for(unsigned int _t=0;_t<65000;_t++)
      001AA4 80 EC            [24] 5545 	sjmp	00101$
      001AA6                       5546 00152$:
      001AA6 7D 00            [12] 5547 	mov	r5,#0x00
      001AA8 7E 00            [12] 5548 	mov	r6,#0x00
      001AAA                       5549 00136$:
      001AAA C3               [12] 5550 	clr	c
      001AAB ED               [12] 5551 	mov	a,r5
      001AAC 94 E8            [12] 5552 	subb	a,#0xe8
      001AAE EE               [12] 5553 	mov	a,r6
      001AAF 94 FD            [12] 5554 	subb	a,#0xfd
      001AB1 50 2B            [24] 5555 	jnc	00107$
                                   5556 ;	main.c:164: if(UartReadReady())
      001AB3 C0 07            [24] 5557 	push	ar7
      001AB5 C0 06            [24] 5558 	push	ar6
      001AB7 C0 05            [24] 5559 	push	ar5
      001AB9 12 00 EA         [24] 5560 	lcall	_UartReadReady
      001ABC E5 82            [12] 5561 	mov	a,dpl
      001ABE D0 05            [24] 5562 	pop	ar5
      001AC0 D0 06            [24] 5563 	pop	ar6
      001AC2 D0 07            [24] 5564 	pop	ar7
      001AC4 60 07            [24] 5565 	jz	00151$
                                   5566 ;	main.c:166: _resp=UartRead();
      001AC6 12 00 F5         [24] 5567 	lcall	_UartRead
      001AC9 AF 82            [24] 5568 	mov	r7,dpl
                                   5569 ;	main.c:167: break;
                                   5570 ;	main.c:169: for(uint8_t wastetime=0;wastetime<3;wastetime++);
      001ACB 80 11            [24] 5571 	sjmp	00107$
      001ACD                       5572 00151$:
      001ACD 7C 00            [12] 5573 	mov	r4,#0x00
      001ACF                       5574 00133$:
      001ACF BC 03 00         [24] 5575 	cjne	r4,#0x03,00227$
      001AD2                       5576 00227$:
      001AD2 50 03            [24] 5577 	jnc	00137$
      001AD4 0C               [12] 5578 	inc	r4
      001AD5 80 F8            [24] 5579 	sjmp	00133$
      001AD7                       5580 00137$:
                                   5581 ;	main.c:162: for(unsigned int _t=0;_t<65000;_t++)
      001AD7 0D               [12] 5582 	inc	r5
      001AD8 BD 00 CF         [24] 5583 	cjne	r5,#0x00,00136$
      001ADB 0E               [12] 5584 	inc	r6
      001ADC 80 CC            [24] 5585 	sjmp	00136$
      001ADE                       5586 00107$:
                                   5587 ;	main.c:174: switch (_resp)
      001ADE BF 56 10         [24] 5588 	cjne	r7,#0x56,00113$
                                   5589 ;	main.c:177: UartPrint("ISA:FS0:8052\n");
      001AE1 90 1F A9         [24] 5590 	mov	dptr,#___str_20
      001AE4 75 F0 80         [24] 5591 	mov	b,#0x80
      001AE7 12 01 84         [24] 5592 	lcall	_UartPrint
                                   5593 ;	main.c:178: while(SL_getcmd()); //break when command is 0
      001AEA                       5594 00109$:
      001AEA 12 18 16         [24] 5595 	lcall	_SL_getcmd
      001AED E5 82            [12] 5596 	mov	a,dpl
      001AEF 70 F9            [24] 5597 	jnz	00109$
                                   5598 ;	main.c:182: }
      001AF1                       5599 00113$:
                                   5600 ;	main.c:187: SelectFAT16PartitionPrompt();
      001AF1 12 18 85         [24] 5601 	lcall	_SelectFAT16PartitionPrompt
                                   5602 ;	main.c:194: if(FAT16_FILE_OPEN(DEFAULT_LOAD_FILENAME)==0)
      001AF4 90 1F B7         [24] 5603 	mov	dptr,#___str_21
      001AF7 75 F0 80         [24] 5604 	mov	b,#0x80
      001AFA 12 13 1C         [24] 5605 	lcall	_FAT16_FILE_OPEN
      001AFD E5 82            [12] 5606 	mov	a,dpl
      001AFF 70 11            [24] 5607 	jnz	00115$
                                   5608 ;	main.c:196: UartPrint(DEFAULT_LOAD_FILENAME);
      001B01 90 1F B7         [24] 5609 	mov	dptr,#___str_21
      001B04 75 F0 80         [24] 5610 	mov	b,#0x80
      001B07 12 01 84         [24] 5611 	lcall	_UartPrint
                                   5612 ;	main.c:197: UartWrite('\n');
      001B0A 75 82 0A         [24] 5613 	mov	dpl,#0x0a
      001B0D 12 00 FE         [24] 5614 	lcall	_UartWrite
      001B10 80 03            [24] 5615 	sjmp	00163$
      001B12                       5616 00115$:
                                   5617 ;	main.c:199: else SelectFileAndFileOpen();
      001B12 12 1A 05         [24] 5618 	lcall	_SelectFileAndFileOpen
                                   5619 ;	main.c:201: while(1)
      001B15                       5620 00163$:
      001B15                       5621 00127$:
                                   5622 ;	main.c:203: xram_addr=(__xdata unsigned char*)(uint16_t)__global_rootEntry.bytes_read;        
      001B15 78 7E            [12] 5623 	mov	r0,#(___global_rootEntry + 0x0014)
      001B17 86 06            [24] 5624 	mov	ar6,@r0
      001B19 08               [12] 5625 	inc	r0
      001B1A 86 07            [24] 5626 	mov	ar7,@r0
                                   5627 ;	main.c:204: _resp=FAT16_FILE_READ(FILE_BUFF_SIZE,buff);
      001B1C C0 07            [24] 5628 	push	ar7
      001B1E C0 06            [24] 5629 	push	ar6
      001B20 74 2C            [12] 5630 	mov	a,#_main_buff_65536_215
      001B22 C0 E0            [24] 5631 	push	acc
      001B24 74 00            [12] 5632 	mov	a,#(_main_buff_65536_215 >> 8)
      001B26 C0 E0            [24] 5633 	push	acc
      001B28 74 40            [12] 5634 	mov	a,#0x40
      001B2A C0 E0            [24] 5635 	push	acc
      001B2C 75 82 10         [24] 5636 	mov	dpl,#0x10
      001B2F 12 14 99         [24] 5637 	lcall	_FAT16_FILE_READ
      001B32 AD 82            [24] 5638 	mov	r5,dpl
      001B34 15 81            [12] 5639 	dec	sp
      001B36 15 81            [12] 5640 	dec	sp
      001B38 15 81            [12] 5641 	dec	sp
      001B3A D0 06            [24] 5642 	pop	ar6
      001B3C D0 07            [24] 5643 	pop	ar7
                                   5644 ;	main.c:205: if(_resp==0) break;
      001B3E ED               [12] 5645 	mov	a,r5
      001B3F 70 03            [24] 5646 	jnz	00234$
      001B41 02 1B C8         [24] 5647 	ljmp	00128$
      001B44                       5648 00234$:
                                   5649 ;	main.c:206: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001B44 7D 00            [12] 5650 	mov	r5,#0x00
      001B46                       5651 00139$:
      001B46 BD 10 00         [24] 5652 	cjne	r5,#0x10,00235$
      001B49                       5653 00235$:
      001B49 50 12            [24] 5654 	jnc	00119$
                                   5655 ;	main.c:212: *(xram_addr+i) = buff[i];
      001B4B ED               [12] 5656 	mov	a,r5
      001B4C 2E               [12] 5657 	add	a,r6
      001B4D F5 82            [12] 5658 	mov	dpl,a
      001B4F E4               [12] 5659 	clr	a
      001B50 3F               [12] 5660 	addc	a,r7
      001B51 F5 83            [12] 5661 	mov	dph,a
      001B53 ED               [12] 5662 	mov	a,r5
      001B54 24 2C            [12] 5663 	add	a,#_main_buff_65536_215
      001B56 F9               [12] 5664 	mov	r1,a
      001B57 E7               [12] 5665 	mov	a,@r1
      001B58 FC               [12] 5666 	mov	r4,a
      001B59 F0               [24] 5667 	movx	@dptr,a
                                   5668 ;	main.c:206: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001B5A 0D               [12] 5669 	inc	r5
      001B5B 80 E9            [24] 5670 	sjmp	00139$
      001B5D                       5671 00119$:
                                   5672 ;	main.c:216: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001B5D 7D 00            [12] 5673 	mov	r5,#0x00
      001B5F                       5674 00142$:
      001B5F BD 10 00         [24] 5675 	cjne	r5,#0x10,00237$
      001B62                       5676 00237$:
      001B62 50 24            [24] 5677 	jnc	00125$
                                   5678 ;	main.c:218: if(buff[i]!=*(xram_addr+i)) 
      001B64 ED               [12] 5679 	mov	a,r5
      001B65 24 2C            [12] 5680 	add	a,#_main_buff_65536_215
      001B67 F9               [12] 5681 	mov	r1,a
      001B68 87 04            [24] 5682 	mov	ar4,@r1
      001B6A ED               [12] 5683 	mov	a,r5
      001B6B 2E               [12] 5684 	add	a,r6
      001B6C F5 82            [12] 5685 	mov	dpl,a
      001B6E E4               [12] 5686 	clr	a
      001B6F 3F               [12] 5687 	addc	a,r7
      001B70 F5 83            [12] 5688 	mov	dph,a
      001B72 E0               [24] 5689 	movx	a,@dptr
      001B73 FB               [12] 5690 	mov	r3,a
      001B74 EC               [12] 5691 	mov	a,r4
      001B75 B5 03 02         [24] 5692 	cjne	a,ar3,00239$
      001B78 80 0B            [24] 5693 	sjmp	00143$
      001B7A                       5694 00239$:
                                   5695 ;	main.c:220: UartPrint("\nVerif. fail");
      001B7A 90 1F BE         [24] 5696 	mov	dptr,#___str_22
      001B7D 75 F0 80         [24] 5697 	mov	b,#0x80
      001B80 12 01 84         [24] 5698 	lcall	_UartPrint
                                   5699 ;	main.c:221: while(1);
      001B83                       5700 00121$:
      001B83 80 FE            [24] 5701 	sjmp	00121$
      001B85                       5702 00143$:
                                   5703 ;	main.c:216: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001B85 0D               [12] 5704 	inc	r5
      001B86 80 D7            [24] 5705 	sjmp	00142$
      001B88                       5706 00125$:
                                   5707 ;	main.c:226: UartPrintNumber(__global_rootEntry.bytes_read);
      001B88 78 7E            [12] 5708 	mov	r0,#(___global_rootEntry + 0x0014)
      001B8A 86 04            [24] 5709 	mov	ar4,@r0
      001B8C 08               [12] 5710 	inc	r0
      001B8D 86 05            [24] 5711 	mov	ar5,@r0
      001B8F 08               [12] 5712 	inc	r0
      001B90 86 06            [24] 5713 	mov	ar6,@r0
      001B92 08               [12] 5714 	inc	r0
      001B93 86 07            [24] 5715 	mov	ar7,@r0
      001B95 8C 82            [24] 5716 	mov	dpl,r4
      001B97 8D 83            [24] 5717 	mov	dph,r5
      001B99 8E F0            [24] 5718 	mov	b,r6
      001B9B EF               [12] 5719 	mov	a,r7
      001B9C 12 02 CA         [24] 5720 	lcall	_UartPrintNumber
                                   5721 ;	main.c:227: UartWrite('/');
      001B9F 75 82 2F         [24] 5722 	mov	dpl,#0x2f
      001BA2 12 00 FE         [24] 5723 	lcall	_UartWrite
                                   5724 ;	main.c:228: UartPrintNumber(__global_rootEntry.size);
      001BA5 78 78            [12] 5725 	mov	r0,#(___global_rootEntry + 0x000e)
      001BA7 86 04            [24] 5726 	mov	ar4,@r0
      001BA9 08               [12] 5727 	inc	r0
      001BAA 86 05            [24] 5728 	mov	ar5,@r0
      001BAC 08               [12] 5729 	inc	r0
      001BAD 86 06            [24] 5730 	mov	ar6,@r0
      001BAF 08               [12] 5731 	inc	r0
      001BB0 86 07            [24] 5732 	mov	ar7,@r0
      001BB2 8C 82            [24] 5733 	mov	dpl,r4
      001BB4 8D 83            [24] 5734 	mov	dph,r5
      001BB6 8E F0            [24] 5735 	mov	b,r6
      001BB8 EF               [12] 5736 	mov	a,r7
      001BB9 12 02 CA         [24] 5737 	lcall	_UartPrintNumber
                                   5738 ;	main.c:229: UartPrint("\r");
      001BBC 90 1F CB         [24] 5739 	mov	dptr,#___str_23
      001BBF 75 F0 80         [24] 5740 	mov	b,#0x80
      001BC2 12 01 84         [24] 5741 	lcall	_UartPrint
      001BC5 02 1B 15         [24] 5742 	ljmp	00127$
      001BC8                       5743 00128$:
                                   5744 ;	main.c:233: SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);
      001BC8 53 90 EF         [24] 5745 	anl	_P1,#0xef
                                   5746 ;	main.c:236: while(1);    
      001BCB                       5747 00130$:
                                   5748 ;	main.c:238: }
      001BCB 80 FE            [24] 5749 	sjmp	00130$
                                   5750 	.area CSEG    (CODE)
                                   5751 	.area CONST   (CODE)
                                   5752 	.area CONST   (CODE)
      001E8D                       5753 ___str_0:
      001E8D 4E 75 6D 62 65 72 28  5754 	.ascii "Number(hex) < "
             68 65 78 29 20 3C 20
      001E9B 00                    5755 	.db 0x00
                                   5756 	.area CSEG    (CODE)
                                   5757 	.area CONST   (CODE)
      001E9C                       5758 ___str_1:
      001E9C 56 42 52 3A 20 73 74  5759 	.ascii "VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start"
             61 72 74 2C 62 70 73
             2C 73 70 63 2C 72 65
             73 65 72 76 65 64 53
             65 63 74 6F 72 73 2C
             6E 66 61 74 2C 6E 72
             6F 6F 74 65 2C 73 70
             66 2C 66 61 74 5F 73
             74 61 72 74
      001ED8 2C 72 6F 6F 74 65 5F  5760 	.ascii ",roote_start,data_start"
             73 74 61 72 74 2C 64
             61 74 61 5F 73 74 61
             72 74
      001EEF 0A                    5761 	.db 0x0a
      001EF0 00                    5762 	.db 0x00
                                   5763 	.area CSEG    (CODE)
                                   5764 	.area CONST   (CODE)
      001EF1                       5765 ___str_2:
      001EF1 0A                    5766 	.db 0x0a
      001EF2 52 4F 4F 54 5F 45 4E  5767 	.ascii "ROOT_ENTRY_INDEX:"
             54 52 59 5F 49 4E 44
             45 58 3A
      001F03 00                    5768 	.db 0x00
                                   5769 	.area CSEG    (CODE)
                                   5770 	.area CONST   (CODE)
      001F04                       5771 ___str_3:
      001F04 0A                    5772 	.db 0x0a
      001F05 46 49 4C 45 3A 20     5773 	.ascii "FILE: "
      001F0B 00                    5774 	.db 0x00
                                   5775 	.area CSEG    (CODE)
                                   5776 	.area CONST   (CODE)
      001F0C                       5777 ___str_4:
      001F0C 0A                    5778 	.db 0x0a
      001F0D 53 54 41 52 54 3A 20  5779 	.ascii "START: "
      001F14 00                    5780 	.db 0x00
                                   5781 	.area CSEG    (CODE)
                                   5782 	.area CONST   (CODE)
      001F15                       5783 ___str_5:
      001F15 0A                    5784 	.db 0x0a
      001F16 53 49 5A 45 3A 20     5785 	.ascii "SIZE: "
      001F1C 00                    5786 	.db 0x00
                                   5787 	.area CSEG    (CODE)
                                   5788 	.area CONST   (CODE)
      001F1D                       5789 ___str_6:
      001F1D 0A                    5790 	.db 0x0a
      001F1E 41 54 54 52 3A 20 30  5791 	.ascii "ATTR: 0x"
             78
      001F26 00                    5792 	.db 0x00
                                   5793 	.area CSEG    (CODE)
      001BCD                       5794 _FAT16_FILE_READ_power2error_65536_177:
      001BCD 6E 62 79 74 65 73 20  5795 	.ascii "nbytes must be power of 2"
             6D 75 73 74 20 62 65
             20 70 6F 77 65 72 20
             6F 66 20 32
      001BE6 0A                    5796 	.db 0x0a
      001BE7 00                    5797 	.db 0x00
                                   5798 	.area CONST   (CODE)
      001F27                       5799 ___str_8:
      001F27 46 49 4C 45 20 4E 4F  5800 	.ascii "FILE NOT FOUND"
             54 20 46 4F 55 4E 44
      001F35 0A                    5801 	.db 0x0a
      001F36 2E                    5802 	.ascii "."
      001F37 00                    5803 	.db 0x00
                                   5804 	.area CSEG    (CODE)
      001BE8                       5805 _SERIAL_LOADER_VERSION_INFO:
      001BE8 49 53 41 3A 53 30 3A  5806 	.ascii "ISA:S0:8052"
             38 30 35 32
      001BF3 0A                    5807 	.db 0x0a
      001BF4 00                    5808 	.db 0x00
      001BF5                       5809 _SelectFAT16PartitionPrompt_HALTING_MSG_65536_196:
      001BF5 48 41 4C 54 21        5810 	.ascii "HALT!"
      001BFA 00                    5811 	.db 0x00
                                   5812 	.area CONST   (CODE)
      001F38                       5813 ___str_10:
      001F38 42 41 44 20 4D 42 52  5814 	.ascii "BAD MBR!"
             21
      001F40 0A                    5815 	.db 0x0a
      001F41 00                    5816 	.db 0x00
                                   5817 	.area CSEG    (CODE)
                                   5818 	.area CONST   (CODE)
      001F42                       5819 ___str_11:
      001F42 0A                    5820 	.db 0x0a
      001F43 50 74 6E 2E 20        5821 	.ascii "Ptn. "
      001F48 00                    5822 	.db 0x00
                                   5823 	.area CSEG    (CODE)
                                   5824 	.area CONST   (CODE)
      001F49                       5825 ___str_12:
      001F49 46 41 54 31 36        5826 	.ascii "FAT16"
      001F4E 00                    5827 	.db 0x00
                                   5828 	.area CSEG    (CODE)
                                   5829 	.area CONST   (CODE)
      001F4F                       5830 ___str_13:
      001F4F 55 6E 6B 6E 6F 77 6E  5831 	.ascii "Unknown"
      001F56 00                    5832 	.db 0x00
                                   5833 	.area CSEG    (CODE)
                                   5834 	.area CONST   (CODE)
      001F57                       5835 ___str_14:
      001F57 53 6C 63 74 20 50 74  5836 	.ascii "Slct Ptn. >"
             6E 2E 20 3E
      001F62 0A                    5837 	.db 0x0a
      001F63 00                    5838 	.db 0x00
                                   5839 	.area CSEG    (CODE)
                                   5840 	.area CONST   (CODE)
      001F64                       5841 ___str_15:
      001F64 0A                    5842 	.db 0x0a
      001F65 50 74 6E 2E 20 4D 6F  5843 	.ascii "Ptn. Mounted:"
             75 6E 74 65 64 3A
      001F72 00                    5844 	.db 0x00
                                   5845 	.area CSEG    (CODE)
                                   5846 	.area CONST   (CODE)
      001F73                       5847 ___str_16:
      001F73 0A                    5848 	.db 0x0a
      001F74 42 61 64 20 50 74 6E  5849 	.ascii "Bad Ptn."
             2E
      001F7C 0A                    5850 	.db 0x0a
      001F7D 00                    5851 	.db 0x00
                                   5852 	.area CSEG    (CODE)
                                   5853 	.area CONST   (CODE)
      001F7E                       5854 ___str_17:
      001F7E 4E 6F 20 46 41 54 31  5855 	.ascii "No FAT16 Ptn."
             36 20 50 74 6E 2E
      001F8B 0A                    5856 	.db 0x0a
      001F8C 00                    5857 	.db 0x00
                                   5858 	.area CSEG    (CODE)
                                   5859 	.area CONST   (CODE)
      001F8D                       5860 ___str_18:
      001F8D 49 4E 44 45 58        5861 	.ascii "INDEX"
      001F92 09                    5862 	.db 0x09
      001F93 09                    5863 	.db 0x09
      001F94 46 49 4C 45           5864 	.ascii "FILE"
      001F98 0A                    5865 	.db 0x0a
      001F99 0A                    5866 	.db 0x0a
      001F9A 00                    5867 	.db 0x00
                                   5868 	.area CSEG    (CODE)
                                   5869 	.area CONST   (CODE)
      001F9B                       5870 ___str_19:
      001F9B 53 6C 63 74 20 69 6E  5871 	.ascii "Slct index >"
             64 65 78 20 3E
      001FA7 0A                    5872 	.db 0x0a
      001FA8 00                    5873 	.db 0x00
                                   5874 	.area CSEG    (CODE)
                                   5875 	.area CONST   (CODE)
      001FA9                       5876 ___str_20:
      001FA9 49 53 41 3A 46 53 30  5877 	.ascii "ISA:FS0:8052"
             3A 38 30 35 32
      001FB5 0A                    5878 	.db 0x0a
      001FB6 00                    5879 	.db 0x00
                                   5880 	.area CSEG    (CODE)
                                   5881 	.area CONST   (CODE)
      001FB7                       5882 ___str_21:
      001FB7 46 57 2E 42 49 4E     5883 	.ascii "FW.BIN"
      001FBD 00                    5884 	.db 0x00
                                   5885 	.area CSEG    (CODE)
                                   5886 	.area CONST   (CODE)
      001FBE                       5887 ___str_22:
      001FBE 0A                    5888 	.db 0x0a
      001FBF 56 65 72 69 66 2E 20  5889 	.ascii "Verif. fail"
             66 61 69 6C
      001FCA 00                    5890 	.db 0x00
                                   5891 	.area CSEG    (CODE)
                                   5892 	.area CONST   (CODE)
      001FCB                       5893 ___str_23:
      001FCB 0D                    5894 	.db 0x0d
      001FCC 00                    5895 	.db 0x00
                                   5896 	.area CSEG    (CODE)
                                   5897 	.area XINIT   (CODE)
                                   5898 	.area CABS    (ABS,CODE)
