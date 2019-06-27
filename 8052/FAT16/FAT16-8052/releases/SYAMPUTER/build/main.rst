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
                                     36 	.globl _MBR_DETECT_FAT16
                                     37 	.globl _MBR_LOAD_PARTITION_TABLE_ENTRY
                                     38 	.globl _MBR_CHECK__SIGNATURE
                                     39 	.globl _HELPER_filename_to_8dot3filename
                                     40 	.globl _HELPER_to_uppercase
                                     41 	.globl _HELPER_rootentry_type
                                     42 	.globl _HELPER_strlen
                                     43 	.globl _HELPER_strncmp
                                     44 	.globl _HELPER_strcmp
                                     45 	.globl _HELPER_load_littleendian32
                                     46 	.globl _HELPER_load_littleendian16
                                     47 	.globl _SDreadBlock
                                     48 	.globl _SDread
                                     49 	.globl _SDinit
                                     50 	.globl _sd_acmd
                                     51 	.globl _sd_cmd
                                     52 	.globl _sd_initial_clk
                                     53 	.globl _sd_isbusy
                                     54 	.globl _spi_transfer_all
                                     55 	.globl _spi_transfer
                                     56 	.globl _spi_init
                                     57 	.globl _UartScanLine
                                     58 	.globl _UartScanByte
                                     59 	.globl _UartPrintNumber
                                     60 	.globl _UartWriteNumbers
                                     61 	.globl _UartWriteNumber
                                     62 	.globl _UartPrint
                                     63 	.globl _UartReadBuff
                                     64 	.globl _UartWriteBuff
                                     65 	.globl _UartWrite
                                     66 	.globl _UartRead
                                     67 	.globl _UartReadReady
                                     68 	.globl _UartBegin
                                     69 	.globl _dec2hexNibble
                                     70 	.globl _hex2dec
                                     71 	.globl _hexNibble2dec
                                     72 	.globl _TF2
                                     73 	.globl _EXF2
                                     74 	.globl _RCLK
                                     75 	.globl _TCLK
                                     76 	.globl _EXEN2
                                     77 	.globl _TR2
                                     78 	.globl _C_T2
                                     79 	.globl _CP_RL2
                                     80 	.globl _T2CON_7
                                     81 	.globl _T2CON_6
                                     82 	.globl _T2CON_5
                                     83 	.globl _T2CON_4
                                     84 	.globl _T2CON_3
                                     85 	.globl _T2CON_2
                                     86 	.globl _T2CON_1
                                     87 	.globl _T2CON_0
                                     88 	.globl _PT2
                                     89 	.globl _ET2
                                     90 	.globl _CY
                                     91 	.globl _AC
                                     92 	.globl _F0
                                     93 	.globl _RS1
                                     94 	.globl _RS0
                                     95 	.globl _OV
                                     96 	.globl _F1
                                     97 	.globl _P
                                     98 	.globl _PS
                                     99 	.globl _PT1
                                    100 	.globl _PX1
                                    101 	.globl _PT0
                                    102 	.globl _PX0
                                    103 	.globl _RD
                                    104 	.globl _WR
                                    105 	.globl _T1
                                    106 	.globl _T0
                                    107 	.globl _INT1
                                    108 	.globl _INT0
                                    109 	.globl _TXD
                                    110 	.globl _RXD
                                    111 	.globl _P3_7
                                    112 	.globl _P3_6
                                    113 	.globl _P3_5
                                    114 	.globl _P3_4
                                    115 	.globl _P3_3
                                    116 	.globl _P3_2
                                    117 	.globl _P3_1
                                    118 	.globl _P3_0
                                    119 	.globl _EA
                                    120 	.globl _ES
                                    121 	.globl _ET1
                                    122 	.globl _EX1
                                    123 	.globl _ET0
                                    124 	.globl _EX0
                                    125 	.globl _P2_7
                                    126 	.globl _P2_6
                                    127 	.globl _P2_5
                                    128 	.globl _P2_4
                                    129 	.globl _P2_3
                                    130 	.globl _P2_2
                                    131 	.globl _P2_1
                                    132 	.globl _P2_0
                                    133 	.globl _SM0
                                    134 	.globl _SM1
                                    135 	.globl _SM2
                                    136 	.globl _REN
                                    137 	.globl _TB8
                                    138 	.globl _RB8
                                    139 	.globl _TI
                                    140 	.globl _RI
                                    141 	.globl _P1_7
                                    142 	.globl _P1_6
                                    143 	.globl _P1_5
                                    144 	.globl _P1_4
                                    145 	.globl _P1_3
                                    146 	.globl _P1_2
                                    147 	.globl _P1_1
                                    148 	.globl _P1_0
                                    149 	.globl _TF1
                                    150 	.globl _TR1
                                    151 	.globl _TF0
                                    152 	.globl _TR0
                                    153 	.globl _IE1
                                    154 	.globl _IT1
                                    155 	.globl _IE0
                                    156 	.globl _IT0
                                    157 	.globl _P0_7
                                    158 	.globl _P0_6
                                    159 	.globl _P0_5
                                    160 	.globl _P0_4
                                    161 	.globl _P0_3
                                    162 	.globl _P0_2
                                    163 	.globl _P0_1
                                    164 	.globl _P0_0
                                    165 	.globl _TH2
                                    166 	.globl _TL2
                                    167 	.globl _RCAP2H
                                    168 	.globl _RCAP2L
                                    169 	.globl _T2CON
                                    170 	.globl _B
                                    171 	.globl _ACC
                                    172 	.globl _PSW
                                    173 	.globl _IP
                                    174 	.globl _P3
                                    175 	.globl _IE
                                    176 	.globl _P2
                                    177 	.globl _SBUF
                                    178 	.globl _SCON
                                    179 	.globl _P1
                                    180 	.globl _TH1
                                    181 	.globl _TH0
                                    182 	.globl _TL1
                                    183 	.globl _TL0
                                    184 	.globl _TMOD
                                    185 	.globl _TCON
                                    186 	.globl _PCON
                                    187 	.globl _DPH
                                    188 	.globl _DPL
                                    189 	.globl _SP
                                    190 	.globl _P0
                                    191 	.globl _EEPROM_WRITE_PROTECTION
                                    192 	.globl _HELPER_filename_to_8dot3filename_PARM_2
                                    193 	.globl _SDreadBlock_PARM_2
                                    194 	.globl _sd_acmd_PARM_2
                                    195 	.globl _sd_cmd_PARM_2
                                    196 	.globl _spi_transfer_all_PARM_3
                                    197 	.globl _spi_transfer_all_PARM_2
                                    198 	.globl _UartReadBuff_PARM_2
                                    199 	.globl _UartWriteBuff_PARM_2
                                    200 	.globl _hex2dec_PARM_2
                                    201 ;--------------------------------------------------------
                                    202 ; special function registers
                                    203 ;--------------------------------------------------------
                                    204 	.area RSEG    (ABS,DATA)
      000000                        205 	.org 0x0000
                           000080   206 _P0	=	0x0080
                           000081   207 _SP	=	0x0081
                           000082   208 _DPL	=	0x0082
                           000083   209 _DPH	=	0x0083
                           000087   210 _PCON	=	0x0087
                           000088   211 _TCON	=	0x0088
                           000089   212 _TMOD	=	0x0089
                           00008A   213 _TL0	=	0x008a
                           00008B   214 _TL1	=	0x008b
                           00008C   215 _TH0	=	0x008c
                           00008D   216 _TH1	=	0x008d
                           000090   217 _P1	=	0x0090
                           000098   218 _SCON	=	0x0098
                           000099   219 _SBUF	=	0x0099
                           0000A0   220 _P2	=	0x00a0
                           0000A8   221 _IE	=	0x00a8
                           0000B0   222 _P3	=	0x00b0
                           0000B8   223 _IP	=	0x00b8
                           0000D0   224 _PSW	=	0x00d0
                           0000E0   225 _ACC	=	0x00e0
                           0000F0   226 _B	=	0x00f0
                           0000C8   227 _T2CON	=	0x00c8
                           0000CA   228 _RCAP2L	=	0x00ca
                           0000CB   229 _RCAP2H	=	0x00cb
                           0000CC   230 _TL2	=	0x00cc
                           0000CD   231 _TH2	=	0x00cd
                                    232 ;--------------------------------------------------------
                                    233 ; special function bits
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           000080   237 _P0_0	=	0x0080
                           000081   238 _P0_1	=	0x0081
                           000082   239 _P0_2	=	0x0082
                           000083   240 _P0_3	=	0x0083
                           000084   241 _P0_4	=	0x0084
                           000085   242 _P0_5	=	0x0085
                           000086   243 _P0_6	=	0x0086
                           000087   244 _P0_7	=	0x0087
                           000088   245 _IT0	=	0x0088
                           000089   246 _IE0	=	0x0089
                           00008A   247 _IT1	=	0x008a
                           00008B   248 _IE1	=	0x008b
                           00008C   249 _TR0	=	0x008c
                           00008D   250 _TF0	=	0x008d
                           00008E   251 _TR1	=	0x008e
                           00008F   252 _TF1	=	0x008f
                           000090   253 _P1_0	=	0x0090
                           000091   254 _P1_1	=	0x0091
                           000092   255 _P1_2	=	0x0092
                           000093   256 _P1_3	=	0x0093
                           000094   257 _P1_4	=	0x0094
                           000095   258 _P1_5	=	0x0095
                           000096   259 _P1_6	=	0x0096
                           000097   260 _P1_7	=	0x0097
                           000098   261 _RI	=	0x0098
                           000099   262 _TI	=	0x0099
                           00009A   263 _RB8	=	0x009a
                           00009B   264 _TB8	=	0x009b
                           00009C   265 _REN	=	0x009c
                           00009D   266 _SM2	=	0x009d
                           00009E   267 _SM1	=	0x009e
                           00009F   268 _SM0	=	0x009f
                           0000A0   269 _P2_0	=	0x00a0
                           0000A1   270 _P2_1	=	0x00a1
                           0000A2   271 _P2_2	=	0x00a2
                           0000A3   272 _P2_3	=	0x00a3
                           0000A4   273 _P2_4	=	0x00a4
                           0000A5   274 _P2_5	=	0x00a5
                           0000A6   275 _P2_6	=	0x00a6
                           0000A7   276 _P2_7	=	0x00a7
                           0000A8   277 _EX0	=	0x00a8
                           0000A9   278 _ET0	=	0x00a9
                           0000AA   279 _EX1	=	0x00aa
                           0000AB   280 _ET1	=	0x00ab
                           0000AC   281 _ES	=	0x00ac
                           0000AF   282 _EA	=	0x00af
                           0000B0   283 _P3_0	=	0x00b0
                           0000B1   284 _P3_1	=	0x00b1
                           0000B2   285 _P3_2	=	0x00b2
                           0000B3   286 _P3_3	=	0x00b3
                           0000B4   287 _P3_4	=	0x00b4
                           0000B5   288 _P3_5	=	0x00b5
                           0000B6   289 _P3_6	=	0x00b6
                           0000B7   290 _P3_7	=	0x00b7
                           0000B0   291 _RXD	=	0x00b0
                           0000B1   292 _TXD	=	0x00b1
                           0000B2   293 _INT0	=	0x00b2
                           0000B3   294 _INT1	=	0x00b3
                           0000B4   295 _T0	=	0x00b4
                           0000B5   296 _T1	=	0x00b5
                           0000B6   297 _WR	=	0x00b6
                           0000B7   298 _RD	=	0x00b7
                           0000B8   299 _PX0	=	0x00b8
                           0000B9   300 _PT0	=	0x00b9
                           0000BA   301 _PX1	=	0x00ba
                           0000BB   302 _PT1	=	0x00bb
                           0000BC   303 _PS	=	0x00bc
                           0000D0   304 _P	=	0x00d0
                           0000D1   305 _F1	=	0x00d1
                           0000D2   306 _OV	=	0x00d2
                           0000D3   307 _RS0	=	0x00d3
                           0000D4   308 _RS1	=	0x00d4
                           0000D5   309 _F0	=	0x00d5
                           0000D6   310 _AC	=	0x00d6
                           0000D7   311 _CY	=	0x00d7
                           0000AD   312 _ET2	=	0x00ad
                           0000BD   313 _PT2	=	0x00bd
                           0000C8   314 _T2CON_0	=	0x00c8
                           0000C9   315 _T2CON_1	=	0x00c9
                           0000CA   316 _T2CON_2	=	0x00ca
                           0000CB   317 _T2CON_3	=	0x00cb
                           0000CC   318 _T2CON_4	=	0x00cc
                           0000CD   319 _T2CON_5	=	0x00cd
                           0000CE   320 _T2CON_6	=	0x00ce
                           0000CF   321 _T2CON_7	=	0x00cf
                           0000C8   322 _CP_RL2	=	0x00c8
                           0000C9   323 _C_T2	=	0x00c9
                           0000CA   324 _TR2	=	0x00ca
                           0000CB   325 _EXEN2	=	0x00cb
                           0000CC   326 _TCLK	=	0x00cc
                           0000CD   327 _RCLK	=	0x00cd
                           0000CE   328 _EXF2	=	0x00ce
                           0000CF   329 _TF2	=	0x00cf
                                    330 ;--------------------------------------------------------
                                    331 ; overlayable register banks
                                    332 ;--------------------------------------------------------
                                    333 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        334 	.ds 8
                                    335 ;--------------------------------------------------------
                                    336 ; internal ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area DSEG    (DATA)
      000008                        339 _hex2dec_PARM_2:
      000008                        340 	.ds 1
      000009                        341 _UartWriteBuff_PARM_2:
      000009                        342 	.ds 1
      00000A                        343 _UartReadBuff_PARM_2:
      00000A                        344 	.ds 1
      00000B                        345 _spi_transfer_all_PARM_2:
      00000B                        346 	.ds 1
      00000C                        347 _spi_transfer_all_PARM_3:
      00000C                        348 	.ds 1
      00000D                        349 _sd_cmd_PARM_2:
      00000D                        350 	.ds 4
      000011                        351 _sd_acmd_PARM_2:
      000011                        352 	.ds 4
      000015                        353 _SDreadBlock_PARM_2:
      000015                        354 	.ds 3
      000018                        355 _HELPER_filename_to_8dot3filename_PARM_2:
      000018                        356 	.ds 3
      00001B                        357 _HELPER_filename_to_8dot3filename_fname_65536_120:
      00001B                        358 	.ds 3
      00001E                        359 _HELPER_filename_to_8dot3filename_i_131072_126:
      00001E                        360 	.ds 1
      00001F                        361 _VBR_MOUNT_VBR_sloc0_1_0:
      00001F                        362 	.ds 4
      000023                        363 _FAT16_LOAD_ROOTENTRY_roote_number_65536_149:
      000023                        364 	.ds 2
      000025                        365 _FAT16_LOAD_ROOTENTRY_sloc0_1_0:
      000025                        366 	.ds 4
      000029                        367 _FAT16_LOAD_ROOTENTRY_sloc1_1_0:
      000029                        368 	.ds 2
      00002B                        369 _EEPROM_WRITE_PROTECTION::
      00002B                        370 	.ds 1
      00002C                        371 _main_buff_65536_214:
      00002C                        372 	.ds 16
                                    373 ;--------------------------------------------------------
                                    374 ; overlayable items in internal ram 
                                    375 ;--------------------------------------------------------
                                    376 	.area	OSEG    (OVR,DATA)
                                    377 	.area	OSEG    (OVR,DATA)
                                    378 	.area	OSEG    (OVR,DATA)
                                    379 	.area	OSEG    (OVR,DATA)
                                    380 	.area	OSEG    (OVR,DATA)
      00003D                        381 _spi_transfer_PARM_2:
      00003D                        382 	.ds 1
                                    383 	.area	OSEG    (OVR,DATA)
      00003D                        384 _HELPER_strcmp_PARM_2:
      00003D                        385 	.ds 3
                                    386 	.area	OSEG    (OVR,DATA)
      00003D                        387 _HELPER_strncmp_PARM_2:
      00003D                        388 	.ds 3
      000040                        389 _HELPER_strncmp_PARM_3:
      000040                        390 	.ds 1
                                    391 	.area	OSEG    (OVR,DATA)
                                    392 	.area	OSEG    (OVR,DATA)
                                    393 	.area	OSEG    (OVR,DATA)
                                    394 ;--------------------------------------------------------
                                    395 ; Stack segment in internal ram 
                                    396 ;--------------------------------------------------------
                                    397 	.area	SSEG
      0000C2                        398 __start__stack:
      0000C2                        399 	.ds	1
                                    400 
                                    401 ;--------------------------------------------------------
                                    402 ; indirectly addressable internal ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area ISEG    (DATA)
      000041                        405 ___global_partitionTableEntry:
      000041                        406 	.ds 9
      00004A                        407 ___global_vbr:
      00004A                        408 	.ds 31
      000069                        409 ___global_nthPartitionVBRmounted:
      000069                        410 	.ds 1
      00006A                        411 ___global_rootEntry:
      00006A                        412 	.ds 24
      000082                        413 _MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132:
      000082                        414 	.ds 16
      000092                        415 _VBR_MOUNT_VBR_temp_65536_138:
      000092                        416 	.ds 16
      0000A2                        417 _FAT16_LOAD_ROOTENTRY_temp_65536_150:
      0000A2                        418 	.ds 32
                                    419 ;--------------------------------------------------------
                                    420 ; absolute internal ram data
                                    421 ;--------------------------------------------------------
                                    422 	.area IABS    (ABS,DATA)
                                    423 	.area IABS    (ABS,DATA)
                                    424 ;--------------------------------------------------------
                                    425 ; bit data
                                    426 ;--------------------------------------------------------
                                    427 	.area BSEG    (BIT)
                                    428 ;--------------------------------------------------------
                                    429 ; paged external ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area PSEG    (PAG,XDATA)
                                    432 ;--------------------------------------------------------
                                    433 ; external ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area XSEG    (XDATA)
                                    436 ;--------------------------------------------------------
                                    437 ; absolute external ram data
                                    438 ;--------------------------------------------------------
                                    439 	.area XABS    (ABS,XDATA)
                                    440 ;--------------------------------------------------------
                                    441 ; external initialized ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area XISEG   (XDATA)
                                    444 	.area HOME    (CODE)
                                    445 	.area GSINIT0 (CODE)
                                    446 	.area GSINIT1 (CODE)
                                    447 	.area GSINIT2 (CODE)
                                    448 	.area GSINIT3 (CODE)
                                    449 	.area GSINIT4 (CODE)
                                    450 	.area GSINIT5 (CODE)
                                    451 	.area GSINIT  (CODE)
                                    452 	.area GSFINAL (CODE)
                                    453 	.area CSEG    (CODE)
                                    454 ;--------------------------------------------------------
                                    455 ; interrupt vector 
                                    456 ;--------------------------------------------------------
                                    457 	.area HOME    (CODE)
      000000                        458 __interrupt_vect:
      000000 02 00 06         [24]  459 	ljmp	__sdcc_gsinit_startup
                                    460 ;--------------------------------------------------------
                                    461 ; global & static initialisations
                                    462 ;--------------------------------------------------------
                                    463 	.area HOME    (CODE)
                                    464 	.area GSINIT  (CODE)
                                    465 	.area GSFINAL (CODE)
                                    466 	.area GSINIT  (CODE)
                                    467 	.globl __sdcc_gsinit_startup
                                    468 	.globl __sdcc_program_startup
                                    469 	.globl __start__stack
                                    470 	.globl __mcs51_genXINIT
                                    471 	.globl __mcs51_genXRAMCLEAR
                                    472 	.globl __mcs51_genRAMCLEAR
                                    473 ;	serialloader.h:20: volatile unsigned char EEPROM_WRITE_PROTECTION=1;
      00005F 75 2B 01         [24]  474 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                    475 ;	fat.h:238: __idata static uint8_t __global_nthPartitionVBRmounted=255; //mounted if value is 0-3 for the 4 partitions,else not mounted
      000062 78 69            [12]  476 	mov	r0,#___global_nthPartitionVBRmounted
      000064 76 FF            [12]  477 	mov	@r0,#0xff
                                    478 	.area GSFINAL (CODE)
      000066 02 00 03         [24]  479 	ljmp	__sdcc_program_startup
                                    480 ;--------------------------------------------------------
                                    481 ; Home
                                    482 ;--------------------------------------------------------
                                    483 	.area HOME    (CODE)
                                    484 	.area HOME    (CODE)
      000003                        485 __sdcc_program_startup:
      000003 02 19 5F         [24]  486 	ljmp	_main
                                    487 ;	return from main will return to caller
                                    488 ;--------------------------------------------------------
                                    489 ; code
                                    490 ;--------------------------------------------------------
                                    491 	.area CSEG    (CODE)
                                    492 ;------------------------------------------------------------
                                    493 ;Allocation info for local variables in function 'hexNibble2dec'
                                    494 ;------------------------------------------------------------
                                    495 ;nibble                    Allocated to registers r7 
                                    496 ;------------------------------------------------------------
                                    497 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    498 ;	-----------------------------------------
                                    499 ;	 function hexNibble2dec
                                    500 ;	-----------------------------------------
      000069                        501 _hexNibble2dec:
                           000007   502 	ar7 = 0x07
                           000006   503 	ar6 = 0x06
                           000005   504 	ar5 = 0x05
                           000004   505 	ar4 = 0x04
                           000003   506 	ar3 = 0x03
                           000002   507 	ar2 = 0x02
                           000001   508 	ar1 = 0x01
                           000000   509 	ar0 = 0x00
      000069 AF 82            [24]  510 	mov	r7,dpl
                                    511 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      00006B BF 30 00         [24]  512 	cjne	r7,#0x30,00139$
      00006E                        513 00139$:
      00006E 40 0D            [24]  514 	jc	00110$
      000070 EF               [12]  515 	mov	a,r7
      000071 24 C6            [12]  516 	add	a,#0xff - 0x39
      000073 40 08            [24]  517 	jc	00110$
      000075 8F 06            [24]  518 	mov	ar6,r7
      000077 EE               [12]  519 	mov	a,r6
      000078 24 D0            [12]  520 	add	a,#0xd0
      00007A F5 82            [12]  521 	mov	dpl,a
      00007C 22               [24]  522 	ret
      00007D                        523 00110$:
                                    524 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      00007D BF 41 00         [24]  525 	cjne	r7,#0x41,00142$
      000080                        526 00142$:
      000080 40 0D            [24]  527 	jc	00106$
      000082 EF               [12]  528 	mov	a,r7
      000083 24 B9            [12]  529 	add	a,#0xff - 0x46
      000085 40 08            [24]  530 	jc	00106$
      000087 8F 06            [24]  531 	mov	ar6,r7
      000089 74 C9            [12]  532 	mov	a,#0xc9
      00008B 2E               [12]  533 	add	a,r6
      00008C F5 82            [12]  534 	mov	dpl,a
      00008E 22               [24]  535 	ret
      00008F                        536 00106$:
                                    537 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      00008F BF 61 00         [24]  538 	cjne	r7,#0x61,00145$
      000092                        539 00145$:
      000092 40 0B            [24]  540 	jc	00102$
      000094 EF               [12]  541 	mov	a,r7
      000095 24 99            [12]  542 	add	a,#0xff - 0x66
      000097 40 06            [24]  543 	jc	00102$
      000099 74 A9            [12]  544 	mov	a,#0xa9
      00009B 2F               [12]  545 	add	a,r7
      00009C F5 82            [12]  546 	mov	dpl,a
      00009E 22               [24]  547 	ret
      00009F                        548 00102$:
                                    549 ;	uart.h:11: else return 0;
      00009F 75 82 00         [24]  550 	mov	dpl,#0x00
                                    551 ;	uart.h:12: }
      0000A2 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'hex2dec'
                                    555 ;------------------------------------------------------------
                                    556 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    557 ;MSnibble                  Allocated to registers r7 
                                    558 ;------------------------------------------------------------
                                    559 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    560 ;	-----------------------------------------
                                    561 ;	 function hex2dec
                                    562 ;	-----------------------------------------
      0000A3                        563 _hex2dec:
                                    564 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      0000A3 12 00 69         [24]  565 	lcall	_hexNibble2dec
      0000A6 E5 82            [12]  566 	mov	a,dpl
      0000A8 C4               [12]  567 	swap	a
      0000A9 54 F0            [12]  568 	anl	a,#0xf0
      0000AB FF               [12]  569 	mov	r7,a
      0000AC 85 08 82         [24]  570 	mov	dpl,_hex2dec_PARM_2
      0000AF C0 07            [24]  571 	push	ar7
      0000B1 12 00 69         [24]  572 	lcall	_hexNibble2dec
      0000B4 AE 82            [24]  573 	mov	r6,dpl
      0000B6 D0 07            [24]  574 	pop	ar7
      0000B8 EE               [12]  575 	mov	a,r6
      0000B9 2F               [12]  576 	add	a,r7
      0000BA F5 82            [12]  577 	mov	dpl,a
                                    578 ;	uart.h:18: }
      0000BC 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'dec2hexNibble'
                                    582 ;------------------------------------------------------------
                                    583 ;dec                       Allocated to registers r7 
                                    584 ;------------------------------------------------------------
                                    585 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    586 ;	-----------------------------------------
                                    587 ;	 function dec2hexNibble
                                    588 ;	-----------------------------------------
      0000BD                        589 _dec2hexNibble:
                                    590 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000BD E5 82            [12]  591 	mov	a,dpl
      0000BF FF               [12]  592 	mov	r7,a
      0000C0 24 F0            [12]  593 	add	a,#0xff - 0x0f
      0000C2 50 04            [24]  594 	jnc	00102$
      0000C4 75 82 58         [24]  595 	mov	dpl,#0x58
      0000C7 22               [24]  596 	ret
      0000C8                        597 00102$:
                                    598 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C8 EF               [12]  599 	mov	a,r7
      0000C9 24 F6            [12]  600 	add	a,#0xff - 0x09
      0000CB 40 08            [24]  601 	jc	00104$
      0000CD 8F 06            [24]  602 	mov	ar6,r7
      0000CF 74 30            [12]  603 	mov	a,#0x30
      0000D1 2E               [12]  604 	add	a,r6
      0000D2 F5 82            [12]  605 	mov	dpl,a
      0000D4 22               [24]  606 	ret
      0000D5                        607 00104$:
                                    608 ;	uart.h:27: else return 'A' + dec - 10;
      0000D5 74 37            [12]  609 	mov	a,#0x37
      0000D7 2F               [12]  610 	add	a,r7
      0000D8 F5 82            [12]  611 	mov	dpl,a
                                    612 ;	uart.h:28: }
      0000DA 22               [24]  613 	ret
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'UartBegin'
                                    616 ;------------------------------------------------------------
                                    617 ;	uart.h:33: void UartBegin()
                                    618 ;	-----------------------------------------
                                    619 ;	 function UartBegin
                                    620 ;	-----------------------------------------
      0000DB                        621 _UartBegin:
                                    622 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000DB 75 89 20         [24]  623 	mov	_TMOD,#0x20
                                    624 ;	uart.h:39: TH1 = 0XF3; //2400
      0000DE 75 8D F3         [24]  625 	mov	_TH1,#0xf3
                                    626 ;	uart.h:40: SCON = 0X50;
      0000E1 75 98 50         [24]  627 	mov	_SCON,#0x50
                                    628 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000E4 43 87 80         [24]  629 	orl	_PCON,#0x80
                                    630 ;	uart.h:44: TR1 = 1; //START TIMER
                                    631 ;	assignBit
      0000E7 D2 8E            [12]  632 	setb	_TR1
                                    633 ;	uart.h:45: }
      0000E9 22               [24]  634 	ret
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'UartReadReady'
                                    637 ;------------------------------------------------------------
                                    638 ;	uart.h:47: unsigned char UartReadReady()
                                    639 ;	-----------------------------------------
                                    640 ;	 function UartReadReady
                                    641 ;	-----------------------------------------
      0000EA                        642 _UartReadReady:
                                    643 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000EA 20 98 04         [24]  644 	jb	_RI,00102$
      0000ED 75 82 00         [24]  645 	mov	dpl,#0x00
      0000F0 22               [24]  646 	ret
      0000F1                        647 00102$:
                                    648 ;	uart.h:50: else return 1; //received and ready
      0000F1 75 82 01         [24]  649 	mov	dpl,#0x01
                                    650 ;	uart.h:51: }
      0000F4 22               [24]  651 	ret
                                    652 ;------------------------------------------------------------
                                    653 ;Allocation info for local variables in function 'UartRead'
                                    654 ;------------------------------------------------------------
                                    655 ;value                     Allocated to registers 
                                    656 ;------------------------------------------------------------
                                    657 ;	uart.h:53: unsigned char UartRead()
                                    658 ;	-----------------------------------------
                                    659 ;	 function UartRead
                                    660 ;	-----------------------------------------
      0000F5                        661 _UartRead:
                                    662 ;	uart.h:56: while(RI==0); //wait till RX
      0000F5                        663 00101$:
                                    664 ;	uart.h:57: RI=0;
                                    665 ;	assignBit
      0000F5 10 98 02         [24]  666 	jbc	_RI,00114$
      0000F8 80 FB            [24]  667 	sjmp	00101$
      0000FA                        668 00114$:
                                    669 ;	uart.h:58: value = SBUF;
      0000FA 85 99 82         [24]  670 	mov	dpl,_SBUF
                                    671 ;	uart.h:59: return value;
                                    672 ;	uart.h:60: }
      0000FD 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'UartWrite'
                                    676 ;------------------------------------------------------------
                                    677 ;value                     Allocated to registers 
                                    678 ;------------------------------------------------------------
                                    679 ;	uart.h:63: void UartWrite(unsigned char value)
                                    680 ;	-----------------------------------------
                                    681 ;	 function UartWrite
                                    682 ;	-----------------------------------------
      0000FE                        683 _UartWrite:
      0000FE 85 82 99         [24]  684 	mov	_SBUF,dpl
                                    685 ;	uart.h:66: while(TI==0); // wait till TX
      000101                        686 00101$:
                                    687 ;	uart.h:67: TI=0;
                                    688 ;	assignBit
      000101 10 99 02         [24]  689 	jbc	_TI,00114$
      000104 80 FB            [24]  690 	sjmp	00101$
      000106                        691 00114$:
                                    692 ;	uart.h:68: }
      000106 22               [24]  693 	ret
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'UartWriteBuff'
                                    696 ;------------------------------------------------------------
                                    697 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    698 ;p                         Allocated to registers r5 r6 r7 
                                    699 ;i                         Allocated to registers r4 
                                    700 ;------------------------------------------------------------
                                    701 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    702 ;	-----------------------------------------
                                    703 ;	 function UartWriteBuff
                                    704 ;	-----------------------------------------
      000107                        705 _UartWriteBuff:
      000107 AD 82            [24]  706 	mov	r5,dpl
      000109 AE 83            [24]  707 	mov	r6,dph
      00010B AF F0            [24]  708 	mov	r7,b
                                    709 ;	uart.h:73: for (i=0;i<length;i++)
      00010D 7C 00            [12]  710 	mov	r4,#0x00
      00010F                        711 00103$:
      00010F C3               [12]  712 	clr	c
      000110 EC               [12]  713 	mov	a,r4
      000111 95 09            [12]  714 	subb	a,_UartWriteBuff_PARM_2
      000113 50 29            [24]  715 	jnc	00105$
                                    716 ;	uart.h:75: UartWrite(p[i]);
      000115 EC               [12]  717 	mov	a,r4
      000116 2D               [12]  718 	add	a,r5
      000117 F9               [12]  719 	mov	r1,a
      000118 E4               [12]  720 	clr	a
      000119 3E               [12]  721 	addc	a,r6
      00011A FA               [12]  722 	mov	r2,a
      00011B 8F 03            [24]  723 	mov	ar3,r7
      00011D 89 82            [24]  724 	mov	dpl,r1
      00011F 8A 83            [24]  725 	mov	dph,r2
      000121 8B F0            [24]  726 	mov	b,r3
      000123 12 1C F2         [24]  727 	lcall	__gptrget
      000126 F5 82            [12]  728 	mov	dpl,a
      000128 C0 07            [24]  729 	push	ar7
      00012A C0 06            [24]  730 	push	ar6
      00012C C0 05            [24]  731 	push	ar5
      00012E C0 04            [24]  732 	push	ar4
      000130 12 00 FE         [24]  733 	lcall	_UartWrite
      000133 D0 04            [24]  734 	pop	ar4
      000135 D0 05            [24]  735 	pop	ar5
      000137 D0 06            [24]  736 	pop	ar6
      000139 D0 07            [24]  737 	pop	ar7
                                    738 ;	uart.h:73: for (i=0;i<length;i++)
      00013B 0C               [12]  739 	inc	r4
      00013C 80 D1            [24]  740 	sjmp	00103$
      00013E                        741 00105$:
                                    742 ;	uart.h:77: }
      00013E 22               [24]  743 	ret
                                    744 ;------------------------------------------------------------
                                    745 ;Allocation info for local variables in function 'UartReadBuff'
                                    746 ;------------------------------------------------------------
                                    747 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    748 ;p                         Allocated to registers r5 r6 r7 
                                    749 ;i                         Allocated to registers r4 
                                    750 ;------------------------------------------------------------
                                    751 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    752 ;	-----------------------------------------
                                    753 ;	 function UartReadBuff
                                    754 ;	-----------------------------------------
      00013F                        755 _UartReadBuff:
      00013F AD 82            [24]  756 	mov	r5,dpl
      000141 AE 83            [24]  757 	mov	r6,dph
      000143 AF F0            [24]  758 	mov	r7,b
                                    759 ;	uart.h:82: for (i=0;i<length;i++)
      000145 7C 00            [12]  760 	mov	r4,#0x00
      000147                        761 00103$:
      000147 C3               [12]  762 	clr	c
      000148 EC               [12]  763 	mov	a,r4
      000149 95 0A            [12]  764 	subb	a,_UartReadBuff_PARM_2
      00014B 50 36            [24]  765 	jnc	00105$
                                    766 ;	uart.h:84: p[i] = UartRead();
      00014D EC               [12]  767 	mov	a,r4
      00014E 2D               [12]  768 	add	a,r5
      00014F F9               [12]  769 	mov	r1,a
      000150 E4               [12]  770 	clr	a
      000151 3E               [12]  771 	addc	a,r6
      000152 FA               [12]  772 	mov	r2,a
      000153 8F 03            [24]  773 	mov	ar3,r7
      000155 C0 07            [24]  774 	push	ar7
      000157 C0 06            [24]  775 	push	ar6
      000159 C0 05            [24]  776 	push	ar5
      00015B C0 04            [24]  777 	push	ar4
      00015D C0 03            [24]  778 	push	ar3
      00015F C0 02            [24]  779 	push	ar2
      000161 C0 01            [24]  780 	push	ar1
      000163 12 00 F5         [24]  781 	lcall	_UartRead
      000166 A8 82            [24]  782 	mov	r0,dpl
      000168 D0 01            [24]  783 	pop	ar1
      00016A D0 02            [24]  784 	pop	ar2
      00016C D0 03            [24]  785 	pop	ar3
      00016E D0 04            [24]  786 	pop	ar4
      000170 D0 05            [24]  787 	pop	ar5
      000172 D0 06            [24]  788 	pop	ar6
      000174 D0 07            [24]  789 	pop	ar7
      000176 89 82            [24]  790 	mov	dpl,r1
      000178 8A 83            [24]  791 	mov	dph,r2
      00017A 8B F0            [24]  792 	mov	b,r3
      00017C E8               [12]  793 	mov	a,r0
      00017D 12 1B FF         [24]  794 	lcall	__gptrput
                                    795 ;	uart.h:82: for (i=0;i<length;i++)
      000180 0C               [12]  796 	inc	r4
      000181 80 C4            [24]  797 	sjmp	00103$
      000183                        798 00105$:
                                    799 ;	uart.h:86: }
      000183 22               [24]  800 	ret
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'UartPrint'
                                    803 ;------------------------------------------------------------
                                    804 ;p                         Allocated to registers 
                                    805 ;------------------------------------------------------------
                                    806 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    807 ;	-----------------------------------------
                                    808 ;	 function UartPrint
                                    809 ;	-----------------------------------------
      000184                        810 _UartPrint:
      000184 AD 82            [24]  811 	mov	r5,dpl
      000186 AE 83            [24]  812 	mov	r6,dph
      000188 AF F0            [24]  813 	mov	r7,b
                                    814 ;	uart.h:90: do
      00018A                        815 00101$:
                                    816 ;	uart.h:92: UartWrite(*p);
      00018A 8D 82            [24]  817 	mov	dpl,r5
      00018C 8E 83            [24]  818 	mov	dph,r6
      00018E 8F F0            [24]  819 	mov	b,r7
      000190 12 1C F2         [24]  820 	lcall	__gptrget
      000193 FC               [12]  821 	mov	r4,a
      000194 A3               [24]  822 	inc	dptr
      000195 AD 82            [24]  823 	mov	r5,dpl
      000197 AE 83            [24]  824 	mov	r6,dph
      000199 8C 82            [24]  825 	mov	dpl,r4
      00019B C0 07            [24]  826 	push	ar7
      00019D C0 06            [24]  827 	push	ar6
      00019F C0 05            [24]  828 	push	ar5
      0001A1 12 00 FE         [24]  829 	lcall	_UartWrite
      0001A4 D0 05            [24]  830 	pop	ar5
      0001A6 D0 06            [24]  831 	pop	ar6
      0001A8 D0 07            [24]  832 	pop	ar7
                                    833 ;	uart.h:93: }while(*(++p)!=0);
      0001AA 8D 82            [24]  834 	mov	dpl,r5
      0001AC 8E 83            [24]  835 	mov	dph,r6
      0001AE 8F F0            [24]  836 	mov	b,r7
      0001B0 12 1C F2         [24]  837 	lcall	__gptrget
      0001B3 70 D5            [24]  838 	jnz	00101$
                                    839 ;	uart.h:94: }
      0001B5 22               [24]  840 	ret
                                    841 ;------------------------------------------------------------
                                    842 ;Allocation info for local variables in function 'UartWriteNumber'
                                    843 ;------------------------------------------------------------
                                    844 ;format                    Allocated to stack - _bp -3
                                    845 ;num                       Allocated to registers r7 
                                    846 ;msd                       Allocated to registers r4 
                                    847 ;lsd                       Allocated to registers r6 
                                    848 ;extra                     Allocated to registers r3 
                                    849 ;------------------------------------------------------------
                                    850 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    851 ;	-----------------------------------------
                                    852 ;	 function UartWriteNumber
                                    853 ;	-----------------------------------------
      0001B6                        854 _UartWriteNumber:
      0001B6 C0 3C            [24]  855 	push	_bp
      0001B8 85 81 3C         [24]  856 	mov	_bp,sp
      0001BB AF 82            [24]  857 	mov	r7,dpl
                                    858 ;	uart.h:104: if(format==HEX)
      0001BD E5 3C            [12]  859 	mov	a,_bp
      0001BF 24 FD            [12]  860 	add	a,#0xfd
      0001C1 F8               [12]  861 	mov	r0,a
      0001C2 E6               [12]  862 	mov	a,@r0
                                    863 ;	uart.h:106: msd = num/16;
      0001C3 70 32            [24]  864 	jnz	00104$
      0001C5 8F 05            [24]  865 	mov	ar5,r7
      0001C7 FE               [12]  866 	mov	r6,a
      0001C8 75 3D 10         [24]  867 	mov	__divsint_PARM_2,#0x10
                                    868 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001CB 8E 3E            [24]  869 	mov	(__divsint_PARM_2 + 1),r6
      0001CD 8D 82            [24]  870 	mov	dpl,r5
      0001CF 8E 83            [24]  871 	mov	dph,r6
      0001D1 C0 06            [24]  872 	push	ar6
      0001D3 C0 05            [24]  873 	push	ar5
      0001D5 12 1D 44         [24]  874 	lcall	__divsint
      0001D8 AB 82            [24]  875 	mov	r3,dpl
      0001DA D0 05            [24]  876 	pop	ar5
      0001DC D0 06            [24]  877 	pop	ar6
                                    878 ;	uart.h:107: lsd = num%16;
      0001DE 53 05 0F         [24]  879 	anl	ar5,#0x0f
                                    880 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001E1 8B 82            [24]  881 	mov	dpl,r3
      0001E3 C0 05            [24]  882 	push	ar5
      0001E5 12 00 BD         [24]  883 	lcall	_dec2hexNibble
      0001E8 12 00 FE         [24]  884 	lcall	_UartWrite
      0001EB D0 05            [24]  885 	pop	ar5
                                    886 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001ED 8D 82            [24]  887 	mov	dpl,r5
      0001EF 12 00 BD         [24]  888 	lcall	_dec2hexNibble
      0001F2 12 00 FE         [24]  889 	lcall	_UartWrite
      0001F5 80 7B            [24]  890 	sjmp	00106$
      0001F7                        891 00104$:
                                    892 ;	uart.h:112: else if(format==DEC)
      0001F7 E5 3C            [12]  893 	mov	a,_bp
      0001F9 24 FD            [12]  894 	add	a,#0xfd
      0001FB F8               [12]  895 	mov	r0,a
      0001FC B6 01 73         [24]  896 	cjne	@r0,#0x01,00106$
                                    897 ;	uart.h:114: msd = num/100; // 100s place
      0001FF 7E 00            [12]  898 	mov	r6,#0x00
      000201 75 3D 64         [24]  899 	mov	__divsint_PARM_2,#0x64
                                    900 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000204 8E 3E            [24]  901 	mov	(__divsint_PARM_2 + 1),r6
      000206 8F 82            [24]  902 	mov	dpl,r7
      000208 8E 83            [24]  903 	mov	dph,r6
      00020A C0 07            [24]  904 	push	ar7
      00020C C0 06            [24]  905 	push	ar6
      00020E 12 1D 44         [24]  906 	lcall	__divsint
      000211 AC 82            [24]  907 	mov	r4,dpl
      000213 D0 06            [24]  908 	pop	ar6
      000215 D0 07            [24]  909 	pop	ar7
                                    910 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000217 75 3D 64         [24]  911 	mov	__modsint_PARM_2,#0x64
      00021A 75 3E 00         [24]  912 	mov	(__modsint_PARM_2 + 1),#0x00
      00021D 8F 82            [24]  913 	mov	dpl,r7
      00021F 8E 83            [24]  914 	mov	dph,r6
      000221 C0 07            [24]  915 	push	ar7
      000223 C0 06            [24]  916 	push	ar6
      000225 C0 04            [24]  917 	push	ar4
      000227 12 1D 0E         [24]  918 	lcall	__modsint
      00022A 75 3D 0A         [24]  919 	mov	__divsint_PARM_2,#0x0a
      00022D 75 3E 00         [24]  920 	mov	(__divsint_PARM_2 + 1),#0x00
      000230 12 1D 44         [24]  921 	lcall	__divsint
      000233 AB 82            [24]  922 	mov	r3,dpl
      000235 D0 04            [24]  923 	pop	ar4
      000237 D0 06            [24]  924 	pop	ar6
      000239 D0 07            [24]  925 	pop	ar7
                                    926 ;	uart.h:116: lsd = num%10;
      00023B 75 3D 0A         [24]  927 	mov	__modsint_PARM_2,#0x0a
      00023E 75 3E 00         [24]  928 	mov	(__modsint_PARM_2 + 1),#0x00
      000241 8F 82            [24]  929 	mov	dpl,r7
      000243 8E 83            [24]  930 	mov	dph,r6
      000245 C0 04            [24]  931 	push	ar4
      000247 C0 03            [24]  932 	push	ar3
      000249 12 1D 0E         [24]  933 	lcall	__modsint
      00024C AE 82            [24]  934 	mov	r6,dpl
      00024E D0 03            [24]  935 	pop	ar3
      000250 D0 04            [24]  936 	pop	ar4
                                    937 ;	uart.h:118: UartWrite(msd + 0x30);
      000252 74 30            [12]  938 	mov	a,#0x30
      000254 2C               [12]  939 	add	a,r4
      000255 F5 82            [12]  940 	mov	dpl,a
      000257 C0 06            [24]  941 	push	ar6
      000259 C0 03            [24]  942 	push	ar3
      00025B 12 00 FE         [24]  943 	lcall	_UartWrite
      00025E D0 03            [24]  944 	pop	ar3
                                    945 ;	uart.h:119: UartWrite(extra + 0x30);
      000260 74 30            [12]  946 	mov	a,#0x30
      000262 2B               [12]  947 	add	a,r3
      000263 F5 82            [12]  948 	mov	dpl,a
      000265 12 00 FE         [24]  949 	lcall	_UartWrite
      000268 D0 06            [24]  950 	pop	ar6
                                    951 ;	uart.h:120: UartWrite(lsd + 0x30);
      00026A 74 30            [12]  952 	mov	a,#0x30
      00026C 2E               [12]  953 	add	a,r6
      00026D F5 82            [12]  954 	mov	dpl,a
      00026F 12 00 FE         [24]  955 	lcall	_UartWrite
      000272                        956 00106$:
                                    957 ;	uart.h:123: }
      000272 D0 3C            [24]  958 	pop	_bp
      000274 22               [24]  959 	ret
                                    960 ;------------------------------------------------------------
                                    961 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    962 ;------------------------------------------------------------
                                    963 ;length                    Allocated to stack - _bp -3
                                    964 ;format                    Allocated to stack - _bp -4
                                    965 ;delimiter                 Allocated to stack - _bp -5
                                    966 ;p                         Allocated to registers 
                                    967 ;i                         Allocated to registers r4 
                                    968 ;------------------------------------------------------------
                                    969 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    970 ;	-----------------------------------------
                                    971 ;	 function UartWriteNumbers
                                    972 ;	-----------------------------------------
      000275                        973 _UartWriteNumbers:
      000275 C0 3C            [24]  974 	push	_bp
      000277 85 81 3C         [24]  975 	mov	_bp,sp
      00027A AD 82            [24]  976 	mov	r5,dpl
      00027C AE 83            [24]  977 	mov	r6,dph
      00027E AF F0            [24]  978 	mov	r7,b
                                    979 ;	uart.h:129: for(i=0;i<length;i++,p++)
      000280 7C 00            [12]  980 	mov	r4,#0x00
      000282                        981 00103$:
      000282 E5 3C            [12]  982 	mov	a,_bp
      000284 24 FD            [12]  983 	add	a,#0xfd
      000286 F8               [12]  984 	mov	r0,a
      000287 C3               [12]  985 	clr	c
      000288 EC               [12]  986 	mov	a,r4
      000289 96               [12]  987 	subb	a,@r0
      00028A 50 3B            [24]  988 	jnc	00105$
                                    989 ;	uart.h:131: UartWriteNumber(*p,format);
      00028C 8D 82            [24]  990 	mov	dpl,r5
      00028E 8E 83            [24]  991 	mov	dph,r6
      000290 8F F0            [24]  992 	mov	b,r7
      000292 12 1C F2         [24]  993 	lcall	__gptrget
      000295 FB               [12]  994 	mov	r3,a
      000296 A3               [24]  995 	inc	dptr
      000297 AD 82            [24]  996 	mov	r5,dpl
      000299 AE 83            [24]  997 	mov	r6,dph
      00029B C0 07            [24]  998 	push	ar7
      00029D C0 06            [24]  999 	push	ar6
      00029F C0 05            [24] 1000 	push	ar5
      0002A1 C0 04            [24] 1001 	push	ar4
      0002A3 E5 3C            [12] 1002 	mov	a,_bp
      0002A5 24 FC            [12] 1003 	add	a,#0xfc
      0002A7 F8               [12] 1004 	mov	r0,a
      0002A8 E6               [12] 1005 	mov	a,@r0
      0002A9 C0 E0            [24] 1006 	push	acc
      0002AB 8B 82            [24] 1007 	mov	dpl,r3
      0002AD 12 01 B6         [24] 1008 	lcall	_UartWriteNumber
      0002B0 15 81            [12] 1009 	dec	sp
                                   1010 ;	uart.h:132: UartWrite(delimiter);
      0002B2 E5 3C            [12] 1011 	mov	a,_bp
      0002B4 24 FB            [12] 1012 	add	a,#0xfb
      0002B6 F8               [12] 1013 	mov	r0,a
      0002B7 86 82            [24] 1014 	mov	dpl,@r0
      0002B9 12 00 FE         [24] 1015 	lcall	_UartWrite
      0002BC D0 04            [24] 1016 	pop	ar4
      0002BE D0 05            [24] 1017 	pop	ar5
      0002C0 D0 06            [24] 1018 	pop	ar6
      0002C2 D0 07            [24] 1019 	pop	ar7
                                   1020 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002C4 0C               [12] 1021 	inc	r4
      0002C5 80 BB            [24] 1022 	sjmp	00103$
      0002C7                       1023 00105$:
                                   1024 ;	uart.h:134: }
      0002C7 D0 3C            [24] 1025 	pop	_bp
      0002C9 22               [24] 1026 	ret
                                   1027 ;------------------------------------------------------------
                                   1028 ;Allocation info for local variables in function 'UartPrintNumber'
                                   1029 ;------------------------------------------------------------
                                   1030 ;n                         Allocated to stack - _bp +1
                                   1031 ;digit                     Allocated to stack - _bp +7
                                   1032 ;i                         Allocated to stack - _bp +5
                                   1033 ;j                         Allocated to registers r3 
                                   1034 ;leading_zeroes_flag       Allocated to stack - _bp +6
                                   1035 ;sloc0                     Allocated to stack - _bp +12
                                   1036 ;------------------------------------------------------------
                                   1037 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                   1038 ;	-----------------------------------------
                                   1039 ;	 function UartPrintNumber
                                   1040 ;	-----------------------------------------
      0002CA                       1041 _UartPrintNumber:
      0002CA C0 3C            [24] 1042 	push	_bp
      0002CC 85 81 3C         [24] 1043 	mov	_bp,sp
      0002CF C0 82            [24] 1044 	push	dpl
      0002D1 C0 83            [24] 1045 	push	dph
      0002D3 C0 F0            [24] 1046 	push	b
      0002D5 C0 E0            [24] 1047 	push	acc
      0002D7 E5 81            [12] 1048 	mov	a,sp
      0002D9 24 06            [12] 1049 	add	a,#0x06
      0002DB F5 81            [12] 1050 	mov	sp,a
                                   1051 ;	uart.h:152: char i,j,leading_zeroes_flag=1;
      0002DD E5 3C            [12] 1052 	mov	a,_bp
      0002DF 24 06            [12] 1053 	add	a,#0x06
      0002E1 F8               [12] 1054 	mov	r0,a
      0002E2 76 01            [12] 1055 	mov	@r0,#0x01
                                   1056 ;	uart.h:153: for(i=8;i>0;i--)
      0002E4 E5 3C            [12] 1057 	mov	a,_bp
      0002E6 24 05            [12] 1058 	add	a,#0x05
      0002E8 F8               [12] 1059 	mov	r0,a
      0002E9 76 08            [12] 1060 	mov	@r0,#0x08
      0002EB                       1061 00112$:
                                   1062 ;	uart.h:155: digit=n;
      0002EB A8 3C            [24] 1063 	mov	r0,_bp
      0002ED 08               [12] 1064 	inc	r0
      0002EE E5 3C            [12] 1065 	mov	a,_bp
      0002F0 24 07            [12] 1066 	add	a,#0x07
      0002F2 F9               [12] 1067 	mov	r1,a
      0002F3 E6               [12] 1068 	mov	a,@r0
      0002F4 F7               [12] 1069 	mov	@r1,a
      0002F5 08               [12] 1070 	inc	r0
      0002F6 09               [12] 1071 	inc	r1
      0002F7 E6               [12] 1072 	mov	a,@r0
      0002F8 F7               [12] 1073 	mov	@r1,a
      0002F9 08               [12] 1074 	inc	r0
      0002FA 09               [12] 1075 	inc	r1
      0002FB E6               [12] 1076 	mov	a,@r0
      0002FC F7               [12] 1077 	mov	@r1,a
      0002FD 08               [12] 1078 	inc	r0
      0002FE 09               [12] 1079 	inc	r1
      0002FF E6               [12] 1080 	mov	a,@r0
      000300 F7               [12] 1081 	mov	@r1,a
                                   1082 ;	uart.h:156: for(j=1;j<i;j++) digit/=10;
      000301 7B 01            [12] 1083 	mov	r3,#0x01
      000303                       1084 00110$:
      000303 E5 3C            [12] 1085 	mov	a,_bp
      000305 24 05            [12] 1086 	add	a,#0x05
      000307 F8               [12] 1087 	mov	r0,a
      000308 C3               [12] 1088 	clr	c
      000309 EB               [12] 1089 	mov	a,r3
      00030A 96               [12] 1090 	subb	a,@r0
      00030B 50 3A            [24] 1091 	jnc	00101$
      00030D 75 3D 0A         [24] 1092 	mov	__divulong_PARM_2,#0x0a
      000310 E4               [12] 1093 	clr	a
      000311 F5 3E            [12] 1094 	mov	(__divulong_PARM_2 + 1),a
      000313 F5 3F            [12] 1095 	mov	(__divulong_PARM_2 + 2),a
      000315 F5 40            [12] 1096 	mov	(__divulong_PARM_2 + 3),a
      000317 E5 3C            [12] 1097 	mov	a,_bp
      000319 24 07            [12] 1098 	add	a,#0x07
      00031B F8               [12] 1099 	mov	r0,a
      00031C 86 82            [24] 1100 	mov	dpl,@r0
      00031E 08               [12] 1101 	inc	r0
      00031F 86 83            [24] 1102 	mov	dph,@r0
      000321 08               [12] 1103 	inc	r0
      000322 86 F0            [24] 1104 	mov	b,@r0
      000324 08               [12] 1105 	inc	r0
      000325 E6               [12] 1106 	mov	a,@r0
      000326 C0 03            [24] 1107 	push	ar3
      000328 12 1B 9A         [24] 1108 	lcall	__divulong
      00032B AC 82            [24] 1109 	mov	r4,dpl
      00032D AD 83            [24] 1110 	mov	r5,dph
      00032F AE F0            [24] 1111 	mov	r6,b
      000331 FF               [12] 1112 	mov	r7,a
      000332 D0 03            [24] 1113 	pop	ar3
      000334 E5 3C            [12] 1114 	mov	a,_bp
      000336 24 07            [12] 1115 	add	a,#0x07
      000338 F8               [12] 1116 	mov	r0,a
      000339 A6 04            [24] 1117 	mov	@r0,ar4
      00033B 08               [12] 1118 	inc	r0
      00033C A6 05            [24] 1119 	mov	@r0,ar5
      00033E 08               [12] 1120 	inc	r0
      00033F A6 06            [24] 1121 	mov	@r0,ar6
      000341 08               [12] 1122 	inc	r0
      000342 A6 07            [24] 1123 	mov	@r0,ar7
      000344 0B               [12] 1124 	inc	r3
      000345 80 BC            [24] 1125 	sjmp	00110$
      000347                       1126 00101$:
                                   1127 ;	uart.h:158: if(leading_zeroes_flag && digit%10) leading_zeroes_flag=0; //flag to start printing
      000347 E5 3C            [12] 1128 	mov	a,_bp
      000349 24 06            [12] 1129 	add	a,#0x06
      00034B F8               [12] 1130 	mov	r0,a
      00034C E6               [12] 1131 	mov	a,@r0
      00034D 60 30            [24] 1132 	jz	00103$
      00034F 75 3D 0A         [24] 1133 	mov	__modulong_PARM_2,#0x0a
      000352 E4               [12] 1134 	clr	a
      000353 F5 3E            [12] 1135 	mov	(__modulong_PARM_2 + 1),a
      000355 F5 3F            [12] 1136 	mov	(__modulong_PARM_2 + 2),a
      000357 F5 40            [12] 1137 	mov	(__modulong_PARM_2 + 3),a
      000359 E5 3C            [12] 1138 	mov	a,_bp
      00035B 24 07            [12] 1139 	add	a,#0x07
      00035D F8               [12] 1140 	mov	r0,a
      00035E 86 82            [24] 1141 	mov	dpl,@r0
      000360 08               [12] 1142 	inc	r0
      000361 86 83            [24] 1143 	mov	dph,@r0
      000363 08               [12] 1144 	inc	r0
      000364 86 F0            [24] 1145 	mov	b,@r0
      000366 08               [12] 1146 	inc	r0
      000367 E6               [12] 1147 	mov	a,@r0
      000368 12 1B 17         [24] 1148 	lcall	__modulong
      00036B AA 82            [24] 1149 	mov	r2,dpl
      00036D AB 83            [24] 1150 	mov	r3,dph
      00036F AE F0            [24] 1151 	mov	r6,b
      000371 FF               [12] 1152 	mov	r7,a
      000372 EA               [12] 1153 	mov	a,r2
      000373 4B               [12] 1154 	orl	a,r3
      000374 4E               [12] 1155 	orl	a,r6
      000375 4F               [12] 1156 	orl	a,r7
      000376 60 07            [24] 1157 	jz	00103$
      000378 E5 3C            [12] 1158 	mov	a,_bp
      00037A 24 06            [12] 1159 	add	a,#0x06
      00037C F8               [12] 1160 	mov	r0,a
      00037D 76 00            [12] 1161 	mov	@r0,#0x00
      00037F                       1162 00103$:
                                   1163 ;	uart.h:160: if(leading_zeroes_flag); //pass - do not print
      00037F E5 3C            [12] 1164 	mov	a,_bp
      000381 24 06            [12] 1165 	add	a,#0x06
      000383 F8               [12] 1166 	mov	r0,a
      000384 E6               [12] 1167 	mov	a,@r0
      000385 70 26            [24] 1168 	jnz	00113$
                                   1169 ;	uart.h:161: else UartWrite(0x30 + digit%10);
      000387 75 3D 0A         [24] 1170 	mov	__modulong_PARM_2,#0x0a
      00038A E4               [12] 1171 	clr	a
      00038B F5 3E            [12] 1172 	mov	(__modulong_PARM_2 + 1),a
      00038D F5 3F            [12] 1173 	mov	(__modulong_PARM_2 + 2),a
      00038F F5 40            [12] 1174 	mov	(__modulong_PARM_2 + 3),a
      000391 E5 3C            [12] 1175 	mov	a,_bp
      000393 24 07            [12] 1176 	add	a,#0x07
      000395 F8               [12] 1177 	mov	r0,a
      000396 86 82            [24] 1178 	mov	dpl,@r0
      000398 08               [12] 1179 	inc	r0
      000399 86 83            [24] 1180 	mov	dph,@r0
      00039B 08               [12] 1181 	inc	r0
      00039C 86 F0            [24] 1182 	mov	b,@r0
      00039E 08               [12] 1183 	inc	r0
      00039F E6               [12] 1184 	mov	a,@r0
      0003A0 12 1B 17         [24] 1185 	lcall	__modulong
      0003A3 AC 82            [24] 1186 	mov	r4,dpl
      0003A5 74 30            [12] 1187 	mov	a,#0x30
      0003A7 2C               [12] 1188 	add	a,r4
      0003A8 F5 82            [12] 1189 	mov	dpl,a
      0003AA 12 00 FE         [24] 1190 	lcall	_UartWrite
      0003AD                       1191 00113$:
                                   1192 ;	uart.h:153: for(i=8;i>0;i--)
      0003AD E5 3C            [12] 1193 	mov	a,_bp
      0003AF 24 05            [12] 1194 	add	a,#0x05
      0003B1 F8               [12] 1195 	mov	r0,a
      0003B2 16               [12] 1196 	dec	@r0
      0003B3 E5 3C            [12] 1197 	mov	a,_bp
      0003B5 24 05            [12] 1198 	add	a,#0x05
      0003B7 F8               [12] 1199 	mov	r0,a
      0003B8 E6               [12] 1200 	mov	a,@r0
      0003B9 60 03            [24] 1201 	jz	00149$
      0003BB 02 02 EB         [24] 1202 	ljmp	00112$
      0003BE                       1203 00149$:
                                   1204 ;	uart.h:163: }
      0003BE 85 3C 81         [24] 1205 	mov	sp,_bp
      0003C1 D0 3C            [24] 1206 	pop	_bp
      0003C3 22               [24] 1207 	ret
                                   1208 ;------------------------------------------------------------
                                   1209 ;Allocation info for local variables in function 'UartScanByte'
                                   1210 ;------------------------------------------------------------
                                   1211 ;unibble                   Allocated to registers r7 
                                   1212 ;lnibble                   Allocated to registers r6 
                                   1213 ;------------------------------------------------------------
                                   1214 ;	uart.h:166: uint8_t UartScanByte() __reentrant
                                   1215 ;	-----------------------------------------
                                   1216 ;	 function UartScanByte
                                   1217 ;	-----------------------------------------
      0003C4                       1218 _UartScanByte:
                                   1219 ;	uart.h:170: while(UartReadReady()) UartRead(); //flush
      0003C4                       1220 00101$:
      0003C4 12 00 EA         [24] 1221 	lcall	_UartReadReady
      0003C7 E5 82            [12] 1222 	mov	a,dpl
      0003C9 60 05            [24] 1223 	jz	00103$
      0003CB 12 00 F5         [24] 1224 	lcall	_UartRead
      0003CE 80 F4            [24] 1225 	sjmp	00101$
      0003D0                       1226 00103$:
                                   1227 ;	uart.h:171: UartPrint("Number(hex) < ");
      0003D0 90 1D 80         [24] 1228 	mov	dptr,#___str_0
      0003D3 75 F0 80         [24] 1229 	mov	b,#0x80
      0003D6 12 01 84         [24] 1230 	lcall	_UartPrint
                                   1231 ;	uart.h:173: unibble = UartRead();
      0003D9 12 00 F5         [24] 1232 	lcall	_UartRead
                                   1233 ;	uart.h:174: UartWrite(unibble);
      0003DC AF 82            [24] 1234 	mov  r7,dpl
      0003DE C0 07            [24] 1235 	push	ar7
      0003E0 12 00 FE         [24] 1236 	lcall	_UartWrite
                                   1237 ;	uart.h:175: lnibble = UartRead();
      0003E3 12 00 F5         [24] 1238 	lcall	_UartRead
                                   1239 ;	uart.h:176: UartWrite(lnibble);
      0003E6 AE 82            [24] 1240 	mov  r6,dpl
      0003E8 C0 06            [24] 1241 	push	ar6
      0003EA 12 00 FE         [24] 1242 	lcall	_UartWrite
                                   1243 ;	uart.h:178: UartWrite('\n');
      0003ED 75 82 0A         [24] 1244 	mov	dpl,#0x0a
      0003F0 12 00 FE         [24] 1245 	lcall	_UartWrite
      0003F3 D0 06            [24] 1246 	pop	ar6
      0003F5 D0 07            [24] 1247 	pop	ar7
                                   1248 ;	uart.h:180: return hex2dec(unibble,lnibble);
      0003F7 8E 08            [24] 1249 	mov	_hex2dec_PARM_2,r6
      0003F9 8F 82            [24] 1250 	mov	dpl,r7
                                   1251 ;	uart.h:181: }
      0003FB 02 00 A3         [24] 1252 	ljmp	_hex2dec
                                   1253 ;------------------------------------------------------------
                                   1254 ;Allocation info for local variables in function 'UartScanLine'
                                   1255 ;------------------------------------------------------------
                                   1256 ;maxLength                 Allocated to stack - _bp -3
                                   1257 ;dst                       Allocated to stack - _bp +1
                                   1258 ;recv                      Allocated to registers r2 
                                   1259 ;count                     Allocated to registers r4 
                                   1260 ;------------------------------------------------------------
                                   1261 ;	uart.h:183: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1262 ;	-----------------------------------------
                                   1263 ;	 function UartScanLine
                                   1264 ;	-----------------------------------------
      0003FE                       1265 _UartScanLine:
      0003FE C0 3C            [24] 1266 	push	_bp
      000400 85 81 3C         [24] 1267 	mov	_bp,sp
      000403 C0 82            [24] 1268 	push	dpl
      000405 C0 83            [24] 1269 	push	dph
      000407 C0 F0            [24] 1270 	push	b
                                   1271 ;	uart.h:185: uint8_t recv,count=0;
      000409 7C 00            [12] 1272 	mov	r4,#0x00
                                   1273 ;	uart.h:187: while(UartReadReady()) UartRead(); //flush
      00040B                       1274 00101$:
      00040B C0 04            [24] 1275 	push	ar4
      00040D 12 00 EA         [24] 1276 	lcall	_UartReadReady
      000410 E5 82            [12] 1277 	mov	a,dpl
      000412 D0 04            [24] 1278 	pop	ar4
      000414 60 09            [24] 1279 	jz	00118$
      000416 C0 04            [24] 1280 	push	ar4
      000418 12 00 F5         [24] 1281 	lcall	_UartRead
      00041B D0 04            [24] 1282 	pop	ar4
                                   1283 ;	uart.h:189: while(1)
      00041D 80 EC            [24] 1284 	sjmp	00101$
      00041F                       1285 00118$:
      00041F 7B 00            [12] 1286 	mov	r3,#0x00
      000421                       1287 00110$:
                                   1288 ;	uart.h:192: recv=UartRead();
      000421 C0 04            [24] 1289 	push	ar4
      000423 C0 03            [24] 1290 	push	ar3
      000425 12 00 F5         [24] 1291 	lcall	_UartRead
                                   1292 ;	uart.h:193: UartWrite(recv);
      000428 AA 82            [24] 1293 	mov  r2,dpl
      00042A C0 02            [24] 1294 	push	ar2
      00042C 12 00 FE         [24] 1295 	lcall	_UartWrite
      00042F D0 02            [24] 1296 	pop	ar2
      000431 D0 03            [24] 1297 	pop	ar3
      000433 D0 04            [24] 1298 	pop	ar4
                                   1299 ;	uart.h:194: if(recv == '\n') 
      000435 BA 0A 19         [24] 1300 	cjne	r2,#0x0a,00105$
                                   1301 ;	uart.h:196: *(dst+count)=0; //add string terminate
      000438 A8 3C            [24] 1302 	mov	r0,_bp
      00043A 08               [12] 1303 	inc	r0
      00043B EC               [12] 1304 	mov	a,r4
      00043C 26               [12] 1305 	add	a,@r0
      00043D FD               [12] 1306 	mov	r5,a
      00043E E4               [12] 1307 	clr	a
      00043F 08               [12] 1308 	inc	r0
      000440 36               [12] 1309 	addc	a,@r0
      000441 FE               [12] 1310 	mov	r6,a
      000442 08               [12] 1311 	inc	r0
      000443 86 07            [24] 1312 	mov	ar7,@r0
      000445 8D 82            [24] 1313 	mov	dpl,r5
      000447 8E 83            [24] 1314 	mov	dph,r6
      000449 8F F0            [24] 1315 	mov	b,r7
      00044B E4               [12] 1316 	clr	a
      00044C 12 1B FF         [24] 1317 	lcall	__gptrput
                                   1318 ;	uart.h:197: break;
      00044F 80 31            [24] 1319 	sjmp	00111$
      000451                       1320 00105$:
                                   1321 ;	uart.h:199: else *(dst+count)=recv;
      000451 A8 3C            [24] 1322 	mov	r0,_bp
      000453 08               [12] 1323 	inc	r0
      000454 EB               [12] 1324 	mov	a,r3
      000455 26               [12] 1325 	add	a,@r0
      000456 FD               [12] 1326 	mov	r5,a
      000457 E4               [12] 1327 	clr	a
      000458 08               [12] 1328 	inc	r0
      000459 36               [12] 1329 	addc	a,@r0
      00045A FE               [12] 1330 	mov	r6,a
      00045B 08               [12] 1331 	inc	r0
      00045C 86 07            [24] 1332 	mov	ar7,@r0
      00045E 8D 82            [24] 1333 	mov	dpl,r5
      000460 8E 83            [24] 1334 	mov	dph,r6
      000462 8F F0            [24] 1335 	mov	b,r7
      000464 EA               [12] 1336 	mov	a,r2
      000465 12 1B FF         [24] 1337 	lcall	__gptrput
                                   1338 ;	uart.h:201: if(count==maxLength) 
      000468 E5 3C            [12] 1339 	mov	a,_bp
      00046A 24 FD            [12] 1340 	add	a,#0xfd
      00046C F8               [12] 1341 	mov	r0,a
      00046D E6               [12] 1342 	mov	a,@r0
      00046E B5 03 0C         [24] 1343 	cjne	a,ar3,00108$
                                   1344 ;	uart.h:203: *(dst+count)=0; // terminate string.
      000471 8D 82            [24] 1345 	mov	dpl,r5
      000473 8E 83            [24] 1346 	mov	dph,r6
      000475 8F F0            [24] 1347 	mov	b,r7
      000477 E4               [12] 1348 	clr	a
      000478 12 1B FF         [24] 1349 	lcall	__gptrput
                                   1350 ;	uart.h:204: break;
      00047B 80 05            [24] 1351 	sjmp	00111$
      00047D                       1352 00108$:
                                   1353 ;	uart.h:207: count++;
      00047D 0B               [12] 1354 	inc	r3
      00047E 8B 04            [24] 1355 	mov	ar4,r3
      000480 80 9F            [24] 1356 	sjmp	00110$
      000482                       1357 00111$:
                                   1358 ;	uart.h:211: return count;
      000482 8C 82            [24] 1359 	mov	dpl,r4
                                   1360 ;	uart.h:213: }
      000484 85 3C 81         [24] 1361 	mov	sp,_bp
      000487 D0 3C            [24] 1362 	pop	_bp
      000489 22               [24] 1363 	ret
                                   1364 ;------------------------------------------------------------
                                   1365 ;Allocation info for local variables in function 'spi_init'
                                   1366 ;------------------------------------------------------------
                                   1367 ;	spi.h:37: void spi_init()
                                   1368 ;	-----------------------------------------
                                   1369 ;	 function spi_init
                                   1370 ;	-----------------------------------------
      00048A                       1371 _spi_init:
                                   1372 ;	spi.h:40: spi_miso_high(); //make MISO input
      00048A 43 90 04         [24] 1373 	orl	_P1,#0x04
                                   1374 ;	spi.h:41: spi_mosi_high(); //recommended in sd card tutorial
      00048D 43 90 02         [24] 1375 	orl	_P1,#0x02
                                   1376 ;	spi.h:42: spi_cs_high(); //deselect
      000490 43 90 08         [24] 1377 	orl	_P1,#0x08
                                   1378 ;	spi.h:43: spi_clk_low(); //mode 0, idle clk is low
      000493 53 90 FE         [24] 1379 	anl	_P1,#0xfe
                                   1380 ;	spi.h:44: }
      000496 22               [24] 1381 	ret
                                   1382 ;------------------------------------------------------------
                                   1383 ;Allocation info for local variables in function 'spi_transfer'
                                   1384 ;------------------------------------------------------------
                                   1385 ;handle_cs                 Allocated with name '_spi_transfer_PARM_2'
                                   1386 ;tx                        Allocated to registers r7 
                                   1387 ;rx                        Allocated to registers r6 
                                   1388 ;i                         Allocated to registers r5 
                                   1389 ;------------------------------------------------------------
                                   1390 ;	spi.h:46: uint8_t spi_transfer(uint8_t tx,uint8_t handle_cs)
                                   1391 ;	-----------------------------------------
                                   1392 ;	 function spi_transfer
                                   1393 ;	-----------------------------------------
      000497                       1394 _spi_transfer:
      000497 AF 82            [24] 1395 	mov	r7,dpl
                                   1396 ;	spi.h:49: rx=0; //clear the rx - sdcc compiler throws warning otherwise
      000499 7E 00            [12] 1397 	mov	r6,#0x00
                                   1398 ;	spi.h:52: spi_clk_low();
      00049B 53 90 FE         [24] 1399 	anl	_P1,#0xfe
                                   1400 ;	spi.h:55: if(handle_cs)
      00049E E5 3D            [12] 1401 	mov	a,_spi_transfer_PARM_2
      0004A0 60 03            [24] 1402 	jz	00139$
                                   1403 ;	spi.h:56: spi_cs_low();
      0004A2 53 90 F7         [24] 1404 	anl	_P1,#0xf7
                                   1405 ;	spi.h:59: for(i=0;i<8;i++)
      0004A5                       1406 00139$:
      0004A5 7D 00            [12] 1407 	mov	r5,#0x00
      0004A7                       1408 00132$:
                                   1409 ;	spi.h:62: if(tx & 0x80) spi_mosi_high();
      0004A7 EF               [12] 1410 	mov	a,r7
      0004A8 30 E7 05         [24] 1411 	jnb	acc.7,00112$
      0004AB 43 90 02         [24] 1412 	orl	_P1,#0x02
                                   1413 ;	spi.h:63: else spi_mosi_low();
      0004AE 80 03            [24] 1414 	sjmp	00117$
      0004B0                       1415 00112$:
      0004B0 53 90 FD         [24] 1416 	anl	_P1,#0xfd
      0004B3                       1417 00117$:
                                   1418 ;	spi.h:65: tx <<=1;
      0004B3 8F 04            [24] 1419 	mov	ar4,r7
      0004B5 EC               [12] 1420 	mov	a,r4
      0004B6 2C               [12] 1421 	add	a,r4
      0004B7 FF               [12] 1422 	mov	r7,a
                                   1423 ;	spi.h:70: rx <<=1;
      0004B8 8E 04            [24] 1424 	mov	ar4,r6
      0004BA EC               [12] 1425 	mov	a,r4
      0004BB 2C               [12] 1426 	add	a,r4
      0004BC FE               [12] 1427 	mov	r6,a
                                   1428 ;	spi.h:73: spi_clk_high();
      0004BD 43 90 01         [24] 1429 	orl	_P1,#0x01
                                   1430 ;	spi.h:76: if(spi_read_miso()) rx |=1;
      0004C0 E5 90            [12] 1431 	mov	a,_P1
      0004C2 30 E2 03         [24] 1432 	jnb	acc.2,00123$
      0004C5 43 06 01         [24] 1433 	orl	ar6,#0x01
                                   1434 ;	spi.h:81: spi_clk_low();
      0004C8                       1435 00123$:
      0004C8 53 90 FE         [24] 1436 	anl	_P1,#0xfe
                                   1437 ;	spi.h:59: for(i=0;i<8;i++)
      0004CB 0D               [12] 1438 	inc	r5
      0004CC BD 08 00         [24] 1439 	cjne	r5,#0x08,00164$
      0004CF                       1440 00164$:
      0004CF 40 D6            [24] 1441 	jc	00132$
                                   1442 ;	spi.h:86: if(handle_cs)
      0004D1 E5 3D            [12] 1443 	mov	a,_spi_transfer_PARM_2
      0004D3 60 03            [24] 1444 	jz	00131$
                                   1445 ;	spi.h:87: spi_cs_high();
      0004D5 43 90 08         [24] 1446 	orl	_P1,#0x08
      0004D8                       1447 00131$:
                                   1448 ;	spi.h:89: return rx;
      0004D8 8E 82            [24] 1449 	mov	dpl,r6
                                   1450 ;	spi.h:90: }
      0004DA 22               [24] 1451 	ret
                                   1452 ;------------------------------------------------------------
                                   1453 ;Allocation info for local variables in function 'spi_transfer_all'
                                   1454 ;------------------------------------------------------------
                                   1455 ;len                       Allocated with name '_spi_transfer_all_PARM_2'
                                   1456 ;handle_cs                 Allocated with name '_spi_transfer_all_PARM_3'
                                   1457 ;buff                      Allocated to registers r5 r6 r7 
                                   1458 ;i                         Allocated to registers r4 
                                   1459 ;------------------------------------------------------------
                                   1460 ;	spi.h:94: void spi_transfer_all(uint8_t *buff, uint8_t len,uint8_t handle_cs)
                                   1461 ;	-----------------------------------------
                                   1462 ;	 function spi_transfer_all
                                   1463 ;	-----------------------------------------
      0004DB                       1464 _spi_transfer_all:
      0004DB AD 82            [24] 1465 	mov	r5,dpl
      0004DD AE 83            [24] 1466 	mov	r6,dph
      0004DF AF F0            [24] 1467 	mov	r7,b
                                   1468 ;	spi.h:99: if(handle_cs)spi_cs_low();
      0004E1 E5 0C            [12] 1469 	mov	a,_spi_transfer_all_PARM_3
      0004E3 60 03            [24] 1470 	jz	00119$
      0004E5 53 90 F7         [24] 1471 	anl	_P1,#0xf7
                                   1472 ;	spi.h:101: for(i=0;i<len;i++)
      0004E8                       1473 00119$:
      0004E8 7C 00            [12] 1474 	mov	r4,#0x00
      0004EA                       1475 00113$:
      0004EA C3               [12] 1476 	clr	c
      0004EB EC               [12] 1477 	mov	a,r4
      0004EC 95 0B            [12] 1478 	subb	a,_spi_transfer_all_PARM_2
      0004EE 50 2D            [24] 1479 	jnc	00106$
                                   1480 ;	spi.h:103: spi_transfer(buff[i],0);
      0004F0 EC               [12] 1481 	mov	a,r4
      0004F1 2D               [12] 1482 	add	a,r5
      0004F2 F9               [12] 1483 	mov	r1,a
      0004F3 E4               [12] 1484 	clr	a
      0004F4 3E               [12] 1485 	addc	a,r6
      0004F5 FA               [12] 1486 	mov	r2,a
      0004F6 8F 03            [24] 1487 	mov	ar3,r7
      0004F8 89 82            [24] 1488 	mov	dpl,r1
      0004FA 8A 83            [24] 1489 	mov	dph,r2
      0004FC 8B F0            [24] 1490 	mov	b,r3
      0004FE 12 1C F2         [24] 1491 	lcall	__gptrget
      000501 F9               [12] 1492 	mov	r1,a
      000502 75 3D 00         [24] 1493 	mov	_spi_transfer_PARM_2,#0x00
      000505 89 82            [24] 1494 	mov	dpl,r1
      000507 C0 07            [24] 1495 	push	ar7
      000509 C0 06            [24] 1496 	push	ar6
      00050B C0 05            [24] 1497 	push	ar5
      00050D C0 04            [24] 1498 	push	ar4
      00050F 12 04 97         [24] 1499 	lcall	_spi_transfer
      000512 D0 04            [24] 1500 	pop	ar4
      000514 D0 05            [24] 1501 	pop	ar5
      000516 D0 06            [24] 1502 	pop	ar6
      000518 D0 07            [24] 1503 	pop	ar7
                                   1504 ;	spi.h:101: for(i=0;i<len;i++)
      00051A 0C               [12] 1505 	inc	r4
      00051B 80 CD            [24] 1506 	sjmp	00113$
      00051D                       1507 00106$:
                                   1508 ;	spi.h:107: if(handle_cs)spi_cs_high();
      00051D E5 0C            [12] 1509 	mov	a,_spi_transfer_all_PARM_3
      00051F 60 03            [24] 1510 	jz	00115$
      000521 43 90 08         [24] 1511 	orl	_P1,#0x08
      000524                       1512 00115$:
                                   1513 ;	spi.h:109: }
      000524 22               [24] 1514 	ret
                                   1515 ;------------------------------------------------------------
                                   1516 ;Allocation info for local variables in function 'sd_isbusy'
                                   1517 ;------------------------------------------------------------
                                   1518 ;i                         Allocated to registers r7 
                                   1519 ;------------------------------------------------------------
                                   1520 ;	sdcard.h:26: uint8_t sd_isbusy()
                                   1521 ;	-----------------------------------------
                                   1522 ;	 function sd_isbusy
                                   1523 ;	-----------------------------------------
      000525                       1524 _sd_isbusy:
                                   1525 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      000525 7F 00            [12] 1526 	mov	r7,#0x00
      000527                       1527 00104$:
                                   1528 ;	sdcard.h:31: if(sd_spi_write(0xff)==0xff) return 0; //not busy
      000527 75 3D 00         [24] 1529 	mov	_spi_transfer_PARM_2,#0x00
      00052A 75 82 FF         [24] 1530 	mov	dpl,#0xff
      00052D C0 07            [24] 1531 	push	ar7
      00052F 12 04 97         [24] 1532 	lcall	_spi_transfer
      000532 AE 82            [24] 1533 	mov	r6,dpl
      000534 D0 07            [24] 1534 	pop	ar7
      000536 BE FF 04         [24] 1535 	cjne	r6,#0xff,00105$
      000539 75 82 00         [24] 1536 	mov	dpl,#0x00
      00053C 22               [24] 1537 	ret
      00053D                       1538 00105$:
                                   1539 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      00053D 0F               [12] 1540 	inc	r7
      00053E BF FE 00         [24] 1541 	cjne	r7,#0xfe,00122$
      000541                       1542 00122$:
      000541 40 E4            [24] 1543 	jc	00104$
                                   1544 ;	sdcard.h:34: return 1; //busy
      000543 75 82 01         [24] 1545 	mov	dpl,#0x01
                                   1546 ;	sdcard.h:35: }
      000546 22               [24] 1547 	ret
                                   1548 ;------------------------------------------------------------
                                   1549 ;Allocation info for local variables in function 'sd_initial_clk'
                                   1550 ;------------------------------------------------------------
                                   1551 ;i                         Allocated to registers r7 
                                   1552 ;------------------------------------------------------------
                                   1553 ;	sdcard.h:37: void sd_initial_clk()
                                   1554 ;	-----------------------------------------
                                   1555 ;	 function sd_initial_clk
                                   1556 ;	-----------------------------------------
      000547                       1557 _sd_initial_clk:
                                   1558 ;	sdcard.h:45: spi_cs_high(); // required by spec but works fine even when cs pin of SDCARD is always pulled to ground to save uC pins
      000547 43 90 08         [24] 1559 	orl	_P1,#0x08
                                   1560 ;	sdcard.h:46: for(uint8_t i=0;i<10;i++)spi_transfer(0xff,0);
      00054A 7F 00            [12] 1561 	mov	r7,#0x00
      00054C                       1562 00106$:
      00054C BF 0A 00         [24] 1563 	cjne	r7,#0x0a,00119$
      00054F                       1564 00119$:
      00054F 50 10            [24] 1565 	jnc	00108$
      000551 75 3D 00         [24] 1566 	mov	_spi_transfer_PARM_2,#0x00
      000554 75 82 FF         [24] 1567 	mov	dpl,#0xff
      000557 C0 07            [24] 1568 	push	ar7
      000559 12 04 97         [24] 1569 	lcall	_spi_transfer
      00055C D0 07            [24] 1570 	pop	ar7
      00055E 0F               [12] 1571 	inc	r7
      00055F 80 EB            [24] 1572 	sjmp	00106$
      000561                       1573 00108$:
                                   1574 ;	sdcard.h:47: }
      000561 22               [24] 1575 	ret
                                   1576 ;------------------------------------------------------------
                                   1577 ;Allocation info for local variables in function 'sd_cmd'
                                   1578 ;------------------------------------------------------------
                                   1579 ;arg                       Allocated with name '_sd_cmd_PARM_2'
                                   1580 ;cmd                       Allocated to registers r7 
                                   1581 ;_resp                     Allocated to registers r5 
                                   1582 ;retries                   Allocated to registers r6 
                                   1583 ;crc                       Allocated to registers r6 
                                   1584 ;i                         Allocated to registers r6 
                                   1585 ;i                         Allocated to registers r7 
                                   1586 ;------------------------------------------------------------
                                   1587 ;	sdcard.h:49: uint8_t sd_cmd(uint8_t cmd, uint32_t arg)
                                   1588 ;	-----------------------------------------
                                   1589 ;	 function sd_cmd
                                   1590 ;	-----------------------------------------
      000562                       1591 _sd_cmd:
      000562 AF 82            [24] 1592 	mov	r7,dpl
                                   1593 ;	sdcard.h:51: uint8_t _resp=0,retries=0,crc=0xff;
      000564 7E FF            [12] 1594 	mov	r6,#0xff
                                   1595 ;	sdcard.h:53: spi_cs_low();
      000566 53 90 F7         [24] 1596 	anl	_P1,#0xf7
                                   1597 ;	sdcard.h:55: sd_isbusy(); //wait while sd is busy
      000569 C0 07            [24] 1598 	push	ar7
      00056B C0 06            [24] 1599 	push	ar6
      00056D 12 05 25         [24] 1600 	lcall	_sd_isbusy
      000570 D0 06            [24] 1601 	pop	ar6
      000572 D0 07            [24] 1602 	pop	ar7
                                   1603 ;	sdcard.h:63: sd_spi_write(cmd | 0x40);
      000574 74 40            [12] 1604 	mov	a,#0x40
      000576 4F               [12] 1605 	orl	a,r7
      000577 F5 82            [12] 1606 	mov	dpl,a
      000579 75 3D 00         [24] 1607 	mov	_spi_transfer_PARM_2,#0x00
      00057C C0 07            [24] 1608 	push	ar7
      00057E C0 06            [24] 1609 	push	ar6
      000580 12 04 97         [24] 1610 	lcall	_spi_transfer
      000583 D0 06            [24] 1611 	pop	ar6
      000585 D0 07            [24] 1612 	pop	ar7
                                   1613 ;	sdcard.h:65: sd_spi_write((arg >> 24) & 0xff);
      000587 85 10 82         [24] 1614 	mov	dpl,(_sd_cmd_PARM_2 + 3)
      00058A 75 3D 00         [24] 1615 	mov	_spi_transfer_PARM_2,#0x00
      00058D C0 07            [24] 1616 	push	ar7
      00058F C0 06            [24] 1617 	push	ar6
      000591 12 04 97         [24] 1618 	lcall	_spi_transfer
      000594 D0 06            [24] 1619 	pop	ar6
      000596 D0 07            [24] 1620 	pop	ar7
                                   1621 ;	sdcard.h:66: sd_spi_write((arg >> 16) & 0xff);
      000598 85 0F 82         [24] 1622 	mov	dpl,(_sd_cmd_PARM_2 + 2)
      00059B 75 3D 00         [24] 1623 	mov	_spi_transfer_PARM_2,#0x00
      00059E C0 07            [24] 1624 	push	ar7
      0005A0 C0 06            [24] 1625 	push	ar6
      0005A2 12 04 97         [24] 1626 	lcall	_spi_transfer
      0005A5 D0 06            [24] 1627 	pop	ar6
      0005A7 D0 07            [24] 1628 	pop	ar7
                                   1629 ;	sdcard.h:67: sd_spi_write((arg >> 8) & 0xff);
      0005A9 85 0E 82         [24] 1630 	mov	dpl,(_sd_cmd_PARM_2 + 1)
      0005AC 75 3D 00         [24] 1631 	mov	_spi_transfer_PARM_2,#0x00
      0005AF C0 07            [24] 1632 	push	ar7
      0005B1 C0 06            [24] 1633 	push	ar6
      0005B3 12 04 97         [24] 1634 	lcall	_spi_transfer
      0005B6 D0 06            [24] 1635 	pop	ar6
      0005B8 D0 07            [24] 1636 	pop	ar7
                                   1637 ;	sdcard.h:68: sd_spi_write(arg & 0xff);
      0005BA 85 0D 82         [24] 1638 	mov	dpl,_sd_cmd_PARM_2
      0005BD 75 3D 00         [24] 1639 	mov	_spi_transfer_PARM_2,#0x00
      0005C0 C0 07            [24] 1640 	push	ar7
      0005C2 C0 06            [24] 1641 	push	ar6
      0005C4 12 04 97         [24] 1642 	lcall	_spi_transfer
      0005C7 D0 06            [24] 1643 	pop	ar6
      0005C9 D0 07            [24] 1644 	pop	ar7
                                   1645 ;	sdcard.h:70: if(cmd==CMD0) 
      0005CB EF               [12] 1646 	mov	a,r7
      0005CC 70 04            [24] 1647 	jnz	00107$
                                   1648 ;	sdcard.h:72: crc=0x95;
      0005CE 7E 95            [12] 1649 	mov	r6,#0x95
      0005D0 80 05            [24] 1650 	sjmp	00108$
      0005D2                       1651 00107$:
                                   1652 ;	sdcard.h:74: else if(cmd==CMD8) 
      0005D2 BF 08 02         [24] 1653 	cjne	r7,#0x08,00108$
                                   1654 ;	sdcard.h:76: crc=0x87;
      0005D5 7E 87            [12] 1655 	mov	r6,#0x87
      0005D7                       1656 00108$:
                                   1657 ;	sdcard.h:78: sd_spi_write(crc);	
      0005D7 75 3D 00         [24] 1658 	mov	_spi_transfer_PARM_2,#0x00
      0005DA 8E 82            [24] 1659 	mov	dpl,r6
      0005DC C0 07            [24] 1660 	push	ar7
      0005DE 12 04 97         [24] 1661 	lcall	_spi_transfer
      0005E1 D0 07            [24] 1662 	pop	ar7
                                   1663 ;	sdcard.h:81: while(1) 
      0005E3 7E 00            [12] 1664 	mov	r6,#0x00
      0005E5                       1665 00115$:
                                   1666 ;	sdcard.h:83: _resp = sd_spi_write(0xff);
      0005E5 75 3D 00         [24] 1667 	mov	_spi_transfer_PARM_2,#0x00
      0005E8 75 82 FF         [24] 1668 	mov	dpl,#0xff
      0005EB C0 07            [24] 1669 	push	ar7
      0005ED C0 06            [24] 1670 	push	ar6
      0005EF 12 04 97         [24] 1671 	lcall	_spi_transfer
      0005F2 AD 82            [24] 1672 	mov	r5,dpl
      0005F4 D0 06            [24] 1673 	pop	ar6
      0005F6 D0 07            [24] 1674 	pop	ar7
                                   1675 ;	sdcard.h:85: if(_resp & 0x80);
      0005F8 ED               [12] 1676 	mov	a,r5
      0005F9 30 E7 0A         [24] 1677 	jnb	acc.7,00116$
                                   1678 ;	sdcard.h:88: if(retries++ == SD_MAX_RETRIES) 
      0005FC 8E 04            [24] 1679 	mov	ar4,r6
      0005FE 0E               [12] 1680 	inc	r6
      0005FF BC 19 E3         [24] 1681 	cjne	r4,#0x19,00115$
                                   1682 ;	sdcard.h:94: return SD_MAX_RETRIES_FAIL; // 0xff means failed
      000602 75 82 FE         [24] 1683 	mov	dpl,#0xfe
      000605 22               [24] 1684 	ret
      000606                       1685 00116$:
                                   1686 ;	sdcard.h:106: if(cmd==CMD8 || cmd==CMD58)
      000606 E4               [12] 1687 	clr	a
      000607 BF 08 01         [24] 1688 	cjne	r7,#0x08,00203$
      00060A 04               [12] 1689 	inc	a
      00060B                       1690 00203$:
      00060B FE               [12] 1691 	mov	r6,a
      00060C 70 08            [24] 1692 	jnz	00128$
      00060E BF 3A 02         [24] 1693 	cjne	r7,#0x3a,00206$
      000611 80 03            [24] 1694 	sjmp	00207$
      000613                       1695 00206$:
      000613 02 06 8F         [24] 1696 	ljmp	00129$
      000616                       1697 00207$:
      000616                       1698 00128$:
                                   1699 ;	sdcard.h:114: if(cmd==CMD8)
      000616 EE               [12] 1700 	mov	a,r6
      000617 60 33            [24] 1701 	jz	00126$
                                   1702 ;	sdcard.h:116: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000619 7E 00            [12] 1703 	mov	r6,#0x00
      00061B                       1704 00132$:
      00061B BE 03 00         [24] 1705 	cjne	r6,#0x03,00209$
      00061E                       1706 00209$:
      00061E 50 14            [24] 1707 	jnc	00117$
      000620 75 3D 00         [24] 1708 	mov	_spi_transfer_PARM_2,#0x00
      000623 75 82 FF         [24] 1709 	mov	dpl,#0xff
      000626 C0 06            [24] 1710 	push	ar6
      000628 C0 05            [24] 1711 	push	ar5
      00062A 12 04 97         [24] 1712 	lcall	_spi_transfer
      00062D D0 05            [24] 1713 	pop	ar5
      00062F D0 06            [24] 1714 	pop	ar6
      000631 0E               [12] 1715 	inc	r6
      000632 80 E7            [24] 1716 	sjmp	00132$
      000634                       1717 00117$:
                                   1718 ;	sdcard.h:117: if(sd_spi_write(0xff)!=0xAA) return SD_CMD_FAIL;
      000634 75 3D 00         [24] 1719 	mov	_spi_transfer_PARM_2,#0x00
      000637 75 82 FF         [24] 1720 	mov	dpl,#0xff
      00063A C0 05            [24] 1721 	push	ar5
      00063C 12 04 97         [24] 1722 	lcall	_spi_transfer
      00063F AE 82            [24] 1723 	mov	r6,dpl
      000641 D0 05            [24] 1724 	pop	ar5
      000643 BE AA 02         [24] 1725 	cjne	r6,#0xaa,00211$
      000646 80 3A            [24] 1726 	sjmp	00127$
      000648                       1727 00211$:
      000648 75 82 FF         [24] 1728 	mov	dpl,#0xff
      00064B 22               [24] 1729 	ret
      00064C                       1730 00126$:
                                   1731 ;	sdcard.h:119: else if(cmd==CMD58)
      00064C BF 3A 33         [24] 1732 	cjne	r7,#0x3a,00127$
                                   1733 ;	sdcard.h:121: if(sd_spi_write(0xff)!=0xC0) return SD_CMD_FAIL;
      00064F 75 3D 00         [24] 1734 	mov	_spi_transfer_PARM_2,#0x00
      000652 75 82 FF         [24] 1735 	mov	dpl,#0xff
      000655 C0 05            [24] 1736 	push	ar5
      000657 12 04 97         [24] 1737 	lcall	_spi_transfer
      00065A AF 82            [24] 1738 	mov	r7,dpl
      00065C D0 05            [24] 1739 	pop	ar5
      00065E BF C0 02         [24] 1740 	cjne	r7,#0xc0,00214$
      000661 80 04            [24] 1741 	sjmp	00152$
      000663                       1742 00214$:
      000663 75 82 FF         [24] 1743 	mov	dpl,#0xff
                                   1744 ;	sdcard.h:123: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000666 22               [24] 1745 	ret
      000667                       1746 00152$:
      000667 7F 00            [12] 1747 	mov	r7,#0x00
      000669                       1748 00135$:
      000669 BF 03 00         [24] 1749 	cjne	r7,#0x03,00215$
      00066C                       1750 00215$:
      00066C 50 14            [24] 1751 	jnc	00127$
      00066E 75 3D 00         [24] 1752 	mov	_spi_transfer_PARM_2,#0x00
      000671 75 82 FF         [24] 1753 	mov	dpl,#0xff
      000674 C0 07            [24] 1754 	push	ar7
      000676 C0 05            [24] 1755 	push	ar5
      000678 12 04 97         [24] 1756 	lcall	_spi_transfer
      00067B D0 05            [24] 1757 	pop	ar5
      00067D D0 07            [24] 1758 	pop	ar7
      00067F 0F               [12] 1759 	inc	r7
      000680 80 E7            [24] 1760 	sjmp	00135$
      000682                       1761 00127$:
                                   1762 ;	sdcard.h:128: sd_spi_write(0xff);
      000682 75 3D 00         [24] 1763 	mov	_spi_transfer_PARM_2,#0x00
      000685 75 82 FF         [24] 1764 	mov	dpl,#0xff
      000688 C0 05            [24] 1765 	push	ar5
      00068A 12 04 97         [24] 1766 	lcall	_spi_transfer
      00068D D0 05            [24] 1767 	pop	ar5
      00068F                       1768 00129$:
                                   1769 ;	sdcard.h:136: return _resp;
      00068F 8D 82            [24] 1770 	mov	dpl,r5
                                   1771 ;	sdcard.h:138: }
      000691 22               [24] 1772 	ret
                                   1773 ;------------------------------------------------------------
                                   1774 ;Allocation info for local variables in function 'sd_acmd'
                                   1775 ;------------------------------------------------------------
                                   1776 ;arg                       Allocated with name '_sd_acmd_PARM_2'
                                   1777 ;cmd                       Allocated to registers r7 
                                   1778 ;_resp                     Allocated to registers 
                                   1779 ;------------------------------------------------------------
                                   1780 ;	sdcard.h:140: uint8_t sd_acmd(uint8_t cmd, uint32_t arg)
                                   1781 ;	-----------------------------------------
                                   1782 ;	 function sd_acmd
                                   1783 ;	-----------------------------------------
      000692                       1784 _sd_acmd:
      000692 AF 82            [24] 1785 	mov	r7,dpl
                                   1786 ;	sdcard.h:144: _resp=sd_cmd(CMD55,0);
      000694 E4               [12] 1787 	clr	a
      000695 F5 0D            [12] 1788 	mov	_sd_cmd_PARM_2,a
      000697 F5 0E            [12] 1789 	mov	(_sd_cmd_PARM_2 + 1),a
      000699 F5 0F            [12] 1790 	mov	(_sd_cmd_PARM_2 + 2),a
      00069B F5 10            [12] 1791 	mov	(_sd_cmd_PARM_2 + 3),a
      00069D 75 82 37         [24] 1792 	mov	dpl,#0x37
      0006A0 C0 07            [24] 1793 	push	ar7
      0006A2 12 05 62         [24] 1794 	lcall	_sd_cmd
      0006A5 AE 82            [24] 1795 	mov	r6,dpl
      0006A7 D0 07            [24] 1796 	pop	ar7
                                   1797 ;	sdcard.h:145: if(_resp!=1) return SD_CMD_FAIL;
      0006A9 BE 01 02         [24] 1798 	cjne	r6,#0x01,00110$
      0006AC 80 04            [24] 1799 	sjmp	00102$
      0006AE                       1800 00110$:
      0006AE 75 82 FF         [24] 1801 	mov	dpl,#0xff
      0006B1 22               [24] 1802 	ret
      0006B2                       1803 00102$:
                                   1804 ;	sdcard.h:148: _resp=sd_cmd(cmd,arg);
      0006B2 85 11 0D         [24] 1805 	mov	_sd_cmd_PARM_2,_sd_acmd_PARM_2
      0006B5 85 12 0E         [24] 1806 	mov	(_sd_cmd_PARM_2 + 1),(_sd_acmd_PARM_2 + 1)
      0006B8 85 13 0F         [24] 1807 	mov	(_sd_cmd_PARM_2 + 2),(_sd_acmd_PARM_2 + 2)
      0006BB 85 14 10         [24] 1808 	mov	(_sd_cmd_PARM_2 + 3),(_sd_acmd_PARM_2 + 3)
      0006BE 8F 82            [24] 1809 	mov	dpl,r7
                                   1810 ;	sdcard.h:149: return _resp;
                                   1811 ;	sdcard.h:151: }
      0006C0 02 05 62         [24] 1812 	ljmp	_sd_cmd
                                   1813 ;------------------------------------------------------------
                                   1814 ;Allocation info for local variables in function 'SDinit'
                                   1815 ;------------------------------------------------------------
                                   1816 ;retries                   Allocated to registers r7 
                                   1817 ;------------------------------------------------------------
                                   1818 ;	sdcard.h:157: uint8_t SDinit()
                                   1819 ;	-----------------------------------------
                                   1820 ;	 function SDinit
                                   1821 ;	-----------------------------------------
      0006C3                       1822 _SDinit:
                                   1823 ;	sdcard.h:161: sd_initial_clk(); // 74 minimum clks for initialization
      0006C3 12 05 47         [24] 1824 	lcall	_sd_initial_clk
                                   1825 ;	sdcard.h:163: while(1)
      0006C6 7F 00            [12] 1826 	mov	r7,#0x00
      0006C8                       1827 00107$:
                                   1828 ;	sdcard.h:165: if(sd_cmd(CMD0,0)==0x01)break; // correct response is 0x01 -> signals card is idling
      0006C8 E4               [12] 1829 	clr	a
      0006C9 F5 0D            [12] 1830 	mov	_sd_cmd_PARM_2,a
      0006CB F5 0E            [12] 1831 	mov	(_sd_cmd_PARM_2 + 1),a
      0006CD F5 0F            [12] 1832 	mov	(_sd_cmd_PARM_2 + 2),a
      0006CF F5 10            [12] 1833 	mov	(_sd_cmd_PARM_2 + 3),a
      0006D1 75 82 00         [24] 1834 	mov	dpl,#0x00
      0006D4 C0 07            [24] 1835 	push	ar7
      0006D6 12 05 62         [24] 1836 	lcall	_sd_cmd
      0006D9 AE 82            [24] 1837 	mov	r6,dpl
      0006DB D0 07            [24] 1838 	pop	ar7
      0006DD BE 01 02         [24] 1839 	cjne	r6,#0x01,00155$
      0006E0 80 0A            [24] 1840 	sjmp	00108$
      0006E2                       1841 00155$:
                                   1842 ;	sdcard.h:166: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      0006E2 8F 06            [24] 1843 	mov	ar6,r7
      0006E4 0F               [12] 1844 	inc	r7
      0006E5 BE 19 E0         [24] 1845 	cjne	r6,#0x19,00107$
      0006E8 75 82 FE         [24] 1846 	mov	dpl,#0xfe
      0006EB 22               [24] 1847 	ret
      0006EC                       1848 00108$:
                                   1849 ;	sdcard.h:170: if(sd_cmd(CMD8,0x1AA)!=0x01) return SD_CMD_FAIL; // correct response for cmd8 is 0x01
      0006EC 75 0D AA         [24] 1850 	mov	_sd_cmd_PARM_2,#0xaa
      0006EF 75 0E 01         [24] 1851 	mov	(_sd_cmd_PARM_2 + 1),#0x01
      0006F2 E4               [12] 1852 	clr	a
      0006F3 F5 0F            [12] 1853 	mov	(_sd_cmd_PARM_2 + 2),a
      0006F5 F5 10            [12] 1854 	mov	(_sd_cmd_PARM_2 + 3),a
      0006F7 75 82 08         [24] 1855 	mov	dpl,#0x08
      0006FA 12 05 62         [24] 1856 	lcall	_sd_cmd
      0006FD AF 82            [24] 1857 	mov	r7,dpl
      0006FF BF 01 02         [24] 1858 	cjne	r7,#0x01,00158$
      000702 80 04            [24] 1859 	sjmp	00128$
      000704                       1860 00158$:
      000704 75 82 FF         [24] 1861 	mov	dpl,#0xff
                                   1862 ;	sdcard.h:173: while(1)
      000707 22               [24] 1863 	ret
      000708                       1864 00128$:
      000708 7F 00            [12] 1865 	mov	r7,#0x00
      00070A                       1866 00117$:
                                   1867 ;	sdcard.h:175: if(sd_acmd(CMD41,0x40000000)==0)break; //correct response
      00070A E4               [12] 1868 	clr	a
      00070B F5 11            [12] 1869 	mov	_sd_acmd_PARM_2,a
      00070D F5 12            [12] 1870 	mov	(_sd_acmd_PARM_2 + 1),a
      00070F F5 13            [12] 1871 	mov	(_sd_acmd_PARM_2 + 2),a
      000711 75 14 40         [24] 1872 	mov	(_sd_acmd_PARM_2 + 3),#0x40
      000714 75 82 29         [24] 1873 	mov	dpl,#0x29
      000717 C0 07            [24] 1874 	push	ar7
      000719 12 06 92         [24] 1875 	lcall	_sd_acmd
      00071C E5 82            [12] 1876 	mov	a,dpl
      00071E D0 07            [24] 1877 	pop	ar7
      000720 60 0A            [24] 1878 	jz	00118$
                                   1879 ;	sdcard.h:176: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      000722 8F 06            [24] 1880 	mov	ar6,r7
      000724 0F               [12] 1881 	inc	r7
      000725 BE 19 E2         [24] 1882 	cjne	r6,#0x19,00117$
      000728 75 82 FE         [24] 1883 	mov	dpl,#0xfe
      00072B 22               [24] 1884 	ret
      00072C                       1885 00118$:
                                   1886 ;	sdcard.h:182: if(sd_cmd(CMD58,0)) return SD_CMD_FAIL;  
      00072C E4               [12] 1887 	clr	a
      00072D F5 0D            [12] 1888 	mov	_sd_cmd_PARM_2,a
      00072F F5 0E            [12] 1889 	mov	(_sd_cmd_PARM_2 + 1),a
      000731 F5 0F            [12] 1890 	mov	(_sd_cmd_PARM_2 + 2),a
      000733 F5 10            [12] 1891 	mov	(_sd_cmd_PARM_2 + 3),a
      000735 75 82 3A         [24] 1892 	mov	dpl,#0x3a
      000738 12 05 62         [24] 1893 	lcall	_sd_cmd
      00073B E5 82            [12] 1894 	mov	a,dpl
      00073D 60 04            [24] 1895 	jz	00120$
      00073F 75 82 FF         [24] 1896 	mov	dpl,#0xff
      000742 22               [24] 1897 	ret
      000743                       1898 00120$:
                                   1899 ;	sdcard.h:190: return 0; //successful init
      000743 75 82 00         [24] 1900 	mov	dpl,#0x00
                                   1901 ;	sdcard.h:191: }
      000746 22               [24] 1902 	ret
                                   1903 ;------------------------------------------------------------
                                   1904 ;Allocation info for local variables in function 'SDread'
                                   1905 ;------------------------------------------------------------
                                   1906 ;offset                    Allocated to stack - _bp -4
                                   1907 ;count                     Allocated to stack - _bp -6
                                   1908 ;dst                       Allocated to stack - _bp -9
                                   1909 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   1910 ;retries                   Allocated to registers r7 
                                   1911 ;response                  Allocated to registers r3 
                                   1912 ;i                         Allocated to registers r4 r5 
                                   1913 ;------------------------------------------------------------
                                   1914 ;	sdcard.h:206: uint8_t SDread(uint32_t block_addr, uint16_t offset, uint16_t count, uint8_t* dst ) __reentrant
                                   1915 ;	-----------------------------------------
                                   1916 ;	 function SDread
                                   1917 ;	-----------------------------------------
      000747                       1918 _SDread:
      000747 C0 3C            [24] 1919 	push	_bp
      000749 85 81 3C         [24] 1920 	mov	_bp,sp
      00074C AC 82            [24] 1921 	mov	r4,dpl
      00074E AD 83            [24] 1922 	mov	r5,dph
      000750 AE F0            [24] 1923 	mov	r6,b
      000752 FF               [12] 1924 	mov	r7,a
                                   1925 ;	sdcard.h:221: if (count == 0) return 0; //success
      000753 E5 3C            [12] 1926 	mov	a,_bp
      000755 24 FA            [12] 1927 	add	a,#0xfa
      000757 F8               [12] 1928 	mov	r0,a
      000758 E6               [12] 1929 	mov	a,@r0
      000759 08               [12] 1930 	inc	r0
      00075A 46               [12] 1931 	orl	a,@r0
      00075B 70 05            [24] 1932 	jnz	00102$
      00075D F5 82            [12] 1933 	mov	dpl,a
      00075F 02 08 60         [24] 1934 	ljmp	00131$
      000762                       1935 00102$:
                                   1936 ;	sdcard.h:222: if ((count + offset) > SD_BLOCK_SIZE) {
      000762 E5 3C            [12] 1937 	mov	a,_bp
      000764 24 FA            [12] 1938 	add	a,#0xfa
      000766 F8               [12] 1939 	mov	r0,a
      000767 E5 3C            [12] 1940 	mov	a,_bp
      000769 24 FC            [12] 1941 	add	a,#0xfc
      00076B F9               [12] 1942 	mov	r1,a
      00076C E7               [12] 1943 	mov	a,@r1
      00076D 26               [12] 1944 	add	a,@r0
      00076E FA               [12] 1945 	mov	r2,a
      00076F 09               [12] 1946 	inc	r1
      000770 E7               [12] 1947 	mov	a,@r1
      000771 08               [12] 1948 	inc	r0
      000772 36               [12] 1949 	addc	a,@r0
      000773 FB               [12] 1950 	mov	r3,a
      000774 C3               [12] 1951 	clr	c
      000775 E4               [12] 1952 	clr	a
      000776 9A               [12] 1953 	subb	a,r2
      000777 74 02            [12] 1954 	mov	a,#0x02
      000779 9B               [12] 1955 	subb	a,r3
      00077A 50 06            [24] 1956 	jnc	00105$
                                   1957 ;	sdcard.h:223: return 1; //fail
      00077C 75 82 01         [24] 1958 	mov	dpl,#0x01
      00077F 02 08 60         [24] 1959 	ljmp	00131$
                                   1960 ;	sdcard.h:231: spi_cs_low();
      000782                       1961 00105$:
      000782 53 90 F7         [24] 1962 	anl	_P1,#0xf7
                                   1963 ;	sdcard.h:236: if(sd_cmd(CMD17,block_addr)) return SD_CMD_FAIL; 
      000785 8C 0D            [24] 1964 	mov	_sd_cmd_PARM_2,r4
      000787 8D 0E            [24] 1965 	mov	(_sd_cmd_PARM_2 + 1),r5
      000789 8E 0F            [24] 1966 	mov	(_sd_cmd_PARM_2 + 2),r6
      00078B 8F 10            [24] 1967 	mov	(_sd_cmd_PARM_2 + 3),r7
      00078D 75 82 11         [24] 1968 	mov	dpl,#0x11
      000790 12 05 62         [24] 1969 	lcall	_sd_cmd
      000793 E5 82            [12] 1970 	mov	a,dpl
      000795 60 06            [24] 1971 	jz	00138$
      000797 75 82 FF         [24] 1972 	mov	dpl,#0xff
      00079A 02 08 60         [24] 1973 	ljmp	00131$
                                   1974 ;	sdcard.h:240: while(1)
      00079D                       1975 00138$:
      00079D 7F 00            [12] 1976 	mov	r7,#0x00
      00079F                       1977 00119$:
                                   1978 ;	sdcard.h:242: response = sd_spi_write(0xff);
      00079F 75 3D 00         [24] 1979 	mov	_spi_transfer_PARM_2,#0x00
      0007A2 75 82 FF         [24] 1980 	mov	dpl,#0xff
      0007A5 C0 07            [24] 1981 	push	ar7
      0007A7 12 04 97         [24] 1982 	lcall	_spi_transfer
      0007AA AE 82            [24] 1983 	mov	r6,dpl
      0007AC D0 07            [24] 1984 	pop	ar7
                                   1985 ;	sdcard.h:250: if(response==0xff); //pass
      0007AE BE FF 02         [24] 1986 	cjne	r6,#0xff,00192$
      0007B1 80 0B            [24] 1987 	sjmp	00115$
      0007B3                       1988 00192$:
                                   1989 ;	sdcard.h:251: else if(response == DATA_START_BLOCK) break; // if the last response is DATA_START_BLOCK=0xFE, then success, else fail
      0007B3 BE FE 02         [24] 1990 	cjne	r6,#0xfe,00193$
      0007B6 80 12            [24] 1991 	sjmp	00143$
      0007B8                       1992 00193$:
                                   1993 ;	sdcard.h:252: else return DATA_START_BLOCK_FAIL; // if anything other than 0xff or DATA_START_BLOCK=0xFE
      0007B8 75 82 FD         [24] 1994 	mov	dpl,#0xfd
      0007BB 02 08 60         [24] 1995 	ljmp	00131$
      0007BE                       1996 00115$:
                                   1997 ;	sdcard.h:254: if(retries++==255) return SD_MAX_RETRIES_FAIL;
      0007BE 8F 06            [24] 1998 	mov	ar6,r7
      0007C0 0F               [12] 1999 	inc	r7
      0007C1 BE FF DB         [24] 2000 	cjne	r6,#0xff,00119$
      0007C4 75 82 FE         [24] 2001 	mov	dpl,#0xfe
      0007C7 02 08 60         [24] 2002 	ljmp	00131$
                                   2003 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      0007CA                       2004 00143$:
      0007CA E5 3C            [12] 2005 	mov	a,_bp
      0007CC 24 FC            [12] 2006 	add	a,#0xfc
      0007CE F8               [12] 2007 	mov	r0,a
      0007CF E5 3C            [12] 2008 	mov	a,_bp
      0007D1 24 FA            [12] 2009 	add	a,#0xfa
      0007D3 F9               [12] 2010 	mov	r1,a
      0007D4 E7               [12] 2011 	mov	a,@r1
      0007D5 26               [12] 2012 	add	a,@r0
      0007D6 FE               [12] 2013 	mov	r6,a
      0007D7 09               [12] 2014 	inc	r1
      0007D8 E7               [12] 2015 	mov	a,@r1
      0007D9 08               [12] 2016 	inc	r0
      0007DA 36               [12] 2017 	addc	a,@r0
      0007DB FF               [12] 2018 	mov	r7,a
      0007DC 7C 00            [12] 2019 	mov	r4,#0x00
      0007DE 7D 00            [12] 2020 	mov	r5,#0x00
      0007E0                       2021 00129$:
      0007E0 74 FE            [12] 2022 	mov	a,#0x100 - 0x02
      0007E2 2D               [12] 2023 	add	a,r5
      0007E3 40 63            [24] 2024 	jc	00124$
                                   2025 ;	sdcard.h:262: response = spi_transfer(0xff,0);
      0007E5 75 3D 00         [24] 2026 	mov	_spi_transfer_PARM_2,#0x00
      0007E8 75 82 FF         [24] 2027 	mov	dpl,#0xff
      0007EB C0 07            [24] 2028 	push	ar7
      0007ED C0 06            [24] 2029 	push	ar6
      0007EF C0 05            [24] 2030 	push	ar5
      0007F1 C0 04            [24] 2031 	push	ar4
      0007F3 12 04 97         [24] 2032 	lcall	_spi_transfer
      0007F6 AB 82            [24] 2033 	mov	r3,dpl
      0007F8 D0 04            [24] 2034 	pop	ar4
      0007FA D0 05            [24] 2035 	pop	ar5
      0007FC D0 06            [24] 2036 	pop	ar6
      0007FE D0 07            [24] 2037 	pop	ar7
                                   2038 ;	sdcard.h:270: if(i>=offset && i<offset+count)
      000800 E5 3C            [12] 2039 	mov	a,_bp
      000802 24 FC            [12] 2040 	add	a,#0xfc
      000804 F8               [12] 2041 	mov	r0,a
      000805 C3               [12] 2042 	clr	c
      000806 EC               [12] 2043 	mov	a,r4
      000807 96               [12] 2044 	subb	a,@r0
      000808 ED               [12] 2045 	mov	a,r5
      000809 08               [12] 2046 	inc	r0
      00080A 96               [12] 2047 	subb	a,@r0
      00080B 40 34            [24] 2048 	jc	00130$
      00080D EC               [12] 2049 	mov	a,r4
      00080E 9E               [12] 2050 	subb	a,r6
      00080F ED               [12] 2051 	mov	a,r5
      000810 9F               [12] 2052 	subb	a,r7
      000811 50 2E            [24] 2053 	jnc	00130$
                                   2054 ;	sdcard.h:272: dst[i-offset] = response;
      000813 C0 06            [24] 2055 	push	ar6
      000815 C0 07            [24] 2056 	push	ar7
      000817 E5 3C            [12] 2057 	mov	a,_bp
      000819 24 FC            [12] 2058 	add	a,#0xfc
      00081B F8               [12] 2059 	mov	r0,a
      00081C EC               [12] 2060 	mov	a,r4
      00081D C3               [12] 2061 	clr	c
      00081E 96               [12] 2062 	subb	a,@r0
      00081F FA               [12] 2063 	mov	r2,a
      000820 ED               [12] 2064 	mov	a,r5
      000821 08               [12] 2065 	inc	r0
      000822 96               [12] 2066 	subb	a,@r0
      000823 FF               [12] 2067 	mov	r7,a
      000824 E5 3C            [12] 2068 	mov	a,_bp
      000826 24 F7            [12] 2069 	add	a,#0xf7
      000828 F8               [12] 2070 	mov	r0,a
      000829 EA               [12] 2071 	mov	a,r2
      00082A 26               [12] 2072 	add	a,@r0
      00082B FA               [12] 2073 	mov	r2,a
      00082C EF               [12] 2074 	mov	a,r7
      00082D 08               [12] 2075 	inc	r0
      00082E 36               [12] 2076 	addc	a,@r0
      00082F FF               [12] 2077 	mov	r7,a
      000830 08               [12] 2078 	inc	r0
      000831 86 06            [24] 2079 	mov	ar6,@r0
      000833 8A 82            [24] 2080 	mov	dpl,r2
      000835 8F 83            [24] 2081 	mov	dph,r7
      000837 8E F0            [24] 2082 	mov	b,r6
      000839 EB               [12] 2083 	mov	a,r3
      00083A 12 1B FF         [24] 2084 	lcall	__gptrput
                                   2085 ;	sdcard.h:287: return 0; //success
      00083D D0 07            [24] 2086 	pop	ar7
      00083F D0 06            [24] 2087 	pop	ar6
                                   2088 ;	sdcard.h:272: dst[i-offset] = response;
      000841                       2089 00130$:
                                   2090 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      000841 0C               [12] 2091 	inc	r4
      000842 BC 00 9B         [24] 2092 	cjne	r4,#0x00,00129$
      000845 0D               [12] 2093 	inc	r5
      000846 80 98            [24] 2094 	sjmp	00129$
      000848                       2095 00124$:
                                   2096 ;	sdcard.h:280: sd_spi_write(0xff);
      000848 75 3D 00         [24] 2097 	mov	_spi_transfer_PARM_2,#0x00
      00084B 75 82 FF         [24] 2098 	mov	dpl,#0xff
      00084E 12 04 97         [24] 2099 	lcall	_spi_transfer
                                   2100 ;	sdcard.h:281: sd_spi_write(0xff);
      000851 75 3D 00         [24] 2101 	mov	_spi_transfer_PARM_2,#0x00
      000854 75 82 FF         [24] 2102 	mov	dpl,#0xff
      000857 12 04 97         [24] 2103 	lcall	_spi_transfer
                                   2104 ;	sdcard.h:284: spi_cs_high(); //leave clock high
      00085A 43 90 08         [24] 2105 	orl	_P1,#0x08
                                   2106 ;	sdcard.h:287: return 0; //success
      00085D 75 82 00         [24] 2107 	mov	dpl,#0x00
      000860                       2108 00131$:
                                   2109 ;	sdcard.h:289: }
      000860 D0 3C            [24] 2110 	pop	_bp
      000862 22               [24] 2111 	ret
                                   2112 ;------------------------------------------------------------
                                   2113 ;Allocation info for local variables in function 'SDreadBlock'
                                   2114 ;------------------------------------------------------------
                                   2115 ;dst                       Allocated with name '_SDreadBlock_PARM_2'
                                   2116 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   2117 ;------------------------------------------------------------
                                   2118 ;	sdcard.h:291: uint8_t SDreadBlock(uint32_t block_addr,uint8_t* dst)
                                   2119 ;	-----------------------------------------
                                   2120 ;	 function SDreadBlock
                                   2121 ;	-----------------------------------------
      000863                       2122 _SDreadBlock:
      000863 AC 82            [24] 2123 	mov	r4,dpl
      000865 AD 83            [24] 2124 	mov	r5,dph
      000867 AE F0            [24] 2125 	mov	r6,b
      000869 FF               [12] 2126 	mov	r7,a
                                   2127 ;	sdcard.h:293: return SDread(block_addr,0,SD_BLOCK_SIZE,dst);
      00086A C0 15            [24] 2128 	push	_SDreadBlock_PARM_2
      00086C C0 16            [24] 2129 	push	(_SDreadBlock_PARM_2 + 1)
      00086E C0 17            [24] 2130 	push	(_SDreadBlock_PARM_2 + 2)
      000870 E4               [12] 2131 	clr	a
      000871 C0 E0            [24] 2132 	push	acc
      000873 74 02            [12] 2133 	mov	a,#0x02
      000875 C0 E0            [24] 2134 	push	acc
      000877 E4               [12] 2135 	clr	a
      000878 C0 E0            [24] 2136 	push	acc
      00087A C0 E0            [24] 2137 	push	acc
      00087C 8C 82            [24] 2138 	mov	dpl,r4
      00087E 8D 83            [24] 2139 	mov	dph,r5
      000880 8E F0            [24] 2140 	mov	b,r6
      000882 EF               [12] 2141 	mov	a,r7
      000883 12 07 47         [24] 2142 	lcall	_SDread
      000886 E5 81            [12] 2143 	mov	a,sp
      000888 24 F9            [12] 2144 	add	a,#0xf9
      00088A F5 81            [12] 2145 	mov	sp,a
                                   2146 ;	sdcard.h:294: }
      00088C 22               [24] 2147 	ret
                                   2148 ;------------------------------------------------------------
                                   2149 ;Allocation info for local variables in function 'HELPER_load_littleendian16'
                                   2150 ;------------------------------------------------------------
                                   2151 ;src                       Allocated to registers r5 r6 r7 
                                   2152 ;val                       Allocated to registers r2 r4 
                                   2153 ;------------------------------------------------------------
                                   2154 ;	fat.h:85: uint16_t HELPER_load_littleendian16(uint8_t *src) __reentrant
                                   2155 ;	-----------------------------------------
                                   2156 ;	 function HELPER_load_littleendian16
                                   2157 ;	-----------------------------------------
      00088D                       2158 _HELPER_load_littleendian16:
      00088D AD 82            [24] 2159 	mov	r5,dpl
      00088F AE 83            [24] 2160 	mov	r6,dph
      000891 AF F0            [24] 2161 	mov	r7,b
                                   2162 ;	fat.h:89: val = *(src+1);
      000893 74 01            [12] 2163 	mov	a,#0x01
      000895 2D               [12] 2164 	add	a,r5
      000896 FA               [12] 2165 	mov	r2,a
      000897 E4               [12] 2166 	clr	a
      000898 3E               [12] 2167 	addc	a,r6
      000899 FB               [12] 2168 	mov	r3,a
      00089A 8F 04            [24] 2169 	mov	ar4,r7
      00089C 8A 82            [24] 2170 	mov	dpl,r2
      00089E 8B 83            [24] 2171 	mov	dph,r3
      0008A0 8C F0            [24] 2172 	mov	b,r4
      0008A2 12 1C F2         [24] 2173 	lcall	__gptrget
                                   2174 ;	fat.h:90: val <<= 8;
      0008A5 FC               [12] 2175 	mov	r4,a
      0008A6 7A 00            [12] 2176 	mov	r2,#0x00
                                   2177 ;	fat.h:91: val |= *src;
      0008A8 8D 82            [24] 2178 	mov	dpl,r5
      0008AA 8E 83            [24] 2179 	mov	dph,r6
      0008AC 8F F0            [24] 2180 	mov	b,r7
      0008AE 12 1C F2         [24] 2181 	lcall	__gptrget
      0008B1 7F 00            [12] 2182 	mov	r7,#0x00
      0008B3 4A               [12] 2183 	orl	a,r2
      0008B4 F5 82            [12] 2184 	mov	dpl,a
      0008B6 EF               [12] 2185 	mov	a,r7
      0008B7 4C               [12] 2186 	orl	a,r4
      0008B8 F5 83            [12] 2187 	mov	dph,a
                                   2188 ;	fat.h:93: return val;
                                   2189 ;	fat.h:94: }
      0008BA 22               [24] 2190 	ret
                                   2191 ;------------------------------------------------------------
                                   2192 ;Allocation info for local variables in function 'HELPER_load_littleendian32'
                                   2193 ;------------------------------------------------------------
                                   2194 ;src                       Allocated to stack - _bp +1
                                   2195 ;val                       Allocated to stack - _bp +8
                                   2196 ;i                         Allocated to stack - _bp +12
                                   2197 ;sloc0                     Allocated to stack - _bp +9
                                   2198 ;sloc1                     Allocated to stack - _bp +4
                                   2199 ;------------------------------------------------------------
                                   2200 ;	fat.h:96: uint32_t HELPER_load_littleendian32(uint8_t *src) __reentrant
                                   2201 ;	-----------------------------------------
                                   2202 ;	 function HELPER_load_littleendian32
                                   2203 ;	-----------------------------------------
      0008BB                       2204 _HELPER_load_littleendian32:
      0008BB C0 3C            [24] 2205 	push	_bp
      0008BD 85 81 3C         [24] 2206 	mov	_bp,sp
      0008C0 C0 82            [24] 2207 	push	dpl
      0008C2 C0 83            [24] 2208 	push	dph
      0008C4 C0 F0            [24] 2209 	push	b
      0008C6 E5 81            [12] 2210 	mov	a,sp
      0008C8 24 09            [12] 2211 	add	a,#0x09
      0008CA F5 81            [12] 2212 	mov	sp,a
                                   2213 ;	fat.h:98: uint32_t val=0;
                                   2214 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      0008CC E4               [12] 2215 	clr	a
      0008CD FA               [12] 2216 	mov	r2,a
      0008CE FB               [12] 2217 	mov	r3,a
      0008CF FC               [12] 2218 	mov	r4,a
      0008D0 FF               [12] 2219 	mov	r7,a
      0008D1 E5 3C            [12] 2220 	mov	a,_bp
      0008D3 24 0C            [12] 2221 	add	a,#0x0c
      0008D5 F8               [12] 2222 	mov	r0,a
      0008D6 76 00            [12] 2223 	mov	@r0,#0x00
      0008D8                       2224 00103$:
      0008D8 E5 3C            [12] 2225 	mov	a,_bp
      0008DA 24 0C            [12] 2226 	add	a,#0x0c
      0008DC F8               [12] 2227 	mov	r0,a
      0008DD B6 04 00         [24] 2228 	cjne	@r0,#0x04,00118$
      0008E0                       2229 00118$:
      0008E0 50 6F            [24] 2230 	jnc	00101$
                                   2231 ;	fat.h:102: val <<= 8;
      0008E2 E5 3C            [12] 2232 	mov	a,_bp
      0008E4 24 08            [12] 2233 	add	a,#0x08
      0008E6 F8               [12] 2234 	mov	r0,a
      0008E7 08               [12] 2235 	inc	r0
      0008E8 08               [12] 2236 	inc	r0
      0008E9 08               [12] 2237 	inc	r0
      0008EA A6 04            [24] 2238 	mov	@r0,ar4
      0008EC 18               [12] 2239 	dec	r0
      0008ED A6 03            [24] 2240 	mov	@r0,ar3
      0008EF 18               [12] 2241 	dec	r0
      0008F0 A6 02            [24] 2242 	mov	@r0,ar2
      0008F2 18               [12] 2243 	dec	r0
      0008F3 76 00            [12] 2244 	mov	@r0,#0x00
                                   2245 ;	fat.h:103: val |= src[3-i];
      0008F5 E5 3C            [12] 2246 	mov	a,_bp
      0008F7 24 0C            [12] 2247 	add	a,#0x0c
      0008F9 F8               [12] 2248 	mov	r0,a
      0008FA 86 05            [24] 2249 	mov	ar5,@r0
      0008FC 7E 00            [12] 2250 	mov	r6,#0x00
      0008FE 74 03            [12] 2251 	mov	a,#0x03
      000900 C3               [12] 2252 	clr	c
      000901 9D               [12] 2253 	subb	a,r5
      000902 FD               [12] 2254 	mov	r5,a
      000903 E4               [12] 2255 	clr	a
      000904 9E               [12] 2256 	subb	a,r6
      000905 FE               [12] 2257 	mov	r6,a
      000906 A8 3C            [24] 2258 	mov	r0,_bp
      000908 08               [12] 2259 	inc	r0
      000909 ED               [12] 2260 	mov	a,r5
      00090A 26               [12] 2261 	add	a,@r0
      00090B FF               [12] 2262 	mov	r7,a
      00090C EE               [12] 2263 	mov	a,r6
      00090D 08               [12] 2264 	inc	r0
      00090E 36               [12] 2265 	addc	a,@r0
      00090F FE               [12] 2266 	mov	r6,a
      000910 08               [12] 2267 	inc	r0
      000911 86 05            [24] 2268 	mov	ar5,@r0
      000913 8F 82            [24] 2269 	mov	dpl,r7
      000915 8E 83            [24] 2270 	mov	dph,r6
      000917 8D F0            [24] 2271 	mov	b,r5
      000919 12 1C F2         [24] 2272 	lcall	__gptrget
      00091C FE               [12] 2273 	mov	r6,a
      00091D E5 3C            [12] 2274 	mov	a,_bp
      00091F 24 04            [12] 2275 	add	a,#0x04
      000921 F8               [12] 2276 	mov	r0,a
      000922 A6 06            [24] 2277 	mov	@r0,ar6
      000924 08               [12] 2278 	inc	r0
      000925 76 00            [12] 2279 	mov	@r0,#0x00
      000927 08               [12] 2280 	inc	r0
      000928 76 00            [12] 2281 	mov	@r0,#0x00
      00092A 08               [12] 2282 	inc	r0
      00092B 76 00            [12] 2283 	mov	@r0,#0x00
      00092D E5 3C            [12] 2284 	mov	a,_bp
      00092F 24 08            [12] 2285 	add	a,#0x08
      000931 F8               [12] 2286 	mov	r0,a
      000932 E5 3C            [12] 2287 	mov	a,_bp
      000934 24 04            [12] 2288 	add	a,#0x04
      000936 F9               [12] 2289 	mov	r1,a
      000937 E7               [12] 2290 	mov	a,@r1
      000938 46               [12] 2291 	orl	a,@r0
      000939 FA               [12] 2292 	mov	r2,a
      00093A 09               [12] 2293 	inc	r1
      00093B E7               [12] 2294 	mov	a,@r1
      00093C 08               [12] 2295 	inc	r0
      00093D 46               [12] 2296 	orl	a,@r0
      00093E FB               [12] 2297 	mov	r3,a
      00093F 09               [12] 2298 	inc	r1
      000940 E7               [12] 2299 	mov	a,@r1
      000941 08               [12] 2300 	inc	r0
      000942 46               [12] 2301 	orl	a,@r0
      000943 FC               [12] 2302 	mov	r4,a
      000944 09               [12] 2303 	inc	r1
      000945 E7               [12] 2304 	mov	a,@r1
      000946 08               [12] 2305 	inc	r0
      000947 46               [12] 2306 	orl	a,@r0
      000948 FF               [12] 2307 	mov	r7,a
                                   2308 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      000949 E5 3C            [12] 2309 	mov	a,_bp
      00094B 24 0C            [12] 2310 	add	a,#0x0c
      00094D F8               [12] 2311 	mov	r0,a
      00094E 06               [12] 2312 	inc	@r0
      00094F 80 87            [24] 2313 	sjmp	00103$
      000951                       2314 00101$:
                                   2315 ;	fat.h:106: return val;
      000951 8A 82            [24] 2316 	mov	dpl,r2
      000953 8B 83            [24] 2317 	mov	dph,r3
      000955 8C F0            [24] 2318 	mov	b,r4
      000957 EF               [12] 2319 	mov	a,r7
                                   2320 ;	fat.h:107: }
      000958 85 3C 81         [24] 2321 	mov	sp,_bp
      00095B D0 3C            [24] 2322 	pop	_bp
      00095D 22               [24] 2323 	ret
                                   2324 ;------------------------------------------------------------
                                   2325 ;Allocation info for local variables in function 'HELPER_strcmp'
                                   2326 ;------------------------------------------------------------
                                   2327 ;s2                        Allocated with name '_HELPER_strcmp_PARM_2'
                                   2328 ;s1                        Allocated to registers r5 r6 r7 
                                   2329 ;i                         Allocated to registers r4 
                                   2330 ;------------------------------------------------------------
                                   2331 ;	fat.h:109: uint8_t HELPER_strcmp(char *s1,char* s2)
                                   2332 ;	-----------------------------------------
                                   2333 ;	 function HELPER_strcmp
                                   2334 ;	-----------------------------------------
      00095E                       2335 _HELPER_strcmp:
      00095E AD 82            [24] 2336 	mov	r5,dpl
      000960 AE 83            [24] 2337 	mov	r6,dph
      000962 AF F0            [24] 2338 	mov	r7,b
                                   2339 ;	fat.h:112: while(1)
      000964 7C 00            [12] 2340 	mov	r4,#0x00
      000966                       2341 00107$:
                                   2342 ;	fat.h:114: if(s1[i]==s2[i]);
      000966 EC               [12] 2343 	mov	a,r4
      000967 2D               [12] 2344 	add	a,r5
      000968 F9               [12] 2345 	mov	r1,a
      000969 E4               [12] 2346 	clr	a
      00096A 3E               [12] 2347 	addc	a,r6
      00096B FA               [12] 2348 	mov	r2,a
      00096C 8F 03            [24] 2349 	mov	ar3,r7
      00096E 89 82            [24] 2350 	mov	dpl,r1
      000970 8A 83            [24] 2351 	mov	dph,r2
      000972 8B F0            [24] 2352 	mov	b,r3
      000974 12 1C F2         [24] 2353 	lcall	__gptrget
      000977 FB               [12] 2354 	mov	r3,a
      000978 EC               [12] 2355 	mov	a,r4
      000979 25 3D            [12] 2356 	add	a,_HELPER_strcmp_PARM_2
      00097B F8               [12] 2357 	mov	r0,a
      00097C E4               [12] 2358 	clr	a
      00097D 35 3E            [12] 2359 	addc	a,(_HELPER_strcmp_PARM_2 + 1)
      00097F F9               [12] 2360 	mov	r1,a
      000980 AA 3F            [24] 2361 	mov	r2,(_HELPER_strcmp_PARM_2 + 2)
      000982 88 82            [24] 2362 	mov	dpl,r0
      000984 89 83            [24] 2363 	mov	dph,r1
      000986 8A F0            [24] 2364 	mov	b,r2
      000988 12 1C F2         [24] 2365 	lcall	__gptrget
      00098B F8               [12] 2366 	mov	r0,a
      00098C EB               [12] 2367 	mov	a,r3
      00098D B5 00 02         [24] 2368 	cjne	a,ar0,00123$
      000990 80 04            [24] 2369 	sjmp	00103$
      000992                       2370 00123$:
                                   2371 ;	fat.h:115: else return 1;
      000992 75 82 01         [24] 2372 	mov	dpl,#0x01
      000995 22               [24] 2373 	ret
      000996                       2374 00103$:
                                   2375 ;	fat.h:117: if(s1[i]==0) return 0;
      000996 EB               [12] 2376 	mov	a,r3
      000997 70 03            [24] 2377 	jnz	00105$
      000999 F5 82            [12] 2378 	mov	dpl,a
      00099B 22               [24] 2379 	ret
      00099C                       2380 00105$:
                                   2381 ;	fat.h:118: i++;
      00099C 0C               [12] 2382 	inc	r4
                                   2383 ;	fat.h:120: }
      00099D 80 C7            [24] 2384 	sjmp	00107$
                                   2385 ;------------------------------------------------------------
                                   2386 ;Allocation info for local variables in function 'HELPER_strncmp'
                                   2387 ;------------------------------------------------------------
                                   2388 ;s2                        Allocated with name '_HELPER_strncmp_PARM_2'
                                   2389 ;n                         Allocated with name '_HELPER_strncmp_PARM_3'
                                   2390 ;s1                        Allocated to registers r5 r6 r7 
                                   2391 ;i                         Allocated to registers r4 
                                   2392 ;------------------------------------------------------------
                                   2393 ;	fat.h:122: uint8_t HELPER_strncmp(char *s1,char* s2,uint8_t n)
                                   2394 ;	-----------------------------------------
                                   2395 ;	 function HELPER_strncmp
                                   2396 ;	-----------------------------------------
      00099F                       2397 _HELPER_strncmp:
      00099F AD 82            [24] 2398 	mov	r5,dpl
      0009A1 AE 83            [24] 2399 	mov	r6,dph
      0009A3 AF F0            [24] 2400 	mov	r7,b
                                   2401 ;	fat.h:125: while(1)
      0009A5 7C 00            [12] 2402 	mov	r4,#0x00
      0009A7                       2403 00109$:
                                   2404 ;	fat.h:127: if(i==n) return 0; //done - successful
      0009A7 EC               [12] 2405 	mov	a,r4
      0009A8 B5 40 04         [24] 2406 	cjne	a,_HELPER_strncmp_PARM_3,00102$
      0009AB 75 82 00         [24] 2407 	mov	dpl,#0x00
      0009AE 22               [24] 2408 	ret
      0009AF                       2409 00102$:
                                   2410 ;	fat.h:129: if(s1[i]==s2[i]);
      0009AF EC               [12] 2411 	mov	a,r4
      0009B0 2D               [12] 2412 	add	a,r5
      0009B1 F9               [12] 2413 	mov	r1,a
      0009B2 E4               [12] 2414 	clr	a
      0009B3 3E               [12] 2415 	addc	a,r6
      0009B4 FA               [12] 2416 	mov	r2,a
      0009B5 8F 03            [24] 2417 	mov	ar3,r7
      0009B7 89 82            [24] 2418 	mov	dpl,r1
      0009B9 8A 83            [24] 2419 	mov	dph,r2
      0009BB 8B F0            [24] 2420 	mov	b,r3
      0009BD 12 1C F2         [24] 2421 	lcall	__gptrget
      0009C0 FB               [12] 2422 	mov	r3,a
      0009C1 EC               [12] 2423 	mov	a,r4
      0009C2 25 3D            [12] 2424 	add	a,_HELPER_strncmp_PARM_2
      0009C4 F8               [12] 2425 	mov	r0,a
      0009C5 E4               [12] 2426 	clr	a
      0009C6 35 3E            [12] 2427 	addc	a,(_HELPER_strncmp_PARM_2 + 1)
      0009C8 F9               [12] 2428 	mov	r1,a
      0009C9 AA 3F            [24] 2429 	mov	r2,(_HELPER_strncmp_PARM_2 + 2)
      0009CB 88 82            [24] 2430 	mov	dpl,r0
      0009CD 89 83            [24] 2431 	mov	dph,r1
      0009CF 8A F0            [24] 2432 	mov	b,r2
      0009D1 12 1C F2         [24] 2433 	lcall	__gptrget
      0009D4 F8               [12] 2434 	mov	r0,a
      0009D5 EB               [12] 2435 	mov	a,r3
      0009D6 B5 00 02         [24] 2436 	cjne	a,ar0,00131$
      0009D9 80 04            [24] 2437 	sjmp	00105$
      0009DB                       2438 00131$:
                                   2439 ;	fat.h:130: else return 1;
      0009DB 75 82 01         [24] 2440 	mov	dpl,#0x01
      0009DE 22               [24] 2441 	ret
      0009DF                       2442 00105$:
                                   2443 ;	fat.h:132: if(s1[i]==0) return 0; //if string length < n, return success as well as we donot want to compare more
      0009DF EB               [12] 2444 	mov	a,r3
      0009E0 70 03            [24] 2445 	jnz	00107$
      0009E2 F5 82            [12] 2446 	mov	dpl,a
      0009E4 22               [24] 2447 	ret
      0009E5                       2448 00107$:
                                   2449 ;	fat.h:133: i++;
      0009E5 0C               [12] 2450 	inc	r4
                                   2451 ;	fat.h:135: }
      0009E6 80 BF            [24] 2452 	sjmp	00109$
                                   2453 ;------------------------------------------------------------
                                   2454 ;Allocation info for local variables in function 'HELPER_strlen'
                                   2455 ;------------------------------------------------------------
                                   2456 ;s                         Allocated to registers r5 r6 r7 
                                   2457 ;i                         Allocated to registers r4 
                                   2458 ;------------------------------------------------------------
                                   2459 ;	fat.h:137: uint8_t HELPER_strlen(char *s)
                                   2460 ;	-----------------------------------------
                                   2461 ;	 function HELPER_strlen
                                   2462 ;	-----------------------------------------
      0009E8                       2463 _HELPER_strlen:
      0009E8 AD 82            [24] 2464 	mov	r5,dpl
      0009EA AE 83            [24] 2465 	mov	r6,dph
      0009EC AF F0            [24] 2466 	mov	r7,b
                                   2467 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      0009EE 7C 00            [12] 2468 	mov	r4,#0x00
      0009F0 7B 00            [12] 2469 	mov	r3,#0x00
      0009F2                       2470 00105$:
      0009F2 BB FF 00         [24] 2471 	cjne	r3,#0xff,00121$
      0009F5                       2472 00121$:
      0009F5 50 1B            [24] 2473 	jnc	00103$
                                   2474 ;	fat.h:141: if(s[i]==0) return i;
      0009F7 EB               [12] 2475 	mov	a,r3
      0009F8 2D               [12] 2476 	add	a,r5
      0009F9 F8               [12] 2477 	mov	r0,a
      0009FA E4               [12] 2478 	clr	a
      0009FB 3E               [12] 2479 	addc	a,r6
      0009FC F9               [12] 2480 	mov	r1,a
      0009FD 8F 02            [24] 2481 	mov	ar2,r7
      0009FF 88 82            [24] 2482 	mov	dpl,r0
      000A01 89 83            [24] 2483 	mov	dph,r1
      000A03 8A F0            [24] 2484 	mov	b,r2
      000A05 12 1C F2         [24] 2485 	lcall	__gptrget
      000A08 70 03            [24] 2486 	jnz	00106$
      000A0A 8C 82            [24] 2487 	mov	dpl,r4
      000A0C 22               [24] 2488 	ret
      000A0D                       2489 00106$:
                                   2490 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      000A0D 0B               [12] 2491 	inc	r3
      000A0E 8B 04            [24] 2492 	mov	ar4,r3
      000A10 80 E0            [24] 2493 	sjmp	00105$
      000A12                       2494 00103$:
                                   2495 ;	fat.h:144: return 255;
      000A12 75 82 FF         [24] 2496 	mov	dpl,#0xff
                                   2497 ;	fat.h:145: }
      000A15 22               [24] 2498 	ret
                                   2499 ;------------------------------------------------------------
                                   2500 ;Allocation info for local variables in function 'HELPER_rootentry_type'
                                   2501 ;------------------------------------------------------------
                                   2502 ;re                        Allocated to registers r5 r6 r7 
                                   2503 ;------------------------------------------------------------
                                   2504 ;	fat.h:147: uint8_t HELPER_rootentry_type(ROOTENTRY *re)
                                   2505 ;	-----------------------------------------
                                   2506 ;	 function HELPER_rootentry_type
                                   2507 ;	-----------------------------------------
      000A16                       2508 _HELPER_rootentry_type:
      000A16 AD 82            [24] 2509 	mov	r5,dpl
      000A18 AE 83            [24] 2510 	mov	r6,dph
      000A1A AF F0            [24] 2511 	mov	r7,b
                                   2512 ;	fat.h:149: if(re->attributes & 1<<FILETYPE_HIDDEN) return FILETYPE_HIDDEN; //directory entry
      000A1C 74 0B            [12] 2513 	mov	a,#0x0b
      000A1E 2D               [12] 2514 	add	a,r5
      000A1F FA               [12] 2515 	mov	r2,a
      000A20 E4               [12] 2516 	clr	a
      000A21 3E               [12] 2517 	addc	a,r6
      000A22 FB               [12] 2518 	mov	r3,a
      000A23 8F 04            [24] 2519 	mov	ar4,r7
      000A25 8A 82            [24] 2520 	mov	dpl,r2
      000A27 8B 83            [24] 2521 	mov	dph,r3
      000A29 8C F0            [24] 2522 	mov	b,r4
      000A2B 12 1C F2         [24] 2523 	lcall	__gptrget
      000A2E FC               [12] 2524 	mov	r4,a
      000A2F 30 E1 04         [24] 2525 	jnb	acc.1,00102$
      000A32 75 82 01         [24] 2526 	mov	dpl,#0x01
      000A35 22               [24] 2527 	ret
      000A36                       2528 00102$:
                                   2529 ;	fat.h:150: if(re->attributes & 1<<FILETYPE_SYSTEM) return FILETYPE_SYSTEM; //directory entry
      000A36 EC               [12] 2530 	mov	a,r4
      000A37 30 E2 04         [24] 2531 	jnb	acc.2,00104$
      000A3A 75 82 02         [24] 2532 	mov	dpl,#0x02
      000A3D 22               [24] 2533 	ret
      000A3E                       2534 00104$:
                                   2535 ;	fat.h:151: if(re->attributes & 1<<FILETYPE_VOLUME) return FILETYPE_VOLUME; //directory entry
      000A3E EC               [12] 2536 	mov	a,r4
      000A3F 30 E3 04         [24] 2537 	jnb	acc.3,00106$
      000A42 75 82 03         [24] 2538 	mov	dpl,#0x03
      000A45 22               [24] 2539 	ret
      000A46                       2540 00106$:
                                   2541 ;	fat.h:153: if(re->startCluster==0) return FILETYPE_NOFILE; //no file
      000A46 74 0C            [12] 2542 	mov	a,#0x0c
      000A48 2D               [12] 2543 	add	a,r5
      000A49 FA               [12] 2544 	mov	r2,a
      000A4A E4               [12] 2545 	clr	a
      000A4B 3E               [12] 2546 	addc	a,r6
      000A4C FB               [12] 2547 	mov	r3,a
      000A4D 8F 04            [24] 2548 	mov	ar4,r7
      000A4F 8A 82            [24] 2549 	mov	dpl,r2
      000A51 8B 83            [24] 2550 	mov	dph,r3
      000A53 8C F0            [24] 2551 	mov	b,r4
      000A55 12 1C F2         [24] 2552 	lcall	__gptrget
      000A58 FA               [12] 2553 	mov	r2,a
      000A59 A3               [24] 2554 	inc	dptr
      000A5A 12 1C F2         [24] 2555 	lcall	__gptrget
      000A5D 4A               [12] 2556 	orl	a,r2
      000A5E 70 04            [24] 2557 	jnz	00111$
      000A60 75 82 FF         [24] 2558 	mov	dpl,#0xff
      000A63 22               [24] 2559 	ret
      000A64                       2560 00111$:
                                   2561 ;	fat.h:154: else if(re->size==0) return FILETYPE_EMPTYFILE; //empty file
      000A64 74 0E            [12] 2562 	mov	a,#0x0e
      000A66 2D               [12] 2563 	add	a,r5
      000A67 FD               [12] 2564 	mov	r5,a
      000A68 E4               [12] 2565 	clr	a
      000A69 3E               [12] 2566 	addc	a,r6
      000A6A FE               [12] 2567 	mov	r6,a
      000A6B 8D 82            [24] 2568 	mov	dpl,r5
      000A6D 8E 83            [24] 2569 	mov	dph,r6
      000A6F 8F F0            [24] 2570 	mov	b,r7
      000A71 12 1C F2         [24] 2571 	lcall	__gptrget
      000A74 FD               [12] 2572 	mov	r5,a
      000A75 A3               [24] 2573 	inc	dptr
      000A76 12 1C F2         [24] 2574 	lcall	__gptrget
      000A79 FE               [12] 2575 	mov	r6,a
      000A7A A3               [24] 2576 	inc	dptr
      000A7B 12 1C F2         [24] 2577 	lcall	__gptrget
      000A7E FF               [12] 2578 	mov	r7,a
      000A7F A3               [24] 2579 	inc	dptr
      000A80 12 1C F2         [24] 2580 	lcall	__gptrget
      000A83 FC               [12] 2581 	mov	r4,a
      000A84 ED               [12] 2582 	mov	a,r5
      000A85 4E               [12] 2583 	orl	a,r6
      000A86 4F               [12] 2584 	orl	a,r7
      000A87 4C               [12] 2585 	orl	a,r4
      000A88 70 04            [24] 2586 	jnz	00108$
      000A8A 75 82 FE         [24] 2587 	mov	dpl,#0xfe
      000A8D 22               [24] 2588 	ret
      000A8E                       2589 00108$:
                                   2590 ;	fat.h:155: else return 0; // valid non-empty file
      000A8E 75 82 00         [24] 2591 	mov	dpl,#0x00
                                   2592 ;	fat.h:157: }
      000A91 22               [24] 2593 	ret
                                   2594 ;------------------------------------------------------------
                                   2595 ;Allocation info for local variables in function 'HELPER_to_uppercase'
                                   2596 ;------------------------------------------------------------
                                   2597 ;s                         Allocated to registers r5 r6 r7 
                                   2598 ;i                         Allocated to registers r4 
                                   2599 ;------------------------------------------------------------
                                   2600 ;	fat.h:162: void HELPER_to_uppercase(unsigned char *s)
                                   2601 ;	-----------------------------------------
                                   2602 ;	 function HELPER_to_uppercase
                                   2603 ;	-----------------------------------------
      000A92                       2604 _HELPER_to_uppercase:
      000A92 AD 82            [24] 2605 	mov	r5,dpl
      000A94 AE 83            [24] 2606 	mov	r6,dph
      000A96 AF F0            [24] 2607 	mov	r7,b
                                   2608 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000A98 7C 00            [12] 2609 	mov	r4,#0x00
      000A9A                       2610 00108$:
      000A9A BC FF 00         [24] 2611 	cjne	r4,#0xff,00132$
      000A9D                       2612 00132$:
      000A9D 50 2F            [24] 2613 	jnc	00110$
                                   2614 ;	fat.h:166: if(s[i]==0) return; //done
      000A9F EC               [12] 2615 	mov	a,r4
      000AA0 2D               [12] 2616 	add	a,r5
      000AA1 F9               [12] 2617 	mov	r1,a
      000AA2 E4               [12] 2618 	clr	a
      000AA3 3E               [12] 2619 	addc	a,r6
      000AA4 FA               [12] 2620 	mov	r2,a
      000AA5 8F 03            [24] 2621 	mov	ar3,r7
      000AA7 89 82            [24] 2622 	mov	dpl,r1
      000AA9 8A 83            [24] 2623 	mov	dph,r2
      000AAB 8B F0            [24] 2624 	mov	b,r3
      000AAD 12 1C F2         [24] 2625 	lcall	__gptrget
      000AB0 F8               [12] 2626 	mov	r0,a
      000AB1 70 01            [24] 2627 	jnz	00102$
      000AB3 22               [24] 2628 	ret
      000AB4                       2629 00102$:
                                   2630 ;	fat.h:167: if('a'<=s[i] && s[i]<='z') s[i] = s[i] - 32;
      000AB4 B8 61 00         [24] 2631 	cjne	r0,#0x61,00135$
      000AB7                       2632 00135$:
      000AB7 40 12            [24] 2633 	jc	00109$
      000AB9 E8               [12] 2634 	mov	a,r0
      000ABA 24 85            [12] 2635 	add	a,#0xff - 0x7a
      000ABC 40 0D            [24] 2636 	jc	00109$
      000ABE E8               [12] 2637 	mov	a,r0
      000ABF 24 E0            [12] 2638 	add	a,#0xe0
      000AC1 F8               [12] 2639 	mov	r0,a
      000AC2 89 82            [24] 2640 	mov	dpl,r1
      000AC4 8A 83            [24] 2641 	mov	dph,r2
      000AC6 8B F0            [24] 2642 	mov	b,r3
      000AC8 12 1B FF         [24] 2643 	lcall	__gptrput
      000ACB                       2644 00109$:
                                   2645 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000ACB 0C               [12] 2646 	inc	r4
      000ACC 80 CC            [24] 2647 	sjmp	00108$
      000ACE                       2648 00110$:
                                   2649 ;	fat.h:169: }
      000ACE 22               [24] 2650 	ret
                                   2651 ;------------------------------------------------------------
                                   2652 ;Allocation info for local variables in function 'HELPER_filename_to_8dot3filename'
                                   2653 ;------------------------------------------------------------
                                   2654 ;fname83                   Allocated with name '_HELPER_filename_to_8dot3filename_PARM_2'
                                   2655 ;fname                     Allocated with name '_HELPER_filename_to_8dot3filename_fname_65536_120'
                                   2656 ;index                     Allocated to registers r4 
                                   2657 ;i                         Allocated to registers r4 
                                   2658 ;i                         Allocated with name '_HELPER_filename_to_8dot3filename_i_131072_126'
                                   2659 ;------------------------------------------------------------
                                   2660 ;	fat.h:172: uint8_t HELPER_filename_to_8dot3filename( char *fname,  char *fname83)
                                   2661 ;	-----------------------------------------
                                   2662 ;	 function HELPER_filename_to_8dot3filename
                                   2663 ;	-----------------------------------------
      000ACF                       2664 _HELPER_filename_to_8dot3filename:
                                   2665 ;	fat.h:177: HELPER_to_uppercase(fname);
      000ACF 85 82 1B         [24] 2666 	mov	_HELPER_filename_to_8dot3filename_fname_65536_120,dpl
      000AD2 85 83 1C         [24] 2667 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1),dph
      000AD5 85 F0 1D         [24] 2668 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2),b
      000AD8 12 0A 92         [24] 2669 	lcall	_HELPER_to_uppercase
                                   2670 ;	fat.h:185: for(uint8_t i=0;i<11;i++) fname83[i]=' '; //default fill by empty space
      000ADB 7C 00            [12] 2671 	mov	r4,#0x00
      000ADD                       2672 00120$:
      000ADD BC 0B 00         [24] 2673 	cjne	r4,#0x0b,00178$
      000AE0                       2674 00178$:
      000AE0 50 18            [24] 2675 	jnc	00101$
      000AE2 EC               [12] 2676 	mov	a,r4
      000AE3 25 18            [12] 2677 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000AE5 F9               [12] 2678 	mov	r1,a
      000AE6 E4               [12] 2679 	clr	a
      000AE7 35 19            [12] 2680 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000AE9 FA               [12] 2681 	mov	r2,a
      000AEA AB 1A            [24] 2682 	mov	r3,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000AEC 89 82            [24] 2683 	mov	dpl,r1
      000AEE 8A 83            [24] 2684 	mov	dph,r2
      000AF0 8B F0            [24] 2685 	mov	b,r3
      000AF2 74 20            [12] 2686 	mov	a,#0x20
      000AF4 12 1B FF         [24] 2687 	lcall	__gptrput
      000AF7 0C               [12] 2688 	inc	r4
      000AF8 80 E3            [24] 2689 	sjmp	00120$
      000AFA                       2690 00101$:
                                   2691 ;	fat.h:186: fname83[11]=0; //set last character as 0;
      000AFA 74 0B            [12] 2692 	mov	a,#0x0b
      000AFC 25 18            [12] 2693 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000AFE FA               [12] 2694 	mov	r2,a
      000AFF E4               [12] 2695 	clr	a
      000B00 35 19            [12] 2696 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B02 FB               [12] 2697 	mov	r3,a
      000B03 AC 1A            [24] 2698 	mov	r4,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B05 8A 82            [24] 2699 	mov	dpl,r2
      000B07 8B 83            [24] 2700 	mov	dph,r3
      000B09 8C F0            [24] 2701 	mov	b,r4
      000B0B E4               [12] 2702 	clr	a
      000B0C 12 1B FF         [24] 2703 	lcall	__gptrput
                                   2704 ;	fat.h:189: for(index=0;index<9;index++)
      000B0F 7C 00            [12] 2705 	mov	r4,#0x00
      000B11 7B 00            [12] 2706 	mov	r3,#0x00
      000B13                       2707 00122$:
                                   2708 ;	fat.h:192: if(index==8 && fname[index]!='.') 
      000B13 BB 08 1D         [24] 2709 	cjne	r3,#0x08,00103$
      000B16 EB               [12] 2710 	mov	a,r3
      000B17 25 1B            [12] 2711 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B19 F8               [12] 2712 	mov	r0,a
      000B1A E4               [12] 2713 	clr	a
      000B1B 35 1C            [12] 2714 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B1D F9               [12] 2715 	mov	r1,a
      000B1E AA 1D            [24] 2716 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B20 88 82            [24] 2717 	mov	dpl,r0
      000B22 89 83            [24] 2718 	mov	dph,r1
      000B24 8A F0            [24] 2719 	mov	b,r2
      000B26 12 1C F2         [24] 2720 	lcall	__gptrget
      000B29 F8               [12] 2721 	mov	r0,a
      000B2A B8 2E 02         [24] 2722 	cjne	r0,#0x2e,00182$
      000B2D 80 04            [24] 2723 	sjmp	00103$
      000B2F                       2724 00182$:
                                   2725 ;	fat.h:197: return 1; //error - invalid filename as dot not found till 9th charcter
      000B2F 75 82 01         [24] 2726 	mov	dpl,#0x01
      000B32 22               [24] 2727 	ret
      000B33                       2728 00103$:
                                   2729 ;	fat.h:200: if(fname[index]==0) return 0; // success - we reached the end of the filename string before the dot character - filename has no extension
      000B33 EB               [12] 2730 	mov	a,r3
      000B34 25 1B            [12] 2731 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B36 F8               [12] 2732 	mov	r0,a
      000B37 E4               [12] 2733 	clr	a
      000B38 35 1C            [12] 2734 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B3A F9               [12] 2735 	mov	r1,a
      000B3B AA 1D            [24] 2736 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B3D 88 82            [24] 2737 	mov	dpl,r0
      000B3F 89 83            [24] 2738 	mov	dph,r1
      000B41 8A F0            [24] 2739 	mov	b,r2
      000B43 12 1C F2         [24] 2740 	lcall	__gptrget
      000B46 FA               [12] 2741 	mov	r2,a
      000B47 70 03            [24] 2742 	jnz	00109$
      000B49 F5 82            [12] 2743 	mov	dpl,a
      000B4B 22               [24] 2744 	ret
      000B4C                       2745 00109$:
                                   2746 ;	fat.h:201: else if(fname[index]=='.') break; //found the dot, break the for loop
      000B4C BA 2E 02         [24] 2747 	cjne	r2,#0x2e,00184$
      000B4F 80 1C            [24] 2748 	sjmp	00140$
      000B51                       2749 00184$:
                                   2750 ;	fat.h:202: else fname83[index]=fname[index];
      000B51 EB               [12] 2751 	mov	a,r3
      000B52 25 18            [12] 2752 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B54 F8               [12] 2753 	mov	r0,a
      000B55 E4               [12] 2754 	clr	a
      000B56 35 19            [12] 2755 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B58 F9               [12] 2756 	mov	r1,a
      000B59 AF 1A            [24] 2757 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B5B 88 82            [24] 2758 	mov	dpl,r0
      000B5D 89 83            [24] 2759 	mov	dph,r1
      000B5F 8F F0            [24] 2760 	mov	b,r7
      000B61 EA               [12] 2761 	mov	a,r2
      000B62 12 1B FF         [24] 2762 	lcall	__gptrput
                                   2763 ;	fat.h:189: for(index=0;index<9;index++)
      000B65 0B               [12] 2764 	inc	r3
      000B66 8B 04            [24] 2765 	mov	ar4,r3
      000B68 BB 09 00         [24] 2766 	cjne	r3,#0x09,00185$
      000B6B                       2767 00185$:
      000B6B 40 A6            [24] 2768 	jc	00122$
                                   2769 ;	fat.h:205: for(uint8_t i=0;i<4;i++)
      000B6D                       2770 00140$:
      000B6D 75 1E 00         [24] 2771 	mov	_HELPER_filename_to_8dot3filename_i_131072_126,#0x00
      000B70                       2772 00125$:
      000B70 74 FC            [12] 2773 	mov	a,#0x100 - 0x04
      000B72 25 1E            [12] 2774 	add	a,_HELPER_filename_to_8dot3filename_i_131072_126
      000B74 50 03            [24] 2775 	jnc	00187$
      000B76 02 0C 13         [24] 2776 	ljmp	00118$
      000B79                       2777 00187$:
                                   2778 ;	fat.h:207: if(i==3 && fname[index+i+1]!=0) 
      000B79 74 03            [12] 2779 	mov	a,#0x03
      000B7B B5 1E 2C         [24] 2780 	cjne	a,_HELPER_filename_to_8dot3filename_i_131072_126,00113$
      000B7E 8C 05            [24] 2781 	mov	ar5,r4
      000B80 7E 00            [12] 2782 	mov	r6,#0x00
      000B82 AA 1E            [24] 2783 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_126
      000B84 7B 00            [12] 2784 	mov	r3,#0x00
      000B86 EA               [12] 2785 	mov	a,r2
      000B87 2D               [12] 2786 	add	a,r5
      000B88 FD               [12] 2787 	mov	r5,a
      000B89 EB               [12] 2788 	mov	a,r3
      000B8A 3E               [12] 2789 	addc	a,r6
      000B8B FE               [12] 2790 	mov	r6,a
      000B8C 0D               [12] 2791 	inc	r5
      000B8D BD 00 01         [24] 2792 	cjne	r5,#0x00,00190$
      000B90 0E               [12] 2793 	inc	r6
      000B91                       2794 00190$:
      000B91 ED               [12] 2795 	mov	a,r5
      000B92 25 1B            [12] 2796 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B94 FD               [12] 2797 	mov	r5,a
      000B95 EE               [12] 2798 	mov	a,r6
      000B96 35 1C            [12] 2799 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B98 FE               [12] 2800 	mov	r6,a
      000B99 AB 1D            [24] 2801 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B9B 8D 82            [24] 2802 	mov	dpl,r5
      000B9D 8E 83            [24] 2803 	mov	dph,r6
      000B9F 8B F0            [24] 2804 	mov	b,r3
      000BA1 12 1C F2         [24] 2805 	lcall	__gptrget
      000BA4 60 04            [24] 2806 	jz	00113$
                                   2807 ;	fat.h:212: return 2; // error - extension has more than 3 characters
      000BA6 75 82 02         [24] 2808 	mov	dpl,#0x02
      000BA9 22               [24] 2809 	ret
      000BAA                       2810 00113$:
                                   2811 ;	fat.h:216: if(fname[index+i+1]==0) 
      000BAA 8C 05            [24] 2812 	mov	ar5,r4
      000BAC 7E 00            [12] 2813 	mov	r6,#0x00
      000BAE AA 1E            [24] 2814 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_126
      000BB0 7B 00            [12] 2815 	mov	r3,#0x00
      000BB2 EA               [12] 2816 	mov	a,r2
      000BB3 2D               [12] 2817 	add	a,r5
      000BB4 F8               [12] 2818 	mov	r0,a
      000BB5 EB               [12] 2819 	mov	a,r3
      000BB6 3E               [12] 2820 	addc	a,r6
      000BB7 F9               [12] 2821 	mov	r1,a
      000BB8 08               [12] 2822 	inc	r0
      000BB9 B8 00 01         [24] 2823 	cjne	r0,#0x00,00192$
      000BBC 09               [12] 2824 	inc	r1
      000BBD                       2825 00192$:
      000BBD E8               [12] 2826 	mov	a,r0
      000BBE 25 1B            [12] 2827 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000BC0 F8               [12] 2828 	mov	r0,a
      000BC1 E9               [12] 2829 	mov	a,r1
      000BC2 35 1C            [12] 2830 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000BC4 F9               [12] 2831 	mov	r1,a
      000BC5 AF 1D            [24] 2832 	mov	r7,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000BC7 88 82            [24] 2833 	mov	dpl,r0
      000BC9 89 83            [24] 2834 	mov	dph,r1
      000BCB 8F F0            [24] 2835 	mov	b,r7
      000BCD 12 1C F2         [24] 2836 	lcall	__gptrget
                                   2837 ;	fat.h:225: return 0; 
      000BD0 70 03            [24] 2838 	jnz	00116$
      000BD2 F5 82            [12] 2839 	mov	dpl,a
      000BD4 22               [24] 2840 	ret
      000BD5                       2841 00116$:
                                   2842 ;	fat.h:227: else fname83[8+i]=fname[index+i+1]; // in a valid fname, there is just an extra dot in fname than in fname83
      000BD5 74 08            [12] 2843 	mov	a,#0x08
      000BD7 2A               [12] 2844 	add	a,r2
      000BD8 F9               [12] 2845 	mov	r1,a
      000BD9 E4               [12] 2846 	clr	a
      000BDA 3B               [12] 2847 	addc	a,r3
      000BDB FF               [12] 2848 	mov	r7,a
      000BDC E9               [12] 2849 	mov	a,r1
      000BDD 25 18            [12] 2850 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000BDF F9               [12] 2851 	mov	r1,a
      000BE0 EF               [12] 2852 	mov	a,r7
      000BE1 35 19            [12] 2853 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000BE3 F8               [12] 2854 	mov	r0,a
      000BE4 AF 1A            [24] 2855 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000BE6 EA               [12] 2856 	mov	a,r2
      000BE7 2D               [12] 2857 	add	a,r5
      000BE8 FD               [12] 2858 	mov	r5,a
      000BE9 EB               [12] 2859 	mov	a,r3
      000BEA 3E               [12] 2860 	addc	a,r6
      000BEB FE               [12] 2861 	mov	r6,a
      000BEC 0D               [12] 2862 	inc	r5
      000BED BD 00 01         [24] 2863 	cjne	r5,#0x00,00194$
      000BF0 0E               [12] 2864 	inc	r6
      000BF1                       2865 00194$:
      000BF1 ED               [12] 2866 	mov	a,r5
      000BF2 25 1B            [12] 2867 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000BF4 FD               [12] 2868 	mov	r5,a
      000BF5 EE               [12] 2869 	mov	a,r6
      000BF6 35 1C            [12] 2870 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000BF8 FE               [12] 2871 	mov	r6,a
      000BF9 AB 1D            [24] 2872 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000BFB 8D 82            [24] 2873 	mov	dpl,r5
      000BFD 8E 83            [24] 2874 	mov	dph,r6
      000BFF 8B F0            [24] 2875 	mov	b,r3
      000C01 12 1C F2         [24] 2876 	lcall	__gptrget
      000C04 FD               [12] 2877 	mov	r5,a
      000C05 89 82            [24] 2878 	mov	dpl,r1
      000C07 88 83            [24] 2879 	mov	dph,r0
      000C09 8F F0            [24] 2880 	mov	b,r7
      000C0B 12 1B FF         [24] 2881 	lcall	__gptrput
                                   2882 ;	fat.h:205: for(uint8_t i=0;i<4;i++)
      000C0E 05 1E            [12] 2883 	inc	_HELPER_filename_to_8dot3filename_i_131072_126
      000C10 02 0B 70         [24] 2884 	ljmp	00125$
      000C13                       2885 00118$:
                                   2886 ;	fat.h:230: return 3;// if reached here, then it is an error
      000C13 75 82 03         [24] 2887 	mov	dpl,#0x03
                                   2888 ;	fat.h:231: }
      000C16 22               [24] 2889 	ret
                                   2890 ;------------------------------------------------------------
                                   2891 ;Allocation info for local variables in function 'MBR_CHECK__SIGNATURE'
                                   2892 ;------------------------------------------------------------
                                   2893 ;signature                 Allocated to stack - _bp +1
                                   2894 ;------------------------------------------------------------
                                   2895 ;	fat.h:245: uint8_t MBR_CHECK__SIGNATURE() __reentrant
                                   2896 ;	-----------------------------------------
                                   2897 ;	 function MBR_CHECK__SIGNATURE
                                   2898 ;	-----------------------------------------
      000C17                       2899 _MBR_CHECK__SIGNATURE:
      000C17 C0 3C            [24] 2900 	push	_bp
      000C19 85 81 3C         [24] 2901 	mov	_bp,sp
      000C1C 05 81            [12] 2902 	inc	sp
      000C1E 05 81            [12] 2903 	inc	sp
                                   2904 ;	fat.h:248: SDread(0,510,2,signature);
      000C20 A9 3C            [24] 2905 	mov	r1,_bp
      000C22 09               [12] 2906 	inc	r1
      000C23 89 05            [24] 2907 	mov	ar5,r1
      000C25 7E 00            [12] 2908 	mov	r6,#0x00
      000C27 7F 40            [12] 2909 	mov	r7,#0x40
      000C29 C0 01            [24] 2910 	push	ar1
      000C2B C0 05            [24] 2911 	push	ar5
      000C2D C0 06            [24] 2912 	push	ar6
      000C2F C0 07            [24] 2913 	push	ar7
      000C31 74 02            [12] 2914 	mov	a,#0x02
      000C33 C0 E0            [24] 2915 	push	acc
      000C35 E4               [12] 2916 	clr	a
      000C36 C0 E0            [24] 2917 	push	acc
      000C38 74 FE            [12] 2918 	mov	a,#0xfe
      000C3A C0 E0            [24] 2919 	push	acc
      000C3C F4               [12] 2920 	cpl	a
      000C3D C0 E0            [24] 2921 	push	acc
      000C3F 90 00 00         [24] 2922 	mov	dptr,#(0x00&0x00ff)
      000C42 E4               [12] 2923 	clr	a
      000C43 F5 F0            [12] 2924 	mov	b,a
      000C45 12 07 47         [24] 2925 	lcall	_SDread
      000C48 E5 81            [12] 2926 	mov	a,sp
      000C4A 24 F9            [12] 2927 	add	a,#0xf9
      000C4C F5 81            [12] 2928 	mov	sp,a
      000C4E D0 01            [24] 2929 	pop	ar1
                                   2930 ;	fat.h:257: if(signature[0]==0x55 && signature[1]==0xAA) return 0;
      000C50 87 07            [24] 2931 	mov	ar7,@r1
      000C52 BF 55 0B         [24] 2932 	cjne	r7,#0x55,00102$
      000C55 09               [12] 2933 	inc	r1
      000C56 87 07            [24] 2934 	mov	ar7,@r1
      000C58 BF AA 05         [24] 2935 	cjne	r7,#0xaa,00102$
      000C5B 75 82 00         [24] 2936 	mov	dpl,#0x00
      000C5E 80 03            [24] 2937 	sjmp	00105$
      000C60                       2938 00102$:
                                   2939 ;	fat.h:258: else return 1;
      000C60 75 82 01         [24] 2940 	mov	dpl,#0x01
      000C63                       2941 00105$:
                                   2942 ;	fat.h:259: }
      000C63 85 3C 81         [24] 2943 	mov	sp,_bp
      000C66 D0 3C            [24] 2944 	pop	_bp
      000C68 22               [24] 2945 	ret
                                   2946 ;------------------------------------------------------------
                                   2947 ;Allocation info for local variables in function 'MBR_LOAD_PARTITION_TABLE_ENTRY'
                                   2948 ;------------------------------------------------------------
                                   2949 ;partition_number          Allocated to registers r7 
                                   2950 ;temp                      Allocated with name '_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132'
                                   2951 ;offset                    Allocated to registers r5 r6 
                                   2952 ;------------------------------------------------------------
                                   2953 ;	fat.h:261: uint8_t MBR_LOAD_PARTITION_TABLE_ENTRY(uint8_t partition_number)
                                   2954 ;	-----------------------------------------
                                   2955 ;	 function MBR_LOAD_PARTITION_TABLE_ENTRY
                                   2956 ;	-----------------------------------------
      000C69                       2957 _MBR_LOAD_PARTITION_TABLE_ENTRY:
      000C69 AF 82            [24] 2958 	mov	r7,dpl
                                   2959 ;	fat.h:264: __idata uint16_t offset= 446 + partition_number*16; // get to the nth partition entry out of 0,1,2,3
      000C6B 8F 05            [24] 2960 	mov	ar5,r7
      000C6D E4               [12] 2961 	clr	a
      000C6E CD               [12] 2962 	xch	a,r5
      000C6F C4               [12] 2963 	swap	a
      000C70 CD               [12] 2964 	xch	a,r5
      000C71 6D               [12] 2965 	xrl	a,r5
      000C72 CD               [12] 2966 	xch	a,r5
      000C73 54 F0            [12] 2967 	anl	a,#0xf0
      000C75 CD               [12] 2968 	xch	a,r5
      000C76 6D               [12] 2969 	xrl	a,r5
      000C77 FE               [12] 2970 	mov	r6,a
      000C78 74 BE            [12] 2971 	mov	a,#0xbe
      000C7A 2D               [12] 2972 	add	a,r5
      000C7B FD               [12] 2973 	mov	r5,a
      000C7C 74 01            [12] 2974 	mov	a,#0x01
      000C7E 3E               [12] 2975 	addc	a,r6
      000C7F FE               [12] 2976 	mov	r6,a
                                   2977 ;	fat.h:266: if(partition_number>4) 
      000C80 EF               [12] 2978 	mov	a,r7
      000C81 24 FB            [12] 2979 	add	a,#0xff - 0x04
      000C83 50 04            [24] 2980 	jnc	00102$
                                   2981 ;	fat.h:273: return 1; //error
      000C85 75 82 01         [24] 2982 	mov	dpl,#0x01
      000C88 22               [24] 2983 	ret
      000C89                       2984 00102$:
                                   2985 ;	fat.h:276: SDread(0,offset,16,temp);
      000C89 74 82            [12] 2986 	mov	a,#_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132
      000C8B C0 E0            [24] 2987 	push	acc
      000C8D 74 00            [12] 2988 	mov	a,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 >> 8)
      000C8F C0 E0            [24] 2989 	push	acc
      000C91 74 40            [12] 2990 	mov	a,#0x40
      000C93 C0 E0            [24] 2991 	push	acc
      000C95 74 10            [12] 2992 	mov	a,#0x10
      000C97 C0 E0            [24] 2993 	push	acc
      000C99 E4               [12] 2994 	clr	a
      000C9A C0 E0            [24] 2995 	push	acc
      000C9C C0 05            [24] 2996 	push	ar5
      000C9E C0 06            [24] 2997 	push	ar6
      000CA0 90 00 00         [24] 2998 	mov	dptr,#(0x00&0x00ff)
      000CA3 E4               [12] 2999 	clr	a
      000CA4 F5 F0            [12] 3000 	mov	b,a
      000CA6 12 07 47         [24] 3001 	lcall	_SDread
      000CA9 E5 81            [12] 3002 	mov	a,sp
      000CAB 24 F9            [12] 3003 	add	a,#0xf9
      000CAD F5 81            [12] 3004 	mov	sp,a
                                   3005 ;	fat.h:278: __global_partitionTableEntry.type = temp[4]; // type offset is 4
      000CAF 78 86            [12] 3006 	mov	r0,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x0004)
      000CB1 86 07            [24] 3007 	mov	ar7,@r0
      000CB3 78 41            [12] 3008 	mov	r0,#___global_partitionTableEntry
      000CB5 A6 07            [24] 3009 	mov	@r0,ar7
                                   3010 ;	fat.h:279: __global_partitionTableEntry.start=HELPER_load_littleendian32(&temp[8]); //partition start LBA offset is 8
      000CB7 90 00 8A         [24] 3011 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x0008)
      000CBA 75 F0 40         [24] 3012 	mov	b,#0x40
      000CBD 12 08 BB         [24] 3013 	lcall	_HELPER_load_littleendian32
      000CC0 AC 82            [24] 3014 	mov	r4,dpl
      000CC2 AD 83            [24] 3015 	mov	r5,dph
      000CC4 AE F0            [24] 3016 	mov	r6,b
      000CC6 FF               [12] 3017 	mov	r7,a
      000CC7 78 42            [12] 3018 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000CC9 A6 04            [24] 3019 	mov	@r0,ar4
      000CCB 08               [12] 3020 	inc	r0
      000CCC A6 05            [24] 3021 	mov	@r0,ar5
      000CCE 08               [12] 3022 	inc	r0
      000CCF A6 06            [24] 3023 	mov	@r0,ar6
      000CD1 08               [12] 3024 	inc	r0
      000CD2 A6 07            [24] 3025 	mov	@r0,ar7
                                   3026 ;	fat.h:280: __global_partitionTableEntry.size=HELPER_load_littleendian32(&temp[12]); //partiiton size offset is 12
      000CD4 90 00 8E         [24] 3027 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x000c)
      000CD7 75 F0 40         [24] 3028 	mov	b,#0x40
      000CDA 12 08 BB         [24] 3029 	lcall	_HELPER_load_littleendian32
      000CDD AC 82            [24] 3030 	mov	r4,dpl
      000CDF AD 83            [24] 3031 	mov	r5,dph
      000CE1 AE F0            [24] 3032 	mov	r6,b
      000CE3 FF               [12] 3033 	mov	r7,a
      000CE4 78 46            [12] 3034 	mov	r0,#(___global_partitionTableEntry + 0x0005)
      000CE6 A6 04            [24] 3035 	mov	@r0,ar4
      000CE8 08               [12] 3036 	inc	r0
      000CE9 A6 05            [24] 3037 	mov	@r0,ar5
      000CEB 08               [12] 3038 	inc	r0
      000CEC A6 06            [24] 3039 	mov	@r0,ar6
      000CEE 08               [12] 3040 	inc	r0
      000CEF A6 07            [24] 3041 	mov	@r0,ar7
                                   3042 ;	fat.h:282: return 0;
      000CF1 75 82 00         [24] 3043 	mov	dpl,#0x00
                                   3044 ;	fat.h:284: }
      000CF4 22               [24] 3045 	ret
                                   3046 ;------------------------------------------------------------
                                   3047 ;Allocation info for local variables in function 'MBR_DETECT_FAT16'
                                   3048 ;------------------------------------------------------------
                                   3049 ;result                    Allocated to registers r7 
                                   3050 ;i                         Allocated to registers r6 
                                   3051 ;------------------------------------------------------------
                                   3052 ;	fat.h:286: uint8_t MBR_DETECT_FAT16()
                                   3053 ;	-----------------------------------------
                                   3054 ;	 function MBR_DETECT_FAT16
                                   3055 ;	-----------------------------------------
      000CF5                       3056 _MBR_DETECT_FAT16:
                                   3057 ;	fat.h:291: uint8_t result=0;
      000CF5 7F 00            [12] 3058 	mov	r7,#0x00
                                   3059 ;	fat.h:293: for(uint8_t i=0;i<4;i++) 
      000CF7 7E 00            [12] 3060 	mov	r6,#0x00
      000CF9                       3061 00105$:
      000CF9 BE 04 00         [24] 3062 	cjne	r6,#0x04,00122$
      000CFC                       3063 00122$:
      000CFC 50 2B            [24] 3064 	jnc	00103$
                                   3065 ;	fat.h:295: MBR_LOAD_PARTITION_TABLE_ENTRY(i);
      000CFE 8E 82            [24] 3066 	mov	dpl,r6
      000D00 C0 07            [24] 3067 	push	ar7
      000D02 C0 06            [24] 3068 	push	ar6
      000D04 12 0C 69         [24] 3069 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000D07 D0 06            [24] 3070 	pop	ar6
      000D09 D0 07            [24] 3071 	pop	ar7
                                   3072 ;	fat.h:296: if(__global_partitionTableEntry.type==FAT16_PARTITION_TYPE_ID) result |= (1<<i); //set corresponding bit
      000D0B 78 41            [12] 3073 	mov	r0,#___global_partitionTableEntry
      000D0D 86 05            [24] 3074 	mov	ar5,@r0
      000D0F BD 06 14         [24] 3075 	cjne	r5,#0x06,00106$
      000D12 8E 05            [24] 3076 	mov	ar5,r6
      000D14 8D F0            [24] 3077 	mov	b,r5
      000D16 05 F0            [12] 3078 	inc	b
      000D18 74 01            [12] 3079 	mov	a,#0x01
      000D1A 80 02            [24] 3080 	sjmp	00128$
      000D1C                       3081 00126$:
      000D1C 25 E0            [12] 3082 	add	a,acc
      000D1E                       3083 00128$:
      000D1E D5 F0 FB         [24] 3084 	djnz	b,00126$
      000D21 FD               [12] 3085 	mov	r5,a
      000D22 8F 04            [24] 3086 	mov	ar4,r7
      000D24 4C               [12] 3087 	orl	a,r4
      000D25 FF               [12] 3088 	mov	r7,a
      000D26                       3089 00106$:
                                   3090 ;	fat.h:293: for(uint8_t i=0;i<4;i++) 
      000D26 0E               [12] 3091 	inc	r6
      000D27 80 D0            [24] 3092 	sjmp	00105$
      000D29                       3093 00103$:
                                   3094 ;	fat.h:305: return result;
      000D29 8F 82            [24] 3095 	mov	dpl,r7
                                   3096 ;	fat.h:306: }
      000D2B 22               [24] 3097 	ret
                                   3098 ;------------------------------------------------------------
                                   3099 ;Allocation info for local variables in function 'VBR_MOUNT_VBR'
                                   3100 ;------------------------------------------------------------
                                   3101 ;partition_number          Allocated to registers r7 
                                   3102 ;sloc0                     Allocated with name '_VBR_MOUNT_VBR_sloc0_1_0'
                                   3103 ;temp                      Allocated with name '_VBR_MOUNT_VBR_temp_65536_138'
                                   3104 ;------------------------------------------------------------
                                   3105 ;	fat.h:332: uint8_t VBR_MOUNT_VBR(uint8_t partition_number)
                                   3106 ;	-----------------------------------------
                                   3107 ;	 function VBR_MOUNT_VBR
                                   3108 ;	-----------------------------------------
      000D2C                       3109 _VBR_MOUNT_VBR:
      000D2C AF 82            [24] 3110 	mov	r7,dpl
                                   3111 ;	fat.h:338: if(__global_nthPartitionVBRmounted == partition_number ) 
      000D2E 78 69            [12] 3112 	mov	r0,#___global_nthPartitionVBRmounted
      000D30 E6               [12] 3113 	mov	a,@r0
      000D31 B5 07 04         [24] 3114 	cjne	a,ar7,00102$
                                   3115 ;	fat.h:346: return 0; //return if already loaded, else continue;
      000D34 75 82 00         [24] 3116 	mov	dpl,#0x00
      000D37 22               [24] 3117 	ret
      000D38                       3118 00102$:
                                   3119 ;	fat.h:357: __global_nthPartitionVBRmounted=partition_number; //set global variable
      000D38 78 69            [12] 3120 	mov	r0,#___global_nthPartitionVBRmounted
      000D3A A6 07            [24] 3121 	mov	@r0,ar7
                                   3122 ;	fat.h:360: if(MBR_LOAD_PARTITION_TABLE_ENTRY(partition_number))  //if error, 0 is success
      000D3C 8F 82            [24] 3123 	mov	dpl,r7
      000D3E 12 0C 69         [24] 3124 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000D41 E5 82            [12] 3125 	mov	a,dpl
      000D43 60 04            [24] 3126 	jz	00104$
                                   3127 ;	fat.h:362: return 1; //return error
      000D45 75 82 01         [24] 3128 	mov	dpl,#0x01
      000D48 22               [24] 3129 	ret
      000D49                       3130 00104$:
                                   3131 ;	fat.h:366: SDread(__global_partitionTableEntry.start,0,16,temp);
      000D49 78 42            [12] 3132 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000D4B 86 04            [24] 3133 	mov	ar4,@r0
      000D4D 08               [12] 3134 	inc	r0
      000D4E 86 05            [24] 3135 	mov	ar5,@r0
      000D50 08               [12] 3136 	inc	r0
      000D51 86 06            [24] 3137 	mov	ar6,@r0
      000D53 08               [12] 3138 	inc	r0
      000D54 86 07            [24] 3139 	mov	ar7,@r0
      000D56 74 92            [12] 3140 	mov	a,#_VBR_MOUNT_VBR_temp_65536_138
      000D58 C0 E0            [24] 3141 	push	acc
      000D5A 74 00            [12] 3142 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_138 >> 8)
      000D5C C0 E0            [24] 3143 	push	acc
      000D5E 74 40            [12] 3144 	mov	a,#0x40
      000D60 C0 E0            [24] 3145 	push	acc
      000D62 74 10            [12] 3146 	mov	a,#0x10
      000D64 C0 E0            [24] 3147 	push	acc
      000D66 E4               [12] 3148 	clr	a
      000D67 C0 E0            [24] 3149 	push	acc
      000D69 C0 E0            [24] 3150 	push	acc
      000D6B C0 E0            [24] 3151 	push	acc
      000D6D 8C 82            [24] 3152 	mov	dpl,r4
      000D6F 8D 83            [24] 3153 	mov	dph,r5
      000D71 8E F0            [24] 3154 	mov	b,r6
      000D73 EF               [12] 3155 	mov	a,r7
      000D74 12 07 47         [24] 3156 	lcall	_SDread
      000D77 E5 81            [12] 3157 	mov	a,sp
      000D79 24 F9            [12] 3158 	add	a,#0xf9
      000D7B F5 81            [12] 3159 	mov	sp,a
                                   3160 ;	fat.h:375: __global_vbr.volumeStartSector = __global_partitionTableEntry.start;
      000D7D 78 42            [12] 3161 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000D7F 86 04            [24] 3162 	mov	ar4,@r0
      000D81 08               [12] 3163 	inc	r0
      000D82 86 05            [24] 3164 	mov	ar5,@r0
      000D84 08               [12] 3165 	inc	r0
      000D85 86 06            [24] 3166 	mov	ar6,@r0
      000D87 08               [12] 3167 	inc	r0
      000D88 86 07            [24] 3168 	mov	ar7,@r0
      000D8A 78 4A            [12] 3169 	mov	r0,#___global_vbr
      000D8C A6 04            [24] 3170 	mov	@r0,ar4
      000D8E 08               [12] 3171 	inc	r0
      000D8F A6 05            [24] 3172 	mov	@r0,ar5
      000D91 08               [12] 3173 	inc	r0
      000D92 A6 06            [24] 3174 	mov	@r0,ar6
      000D94 08               [12] 3175 	inc	r0
      000D95 A6 07            [24] 3176 	mov	@r0,ar7
                                   3177 ;	fat.h:377: __global_vbr.bps = HELPER_load_littleendian16(&temp[0x0b]); // bps starts at offset 0x0b
      000D97 90 00 9D         [24] 3178 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_138 + 0x000b)
      000D9A 75 F0 40         [24] 3179 	mov	b,#0x40
      000D9D 12 08 8D         [24] 3180 	lcall	_HELPER_load_littleendian16
      000DA0 E5 82            [12] 3181 	mov	a,dpl
      000DA2 85 83 F0         [24] 3182 	mov	b,dph
      000DA5 78 50            [12] 3183 	mov	r0,#(___global_vbr + 0x0006)
      000DA7 F6               [12] 3184 	mov	@r0,a
      000DA8 08               [12] 3185 	inc	r0
      000DA9 A6 F0            [24] 3186 	mov	@r0,b
                                   3187 ;	fat.h:378: __global_vbr.spc = temp[0x0d]; //spc offset 0x0d
      000DAB 78 9F            [12] 3188 	mov	r0,#(_VBR_MOUNT_VBR_temp_65536_138 + 0x000d)
      000DAD 86 07            [24] 3189 	mov	ar7,@r0
      000DAF 78 52            [12] 3190 	mov	r0,#(___global_vbr + 0x0008)
      000DB1 A6 07            [24] 3191 	mov	@r0,ar7
                                   3192 ;	fat.h:379: __global_vbr.reservedSectors = HELPER_load_littleendian16(&temp[0x0e]);
      000DB3 90 00 A0         [24] 3193 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_138 + 0x000e)
      000DB6 75 F0 40         [24] 3194 	mov	b,#0x40
      000DB9 12 08 8D         [24] 3195 	lcall	_HELPER_load_littleendian16
      000DBC E5 82            [12] 3196 	mov	a,dpl
      000DBE 85 83 F0         [24] 3197 	mov	b,dph
      000DC1 78 4E            [12] 3198 	mov	r0,#(___global_vbr + 0x0004)
      000DC3 F6               [12] 3199 	mov	@r0,a
      000DC4 08               [12] 3200 	inc	r0
      000DC5 A6 F0            [24] 3201 	mov	@r0,b
                                   3202 ;	fat.h:383: SDread(__global_partitionTableEntry.start,16,16,temp);
      000DC7 78 42            [12] 3203 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000DC9 86 04            [24] 3204 	mov	ar4,@r0
      000DCB 08               [12] 3205 	inc	r0
      000DCC 86 05            [24] 3206 	mov	ar5,@r0
      000DCE 08               [12] 3207 	inc	r0
      000DCF 86 06            [24] 3208 	mov	ar6,@r0
      000DD1 08               [12] 3209 	inc	r0
      000DD2 86 07            [24] 3210 	mov	ar7,@r0
      000DD4 74 92            [12] 3211 	mov	a,#_VBR_MOUNT_VBR_temp_65536_138
      000DD6 C0 E0            [24] 3212 	push	acc
      000DD8 74 00            [12] 3213 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_138 >> 8)
      000DDA C0 E0            [24] 3214 	push	acc
      000DDC 74 40            [12] 3215 	mov	a,#0x40
      000DDE C0 E0            [24] 3216 	push	acc
      000DE0 74 10            [12] 3217 	mov	a,#0x10
      000DE2 C0 E0            [24] 3218 	push	acc
      000DE4 E4               [12] 3219 	clr	a
      000DE5 C0 E0            [24] 3220 	push	acc
      000DE7 74 10            [12] 3221 	mov	a,#0x10
      000DE9 C0 E0            [24] 3222 	push	acc
      000DEB E4               [12] 3223 	clr	a
      000DEC C0 E0            [24] 3224 	push	acc
      000DEE 8C 82            [24] 3225 	mov	dpl,r4
      000DF0 8D 83            [24] 3226 	mov	dph,r5
      000DF2 8E F0            [24] 3227 	mov	b,r6
      000DF4 EF               [12] 3228 	mov	a,r7
      000DF5 12 07 47         [24] 3229 	lcall	_SDread
      000DF8 E5 81            [12] 3230 	mov	a,sp
      000DFA 24 F9            [12] 3231 	add	a,#0xf9
      000DFC F5 81            [12] 3232 	mov	sp,a
                                   3233 ;	fat.h:392: __global_vbr.nfat = HELPER_load_littleendian16(&temp[0x10-16]); //offset of nfat is 0x01, but we subtract 16 as we have read from 16 offset in SDread
      000DFE 90 00 92         [24] 3234 	mov	dptr,#_VBR_MOUNT_VBR_temp_65536_138
      000E01 75 F0 40         [24] 3235 	mov	b,#0x40
      000E04 12 08 8D         [24] 3236 	lcall	_HELPER_load_littleendian16
      000E07 E5 82            [12] 3237 	mov	a,dpl
      000E09 85 83 F0         [24] 3238 	mov	b,dph
      000E0C 78 53            [12] 3239 	mov	r0,#(___global_vbr + 0x0009)
      000E0E F6               [12] 3240 	mov	@r0,a
      000E0F 08               [12] 3241 	inc	r0
      000E10 A6 F0            [24] 3242 	mov	@r0,b
                                   3243 ;	fat.h:393: __global_vbr.nroote = HELPER_load_littleendian16(&temp[0x11-16]); //offset of number_root_entrie is 0x11
      000E12 90 00 93         [24] 3244 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_138 + 0x0001)
      000E15 75 F0 40         [24] 3245 	mov	b,#0x40
      000E18 12 08 8D         [24] 3246 	lcall	_HELPER_load_littleendian16
      000E1B E5 82            [12] 3247 	mov	a,dpl
      000E1D 85 83 F0         [24] 3248 	mov	b,dph
      000E20 78 57            [12] 3249 	mov	r0,#(___global_vbr + 0x000d)
      000E22 F6               [12] 3250 	mov	@r0,a
      000E23 08               [12] 3251 	inc	r0
      000E24 A6 F0            [24] 3252 	mov	@r0,b
                                   3253 ;	fat.h:394: __global_vbr.spf = HELPER_load_littleendian16(&temp[0x16-16]); //offset of sectors_per_fat is 0x16
      000E26 90 00 98         [24] 3254 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_138 + 0x0006)
      000E29 75 F0 40         [24] 3255 	mov	b,#0x40
      000E2C 12 08 8D         [24] 3256 	lcall	_HELPER_load_littleendian16
      000E2F AE 82            [24] 3257 	mov	r6,dpl
      000E31 AF 83            [24] 3258 	mov	r7,dph
      000E33 78 55            [12] 3259 	mov	r0,#(___global_vbr + 0x000b)
      000E35 A6 06            [24] 3260 	mov	@r0,ar6
      000E37 08               [12] 3261 	inc	r0
      000E38 A6 07            [24] 3262 	mov	@r0,ar7
                                   3263 ;	fat.h:403: __global_vbr.bpc =  (uint32_t)__global_vbr.bps * (uint32_t)__global_vbr.spc; 
      000E3A 78 50            [12] 3264 	mov	r0,#(___global_vbr + 0x0006)
      000E3C 86 04            [24] 3265 	mov	ar4,@r0
      000E3E 08               [12] 3266 	inc	r0
      000E3F 86 05            [24] 3267 	mov	ar5,@r0
      000E41 8C 1F            [24] 3268 	mov	_VBR_MOUNT_VBR_sloc0_1_0,r4
      000E43 8D 20            [24] 3269 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),r5
      000E45 75 21 00         [24] 3270 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),#0x00
      000E48 75 22 00         [24] 3271 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),#0x00
      000E4B 78 52            [12] 3272 	mov	r0,#(___global_vbr + 0x0008)
      000E4D 86 05            [24] 3273 	mov	ar5,@r0
      000E4F 8D 3D            [24] 3274 	mov	__mullong_PARM_2,r5
      000E51 75 3E 00         [24] 3275 	mov	(__mullong_PARM_2 + 1),#0x00
      000E54 75 3F 00         [24] 3276 	mov	(__mullong_PARM_2 + 2),#0x00
      000E57 75 40 00         [24] 3277 	mov	(__mullong_PARM_2 + 3),#0x00
      000E5A 85 1F 82         [24] 3278 	mov	dpl,_VBR_MOUNT_VBR_sloc0_1_0
      000E5D 85 20 83         [24] 3279 	mov	dph,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000E60 85 21 F0         [24] 3280 	mov	b,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000E63 E5 22            [12] 3281 	mov	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000E65 C0 07            [24] 3282 	push	ar7
      000E67 C0 06            [24] 3283 	push	ar6
      000E69 12 1C 84         [24] 3284 	lcall	__mullong
      000E6C AA 82            [24] 3285 	mov	r2,dpl
      000E6E AB 83            [24] 3286 	mov	r3,dph
      000E70 AC F0            [24] 3287 	mov	r4,b
      000E72 FD               [12] 3288 	mov	r5,a
      000E73 D0 06            [24] 3289 	pop	ar6
      000E75 D0 07            [24] 3290 	pop	ar7
      000E77 78 59            [12] 3291 	mov	r0,#(___global_vbr + 0x000f)
      000E79 A6 02            [24] 3292 	mov	@r0,ar2
      000E7B 08               [12] 3293 	inc	r0
      000E7C A6 03            [24] 3294 	mov	@r0,ar3
      000E7E 08               [12] 3295 	inc	r0
      000E7F A6 04            [24] 3296 	mov	@r0,ar4
      000E81 08               [12] 3297 	inc	r0
      000E82 A6 05            [24] 3298 	mov	@r0,ar5
                                   3299 ;	fat.h:406: __global_vbr.addr_fat_start = __global_vbr.volumeStartSector + __global_vbr.reservedSectors;
      000E84 78 4A            [12] 3300 	mov	r0,#___global_vbr
      000E86 86 1F            [24] 3301 	mov	_VBR_MOUNT_VBR_sloc0_1_0,@r0
      000E88 08               [12] 3302 	inc	r0
      000E89 86 20            [24] 3303 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),@r0
      000E8B 08               [12] 3304 	inc	r0
      000E8C 86 21            [24] 3305 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),@r0
      000E8E 08               [12] 3306 	inc	r0
      000E8F 86 22            [24] 3307 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),@r0
      000E91 78 4E            [12] 3308 	mov	r0,#(___global_vbr + 0x0004)
      000E93 86 04            [24] 3309 	mov	ar4,@r0
      000E95 08               [12] 3310 	inc	r0
      000E96 86 05            [24] 3311 	mov	ar5,@r0
      000E98 E4               [12] 3312 	clr	a
      000E99 FB               [12] 3313 	mov	r3,a
      000E9A FA               [12] 3314 	mov	r2,a
      000E9B EC               [12] 3315 	mov	a,r4
      000E9C 25 1F            [12] 3316 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000E9E F5 1F            [12] 3317 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000EA0 ED               [12] 3318 	mov	a,r5
      000EA1 35 20            [12] 3319 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000EA3 F5 20            [12] 3320 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000EA5 EB               [12] 3321 	mov	a,r3
      000EA6 35 21            [12] 3322 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000EA8 F5 21            [12] 3323 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      000EAA EA               [12] 3324 	mov	a,r2
      000EAB 35 22            [12] 3325 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000EAD F5 22            [12] 3326 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      000EAF 78 5D            [12] 3327 	mov	r0,#(___global_vbr + 0x0013)
      000EB1 A6 1F            [24] 3328 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      000EB3 08               [12] 3329 	inc	r0
      000EB4 A6 20            [24] 3330 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000EB6 08               [12] 3331 	inc	r0
      000EB7 A6 21            [24] 3332 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000EB9 08               [12] 3333 	inc	r0
      000EBA A6 22            [24] 3334 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3335 ;	fat.h:407: __global_vbr.addr_roote_start = __global_vbr.addr_fat_start + __global_vbr.nfat * __global_vbr.spf;
      000EBC 78 53            [12] 3336 	mov	r0,#(___global_vbr + 0x0009)
      000EBE 86 82            [24] 3337 	mov	dpl,@r0
      000EC0 08               [12] 3338 	inc	r0
      000EC1 86 83            [24] 3339 	mov	dph,@r0
      000EC3 8E 3D            [24] 3340 	mov	__mulint_PARM_2,r6
      000EC5 8F 3E            [24] 3341 	mov	(__mulint_PARM_2 + 1),r7
      000EC7 12 1C 1A         [24] 3342 	lcall	__mulint
      000ECA AE 82            [24] 3343 	mov	r6,dpl
      000ECC AF 83            [24] 3344 	mov	r7,dph
      000ECE 8E 04            [24] 3345 	mov	ar4,r6
      000ED0 8F 05            [24] 3346 	mov	ar5,r7
      000ED2 E4               [12] 3347 	clr	a
      000ED3 FE               [12] 3348 	mov	r6,a
      000ED4 FF               [12] 3349 	mov	r7,a
      000ED5 EC               [12] 3350 	mov	a,r4
      000ED6 25 1F            [12] 3351 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000ED8 F5 1F            [12] 3352 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000EDA ED               [12] 3353 	mov	a,r5
      000EDB 35 20            [12] 3354 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000EDD F5 20            [12] 3355 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000EDF EE               [12] 3356 	mov	a,r6
      000EE0 35 21            [12] 3357 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000EE2 F5 21            [12] 3358 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      000EE4 EF               [12] 3359 	mov	a,r7
      000EE5 35 22            [12] 3360 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000EE7 F5 22            [12] 3361 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      000EE9 78 61            [12] 3362 	mov	r0,#(___global_vbr + 0x0017)
      000EEB A6 1F            [24] 3363 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      000EED 08               [12] 3364 	inc	r0
      000EEE A6 20            [24] 3365 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000EF0 08               [12] 3366 	inc	r0
      000EF1 A6 21            [24] 3367 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000EF3 08               [12] 3368 	inc	r0
      000EF4 A6 22            [24] 3369 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3370 ;	fat.h:408: __global_vbr.addr_data_start = __global_vbr.addr_roote_start + (__global_vbr.nroote*32)/__global_vbr.bps;
      000EF6 78 57            [12] 3371 	mov	r0,#(___global_vbr + 0x000d)
      000EF8 86 02            [24] 3372 	mov	ar2,@r0
      000EFA 08               [12] 3373 	inc	r0
      000EFB 86 03            [24] 3374 	mov	ar3,@r0
      000EFD 8A 82            [24] 3375 	mov	dpl,r2
      000EFF EB               [12] 3376 	mov	a,r3
      000F00 C4               [12] 3377 	swap	a
      000F01 23               [12] 3378 	rl	a
      000F02 54 E0            [12] 3379 	anl	a,#0xe0
      000F04 C5 82            [12] 3380 	xch	a,dpl
      000F06 C4               [12] 3381 	swap	a
      000F07 23               [12] 3382 	rl	a
      000F08 C5 82            [12] 3383 	xch	a,dpl
      000F0A 65 82            [12] 3384 	xrl	a,dpl
      000F0C C5 82            [12] 3385 	xch	a,dpl
      000F0E 54 E0            [12] 3386 	anl	a,#0xe0
      000F10 C5 82            [12] 3387 	xch	a,dpl
      000F12 65 82            [12] 3388 	xrl	a,dpl
      000F14 F5 83            [12] 3389 	mov	dph,a
      000F16 78 50            [12] 3390 	mov	r0,#(___global_vbr + 0x0006)
      000F18 86 3D            [24] 3391 	mov	__divuint_PARM_2,@r0
      000F1A 08               [12] 3392 	inc	r0
      000F1B 86 3E            [24] 3393 	mov	(__divuint_PARM_2 + 1),@r0
      000F1D 12 1A EE         [24] 3394 	lcall	__divuint
      000F20 AA 82            [24] 3395 	mov	r2,dpl
      000F22 AB 83            [24] 3396 	mov	r3,dph
      000F24 E4               [12] 3397 	clr	a
      000F25 FE               [12] 3398 	mov	r6,a
      000F26 FF               [12] 3399 	mov	r7,a
      000F27 EA               [12] 3400 	mov	a,r2
      000F28 25 1F            [12] 3401 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000F2A FA               [12] 3402 	mov	r2,a
      000F2B EB               [12] 3403 	mov	a,r3
      000F2C 35 20            [12] 3404 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F2E FB               [12] 3405 	mov	r3,a
      000F2F EE               [12] 3406 	mov	a,r6
      000F30 35 21            [12] 3407 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F32 FE               [12] 3408 	mov	r6,a
      000F33 EF               [12] 3409 	mov	a,r7
      000F34 35 22            [12] 3410 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000F36 FF               [12] 3411 	mov	r7,a
      000F37 78 65            [12] 3412 	mov	r0,#(___global_vbr + 0x001b)
      000F39 A6 02            [24] 3413 	mov	@r0,ar2
      000F3B 08               [12] 3414 	inc	r0
      000F3C A6 03            [24] 3415 	mov	@r0,ar3
      000F3E 08               [12] 3416 	inc	r0
      000F3F A6 06            [24] 3417 	mov	@r0,ar6
      000F41 08               [12] 3418 	inc	r0
      000F42 A6 07            [24] 3419 	mov	@r0,ar7
                                   3420 ;	fat.h:416: return 0;
      000F44 75 82 00         [24] 3421 	mov	dpl,#0x00
                                   3422 ;	fat.h:418: }
      000F47 22               [24] 3423 	ret
                                   3424 ;------------------------------------------------------------
                                   3425 ;Allocation info for local variables in function 'VBR_FAT16_CHECK_COMPATIBILITY'
                                   3426 ;------------------------------------------------------------
                                   3427 ;partition_number          Allocated to registers r7 
                                   3428 ;------------------------------------------------------------
                                   3429 ;	fat.h:420: uint8_t VBR_FAT16_CHECK_COMPATIBILITY(uint8_t partition_number)
                                   3430 ;	-----------------------------------------
                                   3431 ;	 function VBR_FAT16_CHECK_COMPATIBILITY
                                   3432 ;	-----------------------------------------
      000F48                       3433 _VBR_FAT16_CHECK_COMPATIBILITY:
                                   3434 ;	fat.h:426: if(VBR_MOUNT_VBR(partition_number))
      000F48 12 0D 2C         [24] 3435 	lcall	_VBR_MOUNT_VBR
      000F4B E5 82            [12] 3436 	mov	a,dpl
      000F4D 60 04            [24] 3437 	jz	00102$
                                   3438 ;	fat.h:428: return 1; //error
      000F4F 75 82 01         [24] 3439 	mov	dpl,#0x01
      000F52 22               [24] 3440 	ret
      000F53                       3441 00102$:
                                   3442 ;	fat.h:431: if(__global_vbr.bps!=SD_BLOCK_SIZE) 
      000F53 78 50            [12] 3443 	mov	r0,#(___global_vbr + 0x0006)
      000F55 86 06            [24] 3444 	mov	ar6,@r0
      000F57 08               [12] 3445 	inc	r0
      000F58 86 07            [24] 3446 	mov	ar7,@r0
      000F5A BE 00 05         [24] 3447 	cjne	r6,#0x00,00116$
      000F5D BF 02 02         [24] 3448 	cjne	r7,#0x02,00116$
      000F60 80 04            [24] 3449 	sjmp	00104$
      000F62                       3450 00116$:
                                   3451 ;	fat.h:436: return 2; //error - not supported fat16
      000F62 75 82 02         [24] 3452 	mov	dpl,#0x02
      000F65 22               [24] 3453 	ret
      000F66                       3454 00104$:
                                   3455 ;	fat.h:439: return 0;
      000F66 75 82 00         [24] 3456 	mov	dpl,#0x00
                                   3457 ;	fat.h:440: }
      000F69 22               [24] 3458 	ret
                                   3459 ;------------------------------------------------------------
                                   3460 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_DUMP'
                                   3461 ;------------------------------------------------------------
                                   3462 ;i                         Allocated to registers r7 
                                   3463 ;i                         Allocated to registers r7 
                                   3464 ;------------------------------------------------------------
                                   3465 ;	fat.h:443: void FAT16_ROOTENTRY_DUMP()
                                   3466 ;	-----------------------------------------
                                   3467 ;	 function FAT16_ROOTENTRY_DUMP
                                   3468 ;	-----------------------------------------
      000F6A                       3469 _FAT16_ROOTENTRY_DUMP:
                                   3470 ;	fat.h:445: UartPrint("\nROOT_ENTRY_INDEX:");
      000F6A 90 1D 8F         [24] 3471 	mov	dptr,#___str_1
      000F6D 75 F0 80         [24] 3472 	mov	b,#0x80
      000F70 12 01 84         [24] 3473 	lcall	_UartPrint
                                   3474 ;	fat.h:446: UartPrintNumber(__global_rootEntry.entry_index);
      000F73 78 7C            [12] 3475 	mov	r0,#(___global_rootEntry + 0x0012)
      000F75 86 06            [24] 3476 	mov	ar6,@r0
      000F77 08               [12] 3477 	inc	r0
      000F78 86 07            [24] 3478 	mov	ar7,@r0
      000F7A 7D 00            [12] 3479 	mov	r5,#0x00
      000F7C 7C 00            [12] 3480 	mov	r4,#0x00
      000F7E 8E 82            [24] 3481 	mov	dpl,r6
      000F80 8F 83            [24] 3482 	mov	dph,r7
      000F82 8D F0            [24] 3483 	mov	b,r5
      000F84 EC               [12] 3484 	mov	a,r4
      000F85 12 02 CA         [24] 3485 	lcall	_UartPrintNumber
                                   3486 ;	fat.h:447: UartPrint("\nFILE: ");
      000F88 90 1D A2         [24] 3487 	mov	dptr,#___str_2
      000F8B 75 F0 80         [24] 3488 	mov	b,#0x80
      000F8E 12 01 84         [24] 3489 	lcall	_UartPrint
                                   3490 ;	fat.h:448: for(uint8_t i=0;i<8;i++)UartWrite(__global_rootEntry.name[i]);
      000F91 7F 00            [12] 3491 	mov	r7,#0x00
      000F93                       3492 00104$:
      000F93 BF 08 00         [24] 3493 	cjne	r7,#0x08,00129$
      000F96                       3494 00129$:
      000F96 50 10            [24] 3495 	jnc	00101$
      000F98 EF               [12] 3496 	mov	a,r7
      000F99 24 6A            [12] 3497 	add	a,#___global_rootEntry
      000F9B F9               [12] 3498 	mov	r1,a
      000F9C 87 82            [24] 3499 	mov	dpl,@r1
      000F9E C0 07            [24] 3500 	push	ar7
      000FA0 12 00 FE         [24] 3501 	lcall	_UartWrite
      000FA3 D0 07            [24] 3502 	pop	ar7
      000FA5 0F               [12] 3503 	inc	r7
      000FA6 80 EB            [24] 3504 	sjmp	00104$
      000FA8                       3505 00101$:
                                   3506 ;	fat.h:449: for(uint8_t i=0;i<3;i++)UartWrite(__global_rootEntry.extension[i]);
      000FA8 7F 00            [12] 3507 	mov	r7,#0x00
      000FAA                       3508 00107$:
      000FAA BF 03 00         [24] 3509 	cjne	r7,#0x03,00131$
      000FAD                       3510 00131$:
      000FAD 50 10            [24] 3511 	jnc	00102$
      000FAF EF               [12] 3512 	mov	a,r7
      000FB0 24 72            [12] 3513 	add	a,#(___global_rootEntry + 0x0008)
      000FB2 F9               [12] 3514 	mov	r1,a
      000FB3 87 82            [24] 3515 	mov	dpl,@r1
      000FB5 C0 07            [24] 3516 	push	ar7
      000FB7 12 00 FE         [24] 3517 	lcall	_UartWrite
      000FBA D0 07            [24] 3518 	pop	ar7
      000FBC 0F               [12] 3519 	inc	r7
      000FBD 80 EB            [24] 3520 	sjmp	00107$
      000FBF                       3521 00102$:
                                   3522 ;	fat.h:450: UartPrint("\nSTART: ");
      000FBF 90 1D AA         [24] 3523 	mov	dptr,#___str_3
      000FC2 75 F0 80         [24] 3524 	mov	b,#0x80
      000FC5 12 01 84         [24] 3525 	lcall	_UartPrint
                                   3526 ;	fat.h:451: UartPrintNumber(__global_rootEntry.startCluster);
      000FC8 78 76            [12] 3527 	mov	r0,#(___global_rootEntry + 0x000c)
      000FCA 86 06            [24] 3528 	mov	ar6,@r0
      000FCC 08               [12] 3529 	inc	r0
      000FCD 86 07            [24] 3530 	mov	ar7,@r0
      000FCF 7D 00            [12] 3531 	mov	r5,#0x00
      000FD1 7C 00            [12] 3532 	mov	r4,#0x00
      000FD3 8E 82            [24] 3533 	mov	dpl,r6
      000FD5 8F 83            [24] 3534 	mov	dph,r7
      000FD7 8D F0            [24] 3535 	mov	b,r5
      000FD9 EC               [12] 3536 	mov	a,r4
      000FDA 12 02 CA         [24] 3537 	lcall	_UartPrintNumber
                                   3538 ;	fat.h:452: UartPrint("\nSIZE: ");
      000FDD 90 1D B3         [24] 3539 	mov	dptr,#___str_4
      000FE0 75 F0 80         [24] 3540 	mov	b,#0x80
      000FE3 12 01 84         [24] 3541 	lcall	_UartPrint
                                   3542 ;	fat.h:453: UartPrintNumber(__global_rootEntry.size);			
      000FE6 78 78            [12] 3543 	mov	r0,#(___global_rootEntry + 0x000e)
      000FE8 86 04            [24] 3544 	mov	ar4,@r0
      000FEA 08               [12] 3545 	inc	r0
      000FEB 86 05            [24] 3546 	mov	ar5,@r0
      000FED 08               [12] 3547 	inc	r0
      000FEE 86 06            [24] 3548 	mov	ar6,@r0
      000FF0 08               [12] 3549 	inc	r0
      000FF1 86 07            [24] 3550 	mov	ar7,@r0
      000FF3 8C 82            [24] 3551 	mov	dpl,r4
      000FF5 8D 83            [24] 3552 	mov	dph,r5
      000FF7 8E F0            [24] 3553 	mov	b,r6
      000FF9 EF               [12] 3554 	mov	a,r7
      000FFA 12 02 CA         [24] 3555 	lcall	_UartPrintNumber
                                   3556 ;	fat.h:454: UartPrint("\nATTR: 0x");
      000FFD 90 1D BB         [24] 3557 	mov	dptr,#___str_5
      001000 75 F0 80         [24] 3558 	mov	b,#0x80
      001003 12 01 84         [24] 3559 	lcall	_UartPrint
                                   3560 ;	fat.h:455: UartWriteNumber(__global_rootEntry.attributes,HEX);			
      001006 78 75            [12] 3561 	mov	r0,#(___global_rootEntry + 0x000b)
      001008 86 82            [24] 3562 	mov	dpl,@r0
      00100A E4               [12] 3563 	clr	a
      00100B C0 E0            [24] 3564 	push	acc
      00100D 12 01 B6         [24] 3565 	lcall	_UartWriteNumber
      001010 15 81            [12] 3566 	dec	sp
                                   3567 ;	fat.h:456: UartWrite('\n\n');
      001012 75 82 0A         [24] 3568 	mov	dpl,#0x0a
                                   3569 ;	fat.h:457: }
      001015 02 00 FE         [24] 3570 	ljmp	_UartWrite
                                   3571 ;------------------------------------------------------------
                                   3572 ;Allocation info for local variables in function 'FAT16_LOAD_ROOTENTRY'
                                   3573 ;------------------------------------------------------------
                                   3574 ;roote_number              Allocated with name '_FAT16_LOAD_ROOTENTRY_roote_number_65536_149'
                                   3575 ;i                         Allocated to registers r7 
                                   3576 ;i                         Allocated to registers r7 
                                   3577 ;sloc0                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc0_1_0'
                                   3578 ;sloc1                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc1_1_0'
                                   3579 ;temp                      Allocated with name '_FAT16_LOAD_ROOTENTRY_temp_65536_150'
                                   3580 ;sector_of_given_roote     Allocated to registers r2 r3 r4 r5 
                                   3581 ;offset_in_this_sector     Allocated to registers r6 r7 
                                   3582 ;------------------------------------------------------------
                                   3583 ;	fat.h:467: uint8_t FAT16_LOAD_ROOTENTRY(uint16_t roote_number)
                                   3584 ;	-----------------------------------------
                                   3585 ;	 function FAT16_LOAD_ROOTENTRY
                                   3586 ;	-----------------------------------------
      001018                       3587 _FAT16_LOAD_ROOTENTRY:
      001018 85 82 23         [24] 3588 	mov	_FAT16_LOAD_ROOTENTRY_roote_number_65536_149,dpl
      00101B 85 83 24         [24] 3589 	mov	(_FAT16_LOAD_ROOTENTRY_roote_number_65536_149 + 1),dph
                                   3590 ;	fat.h:476: if(roote_number < __global_vbr.nroote);//pass
      00101E 78 57            [12] 3591 	mov	r0,#(___global_vbr + 0x000d)
      001020 86 04            [24] 3592 	mov	ar4,@r0
      001022 08               [12] 3593 	inc	r0
      001023 86 05            [24] 3594 	mov	ar5,@r0
      001025 C3               [12] 3595 	clr	c
      001026 E5 23            [12] 3596 	mov	a,_FAT16_LOAD_ROOTENTRY_roote_number_65536_149
      001028 9C               [12] 3597 	subb	a,r4
      001029 E5 24            [12] 3598 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_149 + 1)
      00102B 9D               [12] 3599 	subb	a,r5
      00102C 40 04            [24] 3600 	jc	00103$
                                   3601 ;	fat.h:477: else return 1; // error as roote_number is more than number of root entries present in rootentry table 
      00102E 75 82 01         [24] 3602 	mov	dpl,#0x01
      001031 22               [24] 3603 	ret
      001032                       3604 00103$:
                                   3605 ;	fat.h:479: VBR_MOUNT_VBR(__global_nthPartitionVBRmounted);
      001032 78 69            [12] 3606 	mov	r0,#___global_nthPartitionVBRmounted
      001034 86 82            [24] 3607 	mov	dpl,@r0
      001036 12 0D 2C         [24] 3608 	lcall	_VBR_MOUNT_VBR
                                   3609 ;	fat.h:482: sector_of_given_roote = __global_vbr.addr_roote_start + (roote_number*32)/__global_vbr.bps;
      001039 78 61            [12] 3610 	mov	r0,#(___global_vbr + 0x0017)
      00103B 86 25            [24] 3611 	mov	_FAT16_LOAD_ROOTENTRY_sloc0_1_0,@r0
      00103D 08               [12] 3612 	inc	r0
      00103E 86 26            [24] 3613 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1),@r0
      001040 08               [12] 3614 	inc	r0
      001041 86 27            [24] 3615 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2),@r0
      001043 08               [12] 3616 	inc	r0
      001044 86 28            [24] 3617 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3),@r0
      001046 AE 23            [24] 3618 	mov	r6,_FAT16_LOAD_ROOTENTRY_roote_number_65536_149
      001048 E5 24            [12] 3619 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_149 + 1)
      00104A C4               [12] 3620 	swap	a
      00104B 23               [12] 3621 	rl	a
      00104C 54 E0            [12] 3622 	anl	a,#0xe0
      00104E CE               [12] 3623 	xch	a,r6
      00104F C4               [12] 3624 	swap	a
      001050 23               [12] 3625 	rl	a
      001051 CE               [12] 3626 	xch	a,r6
      001052 6E               [12] 3627 	xrl	a,r6
      001053 CE               [12] 3628 	xch	a,r6
      001054 54 E0            [12] 3629 	anl	a,#0xe0
      001056 CE               [12] 3630 	xch	a,r6
      001057 6E               [12] 3631 	xrl	a,r6
      001058 FF               [12] 3632 	mov	r7,a
      001059 78 50            [12] 3633 	mov	r0,#(___global_vbr + 0x0006)
      00105B 86 29            [24] 3634 	mov	_FAT16_LOAD_ROOTENTRY_sloc1_1_0,@r0
      00105D 08               [12] 3635 	inc	r0
      00105E 86 2A            [24] 3636 	mov	(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1),@r0
      001060 85 29 3D         [24] 3637 	mov	__divuint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      001063 85 2A 3E         [24] 3638 	mov	(__divuint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      001066 8E 82            [24] 3639 	mov	dpl,r6
      001068 8F 83            [24] 3640 	mov	dph,r7
      00106A C0 07            [24] 3641 	push	ar7
      00106C C0 06            [24] 3642 	push	ar6
      00106E 12 1A EE         [24] 3643 	lcall	__divuint
      001071 AA 82            [24] 3644 	mov	r2,dpl
      001073 AB 83            [24] 3645 	mov	r3,dph
      001075 D0 06            [24] 3646 	pop	ar6
      001077 D0 07            [24] 3647 	pop	ar7
      001079 E4               [12] 3648 	clr	a
      00107A FC               [12] 3649 	mov	r4,a
      00107B FD               [12] 3650 	mov	r5,a
      00107C EA               [12] 3651 	mov	a,r2
      00107D 25 25            [12] 3652 	add	a,_FAT16_LOAD_ROOTENTRY_sloc0_1_0
      00107F FA               [12] 3653 	mov	r2,a
      001080 EB               [12] 3654 	mov	a,r3
      001081 35 26            [12] 3655 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1)
      001083 FB               [12] 3656 	mov	r3,a
      001084 EC               [12] 3657 	mov	a,r4
      001085 35 27            [12] 3658 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2)
      001087 FC               [12] 3659 	mov	r4,a
      001088 ED               [12] 3660 	mov	a,r5
      001089 35 28            [12] 3661 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3)
      00108B FD               [12] 3662 	mov	r5,a
                                   3663 ;	fat.h:483: offset_in_this_sector = (roote_number*32)%__global_vbr.bps;
      00108C 85 29 3D         [24] 3664 	mov	__moduint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      00108F 85 2A 3E         [24] 3665 	mov	(__moduint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      001092 8E 82            [24] 3666 	mov	dpl,r6
      001094 8F 83            [24] 3667 	mov	dph,r7
      001096 C0 05            [24] 3668 	push	ar5
      001098 C0 04            [24] 3669 	push	ar4
      00109A C0 03            [24] 3670 	push	ar3
      00109C C0 02            [24] 3671 	push	ar2
      00109E 12 1C 37         [24] 3672 	lcall	__moduint
      0010A1 AE 82            [24] 3673 	mov	r6,dpl
      0010A3 AF 83            [24] 3674 	mov	r7,dph
      0010A5 D0 02            [24] 3675 	pop	ar2
      0010A7 D0 03            [24] 3676 	pop	ar3
      0010A9 D0 04            [24] 3677 	pop	ar4
      0010AB D0 05            [24] 3678 	pop	ar5
                                   3679 ;	fat.h:485: SDread(sector_of_given_roote,offset_in_this_sector,32,temp);
      0010AD 74 A2            [12] 3680 	mov	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_150
      0010AF C0 E0            [24] 3681 	push	acc
      0010B1 74 00            [12] 3682 	mov	a,#(_FAT16_LOAD_ROOTENTRY_temp_65536_150 >> 8)
      0010B3 C0 E0            [24] 3683 	push	acc
      0010B5 74 40            [12] 3684 	mov	a,#0x40
      0010B7 C0 E0            [24] 3685 	push	acc
      0010B9 03               [12] 3686 	rr	a
      0010BA C0 E0            [24] 3687 	push	acc
      0010BC E4               [12] 3688 	clr	a
      0010BD C0 E0            [24] 3689 	push	acc
      0010BF C0 06            [24] 3690 	push	ar6
      0010C1 C0 07            [24] 3691 	push	ar7
      0010C3 8A 82            [24] 3692 	mov	dpl,r2
      0010C5 8B 83            [24] 3693 	mov	dph,r3
      0010C7 8C F0            [24] 3694 	mov	b,r4
      0010C9 ED               [12] 3695 	mov	a,r5
      0010CA 12 07 47         [24] 3696 	lcall	_SDread
      0010CD E5 81            [12] 3697 	mov	a,sp
      0010CF 24 F9            [12] 3698 	add	a,#0xf9
      0010D1 F5 81            [12] 3699 	mov	sp,a
                                   3700 ;	fat.h:487: __global_rootEntry.entry_index = roote_number; //save the index of the root_entry
      0010D3 78 7C            [12] 3701 	mov	r0,#(___global_rootEntry + 0x0012)
      0010D5 A6 23            [24] 3702 	mov	@r0,_FAT16_LOAD_ROOTENTRY_roote_number_65536_149
      0010D7 08               [12] 3703 	inc	r0
      0010D8 A6 24            [24] 3704 	mov	@r0,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_149 + 1)
                                   3705 ;	fat.h:488: __global_rootEntry.bytes_read = 0; //no bytes has been read so far by FAT16_FILE_READ as we have just loaded the rootentry
      0010DA 78 7E            [12] 3706 	mov	r0,#(___global_rootEntry + 0x0014)
      0010DC 76 00            [12] 3707 	mov	@r0,#0x00
      0010DE 08               [12] 3708 	inc	r0
      0010DF 76 00            [12] 3709 	mov	@r0,#0x00
      0010E1 08               [12] 3710 	inc	r0
      0010E2 76 00            [12] 3711 	mov	@r0,#0x00
      0010E4 08               [12] 3712 	inc	r0
      0010E5 76 00            [12] 3713 	mov	@r0,#0x00
                                   3714 ;	fat.h:490: for(uint8_t i=0;i<8;i++) __global_rootEntry.name[i] = temp[i];
      0010E7 7F 00            [12] 3715 	mov	r7,#0x00
      0010E9                       3716 00107$:
      0010E9 BF 08 00         [24] 3717 	cjne	r7,#0x08,00137$
      0010EC                       3718 00137$:
      0010EC 50 0F            [24] 3719 	jnc	00104$
      0010EE EF               [12] 3720 	mov	a,r7
      0010EF 24 6A            [12] 3721 	add	a,#___global_rootEntry
      0010F1 F9               [12] 3722 	mov	r1,a
      0010F2 EF               [12] 3723 	mov	a,r7
      0010F3 24 A2            [12] 3724 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_150
      0010F5 F8               [12] 3725 	mov	r0,a
      0010F6 86 06            [24] 3726 	mov	ar6,@r0
      0010F8 A7 06            [24] 3727 	mov	@r1,ar6
      0010FA 0F               [12] 3728 	inc	r7
      0010FB 80 EC            [24] 3729 	sjmp	00107$
      0010FD                       3730 00104$:
                                   3731 ;	fat.h:491: for(uint8_t i=8;i<11;i++) __global_rootEntry.extension[i-8] = temp[i];
      0010FD 7F 08            [12] 3732 	mov	r7,#0x08
      0010FF                       3733 00110$:
      0010FF BF 0B 00         [24] 3734 	cjne	r7,#0x0b,00139$
      001102                       3735 00139$:
      001102 50 13            [24] 3736 	jnc	00105$
      001104 8F 06            [24] 3737 	mov	ar6,r7
      001106 EE               [12] 3738 	mov	a,r6
      001107 24 F8            [12] 3739 	add	a,#0xf8
      001109 24 72            [12] 3740 	add	a,#(___global_rootEntry + 0x0008)
      00110B F9               [12] 3741 	mov	r1,a
      00110C EF               [12] 3742 	mov	a,r7
      00110D 24 A2            [12] 3743 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_150
      00110F F8               [12] 3744 	mov	r0,a
      001110 86 06            [24] 3745 	mov	ar6,@r0
      001112 A7 06            [24] 3746 	mov	@r1,ar6
      001114 0F               [12] 3747 	inc	r7
      001115 80 E8            [24] 3748 	sjmp	00110$
      001117                       3749 00105$:
                                   3750 ;	fat.h:493: __global_rootEntry.attributes = temp[0x0b];
      001117 78 AD            [12] 3751 	mov	r0,#(_FAT16_LOAD_ROOTENTRY_temp_65536_150 + 0x000b)
      001119 86 07            [24] 3752 	mov	ar7,@r0
      00111B 78 75            [12] 3753 	mov	r0,#(___global_rootEntry + 0x000b)
      00111D A6 07            [24] 3754 	mov	@r0,ar7
                                   3755 ;	fat.h:494: __global_rootEntry.startCluster = HELPER_load_littleendian16(&temp[0x1a]);
      00111F 90 00 BC         [24] 3756 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_150 + 0x001a)
      001122 75 F0 40         [24] 3757 	mov	b,#0x40
      001125 12 08 8D         [24] 3758 	lcall	_HELPER_load_littleendian16
      001128 E5 82            [12] 3759 	mov	a,dpl
      00112A 85 83 F0         [24] 3760 	mov	b,dph
      00112D 78 76            [12] 3761 	mov	r0,#(___global_rootEntry + 0x000c)
      00112F F6               [12] 3762 	mov	@r0,a
      001130 08               [12] 3763 	inc	r0
      001131 A6 F0            [24] 3764 	mov	@r0,b
                                   3765 ;	fat.h:495: __global_rootEntry.size = HELPER_load_littleendian32(&temp[0x1c]);
      001133 90 00 BE         [24] 3766 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_150 + 0x001c)
      001136 75 F0 40         [24] 3767 	mov	b,#0x40
      001139 12 08 BB         [24] 3768 	lcall	_HELPER_load_littleendian32
      00113C AC 82            [24] 3769 	mov	r4,dpl
      00113E AD 83            [24] 3770 	mov	r5,dph
      001140 AE F0            [24] 3771 	mov	r6,b
      001142 FF               [12] 3772 	mov	r7,a
      001143 78 78            [12] 3773 	mov	r0,#(___global_rootEntry + 0x000e)
      001145 A6 04            [24] 3774 	mov	@r0,ar4
      001147 08               [12] 3775 	inc	r0
      001148 A6 05            [24] 3776 	mov	@r0,ar5
      00114A 08               [12] 3777 	inc	r0
      00114B A6 06            [24] 3778 	mov	@r0,ar6
      00114D 08               [12] 3779 	inc	r0
      00114E A6 07            [24] 3780 	mov	@r0,ar7
                                   3781 ;	fat.h:497: return 0;
      001150 75 82 00         [24] 3782 	mov	dpl,#0x00
                                   3783 ;	fat.h:498: }
      001153 22               [24] 3784 	ret
                                   3785 ;------------------------------------------------------------
                                   3786 ;Allocation info for local variables in function 'FAT16_IS_ROOTENTRY_VALID_FILE'
                                   3787 ;------------------------------------------------------------
                                   3788 ;	fat.h:499: uint8_t FAT16_IS_ROOTENTRY_VALID_FILE()
                                   3789 ;	-----------------------------------------
                                   3790 ;	 function FAT16_IS_ROOTENTRY_VALID_FILE
                                   3791 ;	-----------------------------------------
      001154                       3792 _FAT16_IS_ROOTENTRY_VALID_FILE:
                                   3793 ;	fat.h:502: if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_AVAILABLE)
      001154 78 6A            [12] 3794 	mov	r0,#___global_rootEntry
      001156 E6               [12] 3795 	mov	a,@r0
      001157 FF               [12] 3796 	mov	r7,a
      001158 70 04            [24] 3797 	jnz	00112$
                                   3798 ;	fat.h:507: return 255; //no more entries, stop scanning
      00115A 75 82 FF         [24] 3799 	mov	dpl,#0xff
      00115D 22               [24] 3800 	ret
      00115E                       3801 00112$:
                                   3802 ;	fat.h:509: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DELETED)
      00115E BF E5 04         [24] 3803 	cjne	r7,#0xe5,00109$
                                   3804 ;	fat.h:515: return FAT16_ROOTENTRY_DELETED; //deleted and available
      001161 75 82 E5         [24] 3805 	mov	dpl,#0xe5
      001164 22               [24] 3806 	ret
      001165                       3807 00109$:
                                   3808 ;	fat.h:517: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DOT)
      001165 BF 2E 04         [24] 3809 	cjne	r7,#0x2e,00106$
                                   3810 ;	fat.h:522: return FAT16_ROOTENTRY_DOT; //this is the entry to self
      001168 75 82 2E         [24] 3811 	mov	dpl,#0x2e
      00116B 22               [24] 3812 	ret
      00116C                       3813 00106$:
                                   3814 ;	fat.h:527: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_HIDDEN ||
      00116C 90 00 6A         [24] 3815 	mov	dptr,#___global_rootEntry
      00116F 75 F0 40         [24] 3816 	mov	b,#0x40
      001172 12 0A 16         [24] 3817 	lcall	_HELPER_rootentry_type
      001175 AF 82            [24] 3818 	mov	r7,dpl
      001177 BF 01 02         [24] 3819 	cjne	r7,#0x01,00141$
      00117A 80 1E            [24] 3820 	sjmp	00101$
      00117C                       3821 00141$:
                                   3822 ;	fat.h:528: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_SYSTEM ||
      00117C 90 00 6A         [24] 3823 	mov	dptr,#___global_rootEntry
      00117F 75 F0 40         [24] 3824 	mov	b,#0x40
      001182 12 0A 16         [24] 3825 	lcall	_HELPER_rootentry_type
      001185 AF 82            [24] 3826 	mov	r7,dpl
      001187 BF 02 02         [24] 3827 	cjne	r7,#0x02,00142$
      00118A 80 0E            [24] 3828 	sjmp	00101$
      00118C                       3829 00142$:
                                   3830 ;	fat.h:529: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_VOLUME
      00118C 90 00 6A         [24] 3831 	mov	dptr,#___global_rootEntry
      00118F 75 F0 40         [24] 3832 	mov	b,#0x40
      001192 12 0A 16         [24] 3833 	lcall	_HELPER_rootentry_type
      001195 AF 82            [24] 3834 	mov	r7,dpl
      001197 BF 03 04         [24] 3835 	cjne	r7,#0x03,00110$
      00119A                       3836 00101$:
                                   3837 ;	fat.h:536: return 254;
      00119A 75 82 FE         [24] 3838 	mov	dpl,#0xfe
      00119D 22               [24] 3839 	ret
      00119E                       3840 00110$:
                                   3841 ;	fat.h:539: return 0;
      00119E 75 82 00         [24] 3842 	mov	dpl,#0x00
                                   3843 ;	fat.h:540: }
      0011A1 22               [24] 3844 	ret
                                   3845 ;------------------------------------------------------------
                                   3846 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_READ'
                                   3847 ;------------------------------------------------------------
                                   3848 ;roote_index               Allocated to registers r6 r7 
                                   3849 ;file_validity             Allocated to registers r7 
                                   3850 ;------------------------------------------------------------
                                   3851 ;	fat.h:543: uint8_t FAT16_ROOTENTRY_READ(uint16_t roote_index)
                                   3852 ;	-----------------------------------------
                                   3853 ;	 function FAT16_ROOTENTRY_READ
                                   3854 ;	-----------------------------------------
      0011A2                       3855 _FAT16_ROOTENTRY_READ:
                                   3856 ;	fat.h:553: if(FAT16_LOAD_ROOTENTRY(roote_index)) // if returns 1, then we have reached the end of the rootentry table
      0011A2 12 10 18         [24] 3857 	lcall	_FAT16_LOAD_ROOTENTRY
      0011A5 E5 82            [12] 3858 	mov	a,dpl
      0011A7 60 04            [24] 3859 	jz	00102$
                                   3860 ;	fat.h:555: return 0xff; //end of scan
      0011A9 75 82 FF         [24] 3861 	mov	dpl,#0xff
      0011AC 22               [24] 3862 	ret
      0011AD                       3863 00102$:
                                   3864 ;	fat.h:559: file_validity=FAT16_IS_ROOTENTRY_VALID_FILE(); //check validity
      0011AD 12 11 54         [24] 3865 	lcall	_FAT16_IS_ROOTENTRY_VALID_FILE
      0011B0 AF 82            [24] 3866 	mov	r7,dpl
                                   3867 ;	fat.h:561: if(file_validity==255)return 0xff; //end of scan
      0011B2 BF FF 04         [24] 3868 	cjne	r7,#0xff,00106$
      0011B5 75 82 FF         [24] 3869 	mov	dpl,#0xff
      0011B8 22               [24] 3870 	ret
      0011B9                       3871 00106$:
                                   3872 ;	fat.h:562: else if(file_validity==0)
      0011B9 EF               [12] 3873 	mov	a,r7
                                   3874 ;	fat.h:568: return 0;
      0011BA 70 03            [24] 3875 	jnz	00107$
      0011BC F5 82            [12] 3876 	mov	dpl,a
      0011BE 22               [24] 3877 	ret
      0011BF                       3878 00107$:
                                   3879 ;	fat.h:571: return 1; //invalid file if context reaches here
      0011BF 75 82 01         [24] 3880 	mov	dpl,#0x01
                                   3881 ;	fat.h:574: }
      0011C2 22               [24] 3882 	ret
                                   3883 ;------------------------------------------------------------
                                   3884 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN_RESET'
                                   3885 ;------------------------------------------------------------
                                   3886 ;	fat.h:576: void FAT16_ROOTENTRY_SCAN_RESET()
                                   3887 ;	-----------------------------------------
                                   3888 ;	 function FAT16_ROOTENTRY_SCAN_RESET
                                   3889 ;	-----------------------------------------
      0011C3                       3890 _FAT16_ROOTENTRY_SCAN_RESET:
                                   3891 ;	fat.h:578: __global_rootEntry.entry_index=0xffff; // in FAT16, maximum number of root entries can never reach 0xffff.
      0011C3 78 7C            [12] 3892 	mov	r0,#(___global_rootEntry + 0x0012)
      0011C5 76 FF            [12] 3893 	mov	@r0,#0xff
      0011C7 08               [12] 3894 	inc	r0
      0011C8 76 FF            [12] 3895 	mov	@r0,#0xff
                                   3896 ;	fat.h:584: __global_rootEntry.attributes |= 1<<FILETYPE_SYSTEM;
      0011CA 78 75            [12] 3897 	mov	r0,#(___global_rootEntry + 0x000b)
      0011CC 86 07            [24] 3898 	mov	ar7,@r0
      0011CE 74 04            [12] 3899 	mov	a,#0x04
      0011D0 4F               [12] 3900 	orl	a,r7
      0011D1 78 75            [12] 3901 	mov	r0,#(___global_rootEntry + 0x000b)
      0011D3 F6               [12] 3902 	mov	@r0,a
                                   3903 ;	fat.h:585: }
      0011D4 22               [24] 3904 	ret
                                   3905 ;------------------------------------------------------------
                                   3906 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN'
                                   3907 ;------------------------------------------------------------
                                   3908 ;validity                  Allocated to registers r7 
                                   3909 ;------------------------------------------------------------
                                   3910 ;	fat.h:587: uint8_t FAT16_ROOTENTRY_SCAN() __reentrant
                                   3911 ;	-----------------------------------------
                                   3912 ;	 function FAT16_ROOTENTRY_SCAN
                                   3913 ;	-----------------------------------------
      0011D5                       3914 _FAT16_ROOTENTRY_SCAN:
                                   3915 ;	fat.h:592: while(1)
      0011D5                       3916 00110$:
                                   3917 ;	fat.h:600: validity=FAT16_ROOTENTRY_READ(__global_rootEntry.entry_index+1); //read the next entry
      0011D5 78 7C            [12] 3918 	mov	r0,#(___global_rootEntry + 0x0012)
      0011D7 86 06            [24] 3919 	mov	ar6,@r0
      0011D9 08               [12] 3920 	inc	r0
      0011DA 86 07            [24] 3921 	mov	ar7,@r0
      0011DC 8E 82            [24] 3922 	mov	dpl,r6
      0011DE 8F 83            [24] 3923 	mov	dph,r7
      0011E0 A3               [24] 3924 	inc	dptr
      0011E1 12 11 A2         [24] 3925 	lcall	_FAT16_ROOTENTRY_READ
      0011E4 AF 82            [24] 3926 	mov	r7,dpl
                                   3927 ;	fat.h:602: if ( validity == 255 )
      0011E6 BF FF 04         [24] 3928 	cjne	r7,#0xff,00107$
                                   3929 ;	fat.h:608: return 255; //end scan
      0011E9 75 82 FF         [24] 3930 	mov	dpl,#0xff
      0011EC 22               [24] 3931 	ret
      0011ED                       3932 00107$:
                                   3933 ;	fat.h:610: else if (validity == 1) 
      0011ED BF 01 02         [24] 3934 	cjne	r7,#0x01,00132$
      0011F0 80 E3            [24] 3935 	sjmp	00110$
      0011F2                       3936 00132$:
                                   3937 ;	fat.h:618: else if(validity == 0)
      0011F2 EF               [12] 3938 	mov	a,r7
                                   3939 ;	fat.h:625: return 0; // found a valid file,break out of the loop
      0011F3 70 E0            [24] 3940 	jnz	00110$
      0011F5 F5 82            [12] 3941 	mov	dpl,a
                                   3942 ;	fat.h:632: }
      0011F7 22               [24] 3943 	ret
                                   3944 ;------------------------------------------------------------
                                   3945 ;Allocation info for local variables in function 'FAT16_FILE_OPEN'
                                   3946 ;------------------------------------------------------------
                                   3947 ;filename                  Allocated to registers r5 r6 r7 
                                   3948 ;filename83                Allocated to stack - _bp +1
                                   3949 ;------------------------------------------------------------
                                   3950 ;	fat.h:634: uint8_t FAT16_FILE_OPEN(char *filename) __reentrant
                                   3951 ;	-----------------------------------------
                                   3952 ;	 function FAT16_FILE_OPEN
                                   3953 ;	-----------------------------------------
      0011F8                       3954 _FAT16_FILE_OPEN:
      0011F8 C0 3C            [24] 3955 	push	_bp
      0011FA E5 81            [12] 3956 	mov	a,sp
      0011FC F5 3C            [12] 3957 	mov	_bp,a
      0011FE 24 0C            [12] 3958 	add	a,#0x0c
      001200 F5 81            [12] 3959 	mov	sp,a
      001202 AD 82            [24] 3960 	mov	r5,dpl
      001204 AE 83            [24] 3961 	mov	r6,dph
      001206 AF F0            [24] 3962 	mov	r7,b
                                   3963 ;	fat.h:640: if(HELPER_filename_to_8dot3filename(filename,filename83)) 
      001208 AC 3C            [24] 3964 	mov	r4,_bp
      00120A 0C               [12] 3965 	inc	r4
      00120B 8C 18            [24] 3966 	mov	_HELPER_filename_to_8dot3filename_PARM_2,r4
      00120D 75 19 00         [24] 3967 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 1),#0x00
      001210 75 1A 40         [24] 3968 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 2),#0x40
      001213 8D 82            [24] 3969 	mov	dpl,r5
      001215 8E 83            [24] 3970 	mov	dph,r6
      001217 8F F0            [24] 3971 	mov	b,r7
      001219 C0 04            [24] 3972 	push	ar4
      00121B 12 0A CF         [24] 3973 	lcall	_HELPER_filename_to_8dot3filename
      00121E E5 82            [12] 3974 	mov	a,dpl
      001220 D0 04            [24] 3975 	pop	ar4
      001222 60 05            [24] 3976 	jz	00102$
                                   3977 ;	fat.h:645: return 1; //invalid filename
      001224 75 82 01         [24] 3978 	mov	dpl,#0x01
      001227 80 61            [24] 3979 	sjmp	00109$
      001229                       3980 00102$:
                                   3981 ;	fat.h:648: FAT16_ROOTENTRY_SCAN_RESET();
      001229 C0 04            [24] 3982 	push	ar4
      00122B 12 11 C3         [24] 3983 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
      00122E D0 04            [24] 3984 	pop	ar4
                                   3985 ;	fat.h:649: while(FAT16_ROOTENTRY_SCAN()==0)
      001230 8C 07            [24] 3986 	mov	ar7,r4
      001232 74 08            [12] 3987 	mov	a,#0x08
      001234 2C               [12] 3988 	add	a,r4
      001235 FE               [12] 3989 	mov	r6,a
      001236                       3990 00106$:
      001236 C0 07            [24] 3991 	push	ar7
      001238 C0 06            [24] 3992 	push	ar6
      00123A 12 11 D5         [24] 3993 	lcall	_FAT16_ROOTENTRY_SCAN
      00123D E5 82            [12] 3994 	mov	a,dpl
      00123F D0 06            [24] 3995 	pop	ar6
      001241 D0 07            [24] 3996 	pop	ar7
                                   3997 ;	fat.h:651: if( HELPER_strncmp(__global_rootEntry.name,filename83,8)==0 && 
      001243 70 42            [24] 3998 	jnz	00108$
      001245 8F 3D            [24] 3999 	mov	_HELPER_strncmp_PARM_2,r7
      001247 F5 3E            [12] 4000 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      001249 75 3F 40         [24] 4001 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      00124C 75 40 08         [24] 4002 	mov	_HELPER_strncmp_PARM_3,#0x08
      00124F 90 00 6A         [24] 4003 	mov	dptr,#___global_rootEntry
      001252 75 F0 40         [24] 4004 	mov	b,#0x40
      001255 C0 07            [24] 4005 	push	ar7
      001257 C0 06            [24] 4006 	push	ar6
      001259 12 09 9F         [24] 4007 	lcall	_HELPER_strncmp
      00125C E5 82            [12] 4008 	mov	a,dpl
      00125E D0 06            [24] 4009 	pop	ar6
      001260 D0 07            [24] 4010 	pop	ar7
                                   4011 ;	fat.h:652: HELPER_strncmp(__global_rootEntry.extension,&filename83[8],3)==0 )
      001262 70 D2            [24] 4012 	jnz	00106$
      001264 8E 3D            [24] 4013 	mov	_HELPER_strncmp_PARM_2,r6
      001266 F5 3E            [12] 4014 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      001268 75 3F 40         [24] 4015 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      00126B 75 40 03         [24] 4016 	mov	_HELPER_strncmp_PARM_3,#0x03
      00126E 90 00 72         [24] 4017 	mov	dptr,#(___global_rootEntry + 0x0008)
      001271 75 F0 40         [24] 4018 	mov	b,#0x40
      001274 C0 07            [24] 4019 	push	ar7
      001276 C0 06            [24] 4020 	push	ar6
      001278 12 09 9F         [24] 4021 	lcall	_HELPER_strncmp
      00127B E5 82            [12] 4022 	mov	a,dpl
      00127D D0 06            [24] 4023 	pop	ar6
      00127F D0 07            [24] 4024 	pop	ar7
                                   4025 ;	fat.h:658: return 0; //file found
      001281 70 B3            [24] 4026 	jnz	00106$
      001283 F5 82            [12] 4027 	mov	dpl,a
      001285 80 03            [24] 4028 	sjmp	00109$
      001287                       4029 00108$:
                                   4030 ;	fat.h:665: return 2; // file not found
      001287 75 82 02         [24] 4031 	mov	dpl,#0x02
      00128A                       4032 00109$:
                                   4033 ;	fat.h:667: }
      00128A 85 3C 81         [24] 4034 	mov	sp,_bp
      00128D D0 3C            [24] 4035 	pop	_bp
      00128F 22               [24] 4036 	ret
                                   4037 ;------------------------------------------------------------
                                   4038 ;Allocation info for local variables in function 'FAT16_GET_NEXT_CLUSTER'
                                   4039 ;------------------------------------------------------------
                                   4040 ;current_cluster           Allocated to registers r6 r7 
                                   4041 ;temp                      Allocated to stack - _bp +8
                                   4042 ;sloc0                     Allocated to stack - _bp +1
                                   4043 ;sloc1                     Allocated to stack - _bp +8
                                   4044 ;sloc2                     Allocated to stack - _bp +10
                                   4045 ;sloc3                     Allocated to stack - _bp +4
                                   4046 ;------------------------------------------------------------
                                   4047 ;	fat.h:670: uint16_t FAT16_GET_NEXT_CLUSTER(uint16_t current_cluster) __reentrant
                                   4048 ;	-----------------------------------------
                                   4049 ;	 function FAT16_GET_NEXT_CLUSTER
                                   4050 ;	-----------------------------------------
      001290                       4051 _FAT16_GET_NEXT_CLUSTER:
      001290 C0 3C            [24] 4052 	push	_bp
      001292 E5 81            [12] 4053 	mov	a,sp
      001294 F5 3C            [12] 4054 	mov	_bp,a
      001296 24 09            [12] 4055 	add	a,#0x09
      001298 F5 81            [12] 4056 	mov	sp,a
      00129A AE 82            [24] 4057 	mov	r6,dpl
      00129C AF 83            [24] 4058 	mov	r7,dph
                                   4059 ;	fat.h:679: SDread(__global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps, (current_cluster*2) % __global_vbr.bps, 2, temp);
      00129E E5 3C            [12] 4060 	mov	a,_bp
      0012A0 24 08            [12] 4061 	add	a,#0x08
      0012A2 F9               [12] 4062 	mov	r1,a
      0012A3 A8 3C            [24] 4063 	mov	r0,_bp
      0012A5 08               [12] 4064 	inc	r0
      0012A6 A6 01            [24] 4065 	mov	@r0,ar1
      0012A8 08               [12] 4066 	inc	r0
      0012A9 76 00            [12] 4067 	mov	@r0,#0x00
      0012AB 08               [12] 4068 	inc	r0
      0012AC 76 40            [12] 4069 	mov	@r0,#0x40
      0012AE EE               [12] 4070 	mov	a,r6
      0012AF 2E               [12] 4071 	add	a,r6
      0012B0 FE               [12] 4072 	mov	r6,a
      0012B1 EF               [12] 4073 	mov	a,r7
      0012B2 33               [12] 4074 	rlc	a
      0012B3 FF               [12] 4075 	mov	r7,a
      0012B4 78 50            [12] 4076 	mov	r0,#(___global_vbr + 0x0006)
      0012B6 86 05            [24] 4077 	mov	ar5,@r0
      0012B8 08               [12] 4078 	inc	r0
      0012B9 86 04            [24] 4079 	mov	ar4,@r0
      0012BB 8D 3D            [24] 4080 	mov	__moduint_PARM_2,r5
      0012BD 8C 3E            [24] 4081 	mov	(__moduint_PARM_2 + 1),r4
      0012BF 8E 82            [24] 4082 	mov	dpl,r6
      0012C1 8F 83            [24] 4083 	mov	dph,r7
      0012C3 C0 07            [24] 4084 	push	ar7
      0012C5 C0 06            [24] 4085 	push	ar6
      0012C7 C0 05            [24] 4086 	push	ar5
      0012C9 C0 04            [24] 4087 	push	ar4
      0012CB C0 01            [24] 4088 	push	ar1
      0012CD 12 1C 37         [24] 4089 	lcall	__moduint
      0012D0 AB 82            [24] 4090 	mov	r3,dpl
      0012D2 AA 83            [24] 4091 	mov	r2,dph
      0012D4 D0 01            [24] 4092 	pop	ar1
      0012D6 D0 04            [24] 4093 	pop	ar4
      0012D8 D0 05            [24] 4094 	pop	ar5
      0012DA D0 06            [24] 4095 	pop	ar6
      0012DC D0 07            [24] 4096 	pop	ar7
      0012DE E5 3C            [12] 4097 	mov	a,_bp
      0012E0 24 04            [12] 4098 	add	a,#0x04
      0012E2 F8               [12] 4099 	mov	r0,a
      0012E3 C0 01            [24] 4100 	push	ar1
      0012E5 79 5D            [12] 4101 	mov	r1,#(___global_vbr + 0x0013)
      0012E7 E7               [12] 4102 	mov	a,@r1
      0012E8 F6               [12] 4103 	mov	@r0,a
      0012E9 09               [12] 4104 	inc	r1
      0012EA E7               [12] 4105 	mov	a,@r1
      0012EB 08               [12] 4106 	inc	r0
      0012EC F6               [12] 4107 	mov	@r0,a
      0012ED 09               [12] 4108 	inc	r1
      0012EE E7               [12] 4109 	mov	a,@r1
      0012EF 08               [12] 4110 	inc	r0
      0012F0 F6               [12] 4111 	mov	@r0,a
      0012F1 09               [12] 4112 	inc	r1
      0012F2 E7               [12] 4113 	mov	a,@r1
      0012F3 08               [12] 4114 	inc	r0
      0012F4 F6               [12] 4115 	mov	@r0,a
      0012F5 D0 01            [24] 4116 	pop	ar1
      0012F7 8D 3D            [24] 4117 	mov	__divuint_PARM_2,r5
      0012F9 8C 3E            [24] 4118 	mov	(__divuint_PARM_2 + 1),r4
      0012FB 8E 82            [24] 4119 	mov	dpl,r6
      0012FD 8F 83            [24] 4120 	mov	dph,r7
      0012FF C0 03            [24] 4121 	push	ar3
      001301 C0 02            [24] 4122 	push	ar2
      001303 C0 01            [24] 4123 	push	ar1
      001305 12 1A EE         [24] 4124 	lcall	__divuint
      001308 AE 82            [24] 4125 	mov	r6,dpl
      00130A AF 83            [24] 4126 	mov	r7,dph
      00130C D0 01            [24] 4127 	pop	ar1
      00130E D0 02            [24] 4128 	pop	ar2
      001310 D0 03            [24] 4129 	pop	ar3
      001312 8E 04            [24] 4130 	mov	ar4,r6
      001314 8F 05            [24] 4131 	mov	ar5,r7
      001316 E4               [12] 4132 	clr	a
      001317 FE               [12] 4133 	mov	r6,a
      001318 FF               [12] 4134 	mov	r7,a
      001319 E5 3C            [12] 4135 	mov	a,_bp
      00131B 24 04            [12] 4136 	add	a,#0x04
      00131D F8               [12] 4137 	mov	r0,a
      00131E EC               [12] 4138 	mov	a,r4
      00131F 26               [12] 4139 	add	a,@r0
      001320 FC               [12] 4140 	mov	r4,a
      001321 ED               [12] 4141 	mov	a,r5
      001322 08               [12] 4142 	inc	r0
      001323 36               [12] 4143 	addc	a,@r0
      001324 FD               [12] 4144 	mov	r5,a
      001325 EE               [12] 4145 	mov	a,r6
      001326 08               [12] 4146 	inc	r0
      001327 36               [12] 4147 	addc	a,@r0
      001328 FE               [12] 4148 	mov	r6,a
      001329 EF               [12] 4149 	mov	a,r7
      00132A 08               [12] 4150 	inc	r0
      00132B 36               [12] 4151 	addc	a,@r0
      00132C FF               [12] 4152 	mov	r7,a
      00132D C0 01            [24] 4153 	push	ar1
      00132F A8 3C            [24] 4154 	mov	r0,_bp
      001331 08               [12] 4155 	inc	r0
      001332 E6               [12] 4156 	mov	a,@r0
      001333 C0 E0            [24] 4157 	push	acc
      001335 08               [12] 4158 	inc	r0
      001336 E6               [12] 4159 	mov	a,@r0
      001337 C0 E0            [24] 4160 	push	acc
      001339 08               [12] 4161 	inc	r0
      00133A E6               [12] 4162 	mov	a,@r0
      00133B C0 E0            [24] 4163 	push	acc
      00133D 74 02            [12] 4164 	mov	a,#0x02
      00133F C0 E0            [24] 4165 	push	acc
      001341 E4               [12] 4166 	clr	a
      001342 C0 E0            [24] 4167 	push	acc
      001344 C0 03            [24] 4168 	push	ar3
      001346 C0 02            [24] 4169 	push	ar2
      001348 8C 82            [24] 4170 	mov	dpl,r4
      00134A 8D 83            [24] 4171 	mov	dph,r5
      00134C 8E F0            [24] 4172 	mov	b,r6
      00134E EF               [12] 4173 	mov	a,r7
      00134F 12 07 47         [24] 4174 	lcall	_SDread
      001352 E5 81            [12] 4175 	mov	a,sp
      001354 24 F9            [12] 4176 	add	a,#0xf9
      001356 F5 81            [12] 4177 	mov	sp,a
      001358 D0 01            [24] 4178 	pop	ar1
                                   4179 ;	fat.h:680: return (uint16_t)temp[1] << 8 | temp[0]; 
      00135A E9               [12] 4180 	mov	a,r1
      00135B 04               [12] 4181 	inc	a
      00135C F8               [12] 4182 	mov	r0,a
      00135D 86 07            [24] 4183 	mov	ar7,@r0
      00135F 8F 06            [24] 4184 	mov	ar6,r7
      001361 7F 00            [12] 4185 	mov	r7,#0x00
      001363 87 05            [24] 4186 	mov	ar5,@r1
      001365 7C 00            [12] 4187 	mov	r4,#0x00
      001367 ED               [12] 4188 	mov	a,r5
      001368 4F               [12] 4189 	orl	a,r7
      001369 F5 82            [12] 4190 	mov	dpl,a
      00136B EC               [12] 4191 	mov	a,r4
      00136C 4E               [12] 4192 	orl	a,r6
      00136D F5 83            [12] 4193 	mov	dph,a
                                   4194 ;	fat.h:686: }
      00136F 85 3C 81         [24] 4195 	mov	sp,_bp
      001372 D0 3C            [24] 4196 	pop	_bp
      001374 22               [24] 4197 	ret
                                   4198 ;------------------------------------------------------------
                                   4199 ;Allocation info for local variables in function 'FAT16_FILE_READ'
                                   4200 ;------------------------------------------------------------
                                   4201 ;dst                       Allocated to stack - _bp -5
                                   4202 ;nbytes                    Allocated to stack - _bp +1
                                   4203 ;current_cluster           Allocated to registers r7 r6 
                                   4204 ;bytes_read_in_current_cluster Allocated to stack - _bp +10
                                   4205 ;bytes_read_in_current_sector Allocated to stack - _bp +12
                                   4206 ;current_sector            Allocated to stack - _bp +14
                                   4207 ;sloc0                     Allocated to stack - _bp +2
                                   4208 ;sloc1                     Allocated to stack - _bp +6
                                   4209 ;------------------------------------------------------------
                                   4210 ;	fat.h:707: uint8_t FAT16_FILE_READ(uint8_t nbytes, uint8_t *dst) __reentrant
                                   4211 ;	-----------------------------------------
                                   4212 ;	 function FAT16_FILE_READ
                                   4213 ;	-----------------------------------------
      001375                       4214 _FAT16_FILE_READ:
      001375 C0 3C            [24] 4215 	push	_bp
      001377 85 81 3C         [24] 4216 	mov	_bp,sp
      00137A C0 82            [24] 4217 	push	dpl
      00137C E5 81            [12] 4218 	mov	a,sp
      00137E 24 10            [12] 4219 	add	a,#0x10
      001380 F5 81            [12] 4220 	mov	sp,a
                                   4221 ;	fat.h:716: if(nbytes==0)
      001382 A8 3C            [24] 4222 	mov	r0,_bp
      001384 08               [12] 4223 	inc	r0
      001385 E6               [12] 4224 	mov	a,@r0
                                   4225 ;	fat.h:718: return 0; //read 0 bytes
      001386 70 05            [24] 4226 	jnz	00102$
      001388 F5 82            [12] 4227 	mov	dpl,a
      00138A 02 15 D8         [24] 4228 	ljmp	00113$
      00138D                       4229 00102$:
                                   4230 ;	fat.h:721: if(nbytes & (nbytes-1))
      00138D A8 3C            [24] 4231 	mov	r0,_bp
      00138F 08               [12] 4232 	inc	r0
      001390 86 05            [24] 4233 	mov	ar5,@r0
      001392 7E 00            [12] 4234 	mov	r6,#0x00
      001394 ED               [12] 4235 	mov	a,r5
      001395 24 FF            [12] 4236 	add	a,#0xff
      001397 FB               [12] 4237 	mov	r3,a
      001398 EE               [12] 4238 	mov	a,r6
      001399 34 FF            [12] 4239 	addc	a,#0xff
      00139B FC               [12] 4240 	mov	r4,a
      00139C EB               [12] 4241 	mov	a,r3
      00139D 52 05            [12] 4242 	anl	ar5,a
      00139F EC               [12] 4243 	mov	a,r4
      0013A0 52 06            [12] 4244 	anl	ar6,a
      0013A2 ED               [12] 4245 	mov	a,r5
      0013A3 4E               [12] 4246 	orl	a,r6
      0013A4 60 06            [24] 4247 	jz	00104$
                                   4248 ;	fat.h:726: return 255; //error
      0013A6 75 82 FF         [24] 4249 	mov	dpl,#0xff
      0013A9 02 15 D8         [24] 4250 	ljmp	00113$
      0013AC                       4251 00104$:
                                   4252 ;	fat.h:729: if(__global_rootEntry.bytes_read == __global_rootEntry.size)
      0013AC A8 3C            [24] 4253 	mov	r0,_bp
      0013AE 08               [12] 4254 	inc	r0
      0013AF 08               [12] 4255 	inc	r0
      0013B0 79 7E            [12] 4256 	mov	r1,#(___global_rootEntry + 0x0014)
      0013B2 E7               [12] 4257 	mov	a,@r1
      0013B3 F6               [12] 4258 	mov	@r0,a
      0013B4 09               [12] 4259 	inc	r1
      0013B5 E7               [12] 4260 	mov	a,@r1
      0013B6 08               [12] 4261 	inc	r0
      0013B7 F6               [12] 4262 	mov	@r0,a
      0013B8 09               [12] 4263 	inc	r1
      0013B9 E7               [12] 4264 	mov	a,@r1
      0013BA 08               [12] 4265 	inc	r0
      0013BB F6               [12] 4266 	mov	@r0,a
      0013BC 09               [12] 4267 	inc	r1
      0013BD E7               [12] 4268 	mov	a,@r1
      0013BE 08               [12] 4269 	inc	r0
      0013BF F6               [12] 4270 	mov	@r0,a
      0013C0 78 78            [12] 4271 	mov	r0,#(___global_rootEntry + 0x000e)
      0013C2 86 02            [24] 4272 	mov	ar2,@r0
      0013C4 08               [12] 4273 	inc	r0
      0013C5 86 05            [24] 4274 	mov	ar5,@r0
      0013C7 08               [12] 4275 	inc	r0
      0013C8 86 06            [24] 4276 	mov	ar6,@r0
      0013CA 08               [12] 4277 	inc	r0
      0013CB 86 07            [24] 4278 	mov	ar7,@r0
      0013CD A8 3C            [24] 4279 	mov	r0,_bp
      0013CF 08               [12] 4280 	inc	r0
      0013D0 08               [12] 4281 	inc	r0
      0013D1 E6               [12] 4282 	mov	a,@r0
      0013D2 B5 02 11         [24] 4283 	cjne	a,ar2,00141$
      0013D5 08               [12] 4284 	inc	r0
      0013D6 E6               [12] 4285 	mov	a,@r0
      0013D7 B5 05 0C         [24] 4286 	cjne	a,ar5,00141$
      0013DA 08               [12] 4287 	inc	r0
      0013DB E6               [12] 4288 	mov	a,@r0
      0013DC B5 06 07         [24] 4289 	cjne	a,ar6,00141$
      0013DF 08               [12] 4290 	inc	r0
      0013E0 E6               [12] 4291 	mov	a,@r0
      0013E1 B5 07 02         [24] 4292 	cjne	a,ar7,00141$
      0013E4 80 02            [24] 4293 	sjmp	00142$
      0013E6                       4294 00141$:
      0013E6 80 06            [24] 4295 	sjmp	00111$
      0013E8                       4296 00142$:
                                   4297 ;	fat.h:731: return 0; //end of file - return number of bytes read
      0013E8 75 82 00         [24] 4298 	mov	dpl,#0x00
      0013EB 02 15 D8         [24] 4299 	ljmp	00113$
      0013EE                       4300 00111$:
                                   4301 ;	fat.h:736: bytes_read_in_current_cluster = __global_rootEntry.bytes_read % __global_vbr.bpc;
      0013EE 78 59            [12] 4302 	mov	r0,#(___global_vbr + 0x000f)
      0013F0 86 3D            [24] 4303 	mov	__modulong_PARM_2,@r0
      0013F2 08               [12] 4304 	inc	r0
      0013F3 86 3E            [24] 4305 	mov	(__modulong_PARM_2 + 1),@r0
      0013F5 08               [12] 4306 	inc	r0
      0013F6 86 3F            [24] 4307 	mov	(__modulong_PARM_2 + 2),@r0
      0013F8 08               [12] 4308 	inc	r0
      0013F9 86 40            [24] 4309 	mov	(__modulong_PARM_2 + 3),@r0
      0013FB A8 3C            [24] 4310 	mov	r0,_bp
      0013FD 08               [12] 4311 	inc	r0
      0013FE 08               [12] 4312 	inc	r0
      0013FF 86 82            [24] 4313 	mov	dpl,@r0
      001401 08               [12] 4314 	inc	r0
      001402 86 83            [24] 4315 	mov	dph,@r0
      001404 08               [12] 4316 	inc	r0
      001405 86 F0            [24] 4317 	mov	b,@r0
      001407 08               [12] 4318 	inc	r0
      001408 E6               [12] 4319 	mov	a,@r0
      001409 12 1B 17         [24] 4320 	lcall	__modulong
      00140C AB 82            [24] 4321 	mov	r3,dpl
      00140E AC 83            [24] 4322 	mov	r4,dph
      001410 E5 3C            [12] 4323 	mov	a,_bp
      001412 24 0A            [12] 4324 	add	a,#0x0a
      001414 F8               [12] 4325 	mov	r0,a
      001415 A6 03            [24] 4326 	mov	@r0,ar3
      001417 08               [12] 4327 	inc	r0
      001418 A6 04            [24] 4328 	mov	@r0,ar4
                                   4329 ;	fat.h:780: if(__global_rootEntry.bytes_read!=0 && bytes_read_in_current_cluster==0)
      00141A A8 3C            [24] 4330 	mov	r0,_bp
      00141C 08               [12] 4331 	inc	r0
      00141D 08               [12] 4332 	inc	r0
      00141E E6               [12] 4333 	mov	a,@r0
      00141F 08               [12] 4334 	inc	r0
      001420 46               [12] 4335 	orl	a,@r0
      001421 08               [12] 4336 	inc	r0
      001422 46               [12] 4337 	orl	a,@r0
      001423 08               [12] 4338 	inc	r0
      001424 46               [12] 4339 	orl	a,@r0
      001425 60 1F            [24] 4340 	jz	00106$
      001427 E5 3C            [12] 4341 	mov	a,_bp
      001429 24 0A            [12] 4342 	add	a,#0x0a
      00142B F8               [12] 4343 	mov	r0,a
      00142C E6               [12] 4344 	mov	a,@r0
      00142D 08               [12] 4345 	inc	r0
      00142E 46               [12] 4346 	orl	a,@r0
      00142F 70 15            [24] 4347 	jnz	00106$
                                   4348 ;	fat.h:782: __global_rootEntry.startCluster = FAT16_GET_NEXT_CLUSTER(__global_rootEntry.startCluster);
      001431 78 76            [12] 4349 	mov	r0,#(___global_rootEntry + 0x000c)
      001433 86 82            [24] 4350 	mov	dpl,@r0
      001435 08               [12] 4351 	inc	r0
      001436 86 83            [24] 4352 	mov	dph,@r0
      001438 12 12 90         [24] 4353 	lcall	_FAT16_GET_NEXT_CLUSTER
      00143B E5 82            [12] 4354 	mov	a,dpl
      00143D 85 83 F0         [24] 4355 	mov	b,dph
      001440 78 76            [12] 4356 	mov	r0,#(___global_rootEntry + 0x000c)
      001442 F6               [12] 4357 	mov	@r0,a
      001443 08               [12] 4358 	inc	r0
      001444 A6 F0            [24] 4359 	mov	@r0,b
      001446                       4360 00106$:
                                   4361 ;	fat.h:786: current_cluster = __global_rootEntry.startCluster;
      001446 78 76            [12] 4362 	mov	r0,#(___global_rootEntry + 0x000c)
      001448 86 07            [24] 4363 	mov	ar7,@r0
      00144A 08               [12] 4364 	inc	r0
      00144B 86 06            [24] 4365 	mov	ar6,@r0
                                   4366 ;	fat.h:791: current_sector =    __global_vbr.addr_data_start 						//start of data
      00144D A8 3C            [24] 4367 	mov	r0,_bp
      00144F 08               [12] 4368 	inc	r0
      001450 08               [12] 4369 	inc	r0
      001451 79 65            [12] 4370 	mov	r1,#(___global_vbr + 0x001b)
      001453 E7               [12] 4371 	mov	a,@r1
      001454 F6               [12] 4372 	mov	@r0,a
      001455 09               [12] 4373 	inc	r1
      001456 E7               [12] 4374 	mov	a,@r1
      001457 08               [12] 4375 	inc	r0
      001458 F6               [12] 4376 	mov	@r0,a
      001459 09               [12] 4377 	inc	r1
      00145A E7               [12] 4378 	mov	a,@r1
      00145B 08               [12] 4379 	inc	r0
      00145C F6               [12] 4380 	mov	@r0,a
      00145D 09               [12] 4381 	inc	r1
      00145E E7               [12] 4382 	mov	a,@r1
      00145F 08               [12] 4383 	inc	r0
      001460 F6               [12] 4384 	mov	@r0,a
                                   4385 ;	fat.h:792: + (current_cluster-2) * __global_vbr.spc 				//skip to the start of current cluster
      001461 EF               [12] 4386 	mov	a,r7
      001462 24 FE            [12] 4387 	add	a,#0xfe
      001464 F5 82            [12] 4388 	mov	dpl,a
      001466 EE               [12] 4389 	mov	a,r6
      001467 34 FF            [12] 4390 	addc	a,#0xff
      001469 F5 83            [12] 4391 	mov	dph,a
      00146B 78 52            [12] 4392 	mov	r0,#(___global_vbr + 0x0008)
      00146D 86 03            [24] 4393 	mov	ar3,@r0
      00146F 8B 3D            [24] 4394 	mov	__mulint_PARM_2,r3
      001471 75 3E 00         [24] 4395 	mov	(__mulint_PARM_2 + 1),#0x00
      001474 12 1C 1A         [24] 4396 	lcall	__mulint
      001477 AB 82            [24] 4397 	mov	r3,dpl
      001479 AF 83            [24] 4398 	mov	r7,dph
      00147B 8F 05            [24] 4399 	mov	ar5,r7
      00147D 7E 00            [12] 4400 	mov	r6,#0x00
      00147F 7F 00            [12] 4401 	mov	r7,#0x00
      001481 A8 3C            [24] 4402 	mov	r0,_bp
      001483 08               [12] 4403 	inc	r0
      001484 08               [12] 4404 	inc	r0
      001485 EB               [12] 4405 	mov	a,r3
      001486 26               [12] 4406 	add	a,@r0
      001487 F6               [12] 4407 	mov	@r0,a
      001488 ED               [12] 4408 	mov	a,r5
      001489 08               [12] 4409 	inc	r0
      00148A 36               [12] 4410 	addc	a,@r0
      00148B F6               [12] 4411 	mov	@r0,a
      00148C EE               [12] 4412 	mov	a,r6
      00148D 08               [12] 4413 	inc	r0
      00148E 36               [12] 4414 	addc	a,@r0
      00148F F6               [12] 4415 	mov	@r0,a
      001490 EF               [12] 4416 	mov	a,r7
      001491 08               [12] 4417 	inc	r0
      001492 36               [12] 4418 	addc	a,@r0
      001493 F6               [12] 4419 	mov	@r0,a
                                   4420 ;	fat.h:793: + bytes_read_in_current_cluster/__global_vbr.bps;	//skip sectors already read in current cluster
      001494 78 50            [12] 4421 	mov	r0,#(___global_vbr + 0x0006)
      001496 86 02            [24] 4422 	mov	ar2,@r0
      001498 08               [12] 4423 	inc	r0
      001499 86 04            [24] 4424 	mov	ar4,@r0
      00149B 8A 3D            [24] 4425 	mov	__divuint_PARM_2,r2
      00149D 8C 3E            [24] 4426 	mov	(__divuint_PARM_2 + 1),r4
      00149F E5 3C            [12] 4427 	mov	a,_bp
      0014A1 24 0A            [12] 4428 	add	a,#0x0a
      0014A3 F8               [12] 4429 	mov	r0,a
      0014A4 86 82            [24] 4430 	mov	dpl,@r0
      0014A6 08               [12] 4431 	inc	r0
      0014A7 86 83            [24] 4432 	mov	dph,@r0
      0014A9 C0 04            [24] 4433 	push	ar4
      0014AB C0 02            [24] 4434 	push	ar2
      0014AD 12 1A EE         [24] 4435 	lcall	__divuint
      0014B0 AE 82            [24] 4436 	mov	r6,dpl
      0014B2 AF 83            [24] 4437 	mov	r7,dph
      0014B4 D0 02            [24] 4438 	pop	ar2
      0014B6 D0 04            [24] 4439 	pop	ar4
      0014B8 7D 00            [12] 4440 	mov	r5,#0x00
      0014BA 7B 00            [12] 4441 	mov	r3,#0x00
      0014BC A8 3C            [24] 4442 	mov	r0,_bp
      0014BE 08               [12] 4443 	inc	r0
      0014BF 08               [12] 4444 	inc	r0
      0014C0 EE               [12] 4445 	mov	a,r6
      0014C1 26               [12] 4446 	add	a,@r0
      0014C2 FE               [12] 4447 	mov	r6,a
      0014C3 EF               [12] 4448 	mov	a,r7
      0014C4 08               [12] 4449 	inc	r0
      0014C5 36               [12] 4450 	addc	a,@r0
      0014C6 FF               [12] 4451 	mov	r7,a
      0014C7 ED               [12] 4452 	mov	a,r5
      0014C8 08               [12] 4453 	inc	r0
      0014C9 36               [12] 4454 	addc	a,@r0
      0014CA FD               [12] 4455 	mov	r5,a
      0014CB EB               [12] 4456 	mov	a,r3
      0014CC 08               [12] 4457 	inc	r0
      0014CD 36               [12] 4458 	addc	a,@r0
      0014CE FB               [12] 4459 	mov	r3,a
      0014CF E5 3C            [12] 4460 	mov	a,_bp
      0014D1 24 0E            [12] 4461 	add	a,#0x0e
      0014D3 F8               [12] 4462 	mov	r0,a
      0014D4 A6 06            [24] 4463 	mov	@r0,ar6
      0014D6 08               [12] 4464 	inc	r0
      0014D7 A6 07            [24] 4465 	mov	@r0,ar7
      0014D9 08               [12] 4466 	inc	r0
      0014DA A6 05            [24] 4467 	mov	@r0,ar5
      0014DC 08               [12] 4468 	inc	r0
      0014DD A6 03            [24] 4469 	mov	@r0,ar3
                                   4470 ;	fat.h:796: bytes_read_in_current_sector = bytes_read_in_current_cluster % __global_vbr.bps;
      0014DF 8A 3D            [24] 4471 	mov	__moduint_PARM_2,r2
      0014E1 8C 3E            [24] 4472 	mov	(__moduint_PARM_2 + 1),r4
      0014E3 E5 3C            [12] 4473 	mov	a,_bp
      0014E5 24 0A            [12] 4474 	add	a,#0x0a
      0014E7 F8               [12] 4475 	mov	r0,a
      0014E8 86 82            [24] 4476 	mov	dpl,@r0
      0014EA 08               [12] 4477 	inc	r0
      0014EB 86 83            [24] 4478 	mov	dph,@r0
      0014ED 12 1C 37         [24] 4479 	lcall	__moduint
      0014F0 C8               [12] 4480 	xch	a,r0
      0014F1 E5 3C            [12] 4481 	mov	a,_bp
      0014F3 24 0C            [12] 4482 	add	a,#0x0c
      0014F5 C8               [12] 4483 	xch	a,r0
      0014F6 A6 82            [24] 4484 	mov	@r0,dpl
      0014F8 08               [12] 4485 	inc	r0
      0014F9 A6 83            [24] 4486 	mov	@r0,dph
                                   4487 ;	fat.h:800: if(__global_rootEntry.bytes_read + nbytes > __global_rootEntry.size )
      0014FB A8 3C            [24] 4488 	mov	r0,_bp
      0014FD 08               [12] 4489 	inc	r0
      0014FE 08               [12] 4490 	inc	r0
      0014FF 79 7E            [12] 4491 	mov	r1,#(___global_rootEntry + 0x0014)
      001501 E7               [12] 4492 	mov	a,@r1
      001502 F6               [12] 4493 	mov	@r0,a
      001503 09               [12] 4494 	inc	r1
      001504 E7               [12] 4495 	mov	a,@r1
      001505 08               [12] 4496 	inc	r0
      001506 F6               [12] 4497 	mov	@r0,a
      001507 09               [12] 4498 	inc	r1
      001508 E7               [12] 4499 	mov	a,@r1
      001509 08               [12] 4500 	inc	r0
      00150A F6               [12] 4501 	mov	@r0,a
      00150B 09               [12] 4502 	inc	r1
      00150C E7               [12] 4503 	mov	a,@r1
      00150D 08               [12] 4504 	inc	r0
      00150E F6               [12] 4505 	mov	@r0,a
      00150F A8 3C            [24] 4506 	mov	r0,_bp
      001511 08               [12] 4507 	inc	r0
      001512 86 03            [24] 4508 	mov	ar3,@r0
      001514 7D 00            [12] 4509 	mov	r5,#0x00
      001516 7E 00            [12] 4510 	mov	r6,#0x00
      001518 7F 00            [12] 4511 	mov	r7,#0x00
      00151A A8 3C            [24] 4512 	mov	r0,_bp
      00151C 08               [12] 4513 	inc	r0
      00151D 08               [12] 4514 	inc	r0
      00151E EB               [12] 4515 	mov	a,r3
      00151F 26               [12] 4516 	add	a,@r0
      001520 FB               [12] 4517 	mov	r3,a
      001521 ED               [12] 4518 	mov	a,r5
      001522 08               [12] 4519 	inc	r0
      001523 36               [12] 4520 	addc	a,@r0
      001524 FD               [12] 4521 	mov	r5,a
      001525 EE               [12] 4522 	mov	a,r6
      001526 08               [12] 4523 	inc	r0
      001527 36               [12] 4524 	addc	a,@r0
      001528 FE               [12] 4525 	mov	r6,a
      001529 EF               [12] 4526 	mov	a,r7
      00152A 08               [12] 4527 	inc	r0
      00152B 36               [12] 4528 	addc	a,@r0
      00152C FF               [12] 4529 	mov	r7,a
      00152D E5 3C            [12] 4530 	mov	a,_bp
      00152F 24 06            [12] 4531 	add	a,#0x06
      001531 F8               [12] 4532 	mov	r0,a
      001532 79 78            [12] 4533 	mov	r1,#(___global_rootEntry + 0x000e)
      001534 E7               [12] 4534 	mov	a,@r1
      001535 F6               [12] 4535 	mov	@r0,a
      001536 09               [12] 4536 	inc	r1
      001537 E7               [12] 4537 	mov	a,@r1
      001538 08               [12] 4538 	inc	r0
      001539 F6               [12] 4539 	mov	@r0,a
      00153A 09               [12] 4540 	inc	r1
      00153B E7               [12] 4541 	mov	a,@r1
      00153C 08               [12] 4542 	inc	r0
      00153D F6               [12] 4543 	mov	@r0,a
      00153E 09               [12] 4544 	inc	r1
      00153F E7               [12] 4545 	mov	a,@r1
      001540 08               [12] 4546 	inc	r0
      001541 F6               [12] 4547 	mov	@r0,a
      001542 E5 3C            [12] 4548 	mov	a,_bp
      001544 24 06            [12] 4549 	add	a,#0x06
      001546 F8               [12] 4550 	mov	r0,a
      001547 C3               [12] 4551 	clr	c
      001548 E6               [12] 4552 	mov	a,@r0
      001549 9B               [12] 4553 	subb	a,r3
      00154A 08               [12] 4554 	inc	r0
      00154B E6               [12] 4555 	mov	a,@r0
      00154C 9D               [12] 4556 	subb	a,r5
      00154D 08               [12] 4557 	inc	r0
      00154E E6               [12] 4558 	mov	a,@r0
      00154F 9E               [12] 4559 	subb	a,r6
      001550 08               [12] 4560 	inc	r0
      001551 E6               [12] 4561 	mov	a,@r0
      001552 9F               [12] 4562 	subb	a,r7
      001553 50 14            [24] 4563 	jnc	00109$
                                   4564 ;	fat.h:802: nbytes = __global_rootEntry.size - __global_rootEntry.bytes_read;//;
      001555 E5 3C            [12] 4565 	mov	a,_bp
      001557 24 06            [12] 4566 	add	a,#0x06
      001559 F8               [12] 4567 	mov	r0,a
      00155A 86 07            [24] 4568 	mov	ar7,@r0
      00155C A8 3C            [24] 4569 	mov	r0,_bp
      00155E 08               [12] 4570 	inc	r0
      00155F 08               [12] 4571 	inc	r0
      001560 86 02            [24] 4572 	mov	ar2,@r0
      001562 A8 3C            [24] 4573 	mov	r0,_bp
      001564 08               [12] 4574 	inc	r0
      001565 EF               [12] 4575 	mov	a,r7
      001566 C3               [12] 4576 	clr	c
      001567 9A               [12] 4577 	subb	a,r2
      001568 F6               [12] 4578 	mov	@r0,a
      001569                       4579 00109$:
                                   4580 ;	fat.h:821: __global_rootEntry.bytes_read += nbytes;
      001569 A8 3C            [24] 4581 	mov	r0,_bp
      00156B 08               [12] 4582 	inc	r0
      00156C 86 04            [24] 4583 	mov	ar4,@r0
      00156E 7D 00            [12] 4584 	mov	r5,#0x00
      001570 7E 00            [12] 4585 	mov	r6,#0x00
      001572 7F 00            [12] 4586 	mov	r7,#0x00
      001574 A8 3C            [24] 4587 	mov	r0,_bp
      001576 08               [12] 4588 	inc	r0
      001577 08               [12] 4589 	inc	r0
      001578 EC               [12] 4590 	mov	a,r4
      001579 26               [12] 4591 	add	a,@r0
      00157A FC               [12] 4592 	mov	r4,a
      00157B ED               [12] 4593 	mov	a,r5
      00157C 08               [12] 4594 	inc	r0
      00157D 36               [12] 4595 	addc	a,@r0
      00157E FD               [12] 4596 	mov	r5,a
      00157F EE               [12] 4597 	mov	a,r6
      001580 08               [12] 4598 	inc	r0
      001581 36               [12] 4599 	addc	a,@r0
      001582 FE               [12] 4600 	mov	r6,a
      001583 EF               [12] 4601 	mov	a,r7
      001584 08               [12] 4602 	inc	r0
      001585 36               [12] 4603 	addc	a,@r0
      001586 FF               [12] 4604 	mov	r7,a
      001587 78 7E            [12] 4605 	mov	r0,#(___global_rootEntry + 0x0014)
      001589 A6 04            [24] 4606 	mov	@r0,ar4
      00158B 08               [12] 4607 	inc	r0
      00158C A6 05            [24] 4608 	mov	@r0,ar5
      00158E 08               [12] 4609 	inc	r0
      00158F A6 06            [24] 4610 	mov	@r0,ar6
      001591 08               [12] 4611 	inc	r0
      001592 A6 07            [24] 4612 	mov	@r0,ar7
                                   4613 ;	fat.h:824: SDread(current_sector,bytes_read_in_current_sector,nbytes,dst);
      001594 A8 3C            [24] 4614 	mov	r0,_bp
      001596 08               [12] 4615 	inc	r0
      001597 86 06            [24] 4616 	mov	ar6,@r0
      001599 7F 00            [12] 4617 	mov	r7,#0x00
      00159B E5 3C            [12] 4618 	mov	a,_bp
      00159D 24 FB            [12] 4619 	add	a,#0xfb
      00159F F8               [12] 4620 	mov	r0,a
      0015A0 E6               [12] 4621 	mov	a,@r0
      0015A1 C0 E0            [24] 4622 	push	acc
      0015A3 08               [12] 4623 	inc	r0
      0015A4 E6               [12] 4624 	mov	a,@r0
      0015A5 C0 E0            [24] 4625 	push	acc
      0015A7 08               [12] 4626 	inc	r0
      0015A8 E6               [12] 4627 	mov	a,@r0
      0015A9 C0 E0            [24] 4628 	push	acc
      0015AB C0 06            [24] 4629 	push	ar6
      0015AD C0 07            [24] 4630 	push	ar7
      0015AF E5 3C            [12] 4631 	mov	a,_bp
      0015B1 24 0C            [12] 4632 	add	a,#0x0c
      0015B3 F8               [12] 4633 	mov	r0,a
      0015B4 E6               [12] 4634 	mov	a,@r0
      0015B5 C0 E0            [24] 4635 	push	acc
      0015B7 08               [12] 4636 	inc	r0
      0015B8 E6               [12] 4637 	mov	a,@r0
      0015B9 C0 E0            [24] 4638 	push	acc
      0015BB E5 3C            [12] 4639 	mov	a,_bp
      0015BD 24 0E            [12] 4640 	add	a,#0x0e
      0015BF F8               [12] 4641 	mov	r0,a
      0015C0 86 82            [24] 4642 	mov	dpl,@r0
      0015C2 08               [12] 4643 	inc	r0
      0015C3 86 83            [24] 4644 	mov	dph,@r0
      0015C5 08               [12] 4645 	inc	r0
      0015C6 86 F0            [24] 4646 	mov	b,@r0
      0015C8 08               [12] 4647 	inc	r0
      0015C9 E6               [12] 4648 	mov	a,@r0
      0015CA 12 07 47         [24] 4649 	lcall	_SDread
      0015CD E5 81            [12] 4650 	mov	a,sp
      0015CF 24 F9            [12] 4651 	add	a,#0xf9
      0015D1 F5 81            [12] 4652 	mov	sp,a
                                   4653 ;	fat.h:829: return nbytes;
      0015D3 A8 3C            [24] 4654 	mov	r0,_bp
      0015D5 08               [12] 4655 	inc	r0
      0015D6 86 82            [24] 4656 	mov	dpl,@r0
      0015D8                       4657 00113$:
                                   4658 ;	fat.h:831: }
      0015D8 85 3C 81         [24] 4659 	mov	sp,_bp
      0015DB D0 3C            [24] 4660 	pop	_bp
      0015DD 22               [24] 4661 	ret
                                   4662 ;------------------------------------------------------------
                                   4663 ;Allocation info for local variables in function 'FAT16_FILE_CAT'
                                   4664 ;------------------------------------------------------------
                                   4665 ;filename                  Allocated to registers r5 r6 r7 
                                   4666 ;temp                      Allocated to stack - _bp +1
                                   4667 ;resp                      Allocated to registers r6 
                                   4668 ;i                         Allocated to registers r5 
                                   4669 ;------------------------------------------------------------
                                   4670 ;	fat.h:833: void FAT16_FILE_CAT(uint8_t *filename) __reentrant
                                   4671 ;	-----------------------------------------
                                   4672 ;	 function FAT16_FILE_CAT
                                   4673 ;	-----------------------------------------
      0015DE                       4674 _FAT16_FILE_CAT:
      0015DE C0 3C            [24] 4675 	push	_bp
      0015E0 E5 81            [12] 4676 	mov	a,sp
      0015E2 F5 3C            [12] 4677 	mov	_bp,a
      0015E4 24 08            [12] 4678 	add	a,#0x08
      0015E6 F5 81            [12] 4679 	mov	sp,a
                                   4680 ;	fat.h:840: if(FAT16_FILE_OPEN(filename))
      0015E8 12 11 F8         [24] 4681 	lcall	_FAT16_FILE_OPEN
      0015EB E5 82            [12] 4682 	mov	a,dpl
      0015ED 60 0B            [24] 4683 	jz	00115$
                                   4684 ;	fat.h:842: UartPrint("FILE NOT FOUND\n.");
      0015EF 90 1D C5         [24] 4685 	mov	dptr,#___str_7
      0015F2 75 F0 80         [24] 4686 	mov	b,#0x80
      0015F5 12 01 84         [24] 4687 	lcall	_UartPrint
                                   4688 ;	fat.h:843: return;
                                   4689 ;	fat.h:846: do
      0015F8 80 42            [24] 4690 	sjmp	00110$
      0015FA                       4691 00115$:
      0015FA AF 3C            [24] 4692 	mov	r7,_bp
      0015FC 0F               [12] 4693 	inc	r7
      0015FD                       4694 00104$:
                                   4695 ;	fat.h:848: resp=FAT16_FILE_READ(FILE_CAT_BUFFER_SIZE,temp);
      0015FD 8F 04            [24] 4696 	mov	ar4,r7
      0015FF 7D 00            [12] 4697 	mov	r5,#0x00
      001601 7E 40            [12] 4698 	mov	r6,#0x40
      001603 C0 07            [24] 4699 	push	ar7
      001605 C0 04            [24] 4700 	push	ar4
      001607 C0 05            [24] 4701 	push	ar5
      001609 C0 06            [24] 4702 	push	ar6
      00160B 75 82 08         [24] 4703 	mov	dpl,#0x08
      00160E 12 13 75         [24] 4704 	lcall	_FAT16_FILE_READ
      001611 AE 82            [24] 4705 	mov	r6,dpl
      001613 15 81            [12] 4706 	dec	sp
      001615 15 81            [12] 4707 	dec	sp
      001617 15 81            [12] 4708 	dec	sp
      001619 D0 07            [24] 4709 	pop	ar7
                                   4710 ;	fat.h:849: for(uint8_t i=0;i<resp;i++) UartWrite(temp[i]);
      00161B 7D 00            [12] 4711 	mov	r5,#0x00
      00161D                       4712 00108$:
      00161D C3               [12] 4713 	clr	c
      00161E ED               [12] 4714 	mov	a,r5
      00161F 9E               [12] 4715 	subb	a,r6
      001620 50 17            [24] 4716 	jnc	00105$
      001622 ED               [12] 4717 	mov	a,r5
      001623 2F               [12] 4718 	add	a,r7
      001624 F9               [12] 4719 	mov	r1,a
      001625 87 82            [24] 4720 	mov	dpl,@r1
      001627 C0 07            [24] 4721 	push	ar7
      001629 C0 06            [24] 4722 	push	ar6
      00162B C0 05            [24] 4723 	push	ar5
      00162D 12 00 FE         [24] 4724 	lcall	_UartWrite
      001630 D0 05            [24] 4725 	pop	ar5
      001632 D0 06            [24] 4726 	pop	ar6
      001634 D0 07            [24] 4727 	pop	ar7
      001636 0D               [12] 4728 	inc	r5
      001637 80 E4            [24] 4729 	sjmp	00108$
      001639                       4730 00105$:
                                   4731 ;	fat.h:852: } while (resp!=0);
      001639 EE               [12] 4732 	mov	a,r6
      00163A 70 C1            [24] 4733 	jnz	00104$
                                   4734 ;	fat.h:854: return;
      00163C                       4735 00110$:
                                   4736 ;	fat.h:856: }
      00163C 85 3C 81         [24] 4737 	mov	sp,_bp
      00163F D0 3C            [24] 4738 	pop	_bp
      001641 22               [24] 4739 	ret
                                   4740 ;------------------------------------------------------------
                                   4741 ;Allocation info for local variables in function 'SL_disable_write_protection'
                                   4742 ;------------------------------------------------------------
                                   4743 ;xram_addr                 Allocated to registers 
                                   4744 ;------------------------------------------------------------
                                   4745 ;	serialloader.h:24: void SL_disable_write_protection()
                                   4746 ;	-----------------------------------------
                                   4747 ;	 function SL_disable_write_protection
                                   4748 ;	-----------------------------------------
      001642                       4749 _SL_disable_write_protection:
                                   4750 ;	serialloader.h:29: *(xram_addr) = 0xAA;
      001642 90 15 55         [24] 4751 	mov	dptr,#0x1555
      001645 74 AA            [12] 4752 	mov	a,#0xaa
      001647 F0               [24] 4753 	movx	@dptr,a
                                   4754 ;	serialloader.h:31: *(xram_addr) = 0x55;
      001648 90 0A AA         [24] 4755 	mov	dptr,#0x0aaa
      00164B F4               [12] 4756 	cpl	a
      00164C F0               [24] 4757 	movx	@dptr,a
                                   4758 ;	serialloader.h:33: *(xram_addr) = 0x80;
                                   4759 ;	serialloader.h:37: *(xram_addr) = 0xAA;
      00164D 90 15 55         [24] 4760 	mov	dptr,#0x1555
      001650 74 80            [12] 4761 	mov	a,#0x80
      001652 F0               [24] 4762 	movx	@dptr,a
      001653 74 AA            [12] 4763 	mov	a,#0xaa
      001655 F0               [24] 4764 	movx	@dptr,a
                                   4765 ;	serialloader.h:39: *(xram_addr) = 0x55;
      001656 90 0A AA         [24] 4766 	mov	dptr,#0x0aaa
      001659 F4               [12] 4767 	cpl	a
      00165A F0               [24] 4768 	movx	@dptr,a
                                   4769 ;	serialloader.h:41: *(xram_addr) = 0x20;
      00165B 90 15 55         [24] 4770 	mov	dptr,#0x1555
      00165E 74 20            [12] 4771 	mov	a,#0x20
      001660 F0               [24] 4772 	movx	@dptr,a
                                   4773 ;	serialloader.h:43: UartWrite('D'); //ack
      001661 75 82 44         [24] 4774 	mov	dpl,#0x44
      001664 12 00 FE         [24] 4775 	lcall	_UartWrite
                                   4776 ;	serialloader.h:45: EEPROM_WRITE_PROTECTION=0; //change flag
      001667 75 2B 00         [24] 4777 	mov	_EEPROM_WRITE_PROTECTION,#0x00
                                   4778 ;	serialloader.h:46: }
      00166A 22               [24] 4779 	ret
                                   4780 ;------------------------------------------------------------
                                   4781 ;Allocation info for local variables in function 'SL_enable_write_protection'
                                   4782 ;------------------------------------------------------------
                                   4783 ;	serialloader.h:48: void SL_enable_write_protection()
                                   4784 ;	-----------------------------------------
                                   4785 ;	 function SL_enable_write_protection
                                   4786 ;	-----------------------------------------
      00166B                       4787 _SL_enable_write_protection:
                                   4788 ;	serialloader.h:50: EEPROM_WRITE_PROTECTION=1; //change flag
      00166B 75 2B 01         [24] 4789 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                   4790 ;	serialloader.h:51: UartWrite('E'); 
      00166E 75 82 45         [24] 4791 	mov	dpl,#0x45
                                   4792 ;	serialloader.h:52: }
      001671 02 00 FE         [24] 4793 	ljmp	_UartWrite
                                   4794 ;------------------------------------------------------------
                                   4795 ;Allocation info for local variables in function 'SL_write'
                                   4796 ;------------------------------------------------------------
                                   4797 ;data                      Allocated to registers r5 
                                   4798 ;addr                      Allocated to registers r7 r6 
                                   4799 ;xram_addr                 Allocated to registers 
                                   4800 ;------------------------------------------------------------
                                   4801 ;	serialloader.h:54: void SL_write()
                                   4802 ;	-----------------------------------------
                                   4803 ;	 function SL_write
                                   4804 ;	-----------------------------------------
      001674                       4805 _SL_write:
                                   4806 ;	serialloader.h:60: while(UartReadReady()==0); //wait till we rcv data
      001674                       4807 00101$:
      001674 12 00 EA         [24] 4808 	lcall	_UartReadReady
      001677 E5 82            [12] 4809 	mov	a,dpl
      001679 60 F9            [24] 4810 	jz	00101$
                                   4811 ;	serialloader.h:63: addr = UartRead(); //msb
      00167B 12 00 F5         [24] 4812 	lcall	_UartRead
                                   4813 ;	serialloader.h:64: addr = addr << 8;
      00167E AE 82            [24] 4814 	mov	r6,dpl
      001680 7F 00            [12] 4815 	mov	r7,#0x00
                                   4816 ;	serialloader.h:65: addr |= UartRead(); //lsb
      001682 C0 07            [24] 4817 	push	ar7
      001684 C0 06            [24] 4818 	push	ar6
      001686 12 00 F5         [24] 4819 	lcall	_UartRead
      001689 AD 82            [24] 4820 	mov	r5,dpl
      00168B D0 06            [24] 4821 	pop	ar6
      00168D D0 07            [24] 4822 	pop	ar7
      00168F 7C 00            [12] 4823 	mov	r4,#0x00
      001691 ED               [12] 4824 	mov	a,r5
      001692 42 07            [12] 4825 	orl	ar7,a
      001694 EC               [12] 4826 	mov	a,r4
      001695 42 06            [12] 4827 	orl	ar6,a
                                   4828 ;	serialloader.h:67: data = UartRead(); //read data
      001697 C0 07            [24] 4829 	push	ar7
      001699 C0 06            [24] 4830 	push	ar6
      00169B 12 00 F5         [24] 4831 	lcall	_UartRead
      00169E AD 82            [24] 4832 	mov	r5,dpl
      0016A0 D0 06            [24] 4833 	pop	ar6
      0016A2 D0 07            [24] 4834 	pop	ar7
                                   4835 ;	serialloader.h:69: if(EEPROM_WRITE_PROTECTION)
      0016A4 E5 2B            [12] 4836 	mov	a,_EEPROM_WRITE_PROTECTION
      0016A6 60 11            [24] 4837 	jz	00105$
                                   4838 ;	serialloader.h:73: *(xram_addr) = 0xAA;
      0016A8 90 15 55         [24] 4839 	mov	dptr,#0x1555
      0016AB 74 AA            [12] 4840 	mov	a,#0xaa
      0016AD F0               [24] 4841 	movx	@dptr,a
                                   4842 ;	serialloader.h:75: *(xram_addr) = 0x55;
      0016AE 90 0A AA         [24] 4843 	mov	dptr,#0x0aaa
      0016B1 F4               [12] 4844 	cpl	a
      0016B2 F0               [24] 4845 	movx	@dptr,a
                                   4846 ;	serialloader.h:77: *(xram_addr) = 0xA0;
      0016B3 90 15 55         [24] 4847 	mov	dptr,#0x1555
      0016B6 74 A0            [12] 4848 	mov	a,#0xa0
      0016B8 F0               [24] 4849 	movx	@dptr,a
      0016B9                       4850 00105$:
                                   4851 ;	serialloader.h:80: xram_addr = (__xdata unsigned char*) addr;
      0016B9 8F 82            [24] 4852 	mov	dpl,r7
      0016BB 8E 83            [24] 4853 	mov	dph,r6
                                   4854 ;	serialloader.h:82: *(xram_addr) = data; //write to xram
      0016BD ED               [12] 4855 	mov	a,r5
      0016BE F0               [24] 4856 	movx	@dptr,a
                                   4857 ;	serialloader.h:84: UartWrite('W'); //ack
      0016BF 75 82 57         [24] 4858 	mov	dpl,#0x57
                                   4859 ;	serialloader.h:86: }
      0016C2 02 00 FE         [24] 4860 	ljmp	_UartWrite
                                   4861 ;------------------------------------------------------------
                                   4862 ;Allocation info for local variables in function 'SL_read'
                                   4863 ;------------------------------------------------------------
                                   4864 ;data                      Allocated to registers r7 
                                   4865 ;addr                      Allocated to registers r7 r6 
                                   4866 ;xram_addr                 Allocated to registers 
                                   4867 ;------------------------------------------------------------
                                   4868 ;	serialloader.h:88: void SL_read()
                                   4869 ;	-----------------------------------------
                                   4870 ;	 function SL_read
                                   4871 ;	-----------------------------------------
      0016C5                       4872 _SL_read:
                                   4873 ;	serialloader.h:94: while(UartReadReady()==0); //wait till we rcv data
      0016C5                       4874 00101$:
      0016C5 12 00 EA         [24] 4875 	lcall	_UartReadReady
      0016C8 E5 82            [12] 4876 	mov	a,dpl
      0016CA 60 F9            [24] 4877 	jz	00101$
                                   4878 ;	serialloader.h:98: addr = UartRead(); //msb
      0016CC 12 00 F5         [24] 4879 	lcall	_UartRead
                                   4880 ;	serialloader.h:99: addr = addr << 8;
      0016CF AE 82            [24] 4881 	mov	r6,dpl
      0016D1 7F 00            [12] 4882 	mov	r7,#0x00
                                   4883 ;	serialloader.h:100: addr |= UartRead(); //lsb
      0016D3 C0 07            [24] 4884 	push	ar7
      0016D5 C0 06            [24] 4885 	push	ar6
      0016D7 12 00 F5         [24] 4886 	lcall	_UartRead
      0016DA AD 82            [24] 4887 	mov	r5,dpl
      0016DC D0 06            [24] 4888 	pop	ar6
      0016DE D0 07            [24] 4889 	pop	ar7
      0016E0 7C 00            [12] 4890 	mov	r4,#0x00
      0016E2 ED               [12] 4891 	mov	a,r5
      0016E3 42 07            [12] 4892 	orl	ar7,a
      0016E5 EC               [12] 4893 	mov	a,r4
      0016E6 42 06            [12] 4894 	orl	ar6,a
                                   4895 ;	serialloader.h:102: xram_addr = (__xdata unsigned char*) addr;
      0016E8 8F 82            [24] 4896 	mov	dpl,r7
      0016EA 8E 83            [24] 4897 	mov	dph,r6
                                   4898 ;	serialloader.h:104: data = *(xram_addr); //read from xram
      0016EC E0               [24] 4899 	movx	a,@dptr
                                   4900 ;	serialloader.h:106: UartWrite(data);
      0016ED F5 82            [12] 4901 	mov	dpl,a
                                   4902 ;	serialloader.h:108: }
      0016EF 02 00 FE         [24] 4903 	ljmp	_UartWrite
                                   4904 ;------------------------------------------------------------
                                   4905 ;Allocation info for local variables in function 'SL_getcmd'
                                   4906 ;------------------------------------------------------------
                                   4907 ;cmd                       Allocated to registers r7 
                                   4908 ;------------------------------------------------------------
                                   4909 ;	serialloader.h:111: unsigned char SL_getcmd()
                                   4910 ;	-----------------------------------------
                                   4911 ;	 function SL_getcmd
                                   4912 ;	-----------------------------------------
      0016F2                       4913 _SL_getcmd:
                                   4914 ;	serialloader.h:114: while(UartReadReady()) UartRead(); //flush 
      0016F2                       4915 00101$:
      0016F2 12 00 EA         [24] 4916 	lcall	_UartReadReady
      0016F5 E5 82            [12] 4917 	mov	a,dpl
      0016F7 60 05            [24] 4918 	jz	00104$
      0016F9 12 00 F5         [24] 4919 	lcall	_UartRead
                                   4920 ;	serialloader.h:116: while(UartReadReady()==0); //wait till we rcv data 
      0016FC 80 F4            [24] 4921 	sjmp	00101$
      0016FE                       4922 00104$:
      0016FE 12 00 EA         [24] 4923 	lcall	_UartReadReady
      001701 E5 82            [12] 4924 	mov	a,dpl
      001703 60 F9            [24] 4925 	jz	00104$
                                   4926 ;	serialloader.h:119: cmd = UartRead(); //read
      001705 12 00 F5         [24] 4927 	lcall	_UartRead
      001708 AF 82            [24] 4928 	mov	r7,dpl
                                   4929 ;	serialloader.h:121: switch(cmd)
      00170A BF 44 02         [24] 4930 	cjne	r7,#0x44,00159$
      00170D 80 3A            [24] 4931 	sjmp	00110$
      00170F                       4932 00159$:
      00170F BF 45 02         [24] 4933 	cjne	r7,#0x45,00160$
      001712 80 3E            [24] 4934 	sjmp	00111$
      001714                       4935 00160$:
      001714 BF 52 02         [24] 4936 	cjne	r7,#0x52,00161$
      001717 80 1E            [24] 4937 	sjmp	00108$
      001719                       4938 00161$:
      001719 BF 56 02         [24] 4939 	cjne	r7,#0x56,00162$
      00171C 80 0A            [24] 4940 	sjmp	00107$
      00171E                       4941 00162$:
      00171E BF 57 02         [24] 4942 	cjne	r7,#0x57,00163$
      001721 80 1D            [24] 4943 	sjmp	00109$
      001723                       4944 00163$:
                                   4945 ;	serialloader.h:123: case 'V':
      001723 BF 58 38         [24] 4946 	cjne	r7,#0x58,00114$
      001726 80 33            [24] 4947 	sjmp	00112$
      001728                       4948 00107$:
                                   4949 ;	serialloader.h:124: UartPrint(SERIAL_LOADER_VERSION_INFO);
      001728 90 1A DB         [24] 4950 	mov	dptr,#_SERIAL_LOADER_VERSION_INFO
      00172B 75 F0 80         [24] 4951 	mov	b,#0x80
      00172E C0 07            [24] 4952 	push	ar7
      001730 12 01 84         [24] 4953 	lcall	_UartPrint
      001733 D0 07            [24] 4954 	pop	ar7
                                   4955 ;	serialloader.h:125: break;
                                   4956 ;	serialloader.h:126: case 'R':
      001735 80 27            [24] 4957 	sjmp	00114$
      001737                       4958 00108$:
                                   4959 ;	serialloader.h:127: SL_read();
      001737 C0 07            [24] 4960 	push	ar7
      001739 12 16 C5         [24] 4961 	lcall	_SL_read
      00173C D0 07            [24] 4962 	pop	ar7
                                   4963 ;	serialloader.h:128: break;
                                   4964 ;	serialloader.h:129: case 'W':
      00173E 80 1E            [24] 4965 	sjmp	00114$
      001740                       4966 00109$:
                                   4967 ;	serialloader.h:130: SL_write();
      001740 C0 07            [24] 4968 	push	ar7
      001742 12 16 74         [24] 4969 	lcall	_SL_write
      001745 D0 07            [24] 4970 	pop	ar7
                                   4971 ;	serialloader.h:131: break;
                                   4972 ;	serialloader.h:132: case 'D':
      001747 80 15            [24] 4973 	sjmp	00114$
      001749                       4974 00110$:
                                   4975 ;	serialloader.h:133: SL_disable_write_protection();
      001749 C0 07            [24] 4976 	push	ar7
      00174B 12 16 42         [24] 4977 	lcall	_SL_disable_write_protection
      00174E D0 07            [24] 4978 	pop	ar7
                                   4979 ;	serialloader.h:134: break;
                                   4980 ;	serialloader.h:135: case 'E':
      001750 80 0C            [24] 4981 	sjmp	00114$
      001752                       4982 00111$:
                                   4983 ;	serialloader.h:136: SL_enable_write_protection();
      001752 C0 07            [24] 4984 	push	ar7
      001754 12 16 6B         [24] 4985 	lcall	_SL_enable_write_protection
      001757 D0 07            [24] 4986 	pop	ar7
                                   4987 ;	serialloader.h:137: break;
                                   4988 ;	serialloader.h:138: case 'X': //execute
      001759 80 03            [24] 4989 	sjmp	00114$
      00175B                       4990 00112$:
                                   4991 ;	serialloader.h:139: SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);
      00175B 53 90 EF         [24] 4992 	anl	_P1,#0xef
                                   4993 ;	serialloader.h:143: }
      00175E                       4994 00114$:
                                   4995 ;	serialloader.h:145: return cmd;
      00175E 8F 82            [24] 4996 	mov	dpl,r7
                                   4997 ;	serialloader.h:146: }
      001760 22               [24] 4998 	ret
                                   4999 ;------------------------------------------------------------
                                   5000 ;Allocation info for local variables in function 'SelectFAT16PartitionPrompt'
                                   5001 ;------------------------------------------------------------
                                   5002 ;_resp                     Allocated to registers r6 
                                   5003 ;_temp                     Allocated to registers r7 
                                   5004 ;i                         Allocated to registers r5 
                                   5005 ;i                         Allocated to registers r4 
                                   5006 ;------------------------------------------------------------
                                   5007 ;	main.c:31: void SelectFAT16PartitionPrompt() __reentrant
                                   5008 ;	-----------------------------------------
                                   5009 ;	 function SelectFAT16PartitionPrompt
                                   5010 ;	-----------------------------------------
      001761                       5011 _SelectFAT16PartitionPrompt:
                                   5012 ;	main.c:33: uint8_t _resp=0,_temp=0;
      001761 7F 00            [12] 5013 	mov	r7,#0x00
                                   5014 ;	main.c:36: if(MBR_CHECK__SIGNATURE())
      001763 C0 07            [24] 5015 	push	ar7
      001765 12 0C 17         [24] 5016 	lcall	_MBR_CHECK__SIGNATURE
      001768 E5 82            [12] 5017 	mov	a,dpl
      00176A D0 07            [24] 5018 	pop	ar7
      00176C 60 0D            [24] 5019 	jz	00102$
                                   5020 ;	main.c:39: UartPrint("BAD MBR!\n");
      00176E 90 1D D6         [24] 5021 	mov	dptr,#___str_9
      001771 75 F0 80         [24] 5022 	mov	b,#0x80
      001774 C0 07            [24] 5023 	push	ar7
      001776 12 01 84         [24] 5024 	lcall	_UartPrint
      001779 D0 07            [24] 5025 	pop	ar7
      00177B                       5026 00102$:
                                   5027 ;	main.c:43: _resp=MBR_DETECT_FAT16(); 	// _resp now contains the bit set for the partitions which have valid FAT16 ID
      00177B C0 07            [24] 5028 	push	ar7
      00177D 12 0C F5         [24] 5029 	lcall	_MBR_DETECT_FAT16
      001780 AE 82            [24] 5030 	mov	r6,dpl
      001782 D0 07            [24] 5031 	pop	ar7
                                   5032 ;	main.c:46: if(_resp)
      001784 EE               [12] 5033 	mov	a,r6
      001785 70 03            [24] 5034 	jnz	00188$
      001787 02 18 CD         [24] 5035 	ljmp	00124$
      00178A                       5036 00188$:
                                   5037 ;	main.c:50: for(uint8_t i=0;i<4;i++)
      00178A 7D 00            [12] 5038 	mov	r5,#0x00
      00178C                       5039 00127$:
      00178C BD 04 00         [24] 5040 	cjne	r5,#0x04,00189$
      00178F                       5041 00189$:
      00178F 40 03            [24] 5042 	jc	00190$
      001791 02 18 12         [24] 5043 	ljmp	00106$
      001794                       5044 00190$:
                                   5045 ;	main.c:52: UartPrint("\nPtn. ");UartWriteNumber(i,HEX);UartWrite('> ');
      001794 C0 07            [24] 5046 	push	ar7
      001796 90 1D E0         [24] 5047 	mov	dptr,#___str_10
      001799 75 F0 80         [24] 5048 	mov	b,#0x80
      00179C C0 07            [24] 5049 	push	ar7
      00179E C0 06            [24] 5050 	push	ar6
      0017A0 C0 05            [24] 5051 	push	ar5
      0017A2 12 01 84         [24] 5052 	lcall	_UartPrint
      0017A5 D0 05            [24] 5053 	pop	ar5
      0017A7 C0 05            [24] 5054 	push	ar5
      0017A9 E4               [12] 5055 	clr	a
      0017AA C0 E0            [24] 5056 	push	acc
      0017AC 8D 82            [24] 5057 	mov	dpl,r5
      0017AE 12 01 B6         [24] 5058 	lcall	_UartWriteNumber
      0017B1 15 81            [12] 5059 	dec	sp
      0017B3 75 82 3E         [24] 5060 	mov	dpl,#0x3e
      0017B6 12 00 FE         [24] 5061 	lcall	_UartWrite
      0017B9 D0 05            [24] 5062 	pop	ar5
      0017BB D0 06            [24] 5063 	pop	ar6
      0017BD D0 07            [24] 5064 	pop	ar7
                                   5065 ;	main.c:53: if(_resp & 1<<i) UartPrint("FAT16");
      0017BF 8D F0            [24] 5066 	mov	b,r5
      0017C1 05 F0            [12] 5067 	inc	b
      0017C3 7B 01            [12] 5068 	mov	r3,#0x01
      0017C5 7C 00            [12] 5069 	mov	r4,#0x00
      0017C7 80 06            [24] 5070 	sjmp	00192$
      0017C9                       5071 00191$:
      0017C9 EB               [12] 5072 	mov	a,r3
      0017CA 2B               [12] 5073 	add	a,r3
      0017CB FB               [12] 5074 	mov	r3,a
      0017CC EC               [12] 5075 	mov	a,r4
      0017CD 33               [12] 5076 	rlc	a
      0017CE FC               [12] 5077 	mov	r4,a
      0017CF                       5078 00192$:
      0017CF D5 F0 F7         [24] 5079 	djnz	b,00191$
      0017D2 8E 02            [24] 5080 	mov	ar2,r6
      0017D4 7F 00            [12] 5081 	mov	r7,#0x00
      0017D6 EA               [12] 5082 	mov	a,r2
      0017D7 52 03            [12] 5083 	anl	ar3,a
      0017D9 EF               [12] 5084 	mov	a,r7
      0017DA 52 04            [12] 5085 	anl	ar4,a
      0017DC D0 07            [24] 5086 	pop	ar7
      0017DE EB               [12] 5087 	mov	a,r3
      0017DF 4C               [12] 5088 	orl	a,r4
      0017E0 60 17            [24] 5089 	jz	00104$
      0017E2 90 1D E7         [24] 5090 	mov	dptr,#___str_11
      0017E5 75 F0 80         [24] 5091 	mov	b,#0x80
      0017E8 C0 07            [24] 5092 	push	ar7
      0017EA C0 06            [24] 5093 	push	ar6
      0017EC C0 05            [24] 5094 	push	ar5
      0017EE 12 01 84         [24] 5095 	lcall	_UartPrint
      0017F1 D0 05            [24] 5096 	pop	ar5
      0017F3 D0 06            [24] 5097 	pop	ar6
      0017F5 D0 07            [24] 5098 	pop	ar7
      0017F7 80 15            [24] 5099 	sjmp	00128$
      0017F9                       5100 00104$:
                                   5101 ;	main.c:54: else UartPrint("Unknown");
      0017F9 90 1D ED         [24] 5102 	mov	dptr,#___str_12
      0017FC 75 F0 80         [24] 5103 	mov	b,#0x80
      0017FF C0 07            [24] 5104 	push	ar7
      001801 C0 06            [24] 5105 	push	ar6
      001803 C0 05            [24] 5106 	push	ar5
      001805 12 01 84         [24] 5107 	lcall	_UartPrint
      001808 D0 05            [24] 5108 	pop	ar5
      00180A D0 06            [24] 5109 	pop	ar6
      00180C D0 07            [24] 5110 	pop	ar7
      00180E                       5111 00128$:
                                   5112 ;	main.c:50: for(uint8_t i=0;i<4;i++)
      00180E 0D               [12] 5113 	inc	r5
      00180F 02 17 8C         [24] 5114 	ljmp	00127$
      001812                       5115 00106$:
                                   5116 ;	main.c:60: if( (_resp & (_resp-1)) == 0)
      001812 8E 05            [24] 5117 	mov	ar5,r6
      001814 7E 00            [12] 5118 	mov	r6,#0x00
      001816 ED               [12] 5119 	mov	a,r5
      001817 24 FF            [12] 5120 	add	a,#0xff
      001819 FB               [12] 5121 	mov	r3,a
      00181A EE               [12] 5122 	mov	a,r6
      00181B 34 FF            [12] 5123 	addc	a,#0xff
      00181D FC               [12] 5124 	mov	r4,a
      00181E ED               [12] 5125 	mov	a,r5
      00181F 52 03            [12] 5126 	anl	ar3,a
      001821 EE               [12] 5127 	mov	a,r6
      001822 52 04            [12] 5128 	anl	ar4,a
      001824 EB               [12] 5129 	mov	a,r3
      001825 4C               [12] 5130 	orl	a,r4
                                   5131 ;	main.c:62: for(uint8_t i=0;i<4;i++)
      001826 70 31            [24] 5132 	jnz	00111$
      001828 FC               [12] 5133 	mov	r4,a
      001829 FB               [12] 5134 	mov	r3,a
      00182A                       5135 00130$:
      00182A BB 04 00         [24] 5136 	cjne	r3,#0x04,00195$
      00182D                       5137 00195$:
      00182D 50 42            [24] 5138 	jnc	00112$
                                   5139 ;	main.c:64: if(_resp & 1<<i) 
      00182F C0 04            [24] 5140 	push	ar4
      001831 8B F0            [24] 5141 	mov	b,r3
      001833 05 F0            [12] 5142 	inc	b
      001835 7A 01            [12] 5143 	mov	r2,#0x01
      001837 7C 00            [12] 5144 	mov	r4,#0x00
      001839 80 06            [24] 5145 	sjmp	00198$
      00183B                       5146 00197$:
      00183B EA               [12] 5147 	mov	a,r2
      00183C 2A               [12] 5148 	add	a,r2
      00183D FA               [12] 5149 	mov	r2,a
      00183E EC               [12] 5150 	mov	a,r4
      00183F 33               [12] 5151 	rlc	a
      001840 FC               [12] 5152 	mov	r4,a
      001841                       5153 00198$:
      001841 D5 F0 F7         [24] 5154 	djnz	b,00197$
      001844 ED               [12] 5155 	mov	a,r5
      001845 52 02            [12] 5156 	anl	ar2,a
      001847 EE               [12] 5157 	mov	a,r6
      001848 52 04            [12] 5158 	anl	ar4,a
      00184A EA               [12] 5159 	mov	a,r2
      00184B 4C               [12] 5160 	orl	a,r4
      00184C D0 04            [24] 5161 	pop	ar4
      00184E 60 04            [24] 5162 	jz	00131$
                                   5163 ;	main.c:66: _temp=i; // select the i-th partition
      001850 8C 07            [24] 5164 	mov	ar7,r4
                                   5165 ;	main.c:67: break; //break from for loop
      001852 80 1D            [24] 5166 	sjmp	00112$
      001854                       5167 00131$:
                                   5168 ;	main.c:62: for(uint8_t i=0;i<4;i++)
      001854 0B               [12] 5169 	inc	r3
      001855 8B 04            [24] 5170 	mov	ar4,r3
      001857 80 D1            [24] 5171 	sjmp	00130$
      001859                       5172 00111$:
                                   5173 ;	main.c:74: UartPrint("Slct Ptn. >\n");
      001859 90 1D F5         [24] 5174 	mov	dptr,#___str_13
      00185C 75 F0 80         [24] 5175 	mov	b,#0x80
      00185F C0 06            [24] 5176 	push	ar6
      001861 C0 05            [24] 5177 	push	ar5
      001863 12 01 84         [24] 5178 	lcall	_UartPrint
                                   5179 ;	main.c:75: _temp=UartScanByte();
      001866 12 03 C4         [24] 5180 	lcall	_UartScanByte
      001869 AC 82            [24] 5181 	mov	r4,dpl
      00186B D0 05            [24] 5182 	pop	ar5
      00186D D0 06            [24] 5183 	pop	ar6
      00186F 8C 07            [24] 5184 	mov	ar7,r4
      001871                       5185 00112$:
                                   5186 ;	main.c:79: if( _temp<4 && (_resp & (1<<_temp)) )
      001871 BF 04 00         [24] 5187 	cjne	r7,#0x04,00200$
      001874                       5188 00200$:
      001874 50 43            [24] 5189 	jnc	00117$
      001876 8F F0            [24] 5190 	mov	b,r7
      001878 05 F0            [12] 5191 	inc	b
      00187A 7B 01            [12] 5192 	mov	r3,#0x01
      00187C 7C 00            [12] 5193 	mov	r4,#0x00
      00187E 80 06            [24] 5194 	sjmp	00203$
      001880                       5195 00202$:
      001880 EB               [12] 5196 	mov	a,r3
      001881 2B               [12] 5197 	add	a,r3
      001882 FB               [12] 5198 	mov	r3,a
      001883 EC               [12] 5199 	mov	a,r4
      001884 33               [12] 5200 	rlc	a
      001885 FC               [12] 5201 	mov	r4,a
      001886                       5202 00203$:
      001886 D5 F0 F7         [24] 5203 	djnz	b,00202$
      001889 EB               [12] 5204 	mov	a,r3
      00188A 52 05            [12] 5205 	anl	ar5,a
      00188C EC               [12] 5206 	mov	a,r4
      00188D 52 06            [12] 5207 	anl	ar6,a
      00188F ED               [12] 5208 	mov	a,r5
      001890 4E               [12] 5209 	orl	a,r6
      001891 60 26            [24] 5210 	jz	00117$
                                   5211 ;	main.c:81: UartPrint("\n\nPtn. Mounted:");UartWriteNumber(_temp,HEX);
      001893 90 1E 02         [24] 5212 	mov	dptr,#___str_14
      001896 75 F0 80         [24] 5213 	mov	b,#0x80
      001899 C0 07            [24] 5214 	push	ar7
      00189B 12 01 84         [24] 5215 	lcall	_UartPrint
      00189E D0 07            [24] 5216 	pop	ar7
      0018A0 C0 07            [24] 5217 	push	ar7
      0018A2 E4               [12] 5218 	clr	a
      0018A3 C0 E0            [24] 5219 	push	acc
      0018A5 8F 82            [24] 5220 	mov	dpl,r7
      0018A7 12 01 B6         [24] 5221 	lcall	_UartWriteNumber
      0018AA 15 81            [12] 5222 	dec	sp
                                   5223 ;	main.c:82: UartWrite('\n');
      0018AC 75 82 0A         [24] 5224 	mov	dpl,#0x0a
      0018AF 12 00 FE         [24] 5225 	lcall	_UartWrite
      0018B2 D0 07            [24] 5226 	pop	ar7
                                   5227 ;	main.c:83: VBR_MOUNT_VBR(_temp);
      0018B4 8F 82            [24] 5228 	mov	dpl,r7
      0018B6 02 0D 2C         [24] 5229 	ljmp	_VBR_MOUNT_VBR
      0018B9                       5230 00117$:
                                   5231 ;	main.c:87: UartPrint("\nBad Ptn.\n");
      0018B9 90 1E 12         [24] 5232 	mov	dptr,#___str_15
      0018BC 75 F0 80         [24] 5233 	mov	b,#0x80
      0018BF 12 01 84         [24] 5234 	lcall	_UartPrint
                                   5235 ;	main.c:88: UartPrint(HALTING_MSG); while(1);
      0018C2 90 1A E8         [24] 5236 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_195
      0018C5 75 F0 80         [24] 5237 	mov	b,#0x80
      0018C8 12 01 84         [24] 5238 	lcall	_UartPrint
      0018CB                       5239 00114$:
      0018CB 80 FE            [24] 5240 	sjmp	00114$
      0018CD                       5241 00124$:
                                   5242 ;	main.c:94: UartPrint("No FAT16 Ptn.\n");
      0018CD 90 1E 1D         [24] 5243 	mov	dptr,#___str_16
      0018D0 75 F0 80         [24] 5244 	mov	b,#0x80
      0018D3 12 01 84         [24] 5245 	lcall	_UartPrint
                                   5246 ;	main.c:95: UartPrint(HALTING_MSG); while(1);
      0018D6 90 1A E8         [24] 5247 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_195
      0018D9 75 F0 80         [24] 5248 	mov	b,#0x80
      0018DC 12 01 84         [24] 5249 	lcall	_UartPrint
      0018DF                       5250 00121$:
                                   5251 ;	main.c:98: }
      0018DF 80 FE            [24] 5252 	sjmp	00121$
                                   5253 ;------------------------------------------------------------
                                   5254 ;Allocation info for local variables in function 'SelectFileAndFileOpen'
                                   5255 ;------------------------------------------------------------
                                   5256 ;_result                   Allocated to registers r7 
                                   5257 ;i                         Allocated to registers r7 
                                   5258 ;j                         Allocated to registers r6 
                                   5259 ;------------------------------------------------------------
                                   5260 ;	main.c:100: void SelectFileAndFileOpen() __reentrant
                                   5261 ;	-----------------------------------------
                                   5262 ;	 function SelectFileAndFileOpen
                                   5263 ;	-----------------------------------------
      0018E1                       5264 _SelectFileAndFileOpen:
                                   5265 ;	main.c:103: FAT16_ROOTENTRY_SCAN_RESET();
      0018E1 12 11 C3         [24] 5266 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
                                   5267 ;	main.c:104: UartPrint("\nINDEX\t\tFILE\n");
      0018E4 90 1E 2C         [24] 5268 	mov	dptr,#___str_17
      0018E7 75 F0 80         [24] 5269 	mov	b,#0x80
      0018EA 12 01 84         [24] 5270 	lcall	_UartPrint
                                   5271 ;	main.c:107: for(uint8_t i=0;i<255;i++) 
      0018ED 7F 00            [12] 5272 	mov	r7,#0x00
      0018EF                       5273 00112$:
      0018EF BF FF 00         [24] 5274 	cjne	r7,#0xff,00148$
      0018F2                       5275 00148$:
      0018F2 50 58            [24] 5276 	jnc	00107$
                                   5277 ;	main.c:109: _result = FAT16_ROOTENTRY_SCAN();
      0018F4 C0 07            [24] 5278 	push	ar7
      0018F6 12 11 D5         [24] 5279 	lcall	_FAT16_ROOTENTRY_SCAN
      0018F9 AE 82            [24] 5280 	mov	r6,dpl
      0018FB D0 07            [24] 5281 	pop	ar7
                                   5282 ;	main.c:110: if(_result==0xff) break; //end of scan
      0018FD BE FF 02         [24] 5283 	cjne	r6,#0xff,00150$
      001900 80 4A            [24] 5284 	sjmp	00107$
      001902                       5285 00150$:
                                   5286 ;	main.c:111: else if (_result==0) //valid file
      001902 EE               [12] 5287 	mov	a,r6
      001903 70 44            [24] 5288 	jnz	00113$
                                   5289 ;	main.c:113: UartWriteNumber(__global_rootEntry.entry_index,DEC); //print root entry index
      001905 78 7C            [12] 5290 	mov	r0,#(___global_rootEntry + 0x0012)
      001907 86 06            [24] 5291 	mov	ar6,@r0
      001909 C0 07            [24] 5292 	push	ar7
      00190B 74 01            [12] 5293 	mov	a,#0x01
      00190D C0 E0            [24] 5294 	push	acc
      00190F 8E 82            [24] 5295 	mov	dpl,r6
      001911 12 01 B6         [24] 5296 	lcall	_UartWriteNumber
      001914 15 81            [12] 5297 	dec	sp
                                   5298 ;	main.c:114: UartWrite('\t');
      001916 75 82 09         [24] 5299 	mov	dpl,#0x09
      001919 12 00 FE         [24] 5300 	lcall	_UartWrite
                                   5301 ;	main.c:115: UartWrite('\t');
      00191C 75 82 09         [24] 5302 	mov	dpl,#0x09
      00191F 12 00 FE         [24] 5303 	lcall	_UartWrite
      001922 D0 07            [24] 5304 	pop	ar7
                                   5305 ;	main.c:116: for(uint8_t j=0;j<11;j++)UartWrite(__global_rootEntry.name[j]); //print name
      001924 7E 00            [12] 5306 	mov	r6,#0x00
      001926                       5307 00109$:
      001926 BE 0B 00         [24] 5308 	cjne	r6,#0x0b,00152$
      001929                       5309 00152$:
      001929 50 14            [24] 5310 	jnc	00101$
      00192B EE               [12] 5311 	mov	a,r6
      00192C 24 6A            [12] 5312 	add	a,#___global_rootEntry
      00192E F9               [12] 5313 	mov	r1,a
      00192F 87 82            [24] 5314 	mov	dpl,@r1
      001931 C0 07            [24] 5315 	push	ar7
      001933 C0 06            [24] 5316 	push	ar6
      001935 12 00 FE         [24] 5317 	lcall	_UartWrite
      001938 D0 06            [24] 5318 	pop	ar6
      00193A D0 07            [24] 5319 	pop	ar7
      00193C 0E               [12] 5320 	inc	r6
      00193D 80 E7            [24] 5321 	sjmp	00109$
      00193F                       5322 00101$:
                                   5323 ;	main.c:117: UartWrite('\n');
      00193F 75 82 0A         [24] 5324 	mov	dpl,#0x0a
      001942 C0 07            [24] 5325 	push	ar7
      001944 12 00 FE         [24] 5326 	lcall	_UartWrite
      001947 D0 07            [24] 5327 	pop	ar7
      001949                       5328 00113$:
                                   5329 ;	main.c:107: for(uint8_t i=0;i<255;i++) 
      001949 0F               [12] 5330 	inc	r7
      00194A 80 A3            [24] 5331 	sjmp	00112$
      00194C                       5332 00107$:
                                   5333 ;	main.c:121: UartPrint("\nSlct index >\n");
      00194C 90 1E 3A         [24] 5334 	mov	dptr,#___str_18
      00194F 75 F0 80         [24] 5335 	mov	b,#0x80
      001952 12 01 84         [24] 5336 	lcall	_UartPrint
                                   5337 ;	main.c:122: _result=UartScanByte();
      001955 12 03 C4         [24] 5338 	lcall	_UartScanByte
                                   5339 ;	main.c:123: FAT16_ROOTENTRY_READ(_result); //load the selected
      001958 7E 00            [12] 5340 	mov	r6,#0x00
      00195A 8E 83            [24] 5341 	mov	dph,r6
                                   5342 ;	main.c:124: }
      00195C 02 11 A2         [24] 5343 	ljmp	_FAT16_ROOTENTRY_READ
                                   5344 ;------------------------------------------------------------
                                   5345 ;Allocation info for local variables in function 'main'
                                   5346 ;------------------------------------------------------------
                                   5347 ;buff                      Allocated with name '_main_buff_65536_214'
                                   5348 ;_resp                     Allocated to registers r7 
                                   5349 ;xram_addr                 Allocated to registers r6 r7 
                                   5350 ;_t                        Allocated to registers r5 r6 
                                   5351 ;wastetime                 Allocated to registers r4 
                                   5352 ;i                         Allocated to registers r5 
                                   5353 ;i                         Allocated to registers r5 
                                   5354 ;------------------------------------------------------------
                                   5355 ;	main.c:135: void main(void)
                                   5356 ;	-----------------------------------------
                                   5357 ;	 function main
                                   5358 ;	-----------------------------------------
      00195F                       5359 _main:
                                   5360 ;	main.c:144: uint8_t _resp=0;
      00195F 7F 00            [12] 5361 	mov	r7,#0x00
                                   5362 ;	main.c:151: UartBegin();
      001961 C0 07            [24] 5363 	push	ar7
      001963 12 00 DB         [24] 5364 	lcall	_UartBegin
                                   5365 ;	main.c:152: spi_init(); 
      001966 12 04 8A         [24] 5366 	lcall	_spi_init
                                   5367 ;	main.c:153: SDinit();
      001969 12 06 C3         [24] 5368 	lcall	_SDinit
                                   5369 ;	main.c:157: UartPrint("\nSYAMPUTER:V0\n");
      00196C 90 1E 49         [24] 5370 	mov	dptr,#___str_19
      00196F 75 F0 80         [24] 5371 	mov	b,#0x80
      001972 12 01 84         [24] 5372 	lcall	_UartPrint
      001975 D0 07            [24] 5373 	pop	ar7
                                   5374 ;	main.c:159: while(UartReadReady())UartRead(); //flush
      001977                       5375 00101$:
      001977 C0 07            [24] 5376 	push	ar7
      001979 12 00 EA         [24] 5377 	lcall	_UartReadReady
      00197C E5 82            [12] 5378 	mov	a,dpl
      00197E D0 07            [24] 5379 	pop	ar7
      001980 60 09            [24] 5380 	jz	00154$
      001982 C0 07            [24] 5381 	push	ar7
      001984 12 00 F5         [24] 5382 	lcall	_UartRead
      001987 D0 07            [24] 5383 	pop	ar7
                                   5384 ;	main.c:164: for(unsigned int _t=0;_t<65000;_t++)
      001989 80 EC            [24] 5385 	sjmp	00101$
      00198B                       5386 00154$:
      00198B 7D 00            [12] 5387 	mov	r5,#0x00
      00198D 7E 00            [12] 5388 	mov	r6,#0x00
      00198F                       5389 00138$:
      00198F C3               [12] 5390 	clr	c
      001990 ED               [12] 5391 	mov	a,r5
      001991 94 E8            [12] 5392 	subb	a,#0xe8
      001993 EE               [12] 5393 	mov	a,r6
      001994 94 FD            [12] 5394 	subb	a,#0xfd
      001996 50 2B            [24] 5395 	jnc	00107$
                                   5396 ;	main.c:166: if(UartReadReady())
      001998 C0 07            [24] 5397 	push	ar7
      00199A C0 06            [24] 5398 	push	ar6
      00199C C0 05            [24] 5399 	push	ar5
      00199E 12 00 EA         [24] 5400 	lcall	_UartReadReady
      0019A1 E5 82            [12] 5401 	mov	a,dpl
      0019A3 D0 05            [24] 5402 	pop	ar5
      0019A5 D0 06            [24] 5403 	pop	ar6
      0019A7 D0 07            [24] 5404 	pop	ar7
      0019A9 60 07            [24] 5405 	jz	00153$
                                   5406 ;	main.c:168: _resp=UartRead();
      0019AB 12 00 F5         [24] 5407 	lcall	_UartRead
      0019AE AF 82            [24] 5408 	mov	r7,dpl
                                   5409 ;	main.c:169: break;
                                   5410 ;	main.c:171: for(uint8_t wastetime=0;wastetime<3;wastetime++);
      0019B0 80 11            [24] 5411 	sjmp	00107$
      0019B2                       5412 00153$:
      0019B2 7C 00            [12] 5413 	mov	r4,#0x00
      0019B4                       5414 00135$:
      0019B4 BC 03 00         [24] 5415 	cjne	r4,#0x03,00233$
      0019B7                       5416 00233$:
      0019B7 50 03            [24] 5417 	jnc	00139$
      0019B9 0C               [12] 5418 	inc	r4
      0019BA 80 F8            [24] 5419 	sjmp	00135$
      0019BC                       5420 00139$:
                                   5421 ;	main.c:164: for(unsigned int _t=0;_t<65000;_t++)
      0019BC 0D               [12] 5422 	inc	r5
      0019BD BD 00 CF         [24] 5423 	cjne	r5,#0x00,00138$
      0019C0 0E               [12] 5424 	inc	r6
      0019C1 80 CC            [24] 5425 	sjmp	00138$
      0019C3                       5426 00107$:
                                   5427 ;	main.c:176: switch (_resp)
      0019C3 BF 56 10         [24] 5428 	cjne	r7,#0x56,00113$
                                   5429 ;	main.c:179: UartPrint("ISA:FS0:8052\n");
      0019C6 90 1E 58         [24] 5430 	mov	dptr,#___str_20
      0019C9 75 F0 80         [24] 5431 	mov	b,#0x80
      0019CC 12 01 84         [24] 5432 	lcall	_UartPrint
                                   5433 ;	main.c:180: while(SL_getcmd()); //break when command is 0
      0019CF                       5434 00109$:
      0019CF 12 16 F2         [24] 5435 	lcall	_SL_getcmd
      0019D2 E5 82            [12] 5436 	mov	a,dpl
      0019D4 70 F9            [24] 5437 	jnz	00109$
                                   5438 ;	main.c:184: }
      0019D6                       5439 00113$:
                                   5440 ;	main.c:189: SelectFAT16PartitionPrompt();
      0019D6 12 17 61         [24] 5441 	lcall	_SelectFAT16PartitionPrompt
                                   5442 ;	main.c:196: if(FAT16_FILE_OPEN(DEFAULT_LOAD_FILENAME)==0)
      0019D9 90 1E 66         [24] 5443 	mov	dptr,#___str_21
      0019DC 75 F0 80         [24] 5444 	mov	b,#0x80
      0019DF 12 11 F8         [24] 5445 	lcall	_FAT16_FILE_OPEN
      0019E2 E5 82            [12] 5446 	mov	a,dpl
      0019E4 70 11            [24] 5447 	jnz	00115$
                                   5448 ;	main.c:198: UartPrint(DEFAULT_LOAD_FILENAME);
      0019E6 90 1E 66         [24] 5449 	mov	dptr,#___str_21
      0019E9 75 F0 80         [24] 5450 	mov	b,#0x80
      0019EC 12 01 84         [24] 5451 	lcall	_UartPrint
                                   5452 ;	main.c:199: UartWrite('\n');
      0019EF 75 82 0A         [24] 5453 	mov	dpl,#0x0a
      0019F2 12 00 FE         [24] 5454 	lcall	_UartWrite
      0019F5 80 03            [24] 5455 	sjmp	00165$
      0019F7                       5456 00115$:
                                   5457 ;	main.c:201: else SelectFileAndFileOpen();
      0019F7 12 18 E1         [24] 5458 	lcall	_SelectFileAndFileOpen
                                   5459 ;	main.c:203: while(1)
      0019FA                       5460 00165$:
      0019FA                       5461 00129$:
                                   5462 ;	main.c:205: xram_addr=(__xdata unsigned char*)(uint16_t)__global_rootEntry.bytes_read;        
      0019FA 78 7E            [12] 5463 	mov	r0,#(___global_rootEntry + 0x0014)
      0019FC 86 06            [24] 5464 	mov	ar6,@r0
      0019FE 08               [12] 5465 	inc	r0
      0019FF 86 07            [24] 5466 	mov	ar7,@r0
                                   5467 ;	main.c:206: _resp=FAT16_FILE_READ(FILE_BUFF_SIZE,buff);
      001A01 C0 07            [24] 5468 	push	ar7
      001A03 C0 06            [24] 5469 	push	ar6
      001A05 74 2C            [12] 5470 	mov	a,#_main_buff_65536_214
      001A07 C0 E0            [24] 5471 	push	acc
      001A09 74 00            [12] 5472 	mov	a,#(_main_buff_65536_214 >> 8)
      001A0B C0 E0            [24] 5473 	push	acc
      001A0D 74 40            [12] 5474 	mov	a,#0x40
      001A0F C0 E0            [24] 5475 	push	acc
      001A11 75 82 10         [24] 5476 	mov	dpl,#0x10
      001A14 12 13 75         [24] 5477 	lcall	_FAT16_FILE_READ
      001A17 AD 82            [24] 5478 	mov	r5,dpl
      001A19 15 81            [12] 5479 	dec	sp
      001A1B 15 81            [12] 5480 	dec	sp
      001A1D 15 81            [12] 5481 	dec	sp
      001A1F D0 06            [24] 5482 	pop	ar6
      001A21 D0 07            [24] 5483 	pop	ar7
                                   5484 ;	main.c:207: if(_resp==0) 
      001A23 ED               [12] 5485 	mov	a,r5
      001A24 70 0C            [24] 5486 	jnz	00160$
                                   5487 ;	main.c:209: UartPrint("\n<RUN>\n");
      001A26 90 1E 6D         [24] 5488 	mov	dptr,#___str_22
      001A29 75 F0 80         [24] 5489 	mov	b,#0x80
      001A2C 12 01 84         [24] 5490 	lcall	_UartPrint
                                   5491 ;	main.c:210: break;
      001A2F 02 1A BB         [24] 5492 	ljmp	00130$
                                   5493 ;	main.c:212: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001A32                       5494 00160$:
      001A32 7D 00            [12] 5495 	mov	r5,#0x00
      001A34                       5496 00141$:
      001A34 BD 10 00         [24] 5497 	cjne	r5,#0x10,00241$
      001A37                       5498 00241$:
      001A37 50 12            [24] 5499 	jnc	00119$
                                   5500 ;	main.c:218: *(xram_addr+i) = buff[i];
      001A39 ED               [12] 5501 	mov	a,r5
      001A3A 2E               [12] 5502 	add	a,r6
      001A3B F5 82            [12] 5503 	mov	dpl,a
      001A3D E4               [12] 5504 	clr	a
      001A3E 3F               [12] 5505 	addc	a,r7
      001A3F F5 83            [12] 5506 	mov	dph,a
      001A41 ED               [12] 5507 	mov	a,r5
      001A42 24 2C            [12] 5508 	add	a,#_main_buff_65536_214
      001A44 F9               [12] 5509 	mov	r1,a
      001A45 E7               [12] 5510 	mov	a,@r1
      001A46 FC               [12] 5511 	mov	r4,a
      001A47 F0               [24] 5512 	movx	@dptr,a
                                   5513 ;	main.c:212: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001A48 0D               [12] 5514 	inc	r5
      001A49 80 E9            [24] 5515 	sjmp	00141$
      001A4B                       5516 00119$:
                                   5517 ;	main.c:222: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001A4B 7D 00            [12] 5518 	mov	r5,#0x00
      001A4D                       5519 00144$:
      001A4D BD 10 00         [24] 5520 	cjne	r5,#0x10,00243$
      001A50                       5521 00243$:
      001A50 50 24            [24] 5522 	jnc	00125$
                                   5523 ;	main.c:224: if(buff[i]!=*(xram_addr+i)) 
      001A52 ED               [12] 5524 	mov	a,r5
      001A53 24 2C            [12] 5525 	add	a,#_main_buff_65536_214
      001A55 F9               [12] 5526 	mov	r1,a
      001A56 87 04            [24] 5527 	mov	ar4,@r1
      001A58 ED               [12] 5528 	mov	a,r5
      001A59 2E               [12] 5529 	add	a,r6
      001A5A F5 82            [12] 5530 	mov	dpl,a
      001A5C E4               [12] 5531 	clr	a
      001A5D 3F               [12] 5532 	addc	a,r7
      001A5E F5 83            [12] 5533 	mov	dph,a
      001A60 E0               [24] 5534 	movx	a,@dptr
      001A61 FB               [12] 5535 	mov	r3,a
      001A62 EC               [12] 5536 	mov	a,r4
      001A63 B5 03 02         [24] 5537 	cjne	a,ar3,00245$
      001A66 80 0B            [24] 5538 	sjmp	00145$
      001A68                       5539 00245$:
                                   5540 ;	main.c:226: UartPrint("\nVerif. fail");
      001A68 90 1E 75         [24] 5541 	mov	dptr,#___str_23
      001A6B 75 F0 80         [24] 5542 	mov	b,#0x80
      001A6E 12 01 84         [24] 5543 	lcall	_UartPrint
                                   5544 ;	main.c:228: while(1);
      001A71                       5545 00121$:
      001A71 80 FE            [24] 5546 	sjmp	00121$
      001A73                       5547 00145$:
                                   5548 ;	main.c:222: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001A73 0D               [12] 5549 	inc	r5
      001A74 80 D7            [24] 5550 	sjmp	00144$
      001A76                       5551 00125$:
                                   5552 ;	main.c:234: if(__global_rootEntry.bytes_read % 64 == 0)
      001A76 78 7E            [12] 5553 	mov	r0,#(___global_rootEntry + 0x0014)
      001A78 86 04            [24] 5554 	mov	ar4,@r0
      001A7A 08               [12] 5555 	inc	r0
      001A7B 86 05            [24] 5556 	mov	ar5,@r0
      001A7D 08               [12] 5557 	inc	r0
      001A7E 86 06            [24] 5558 	mov	ar6,@r0
      001A80 08               [12] 5559 	inc	r0
      001A81 86 07            [24] 5560 	mov	ar7,@r0
      001A83 EC               [12] 5561 	mov	a,r4
      001A84 54 3F            [12] 5562 	anl	a,#0x3f
      001A86 60 03            [24] 5563 	jz	00247$
      001A88 02 19 FA         [24] 5564 	ljmp	00129$
      001A8B                       5565 00247$:
                                   5566 ;	main.c:237: UartPrintNumber(__global_rootEntry.bytes_read);
      001A8B 8C 82            [24] 5567 	mov	dpl,r4
      001A8D 8D 83            [24] 5568 	mov	dph,r5
      001A8F 8E F0            [24] 5569 	mov	b,r6
      001A91 EF               [12] 5570 	mov	a,r7
      001A92 12 02 CA         [24] 5571 	lcall	_UartPrintNumber
                                   5572 ;	main.c:238: UartWrite('/');
      001A95 75 82 2F         [24] 5573 	mov	dpl,#0x2f
      001A98 12 00 FE         [24] 5574 	lcall	_UartWrite
                                   5575 ;	main.c:239: UartPrintNumber(__global_rootEntry.size);
      001A9B 78 78            [12] 5576 	mov	r0,#(___global_rootEntry + 0x000e)
      001A9D 86 04            [24] 5577 	mov	ar4,@r0
      001A9F 08               [12] 5578 	inc	r0
      001AA0 86 05            [24] 5579 	mov	ar5,@r0
      001AA2 08               [12] 5580 	inc	r0
      001AA3 86 06            [24] 5581 	mov	ar6,@r0
      001AA5 08               [12] 5582 	inc	r0
      001AA6 86 07            [24] 5583 	mov	ar7,@r0
      001AA8 8C 82            [24] 5584 	mov	dpl,r4
      001AAA 8D 83            [24] 5585 	mov	dph,r5
      001AAC 8E F0            [24] 5586 	mov	b,r6
      001AAE EF               [12] 5587 	mov	a,r7
      001AAF 12 02 CA         [24] 5588 	lcall	_UartPrintNumber
                                   5589 ;	main.c:240: UartWrite('\r');
      001AB2 75 82 0D         [24] 5590 	mov	dpl,#0x0d
      001AB5 12 00 FE         [24] 5591 	lcall	_UartWrite
      001AB8 02 19 FA         [24] 5592 	ljmp	00129$
      001ABB                       5593 00130$:
                                   5594 ;	main.c:245: SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);
      001ABB 53 90 EF         [24] 5595 	anl	_P1,#0xef
                                   5596 ;	main.c:248: while(1);    
      001ABE                       5597 00132$:
                                   5598 ;	main.c:250: }
      001ABE 80 FE            [24] 5599 	sjmp	00132$
                                   5600 	.area CSEG    (CODE)
                                   5601 	.area CONST   (CODE)
                                   5602 	.area CONST   (CODE)
      001D80                       5603 ___str_0:
      001D80 4E 75 6D 62 65 72 28  5604 	.ascii "Number(hex) < "
             68 65 78 29 20 3C 20
      001D8E 00                    5605 	.db 0x00
                                   5606 	.area CSEG    (CODE)
                                   5607 	.area CONST   (CODE)
      001D8F                       5608 ___str_1:
      001D8F 0A                    5609 	.db 0x0a
      001D90 52 4F 4F 54 5F 45 4E  5610 	.ascii "ROOT_ENTRY_INDEX:"
             54 52 59 5F 49 4E 44
             45 58 3A
      001DA1 00                    5611 	.db 0x00
                                   5612 	.area CSEG    (CODE)
                                   5613 	.area CONST   (CODE)
      001DA2                       5614 ___str_2:
      001DA2 0A                    5615 	.db 0x0a
      001DA3 46 49 4C 45 3A 20     5616 	.ascii "FILE: "
      001DA9 00                    5617 	.db 0x00
                                   5618 	.area CSEG    (CODE)
                                   5619 	.area CONST   (CODE)
      001DAA                       5620 ___str_3:
      001DAA 0A                    5621 	.db 0x0a
      001DAB 53 54 41 52 54 3A 20  5622 	.ascii "START: "
      001DB2 00                    5623 	.db 0x00
                                   5624 	.area CSEG    (CODE)
                                   5625 	.area CONST   (CODE)
      001DB3                       5626 ___str_4:
      001DB3 0A                    5627 	.db 0x0a
      001DB4 53 49 5A 45 3A 20     5628 	.ascii "SIZE: "
      001DBA 00                    5629 	.db 0x00
                                   5630 	.area CSEG    (CODE)
                                   5631 	.area CONST   (CODE)
      001DBB                       5632 ___str_5:
      001DBB 0A                    5633 	.db 0x0a
      001DBC 41 54 54 52 3A 20 30  5634 	.ascii "ATTR: 0x"
             78
      001DC4 00                    5635 	.db 0x00
                                   5636 	.area CSEG    (CODE)
      001AC0                       5637 _FAT16_FILE_READ_power2error_65536_176:
      001AC0 6E 62 79 74 65 73 20  5638 	.ascii "nbytes must be power of 2"
             6D 75 73 74 20 62 65
             20 70 6F 77 65 72 20
             6F 66 20 32
      001AD9 0A                    5639 	.db 0x0a
      001ADA 00                    5640 	.db 0x00
                                   5641 	.area CONST   (CODE)
      001DC5                       5642 ___str_7:
      001DC5 46 49 4C 45 20 4E 4F  5643 	.ascii "FILE NOT FOUND"
             54 20 46 4F 55 4E 44
      001DD3 0A                    5644 	.db 0x0a
      001DD4 2E                    5645 	.ascii "."
      001DD5 00                    5646 	.db 0x00
                                   5647 	.area CSEG    (CODE)
      001ADB                       5648 _SERIAL_LOADER_VERSION_INFO:
      001ADB 49 53 41 3A 53 30 3A  5649 	.ascii "ISA:S0:8052"
             38 30 35 32
      001AE6 0A                    5650 	.db 0x0a
      001AE7 00                    5651 	.db 0x00
      001AE8                       5652 _SelectFAT16PartitionPrompt_HALTING_MSG_65536_195:
      001AE8 48 41 4C 54 21        5653 	.ascii "HALT!"
      001AED 00                    5654 	.db 0x00
                                   5655 	.area CONST   (CODE)
      001DD6                       5656 ___str_9:
      001DD6 42 41 44 20 4D 42 52  5657 	.ascii "BAD MBR!"
             21
      001DDE 0A                    5658 	.db 0x0a
      001DDF 00                    5659 	.db 0x00
                                   5660 	.area CSEG    (CODE)
                                   5661 	.area CONST   (CODE)
      001DE0                       5662 ___str_10:
      001DE0 0A                    5663 	.db 0x0a
      001DE1 50 74 6E 2E 20        5664 	.ascii "Ptn. "
      001DE6 00                    5665 	.db 0x00
                                   5666 	.area CSEG    (CODE)
                                   5667 	.area CONST   (CODE)
      001DE7                       5668 ___str_11:
      001DE7 46 41 54 31 36        5669 	.ascii "FAT16"
      001DEC 00                    5670 	.db 0x00
                                   5671 	.area CSEG    (CODE)
                                   5672 	.area CONST   (CODE)
      001DED                       5673 ___str_12:
      001DED 55 6E 6B 6E 6F 77 6E  5674 	.ascii "Unknown"
      001DF4 00                    5675 	.db 0x00
                                   5676 	.area CSEG    (CODE)
                                   5677 	.area CONST   (CODE)
      001DF5                       5678 ___str_13:
      001DF5 53 6C 63 74 20 50 74  5679 	.ascii "Slct Ptn. >"
             6E 2E 20 3E
      001E00 0A                    5680 	.db 0x0a
      001E01 00                    5681 	.db 0x00
                                   5682 	.area CSEG    (CODE)
                                   5683 	.area CONST   (CODE)
      001E02                       5684 ___str_14:
      001E02 0A                    5685 	.db 0x0a
      001E03 0A                    5686 	.db 0x0a
      001E04 50 74 6E 2E 20 4D 6F  5687 	.ascii "Ptn. Mounted:"
             75 6E 74 65 64 3A
      001E11 00                    5688 	.db 0x00
                                   5689 	.area CSEG    (CODE)
                                   5690 	.area CONST   (CODE)
      001E12                       5691 ___str_15:
      001E12 0A                    5692 	.db 0x0a
      001E13 42 61 64 20 50 74 6E  5693 	.ascii "Bad Ptn."
             2E
      001E1B 0A                    5694 	.db 0x0a
      001E1C 00                    5695 	.db 0x00
                                   5696 	.area CSEG    (CODE)
                                   5697 	.area CONST   (CODE)
      001E1D                       5698 ___str_16:
      001E1D 4E 6F 20 46 41 54 31  5699 	.ascii "No FAT16 Ptn."
             36 20 50 74 6E 2E
      001E2A 0A                    5700 	.db 0x0a
      001E2B 00                    5701 	.db 0x00
                                   5702 	.area CSEG    (CODE)
                                   5703 	.area CONST   (CODE)
      001E2C                       5704 ___str_17:
      001E2C 0A                    5705 	.db 0x0a
      001E2D 49 4E 44 45 58        5706 	.ascii "INDEX"
      001E32 09                    5707 	.db 0x09
      001E33 09                    5708 	.db 0x09
      001E34 46 49 4C 45           5709 	.ascii "FILE"
      001E38 0A                    5710 	.db 0x0a
      001E39 00                    5711 	.db 0x00
                                   5712 	.area CSEG    (CODE)
                                   5713 	.area CONST   (CODE)
      001E3A                       5714 ___str_18:
      001E3A 0A                    5715 	.db 0x0a
      001E3B 53 6C 63 74 20 69 6E  5716 	.ascii "Slct index >"
             64 65 78 20 3E
      001E47 0A                    5717 	.db 0x0a
      001E48 00                    5718 	.db 0x00
                                   5719 	.area CSEG    (CODE)
                                   5720 	.area CONST   (CODE)
      001E49                       5721 ___str_19:
      001E49 0A                    5722 	.db 0x0a
      001E4A 53 59 41 4D 50 55 54  5723 	.ascii "SYAMPUTER:V0"
             45 52 3A 56 30
      001E56 0A                    5724 	.db 0x0a
      001E57 00                    5725 	.db 0x00
                                   5726 	.area CSEG    (CODE)
                                   5727 	.area CONST   (CODE)
      001E58                       5728 ___str_20:
      001E58 49 53 41 3A 46 53 30  5729 	.ascii "ISA:FS0:8052"
             3A 38 30 35 32
      001E64 0A                    5730 	.db 0x0a
      001E65 00                    5731 	.db 0x00
                                   5732 	.area CSEG    (CODE)
                                   5733 	.area CONST   (CODE)
      001E66                       5734 ___str_21:
      001E66 46 57 2E 42 49 4E     5735 	.ascii "FW.BIN"
      001E6C 00                    5736 	.db 0x00
                                   5737 	.area CSEG    (CODE)
                                   5738 	.area CONST   (CODE)
      001E6D                       5739 ___str_22:
      001E6D 0A                    5740 	.db 0x0a
      001E6E 3C 52 55 4E 3E        5741 	.ascii "<RUN>"
      001E73 0A                    5742 	.db 0x0a
      001E74 00                    5743 	.db 0x00
                                   5744 	.area CSEG    (CODE)
                                   5745 	.area CONST   (CODE)
      001E75                       5746 ___str_23:
      001E75 0A                    5747 	.db 0x0a
      001E76 56 65 72 69 66 2E 20  5748 	.ascii "Verif. fail"
             66 61 69 6C
      001E81 00                    5749 	.db 0x00
                                   5750 	.area CSEG    (CODE)
                                   5751 	.area XINIT   (CODE)
                                   5752 	.area CABS    (ABS,CODE)
