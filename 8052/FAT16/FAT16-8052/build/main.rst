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
      00002C                        372 _main_buff_65536_216:
      00002C                        373 	.ds 16
      00003C                        374 _main_xram_addr_65536_216:
      00003C                        375 	.ds 2
                                    376 ;--------------------------------------------------------
                                    377 ; overlayable items in internal ram 
                                    378 ;--------------------------------------------------------
                                    379 	.area	OSEG    (OVR,DATA)
                                    380 	.area	OSEG    (OVR,DATA)
                                    381 	.area	OSEG    (OVR,DATA)
                                    382 	.area	OSEG    (OVR,DATA)
                                    383 	.area	OSEG    (OVR,DATA)
      00003F                        384 _spi_transfer_PARM_2:
      00003F                        385 	.ds 1
                                    386 	.area	OSEG    (OVR,DATA)
      00003F                        387 _HELPER_strcmp_PARM_2:
      00003F                        388 	.ds 3
                                    389 	.area	OSEG    (OVR,DATA)
      00003F                        390 _HELPER_strncmp_PARM_2:
      00003F                        391 	.ds 3
      000042                        392 _HELPER_strncmp_PARM_3:
      000042                        393 	.ds 1
                                    394 	.area	OSEG    (OVR,DATA)
                                    395 	.area	OSEG    (OVR,DATA)
                                    396 	.area	OSEG    (OVR,DATA)
                                    397 ;--------------------------------------------------------
                                    398 ; Stack segment in internal ram 
                                    399 ;--------------------------------------------------------
                                    400 	.area	SSEG
      0000C4                        401 __start__stack:
      0000C4                        402 	.ds	1
                                    403 
                                    404 ;--------------------------------------------------------
                                    405 ; indirectly addressable internal ram data
                                    406 ;--------------------------------------------------------
                                    407 	.area ISEG    (DATA)
      000043                        408 ___global_partitionTableEntry:
      000043                        409 	.ds 9
      00004C                        410 ___global_vbr:
      00004C                        411 	.ds 31
      00006B                        412 ___global_nthPartitionVBRmounted:
      00006B                        413 	.ds 1
      00006C                        414 ___global_rootEntry:
      00006C                        415 	.ds 24
      000084                        416 _MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132:
      000084                        417 	.ds 16
      000094                        418 _VBR_MOUNT_VBR_temp_65536_139:
      000094                        419 	.ds 16
      0000A4                        420 _FAT16_LOAD_ROOTENTRY_temp_65536_151:
      0000A4                        421 	.ds 32
                                    422 ;--------------------------------------------------------
                                    423 ; absolute internal ram data
                                    424 ;--------------------------------------------------------
                                    425 	.area IABS    (ABS,DATA)
                                    426 	.area IABS    (ABS,DATA)
                                    427 ;--------------------------------------------------------
                                    428 ; bit data
                                    429 ;--------------------------------------------------------
                                    430 	.area BSEG    (BIT)
                                    431 ;--------------------------------------------------------
                                    432 ; paged external ram data
                                    433 ;--------------------------------------------------------
                                    434 	.area PSEG    (PAG,XDATA)
                                    435 ;--------------------------------------------------------
                                    436 ; external ram data
                                    437 ;--------------------------------------------------------
                                    438 	.area XSEG    (XDATA)
                                    439 ;--------------------------------------------------------
                                    440 ; absolute external ram data
                                    441 ;--------------------------------------------------------
                                    442 	.area XABS    (ABS,XDATA)
                                    443 ;--------------------------------------------------------
                                    444 ; external initialized ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area XISEG   (XDATA)
                                    447 	.area HOME    (CODE)
                                    448 	.area GSINIT0 (CODE)
                                    449 	.area GSINIT1 (CODE)
                                    450 	.area GSINIT2 (CODE)
                                    451 	.area GSINIT3 (CODE)
                                    452 	.area GSINIT4 (CODE)
                                    453 	.area GSINIT5 (CODE)
                                    454 	.area GSINIT  (CODE)
                                    455 	.area GSFINAL (CODE)
                                    456 	.area CSEG    (CODE)
                                    457 ;--------------------------------------------------------
                                    458 ; interrupt vector 
                                    459 ;--------------------------------------------------------
                                    460 	.area HOME    (CODE)
      000000                        461 __interrupt_vect:
      000000 02 00 06         [24]  462 	ljmp	__sdcc_gsinit_startup
                                    463 ;--------------------------------------------------------
                                    464 ; global & static initialisations
                                    465 ;--------------------------------------------------------
                                    466 	.area HOME    (CODE)
                                    467 	.area GSINIT  (CODE)
                                    468 	.area GSFINAL (CODE)
                                    469 	.area GSINIT  (CODE)
                                    470 	.globl __sdcc_gsinit_startup
                                    471 	.globl __sdcc_program_startup
                                    472 	.globl __start__stack
                                    473 	.globl __mcs51_genXINIT
                                    474 	.globl __mcs51_genXRAMCLEAR
                                    475 	.globl __mcs51_genRAMCLEAR
                                    476 ;	serialloader.h:20: volatile unsigned char EEPROM_WRITE_PROTECTION=1;
      00005F 75 2B 01         [24]  477 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                    478 ;	fat.h:238: __idata static uint8_t __global_nthPartitionVBRmounted=255; //mounted if value is 0-3 for the 4 partitions,else not mounted
      000062 78 6B            [12]  479 	mov	r0,#___global_nthPartitionVBRmounted
      000064 76 FF            [12]  480 	mov	@r0,#0xff
                                    481 	.area GSFINAL (CODE)
      000066 02 00 03         [24]  482 	ljmp	__sdcc_program_startup
                                    483 ;--------------------------------------------------------
                                    484 ; Home
                                    485 ;--------------------------------------------------------
                                    486 	.area HOME    (CODE)
                                    487 	.area HOME    (CODE)
      000003                        488 __sdcc_program_startup:
      000003 02 1A 9D         [24]  489 	ljmp	_main
                                    490 ;	return from main will return to caller
                                    491 ;--------------------------------------------------------
                                    492 ; code
                                    493 ;--------------------------------------------------------
                                    494 	.area CSEG    (CODE)
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'hexNibble2dec'
                                    497 ;------------------------------------------------------------
                                    498 ;nibble                    Allocated to registers r7 
                                    499 ;------------------------------------------------------------
                                    500 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    501 ;	-----------------------------------------
                                    502 ;	 function hexNibble2dec
                                    503 ;	-----------------------------------------
      000069                        504 _hexNibble2dec:
                           000007   505 	ar7 = 0x07
                           000006   506 	ar6 = 0x06
                           000005   507 	ar5 = 0x05
                           000004   508 	ar4 = 0x04
                           000003   509 	ar3 = 0x03
                           000002   510 	ar2 = 0x02
                           000001   511 	ar1 = 0x01
                           000000   512 	ar0 = 0x00
      000069 AF 82            [24]  513 	mov	r7,dpl
                                    514 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      00006B BF 30 00         [24]  515 	cjne	r7,#0x30,00139$
      00006E                        516 00139$:
      00006E 40 0D            [24]  517 	jc	00110$
      000070 EF               [12]  518 	mov	a,r7
      000071 24 C6            [12]  519 	add	a,#0xff - 0x39
      000073 40 08            [24]  520 	jc	00110$
      000075 8F 06            [24]  521 	mov	ar6,r7
      000077 EE               [12]  522 	mov	a,r6
      000078 24 D0            [12]  523 	add	a,#0xd0
      00007A F5 82            [12]  524 	mov	dpl,a
      00007C 22               [24]  525 	ret
      00007D                        526 00110$:
                                    527 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      00007D BF 41 00         [24]  528 	cjne	r7,#0x41,00142$
      000080                        529 00142$:
      000080 40 0D            [24]  530 	jc	00106$
      000082 EF               [12]  531 	mov	a,r7
      000083 24 B9            [12]  532 	add	a,#0xff - 0x46
      000085 40 08            [24]  533 	jc	00106$
      000087 8F 06            [24]  534 	mov	ar6,r7
      000089 74 C9            [12]  535 	mov	a,#0xc9
      00008B 2E               [12]  536 	add	a,r6
      00008C F5 82            [12]  537 	mov	dpl,a
      00008E 22               [24]  538 	ret
      00008F                        539 00106$:
                                    540 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      00008F BF 61 00         [24]  541 	cjne	r7,#0x61,00145$
      000092                        542 00145$:
      000092 40 0B            [24]  543 	jc	00102$
      000094 EF               [12]  544 	mov	a,r7
      000095 24 99            [12]  545 	add	a,#0xff - 0x66
      000097 40 06            [24]  546 	jc	00102$
      000099 74 A9            [12]  547 	mov	a,#0xa9
      00009B 2F               [12]  548 	add	a,r7
      00009C F5 82            [12]  549 	mov	dpl,a
      00009E 22               [24]  550 	ret
      00009F                        551 00102$:
                                    552 ;	uart.h:11: else return 0;
      00009F 75 82 00         [24]  553 	mov	dpl,#0x00
                                    554 ;	uart.h:12: }
      0000A2 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'hex2dec'
                                    558 ;------------------------------------------------------------
                                    559 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    560 ;MSnibble                  Allocated to registers r7 
                                    561 ;------------------------------------------------------------
                                    562 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    563 ;	-----------------------------------------
                                    564 ;	 function hex2dec
                                    565 ;	-----------------------------------------
      0000A3                        566 _hex2dec:
                                    567 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      0000A3 12 00 69         [24]  568 	lcall	_hexNibble2dec
      0000A6 E5 82            [12]  569 	mov	a,dpl
      0000A8 C4               [12]  570 	swap	a
      0000A9 54 F0            [12]  571 	anl	a,#0xf0
      0000AB FF               [12]  572 	mov	r7,a
      0000AC 85 08 82         [24]  573 	mov	dpl,_hex2dec_PARM_2
      0000AF C0 07            [24]  574 	push	ar7
      0000B1 12 00 69         [24]  575 	lcall	_hexNibble2dec
      0000B4 AE 82            [24]  576 	mov	r6,dpl
      0000B6 D0 07            [24]  577 	pop	ar7
      0000B8 EE               [12]  578 	mov	a,r6
      0000B9 2F               [12]  579 	add	a,r7
      0000BA F5 82            [12]  580 	mov	dpl,a
                                    581 ;	uart.h:18: }
      0000BC 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'dec2hexNibble'
                                    585 ;------------------------------------------------------------
                                    586 ;dec                       Allocated to registers r7 
                                    587 ;------------------------------------------------------------
                                    588 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    589 ;	-----------------------------------------
                                    590 ;	 function dec2hexNibble
                                    591 ;	-----------------------------------------
      0000BD                        592 _dec2hexNibble:
                                    593 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000BD E5 82            [12]  594 	mov	a,dpl
      0000BF FF               [12]  595 	mov	r7,a
      0000C0 24 F0            [12]  596 	add	a,#0xff - 0x0f
      0000C2 50 04            [24]  597 	jnc	00102$
      0000C4 75 82 58         [24]  598 	mov	dpl,#0x58
      0000C7 22               [24]  599 	ret
      0000C8                        600 00102$:
                                    601 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C8 EF               [12]  602 	mov	a,r7
      0000C9 24 F6            [12]  603 	add	a,#0xff - 0x09
      0000CB 40 08            [24]  604 	jc	00104$
      0000CD 8F 06            [24]  605 	mov	ar6,r7
      0000CF 74 30            [12]  606 	mov	a,#0x30
      0000D1 2E               [12]  607 	add	a,r6
      0000D2 F5 82            [12]  608 	mov	dpl,a
      0000D4 22               [24]  609 	ret
      0000D5                        610 00104$:
                                    611 ;	uart.h:27: else return 'A' + dec - 10;
      0000D5 74 37            [12]  612 	mov	a,#0x37
      0000D7 2F               [12]  613 	add	a,r7
      0000D8 F5 82            [12]  614 	mov	dpl,a
                                    615 ;	uart.h:28: }
      0000DA 22               [24]  616 	ret
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'UartBegin'
                                    619 ;------------------------------------------------------------
                                    620 ;	uart.h:33: void UartBegin()
                                    621 ;	-----------------------------------------
                                    622 ;	 function UartBegin
                                    623 ;	-----------------------------------------
      0000DB                        624 _UartBegin:
                                    625 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000DB 75 89 20         [24]  626 	mov	_TMOD,#0x20
                                    627 ;	uart.h:39: TH1 = 0XF3; //2400
      0000DE 75 8D F3         [24]  628 	mov	_TH1,#0xf3
                                    629 ;	uart.h:40: SCON = 0X50;
      0000E1 75 98 50         [24]  630 	mov	_SCON,#0x50
                                    631 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000E4 43 87 80         [24]  632 	orl	_PCON,#0x80
                                    633 ;	uart.h:44: TR1 = 1; //START TIMER
                                    634 ;	assignBit
      0000E7 D2 8E            [12]  635 	setb	_TR1
                                    636 ;	uart.h:45: }
      0000E9 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'UartReadReady'
                                    640 ;------------------------------------------------------------
                                    641 ;	uart.h:47: unsigned char UartReadReady()
                                    642 ;	-----------------------------------------
                                    643 ;	 function UartReadReady
                                    644 ;	-----------------------------------------
      0000EA                        645 _UartReadReady:
                                    646 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000EA 20 98 04         [24]  647 	jb	_RI,00102$
      0000ED 75 82 00         [24]  648 	mov	dpl,#0x00
      0000F0 22               [24]  649 	ret
      0000F1                        650 00102$:
                                    651 ;	uart.h:50: else return 1; //received and ready
      0000F1 75 82 01         [24]  652 	mov	dpl,#0x01
                                    653 ;	uart.h:51: }
      0000F4 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'UartRead'
                                    657 ;------------------------------------------------------------
                                    658 ;value                     Allocated to registers 
                                    659 ;------------------------------------------------------------
                                    660 ;	uart.h:53: unsigned char UartRead()
                                    661 ;	-----------------------------------------
                                    662 ;	 function UartRead
                                    663 ;	-----------------------------------------
      0000F5                        664 _UartRead:
                                    665 ;	uart.h:56: while(RI==0); //wait till RX
      0000F5                        666 00101$:
                                    667 ;	uart.h:57: RI=0;
                                    668 ;	assignBit
      0000F5 10 98 02         [24]  669 	jbc	_RI,00114$
      0000F8 80 FB            [24]  670 	sjmp	00101$
      0000FA                        671 00114$:
                                    672 ;	uart.h:58: value = SBUF;
      0000FA 85 99 82         [24]  673 	mov	dpl,_SBUF
                                    674 ;	uart.h:59: return value;
                                    675 ;	uart.h:60: }
      0000FD 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'UartWrite'
                                    679 ;------------------------------------------------------------
                                    680 ;value                     Allocated to registers 
                                    681 ;------------------------------------------------------------
                                    682 ;	uart.h:63: void UartWrite(unsigned char value)
                                    683 ;	-----------------------------------------
                                    684 ;	 function UartWrite
                                    685 ;	-----------------------------------------
      0000FE                        686 _UartWrite:
      0000FE 85 82 99         [24]  687 	mov	_SBUF,dpl
                                    688 ;	uart.h:66: while(TI==0); // wait till TX
      000101                        689 00101$:
                                    690 ;	uart.h:67: TI=0;
                                    691 ;	assignBit
      000101 10 99 02         [24]  692 	jbc	_TI,00114$
      000104 80 FB            [24]  693 	sjmp	00101$
      000106                        694 00114$:
                                    695 ;	uart.h:68: }
      000106 22               [24]  696 	ret
                                    697 ;------------------------------------------------------------
                                    698 ;Allocation info for local variables in function 'UartWriteBuff'
                                    699 ;------------------------------------------------------------
                                    700 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    701 ;p                         Allocated to registers r5 r6 r7 
                                    702 ;i                         Allocated to registers r4 
                                    703 ;------------------------------------------------------------
                                    704 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    705 ;	-----------------------------------------
                                    706 ;	 function UartWriteBuff
                                    707 ;	-----------------------------------------
      000107                        708 _UartWriteBuff:
      000107 AD 82            [24]  709 	mov	r5,dpl
      000109 AE 83            [24]  710 	mov	r6,dph
      00010B AF F0            [24]  711 	mov	r7,b
                                    712 ;	uart.h:73: for (i=0;i<length;i++)
      00010D 7C 00            [12]  713 	mov	r4,#0x00
      00010F                        714 00103$:
      00010F C3               [12]  715 	clr	c
      000110 EC               [12]  716 	mov	a,r4
      000111 95 09            [12]  717 	subb	a,_UartWriteBuff_PARM_2
      000113 50 29            [24]  718 	jnc	00105$
                                    719 ;	uart.h:75: UartWrite(p[i]);
      000115 EC               [12]  720 	mov	a,r4
      000116 2D               [12]  721 	add	a,r5
      000117 F9               [12]  722 	mov	r1,a
      000118 E4               [12]  723 	clr	a
      000119 3E               [12]  724 	addc	a,r6
      00011A FA               [12]  725 	mov	r2,a
      00011B 8F 03            [24]  726 	mov	ar3,r7
      00011D 89 82            [24]  727 	mov	dpl,r1
      00011F 8A 83            [24]  728 	mov	dph,r2
      000121 8B F0            [24]  729 	mov	b,r3
      000123 12 1E 1D         [24]  730 	lcall	__gptrget
      000126 F5 82            [12]  731 	mov	dpl,a
      000128 C0 07            [24]  732 	push	ar7
      00012A C0 06            [24]  733 	push	ar6
      00012C C0 05            [24]  734 	push	ar5
      00012E C0 04            [24]  735 	push	ar4
      000130 12 00 FE         [24]  736 	lcall	_UartWrite
      000133 D0 04            [24]  737 	pop	ar4
      000135 D0 05            [24]  738 	pop	ar5
      000137 D0 06            [24]  739 	pop	ar6
      000139 D0 07            [24]  740 	pop	ar7
                                    741 ;	uart.h:73: for (i=0;i<length;i++)
      00013B 0C               [12]  742 	inc	r4
      00013C 80 D1            [24]  743 	sjmp	00103$
      00013E                        744 00105$:
                                    745 ;	uart.h:77: }
      00013E 22               [24]  746 	ret
                                    747 ;------------------------------------------------------------
                                    748 ;Allocation info for local variables in function 'UartReadBuff'
                                    749 ;------------------------------------------------------------
                                    750 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    751 ;p                         Allocated to registers r5 r6 r7 
                                    752 ;i                         Allocated to registers r4 
                                    753 ;------------------------------------------------------------
                                    754 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    755 ;	-----------------------------------------
                                    756 ;	 function UartReadBuff
                                    757 ;	-----------------------------------------
      00013F                        758 _UartReadBuff:
      00013F AD 82            [24]  759 	mov	r5,dpl
      000141 AE 83            [24]  760 	mov	r6,dph
      000143 AF F0            [24]  761 	mov	r7,b
                                    762 ;	uart.h:82: for (i=0;i<length;i++)
      000145 7C 00            [12]  763 	mov	r4,#0x00
      000147                        764 00103$:
      000147 C3               [12]  765 	clr	c
      000148 EC               [12]  766 	mov	a,r4
      000149 95 0A            [12]  767 	subb	a,_UartReadBuff_PARM_2
      00014B 50 36            [24]  768 	jnc	00105$
                                    769 ;	uart.h:84: p[i] = UartRead();
      00014D EC               [12]  770 	mov	a,r4
      00014E 2D               [12]  771 	add	a,r5
      00014F F9               [12]  772 	mov	r1,a
      000150 E4               [12]  773 	clr	a
      000151 3E               [12]  774 	addc	a,r6
      000152 FA               [12]  775 	mov	r2,a
      000153 8F 03            [24]  776 	mov	ar3,r7
      000155 C0 07            [24]  777 	push	ar7
      000157 C0 06            [24]  778 	push	ar6
      000159 C0 05            [24]  779 	push	ar5
      00015B C0 04            [24]  780 	push	ar4
      00015D C0 03            [24]  781 	push	ar3
      00015F C0 02            [24]  782 	push	ar2
      000161 C0 01            [24]  783 	push	ar1
      000163 12 00 F5         [24]  784 	lcall	_UartRead
      000166 A8 82            [24]  785 	mov	r0,dpl
      000168 D0 01            [24]  786 	pop	ar1
      00016A D0 02            [24]  787 	pop	ar2
      00016C D0 03            [24]  788 	pop	ar3
      00016E D0 04            [24]  789 	pop	ar4
      000170 D0 05            [24]  790 	pop	ar5
      000172 D0 06            [24]  791 	pop	ar6
      000174 D0 07            [24]  792 	pop	ar7
      000176 89 82            [24]  793 	mov	dpl,r1
      000178 8A 83            [24]  794 	mov	dph,r2
      00017A 8B F0            [24]  795 	mov	b,r3
      00017C E8               [12]  796 	mov	a,r0
      00017D 12 1D 2A         [24]  797 	lcall	__gptrput
                                    798 ;	uart.h:82: for (i=0;i<length;i++)
      000180 0C               [12]  799 	inc	r4
      000181 80 C4            [24]  800 	sjmp	00103$
      000183                        801 00105$:
                                    802 ;	uart.h:86: }
      000183 22               [24]  803 	ret
                                    804 ;------------------------------------------------------------
                                    805 ;Allocation info for local variables in function 'UartPrint'
                                    806 ;------------------------------------------------------------
                                    807 ;p                         Allocated to registers 
                                    808 ;------------------------------------------------------------
                                    809 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    810 ;	-----------------------------------------
                                    811 ;	 function UartPrint
                                    812 ;	-----------------------------------------
      000184                        813 _UartPrint:
      000184 AD 82            [24]  814 	mov	r5,dpl
      000186 AE 83            [24]  815 	mov	r6,dph
      000188 AF F0            [24]  816 	mov	r7,b
                                    817 ;	uart.h:90: do
      00018A                        818 00101$:
                                    819 ;	uart.h:92: UartWrite(*p);
      00018A 8D 82            [24]  820 	mov	dpl,r5
      00018C 8E 83            [24]  821 	mov	dph,r6
      00018E 8F F0            [24]  822 	mov	b,r7
      000190 12 1E 1D         [24]  823 	lcall	__gptrget
      000193 FC               [12]  824 	mov	r4,a
      000194 A3               [24]  825 	inc	dptr
      000195 AD 82            [24]  826 	mov	r5,dpl
      000197 AE 83            [24]  827 	mov	r6,dph
      000199 8C 82            [24]  828 	mov	dpl,r4
      00019B C0 07            [24]  829 	push	ar7
      00019D C0 06            [24]  830 	push	ar6
      00019F C0 05            [24]  831 	push	ar5
      0001A1 12 00 FE         [24]  832 	lcall	_UartWrite
      0001A4 D0 05            [24]  833 	pop	ar5
      0001A6 D0 06            [24]  834 	pop	ar6
      0001A8 D0 07            [24]  835 	pop	ar7
                                    836 ;	uart.h:93: }while(*(++p)!=0);
      0001AA 8D 82            [24]  837 	mov	dpl,r5
      0001AC 8E 83            [24]  838 	mov	dph,r6
      0001AE 8F F0            [24]  839 	mov	b,r7
      0001B0 12 1E 1D         [24]  840 	lcall	__gptrget
      0001B3 70 D5            [24]  841 	jnz	00101$
                                    842 ;	uart.h:94: }
      0001B5 22               [24]  843 	ret
                                    844 ;------------------------------------------------------------
                                    845 ;Allocation info for local variables in function 'UartWriteNumber'
                                    846 ;------------------------------------------------------------
                                    847 ;format                    Allocated to stack - _bp -3
                                    848 ;num                       Allocated to registers r7 
                                    849 ;msd                       Allocated to registers r4 
                                    850 ;lsd                       Allocated to registers r6 
                                    851 ;extra                     Allocated to registers r3 
                                    852 ;------------------------------------------------------------
                                    853 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    854 ;	-----------------------------------------
                                    855 ;	 function UartWriteNumber
                                    856 ;	-----------------------------------------
      0001B6                        857 _UartWriteNumber:
      0001B6 C0 3E            [24]  858 	push	_bp
      0001B8 85 81 3E         [24]  859 	mov	_bp,sp
      0001BB AF 82            [24]  860 	mov	r7,dpl
                                    861 ;	uart.h:104: if(format==HEX)
      0001BD E5 3E            [12]  862 	mov	a,_bp
      0001BF 24 FD            [12]  863 	add	a,#0xfd
      0001C1 F8               [12]  864 	mov	r0,a
      0001C2 E6               [12]  865 	mov	a,@r0
                                    866 ;	uart.h:106: msd = num/16;
      0001C3 70 32            [24]  867 	jnz	00104$
      0001C5 8F 05            [24]  868 	mov	ar5,r7
      0001C7 FE               [12]  869 	mov	r6,a
      0001C8 75 3F 10         [24]  870 	mov	__divsint_PARM_2,#0x10
                                    871 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001CB 8E 40            [24]  872 	mov	(__divsint_PARM_2 + 1),r6
      0001CD 8D 82            [24]  873 	mov	dpl,r5
      0001CF 8E 83            [24]  874 	mov	dph,r6
      0001D1 C0 06            [24]  875 	push	ar6
      0001D3 C0 05            [24]  876 	push	ar5
      0001D5 12 1E 6F         [24]  877 	lcall	__divsint
      0001D8 AB 82            [24]  878 	mov	r3,dpl
      0001DA D0 05            [24]  879 	pop	ar5
      0001DC D0 06            [24]  880 	pop	ar6
                                    881 ;	uart.h:107: lsd = num%16;
      0001DE 53 05 0F         [24]  882 	anl	ar5,#0x0f
                                    883 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001E1 8B 82            [24]  884 	mov	dpl,r3
      0001E3 C0 05            [24]  885 	push	ar5
      0001E5 12 00 BD         [24]  886 	lcall	_dec2hexNibble
      0001E8 12 00 FE         [24]  887 	lcall	_UartWrite
      0001EB D0 05            [24]  888 	pop	ar5
                                    889 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001ED 8D 82            [24]  890 	mov	dpl,r5
      0001EF 12 00 BD         [24]  891 	lcall	_dec2hexNibble
      0001F2 12 00 FE         [24]  892 	lcall	_UartWrite
      0001F5 80 7B            [24]  893 	sjmp	00106$
      0001F7                        894 00104$:
                                    895 ;	uart.h:112: else if(format==DEC)
      0001F7 E5 3E            [12]  896 	mov	a,_bp
      0001F9 24 FD            [12]  897 	add	a,#0xfd
      0001FB F8               [12]  898 	mov	r0,a
      0001FC B6 01 73         [24]  899 	cjne	@r0,#0x01,00106$
                                    900 ;	uart.h:114: msd = num/100; // 100s place
      0001FF 7E 00            [12]  901 	mov	r6,#0x00
      000201 75 3F 64         [24]  902 	mov	__divsint_PARM_2,#0x64
                                    903 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000204 8E 40            [24]  904 	mov	(__divsint_PARM_2 + 1),r6
      000206 8F 82            [24]  905 	mov	dpl,r7
      000208 8E 83            [24]  906 	mov	dph,r6
      00020A C0 07            [24]  907 	push	ar7
      00020C C0 06            [24]  908 	push	ar6
      00020E 12 1E 6F         [24]  909 	lcall	__divsint
      000211 AC 82            [24]  910 	mov	r4,dpl
      000213 D0 06            [24]  911 	pop	ar6
      000215 D0 07            [24]  912 	pop	ar7
                                    913 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000217 75 3F 64         [24]  914 	mov	__modsint_PARM_2,#0x64
      00021A 75 40 00         [24]  915 	mov	(__modsint_PARM_2 + 1),#0x00
      00021D 8F 82            [24]  916 	mov	dpl,r7
      00021F 8E 83            [24]  917 	mov	dph,r6
      000221 C0 07            [24]  918 	push	ar7
      000223 C0 06            [24]  919 	push	ar6
      000225 C0 04            [24]  920 	push	ar4
      000227 12 1E 39         [24]  921 	lcall	__modsint
      00022A 75 3F 0A         [24]  922 	mov	__divsint_PARM_2,#0x0a
      00022D 75 40 00         [24]  923 	mov	(__divsint_PARM_2 + 1),#0x00
      000230 12 1E 6F         [24]  924 	lcall	__divsint
      000233 AB 82            [24]  925 	mov	r3,dpl
      000235 D0 04            [24]  926 	pop	ar4
      000237 D0 06            [24]  927 	pop	ar6
      000239 D0 07            [24]  928 	pop	ar7
                                    929 ;	uart.h:116: lsd = num%10;
      00023B 75 3F 0A         [24]  930 	mov	__modsint_PARM_2,#0x0a
      00023E 75 40 00         [24]  931 	mov	(__modsint_PARM_2 + 1),#0x00
      000241 8F 82            [24]  932 	mov	dpl,r7
      000243 8E 83            [24]  933 	mov	dph,r6
      000245 C0 04            [24]  934 	push	ar4
      000247 C0 03            [24]  935 	push	ar3
      000249 12 1E 39         [24]  936 	lcall	__modsint
      00024C AE 82            [24]  937 	mov	r6,dpl
      00024E D0 03            [24]  938 	pop	ar3
      000250 D0 04            [24]  939 	pop	ar4
                                    940 ;	uart.h:118: UartWrite(msd + 0x30);
      000252 74 30            [12]  941 	mov	a,#0x30
      000254 2C               [12]  942 	add	a,r4
      000255 F5 82            [12]  943 	mov	dpl,a
      000257 C0 06            [24]  944 	push	ar6
      000259 C0 03            [24]  945 	push	ar3
      00025B 12 00 FE         [24]  946 	lcall	_UartWrite
      00025E D0 03            [24]  947 	pop	ar3
                                    948 ;	uart.h:119: UartWrite(extra + 0x30);
      000260 74 30            [12]  949 	mov	a,#0x30
      000262 2B               [12]  950 	add	a,r3
      000263 F5 82            [12]  951 	mov	dpl,a
      000265 12 00 FE         [24]  952 	lcall	_UartWrite
      000268 D0 06            [24]  953 	pop	ar6
                                    954 ;	uart.h:120: UartWrite(lsd + 0x30);
      00026A 74 30            [12]  955 	mov	a,#0x30
      00026C 2E               [12]  956 	add	a,r6
      00026D F5 82            [12]  957 	mov	dpl,a
      00026F 12 00 FE         [24]  958 	lcall	_UartWrite
      000272                        959 00106$:
                                    960 ;	uart.h:123: }
      000272 D0 3E            [24]  961 	pop	_bp
      000274 22               [24]  962 	ret
                                    963 ;------------------------------------------------------------
                                    964 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    965 ;------------------------------------------------------------
                                    966 ;length                    Allocated to stack - _bp -3
                                    967 ;format                    Allocated to stack - _bp -4
                                    968 ;delimiter                 Allocated to stack - _bp -5
                                    969 ;p                         Allocated to registers 
                                    970 ;i                         Allocated to registers r4 
                                    971 ;------------------------------------------------------------
                                    972 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    973 ;	-----------------------------------------
                                    974 ;	 function UartWriteNumbers
                                    975 ;	-----------------------------------------
      000275                        976 _UartWriteNumbers:
      000275 C0 3E            [24]  977 	push	_bp
      000277 85 81 3E         [24]  978 	mov	_bp,sp
      00027A AD 82            [24]  979 	mov	r5,dpl
      00027C AE 83            [24]  980 	mov	r6,dph
      00027E AF F0            [24]  981 	mov	r7,b
                                    982 ;	uart.h:129: for(i=0;i<length;i++,p++)
      000280 7C 00            [12]  983 	mov	r4,#0x00
      000282                        984 00103$:
      000282 E5 3E            [12]  985 	mov	a,_bp
      000284 24 FD            [12]  986 	add	a,#0xfd
      000286 F8               [12]  987 	mov	r0,a
      000287 C3               [12]  988 	clr	c
      000288 EC               [12]  989 	mov	a,r4
      000289 96               [12]  990 	subb	a,@r0
      00028A 50 3B            [24]  991 	jnc	00105$
                                    992 ;	uart.h:131: UartWriteNumber(*p,format);
      00028C 8D 82            [24]  993 	mov	dpl,r5
      00028E 8E 83            [24]  994 	mov	dph,r6
      000290 8F F0            [24]  995 	mov	b,r7
      000292 12 1E 1D         [24]  996 	lcall	__gptrget
      000295 FB               [12]  997 	mov	r3,a
      000296 A3               [24]  998 	inc	dptr
      000297 AD 82            [24]  999 	mov	r5,dpl
      000299 AE 83            [24] 1000 	mov	r6,dph
      00029B C0 07            [24] 1001 	push	ar7
      00029D C0 06            [24] 1002 	push	ar6
      00029F C0 05            [24] 1003 	push	ar5
      0002A1 C0 04            [24] 1004 	push	ar4
      0002A3 E5 3E            [12] 1005 	mov	a,_bp
      0002A5 24 FC            [12] 1006 	add	a,#0xfc
      0002A7 F8               [12] 1007 	mov	r0,a
      0002A8 E6               [12] 1008 	mov	a,@r0
      0002A9 C0 E0            [24] 1009 	push	acc
      0002AB 8B 82            [24] 1010 	mov	dpl,r3
      0002AD 12 01 B6         [24] 1011 	lcall	_UartWriteNumber
      0002B0 15 81            [12] 1012 	dec	sp
                                   1013 ;	uart.h:132: UartWrite(delimiter);
      0002B2 E5 3E            [12] 1014 	mov	a,_bp
      0002B4 24 FB            [12] 1015 	add	a,#0xfb
      0002B6 F8               [12] 1016 	mov	r0,a
      0002B7 86 82            [24] 1017 	mov	dpl,@r0
      0002B9 12 00 FE         [24] 1018 	lcall	_UartWrite
      0002BC D0 04            [24] 1019 	pop	ar4
      0002BE D0 05            [24] 1020 	pop	ar5
      0002C0 D0 06            [24] 1021 	pop	ar6
      0002C2 D0 07            [24] 1022 	pop	ar7
                                   1023 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002C4 0C               [12] 1024 	inc	r4
      0002C5 80 BB            [24] 1025 	sjmp	00103$
      0002C7                       1026 00105$:
                                   1027 ;	uart.h:134: }
      0002C7 D0 3E            [24] 1028 	pop	_bp
      0002C9 22               [24] 1029 	ret
                                   1030 ;------------------------------------------------------------
                                   1031 ;Allocation info for local variables in function 'UartPrintNumber'
                                   1032 ;------------------------------------------------------------
                                   1033 ;n                         Allocated to stack - _bp +1
                                   1034 ;digit                     Allocated to stack - _bp +7
                                   1035 ;i                         Allocated to stack - _bp +5
                                   1036 ;j                         Allocated to registers r3 
                                   1037 ;leading_zeroes_flag       Allocated to stack - _bp +6
                                   1038 ;sloc0                     Allocated to stack - _bp +12
                                   1039 ;------------------------------------------------------------
                                   1040 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                   1041 ;	-----------------------------------------
                                   1042 ;	 function UartPrintNumber
                                   1043 ;	-----------------------------------------
      0002CA                       1044 _UartPrintNumber:
      0002CA C0 3E            [24] 1045 	push	_bp
      0002CC 85 81 3E         [24] 1046 	mov	_bp,sp
      0002CF C0 82            [24] 1047 	push	dpl
      0002D1 C0 83            [24] 1048 	push	dph
      0002D3 C0 F0            [24] 1049 	push	b
      0002D5 C0 E0            [24] 1050 	push	acc
      0002D7 E5 81            [12] 1051 	mov	a,sp
      0002D9 24 06            [12] 1052 	add	a,#0x06
      0002DB F5 81            [12] 1053 	mov	sp,a
                                   1054 ;	uart.h:152: char i,j,leading_zeroes_flag=1;
      0002DD E5 3E            [12] 1055 	mov	a,_bp
      0002DF 24 06            [12] 1056 	add	a,#0x06
      0002E1 F8               [12] 1057 	mov	r0,a
      0002E2 76 01            [12] 1058 	mov	@r0,#0x01
                                   1059 ;	uart.h:153: for(i=8;i>0;i--)
      0002E4 E5 3E            [12] 1060 	mov	a,_bp
      0002E6 24 05            [12] 1061 	add	a,#0x05
      0002E8 F8               [12] 1062 	mov	r0,a
      0002E9 76 08            [12] 1063 	mov	@r0,#0x08
      0002EB                       1064 00112$:
                                   1065 ;	uart.h:155: digit=n;
      0002EB A8 3E            [24] 1066 	mov	r0,_bp
      0002ED 08               [12] 1067 	inc	r0
      0002EE E5 3E            [12] 1068 	mov	a,_bp
      0002F0 24 07            [12] 1069 	add	a,#0x07
      0002F2 F9               [12] 1070 	mov	r1,a
      0002F3 E6               [12] 1071 	mov	a,@r0
      0002F4 F7               [12] 1072 	mov	@r1,a
      0002F5 08               [12] 1073 	inc	r0
      0002F6 09               [12] 1074 	inc	r1
      0002F7 E6               [12] 1075 	mov	a,@r0
      0002F8 F7               [12] 1076 	mov	@r1,a
      0002F9 08               [12] 1077 	inc	r0
      0002FA 09               [12] 1078 	inc	r1
      0002FB E6               [12] 1079 	mov	a,@r0
      0002FC F7               [12] 1080 	mov	@r1,a
      0002FD 08               [12] 1081 	inc	r0
      0002FE 09               [12] 1082 	inc	r1
      0002FF E6               [12] 1083 	mov	a,@r0
      000300 F7               [12] 1084 	mov	@r1,a
                                   1085 ;	uart.h:156: for(j=1;j<i;j++) digit/=10;
      000301 7B 01            [12] 1086 	mov	r3,#0x01
      000303                       1087 00110$:
      000303 E5 3E            [12] 1088 	mov	a,_bp
      000305 24 05            [12] 1089 	add	a,#0x05
      000307 F8               [12] 1090 	mov	r0,a
      000308 C3               [12] 1091 	clr	c
      000309 EB               [12] 1092 	mov	a,r3
      00030A 96               [12] 1093 	subb	a,@r0
      00030B 50 3A            [24] 1094 	jnc	00101$
      00030D 75 3F 0A         [24] 1095 	mov	__divulong_PARM_2,#0x0a
      000310 E4               [12] 1096 	clr	a
      000311 F5 40            [12] 1097 	mov	(__divulong_PARM_2 + 1),a
      000313 F5 41            [12] 1098 	mov	(__divulong_PARM_2 + 2),a
      000315 F5 42            [12] 1099 	mov	(__divulong_PARM_2 + 3),a
      000317 E5 3E            [12] 1100 	mov	a,_bp
      000319 24 07            [12] 1101 	add	a,#0x07
      00031B F8               [12] 1102 	mov	r0,a
      00031C 86 82            [24] 1103 	mov	dpl,@r0
      00031E 08               [12] 1104 	inc	r0
      00031F 86 83            [24] 1105 	mov	dph,@r0
      000321 08               [12] 1106 	inc	r0
      000322 86 F0            [24] 1107 	mov	b,@r0
      000324 08               [12] 1108 	inc	r0
      000325 E6               [12] 1109 	mov	a,@r0
      000326 C0 03            [24] 1110 	push	ar3
      000328 12 1C C5         [24] 1111 	lcall	__divulong
      00032B AC 82            [24] 1112 	mov	r4,dpl
      00032D AD 83            [24] 1113 	mov	r5,dph
      00032F AE F0            [24] 1114 	mov	r6,b
      000331 FF               [12] 1115 	mov	r7,a
      000332 D0 03            [24] 1116 	pop	ar3
      000334 E5 3E            [12] 1117 	mov	a,_bp
      000336 24 07            [12] 1118 	add	a,#0x07
      000338 F8               [12] 1119 	mov	r0,a
      000339 A6 04            [24] 1120 	mov	@r0,ar4
      00033B 08               [12] 1121 	inc	r0
      00033C A6 05            [24] 1122 	mov	@r0,ar5
      00033E 08               [12] 1123 	inc	r0
      00033F A6 06            [24] 1124 	mov	@r0,ar6
      000341 08               [12] 1125 	inc	r0
      000342 A6 07            [24] 1126 	mov	@r0,ar7
      000344 0B               [12] 1127 	inc	r3
      000345 80 BC            [24] 1128 	sjmp	00110$
      000347                       1129 00101$:
                                   1130 ;	uart.h:158: if(leading_zeroes_flag && digit%10) leading_zeroes_flag=0; //flag to start printing
      000347 E5 3E            [12] 1131 	mov	a,_bp
      000349 24 06            [12] 1132 	add	a,#0x06
      00034B F8               [12] 1133 	mov	r0,a
      00034C E6               [12] 1134 	mov	a,@r0
      00034D 60 30            [24] 1135 	jz	00103$
      00034F 75 3F 0A         [24] 1136 	mov	__modulong_PARM_2,#0x0a
      000352 E4               [12] 1137 	clr	a
      000353 F5 40            [12] 1138 	mov	(__modulong_PARM_2 + 1),a
      000355 F5 41            [12] 1139 	mov	(__modulong_PARM_2 + 2),a
      000357 F5 42            [12] 1140 	mov	(__modulong_PARM_2 + 3),a
      000359 E5 3E            [12] 1141 	mov	a,_bp
      00035B 24 07            [12] 1142 	add	a,#0x07
      00035D F8               [12] 1143 	mov	r0,a
      00035E 86 82            [24] 1144 	mov	dpl,@r0
      000360 08               [12] 1145 	inc	r0
      000361 86 83            [24] 1146 	mov	dph,@r0
      000363 08               [12] 1147 	inc	r0
      000364 86 F0            [24] 1148 	mov	b,@r0
      000366 08               [12] 1149 	inc	r0
      000367 E6               [12] 1150 	mov	a,@r0
      000368 12 1C 42         [24] 1151 	lcall	__modulong
      00036B AA 82            [24] 1152 	mov	r2,dpl
      00036D AB 83            [24] 1153 	mov	r3,dph
      00036F AE F0            [24] 1154 	mov	r6,b
      000371 FF               [12] 1155 	mov	r7,a
      000372 EA               [12] 1156 	mov	a,r2
      000373 4B               [12] 1157 	orl	a,r3
      000374 4E               [12] 1158 	orl	a,r6
      000375 4F               [12] 1159 	orl	a,r7
      000376 60 07            [24] 1160 	jz	00103$
      000378 E5 3E            [12] 1161 	mov	a,_bp
      00037A 24 06            [12] 1162 	add	a,#0x06
      00037C F8               [12] 1163 	mov	r0,a
      00037D 76 00            [12] 1164 	mov	@r0,#0x00
      00037F                       1165 00103$:
                                   1166 ;	uart.h:160: if(leading_zeroes_flag); //pass - do not print
      00037F E5 3E            [12] 1167 	mov	a,_bp
      000381 24 06            [12] 1168 	add	a,#0x06
      000383 F8               [12] 1169 	mov	r0,a
      000384 E6               [12] 1170 	mov	a,@r0
      000385 70 26            [24] 1171 	jnz	00113$
                                   1172 ;	uart.h:161: else UartWrite(0x30 + digit%10);
      000387 75 3F 0A         [24] 1173 	mov	__modulong_PARM_2,#0x0a
      00038A E4               [12] 1174 	clr	a
      00038B F5 40            [12] 1175 	mov	(__modulong_PARM_2 + 1),a
      00038D F5 41            [12] 1176 	mov	(__modulong_PARM_2 + 2),a
      00038F F5 42            [12] 1177 	mov	(__modulong_PARM_2 + 3),a
      000391 E5 3E            [12] 1178 	mov	a,_bp
      000393 24 07            [12] 1179 	add	a,#0x07
      000395 F8               [12] 1180 	mov	r0,a
      000396 86 82            [24] 1181 	mov	dpl,@r0
      000398 08               [12] 1182 	inc	r0
      000399 86 83            [24] 1183 	mov	dph,@r0
      00039B 08               [12] 1184 	inc	r0
      00039C 86 F0            [24] 1185 	mov	b,@r0
      00039E 08               [12] 1186 	inc	r0
      00039F E6               [12] 1187 	mov	a,@r0
      0003A0 12 1C 42         [24] 1188 	lcall	__modulong
      0003A3 AC 82            [24] 1189 	mov	r4,dpl
      0003A5 74 30            [12] 1190 	mov	a,#0x30
      0003A7 2C               [12] 1191 	add	a,r4
      0003A8 F5 82            [12] 1192 	mov	dpl,a
      0003AA 12 00 FE         [24] 1193 	lcall	_UartWrite
      0003AD                       1194 00113$:
                                   1195 ;	uart.h:153: for(i=8;i>0;i--)
      0003AD E5 3E            [12] 1196 	mov	a,_bp
      0003AF 24 05            [12] 1197 	add	a,#0x05
      0003B1 F8               [12] 1198 	mov	r0,a
      0003B2 16               [12] 1199 	dec	@r0
      0003B3 E5 3E            [12] 1200 	mov	a,_bp
      0003B5 24 05            [12] 1201 	add	a,#0x05
      0003B7 F8               [12] 1202 	mov	r0,a
      0003B8 E6               [12] 1203 	mov	a,@r0
      0003B9 60 03            [24] 1204 	jz	00149$
      0003BB 02 02 EB         [24] 1205 	ljmp	00112$
      0003BE                       1206 00149$:
                                   1207 ;	uart.h:163: }
      0003BE 85 3E 81         [24] 1208 	mov	sp,_bp
      0003C1 D0 3E            [24] 1209 	pop	_bp
      0003C3 22               [24] 1210 	ret
                                   1211 ;------------------------------------------------------------
                                   1212 ;Allocation info for local variables in function 'UartScanByte'
                                   1213 ;------------------------------------------------------------
                                   1214 ;unibble                   Allocated to registers r7 
                                   1215 ;lnibble                   Allocated to registers r6 
                                   1216 ;------------------------------------------------------------
                                   1217 ;	uart.h:166: uint8_t UartScanByte() __reentrant
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function UartScanByte
                                   1220 ;	-----------------------------------------
      0003C4                       1221 _UartScanByte:
                                   1222 ;	uart.h:170: while(UartReadReady()) UartRead(); //flush
      0003C4                       1223 00101$:
      0003C4 12 00 EA         [24] 1224 	lcall	_UartReadReady
      0003C7 E5 82            [12] 1225 	mov	a,dpl
      0003C9 60 05            [24] 1226 	jz	00103$
      0003CB 12 00 F5         [24] 1227 	lcall	_UartRead
      0003CE 80 F4            [24] 1228 	sjmp	00101$
      0003D0                       1229 00103$:
                                   1230 ;	uart.h:171: UartPrint("Number(hex) < ");
      0003D0 90 1E AB         [24] 1231 	mov	dptr,#___str_0
      0003D3 75 F0 80         [24] 1232 	mov	b,#0x80
      0003D6 12 01 84         [24] 1233 	lcall	_UartPrint
                                   1234 ;	uart.h:173: unibble = UartRead();
      0003D9 12 00 F5         [24] 1235 	lcall	_UartRead
                                   1236 ;	uart.h:174: UartWrite(unibble);
      0003DC AF 82            [24] 1237 	mov  r7,dpl
      0003DE C0 07            [24] 1238 	push	ar7
      0003E0 12 00 FE         [24] 1239 	lcall	_UartWrite
                                   1240 ;	uart.h:175: lnibble = UartRead();
      0003E3 12 00 F5         [24] 1241 	lcall	_UartRead
                                   1242 ;	uart.h:176: UartWrite(lnibble);
      0003E6 AE 82            [24] 1243 	mov  r6,dpl
      0003E8 C0 06            [24] 1244 	push	ar6
      0003EA 12 00 FE         [24] 1245 	lcall	_UartWrite
                                   1246 ;	uart.h:178: UartWrite('\n');
      0003ED 75 82 0A         [24] 1247 	mov	dpl,#0x0a
      0003F0 12 00 FE         [24] 1248 	lcall	_UartWrite
      0003F3 D0 06            [24] 1249 	pop	ar6
      0003F5 D0 07            [24] 1250 	pop	ar7
                                   1251 ;	uart.h:180: return hex2dec(unibble,lnibble);
      0003F7 8E 08            [24] 1252 	mov	_hex2dec_PARM_2,r6
      0003F9 8F 82            [24] 1253 	mov	dpl,r7
                                   1254 ;	uart.h:181: }
      0003FB 02 00 A3         [24] 1255 	ljmp	_hex2dec
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'UartScanLine'
                                   1258 ;------------------------------------------------------------
                                   1259 ;maxLength                 Allocated to stack - _bp -3
                                   1260 ;dst                       Allocated to stack - _bp +1
                                   1261 ;recv                      Allocated to registers r2 
                                   1262 ;count                     Allocated to registers r4 
                                   1263 ;------------------------------------------------------------
                                   1264 ;	uart.h:183: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1265 ;	-----------------------------------------
                                   1266 ;	 function UartScanLine
                                   1267 ;	-----------------------------------------
      0003FE                       1268 _UartScanLine:
      0003FE C0 3E            [24] 1269 	push	_bp
      000400 85 81 3E         [24] 1270 	mov	_bp,sp
      000403 C0 82            [24] 1271 	push	dpl
      000405 C0 83            [24] 1272 	push	dph
      000407 C0 F0            [24] 1273 	push	b
                                   1274 ;	uart.h:185: uint8_t recv,count=0;
      000409 7C 00            [12] 1275 	mov	r4,#0x00
                                   1276 ;	uart.h:187: while(UartReadReady()) UartRead(); //flush
      00040B                       1277 00101$:
      00040B C0 04            [24] 1278 	push	ar4
      00040D 12 00 EA         [24] 1279 	lcall	_UartReadReady
      000410 E5 82            [12] 1280 	mov	a,dpl
      000412 D0 04            [24] 1281 	pop	ar4
      000414 60 09            [24] 1282 	jz	00118$
      000416 C0 04            [24] 1283 	push	ar4
      000418 12 00 F5         [24] 1284 	lcall	_UartRead
      00041B D0 04            [24] 1285 	pop	ar4
                                   1286 ;	uart.h:189: while(1)
      00041D 80 EC            [24] 1287 	sjmp	00101$
      00041F                       1288 00118$:
      00041F 7B 00            [12] 1289 	mov	r3,#0x00
      000421                       1290 00110$:
                                   1291 ;	uart.h:192: recv=UartRead();
      000421 C0 04            [24] 1292 	push	ar4
      000423 C0 03            [24] 1293 	push	ar3
      000425 12 00 F5         [24] 1294 	lcall	_UartRead
                                   1295 ;	uart.h:193: UartWrite(recv);
      000428 AA 82            [24] 1296 	mov  r2,dpl
      00042A C0 02            [24] 1297 	push	ar2
      00042C 12 00 FE         [24] 1298 	lcall	_UartWrite
      00042F D0 02            [24] 1299 	pop	ar2
      000431 D0 03            [24] 1300 	pop	ar3
      000433 D0 04            [24] 1301 	pop	ar4
                                   1302 ;	uart.h:194: if(recv == '\n') 
      000435 BA 0A 19         [24] 1303 	cjne	r2,#0x0a,00105$
                                   1304 ;	uart.h:196: *(dst+count)=0; //add string terminate
      000438 A8 3E            [24] 1305 	mov	r0,_bp
      00043A 08               [12] 1306 	inc	r0
      00043B EC               [12] 1307 	mov	a,r4
      00043C 26               [12] 1308 	add	a,@r0
      00043D FD               [12] 1309 	mov	r5,a
      00043E E4               [12] 1310 	clr	a
      00043F 08               [12] 1311 	inc	r0
      000440 36               [12] 1312 	addc	a,@r0
      000441 FE               [12] 1313 	mov	r6,a
      000442 08               [12] 1314 	inc	r0
      000443 86 07            [24] 1315 	mov	ar7,@r0
      000445 8D 82            [24] 1316 	mov	dpl,r5
      000447 8E 83            [24] 1317 	mov	dph,r6
      000449 8F F0            [24] 1318 	mov	b,r7
      00044B E4               [12] 1319 	clr	a
      00044C 12 1D 2A         [24] 1320 	lcall	__gptrput
                                   1321 ;	uart.h:197: break;
      00044F 80 31            [24] 1322 	sjmp	00111$
      000451                       1323 00105$:
                                   1324 ;	uart.h:199: else *(dst+count)=recv;
      000451 A8 3E            [24] 1325 	mov	r0,_bp
      000453 08               [12] 1326 	inc	r0
      000454 EB               [12] 1327 	mov	a,r3
      000455 26               [12] 1328 	add	a,@r0
      000456 FD               [12] 1329 	mov	r5,a
      000457 E4               [12] 1330 	clr	a
      000458 08               [12] 1331 	inc	r0
      000459 36               [12] 1332 	addc	a,@r0
      00045A FE               [12] 1333 	mov	r6,a
      00045B 08               [12] 1334 	inc	r0
      00045C 86 07            [24] 1335 	mov	ar7,@r0
      00045E 8D 82            [24] 1336 	mov	dpl,r5
      000460 8E 83            [24] 1337 	mov	dph,r6
      000462 8F F0            [24] 1338 	mov	b,r7
      000464 EA               [12] 1339 	mov	a,r2
      000465 12 1D 2A         [24] 1340 	lcall	__gptrput
                                   1341 ;	uart.h:201: if(count==maxLength) 
      000468 E5 3E            [12] 1342 	mov	a,_bp
      00046A 24 FD            [12] 1343 	add	a,#0xfd
      00046C F8               [12] 1344 	mov	r0,a
      00046D E6               [12] 1345 	mov	a,@r0
      00046E B5 03 0C         [24] 1346 	cjne	a,ar3,00108$
                                   1347 ;	uart.h:203: *(dst+count)=0; // terminate string.
      000471 8D 82            [24] 1348 	mov	dpl,r5
      000473 8E 83            [24] 1349 	mov	dph,r6
      000475 8F F0            [24] 1350 	mov	b,r7
      000477 E4               [12] 1351 	clr	a
      000478 12 1D 2A         [24] 1352 	lcall	__gptrput
                                   1353 ;	uart.h:204: break;
      00047B 80 05            [24] 1354 	sjmp	00111$
      00047D                       1355 00108$:
                                   1356 ;	uart.h:207: count++;
      00047D 0B               [12] 1357 	inc	r3
      00047E 8B 04            [24] 1358 	mov	ar4,r3
      000480 80 9F            [24] 1359 	sjmp	00110$
      000482                       1360 00111$:
                                   1361 ;	uart.h:211: return count;
      000482 8C 82            [24] 1362 	mov	dpl,r4
                                   1363 ;	uart.h:213: }
      000484 85 3E 81         [24] 1364 	mov	sp,_bp
      000487 D0 3E            [24] 1365 	pop	_bp
      000489 22               [24] 1366 	ret
                                   1367 ;------------------------------------------------------------
                                   1368 ;Allocation info for local variables in function 'spi_init'
                                   1369 ;------------------------------------------------------------
                                   1370 ;	spi.h:37: void spi_init()
                                   1371 ;	-----------------------------------------
                                   1372 ;	 function spi_init
                                   1373 ;	-----------------------------------------
      00048A                       1374 _spi_init:
                                   1375 ;	spi.h:40: spi_miso_high(); //make MISO input
      00048A 43 90 04         [24] 1376 	orl	_P1,#0x04
                                   1377 ;	spi.h:41: spi_mosi_high(); //recommended in sd card tutorial
      00048D 43 90 02         [24] 1378 	orl	_P1,#0x02
                                   1379 ;	spi.h:42: spi_cs_high(); //deselect
      000490 43 90 08         [24] 1380 	orl	_P1,#0x08
                                   1381 ;	spi.h:43: spi_clk_low(); //mode 0, idle clk is low
      000493 53 90 FE         [24] 1382 	anl	_P1,#0xfe
                                   1383 ;	spi.h:44: }
      000496 22               [24] 1384 	ret
                                   1385 ;------------------------------------------------------------
                                   1386 ;Allocation info for local variables in function 'spi_transfer'
                                   1387 ;------------------------------------------------------------
                                   1388 ;handle_cs                 Allocated with name '_spi_transfer_PARM_2'
                                   1389 ;tx                        Allocated to registers r7 
                                   1390 ;rx                        Allocated to registers r6 
                                   1391 ;i                         Allocated to registers r5 
                                   1392 ;------------------------------------------------------------
                                   1393 ;	spi.h:46: uint8_t spi_transfer(uint8_t tx,uint8_t handle_cs)
                                   1394 ;	-----------------------------------------
                                   1395 ;	 function spi_transfer
                                   1396 ;	-----------------------------------------
      000497                       1397 _spi_transfer:
      000497 AF 82            [24] 1398 	mov	r7,dpl
                                   1399 ;	spi.h:49: rx=0; //clear the rx - sdcc compiler throws warning otherwise
      000499 7E 00            [12] 1400 	mov	r6,#0x00
                                   1401 ;	spi.h:52: spi_clk_low();
      00049B 53 90 FE         [24] 1402 	anl	_P1,#0xfe
                                   1403 ;	spi.h:55: if(handle_cs)
      00049E E5 3F            [12] 1404 	mov	a,_spi_transfer_PARM_2
      0004A0 60 03            [24] 1405 	jz	00139$
                                   1406 ;	spi.h:56: spi_cs_low();
      0004A2 53 90 F7         [24] 1407 	anl	_P1,#0xf7
                                   1408 ;	spi.h:59: for(i=0;i<8;i++)
      0004A5                       1409 00139$:
      0004A5 7D 00            [12] 1410 	mov	r5,#0x00
      0004A7                       1411 00132$:
                                   1412 ;	spi.h:62: if(tx & 0x80) spi_mosi_high();
      0004A7 EF               [12] 1413 	mov	a,r7
      0004A8 30 E7 05         [24] 1414 	jnb	acc.7,00112$
      0004AB 43 90 02         [24] 1415 	orl	_P1,#0x02
                                   1416 ;	spi.h:63: else spi_mosi_low();
      0004AE 80 03            [24] 1417 	sjmp	00117$
      0004B0                       1418 00112$:
      0004B0 53 90 FD         [24] 1419 	anl	_P1,#0xfd
      0004B3                       1420 00117$:
                                   1421 ;	spi.h:65: tx <<=1;
      0004B3 8F 04            [24] 1422 	mov	ar4,r7
      0004B5 EC               [12] 1423 	mov	a,r4
      0004B6 2C               [12] 1424 	add	a,r4
      0004B7 FF               [12] 1425 	mov	r7,a
                                   1426 ;	spi.h:70: rx <<=1;
      0004B8 8E 04            [24] 1427 	mov	ar4,r6
      0004BA EC               [12] 1428 	mov	a,r4
      0004BB 2C               [12] 1429 	add	a,r4
      0004BC FE               [12] 1430 	mov	r6,a
                                   1431 ;	spi.h:73: spi_clk_high();
      0004BD 43 90 01         [24] 1432 	orl	_P1,#0x01
                                   1433 ;	spi.h:76: if(spi_read_miso()) rx |=1;
      0004C0 E5 90            [12] 1434 	mov	a,_P1
      0004C2 30 E2 03         [24] 1435 	jnb	acc.2,00123$
      0004C5 43 06 01         [24] 1436 	orl	ar6,#0x01
                                   1437 ;	spi.h:81: spi_clk_low();
      0004C8                       1438 00123$:
      0004C8 53 90 FE         [24] 1439 	anl	_P1,#0xfe
                                   1440 ;	spi.h:59: for(i=0;i<8;i++)
      0004CB 0D               [12] 1441 	inc	r5
      0004CC BD 08 00         [24] 1442 	cjne	r5,#0x08,00164$
      0004CF                       1443 00164$:
      0004CF 40 D6            [24] 1444 	jc	00132$
                                   1445 ;	spi.h:86: if(handle_cs)
      0004D1 E5 3F            [12] 1446 	mov	a,_spi_transfer_PARM_2
      0004D3 60 03            [24] 1447 	jz	00131$
                                   1448 ;	spi.h:87: spi_cs_high();
      0004D5 43 90 08         [24] 1449 	orl	_P1,#0x08
      0004D8                       1450 00131$:
                                   1451 ;	spi.h:89: return rx;
      0004D8 8E 82            [24] 1452 	mov	dpl,r6
                                   1453 ;	spi.h:90: }
      0004DA 22               [24] 1454 	ret
                                   1455 ;------------------------------------------------------------
                                   1456 ;Allocation info for local variables in function 'spi_transfer_all'
                                   1457 ;------------------------------------------------------------
                                   1458 ;len                       Allocated with name '_spi_transfer_all_PARM_2'
                                   1459 ;handle_cs                 Allocated with name '_spi_transfer_all_PARM_3'
                                   1460 ;buff                      Allocated to registers r5 r6 r7 
                                   1461 ;i                         Allocated to registers r4 
                                   1462 ;------------------------------------------------------------
                                   1463 ;	spi.h:94: void spi_transfer_all(uint8_t *buff, uint8_t len,uint8_t handle_cs)
                                   1464 ;	-----------------------------------------
                                   1465 ;	 function spi_transfer_all
                                   1466 ;	-----------------------------------------
      0004DB                       1467 _spi_transfer_all:
      0004DB AD 82            [24] 1468 	mov	r5,dpl
      0004DD AE 83            [24] 1469 	mov	r6,dph
      0004DF AF F0            [24] 1470 	mov	r7,b
                                   1471 ;	spi.h:99: if(handle_cs)spi_cs_low();
      0004E1 E5 0C            [12] 1472 	mov	a,_spi_transfer_all_PARM_3
      0004E3 60 03            [24] 1473 	jz	00119$
      0004E5 53 90 F7         [24] 1474 	anl	_P1,#0xf7
                                   1475 ;	spi.h:101: for(i=0;i<len;i++)
      0004E8                       1476 00119$:
      0004E8 7C 00            [12] 1477 	mov	r4,#0x00
      0004EA                       1478 00113$:
      0004EA C3               [12] 1479 	clr	c
      0004EB EC               [12] 1480 	mov	a,r4
      0004EC 95 0B            [12] 1481 	subb	a,_spi_transfer_all_PARM_2
      0004EE 50 2D            [24] 1482 	jnc	00106$
                                   1483 ;	spi.h:103: spi_transfer(buff[i],0);
      0004F0 EC               [12] 1484 	mov	a,r4
      0004F1 2D               [12] 1485 	add	a,r5
      0004F2 F9               [12] 1486 	mov	r1,a
      0004F3 E4               [12] 1487 	clr	a
      0004F4 3E               [12] 1488 	addc	a,r6
      0004F5 FA               [12] 1489 	mov	r2,a
      0004F6 8F 03            [24] 1490 	mov	ar3,r7
      0004F8 89 82            [24] 1491 	mov	dpl,r1
      0004FA 8A 83            [24] 1492 	mov	dph,r2
      0004FC 8B F0            [24] 1493 	mov	b,r3
      0004FE 12 1E 1D         [24] 1494 	lcall	__gptrget
      000501 F9               [12] 1495 	mov	r1,a
      000502 75 3F 00         [24] 1496 	mov	_spi_transfer_PARM_2,#0x00
      000505 89 82            [24] 1497 	mov	dpl,r1
      000507 C0 07            [24] 1498 	push	ar7
      000509 C0 06            [24] 1499 	push	ar6
      00050B C0 05            [24] 1500 	push	ar5
      00050D C0 04            [24] 1501 	push	ar4
      00050F 12 04 97         [24] 1502 	lcall	_spi_transfer
      000512 D0 04            [24] 1503 	pop	ar4
      000514 D0 05            [24] 1504 	pop	ar5
      000516 D0 06            [24] 1505 	pop	ar6
      000518 D0 07            [24] 1506 	pop	ar7
                                   1507 ;	spi.h:101: for(i=0;i<len;i++)
      00051A 0C               [12] 1508 	inc	r4
      00051B 80 CD            [24] 1509 	sjmp	00113$
      00051D                       1510 00106$:
                                   1511 ;	spi.h:107: if(handle_cs)spi_cs_high();
      00051D E5 0C            [12] 1512 	mov	a,_spi_transfer_all_PARM_3
      00051F 60 03            [24] 1513 	jz	00115$
      000521 43 90 08         [24] 1514 	orl	_P1,#0x08
      000524                       1515 00115$:
                                   1516 ;	spi.h:109: }
      000524 22               [24] 1517 	ret
                                   1518 ;------------------------------------------------------------
                                   1519 ;Allocation info for local variables in function 'sd_isbusy'
                                   1520 ;------------------------------------------------------------
                                   1521 ;i                         Allocated to registers r7 
                                   1522 ;------------------------------------------------------------
                                   1523 ;	sdcard.h:26: uint8_t sd_isbusy()
                                   1524 ;	-----------------------------------------
                                   1525 ;	 function sd_isbusy
                                   1526 ;	-----------------------------------------
      000525                       1527 _sd_isbusy:
                                   1528 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      000525 7F 00            [12] 1529 	mov	r7,#0x00
      000527                       1530 00104$:
                                   1531 ;	sdcard.h:31: if(sd_spi_write(0xff)==0xff) return 0; //not busy
      000527 75 3F 00         [24] 1532 	mov	_spi_transfer_PARM_2,#0x00
      00052A 75 82 FF         [24] 1533 	mov	dpl,#0xff
      00052D C0 07            [24] 1534 	push	ar7
      00052F 12 04 97         [24] 1535 	lcall	_spi_transfer
      000532 AE 82            [24] 1536 	mov	r6,dpl
      000534 D0 07            [24] 1537 	pop	ar7
      000536 BE FF 04         [24] 1538 	cjne	r6,#0xff,00105$
      000539 75 82 00         [24] 1539 	mov	dpl,#0x00
      00053C 22               [24] 1540 	ret
      00053D                       1541 00105$:
                                   1542 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      00053D 0F               [12] 1543 	inc	r7
      00053E BF FE 00         [24] 1544 	cjne	r7,#0xfe,00122$
      000541                       1545 00122$:
      000541 40 E4            [24] 1546 	jc	00104$
                                   1547 ;	sdcard.h:34: return 1; //busy
      000543 75 82 01         [24] 1548 	mov	dpl,#0x01
                                   1549 ;	sdcard.h:35: }
      000546 22               [24] 1550 	ret
                                   1551 ;------------------------------------------------------------
                                   1552 ;Allocation info for local variables in function 'sd_initial_clk'
                                   1553 ;------------------------------------------------------------
                                   1554 ;i                         Allocated to registers r7 
                                   1555 ;------------------------------------------------------------
                                   1556 ;	sdcard.h:37: void sd_initial_clk()
                                   1557 ;	-----------------------------------------
                                   1558 ;	 function sd_initial_clk
                                   1559 ;	-----------------------------------------
      000547                       1560 _sd_initial_clk:
                                   1561 ;	sdcard.h:45: spi_cs_high(); // required by spec but works fine even when cs pin of SDCARD is always pulled to ground to save uC pins
      000547 43 90 08         [24] 1562 	orl	_P1,#0x08
                                   1563 ;	sdcard.h:46: for(uint8_t i=0;i<10;i++)spi_transfer(0xff,0);
      00054A 7F 00            [12] 1564 	mov	r7,#0x00
      00054C                       1565 00106$:
      00054C BF 0A 00         [24] 1566 	cjne	r7,#0x0a,00119$
      00054F                       1567 00119$:
      00054F 50 10            [24] 1568 	jnc	00108$
      000551 75 3F 00         [24] 1569 	mov	_spi_transfer_PARM_2,#0x00
      000554 75 82 FF         [24] 1570 	mov	dpl,#0xff
      000557 C0 07            [24] 1571 	push	ar7
      000559 12 04 97         [24] 1572 	lcall	_spi_transfer
      00055C D0 07            [24] 1573 	pop	ar7
      00055E 0F               [12] 1574 	inc	r7
      00055F 80 EB            [24] 1575 	sjmp	00106$
      000561                       1576 00108$:
                                   1577 ;	sdcard.h:47: }
      000561 22               [24] 1578 	ret
                                   1579 ;------------------------------------------------------------
                                   1580 ;Allocation info for local variables in function 'sd_cmd'
                                   1581 ;------------------------------------------------------------
                                   1582 ;arg                       Allocated with name '_sd_cmd_PARM_2'
                                   1583 ;cmd                       Allocated to registers r7 
                                   1584 ;_resp                     Allocated to registers r5 
                                   1585 ;retries                   Allocated to registers r6 
                                   1586 ;crc                       Allocated to registers r6 
                                   1587 ;i                         Allocated to registers r6 
                                   1588 ;i                         Allocated to registers r7 
                                   1589 ;------------------------------------------------------------
                                   1590 ;	sdcard.h:49: uint8_t sd_cmd(uint8_t cmd, uint32_t arg)
                                   1591 ;	-----------------------------------------
                                   1592 ;	 function sd_cmd
                                   1593 ;	-----------------------------------------
      000562                       1594 _sd_cmd:
      000562 AF 82            [24] 1595 	mov	r7,dpl
                                   1596 ;	sdcard.h:51: uint8_t _resp=0,retries=0,crc=0xff;
      000564 7E FF            [12] 1597 	mov	r6,#0xff
                                   1598 ;	sdcard.h:53: spi_cs_low();
      000566 53 90 F7         [24] 1599 	anl	_P1,#0xf7
                                   1600 ;	sdcard.h:55: sd_isbusy(); //wait while sd is busy
      000569 C0 07            [24] 1601 	push	ar7
      00056B C0 06            [24] 1602 	push	ar6
      00056D 12 05 25         [24] 1603 	lcall	_sd_isbusy
      000570 D0 06            [24] 1604 	pop	ar6
      000572 D0 07            [24] 1605 	pop	ar7
                                   1606 ;	sdcard.h:63: sd_spi_write(cmd | 0x40);
      000574 74 40            [12] 1607 	mov	a,#0x40
      000576 4F               [12] 1608 	orl	a,r7
      000577 F5 82            [12] 1609 	mov	dpl,a
      000579 75 3F 00         [24] 1610 	mov	_spi_transfer_PARM_2,#0x00
      00057C C0 07            [24] 1611 	push	ar7
      00057E C0 06            [24] 1612 	push	ar6
      000580 12 04 97         [24] 1613 	lcall	_spi_transfer
      000583 D0 06            [24] 1614 	pop	ar6
      000585 D0 07            [24] 1615 	pop	ar7
                                   1616 ;	sdcard.h:65: sd_spi_write((arg >> 24) & 0xff);
      000587 85 10 82         [24] 1617 	mov	dpl,(_sd_cmd_PARM_2 + 3)
      00058A 75 3F 00         [24] 1618 	mov	_spi_transfer_PARM_2,#0x00
      00058D C0 07            [24] 1619 	push	ar7
      00058F C0 06            [24] 1620 	push	ar6
      000591 12 04 97         [24] 1621 	lcall	_spi_transfer
      000594 D0 06            [24] 1622 	pop	ar6
      000596 D0 07            [24] 1623 	pop	ar7
                                   1624 ;	sdcard.h:66: sd_spi_write((arg >> 16) & 0xff);
      000598 85 0F 82         [24] 1625 	mov	dpl,(_sd_cmd_PARM_2 + 2)
      00059B 75 3F 00         [24] 1626 	mov	_spi_transfer_PARM_2,#0x00
      00059E C0 07            [24] 1627 	push	ar7
      0005A0 C0 06            [24] 1628 	push	ar6
      0005A2 12 04 97         [24] 1629 	lcall	_spi_transfer
      0005A5 D0 06            [24] 1630 	pop	ar6
      0005A7 D0 07            [24] 1631 	pop	ar7
                                   1632 ;	sdcard.h:67: sd_spi_write((arg >> 8) & 0xff);
      0005A9 85 0E 82         [24] 1633 	mov	dpl,(_sd_cmd_PARM_2 + 1)
      0005AC 75 3F 00         [24] 1634 	mov	_spi_transfer_PARM_2,#0x00
      0005AF C0 07            [24] 1635 	push	ar7
      0005B1 C0 06            [24] 1636 	push	ar6
      0005B3 12 04 97         [24] 1637 	lcall	_spi_transfer
      0005B6 D0 06            [24] 1638 	pop	ar6
      0005B8 D0 07            [24] 1639 	pop	ar7
                                   1640 ;	sdcard.h:68: sd_spi_write(arg & 0xff);
      0005BA 85 0D 82         [24] 1641 	mov	dpl,_sd_cmd_PARM_2
      0005BD 75 3F 00         [24] 1642 	mov	_spi_transfer_PARM_2,#0x00
      0005C0 C0 07            [24] 1643 	push	ar7
      0005C2 C0 06            [24] 1644 	push	ar6
      0005C4 12 04 97         [24] 1645 	lcall	_spi_transfer
      0005C7 D0 06            [24] 1646 	pop	ar6
      0005C9 D0 07            [24] 1647 	pop	ar7
                                   1648 ;	sdcard.h:70: if(cmd==CMD0) 
      0005CB EF               [12] 1649 	mov	a,r7
      0005CC 70 04            [24] 1650 	jnz	00107$
                                   1651 ;	sdcard.h:72: crc=0x95;
      0005CE 7E 95            [12] 1652 	mov	r6,#0x95
      0005D0 80 05            [24] 1653 	sjmp	00108$
      0005D2                       1654 00107$:
                                   1655 ;	sdcard.h:74: else if(cmd==CMD8) 
      0005D2 BF 08 02         [24] 1656 	cjne	r7,#0x08,00108$
                                   1657 ;	sdcard.h:76: crc=0x87;
      0005D5 7E 87            [12] 1658 	mov	r6,#0x87
      0005D7                       1659 00108$:
                                   1660 ;	sdcard.h:78: sd_spi_write(crc);	
      0005D7 75 3F 00         [24] 1661 	mov	_spi_transfer_PARM_2,#0x00
      0005DA 8E 82            [24] 1662 	mov	dpl,r6
      0005DC C0 07            [24] 1663 	push	ar7
      0005DE 12 04 97         [24] 1664 	lcall	_spi_transfer
      0005E1 D0 07            [24] 1665 	pop	ar7
                                   1666 ;	sdcard.h:81: while(1) 
      0005E3 7E 00            [12] 1667 	mov	r6,#0x00
      0005E5                       1668 00115$:
                                   1669 ;	sdcard.h:83: _resp = sd_spi_write(0xff);
      0005E5 75 3F 00         [24] 1670 	mov	_spi_transfer_PARM_2,#0x00
      0005E8 75 82 FF         [24] 1671 	mov	dpl,#0xff
      0005EB C0 07            [24] 1672 	push	ar7
      0005ED C0 06            [24] 1673 	push	ar6
      0005EF 12 04 97         [24] 1674 	lcall	_spi_transfer
      0005F2 AD 82            [24] 1675 	mov	r5,dpl
      0005F4 D0 06            [24] 1676 	pop	ar6
      0005F6 D0 07            [24] 1677 	pop	ar7
                                   1678 ;	sdcard.h:85: if(_resp & 0x80);
      0005F8 ED               [12] 1679 	mov	a,r5
      0005F9 30 E7 0A         [24] 1680 	jnb	acc.7,00116$
                                   1681 ;	sdcard.h:88: if(retries++ == SD_MAX_RETRIES) 
      0005FC 8E 04            [24] 1682 	mov	ar4,r6
      0005FE 0E               [12] 1683 	inc	r6
      0005FF BC 19 E3         [24] 1684 	cjne	r4,#0x19,00115$
                                   1685 ;	sdcard.h:94: return SD_MAX_RETRIES_FAIL; // 0xff means failed
      000602 75 82 FE         [24] 1686 	mov	dpl,#0xfe
      000605 22               [24] 1687 	ret
      000606                       1688 00116$:
                                   1689 ;	sdcard.h:106: if(cmd==CMD8 || cmd==CMD58)
      000606 E4               [12] 1690 	clr	a
      000607 BF 08 01         [24] 1691 	cjne	r7,#0x08,00203$
      00060A 04               [12] 1692 	inc	a
      00060B                       1693 00203$:
      00060B FE               [12] 1694 	mov	r6,a
      00060C 70 08            [24] 1695 	jnz	00128$
      00060E BF 3A 02         [24] 1696 	cjne	r7,#0x3a,00206$
      000611 80 03            [24] 1697 	sjmp	00207$
      000613                       1698 00206$:
      000613 02 06 8F         [24] 1699 	ljmp	00129$
      000616                       1700 00207$:
      000616                       1701 00128$:
                                   1702 ;	sdcard.h:114: if(cmd==CMD8)
      000616 EE               [12] 1703 	mov	a,r6
      000617 60 33            [24] 1704 	jz	00126$
                                   1705 ;	sdcard.h:116: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000619 7E 00            [12] 1706 	mov	r6,#0x00
      00061B                       1707 00132$:
      00061B BE 03 00         [24] 1708 	cjne	r6,#0x03,00209$
      00061E                       1709 00209$:
      00061E 50 14            [24] 1710 	jnc	00117$
      000620 75 3F 00         [24] 1711 	mov	_spi_transfer_PARM_2,#0x00
      000623 75 82 FF         [24] 1712 	mov	dpl,#0xff
      000626 C0 06            [24] 1713 	push	ar6
      000628 C0 05            [24] 1714 	push	ar5
      00062A 12 04 97         [24] 1715 	lcall	_spi_transfer
      00062D D0 05            [24] 1716 	pop	ar5
      00062F D0 06            [24] 1717 	pop	ar6
      000631 0E               [12] 1718 	inc	r6
      000632 80 E7            [24] 1719 	sjmp	00132$
      000634                       1720 00117$:
                                   1721 ;	sdcard.h:117: if(sd_spi_write(0xff)!=0xAA) return SD_CMD_FAIL;
      000634 75 3F 00         [24] 1722 	mov	_spi_transfer_PARM_2,#0x00
      000637 75 82 FF         [24] 1723 	mov	dpl,#0xff
      00063A C0 05            [24] 1724 	push	ar5
      00063C 12 04 97         [24] 1725 	lcall	_spi_transfer
      00063F AE 82            [24] 1726 	mov	r6,dpl
      000641 D0 05            [24] 1727 	pop	ar5
      000643 BE AA 02         [24] 1728 	cjne	r6,#0xaa,00211$
      000646 80 3A            [24] 1729 	sjmp	00127$
      000648                       1730 00211$:
      000648 75 82 FF         [24] 1731 	mov	dpl,#0xff
      00064B 22               [24] 1732 	ret
      00064C                       1733 00126$:
                                   1734 ;	sdcard.h:119: else if(cmd==CMD58)
      00064C BF 3A 33         [24] 1735 	cjne	r7,#0x3a,00127$
                                   1736 ;	sdcard.h:121: if(sd_spi_write(0xff)!=0xC0) return SD_CMD_FAIL;
      00064F 75 3F 00         [24] 1737 	mov	_spi_transfer_PARM_2,#0x00
      000652 75 82 FF         [24] 1738 	mov	dpl,#0xff
      000655 C0 05            [24] 1739 	push	ar5
      000657 12 04 97         [24] 1740 	lcall	_spi_transfer
      00065A AF 82            [24] 1741 	mov	r7,dpl
      00065C D0 05            [24] 1742 	pop	ar5
      00065E BF C0 02         [24] 1743 	cjne	r7,#0xc0,00214$
      000661 80 04            [24] 1744 	sjmp	00152$
      000663                       1745 00214$:
      000663 75 82 FF         [24] 1746 	mov	dpl,#0xff
                                   1747 ;	sdcard.h:123: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000666 22               [24] 1748 	ret
      000667                       1749 00152$:
      000667 7F 00            [12] 1750 	mov	r7,#0x00
      000669                       1751 00135$:
      000669 BF 03 00         [24] 1752 	cjne	r7,#0x03,00215$
      00066C                       1753 00215$:
      00066C 50 14            [24] 1754 	jnc	00127$
      00066E 75 3F 00         [24] 1755 	mov	_spi_transfer_PARM_2,#0x00
      000671 75 82 FF         [24] 1756 	mov	dpl,#0xff
      000674 C0 07            [24] 1757 	push	ar7
      000676 C0 05            [24] 1758 	push	ar5
      000678 12 04 97         [24] 1759 	lcall	_spi_transfer
      00067B D0 05            [24] 1760 	pop	ar5
      00067D D0 07            [24] 1761 	pop	ar7
      00067F 0F               [12] 1762 	inc	r7
      000680 80 E7            [24] 1763 	sjmp	00135$
      000682                       1764 00127$:
                                   1765 ;	sdcard.h:128: sd_spi_write(0xff);
      000682 75 3F 00         [24] 1766 	mov	_spi_transfer_PARM_2,#0x00
      000685 75 82 FF         [24] 1767 	mov	dpl,#0xff
      000688 C0 05            [24] 1768 	push	ar5
      00068A 12 04 97         [24] 1769 	lcall	_spi_transfer
      00068D D0 05            [24] 1770 	pop	ar5
      00068F                       1771 00129$:
                                   1772 ;	sdcard.h:136: return _resp;
      00068F 8D 82            [24] 1773 	mov	dpl,r5
                                   1774 ;	sdcard.h:138: }
      000691 22               [24] 1775 	ret
                                   1776 ;------------------------------------------------------------
                                   1777 ;Allocation info for local variables in function 'sd_acmd'
                                   1778 ;------------------------------------------------------------
                                   1779 ;arg                       Allocated with name '_sd_acmd_PARM_2'
                                   1780 ;cmd                       Allocated to registers r7 
                                   1781 ;_resp                     Allocated to registers 
                                   1782 ;------------------------------------------------------------
                                   1783 ;	sdcard.h:140: uint8_t sd_acmd(uint8_t cmd, uint32_t arg)
                                   1784 ;	-----------------------------------------
                                   1785 ;	 function sd_acmd
                                   1786 ;	-----------------------------------------
      000692                       1787 _sd_acmd:
      000692 AF 82            [24] 1788 	mov	r7,dpl
                                   1789 ;	sdcard.h:144: _resp=sd_cmd(CMD55,0);
      000694 E4               [12] 1790 	clr	a
      000695 F5 0D            [12] 1791 	mov	_sd_cmd_PARM_2,a
      000697 F5 0E            [12] 1792 	mov	(_sd_cmd_PARM_2 + 1),a
      000699 F5 0F            [12] 1793 	mov	(_sd_cmd_PARM_2 + 2),a
      00069B F5 10            [12] 1794 	mov	(_sd_cmd_PARM_2 + 3),a
      00069D 75 82 37         [24] 1795 	mov	dpl,#0x37
      0006A0 C0 07            [24] 1796 	push	ar7
      0006A2 12 05 62         [24] 1797 	lcall	_sd_cmd
      0006A5 AE 82            [24] 1798 	mov	r6,dpl
      0006A7 D0 07            [24] 1799 	pop	ar7
                                   1800 ;	sdcard.h:145: if(_resp!=1) return SD_CMD_FAIL;
      0006A9 BE 01 02         [24] 1801 	cjne	r6,#0x01,00110$
      0006AC 80 04            [24] 1802 	sjmp	00102$
      0006AE                       1803 00110$:
      0006AE 75 82 FF         [24] 1804 	mov	dpl,#0xff
      0006B1 22               [24] 1805 	ret
      0006B2                       1806 00102$:
                                   1807 ;	sdcard.h:148: _resp=sd_cmd(cmd,arg);
      0006B2 85 11 0D         [24] 1808 	mov	_sd_cmd_PARM_2,_sd_acmd_PARM_2
      0006B5 85 12 0E         [24] 1809 	mov	(_sd_cmd_PARM_2 + 1),(_sd_acmd_PARM_2 + 1)
      0006B8 85 13 0F         [24] 1810 	mov	(_sd_cmd_PARM_2 + 2),(_sd_acmd_PARM_2 + 2)
      0006BB 85 14 10         [24] 1811 	mov	(_sd_cmd_PARM_2 + 3),(_sd_acmd_PARM_2 + 3)
      0006BE 8F 82            [24] 1812 	mov	dpl,r7
                                   1813 ;	sdcard.h:149: return _resp;
                                   1814 ;	sdcard.h:151: }
      0006C0 02 05 62         [24] 1815 	ljmp	_sd_cmd
                                   1816 ;------------------------------------------------------------
                                   1817 ;Allocation info for local variables in function 'SDinit'
                                   1818 ;------------------------------------------------------------
                                   1819 ;retries                   Allocated to registers r7 
                                   1820 ;------------------------------------------------------------
                                   1821 ;	sdcard.h:157: uint8_t SDinit()
                                   1822 ;	-----------------------------------------
                                   1823 ;	 function SDinit
                                   1824 ;	-----------------------------------------
      0006C3                       1825 _SDinit:
                                   1826 ;	sdcard.h:161: sd_initial_clk(); // 74 minimum clks for initialization
      0006C3 12 05 47         [24] 1827 	lcall	_sd_initial_clk
                                   1828 ;	sdcard.h:163: while(1)
      0006C6 7F 00            [12] 1829 	mov	r7,#0x00
      0006C8                       1830 00107$:
                                   1831 ;	sdcard.h:165: if(sd_cmd(CMD0,0)==0x01)break; // correct response is 0x01 -> signals card is idling
      0006C8 E4               [12] 1832 	clr	a
      0006C9 F5 0D            [12] 1833 	mov	_sd_cmd_PARM_2,a
      0006CB F5 0E            [12] 1834 	mov	(_sd_cmd_PARM_2 + 1),a
      0006CD F5 0F            [12] 1835 	mov	(_sd_cmd_PARM_2 + 2),a
      0006CF F5 10            [12] 1836 	mov	(_sd_cmd_PARM_2 + 3),a
      0006D1 75 82 00         [24] 1837 	mov	dpl,#0x00
      0006D4 C0 07            [24] 1838 	push	ar7
      0006D6 12 05 62         [24] 1839 	lcall	_sd_cmd
      0006D9 AE 82            [24] 1840 	mov	r6,dpl
      0006DB D0 07            [24] 1841 	pop	ar7
      0006DD BE 01 02         [24] 1842 	cjne	r6,#0x01,00155$
      0006E0 80 0A            [24] 1843 	sjmp	00108$
      0006E2                       1844 00155$:
                                   1845 ;	sdcard.h:166: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      0006E2 8F 06            [24] 1846 	mov	ar6,r7
      0006E4 0F               [12] 1847 	inc	r7
      0006E5 BE 19 E0         [24] 1848 	cjne	r6,#0x19,00107$
      0006E8 75 82 FE         [24] 1849 	mov	dpl,#0xfe
      0006EB 22               [24] 1850 	ret
      0006EC                       1851 00108$:
                                   1852 ;	sdcard.h:170: if(sd_cmd(CMD8,0x1AA)!=0x01) return SD_CMD_FAIL; // correct response for cmd8 is 0x01
      0006EC 75 0D AA         [24] 1853 	mov	_sd_cmd_PARM_2,#0xaa
      0006EF 75 0E 01         [24] 1854 	mov	(_sd_cmd_PARM_2 + 1),#0x01
      0006F2 E4               [12] 1855 	clr	a
      0006F3 F5 0F            [12] 1856 	mov	(_sd_cmd_PARM_2 + 2),a
      0006F5 F5 10            [12] 1857 	mov	(_sd_cmd_PARM_2 + 3),a
      0006F7 75 82 08         [24] 1858 	mov	dpl,#0x08
      0006FA 12 05 62         [24] 1859 	lcall	_sd_cmd
      0006FD AF 82            [24] 1860 	mov	r7,dpl
      0006FF BF 01 02         [24] 1861 	cjne	r7,#0x01,00158$
      000702 80 04            [24] 1862 	sjmp	00128$
      000704                       1863 00158$:
      000704 75 82 FF         [24] 1864 	mov	dpl,#0xff
                                   1865 ;	sdcard.h:173: while(1)
      000707 22               [24] 1866 	ret
      000708                       1867 00128$:
      000708 7F 00            [12] 1868 	mov	r7,#0x00
      00070A                       1869 00117$:
                                   1870 ;	sdcard.h:175: if(sd_acmd(CMD41,0x40000000)==0)break; //correct response
      00070A E4               [12] 1871 	clr	a
      00070B F5 11            [12] 1872 	mov	_sd_acmd_PARM_2,a
      00070D F5 12            [12] 1873 	mov	(_sd_acmd_PARM_2 + 1),a
      00070F F5 13            [12] 1874 	mov	(_sd_acmd_PARM_2 + 2),a
      000711 75 14 40         [24] 1875 	mov	(_sd_acmd_PARM_2 + 3),#0x40
      000714 75 82 29         [24] 1876 	mov	dpl,#0x29
      000717 C0 07            [24] 1877 	push	ar7
      000719 12 06 92         [24] 1878 	lcall	_sd_acmd
      00071C E5 82            [12] 1879 	mov	a,dpl
      00071E D0 07            [24] 1880 	pop	ar7
      000720 60 0A            [24] 1881 	jz	00118$
                                   1882 ;	sdcard.h:176: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      000722 8F 06            [24] 1883 	mov	ar6,r7
      000724 0F               [12] 1884 	inc	r7
      000725 BE 19 E2         [24] 1885 	cjne	r6,#0x19,00117$
      000728 75 82 FE         [24] 1886 	mov	dpl,#0xfe
      00072B 22               [24] 1887 	ret
      00072C                       1888 00118$:
                                   1889 ;	sdcard.h:182: if(sd_cmd(CMD58,0)) return SD_CMD_FAIL;  
      00072C E4               [12] 1890 	clr	a
      00072D F5 0D            [12] 1891 	mov	_sd_cmd_PARM_2,a
      00072F F5 0E            [12] 1892 	mov	(_sd_cmd_PARM_2 + 1),a
      000731 F5 0F            [12] 1893 	mov	(_sd_cmd_PARM_2 + 2),a
      000733 F5 10            [12] 1894 	mov	(_sd_cmd_PARM_2 + 3),a
      000735 75 82 3A         [24] 1895 	mov	dpl,#0x3a
      000738 12 05 62         [24] 1896 	lcall	_sd_cmd
      00073B E5 82            [12] 1897 	mov	a,dpl
      00073D 60 04            [24] 1898 	jz	00120$
      00073F 75 82 FF         [24] 1899 	mov	dpl,#0xff
      000742 22               [24] 1900 	ret
      000743                       1901 00120$:
                                   1902 ;	sdcard.h:190: return 0; //successful init
      000743 75 82 00         [24] 1903 	mov	dpl,#0x00
                                   1904 ;	sdcard.h:191: }
      000746 22               [24] 1905 	ret
                                   1906 ;------------------------------------------------------------
                                   1907 ;Allocation info for local variables in function 'SDread'
                                   1908 ;------------------------------------------------------------
                                   1909 ;offset                    Allocated to stack - _bp -4
                                   1910 ;count                     Allocated to stack - _bp -6
                                   1911 ;dst                       Allocated to stack - _bp -9
                                   1912 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   1913 ;retries                   Allocated to registers r7 
                                   1914 ;response                  Allocated to registers r3 
                                   1915 ;i                         Allocated to registers r4 r5 
                                   1916 ;------------------------------------------------------------
                                   1917 ;	sdcard.h:206: uint8_t SDread(uint32_t block_addr, uint16_t offset, uint16_t count, uint8_t* dst ) __reentrant
                                   1918 ;	-----------------------------------------
                                   1919 ;	 function SDread
                                   1920 ;	-----------------------------------------
      000747                       1921 _SDread:
      000747 C0 3E            [24] 1922 	push	_bp
      000749 85 81 3E         [24] 1923 	mov	_bp,sp
      00074C AC 82            [24] 1924 	mov	r4,dpl
      00074E AD 83            [24] 1925 	mov	r5,dph
      000750 AE F0            [24] 1926 	mov	r6,b
      000752 FF               [12] 1927 	mov	r7,a
                                   1928 ;	sdcard.h:221: if (count == 0) return 0; //success
      000753 E5 3E            [12] 1929 	mov	a,_bp
      000755 24 FA            [12] 1930 	add	a,#0xfa
      000757 F8               [12] 1931 	mov	r0,a
      000758 E6               [12] 1932 	mov	a,@r0
      000759 08               [12] 1933 	inc	r0
      00075A 46               [12] 1934 	orl	a,@r0
      00075B 70 05            [24] 1935 	jnz	00102$
      00075D F5 82            [12] 1936 	mov	dpl,a
      00075F 02 08 60         [24] 1937 	ljmp	00131$
      000762                       1938 00102$:
                                   1939 ;	sdcard.h:222: if ((count + offset) > SD_BLOCK_SIZE) {
      000762 E5 3E            [12] 1940 	mov	a,_bp
      000764 24 FA            [12] 1941 	add	a,#0xfa
      000766 F8               [12] 1942 	mov	r0,a
      000767 E5 3E            [12] 1943 	mov	a,_bp
      000769 24 FC            [12] 1944 	add	a,#0xfc
      00076B F9               [12] 1945 	mov	r1,a
      00076C E7               [12] 1946 	mov	a,@r1
      00076D 26               [12] 1947 	add	a,@r0
      00076E FA               [12] 1948 	mov	r2,a
      00076F 09               [12] 1949 	inc	r1
      000770 E7               [12] 1950 	mov	a,@r1
      000771 08               [12] 1951 	inc	r0
      000772 36               [12] 1952 	addc	a,@r0
      000773 FB               [12] 1953 	mov	r3,a
      000774 C3               [12] 1954 	clr	c
      000775 E4               [12] 1955 	clr	a
      000776 9A               [12] 1956 	subb	a,r2
      000777 74 02            [12] 1957 	mov	a,#0x02
      000779 9B               [12] 1958 	subb	a,r3
      00077A 50 06            [24] 1959 	jnc	00105$
                                   1960 ;	sdcard.h:223: return 1; //fail
      00077C 75 82 01         [24] 1961 	mov	dpl,#0x01
      00077F 02 08 60         [24] 1962 	ljmp	00131$
                                   1963 ;	sdcard.h:231: spi_cs_low();
      000782                       1964 00105$:
      000782 53 90 F7         [24] 1965 	anl	_P1,#0xf7
                                   1966 ;	sdcard.h:236: if(sd_cmd(CMD17,block_addr)) return SD_CMD_FAIL; 
      000785 8C 0D            [24] 1967 	mov	_sd_cmd_PARM_2,r4
      000787 8D 0E            [24] 1968 	mov	(_sd_cmd_PARM_2 + 1),r5
      000789 8E 0F            [24] 1969 	mov	(_sd_cmd_PARM_2 + 2),r6
      00078B 8F 10            [24] 1970 	mov	(_sd_cmd_PARM_2 + 3),r7
      00078D 75 82 11         [24] 1971 	mov	dpl,#0x11
      000790 12 05 62         [24] 1972 	lcall	_sd_cmd
      000793 E5 82            [12] 1973 	mov	a,dpl
      000795 60 06            [24] 1974 	jz	00138$
      000797 75 82 FF         [24] 1975 	mov	dpl,#0xff
      00079A 02 08 60         [24] 1976 	ljmp	00131$
                                   1977 ;	sdcard.h:240: while(1)
      00079D                       1978 00138$:
      00079D 7F 00            [12] 1979 	mov	r7,#0x00
      00079F                       1980 00119$:
                                   1981 ;	sdcard.h:242: response = sd_spi_write(0xff);
      00079F 75 3F 00         [24] 1982 	mov	_spi_transfer_PARM_2,#0x00
      0007A2 75 82 FF         [24] 1983 	mov	dpl,#0xff
      0007A5 C0 07            [24] 1984 	push	ar7
      0007A7 12 04 97         [24] 1985 	lcall	_spi_transfer
      0007AA AE 82            [24] 1986 	mov	r6,dpl
      0007AC D0 07            [24] 1987 	pop	ar7
                                   1988 ;	sdcard.h:250: if(response==0xff); //pass
      0007AE BE FF 02         [24] 1989 	cjne	r6,#0xff,00192$
      0007B1 80 0B            [24] 1990 	sjmp	00115$
      0007B3                       1991 00192$:
                                   1992 ;	sdcard.h:251: else if(response == DATA_START_BLOCK) break; // if the last response is DATA_START_BLOCK=0xFE, then success, else fail
      0007B3 BE FE 02         [24] 1993 	cjne	r6,#0xfe,00193$
      0007B6 80 12            [24] 1994 	sjmp	00143$
      0007B8                       1995 00193$:
                                   1996 ;	sdcard.h:252: else return DATA_START_BLOCK_FAIL; // if anything other than 0xff or DATA_START_BLOCK=0xFE
      0007B8 75 82 FD         [24] 1997 	mov	dpl,#0xfd
      0007BB 02 08 60         [24] 1998 	ljmp	00131$
      0007BE                       1999 00115$:
                                   2000 ;	sdcard.h:254: if(retries++==255) return SD_MAX_RETRIES_FAIL;
      0007BE 8F 06            [24] 2001 	mov	ar6,r7
      0007C0 0F               [12] 2002 	inc	r7
      0007C1 BE FF DB         [24] 2003 	cjne	r6,#0xff,00119$
      0007C4 75 82 FE         [24] 2004 	mov	dpl,#0xfe
      0007C7 02 08 60         [24] 2005 	ljmp	00131$
                                   2006 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      0007CA                       2007 00143$:
      0007CA E5 3E            [12] 2008 	mov	a,_bp
      0007CC 24 FC            [12] 2009 	add	a,#0xfc
      0007CE F8               [12] 2010 	mov	r0,a
      0007CF E5 3E            [12] 2011 	mov	a,_bp
      0007D1 24 FA            [12] 2012 	add	a,#0xfa
      0007D3 F9               [12] 2013 	mov	r1,a
      0007D4 E7               [12] 2014 	mov	a,@r1
      0007D5 26               [12] 2015 	add	a,@r0
      0007D6 FE               [12] 2016 	mov	r6,a
      0007D7 09               [12] 2017 	inc	r1
      0007D8 E7               [12] 2018 	mov	a,@r1
      0007D9 08               [12] 2019 	inc	r0
      0007DA 36               [12] 2020 	addc	a,@r0
      0007DB FF               [12] 2021 	mov	r7,a
      0007DC 7C 00            [12] 2022 	mov	r4,#0x00
      0007DE 7D 00            [12] 2023 	mov	r5,#0x00
      0007E0                       2024 00129$:
      0007E0 74 FE            [12] 2025 	mov	a,#0x100 - 0x02
      0007E2 2D               [12] 2026 	add	a,r5
      0007E3 40 63            [24] 2027 	jc	00124$
                                   2028 ;	sdcard.h:262: response = spi_transfer(0xff,0);
      0007E5 75 3F 00         [24] 2029 	mov	_spi_transfer_PARM_2,#0x00
      0007E8 75 82 FF         [24] 2030 	mov	dpl,#0xff
      0007EB C0 07            [24] 2031 	push	ar7
      0007ED C0 06            [24] 2032 	push	ar6
      0007EF C0 05            [24] 2033 	push	ar5
      0007F1 C0 04            [24] 2034 	push	ar4
      0007F3 12 04 97         [24] 2035 	lcall	_spi_transfer
      0007F6 AB 82            [24] 2036 	mov	r3,dpl
      0007F8 D0 04            [24] 2037 	pop	ar4
      0007FA D0 05            [24] 2038 	pop	ar5
      0007FC D0 06            [24] 2039 	pop	ar6
      0007FE D0 07            [24] 2040 	pop	ar7
                                   2041 ;	sdcard.h:270: if(i>=offset && i<offset+count)
      000800 E5 3E            [12] 2042 	mov	a,_bp
      000802 24 FC            [12] 2043 	add	a,#0xfc
      000804 F8               [12] 2044 	mov	r0,a
      000805 C3               [12] 2045 	clr	c
      000806 EC               [12] 2046 	mov	a,r4
      000807 96               [12] 2047 	subb	a,@r0
      000808 ED               [12] 2048 	mov	a,r5
      000809 08               [12] 2049 	inc	r0
      00080A 96               [12] 2050 	subb	a,@r0
      00080B 40 34            [24] 2051 	jc	00130$
      00080D EC               [12] 2052 	mov	a,r4
      00080E 9E               [12] 2053 	subb	a,r6
      00080F ED               [12] 2054 	mov	a,r5
      000810 9F               [12] 2055 	subb	a,r7
      000811 50 2E            [24] 2056 	jnc	00130$
                                   2057 ;	sdcard.h:272: dst[i-offset] = response;
      000813 C0 06            [24] 2058 	push	ar6
      000815 C0 07            [24] 2059 	push	ar7
      000817 E5 3E            [12] 2060 	mov	a,_bp
      000819 24 FC            [12] 2061 	add	a,#0xfc
      00081B F8               [12] 2062 	mov	r0,a
      00081C EC               [12] 2063 	mov	a,r4
      00081D C3               [12] 2064 	clr	c
      00081E 96               [12] 2065 	subb	a,@r0
      00081F FA               [12] 2066 	mov	r2,a
      000820 ED               [12] 2067 	mov	a,r5
      000821 08               [12] 2068 	inc	r0
      000822 96               [12] 2069 	subb	a,@r0
      000823 FF               [12] 2070 	mov	r7,a
      000824 E5 3E            [12] 2071 	mov	a,_bp
      000826 24 F7            [12] 2072 	add	a,#0xf7
      000828 F8               [12] 2073 	mov	r0,a
      000829 EA               [12] 2074 	mov	a,r2
      00082A 26               [12] 2075 	add	a,@r0
      00082B FA               [12] 2076 	mov	r2,a
      00082C EF               [12] 2077 	mov	a,r7
      00082D 08               [12] 2078 	inc	r0
      00082E 36               [12] 2079 	addc	a,@r0
      00082F FF               [12] 2080 	mov	r7,a
      000830 08               [12] 2081 	inc	r0
      000831 86 06            [24] 2082 	mov	ar6,@r0
      000833 8A 82            [24] 2083 	mov	dpl,r2
      000835 8F 83            [24] 2084 	mov	dph,r7
      000837 8E F0            [24] 2085 	mov	b,r6
      000839 EB               [12] 2086 	mov	a,r3
      00083A 12 1D 2A         [24] 2087 	lcall	__gptrput
                                   2088 ;	sdcard.h:287: return 0; //success
      00083D D0 07            [24] 2089 	pop	ar7
      00083F D0 06            [24] 2090 	pop	ar6
                                   2091 ;	sdcard.h:272: dst[i-offset] = response;
      000841                       2092 00130$:
                                   2093 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      000841 0C               [12] 2094 	inc	r4
      000842 BC 00 9B         [24] 2095 	cjne	r4,#0x00,00129$
      000845 0D               [12] 2096 	inc	r5
      000846 80 98            [24] 2097 	sjmp	00129$
      000848                       2098 00124$:
                                   2099 ;	sdcard.h:280: sd_spi_write(0xff);
      000848 75 3F 00         [24] 2100 	mov	_spi_transfer_PARM_2,#0x00
      00084B 75 82 FF         [24] 2101 	mov	dpl,#0xff
      00084E 12 04 97         [24] 2102 	lcall	_spi_transfer
                                   2103 ;	sdcard.h:281: sd_spi_write(0xff);
      000851 75 3F 00         [24] 2104 	mov	_spi_transfer_PARM_2,#0x00
      000854 75 82 FF         [24] 2105 	mov	dpl,#0xff
      000857 12 04 97         [24] 2106 	lcall	_spi_transfer
                                   2107 ;	sdcard.h:284: spi_cs_high(); //leave clock high
      00085A 43 90 08         [24] 2108 	orl	_P1,#0x08
                                   2109 ;	sdcard.h:287: return 0; //success
      00085D 75 82 00         [24] 2110 	mov	dpl,#0x00
      000860                       2111 00131$:
                                   2112 ;	sdcard.h:289: }
      000860 D0 3E            [24] 2113 	pop	_bp
      000862 22               [24] 2114 	ret
                                   2115 ;------------------------------------------------------------
                                   2116 ;Allocation info for local variables in function 'SDreadBlock'
                                   2117 ;------------------------------------------------------------
                                   2118 ;dst                       Allocated with name '_SDreadBlock_PARM_2'
                                   2119 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   2120 ;------------------------------------------------------------
                                   2121 ;	sdcard.h:291: uint8_t SDreadBlock(uint32_t block_addr,uint8_t* dst)
                                   2122 ;	-----------------------------------------
                                   2123 ;	 function SDreadBlock
                                   2124 ;	-----------------------------------------
      000863                       2125 _SDreadBlock:
      000863 AC 82            [24] 2126 	mov	r4,dpl
      000865 AD 83            [24] 2127 	mov	r5,dph
      000867 AE F0            [24] 2128 	mov	r6,b
      000869 FF               [12] 2129 	mov	r7,a
                                   2130 ;	sdcard.h:293: return SDread(block_addr,0,SD_BLOCK_SIZE,dst);
      00086A C0 15            [24] 2131 	push	_SDreadBlock_PARM_2
      00086C C0 16            [24] 2132 	push	(_SDreadBlock_PARM_2 + 1)
      00086E C0 17            [24] 2133 	push	(_SDreadBlock_PARM_2 + 2)
      000870 E4               [12] 2134 	clr	a
      000871 C0 E0            [24] 2135 	push	acc
      000873 74 02            [12] 2136 	mov	a,#0x02
      000875 C0 E0            [24] 2137 	push	acc
      000877 E4               [12] 2138 	clr	a
      000878 C0 E0            [24] 2139 	push	acc
      00087A C0 E0            [24] 2140 	push	acc
      00087C 8C 82            [24] 2141 	mov	dpl,r4
      00087E 8D 83            [24] 2142 	mov	dph,r5
      000880 8E F0            [24] 2143 	mov	b,r6
      000882 EF               [12] 2144 	mov	a,r7
      000883 12 07 47         [24] 2145 	lcall	_SDread
      000886 E5 81            [12] 2146 	mov	a,sp
      000888 24 F9            [12] 2147 	add	a,#0xf9
      00088A F5 81            [12] 2148 	mov	sp,a
                                   2149 ;	sdcard.h:294: }
      00088C 22               [24] 2150 	ret
                                   2151 ;------------------------------------------------------------
                                   2152 ;Allocation info for local variables in function 'HELPER_load_littleendian16'
                                   2153 ;------------------------------------------------------------
                                   2154 ;src                       Allocated to registers r5 r6 r7 
                                   2155 ;val                       Allocated to registers r2 r4 
                                   2156 ;------------------------------------------------------------
                                   2157 ;	fat.h:85: uint16_t HELPER_load_littleendian16(uint8_t *src) __reentrant
                                   2158 ;	-----------------------------------------
                                   2159 ;	 function HELPER_load_littleendian16
                                   2160 ;	-----------------------------------------
      00088D                       2161 _HELPER_load_littleendian16:
      00088D AD 82            [24] 2162 	mov	r5,dpl
      00088F AE 83            [24] 2163 	mov	r6,dph
      000891 AF F0            [24] 2164 	mov	r7,b
                                   2165 ;	fat.h:89: val = *(src+1);
      000893 74 01            [12] 2166 	mov	a,#0x01
      000895 2D               [12] 2167 	add	a,r5
      000896 FA               [12] 2168 	mov	r2,a
      000897 E4               [12] 2169 	clr	a
      000898 3E               [12] 2170 	addc	a,r6
      000899 FB               [12] 2171 	mov	r3,a
      00089A 8F 04            [24] 2172 	mov	ar4,r7
      00089C 8A 82            [24] 2173 	mov	dpl,r2
      00089E 8B 83            [24] 2174 	mov	dph,r3
      0008A0 8C F0            [24] 2175 	mov	b,r4
      0008A2 12 1E 1D         [24] 2176 	lcall	__gptrget
                                   2177 ;	fat.h:90: val <<= 8;
      0008A5 FC               [12] 2178 	mov	r4,a
      0008A6 7A 00            [12] 2179 	mov	r2,#0x00
                                   2180 ;	fat.h:91: val |= *src;
      0008A8 8D 82            [24] 2181 	mov	dpl,r5
      0008AA 8E 83            [24] 2182 	mov	dph,r6
      0008AC 8F F0            [24] 2183 	mov	b,r7
      0008AE 12 1E 1D         [24] 2184 	lcall	__gptrget
      0008B1 7F 00            [12] 2185 	mov	r7,#0x00
      0008B3 4A               [12] 2186 	orl	a,r2
      0008B4 F5 82            [12] 2187 	mov	dpl,a
      0008B6 EF               [12] 2188 	mov	a,r7
      0008B7 4C               [12] 2189 	orl	a,r4
      0008B8 F5 83            [12] 2190 	mov	dph,a
                                   2191 ;	fat.h:93: return val;
                                   2192 ;	fat.h:94: }
      0008BA 22               [24] 2193 	ret
                                   2194 ;------------------------------------------------------------
                                   2195 ;Allocation info for local variables in function 'HELPER_load_littleendian32'
                                   2196 ;------------------------------------------------------------
                                   2197 ;src                       Allocated to stack - _bp +1
                                   2198 ;val                       Allocated to stack - _bp +8
                                   2199 ;i                         Allocated to stack - _bp +12
                                   2200 ;sloc0                     Allocated to stack - _bp +9
                                   2201 ;sloc1                     Allocated to stack - _bp +4
                                   2202 ;------------------------------------------------------------
                                   2203 ;	fat.h:96: uint32_t HELPER_load_littleendian32(uint8_t *src) __reentrant
                                   2204 ;	-----------------------------------------
                                   2205 ;	 function HELPER_load_littleendian32
                                   2206 ;	-----------------------------------------
      0008BB                       2207 _HELPER_load_littleendian32:
      0008BB C0 3E            [24] 2208 	push	_bp
      0008BD 85 81 3E         [24] 2209 	mov	_bp,sp
      0008C0 C0 82            [24] 2210 	push	dpl
      0008C2 C0 83            [24] 2211 	push	dph
      0008C4 C0 F0            [24] 2212 	push	b
      0008C6 E5 81            [12] 2213 	mov	a,sp
      0008C8 24 09            [12] 2214 	add	a,#0x09
      0008CA F5 81            [12] 2215 	mov	sp,a
                                   2216 ;	fat.h:98: uint32_t val=0;
                                   2217 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      0008CC E4               [12] 2218 	clr	a
      0008CD FA               [12] 2219 	mov	r2,a
      0008CE FB               [12] 2220 	mov	r3,a
      0008CF FC               [12] 2221 	mov	r4,a
      0008D0 FF               [12] 2222 	mov	r7,a
      0008D1 E5 3E            [12] 2223 	mov	a,_bp
      0008D3 24 0C            [12] 2224 	add	a,#0x0c
      0008D5 F8               [12] 2225 	mov	r0,a
      0008D6 76 00            [12] 2226 	mov	@r0,#0x00
      0008D8                       2227 00103$:
      0008D8 E5 3E            [12] 2228 	mov	a,_bp
      0008DA 24 0C            [12] 2229 	add	a,#0x0c
      0008DC F8               [12] 2230 	mov	r0,a
      0008DD B6 04 00         [24] 2231 	cjne	@r0,#0x04,00118$
      0008E0                       2232 00118$:
      0008E0 50 6F            [24] 2233 	jnc	00101$
                                   2234 ;	fat.h:102: val <<= 8;
      0008E2 E5 3E            [12] 2235 	mov	a,_bp
      0008E4 24 08            [12] 2236 	add	a,#0x08
      0008E6 F8               [12] 2237 	mov	r0,a
      0008E7 08               [12] 2238 	inc	r0
      0008E8 08               [12] 2239 	inc	r0
      0008E9 08               [12] 2240 	inc	r0
      0008EA A6 04            [24] 2241 	mov	@r0,ar4
      0008EC 18               [12] 2242 	dec	r0
      0008ED A6 03            [24] 2243 	mov	@r0,ar3
      0008EF 18               [12] 2244 	dec	r0
      0008F0 A6 02            [24] 2245 	mov	@r0,ar2
      0008F2 18               [12] 2246 	dec	r0
      0008F3 76 00            [12] 2247 	mov	@r0,#0x00
                                   2248 ;	fat.h:103: val |= src[3-i];
      0008F5 E5 3E            [12] 2249 	mov	a,_bp
      0008F7 24 0C            [12] 2250 	add	a,#0x0c
      0008F9 F8               [12] 2251 	mov	r0,a
      0008FA 86 05            [24] 2252 	mov	ar5,@r0
      0008FC 7E 00            [12] 2253 	mov	r6,#0x00
      0008FE 74 03            [12] 2254 	mov	a,#0x03
      000900 C3               [12] 2255 	clr	c
      000901 9D               [12] 2256 	subb	a,r5
      000902 FD               [12] 2257 	mov	r5,a
      000903 E4               [12] 2258 	clr	a
      000904 9E               [12] 2259 	subb	a,r6
      000905 FE               [12] 2260 	mov	r6,a
      000906 A8 3E            [24] 2261 	mov	r0,_bp
      000908 08               [12] 2262 	inc	r0
      000909 ED               [12] 2263 	mov	a,r5
      00090A 26               [12] 2264 	add	a,@r0
      00090B FF               [12] 2265 	mov	r7,a
      00090C EE               [12] 2266 	mov	a,r6
      00090D 08               [12] 2267 	inc	r0
      00090E 36               [12] 2268 	addc	a,@r0
      00090F FE               [12] 2269 	mov	r6,a
      000910 08               [12] 2270 	inc	r0
      000911 86 05            [24] 2271 	mov	ar5,@r0
      000913 8F 82            [24] 2272 	mov	dpl,r7
      000915 8E 83            [24] 2273 	mov	dph,r6
      000917 8D F0            [24] 2274 	mov	b,r5
      000919 12 1E 1D         [24] 2275 	lcall	__gptrget
      00091C FE               [12] 2276 	mov	r6,a
      00091D E5 3E            [12] 2277 	mov	a,_bp
      00091F 24 04            [12] 2278 	add	a,#0x04
      000921 F8               [12] 2279 	mov	r0,a
      000922 A6 06            [24] 2280 	mov	@r0,ar6
      000924 08               [12] 2281 	inc	r0
      000925 76 00            [12] 2282 	mov	@r0,#0x00
      000927 08               [12] 2283 	inc	r0
      000928 76 00            [12] 2284 	mov	@r0,#0x00
      00092A 08               [12] 2285 	inc	r0
      00092B 76 00            [12] 2286 	mov	@r0,#0x00
      00092D E5 3E            [12] 2287 	mov	a,_bp
      00092F 24 08            [12] 2288 	add	a,#0x08
      000931 F8               [12] 2289 	mov	r0,a
      000932 E5 3E            [12] 2290 	mov	a,_bp
      000934 24 04            [12] 2291 	add	a,#0x04
      000936 F9               [12] 2292 	mov	r1,a
      000937 E7               [12] 2293 	mov	a,@r1
      000938 46               [12] 2294 	orl	a,@r0
      000939 FA               [12] 2295 	mov	r2,a
      00093A 09               [12] 2296 	inc	r1
      00093B E7               [12] 2297 	mov	a,@r1
      00093C 08               [12] 2298 	inc	r0
      00093D 46               [12] 2299 	orl	a,@r0
      00093E FB               [12] 2300 	mov	r3,a
      00093F 09               [12] 2301 	inc	r1
      000940 E7               [12] 2302 	mov	a,@r1
      000941 08               [12] 2303 	inc	r0
      000942 46               [12] 2304 	orl	a,@r0
      000943 FC               [12] 2305 	mov	r4,a
      000944 09               [12] 2306 	inc	r1
      000945 E7               [12] 2307 	mov	a,@r1
      000946 08               [12] 2308 	inc	r0
      000947 46               [12] 2309 	orl	a,@r0
      000948 FF               [12] 2310 	mov	r7,a
                                   2311 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      000949 E5 3E            [12] 2312 	mov	a,_bp
      00094B 24 0C            [12] 2313 	add	a,#0x0c
      00094D F8               [12] 2314 	mov	r0,a
      00094E 06               [12] 2315 	inc	@r0
      00094F 80 87            [24] 2316 	sjmp	00103$
      000951                       2317 00101$:
                                   2318 ;	fat.h:106: return val;
      000951 8A 82            [24] 2319 	mov	dpl,r2
      000953 8B 83            [24] 2320 	mov	dph,r3
      000955 8C F0            [24] 2321 	mov	b,r4
      000957 EF               [12] 2322 	mov	a,r7
                                   2323 ;	fat.h:107: }
      000958 85 3E 81         [24] 2324 	mov	sp,_bp
      00095B D0 3E            [24] 2325 	pop	_bp
      00095D 22               [24] 2326 	ret
                                   2327 ;------------------------------------------------------------
                                   2328 ;Allocation info for local variables in function 'HELPER_strcmp'
                                   2329 ;------------------------------------------------------------
                                   2330 ;s2                        Allocated with name '_HELPER_strcmp_PARM_2'
                                   2331 ;s1                        Allocated to registers r5 r6 r7 
                                   2332 ;i                         Allocated to registers r4 
                                   2333 ;------------------------------------------------------------
                                   2334 ;	fat.h:109: uint8_t HELPER_strcmp(char *s1,char* s2)
                                   2335 ;	-----------------------------------------
                                   2336 ;	 function HELPER_strcmp
                                   2337 ;	-----------------------------------------
      00095E                       2338 _HELPER_strcmp:
      00095E AD 82            [24] 2339 	mov	r5,dpl
      000960 AE 83            [24] 2340 	mov	r6,dph
      000962 AF F0            [24] 2341 	mov	r7,b
                                   2342 ;	fat.h:112: while(1)
      000964 7C 00            [12] 2343 	mov	r4,#0x00
      000966                       2344 00107$:
                                   2345 ;	fat.h:114: if(s1[i]==s2[i]);
      000966 EC               [12] 2346 	mov	a,r4
      000967 2D               [12] 2347 	add	a,r5
      000968 F9               [12] 2348 	mov	r1,a
      000969 E4               [12] 2349 	clr	a
      00096A 3E               [12] 2350 	addc	a,r6
      00096B FA               [12] 2351 	mov	r2,a
      00096C 8F 03            [24] 2352 	mov	ar3,r7
      00096E 89 82            [24] 2353 	mov	dpl,r1
      000970 8A 83            [24] 2354 	mov	dph,r2
      000972 8B F0            [24] 2355 	mov	b,r3
      000974 12 1E 1D         [24] 2356 	lcall	__gptrget
      000977 FB               [12] 2357 	mov	r3,a
      000978 EC               [12] 2358 	mov	a,r4
      000979 25 3F            [12] 2359 	add	a,_HELPER_strcmp_PARM_2
      00097B F8               [12] 2360 	mov	r0,a
      00097C E4               [12] 2361 	clr	a
      00097D 35 40            [12] 2362 	addc	a,(_HELPER_strcmp_PARM_2 + 1)
      00097F F9               [12] 2363 	mov	r1,a
      000980 AA 41            [24] 2364 	mov	r2,(_HELPER_strcmp_PARM_2 + 2)
      000982 88 82            [24] 2365 	mov	dpl,r0
      000984 89 83            [24] 2366 	mov	dph,r1
      000986 8A F0            [24] 2367 	mov	b,r2
      000988 12 1E 1D         [24] 2368 	lcall	__gptrget
      00098B F8               [12] 2369 	mov	r0,a
      00098C EB               [12] 2370 	mov	a,r3
      00098D B5 00 02         [24] 2371 	cjne	a,ar0,00123$
      000990 80 04            [24] 2372 	sjmp	00103$
      000992                       2373 00123$:
                                   2374 ;	fat.h:115: else return 1;
      000992 75 82 01         [24] 2375 	mov	dpl,#0x01
      000995 22               [24] 2376 	ret
      000996                       2377 00103$:
                                   2378 ;	fat.h:117: if(s1[i]==0) return 0;
      000996 EB               [12] 2379 	mov	a,r3
      000997 70 03            [24] 2380 	jnz	00105$
      000999 F5 82            [12] 2381 	mov	dpl,a
      00099B 22               [24] 2382 	ret
      00099C                       2383 00105$:
                                   2384 ;	fat.h:118: i++;
      00099C 0C               [12] 2385 	inc	r4
                                   2386 ;	fat.h:120: }
      00099D 80 C7            [24] 2387 	sjmp	00107$
                                   2388 ;------------------------------------------------------------
                                   2389 ;Allocation info for local variables in function 'HELPER_strncmp'
                                   2390 ;------------------------------------------------------------
                                   2391 ;s2                        Allocated with name '_HELPER_strncmp_PARM_2'
                                   2392 ;n                         Allocated with name '_HELPER_strncmp_PARM_3'
                                   2393 ;s1                        Allocated to registers r5 r6 r7 
                                   2394 ;i                         Allocated to registers r4 
                                   2395 ;------------------------------------------------------------
                                   2396 ;	fat.h:122: uint8_t HELPER_strncmp(char *s1,char* s2,uint8_t n)
                                   2397 ;	-----------------------------------------
                                   2398 ;	 function HELPER_strncmp
                                   2399 ;	-----------------------------------------
      00099F                       2400 _HELPER_strncmp:
      00099F AD 82            [24] 2401 	mov	r5,dpl
      0009A1 AE 83            [24] 2402 	mov	r6,dph
      0009A3 AF F0            [24] 2403 	mov	r7,b
                                   2404 ;	fat.h:125: while(1)
      0009A5 7C 00            [12] 2405 	mov	r4,#0x00
      0009A7                       2406 00109$:
                                   2407 ;	fat.h:127: if(i==n) return 0; //done - successful
      0009A7 EC               [12] 2408 	mov	a,r4
      0009A8 B5 42 04         [24] 2409 	cjne	a,_HELPER_strncmp_PARM_3,00102$
      0009AB 75 82 00         [24] 2410 	mov	dpl,#0x00
      0009AE 22               [24] 2411 	ret
      0009AF                       2412 00102$:
                                   2413 ;	fat.h:129: if(s1[i]==s2[i]);
      0009AF EC               [12] 2414 	mov	a,r4
      0009B0 2D               [12] 2415 	add	a,r5
      0009B1 F9               [12] 2416 	mov	r1,a
      0009B2 E4               [12] 2417 	clr	a
      0009B3 3E               [12] 2418 	addc	a,r6
      0009B4 FA               [12] 2419 	mov	r2,a
      0009B5 8F 03            [24] 2420 	mov	ar3,r7
      0009B7 89 82            [24] 2421 	mov	dpl,r1
      0009B9 8A 83            [24] 2422 	mov	dph,r2
      0009BB 8B F0            [24] 2423 	mov	b,r3
      0009BD 12 1E 1D         [24] 2424 	lcall	__gptrget
      0009C0 FB               [12] 2425 	mov	r3,a
      0009C1 EC               [12] 2426 	mov	a,r4
      0009C2 25 3F            [12] 2427 	add	a,_HELPER_strncmp_PARM_2
      0009C4 F8               [12] 2428 	mov	r0,a
      0009C5 E4               [12] 2429 	clr	a
      0009C6 35 40            [12] 2430 	addc	a,(_HELPER_strncmp_PARM_2 + 1)
      0009C8 F9               [12] 2431 	mov	r1,a
      0009C9 AA 41            [24] 2432 	mov	r2,(_HELPER_strncmp_PARM_2 + 2)
      0009CB 88 82            [24] 2433 	mov	dpl,r0
      0009CD 89 83            [24] 2434 	mov	dph,r1
      0009CF 8A F0            [24] 2435 	mov	b,r2
      0009D1 12 1E 1D         [24] 2436 	lcall	__gptrget
      0009D4 F8               [12] 2437 	mov	r0,a
      0009D5 EB               [12] 2438 	mov	a,r3
      0009D6 B5 00 02         [24] 2439 	cjne	a,ar0,00131$
      0009D9 80 04            [24] 2440 	sjmp	00105$
      0009DB                       2441 00131$:
                                   2442 ;	fat.h:130: else return 1;
      0009DB 75 82 01         [24] 2443 	mov	dpl,#0x01
      0009DE 22               [24] 2444 	ret
      0009DF                       2445 00105$:
                                   2446 ;	fat.h:132: if(s1[i]==0) return 0; //if string length < n, return success as well as we donot want to compare more
      0009DF EB               [12] 2447 	mov	a,r3
      0009E0 70 03            [24] 2448 	jnz	00107$
      0009E2 F5 82            [12] 2449 	mov	dpl,a
      0009E4 22               [24] 2450 	ret
      0009E5                       2451 00107$:
                                   2452 ;	fat.h:133: i++;
      0009E5 0C               [12] 2453 	inc	r4
                                   2454 ;	fat.h:135: }
      0009E6 80 BF            [24] 2455 	sjmp	00109$
                                   2456 ;------------------------------------------------------------
                                   2457 ;Allocation info for local variables in function 'HELPER_strlen'
                                   2458 ;------------------------------------------------------------
                                   2459 ;s                         Allocated to registers r5 r6 r7 
                                   2460 ;i                         Allocated to registers r4 
                                   2461 ;------------------------------------------------------------
                                   2462 ;	fat.h:137: uint8_t HELPER_strlen(char *s)
                                   2463 ;	-----------------------------------------
                                   2464 ;	 function HELPER_strlen
                                   2465 ;	-----------------------------------------
      0009E8                       2466 _HELPER_strlen:
      0009E8 AD 82            [24] 2467 	mov	r5,dpl
      0009EA AE 83            [24] 2468 	mov	r6,dph
      0009EC AF F0            [24] 2469 	mov	r7,b
                                   2470 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      0009EE 7C 00            [12] 2471 	mov	r4,#0x00
      0009F0 7B 00            [12] 2472 	mov	r3,#0x00
      0009F2                       2473 00105$:
      0009F2 BB FF 00         [24] 2474 	cjne	r3,#0xff,00121$
      0009F5                       2475 00121$:
      0009F5 50 1B            [24] 2476 	jnc	00103$
                                   2477 ;	fat.h:141: if(s[i]==0) return i;
      0009F7 EB               [12] 2478 	mov	a,r3
      0009F8 2D               [12] 2479 	add	a,r5
      0009F9 F8               [12] 2480 	mov	r0,a
      0009FA E4               [12] 2481 	clr	a
      0009FB 3E               [12] 2482 	addc	a,r6
      0009FC F9               [12] 2483 	mov	r1,a
      0009FD 8F 02            [24] 2484 	mov	ar2,r7
      0009FF 88 82            [24] 2485 	mov	dpl,r0
      000A01 89 83            [24] 2486 	mov	dph,r1
      000A03 8A F0            [24] 2487 	mov	b,r2
      000A05 12 1E 1D         [24] 2488 	lcall	__gptrget
      000A08 70 03            [24] 2489 	jnz	00106$
      000A0A 8C 82            [24] 2490 	mov	dpl,r4
      000A0C 22               [24] 2491 	ret
      000A0D                       2492 00106$:
                                   2493 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      000A0D 0B               [12] 2494 	inc	r3
      000A0E 8B 04            [24] 2495 	mov	ar4,r3
      000A10 80 E0            [24] 2496 	sjmp	00105$
      000A12                       2497 00103$:
                                   2498 ;	fat.h:144: return 255;
      000A12 75 82 FF         [24] 2499 	mov	dpl,#0xff
                                   2500 ;	fat.h:145: }
      000A15 22               [24] 2501 	ret
                                   2502 ;------------------------------------------------------------
                                   2503 ;Allocation info for local variables in function 'HELPER_rootentry_type'
                                   2504 ;------------------------------------------------------------
                                   2505 ;re                        Allocated to registers r5 r6 r7 
                                   2506 ;------------------------------------------------------------
                                   2507 ;	fat.h:147: uint8_t HELPER_rootentry_type(ROOTENTRY *re)
                                   2508 ;	-----------------------------------------
                                   2509 ;	 function HELPER_rootentry_type
                                   2510 ;	-----------------------------------------
      000A16                       2511 _HELPER_rootentry_type:
      000A16 AD 82            [24] 2512 	mov	r5,dpl
      000A18 AE 83            [24] 2513 	mov	r6,dph
      000A1A AF F0            [24] 2514 	mov	r7,b
                                   2515 ;	fat.h:149: if(re->attributes & 1<<FILETYPE_HIDDEN) return FILETYPE_HIDDEN; //directory entry
      000A1C 74 0B            [12] 2516 	mov	a,#0x0b
      000A1E 2D               [12] 2517 	add	a,r5
      000A1F FA               [12] 2518 	mov	r2,a
      000A20 E4               [12] 2519 	clr	a
      000A21 3E               [12] 2520 	addc	a,r6
      000A22 FB               [12] 2521 	mov	r3,a
      000A23 8F 04            [24] 2522 	mov	ar4,r7
      000A25 8A 82            [24] 2523 	mov	dpl,r2
      000A27 8B 83            [24] 2524 	mov	dph,r3
      000A29 8C F0            [24] 2525 	mov	b,r4
      000A2B 12 1E 1D         [24] 2526 	lcall	__gptrget
      000A2E FC               [12] 2527 	mov	r4,a
      000A2F 30 E1 04         [24] 2528 	jnb	acc.1,00102$
      000A32 75 82 01         [24] 2529 	mov	dpl,#0x01
      000A35 22               [24] 2530 	ret
      000A36                       2531 00102$:
                                   2532 ;	fat.h:150: if(re->attributes & 1<<FILETYPE_SYSTEM) return FILETYPE_SYSTEM; //directory entry
      000A36 EC               [12] 2533 	mov	a,r4
      000A37 30 E2 04         [24] 2534 	jnb	acc.2,00104$
      000A3A 75 82 02         [24] 2535 	mov	dpl,#0x02
      000A3D 22               [24] 2536 	ret
      000A3E                       2537 00104$:
                                   2538 ;	fat.h:151: if(re->attributes & 1<<FILETYPE_VOLUME) return FILETYPE_VOLUME; //directory entry
      000A3E EC               [12] 2539 	mov	a,r4
      000A3F 30 E3 04         [24] 2540 	jnb	acc.3,00106$
      000A42 75 82 03         [24] 2541 	mov	dpl,#0x03
      000A45 22               [24] 2542 	ret
      000A46                       2543 00106$:
                                   2544 ;	fat.h:153: if(re->startCluster==0) return FILETYPE_NOFILE; //no file
      000A46 74 0C            [12] 2545 	mov	a,#0x0c
      000A48 2D               [12] 2546 	add	a,r5
      000A49 FA               [12] 2547 	mov	r2,a
      000A4A E4               [12] 2548 	clr	a
      000A4B 3E               [12] 2549 	addc	a,r6
      000A4C FB               [12] 2550 	mov	r3,a
      000A4D 8F 04            [24] 2551 	mov	ar4,r7
      000A4F 8A 82            [24] 2552 	mov	dpl,r2
      000A51 8B 83            [24] 2553 	mov	dph,r3
      000A53 8C F0            [24] 2554 	mov	b,r4
      000A55 12 1E 1D         [24] 2555 	lcall	__gptrget
      000A58 FA               [12] 2556 	mov	r2,a
      000A59 A3               [24] 2557 	inc	dptr
      000A5A 12 1E 1D         [24] 2558 	lcall	__gptrget
      000A5D 4A               [12] 2559 	orl	a,r2
      000A5E 70 04            [24] 2560 	jnz	00111$
      000A60 75 82 FF         [24] 2561 	mov	dpl,#0xff
      000A63 22               [24] 2562 	ret
      000A64                       2563 00111$:
                                   2564 ;	fat.h:154: else if(re->size==0) return FILETYPE_EMPTYFILE; //empty file
      000A64 74 0E            [12] 2565 	mov	a,#0x0e
      000A66 2D               [12] 2566 	add	a,r5
      000A67 FD               [12] 2567 	mov	r5,a
      000A68 E4               [12] 2568 	clr	a
      000A69 3E               [12] 2569 	addc	a,r6
      000A6A FE               [12] 2570 	mov	r6,a
      000A6B 8D 82            [24] 2571 	mov	dpl,r5
      000A6D 8E 83            [24] 2572 	mov	dph,r6
      000A6F 8F F0            [24] 2573 	mov	b,r7
      000A71 12 1E 1D         [24] 2574 	lcall	__gptrget
      000A74 FD               [12] 2575 	mov	r5,a
      000A75 A3               [24] 2576 	inc	dptr
      000A76 12 1E 1D         [24] 2577 	lcall	__gptrget
      000A79 FE               [12] 2578 	mov	r6,a
      000A7A A3               [24] 2579 	inc	dptr
      000A7B 12 1E 1D         [24] 2580 	lcall	__gptrget
      000A7E FF               [12] 2581 	mov	r7,a
      000A7F A3               [24] 2582 	inc	dptr
      000A80 12 1E 1D         [24] 2583 	lcall	__gptrget
      000A83 FC               [12] 2584 	mov	r4,a
      000A84 ED               [12] 2585 	mov	a,r5
      000A85 4E               [12] 2586 	orl	a,r6
      000A86 4F               [12] 2587 	orl	a,r7
      000A87 4C               [12] 2588 	orl	a,r4
      000A88 70 04            [24] 2589 	jnz	00108$
      000A8A 75 82 FE         [24] 2590 	mov	dpl,#0xfe
      000A8D 22               [24] 2591 	ret
      000A8E                       2592 00108$:
                                   2593 ;	fat.h:155: else return 0; // valid non-empty file
      000A8E 75 82 00         [24] 2594 	mov	dpl,#0x00
                                   2595 ;	fat.h:157: }
      000A91 22               [24] 2596 	ret
                                   2597 ;------------------------------------------------------------
                                   2598 ;Allocation info for local variables in function 'HELPER_to_uppercase'
                                   2599 ;------------------------------------------------------------
                                   2600 ;s                         Allocated to registers r5 r6 r7 
                                   2601 ;i                         Allocated to registers r4 
                                   2602 ;------------------------------------------------------------
                                   2603 ;	fat.h:162: void HELPER_to_uppercase(unsigned char *s)
                                   2604 ;	-----------------------------------------
                                   2605 ;	 function HELPER_to_uppercase
                                   2606 ;	-----------------------------------------
      000A92                       2607 _HELPER_to_uppercase:
      000A92 AD 82            [24] 2608 	mov	r5,dpl
      000A94 AE 83            [24] 2609 	mov	r6,dph
      000A96 AF F0            [24] 2610 	mov	r7,b
                                   2611 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000A98 7C 00            [12] 2612 	mov	r4,#0x00
      000A9A                       2613 00108$:
      000A9A BC FF 00         [24] 2614 	cjne	r4,#0xff,00132$
      000A9D                       2615 00132$:
      000A9D 50 2F            [24] 2616 	jnc	00110$
                                   2617 ;	fat.h:166: if(s[i]==0) return; //done
      000A9F EC               [12] 2618 	mov	a,r4
      000AA0 2D               [12] 2619 	add	a,r5
      000AA1 F9               [12] 2620 	mov	r1,a
      000AA2 E4               [12] 2621 	clr	a
      000AA3 3E               [12] 2622 	addc	a,r6
      000AA4 FA               [12] 2623 	mov	r2,a
      000AA5 8F 03            [24] 2624 	mov	ar3,r7
      000AA7 89 82            [24] 2625 	mov	dpl,r1
      000AA9 8A 83            [24] 2626 	mov	dph,r2
      000AAB 8B F0            [24] 2627 	mov	b,r3
      000AAD 12 1E 1D         [24] 2628 	lcall	__gptrget
      000AB0 F8               [12] 2629 	mov	r0,a
      000AB1 70 01            [24] 2630 	jnz	00102$
      000AB3 22               [24] 2631 	ret
      000AB4                       2632 00102$:
                                   2633 ;	fat.h:167: if('a'<=s[i] && s[i]<='z') s[i] = s[i] - 32;
      000AB4 B8 61 00         [24] 2634 	cjne	r0,#0x61,00135$
      000AB7                       2635 00135$:
      000AB7 40 12            [24] 2636 	jc	00109$
      000AB9 E8               [12] 2637 	mov	a,r0
      000ABA 24 85            [12] 2638 	add	a,#0xff - 0x7a
      000ABC 40 0D            [24] 2639 	jc	00109$
      000ABE E8               [12] 2640 	mov	a,r0
      000ABF 24 E0            [12] 2641 	add	a,#0xe0
      000AC1 F8               [12] 2642 	mov	r0,a
      000AC2 89 82            [24] 2643 	mov	dpl,r1
      000AC4 8A 83            [24] 2644 	mov	dph,r2
      000AC6 8B F0            [24] 2645 	mov	b,r3
      000AC8 12 1D 2A         [24] 2646 	lcall	__gptrput
      000ACB                       2647 00109$:
                                   2648 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000ACB 0C               [12] 2649 	inc	r4
      000ACC 80 CC            [24] 2650 	sjmp	00108$
      000ACE                       2651 00110$:
                                   2652 ;	fat.h:169: }
      000ACE 22               [24] 2653 	ret
                                   2654 ;------------------------------------------------------------
                                   2655 ;Allocation info for local variables in function 'HELPER_filename_to_8dot3filename'
                                   2656 ;------------------------------------------------------------
                                   2657 ;fname83                   Allocated with name '_HELPER_filename_to_8dot3filename_PARM_2'
                                   2658 ;fname                     Allocated with name '_HELPER_filename_to_8dot3filename_fname_65536_120'
                                   2659 ;index                     Allocated to registers r4 
                                   2660 ;i                         Allocated to registers r4 
                                   2661 ;i                         Allocated with name '_HELPER_filename_to_8dot3filename_i_131072_126'
                                   2662 ;------------------------------------------------------------
                                   2663 ;	fat.h:172: uint8_t HELPER_filename_to_8dot3filename( char *fname,  char *fname83)
                                   2664 ;	-----------------------------------------
                                   2665 ;	 function HELPER_filename_to_8dot3filename
                                   2666 ;	-----------------------------------------
      000ACF                       2667 _HELPER_filename_to_8dot3filename:
                                   2668 ;	fat.h:177: HELPER_to_uppercase(fname);
      000ACF 85 82 1B         [24] 2669 	mov	_HELPER_filename_to_8dot3filename_fname_65536_120,dpl
      000AD2 85 83 1C         [24] 2670 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1),dph
      000AD5 85 F0 1D         [24] 2671 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2),b
      000AD8 12 0A 92         [24] 2672 	lcall	_HELPER_to_uppercase
                                   2673 ;	fat.h:185: for(uint8_t i=0;i<11;i++) fname83[i]=' '; //default fill by empty space
      000ADB 7C 00            [12] 2674 	mov	r4,#0x00
      000ADD                       2675 00120$:
      000ADD BC 0B 00         [24] 2676 	cjne	r4,#0x0b,00178$
      000AE0                       2677 00178$:
      000AE0 50 18            [24] 2678 	jnc	00101$
      000AE2 EC               [12] 2679 	mov	a,r4
      000AE3 25 18            [12] 2680 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000AE5 F9               [12] 2681 	mov	r1,a
      000AE6 E4               [12] 2682 	clr	a
      000AE7 35 19            [12] 2683 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000AE9 FA               [12] 2684 	mov	r2,a
      000AEA AB 1A            [24] 2685 	mov	r3,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000AEC 89 82            [24] 2686 	mov	dpl,r1
      000AEE 8A 83            [24] 2687 	mov	dph,r2
      000AF0 8B F0            [24] 2688 	mov	b,r3
      000AF2 74 20            [12] 2689 	mov	a,#0x20
      000AF4 12 1D 2A         [24] 2690 	lcall	__gptrput
      000AF7 0C               [12] 2691 	inc	r4
      000AF8 80 E3            [24] 2692 	sjmp	00120$
      000AFA                       2693 00101$:
                                   2694 ;	fat.h:186: fname83[11]=0; //set last character as 0;
      000AFA 74 0B            [12] 2695 	mov	a,#0x0b
      000AFC 25 18            [12] 2696 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000AFE FA               [12] 2697 	mov	r2,a
      000AFF E4               [12] 2698 	clr	a
      000B00 35 19            [12] 2699 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B02 FB               [12] 2700 	mov	r3,a
      000B03 AC 1A            [24] 2701 	mov	r4,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B05 8A 82            [24] 2702 	mov	dpl,r2
      000B07 8B 83            [24] 2703 	mov	dph,r3
      000B09 8C F0            [24] 2704 	mov	b,r4
      000B0B E4               [12] 2705 	clr	a
      000B0C 12 1D 2A         [24] 2706 	lcall	__gptrput
                                   2707 ;	fat.h:189: for(index=0;index<9;index++)
      000B0F 7C 00            [12] 2708 	mov	r4,#0x00
      000B11 7B 00            [12] 2709 	mov	r3,#0x00
      000B13                       2710 00122$:
                                   2711 ;	fat.h:192: if(index==8 && fname[index]!='.') 
      000B13 BB 08 1D         [24] 2712 	cjne	r3,#0x08,00103$
      000B16 EB               [12] 2713 	mov	a,r3
      000B17 25 1B            [12] 2714 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B19 F8               [12] 2715 	mov	r0,a
      000B1A E4               [12] 2716 	clr	a
      000B1B 35 1C            [12] 2717 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B1D F9               [12] 2718 	mov	r1,a
      000B1E AA 1D            [24] 2719 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B20 88 82            [24] 2720 	mov	dpl,r0
      000B22 89 83            [24] 2721 	mov	dph,r1
      000B24 8A F0            [24] 2722 	mov	b,r2
      000B26 12 1E 1D         [24] 2723 	lcall	__gptrget
      000B29 F8               [12] 2724 	mov	r0,a
      000B2A B8 2E 02         [24] 2725 	cjne	r0,#0x2e,00182$
      000B2D 80 04            [24] 2726 	sjmp	00103$
      000B2F                       2727 00182$:
                                   2728 ;	fat.h:197: return 1; //error - invalid filename as dot not found till 9th charcter
      000B2F 75 82 01         [24] 2729 	mov	dpl,#0x01
      000B32 22               [24] 2730 	ret
      000B33                       2731 00103$:
                                   2732 ;	fat.h:200: if(fname[index]==0) return 0; // success - we reached the end of the filename string before the dot character - filename has no extension
      000B33 EB               [12] 2733 	mov	a,r3
      000B34 25 1B            [12] 2734 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B36 F8               [12] 2735 	mov	r0,a
      000B37 E4               [12] 2736 	clr	a
      000B38 35 1C            [12] 2737 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B3A F9               [12] 2738 	mov	r1,a
      000B3B AA 1D            [24] 2739 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B3D 88 82            [24] 2740 	mov	dpl,r0
      000B3F 89 83            [24] 2741 	mov	dph,r1
      000B41 8A F0            [24] 2742 	mov	b,r2
      000B43 12 1E 1D         [24] 2743 	lcall	__gptrget
      000B46 FA               [12] 2744 	mov	r2,a
      000B47 70 03            [24] 2745 	jnz	00109$
      000B49 F5 82            [12] 2746 	mov	dpl,a
      000B4B 22               [24] 2747 	ret
      000B4C                       2748 00109$:
                                   2749 ;	fat.h:201: else if(fname[index]=='.') break; //found the dot, break the for loop
      000B4C BA 2E 02         [24] 2750 	cjne	r2,#0x2e,00184$
      000B4F 80 1C            [24] 2751 	sjmp	00140$
      000B51                       2752 00184$:
                                   2753 ;	fat.h:202: else fname83[index]=fname[index];
      000B51 EB               [12] 2754 	mov	a,r3
      000B52 25 18            [12] 2755 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B54 F8               [12] 2756 	mov	r0,a
      000B55 E4               [12] 2757 	clr	a
      000B56 35 19            [12] 2758 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B58 F9               [12] 2759 	mov	r1,a
      000B59 AF 1A            [24] 2760 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B5B 88 82            [24] 2761 	mov	dpl,r0
      000B5D 89 83            [24] 2762 	mov	dph,r1
      000B5F 8F F0            [24] 2763 	mov	b,r7
      000B61 EA               [12] 2764 	mov	a,r2
      000B62 12 1D 2A         [24] 2765 	lcall	__gptrput
                                   2766 ;	fat.h:189: for(index=0;index<9;index++)
      000B65 0B               [12] 2767 	inc	r3
      000B66 8B 04            [24] 2768 	mov	ar4,r3
      000B68 BB 09 00         [24] 2769 	cjne	r3,#0x09,00185$
      000B6B                       2770 00185$:
      000B6B 40 A6            [24] 2771 	jc	00122$
                                   2772 ;	fat.h:205: for(uint8_t i=0;i<4;i++)
      000B6D                       2773 00140$:
      000B6D 75 1E 00         [24] 2774 	mov	_HELPER_filename_to_8dot3filename_i_131072_126,#0x00
      000B70                       2775 00125$:
      000B70 74 FC            [12] 2776 	mov	a,#0x100 - 0x04
      000B72 25 1E            [12] 2777 	add	a,_HELPER_filename_to_8dot3filename_i_131072_126
      000B74 50 03            [24] 2778 	jnc	00187$
      000B76 02 0C 13         [24] 2779 	ljmp	00118$
      000B79                       2780 00187$:
                                   2781 ;	fat.h:207: if(i==3 && fname[index+i+1]!=0) 
      000B79 74 03            [12] 2782 	mov	a,#0x03
      000B7B B5 1E 2C         [24] 2783 	cjne	a,_HELPER_filename_to_8dot3filename_i_131072_126,00113$
      000B7E 8C 05            [24] 2784 	mov	ar5,r4
      000B80 7E 00            [12] 2785 	mov	r6,#0x00
      000B82 AA 1E            [24] 2786 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_126
      000B84 7B 00            [12] 2787 	mov	r3,#0x00
      000B86 EA               [12] 2788 	mov	a,r2
      000B87 2D               [12] 2789 	add	a,r5
      000B88 FD               [12] 2790 	mov	r5,a
      000B89 EB               [12] 2791 	mov	a,r3
      000B8A 3E               [12] 2792 	addc	a,r6
      000B8B FE               [12] 2793 	mov	r6,a
      000B8C 0D               [12] 2794 	inc	r5
      000B8D BD 00 01         [24] 2795 	cjne	r5,#0x00,00190$
      000B90 0E               [12] 2796 	inc	r6
      000B91                       2797 00190$:
      000B91 ED               [12] 2798 	mov	a,r5
      000B92 25 1B            [12] 2799 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000B94 FD               [12] 2800 	mov	r5,a
      000B95 EE               [12] 2801 	mov	a,r6
      000B96 35 1C            [12] 2802 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000B98 FE               [12] 2803 	mov	r6,a
      000B99 AB 1D            [24] 2804 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000B9B 8D 82            [24] 2805 	mov	dpl,r5
      000B9D 8E 83            [24] 2806 	mov	dph,r6
      000B9F 8B F0            [24] 2807 	mov	b,r3
      000BA1 12 1E 1D         [24] 2808 	lcall	__gptrget
      000BA4 60 04            [24] 2809 	jz	00113$
                                   2810 ;	fat.h:212: return 2; // error - extension has more than 3 characters
      000BA6 75 82 02         [24] 2811 	mov	dpl,#0x02
      000BA9 22               [24] 2812 	ret
      000BAA                       2813 00113$:
                                   2814 ;	fat.h:216: if(fname[index+i+1]==0) 
      000BAA 8C 05            [24] 2815 	mov	ar5,r4
      000BAC 7E 00            [12] 2816 	mov	r6,#0x00
      000BAE AA 1E            [24] 2817 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_126
      000BB0 7B 00            [12] 2818 	mov	r3,#0x00
      000BB2 EA               [12] 2819 	mov	a,r2
      000BB3 2D               [12] 2820 	add	a,r5
      000BB4 F8               [12] 2821 	mov	r0,a
      000BB5 EB               [12] 2822 	mov	a,r3
      000BB6 3E               [12] 2823 	addc	a,r6
      000BB7 F9               [12] 2824 	mov	r1,a
      000BB8 08               [12] 2825 	inc	r0
      000BB9 B8 00 01         [24] 2826 	cjne	r0,#0x00,00192$
      000BBC 09               [12] 2827 	inc	r1
      000BBD                       2828 00192$:
      000BBD E8               [12] 2829 	mov	a,r0
      000BBE 25 1B            [12] 2830 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000BC0 F8               [12] 2831 	mov	r0,a
      000BC1 E9               [12] 2832 	mov	a,r1
      000BC2 35 1C            [12] 2833 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000BC4 F9               [12] 2834 	mov	r1,a
      000BC5 AF 1D            [24] 2835 	mov	r7,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000BC7 88 82            [24] 2836 	mov	dpl,r0
      000BC9 89 83            [24] 2837 	mov	dph,r1
      000BCB 8F F0            [24] 2838 	mov	b,r7
      000BCD 12 1E 1D         [24] 2839 	lcall	__gptrget
                                   2840 ;	fat.h:225: return 0; 
      000BD0 70 03            [24] 2841 	jnz	00116$
      000BD2 F5 82            [12] 2842 	mov	dpl,a
      000BD4 22               [24] 2843 	ret
      000BD5                       2844 00116$:
                                   2845 ;	fat.h:227: else fname83[8+i]=fname[index+i+1]; // in a valid fname, there is just an extra dot in fname than in fname83
      000BD5 74 08            [12] 2846 	mov	a,#0x08
      000BD7 2A               [12] 2847 	add	a,r2
      000BD8 F9               [12] 2848 	mov	r1,a
      000BD9 E4               [12] 2849 	clr	a
      000BDA 3B               [12] 2850 	addc	a,r3
      000BDB FF               [12] 2851 	mov	r7,a
      000BDC E9               [12] 2852 	mov	a,r1
      000BDD 25 18            [12] 2853 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000BDF F9               [12] 2854 	mov	r1,a
      000BE0 EF               [12] 2855 	mov	a,r7
      000BE1 35 19            [12] 2856 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000BE3 F8               [12] 2857 	mov	r0,a
      000BE4 AF 1A            [24] 2858 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000BE6 EA               [12] 2859 	mov	a,r2
      000BE7 2D               [12] 2860 	add	a,r5
      000BE8 FD               [12] 2861 	mov	r5,a
      000BE9 EB               [12] 2862 	mov	a,r3
      000BEA 3E               [12] 2863 	addc	a,r6
      000BEB FE               [12] 2864 	mov	r6,a
      000BEC 0D               [12] 2865 	inc	r5
      000BED BD 00 01         [24] 2866 	cjne	r5,#0x00,00194$
      000BF0 0E               [12] 2867 	inc	r6
      000BF1                       2868 00194$:
      000BF1 ED               [12] 2869 	mov	a,r5
      000BF2 25 1B            [12] 2870 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_120
      000BF4 FD               [12] 2871 	mov	r5,a
      000BF5 EE               [12] 2872 	mov	a,r6
      000BF6 35 1C            [12] 2873 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 1)
      000BF8 FE               [12] 2874 	mov	r6,a
      000BF9 AB 1D            [24] 2875 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_120 + 2)
      000BFB 8D 82            [24] 2876 	mov	dpl,r5
      000BFD 8E 83            [24] 2877 	mov	dph,r6
      000BFF 8B F0            [24] 2878 	mov	b,r3
      000C01 12 1E 1D         [24] 2879 	lcall	__gptrget
      000C04 FD               [12] 2880 	mov	r5,a
      000C05 89 82            [24] 2881 	mov	dpl,r1
      000C07 88 83            [24] 2882 	mov	dph,r0
      000C09 8F F0            [24] 2883 	mov	b,r7
      000C0B 12 1D 2A         [24] 2884 	lcall	__gptrput
                                   2885 ;	fat.h:205: for(uint8_t i=0;i<4;i++)
      000C0E 05 1E            [12] 2886 	inc	_HELPER_filename_to_8dot3filename_i_131072_126
      000C10 02 0B 70         [24] 2887 	ljmp	00125$
      000C13                       2888 00118$:
                                   2889 ;	fat.h:230: return 3;// if reached here, then it is an error
      000C13 75 82 03         [24] 2890 	mov	dpl,#0x03
                                   2891 ;	fat.h:231: }
      000C16 22               [24] 2892 	ret
                                   2893 ;------------------------------------------------------------
                                   2894 ;Allocation info for local variables in function 'MBR_CHECK__SIGNATURE'
                                   2895 ;------------------------------------------------------------
                                   2896 ;signature                 Allocated to stack - _bp +1
                                   2897 ;------------------------------------------------------------
                                   2898 ;	fat.h:245: uint8_t MBR_CHECK__SIGNATURE() __reentrant
                                   2899 ;	-----------------------------------------
                                   2900 ;	 function MBR_CHECK__SIGNATURE
                                   2901 ;	-----------------------------------------
      000C17                       2902 _MBR_CHECK__SIGNATURE:
      000C17 C0 3E            [24] 2903 	push	_bp
      000C19 85 81 3E         [24] 2904 	mov	_bp,sp
      000C1C 05 81            [12] 2905 	inc	sp
      000C1E 05 81            [12] 2906 	inc	sp
                                   2907 ;	fat.h:248: SDread(0,510,2,signature);
      000C20 A9 3E            [24] 2908 	mov	r1,_bp
      000C22 09               [12] 2909 	inc	r1
      000C23 89 05            [24] 2910 	mov	ar5,r1
      000C25 7E 00            [12] 2911 	mov	r6,#0x00
      000C27 7F 40            [12] 2912 	mov	r7,#0x40
      000C29 C0 01            [24] 2913 	push	ar1
      000C2B C0 05            [24] 2914 	push	ar5
      000C2D C0 06            [24] 2915 	push	ar6
      000C2F C0 07            [24] 2916 	push	ar7
      000C31 74 02            [12] 2917 	mov	a,#0x02
      000C33 C0 E0            [24] 2918 	push	acc
      000C35 E4               [12] 2919 	clr	a
      000C36 C0 E0            [24] 2920 	push	acc
      000C38 74 FE            [12] 2921 	mov	a,#0xfe
      000C3A C0 E0            [24] 2922 	push	acc
      000C3C F4               [12] 2923 	cpl	a
      000C3D C0 E0            [24] 2924 	push	acc
      000C3F 90 00 00         [24] 2925 	mov	dptr,#(0x00&0x00ff)
      000C42 E4               [12] 2926 	clr	a
      000C43 F5 F0            [12] 2927 	mov	b,a
      000C45 12 07 47         [24] 2928 	lcall	_SDread
      000C48 E5 81            [12] 2929 	mov	a,sp
      000C4A 24 F9            [12] 2930 	add	a,#0xf9
      000C4C F5 81            [12] 2931 	mov	sp,a
      000C4E D0 01            [24] 2932 	pop	ar1
                                   2933 ;	fat.h:257: if(signature[0]==0x55 && signature[1]==0xAA) return 0;
      000C50 87 07            [24] 2934 	mov	ar7,@r1
      000C52 BF 55 0B         [24] 2935 	cjne	r7,#0x55,00102$
      000C55 09               [12] 2936 	inc	r1
      000C56 87 07            [24] 2937 	mov	ar7,@r1
      000C58 BF AA 05         [24] 2938 	cjne	r7,#0xaa,00102$
      000C5B 75 82 00         [24] 2939 	mov	dpl,#0x00
      000C5E 80 03            [24] 2940 	sjmp	00105$
      000C60                       2941 00102$:
                                   2942 ;	fat.h:258: else return 1;
      000C60 75 82 01         [24] 2943 	mov	dpl,#0x01
      000C63                       2944 00105$:
                                   2945 ;	fat.h:259: }
      000C63 85 3E 81         [24] 2946 	mov	sp,_bp
      000C66 D0 3E            [24] 2947 	pop	_bp
      000C68 22               [24] 2948 	ret
                                   2949 ;------------------------------------------------------------
                                   2950 ;Allocation info for local variables in function 'MBR_LOAD_PARTITION_TABLE_ENTRY'
                                   2951 ;------------------------------------------------------------
                                   2952 ;partition_number          Allocated to registers r7 
                                   2953 ;temp                      Allocated with name '_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132'
                                   2954 ;offset                    Allocated to registers r5 r6 
                                   2955 ;------------------------------------------------------------
                                   2956 ;	fat.h:261: uint8_t MBR_LOAD_PARTITION_TABLE_ENTRY(uint8_t partition_number)
                                   2957 ;	-----------------------------------------
                                   2958 ;	 function MBR_LOAD_PARTITION_TABLE_ENTRY
                                   2959 ;	-----------------------------------------
      000C69                       2960 _MBR_LOAD_PARTITION_TABLE_ENTRY:
      000C69 AF 82            [24] 2961 	mov	r7,dpl
                                   2962 ;	fat.h:264: __idata uint16_t offset= 446 + partition_number*16; // get to the nth partition entry out of 0,1,2,3
      000C6B 8F 05            [24] 2963 	mov	ar5,r7
      000C6D E4               [12] 2964 	clr	a
      000C6E CD               [12] 2965 	xch	a,r5
      000C6F C4               [12] 2966 	swap	a
      000C70 CD               [12] 2967 	xch	a,r5
      000C71 6D               [12] 2968 	xrl	a,r5
      000C72 CD               [12] 2969 	xch	a,r5
      000C73 54 F0            [12] 2970 	anl	a,#0xf0
      000C75 CD               [12] 2971 	xch	a,r5
      000C76 6D               [12] 2972 	xrl	a,r5
      000C77 FE               [12] 2973 	mov	r6,a
      000C78 74 BE            [12] 2974 	mov	a,#0xbe
      000C7A 2D               [12] 2975 	add	a,r5
      000C7B FD               [12] 2976 	mov	r5,a
      000C7C 74 01            [12] 2977 	mov	a,#0x01
      000C7E 3E               [12] 2978 	addc	a,r6
      000C7F FE               [12] 2979 	mov	r6,a
                                   2980 ;	fat.h:266: if(partition_number>4) 
      000C80 EF               [12] 2981 	mov	a,r7
      000C81 24 FB            [12] 2982 	add	a,#0xff - 0x04
      000C83 50 04            [24] 2983 	jnc	00102$
                                   2984 ;	fat.h:273: return 1; //error
      000C85 75 82 01         [24] 2985 	mov	dpl,#0x01
      000C88 22               [24] 2986 	ret
      000C89                       2987 00102$:
                                   2988 ;	fat.h:276: SDread(0,offset,16,temp);
      000C89 74 84            [12] 2989 	mov	a,#_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132
      000C8B C0 E0            [24] 2990 	push	acc
      000C8D 74 00            [12] 2991 	mov	a,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 >> 8)
      000C8F C0 E0            [24] 2992 	push	acc
      000C91 74 40            [12] 2993 	mov	a,#0x40
      000C93 C0 E0            [24] 2994 	push	acc
      000C95 74 10            [12] 2995 	mov	a,#0x10
      000C97 C0 E0            [24] 2996 	push	acc
      000C99 E4               [12] 2997 	clr	a
      000C9A C0 E0            [24] 2998 	push	acc
      000C9C C0 05            [24] 2999 	push	ar5
      000C9E C0 06            [24] 3000 	push	ar6
      000CA0 90 00 00         [24] 3001 	mov	dptr,#(0x00&0x00ff)
      000CA3 E4               [12] 3002 	clr	a
      000CA4 F5 F0            [12] 3003 	mov	b,a
      000CA6 12 07 47         [24] 3004 	lcall	_SDread
      000CA9 E5 81            [12] 3005 	mov	a,sp
      000CAB 24 F9            [12] 3006 	add	a,#0xf9
      000CAD F5 81            [12] 3007 	mov	sp,a
                                   3008 ;	fat.h:278: __global_partitionTableEntry.type = temp[4]; // type offset is 4
      000CAF 78 88            [12] 3009 	mov	r0,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x0004)
      000CB1 86 07            [24] 3010 	mov	ar7,@r0
      000CB3 78 43            [12] 3011 	mov	r0,#___global_partitionTableEntry
      000CB5 A6 07            [24] 3012 	mov	@r0,ar7
                                   3013 ;	fat.h:279: __global_partitionTableEntry.start=HELPER_load_littleendian32(&temp[8]); //partition start LBA offset is 8
      000CB7 90 00 8C         [24] 3014 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x0008)
      000CBA 75 F0 40         [24] 3015 	mov	b,#0x40
      000CBD 12 08 BB         [24] 3016 	lcall	_HELPER_load_littleendian32
      000CC0 AC 82            [24] 3017 	mov	r4,dpl
      000CC2 AD 83            [24] 3018 	mov	r5,dph
      000CC4 AE F0            [24] 3019 	mov	r6,b
      000CC6 FF               [12] 3020 	mov	r7,a
      000CC7 78 44            [12] 3021 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000CC9 A6 04            [24] 3022 	mov	@r0,ar4
      000CCB 08               [12] 3023 	inc	r0
      000CCC A6 05            [24] 3024 	mov	@r0,ar5
      000CCE 08               [12] 3025 	inc	r0
      000CCF A6 06            [24] 3026 	mov	@r0,ar6
      000CD1 08               [12] 3027 	inc	r0
      000CD2 A6 07            [24] 3028 	mov	@r0,ar7
                                   3029 ;	fat.h:280: __global_partitionTableEntry.size=HELPER_load_littleendian32(&temp[12]); //partiiton size offset is 12
      000CD4 90 00 90         [24] 3030 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_132 + 0x000c)
      000CD7 75 F0 40         [24] 3031 	mov	b,#0x40
      000CDA 12 08 BB         [24] 3032 	lcall	_HELPER_load_littleendian32
      000CDD AC 82            [24] 3033 	mov	r4,dpl
      000CDF AD 83            [24] 3034 	mov	r5,dph
      000CE1 AE F0            [24] 3035 	mov	r6,b
      000CE3 FF               [12] 3036 	mov	r7,a
      000CE4 78 48            [12] 3037 	mov	r0,#(___global_partitionTableEntry + 0x0005)
      000CE6 A6 04            [24] 3038 	mov	@r0,ar4
      000CE8 08               [12] 3039 	inc	r0
      000CE9 A6 05            [24] 3040 	mov	@r0,ar5
      000CEB 08               [12] 3041 	inc	r0
      000CEC A6 06            [24] 3042 	mov	@r0,ar6
      000CEE 08               [12] 3043 	inc	r0
      000CEF A6 07            [24] 3044 	mov	@r0,ar7
                                   3045 ;	fat.h:282: return 0;
      000CF1 75 82 00         [24] 3046 	mov	dpl,#0x00
                                   3047 ;	fat.h:284: }
      000CF4 22               [24] 3048 	ret
                                   3049 ;------------------------------------------------------------
                                   3050 ;Allocation info for local variables in function 'MBR_DETECT_FAT16'
                                   3051 ;------------------------------------------------------------
                                   3052 ;result                    Allocated to registers r7 
                                   3053 ;i                         Allocated to registers r6 
                                   3054 ;------------------------------------------------------------
                                   3055 ;	fat.h:286: uint8_t MBR_DETECT_FAT16()
                                   3056 ;	-----------------------------------------
                                   3057 ;	 function MBR_DETECT_FAT16
                                   3058 ;	-----------------------------------------
      000CF5                       3059 _MBR_DETECT_FAT16:
                                   3060 ;	fat.h:291: uint8_t result=0;
      000CF5 7F 00            [12] 3061 	mov	r7,#0x00
                                   3062 ;	fat.h:293: for(uint8_t i=0;i<4;i++) 
      000CF7 7E 00            [12] 3063 	mov	r6,#0x00
      000CF9                       3064 00105$:
      000CF9 BE 04 00         [24] 3065 	cjne	r6,#0x04,00122$
      000CFC                       3066 00122$:
      000CFC 50 2B            [24] 3067 	jnc	00103$
                                   3068 ;	fat.h:295: MBR_LOAD_PARTITION_TABLE_ENTRY(i);
      000CFE 8E 82            [24] 3069 	mov	dpl,r6
      000D00 C0 07            [24] 3070 	push	ar7
      000D02 C0 06            [24] 3071 	push	ar6
      000D04 12 0C 69         [24] 3072 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000D07 D0 06            [24] 3073 	pop	ar6
      000D09 D0 07            [24] 3074 	pop	ar7
                                   3075 ;	fat.h:296: if(__global_partitionTableEntry.type==FAT16_PARTITION_TYPE_ID) result |= (1<<i); //set corresponding bit
      000D0B 78 43            [12] 3076 	mov	r0,#___global_partitionTableEntry
      000D0D 86 05            [24] 3077 	mov	ar5,@r0
      000D0F BD 06 14         [24] 3078 	cjne	r5,#0x06,00106$
      000D12 8E 05            [24] 3079 	mov	ar5,r6
      000D14 8D F0            [24] 3080 	mov	b,r5
      000D16 05 F0            [12] 3081 	inc	b
      000D18 74 01            [12] 3082 	mov	a,#0x01
      000D1A 80 02            [24] 3083 	sjmp	00128$
      000D1C                       3084 00126$:
      000D1C 25 E0            [12] 3085 	add	a,acc
      000D1E                       3086 00128$:
      000D1E D5 F0 FB         [24] 3087 	djnz	b,00126$
      000D21 FD               [12] 3088 	mov	r5,a
      000D22 8F 04            [24] 3089 	mov	ar4,r7
      000D24 4C               [12] 3090 	orl	a,r4
      000D25 FF               [12] 3091 	mov	r7,a
      000D26                       3092 00106$:
                                   3093 ;	fat.h:293: for(uint8_t i=0;i<4;i++) 
      000D26 0E               [12] 3094 	inc	r6
      000D27 80 D0            [24] 3095 	sjmp	00105$
      000D29                       3096 00103$:
                                   3097 ;	fat.h:305: return result;
      000D29 8F 82            [24] 3098 	mov	dpl,r7
                                   3099 ;	fat.h:306: }
      000D2B 22               [24] 3100 	ret
                                   3101 ;------------------------------------------------------------
                                   3102 ;Allocation info for local variables in function 'VBR_DUMP'
                                   3103 ;------------------------------------------------------------
                                   3104 ;	fat.h:313: void VBR_DUMP() __reentrant
                                   3105 ;	-----------------------------------------
                                   3106 ;	 function VBR_DUMP
                                   3107 ;	-----------------------------------------
      000D2C                       3108 _VBR_DUMP:
                                   3109 ;	fat.h:315: UartPrint("VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start,roote_start,data_start\n"); 
      000D2C 90 1E BA         [24] 3110 	mov	dptr,#___str_1
      000D2F 75 F0 80         [24] 3111 	mov	b,#0x80
      000D32 12 01 84         [24] 3112 	lcall	_UartPrint
                                   3113 ;	fat.h:316: UartPrintNumber(__global_vbr.volumeStartSector);UartWrite(',');
      000D35 78 4C            [12] 3114 	mov	r0,#___global_vbr
      000D37 86 04            [24] 3115 	mov	ar4,@r0
      000D39 08               [12] 3116 	inc	r0
      000D3A 86 05            [24] 3117 	mov	ar5,@r0
      000D3C 08               [12] 3118 	inc	r0
      000D3D 86 06            [24] 3119 	mov	ar6,@r0
      000D3F 08               [12] 3120 	inc	r0
      000D40 86 07            [24] 3121 	mov	ar7,@r0
      000D42 8C 82            [24] 3122 	mov	dpl,r4
      000D44 8D 83            [24] 3123 	mov	dph,r5
      000D46 8E F0            [24] 3124 	mov	b,r6
      000D48 EF               [12] 3125 	mov	a,r7
      000D49 12 02 CA         [24] 3126 	lcall	_UartPrintNumber
      000D4C 75 82 2C         [24] 3127 	mov	dpl,#0x2c
      000D4F 12 00 FE         [24] 3128 	lcall	_UartWrite
                                   3129 ;	fat.h:317: UartPrintNumber(__global_vbr.bps);UartWrite(',');
      000D52 78 52            [12] 3130 	mov	r0,#(___global_vbr + 0x0006)
      000D54 86 06            [24] 3131 	mov	ar6,@r0
      000D56 08               [12] 3132 	inc	r0
      000D57 86 07            [24] 3133 	mov	ar7,@r0
      000D59 7D 00            [12] 3134 	mov	r5,#0x00
      000D5B 7C 00            [12] 3135 	mov	r4,#0x00
      000D5D 8E 82            [24] 3136 	mov	dpl,r6
      000D5F 8F 83            [24] 3137 	mov	dph,r7
      000D61 8D F0            [24] 3138 	mov	b,r5
      000D63 EC               [12] 3139 	mov	a,r4
      000D64 12 02 CA         [24] 3140 	lcall	_UartPrintNumber
      000D67 75 82 2C         [24] 3141 	mov	dpl,#0x2c
      000D6A 12 00 FE         [24] 3142 	lcall	_UartWrite
                                   3143 ;	fat.h:318: UartPrintNumber(__global_vbr.spc);UartWrite(',');
      000D6D 78 54            [12] 3144 	mov	r0,#(___global_vbr + 0x0008)
      000D6F 86 07            [24] 3145 	mov	ar7,@r0
      000D71 7E 00            [12] 3146 	mov	r6,#0x00
      000D73 7D 00            [12] 3147 	mov	r5,#0x00
      000D75 7C 00            [12] 3148 	mov	r4,#0x00
      000D77 8F 82            [24] 3149 	mov	dpl,r7
      000D79 8E 83            [24] 3150 	mov	dph,r6
      000D7B 8D F0            [24] 3151 	mov	b,r5
      000D7D EC               [12] 3152 	mov	a,r4
      000D7E 12 02 CA         [24] 3153 	lcall	_UartPrintNumber
      000D81 75 82 2C         [24] 3154 	mov	dpl,#0x2c
      000D84 12 00 FE         [24] 3155 	lcall	_UartWrite
                                   3156 ;	fat.h:319: UartPrintNumber(__global_vbr.reservedSectors);UartWrite(',');
      000D87 78 50            [12] 3157 	mov	r0,#(___global_vbr + 0x0004)
      000D89 86 06            [24] 3158 	mov	ar6,@r0
      000D8B 08               [12] 3159 	inc	r0
      000D8C 86 07            [24] 3160 	mov	ar7,@r0
      000D8E 7D 00            [12] 3161 	mov	r5,#0x00
      000D90 7C 00            [12] 3162 	mov	r4,#0x00
      000D92 8E 82            [24] 3163 	mov	dpl,r6
      000D94 8F 83            [24] 3164 	mov	dph,r7
      000D96 8D F0            [24] 3165 	mov	b,r5
      000D98 EC               [12] 3166 	mov	a,r4
      000D99 12 02 CA         [24] 3167 	lcall	_UartPrintNumber
      000D9C 75 82 2C         [24] 3168 	mov	dpl,#0x2c
      000D9F 12 00 FE         [24] 3169 	lcall	_UartWrite
                                   3170 ;	fat.h:320: UartPrintNumber(__global_vbr.nfat);UartWrite(',');
      000DA2 78 55            [12] 3171 	mov	r0,#(___global_vbr + 0x0009)
      000DA4 86 06            [24] 3172 	mov	ar6,@r0
      000DA6 08               [12] 3173 	inc	r0
      000DA7 86 07            [24] 3174 	mov	ar7,@r0
      000DA9 7D 00            [12] 3175 	mov	r5,#0x00
      000DAB 7C 00            [12] 3176 	mov	r4,#0x00
      000DAD 8E 82            [24] 3177 	mov	dpl,r6
      000DAF 8F 83            [24] 3178 	mov	dph,r7
      000DB1 8D F0            [24] 3179 	mov	b,r5
      000DB3 EC               [12] 3180 	mov	a,r4
      000DB4 12 02 CA         [24] 3181 	lcall	_UartPrintNumber
      000DB7 75 82 2C         [24] 3182 	mov	dpl,#0x2c
      000DBA 12 00 FE         [24] 3183 	lcall	_UartWrite
                                   3184 ;	fat.h:321: UartPrintNumber(__global_vbr.nroote);UartWrite(',');
      000DBD 78 59            [12] 3185 	mov	r0,#(___global_vbr + 0x000d)
      000DBF 86 06            [24] 3186 	mov	ar6,@r0
      000DC1 08               [12] 3187 	inc	r0
      000DC2 86 07            [24] 3188 	mov	ar7,@r0
      000DC4 7D 00            [12] 3189 	mov	r5,#0x00
      000DC6 7C 00            [12] 3190 	mov	r4,#0x00
      000DC8 8E 82            [24] 3191 	mov	dpl,r6
      000DCA 8F 83            [24] 3192 	mov	dph,r7
      000DCC 8D F0            [24] 3193 	mov	b,r5
      000DCE EC               [12] 3194 	mov	a,r4
      000DCF 12 02 CA         [24] 3195 	lcall	_UartPrintNumber
      000DD2 75 82 2C         [24] 3196 	mov	dpl,#0x2c
      000DD5 12 00 FE         [24] 3197 	lcall	_UartWrite
                                   3198 ;	fat.h:322: UartPrintNumber(__global_vbr.spf);UartWrite(',');
      000DD8 78 57            [12] 3199 	mov	r0,#(___global_vbr + 0x000b)
      000DDA 86 06            [24] 3200 	mov	ar6,@r0
      000DDC 08               [12] 3201 	inc	r0
      000DDD 86 07            [24] 3202 	mov	ar7,@r0
      000DDF 7D 00            [12] 3203 	mov	r5,#0x00
      000DE1 7C 00            [12] 3204 	mov	r4,#0x00
      000DE3 8E 82            [24] 3205 	mov	dpl,r6
      000DE5 8F 83            [24] 3206 	mov	dph,r7
      000DE7 8D F0            [24] 3207 	mov	b,r5
      000DE9 EC               [12] 3208 	mov	a,r4
      000DEA 12 02 CA         [24] 3209 	lcall	_UartPrintNumber
      000DED 75 82 2C         [24] 3210 	mov	dpl,#0x2c
      000DF0 12 00 FE         [24] 3211 	lcall	_UartWrite
                                   3212 ;	fat.h:324: UartPrintNumber(__global_vbr.addr_fat_start);UartWrite(',');
      000DF3 78 5F            [12] 3213 	mov	r0,#(___global_vbr + 0x0013)
      000DF5 86 04            [24] 3214 	mov	ar4,@r0
      000DF7 08               [12] 3215 	inc	r0
      000DF8 86 05            [24] 3216 	mov	ar5,@r0
      000DFA 08               [12] 3217 	inc	r0
      000DFB 86 06            [24] 3218 	mov	ar6,@r0
      000DFD 08               [12] 3219 	inc	r0
      000DFE 86 07            [24] 3220 	mov	ar7,@r0
      000E00 8C 82            [24] 3221 	mov	dpl,r4
      000E02 8D 83            [24] 3222 	mov	dph,r5
      000E04 8E F0            [24] 3223 	mov	b,r6
      000E06 EF               [12] 3224 	mov	a,r7
      000E07 12 02 CA         [24] 3225 	lcall	_UartPrintNumber
      000E0A 75 82 2C         [24] 3226 	mov	dpl,#0x2c
      000E0D 12 00 FE         [24] 3227 	lcall	_UartWrite
                                   3228 ;	fat.h:325: UartPrintNumber(__global_vbr.addr_roote_start);UartWrite(',');
      000E10 78 63            [12] 3229 	mov	r0,#(___global_vbr + 0x0017)
      000E12 86 04            [24] 3230 	mov	ar4,@r0
      000E14 08               [12] 3231 	inc	r0
      000E15 86 05            [24] 3232 	mov	ar5,@r0
      000E17 08               [12] 3233 	inc	r0
      000E18 86 06            [24] 3234 	mov	ar6,@r0
      000E1A 08               [12] 3235 	inc	r0
      000E1B 86 07            [24] 3236 	mov	ar7,@r0
      000E1D 8C 82            [24] 3237 	mov	dpl,r4
      000E1F 8D 83            [24] 3238 	mov	dph,r5
      000E21 8E F0            [24] 3239 	mov	b,r6
      000E23 EF               [12] 3240 	mov	a,r7
      000E24 12 02 CA         [24] 3241 	lcall	_UartPrintNumber
      000E27 75 82 2C         [24] 3242 	mov	dpl,#0x2c
      000E2A 12 00 FE         [24] 3243 	lcall	_UartWrite
                                   3244 ;	fat.h:326: UartPrintNumber(__global_vbr.addr_data_start);UartWrite(',');
      000E2D 78 67            [12] 3245 	mov	r0,#(___global_vbr + 0x001b)
      000E2F 86 04            [24] 3246 	mov	ar4,@r0
      000E31 08               [12] 3247 	inc	r0
      000E32 86 05            [24] 3248 	mov	ar5,@r0
      000E34 08               [12] 3249 	inc	r0
      000E35 86 06            [24] 3250 	mov	ar6,@r0
      000E37 08               [12] 3251 	inc	r0
      000E38 86 07            [24] 3252 	mov	ar7,@r0
      000E3A 8C 82            [24] 3253 	mov	dpl,r4
      000E3C 8D 83            [24] 3254 	mov	dph,r5
      000E3E 8E F0            [24] 3255 	mov	b,r6
      000E40 EF               [12] 3256 	mov	a,r7
      000E41 12 02 CA         [24] 3257 	lcall	_UartPrintNumber
      000E44 75 82 2C         [24] 3258 	mov	dpl,#0x2c
      000E47 12 00 FE         [24] 3259 	lcall	_UartWrite
                                   3260 ;	fat.h:327: UartWrite('\n');
      000E4A 75 82 0A         [24] 3261 	mov	dpl,#0x0a
                                   3262 ;	fat.h:328: }
      000E4D 02 00 FE         [24] 3263 	ljmp	_UartWrite
                                   3264 ;------------------------------------------------------------
                                   3265 ;Allocation info for local variables in function 'VBR_MOUNT_VBR'
                                   3266 ;------------------------------------------------------------
                                   3267 ;partition_number          Allocated to registers r7 
                                   3268 ;sloc0                     Allocated with name '_VBR_MOUNT_VBR_sloc0_1_0'
                                   3269 ;temp                      Allocated with name '_VBR_MOUNT_VBR_temp_65536_139'
                                   3270 ;------------------------------------------------------------
                                   3271 ;	fat.h:331: uint8_t VBR_MOUNT_VBR(uint8_t partition_number)
                                   3272 ;	-----------------------------------------
                                   3273 ;	 function VBR_MOUNT_VBR
                                   3274 ;	-----------------------------------------
      000E50                       3275 _VBR_MOUNT_VBR:
      000E50 AF 82            [24] 3276 	mov	r7,dpl
                                   3277 ;	fat.h:337: if(__global_nthPartitionVBRmounted == partition_number ) 
      000E52 78 6B            [12] 3278 	mov	r0,#___global_nthPartitionVBRmounted
      000E54 E6               [12] 3279 	mov	a,@r0
      000E55 B5 07 04         [24] 3280 	cjne	a,ar7,00102$
                                   3281 ;	fat.h:345: return 0; //return if already loaded, else continue;
      000E58 75 82 00         [24] 3282 	mov	dpl,#0x00
      000E5B 22               [24] 3283 	ret
      000E5C                       3284 00102$:
                                   3285 ;	fat.h:356: __global_nthPartitionVBRmounted=partition_number; //set global variable
      000E5C 78 6B            [12] 3286 	mov	r0,#___global_nthPartitionVBRmounted
      000E5E A6 07            [24] 3287 	mov	@r0,ar7
                                   3288 ;	fat.h:359: if(MBR_LOAD_PARTITION_TABLE_ENTRY(partition_number))  //if error, 0 is success
      000E60 8F 82            [24] 3289 	mov	dpl,r7
      000E62 12 0C 69         [24] 3290 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000E65 E5 82            [12] 3291 	mov	a,dpl
      000E67 60 04            [24] 3292 	jz	00104$
                                   3293 ;	fat.h:361: return 1; //return error
      000E69 75 82 01         [24] 3294 	mov	dpl,#0x01
      000E6C 22               [24] 3295 	ret
      000E6D                       3296 00104$:
                                   3297 ;	fat.h:365: SDread(__global_partitionTableEntry.start,0,16,temp);
      000E6D 78 44            [12] 3298 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000E6F 86 04            [24] 3299 	mov	ar4,@r0
      000E71 08               [12] 3300 	inc	r0
      000E72 86 05            [24] 3301 	mov	ar5,@r0
      000E74 08               [12] 3302 	inc	r0
      000E75 86 06            [24] 3303 	mov	ar6,@r0
      000E77 08               [12] 3304 	inc	r0
      000E78 86 07            [24] 3305 	mov	ar7,@r0
      000E7A 74 94            [12] 3306 	mov	a,#_VBR_MOUNT_VBR_temp_65536_139
      000E7C C0 E0            [24] 3307 	push	acc
      000E7E 74 00            [12] 3308 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_139 >> 8)
      000E80 C0 E0            [24] 3309 	push	acc
      000E82 74 40            [12] 3310 	mov	a,#0x40
      000E84 C0 E0            [24] 3311 	push	acc
      000E86 74 10            [12] 3312 	mov	a,#0x10
      000E88 C0 E0            [24] 3313 	push	acc
      000E8A E4               [12] 3314 	clr	a
      000E8B C0 E0            [24] 3315 	push	acc
      000E8D C0 E0            [24] 3316 	push	acc
      000E8F C0 E0            [24] 3317 	push	acc
      000E91 8C 82            [24] 3318 	mov	dpl,r4
      000E93 8D 83            [24] 3319 	mov	dph,r5
      000E95 8E F0            [24] 3320 	mov	b,r6
      000E97 EF               [12] 3321 	mov	a,r7
      000E98 12 07 47         [24] 3322 	lcall	_SDread
      000E9B E5 81            [12] 3323 	mov	a,sp
      000E9D 24 F9            [12] 3324 	add	a,#0xf9
      000E9F F5 81            [12] 3325 	mov	sp,a
                                   3326 ;	fat.h:374: __global_vbr.volumeStartSector = __global_partitionTableEntry.start;
      000EA1 78 44            [12] 3327 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000EA3 86 04            [24] 3328 	mov	ar4,@r0
      000EA5 08               [12] 3329 	inc	r0
      000EA6 86 05            [24] 3330 	mov	ar5,@r0
      000EA8 08               [12] 3331 	inc	r0
      000EA9 86 06            [24] 3332 	mov	ar6,@r0
      000EAB 08               [12] 3333 	inc	r0
      000EAC 86 07            [24] 3334 	mov	ar7,@r0
      000EAE 78 4C            [12] 3335 	mov	r0,#___global_vbr
      000EB0 A6 04            [24] 3336 	mov	@r0,ar4
      000EB2 08               [12] 3337 	inc	r0
      000EB3 A6 05            [24] 3338 	mov	@r0,ar5
      000EB5 08               [12] 3339 	inc	r0
      000EB6 A6 06            [24] 3340 	mov	@r0,ar6
      000EB8 08               [12] 3341 	inc	r0
      000EB9 A6 07            [24] 3342 	mov	@r0,ar7
                                   3343 ;	fat.h:376: __global_vbr.bps = HELPER_load_littleendian16(&temp[0x0b]); // bps starts at offset 0x0b
      000EBB 90 00 9F         [24] 3344 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x000b)
      000EBE 75 F0 40         [24] 3345 	mov	b,#0x40
      000EC1 12 08 8D         [24] 3346 	lcall	_HELPER_load_littleendian16
      000EC4 E5 82            [12] 3347 	mov	a,dpl
      000EC6 85 83 F0         [24] 3348 	mov	b,dph
      000EC9 78 52            [12] 3349 	mov	r0,#(___global_vbr + 0x0006)
      000ECB F6               [12] 3350 	mov	@r0,a
      000ECC 08               [12] 3351 	inc	r0
      000ECD A6 F0            [24] 3352 	mov	@r0,b
                                   3353 ;	fat.h:377: __global_vbr.spc = temp[0x0d]; //spc offset 0x0d
      000ECF 78 A1            [12] 3354 	mov	r0,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x000d)
      000ED1 86 07            [24] 3355 	mov	ar7,@r0
      000ED3 78 54            [12] 3356 	mov	r0,#(___global_vbr + 0x0008)
      000ED5 A6 07            [24] 3357 	mov	@r0,ar7
                                   3358 ;	fat.h:378: __global_vbr.reservedSectors = HELPER_load_littleendian16(&temp[0x0e]);
      000ED7 90 00 A2         [24] 3359 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x000e)
      000EDA 75 F0 40         [24] 3360 	mov	b,#0x40
      000EDD 12 08 8D         [24] 3361 	lcall	_HELPER_load_littleendian16
      000EE0 E5 82            [12] 3362 	mov	a,dpl
      000EE2 85 83 F0         [24] 3363 	mov	b,dph
      000EE5 78 50            [12] 3364 	mov	r0,#(___global_vbr + 0x0004)
      000EE7 F6               [12] 3365 	mov	@r0,a
      000EE8 08               [12] 3366 	inc	r0
      000EE9 A6 F0            [24] 3367 	mov	@r0,b
                                   3368 ;	fat.h:382: SDread(__global_partitionTableEntry.start,16,16,temp);
      000EEB 78 44            [12] 3369 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000EED 86 04            [24] 3370 	mov	ar4,@r0
      000EEF 08               [12] 3371 	inc	r0
      000EF0 86 05            [24] 3372 	mov	ar5,@r0
      000EF2 08               [12] 3373 	inc	r0
      000EF3 86 06            [24] 3374 	mov	ar6,@r0
      000EF5 08               [12] 3375 	inc	r0
      000EF6 86 07            [24] 3376 	mov	ar7,@r0
      000EF8 74 94            [12] 3377 	mov	a,#_VBR_MOUNT_VBR_temp_65536_139
      000EFA C0 E0            [24] 3378 	push	acc
      000EFC 74 00            [12] 3379 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_139 >> 8)
      000EFE C0 E0            [24] 3380 	push	acc
      000F00 74 40            [12] 3381 	mov	a,#0x40
      000F02 C0 E0            [24] 3382 	push	acc
      000F04 74 10            [12] 3383 	mov	a,#0x10
      000F06 C0 E0            [24] 3384 	push	acc
      000F08 E4               [12] 3385 	clr	a
      000F09 C0 E0            [24] 3386 	push	acc
      000F0B 74 10            [12] 3387 	mov	a,#0x10
      000F0D C0 E0            [24] 3388 	push	acc
      000F0F E4               [12] 3389 	clr	a
      000F10 C0 E0            [24] 3390 	push	acc
      000F12 8C 82            [24] 3391 	mov	dpl,r4
      000F14 8D 83            [24] 3392 	mov	dph,r5
      000F16 8E F0            [24] 3393 	mov	b,r6
      000F18 EF               [12] 3394 	mov	a,r7
      000F19 12 07 47         [24] 3395 	lcall	_SDread
      000F1C E5 81            [12] 3396 	mov	a,sp
      000F1E 24 F9            [12] 3397 	add	a,#0xf9
      000F20 F5 81            [12] 3398 	mov	sp,a
                                   3399 ;	fat.h:391: __global_vbr.nfat = HELPER_load_littleendian16(&temp[0x10-16]); //offset of nfat is 0x01, but we subtract 16 as we have read from 16 offset in SDread
      000F22 90 00 94         [24] 3400 	mov	dptr,#_VBR_MOUNT_VBR_temp_65536_139
      000F25 75 F0 40         [24] 3401 	mov	b,#0x40
      000F28 12 08 8D         [24] 3402 	lcall	_HELPER_load_littleendian16
      000F2B E5 82            [12] 3403 	mov	a,dpl
      000F2D 85 83 F0         [24] 3404 	mov	b,dph
      000F30 78 55            [12] 3405 	mov	r0,#(___global_vbr + 0x0009)
      000F32 F6               [12] 3406 	mov	@r0,a
      000F33 08               [12] 3407 	inc	r0
      000F34 A6 F0            [24] 3408 	mov	@r0,b
                                   3409 ;	fat.h:392: __global_vbr.nroote = HELPER_load_littleendian16(&temp[0x11-16]); //offset of number_root_entrie is 0x11
      000F36 90 00 95         [24] 3410 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x0001)
      000F39 75 F0 40         [24] 3411 	mov	b,#0x40
      000F3C 12 08 8D         [24] 3412 	lcall	_HELPER_load_littleendian16
      000F3F E5 82            [12] 3413 	mov	a,dpl
      000F41 85 83 F0         [24] 3414 	mov	b,dph
      000F44 78 59            [12] 3415 	mov	r0,#(___global_vbr + 0x000d)
      000F46 F6               [12] 3416 	mov	@r0,a
      000F47 08               [12] 3417 	inc	r0
      000F48 A6 F0            [24] 3418 	mov	@r0,b
                                   3419 ;	fat.h:393: __global_vbr.spf = HELPER_load_littleendian16(&temp[0x16-16]); //offset of sectors_per_fat is 0x16
      000F4A 90 00 9A         [24] 3420 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_139 + 0x0006)
      000F4D 75 F0 40         [24] 3421 	mov	b,#0x40
      000F50 12 08 8D         [24] 3422 	lcall	_HELPER_load_littleendian16
      000F53 AE 82            [24] 3423 	mov	r6,dpl
      000F55 AF 83            [24] 3424 	mov	r7,dph
      000F57 78 57            [12] 3425 	mov	r0,#(___global_vbr + 0x000b)
      000F59 A6 06            [24] 3426 	mov	@r0,ar6
      000F5B 08               [12] 3427 	inc	r0
      000F5C A6 07            [24] 3428 	mov	@r0,ar7
                                   3429 ;	fat.h:402: __global_vbr.bpc =  (uint32_t)__global_vbr.bps * (uint32_t)__global_vbr.spc; 
      000F5E 78 52            [12] 3430 	mov	r0,#(___global_vbr + 0x0006)
      000F60 86 04            [24] 3431 	mov	ar4,@r0
      000F62 08               [12] 3432 	inc	r0
      000F63 86 05            [24] 3433 	mov	ar5,@r0
      000F65 8C 1F            [24] 3434 	mov	_VBR_MOUNT_VBR_sloc0_1_0,r4
      000F67 8D 20            [24] 3435 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),r5
      000F69 75 21 00         [24] 3436 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),#0x00
      000F6C 75 22 00         [24] 3437 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),#0x00
      000F6F 78 54            [12] 3438 	mov	r0,#(___global_vbr + 0x0008)
      000F71 86 05            [24] 3439 	mov	ar5,@r0
      000F73 8D 3F            [24] 3440 	mov	__mullong_PARM_2,r5
      000F75 75 40 00         [24] 3441 	mov	(__mullong_PARM_2 + 1),#0x00
      000F78 75 41 00         [24] 3442 	mov	(__mullong_PARM_2 + 2),#0x00
      000F7B 75 42 00         [24] 3443 	mov	(__mullong_PARM_2 + 3),#0x00
      000F7E 85 1F 82         [24] 3444 	mov	dpl,_VBR_MOUNT_VBR_sloc0_1_0
      000F81 85 20 83         [24] 3445 	mov	dph,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F84 85 21 F0         [24] 3446 	mov	b,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F87 E5 22            [12] 3447 	mov	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000F89 C0 07            [24] 3448 	push	ar7
      000F8B C0 06            [24] 3449 	push	ar6
      000F8D 12 1D AF         [24] 3450 	lcall	__mullong
      000F90 AA 82            [24] 3451 	mov	r2,dpl
      000F92 AB 83            [24] 3452 	mov	r3,dph
      000F94 AC F0            [24] 3453 	mov	r4,b
      000F96 FD               [12] 3454 	mov	r5,a
      000F97 D0 06            [24] 3455 	pop	ar6
      000F99 D0 07            [24] 3456 	pop	ar7
      000F9B 78 5B            [12] 3457 	mov	r0,#(___global_vbr + 0x000f)
      000F9D A6 02            [24] 3458 	mov	@r0,ar2
      000F9F 08               [12] 3459 	inc	r0
      000FA0 A6 03            [24] 3460 	mov	@r0,ar3
      000FA2 08               [12] 3461 	inc	r0
      000FA3 A6 04            [24] 3462 	mov	@r0,ar4
      000FA5 08               [12] 3463 	inc	r0
      000FA6 A6 05            [24] 3464 	mov	@r0,ar5
                                   3465 ;	fat.h:405: __global_vbr.addr_fat_start = __global_vbr.volumeStartSector + __global_vbr.reservedSectors;
      000FA8 78 4C            [12] 3466 	mov	r0,#___global_vbr
      000FAA 86 1F            [24] 3467 	mov	_VBR_MOUNT_VBR_sloc0_1_0,@r0
      000FAC 08               [12] 3468 	inc	r0
      000FAD 86 20            [24] 3469 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),@r0
      000FAF 08               [12] 3470 	inc	r0
      000FB0 86 21            [24] 3471 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),@r0
      000FB2 08               [12] 3472 	inc	r0
      000FB3 86 22            [24] 3473 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),@r0
      000FB5 78 50            [12] 3474 	mov	r0,#(___global_vbr + 0x0004)
      000FB7 86 04            [24] 3475 	mov	ar4,@r0
      000FB9 08               [12] 3476 	inc	r0
      000FBA 86 05            [24] 3477 	mov	ar5,@r0
      000FBC E4               [12] 3478 	clr	a
      000FBD FB               [12] 3479 	mov	r3,a
      000FBE FA               [12] 3480 	mov	r2,a
      000FBF EC               [12] 3481 	mov	a,r4
      000FC0 25 1F            [12] 3482 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000FC2 F5 1F            [12] 3483 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000FC4 ED               [12] 3484 	mov	a,r5
      000FC5 35 20            [12] 3485 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FC7 F5 20            [12] 3486 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000FC9 EB               [12] 3487 	mov	a,r3
      000FCA 35 21            [12] 3488 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FCC F5 21            [12] 3489 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      000FCE EA               [12] 3490 	mov	a,r2
      000FCF 35 22            [12] 3491 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000FD1 F5 22            [12] 3492 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      000FD3 78 5F            [12] 3493 	mov	r0,#(___global_vbr + 0x0013)
      000FD5 A6 1F            [24] 3494 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      000FD7 08               [12] 3495 	inc	r0
      000FD8 A6 20            [24] 3496 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FDA 08               [12] 3497 	inc	r0
      000FDB A6 21            [24] 3498 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FDD 08               [12] 3499 	inc	r0
      000FDE A6 22            [24] 3500 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3501 ;	fat.h:406: __global_vbr.addr_roote_start = __global_vbr.addr_fat_start + __global_vbr.nfat * __global_vbr.spf;
      000FE0 78 55            [12] 3502 	mov	r0,#(___global_vbr + 0x0009)
      000FE2 86 82            [24] 3503 	mov	dpl,@r0
      000FE4 08               [12] 3504 	inc	r0
      000FE5 86 83            [24] 3505 	mov	dph,@r0
      000FE7 8E 3F            [24] 3506 	mov	__mulint_PARM_2,r6
      000FE9 8F 40            [24] 3507 	mov	(__mulint_PARM_2 + 1),r7
      000FEB 12 1D 45         [24] 3508 	lcall	__mulint
      000FEE AE 82            [24] 3509 	mov	r6,dpl
      000FF0 AF 83            [24] 3510 	mov	r7,dph
      000FF2 8E 04            [24] 3511 	mov	ar4,r6
      000FF4 8F 05            [24] 3512 	mov	ar5,r7
      000FF6 E4               [12] 3513 	clr	a
      000FF7 FE               [12] 3514 	mov	r6,a
      000FF8 FF               [12] 3515 	mov	r7,a
      000FF9 EC               [12] 3516 	mov	a,r4
      000FFA 25 1F            [12] 3517 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000FFC F5 1F            [12] 3518 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000FFE ED               [12] 3519 	mov	a,r5
      000FFF 35 20            [12] 3520 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001001 F5 20            [12] 3521 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      001003 EE               [12] 3522 	mov	a,r6
      001004 35 21            [12] 3523 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001006 F5 21            [12] 3524 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      001008 EF               [12] 3525 	mov	a,r7
      001009 35 22            [12] 3526 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      00100B F5 22            [12] 3527 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      00100D 78 63            [12] 3528 	mov	r0,#(___global_vbr + 0x0017)
      00100F A6 1F            [24] 3529 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      001011 08               [12] 3530 	inc	r0
      001012 A6 20            [24] 3531 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001014 08               [12] 3532 	inc	r0
      001015 A6 21            [24] 3533 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001017 08               [12] 3534 	inc	r0
      001018 A6 22            [24] 3535 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3536 ;	fat.h:407: __global_vbr.addr_data_start = __global_vbr.addr_roote_start + (__global_vbr.nroote*32)/__global_vbr.bps;
      00101A 78 59            [12] 3537 	mov	r0,#(___global_vbr + 0x000d)
      00101C 86 02            [24] 3538 	mov	ar2,@r0
      00101E 08               [12] 3539 	inc	r0
      00101F 86 03            [24] 3540 	mov	ar3,@r0
      001021 8A 82            [24] 3541 	mov	dpl,r2
      001023 EB               [12] 3542 	mov	a,r3
      001024 C4               [12] 3543 	swap	a
      001025 23               [12] 3544 	rl	a
      001026 54 E0            [12] 3545 	anl	a,#0xe0
      001028 C5 82            [12] 3546 	xch	a,dpl
      00102A C4               [12] 3547 	swap	a
      00102B 23               [12] 3548 	rl	a
      00102C C5 82            [12] 3549 	xch	a,dpl
      00102E 65 82            [12] 3550 	xrl	a,dpl
      001030 C5 82            [12] 3551 	xch	a,dpl
      001032 54 E0            [12] 3552 	anl	a,#0xe0
      001034 C5 82            [12] 3553 	xch	a,dpl
      001036 65 82            [12] 3554 	xrl	a,dpl
      001038 F5 83            [12] 3555 	mov	dph,a
      00103A 78 52            [12] 3556 	mov	r0,#(___global_vbr + 0x0006)
      00103C 86 3F            [24] 3557 	mov	__divuint_PARM_2,@r0
      00103E 08               [12] 3558 	inc	r0
      00103F 86 40            [24] 3559 	mov	(__divuint_PARM_2 + 1),@r0
      001041 12 1C 19         [24] 3560 	lcall	__divuint
      001044 AA 82            [24] 3561 	mov	r2,dpl
      001046 AB 83            [24] 3562 	mov	r3,dph
      001048 E4               [12] 3563 	clr	a
      001049 FE               [12] 3564 	mov	r6,a
      00104A FF               [12] 3565 	mov	r7,a
      00104B EA               [12] 3566 	mov	a,r2
      00104C 25 1F            [12] 3567 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      00104E FA               [12] 3568 	mov	r2,a
      00104F EB               [12] 3569 	mov	a,r3
      001050 35 20            [12] 3570 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001052 FB               [12] 3571 	mov	r3,a
      001053 EE               [12] 3572 	mov	a,r6
      001054 35 21            [12] 3573 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001056 FE               [12] 3574 	mov	r6,a
      001057 EF               [12] 3575 	mov	a,r7
      001058 35 22            [12] 3576 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      00105A FF               [12] 3577 	mov	r7,a
      00105B 78 67            [12] 3578 	mov	r0,#(___global_vbr + 0x001b)
      00105D A6 02            [24] 3579 	mov	@r0,ar2
      00105F 08               [12] 3580 	inc	r0
      001060 A6 03            [24] 3581 	mov	@r0,ar3
      001062 08               [12] 3582 	inc	r0
      001063 A6 06            [24] 3583 	mov	@r0,ar6
      001065 08               [12] 3584 	inc	r0
      001066 A6 07            [24] 3585 	mov	@r0,ar7
                                   3586 ;	fat.h:415: return 0;
      001068 75 82 00         [24] 3587 	mov	dpl,#0x00
                                   3588 ;	fat.h:417: }
      00106B 22               [24] 3589 	ret
                                   3590 ;------------------------------------------------------------
                                   3591 ;Allocation info for local variables in function 'VBR_FAT16_CHECK_COMPATIBILITY'
                                   3592 ;------------------------------------------------------------
                                   3593 ;partition_number          Allocated to registers r7 
                                   3594 ;------------------------------------------------------------
                                   3595 ;	fat.h:419: uint8_t VBR_FAT16_CHECK_COMPATIBILITY(uint8_t partition_number)
                                   3596 ;	-----------------------------------------
                                   3597 ;	 function VBR_FAT16_CHECK_COMPATIBILITY
                                   3598 ;	-----------------------------------------
      00106C                       3599 _VBR_FAT16_CHECK_COMPATIBILITY:
                                   3600 ;	fat.h:425: if(VBR_MOUNT_VBR(partition_number))
      00106C 12 0E 50         [24] 3601 	lcall	_VBR_MOUNT_VBR
      00106F E5 82            [12] 3602 	mov	a,dpl
      001071 60 04            [24] 3603 	jz	00102$
                                   3604 ;	fat.h:427: return 1; //error
      001073 75 82 01         [24] 3605 	mov	dpl,#0x01
      001076 22               [24] 3606 	ret
      001077                       3607 00102$:
                                   3608 ;	fat.h:430: if(__global_vbr.bps!=SD_BLOCK_SIZE) 
      001077 78 52            [12] 3609 	mov	r0,#(___global_vbr + 0x0006)
      001079 86 06            [24] 3610 	mov	ar6,@r0
      00107B 08               [12] 3611 	inc	r0
      00107C 86 07            [24] 3612 	mov	ar7,@r0
      00107E BE 00 05         [24] 3613 	cjne	r6,#0x00,00116$
      001081 BF 02 02         [24] 3614 	cjne	r7,#0x02,00116$
      001084 80 04            [24] 3615 	sjmp	00104$
      001086                       3616 00116$:
                                   3617 ;	fat.h:435: return 2; //error - not supported fat16
      001086 75 82 02         [24] 3618 	mov	dpl,#0x02
      001089 22               [24] 3619 	ret
      00108A                       3620 00104$:
                                   3621 ;	fat.h:438: return 0;
      00108A 75 82 00         [24] 3622 	mov	dpl,#0x00
                                   3623 ;	fat.h:439: }
      00108D 22               [24] 3624 	ret
                                   3625 ;------------------------------------------------------------
                                   3626 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_DUMP'
                                   3627 ;------------------------------------------------------------
                                   3628 ;i                         Allocated to registers r7 
                                   3629 ;i                         Allocated to registers r7 
                                   3630 ;------------------------------------------------------------
                                   3631 ;	fat.h:442: void FAT16_ROOTENTRY_DUMP()
                                   3632 ;	-----------------------------------------
                                   3633 ;	 function FAT16_ROOTENTRY_DUMP
                                   3634 ;	-----------------------------------------
      00108E                       3635 _FAT16_ROOTENTRY_DUMP:
                                   3636 ;	fat.h:444: UartPrint("\nROOT_ENTRY_INDEX:");
      00108E 90 1F 0F         [24] 3637 	mov	dptr,#___str_2
      001091 75 F0 80         [24] 3638 	mov	b,#0x80
      001094 12 01 84         [24] 3639 	lcall	_UartPrint
                                   3640 ;	fat.h:445: UartPrintNumber(__global_rootEntry.entry_index);
      001097 78 7E            [12] 3641 	mov	r0,#(___global_rootEntry + 0x0012)
      001099 86 06            [24] 3642 	mov	ar6,@r0
      00109B 08               [12] 3643 	inc	r0
      00109C 86 07            [24] 3644 	mov	ar7,@r0
      00109E 7D 00            [12] 3645 	mov	r5,#0x00
      0010A0 7C 00            [12] 3646 	mov	r4,#0x00
      0010A2 8E 82            [24] 3647 	mov	dpl,r6
      0010A4 8F 83            [24] 3648 	mov	dph,r7
      0010A6 8D F0            [24] 3649 	mov	b,r5
      0010A8 EC               [12] 3650 	mov	a,r4
      0010A9 12 02 CA         [24] 3651 	lcall	_UartPrintNumber
                                   3652 ;	fat.h:446: UartPrint("\nFILE: ");
      0010AC 90 1F 22         [24] 3653 	mov	dptr,#___str_3
      0010AF 75 F0 80         [24] 3654 	mov	b,#0x80
      0010B2 12 01 84         [24] 3655 	lcall	_UartPrint
                                   3656 ;	fat.h:447: for(uint8_t i=0;i<8;i++)UartWrite(__global_rootEntry.name[i]);
      0010B5 7F 00            [12] 3657 	mov	r7,#0x00
      0010B7                       3658 00104$:
      0010B7 BF 08 00         [24] 3659 	cjne	r7,#0x08,00129$
      0010BA                       3660 00129$:
      0010BA 50 10            [24] 3661 	jnc	00101$
      0010BC EF               [12] 3662 	mov	a,r7
      0010BD 24 6C            [12] 3663 	add	a,#___global_rootEntry
      0010BF F9               [12] 3664 	mov	r1,a
      0010C0 87 82            [24] 3665 	mov	dpl,@r1
      0010C2 C0 07            [24] 3666 	push	ar7
      0010C4 12 00 FE         [24] 3667 	lcall	_UartWrite
      0010C7 D0 07            [24] 3668 	pop	ar7
      0010C9 0F               [12] 3669 	inc	r7
      0010CA 80 EB            [24] 3670 	sjmp	00104$
      0010CC                       3671 00101$:
                                   3672 ;	fat.h:448: for(uint8_t i=0;i<3;i++)UartWrite(__global_rootEntry.extension[i]);
      0010CC 7F 00            [12] 3673 	mov	r7,#0x00
      0010CE                       3674 00107$:
      0010CE BF 03 00         [24] 3675 	cjne	r7,#0x03,00131$
      0010D1                       3676 00131$:
      0010D1 50 10            [24] 3677 	jnc	00102$
      0010D3 EF               [12] 3678 	mov	a,r7
      0010D4 24 74            [12] 3679 	add	a,#(___global_rootEntry + 0x0008)
      0010D6 F9               [12] 3680 	mov	r1,a
      0010D7 87 82            [24] 3681 	mov	dpl,@r1
      0010D9 C0 07            [24] 3682 	push	ar7
      0010DB 12 00 FE         [24] 3683 	lcall	_UartWrite
      0010DE D0 07            [24] 3684 	pop	ar7
      0010E0 0F               [12] 3685 	inc	r7
      0010E1 80 EB            [24] 3686 	sjmp	00107$
      0010E3                       3687 00102$:
                                   3688 ;	fat.h:449: UartPrint("\nSTART: ");
      0010E3 90 1F 2A         [24] 3689 	mov	dptr,#___str_4
      0010E6 75 F0 80         [24] 3690 	mov	b,#0x80
      0010E9 12 01 84         [24] 3691 	lcall	_UartPrint
                                   3692 ;	fat.h:450: UartPrintNumber(__global_rootEntry.startCluster);
      0010EC 78 78            [12] 3693 	mov	r0,#(___global_rootEntry + 0x000c)
      0010EE 86 06            [24] 3694 	mov	ar6,@r0
      0010F0 08               [12] 3695 	inc	r0
      0010F1 86 07            [24] 3696 	mov	ar7,@r0
      0010F3 7D 00            [12] 3697 	mov	r5,#0x00
      0010F5 7C 00            [12] 3698 	mov	r4,#0x00
      0010F7 8E 82            [24] 3699 	mov	dpl,r6
      0010F9 8F 83            [24] 3700 	mov	dph,r7
      0010FB 8D F0            [24] 3701 	mov	b,r5
      0010FD EC               [12] 3702 	mov	a,r4
      0010FE 12 02 CA         [24] 3703 	lcall	_UartPrintNumber
                                   3704 ;	fat.h:451: UartPrint("\nSIZE: ");
      001101 90 1F 33         [24] 3705 	mov	dptr,#___str_5
      001104 75 F0 80         [24] 3706 	mov	b,#0x80
      001107 12 01 84         [24] 3707 	lcall	_UartPrint
                                   3708 ;	fat.h:452: UartPrintNumber(__global_rootEntry.size);			
      00110A 78 7A            [12] 3709 	mov	r0,#(___global_rootEntry + 0x000e)
      00110C 86 04            [24] 3710 	mov	ar4,@r0
      00110E 08               [12] 3711 	inc	r0
      00110F 86 05            [24] 3712 	mov	ar5,@r0
      001111 08               [12] 3713 	inc	r0
      001112 86 06            [24] 3714 	mov	ar6,@r0
      001114 08               [12] 3715 	inc	r0
      001115 86 07            [24] 3716 	mov	ar7,@r0
      001117 8C 82            [24] 3717 	mov	dpl,r4
      001119 8D 83            [24] 3718 	mov	dph,r5
      00111B 8E F0            [24] 3719 	mov	b,r6
      00111D EF               [12] 3720 	mov	a,r7
      00111E 12 02 CA         [24] 3721 	lcall	_UartPrintNumber
                                   3722 ;	fat.h:453: UartPrint("\nATTR: 0x");
      001121 90 1F 3B         [24] 3723 	mov	dptr,#___str_6
      001124 75 F0 80         [24] 3724 	mov	b,#0x80
      001127 12 01 84         [24] 3725 	lcall	_UartPrint
                                   3726 ;	fat.h:454: UartWriteNumber(__global_rootEntry.attributes,HEX);			
      00112A 78 77            [12] 3727 	mov	r0,#(___global_rootEntry + 0x000b)
      00112C 86 82            [24] 3728 	mov	dpl,@r0
      00112E E4               [12] 3729 	clr	a
      00112F C0 E0            [24] 3730 	push	acc
      001131 12 01 B6         [24] 3731 	lcall	_UartWriteNumber
      001134 15 81            [12] 3732 	dec	sp
                                   3733 ;	fat.h:455: UartWrite('\n\n');
      001136 75 82 0A         [24] 3734 	mov	dpl,#0x0a
                                   3735 ;	fat.h:456: }
      001139 02 00 FE         [24] 3736 	ljmp	_UartWrite
                                   3737 ;------------------------------------------------------------
                                   3738 ;Allocation info for local variables in function 'FAT16_LOAD_ROOTENTRY'
                                   3739 ;------------------------------------------------------------
                                   3740 ;roote_number              Allocated with name '_FAT16_LOAD_ROOTENTRY_roote_number_65536_150'
                                   3741 ;i                         Allocated to registers r7 
                                   3742 ;i                         Allocated to registers r7 
                                   3743 ;sloc0                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc0_1_0'
                                   3744 ;sloc1                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc1_1_0'
                                   3745 ;temp                      Allocated with name '_FAT16_LOAD_ROOTENTRY_temp_65536_151'
                                   3746 ;sector_of_given_roote     Allocated to registers r2 r3 r4 r5 
                                   3747 ;offset_in_this_sector     Allocated to registers r6 r7 
                                   3748 ;------------------------------------------------------------
                                   3749 ;	fat.h:466: uint8_t FAT16_LOAD_ROOTENTRY(uint16_t roote_number)
                                   3750 ;	-----------------------------------------
                                   3751 ;	 function FAT16_LOAD_ROOTENTRY
                                   3752 ;	-----------------------------------------
      00113C                       3753 _FAT16_LOAD_ROOTENTRY:
      00113C 85 82 23         [24] 3754 	mov	_FAT16_LOAD_ROOTENTRY_roote_number_65536_150,dpl
      00113F 85 83 24         [24] 3755 	mov	(_FAT16_LOAD_ROOTENTRY_roote_number_65536_150 + 1),dph
                                   3756 ;	fat.h:475: if(roote_number < __global_vbr.nroote);//pass
      001142 78 59            [12] 3757 	mov	r0,#(___global_vbr + 0x000d)
      001144 86 04            [24] 3758 	mov	ar4,@r0
      001146 08               [12] 3759 	inc	r0
      001147 86 05            [24] 3760 	mov	ar5,@r0
      001149 C3               [12] 3761 	clr	c
      00114A E5 23            [12] 3762 	mov	a,_FAT16_LOAD_ROOTENTRY_roote_number_65536_150
      00114C 9C               [12] 3763 	subb	a,r4
      00114D E5 24            [12] 3764 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_150 + 1)
      00114F 9D               [12] 3765 	subb	a,r5
      001150 40 04            [24] 3766 	jc	00103$
                                   3767 ;	fat.h:476: else return 1; // error as roote_number is more than number of root entries present in rootentry table 
      001152 75 82 01         [24] 3768 	mov	dpl,#0x01
      001155 22               [24] 3769 	ret
      001156                       3770 00103$:
                                   3771 ;	fat.h:478: VBR_MOUNT_VBR(__global_nthPartitionVBRmounted);
      001156 78 6B            [12] 3772 	mov	r0,#___global_nthPartitionVBRmounted
      001158 86 82            [24] 3773 	mov	dpl,@r0
      00115A 12 0E 50         [24] 3774 	lcall	_VBR_MOUNT_VBR
                                   3775 ;	fat.h:481: sector_of_given_roote = __global_vbr.addr_roote_start + (roote_number*32)/__global_vbr.bps;
      00115D 78 63            [12] 3776 	mov	r0,#(___global_vbr + 0x0017)
      00115F 86 25            [24] 3777 	mov	_FAT16_LOAD_ROOTENTRY_sloc0_1_0,@r0
      001161 08               [12] 3778 	inc	r0
      001162 86 26            [24] 3779 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1),@r0
      001164 08               [12] 3780 	inc	r0
      001165 86 27            [24] 3781 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2),@r0
      001167 08               [12] 3782 	inc	r0
      001168 86 28            [24] 3783 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3),@r0
      00116A AE 23            [24] 3784 	mov	r6,_FAT16_LOAD_ROOTENTRY_roote_number_65536_150
      00116C E5 24            [12] 3785 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_150 + 1)
      00116E C4               [12] 3786 	swap	a
      00116F 23               [12] 3787 	rl	a
      001170 54 E0            [12] 3788 	anl	a,#0xe0
      001172 CE               [12] 3789 	xch	a,r6
      001173 C4               [12] 3790 	swap	a
      001174 23               [12] 3791 	rl	a
      001175 CE               [12] 3792 	xch	a,r6
      001176 6E               [12] 3793 	xrl	a,r6
      001177 CE               [12] 3794 	xch	a,r6
      001178 54 E0            [12] 3795 	anl	a,#0xe0
      00117A CE               [12] 3796 	xch	a,r6
      00117B 6E               [12] 3797 	xrl	a,r6
      00117C FF               [12] 3798 	mov	r7,a
      00117D 78 52            [12] 3799 	mov	r0,#(___global_vbr + 0x0006)
      00117F 86 29            [24] 3800 	mov	_FAT16_LOAD_ROOTENTRY_sloc1_1_0,@r0
      001181 08               [12] 3801 	inc	r0
      001182 86 2A            [24] 3802 	mov	(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1),@r0
      001184 85 29 3F         [24] 3803 	mov	__divuint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      001187 85 2A 40         [24] 3804 	mov	(__divuint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      00118A 8E 82            [24] 3805 	mov	dpl,r6
      00118C 8F 83            [24] 3806 	mov	dph,r7
      00118E C0 07            [24] 3807 	push	ar7
      001190 C0 06            [24] 3808 	push	ar6
      001192 12 1C 19         [24] 3809 	lcall	__divuint
      001195 AA 82            [24] 3810 	mov	r2,dpl
      001197 AB 83            [24] 3811 	mov	r3,dph
      001199 D0 06            [24] 3812 	pop	ar6
      00119B D0 07            [24] 3813 	pop	ar7
      00119D E4               [12] 3814 	clr	a
      00119E FC               [12] 3815 	mov	r4,a
      00119F FD               [12] 3816 	mov	r5,a
      0011A0 EA               [12] 3817 	mov	a,r2
      0011A1 25 25            [12] 3818 	add	a,_FAT16_LOAD_ROOTENTRY_sloc0_1_0
      0011A3 FA               [12] 3819 	mov	r2,a
      0011A4 EB               [12] 3820 	mov	a,r3
      0011A5 35 26            [12] 3821 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1)
      0011A7 FB               [12] 3822 	mov	r3,a
      0011A8 EC               [12] 3823 	mov	a,r4
      0011A9 35 27            [12] 3824 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2)
      0011AB FC               [12] 3825 	mov	r4,a
      0011AC ED               [12] 3826 	mov	a,r5
      0011AD 35 28            [12] 3827 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3)
      0011AF FD               [12] 3828 	mov	r5,a
                                   3829 ;	fat.h:482: offset_in_this_sector = (roote_number*32)%__global_vbr.bps;
      0011B0 85 29 3F         [24] 3830 	mov	__moduint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      0011B3 85 2A 40         [24] 3831 	mov	(__moduint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      0011B6 8E 82            [24] 3832 	mov	dpl,r6
      0011B8 8F 83            [24] 3833 	mov	dph,r7
      0011BA C0 05            [24] 3834 	push	ar5
      0011BC C0 04            [24] 3835 	push	ar4
      0011BE C0 03            [24] 3836 	push	ar3
      0011C0 C0 02            [24] 3837 	push	ar2
      0011C2 12 1D 62         [24] 3838 	lcall	__moduint
      0011C5 AE 82            [24] 3839 	mov	r6,dpl
      0011C7 AF 83            [24] 3840 	mov	r7,dph
      0011C9 D0 02            [24] 3841 	pop	ar2
      0011CB D0 03            [24] 3842 	pop	ar3
      0011CD D0 04            [24] 3843 	pop	ar4
      0011CF D0 05            [24] 3844 	pop	ar5
                                   3845 ;	fat.h:484: SDread(sector_of_given_roote,offset_in_this_sector,32,temp);
      0011D1 74 A4            [12] 3846 	mov	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_151
      0011D3 C0 E0            [24] 3847 	push	acc
      0011D5 74 00            [12] 3848 	mov	a,#(_FAT16_LOAD_ROOTENTRY_temp_65536_151 >> 8)
      0011D7 C0 E0            [24] 3849 	push	acc
      0011D9 74 40            [12] 3850 	mov	a,#0x40
      0011DB C0 E0            [24] 3851 	push	acc
      0011DD 03               [12] 3852 	rr	a
      0011DE C0 E0            [24] 3853 	push	acc
      0011E0 E4               [12] 3854 	clr	a
      0011E1 C0 E0            [24] 3855 	push	acc
      0011E3 C0 06            [24] 3856 	push	ar6
      0011E5 C0 07            [24] 3857 	push	ar7
      0011E7 8A 82            [24] 3858 	mov	dpl,r2
      0011E9 8B 83            [24] 3859 	mov	dph,r3
      0011EB 8C F0            [24] 3860 	mov	b,r4
      0011ED ED               [12] 3861 	mov	a,r5
      0011EE 12 07 47         [24] 3862 	lcall	_SDread
      0011F1 E5 81            [12] 3863 	mov	a,sp
      0011F3 24 F9            [12] 3864 	add	a,#0xf9
      0011F5 F5 81            [12] 3865 	mov	sp,a
                                   3866 ;	fat.h:486: __global_rootEntry.entry_index = roote_number; //save the index of the root_entry
      0011F7 78 7E            [12] 3867 	mov	r0,#(___global_rootEntry + 0x0012)
      0011F9 A6 23            [24] 3868 	mov	@r0,_FAT16_LOAD_ROOTENTRY_roote_number_65536_150
      0011FB 08               [12] 3869 	inc	r0
      0011FC A6 24            [24] 3870 	mov	@r0,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_150 + 1)
                                   3871 ;	fat.h:487: __global_rootEntry.bytes_read = 0; //no bytes has been read so far by FAT16_FILE_READ as we have just loaded the rootentry
      0011FE 78 80            [12] 3872 	mov	r0,#(___global_rootEntry + 0x0014)
      001200 76 00            [12] 3873 	mov	@r0,#0x00
      001202 08               [12] 3874 	inc	r0
      001203 76 00            [12] 3875 	mov	@r0,#0x00
      001205 08               [12] 3876 	inc	r0
      001206 76 00            [12] 3877 	mov	@r0,#0x00
      001208 08               [12] 3878 	inc	r0
      001209 76 00            [12] 3879 	mov	@r0,#0x00
                                   3880 ;	fat.h:489: for(uint8_t i=0;i<8;i++) __global_rootEntry.name[i] = temp[i];
      00120B 7F 00            [12] 3881 	mov	r7,#0x00
      00120D                       3882 00107$:
      00120D BF 08 00         [24] 3883 	cjne	r7,#0x08,00137$
      001210                       3884 00137$:
      001210 50 0F            [24] 3885 	jnc	00104$
      001212 EF               [12] 3886 	mov	a,r7
      001213 24 6C            [12] 3887 	add	a,#___global_rootEntry
      001215 F9               [12] 3888 	mov	r1,a
      001216 EF               [12] 3889 	mov	a,r7
      001217 24 A4            [12] 3890 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_151
      001219 F8               [12] 3891 	mov	r0,a
      00121A 86 06            [24] 3892 	mov	ar6,@r0
      00121C A7 06            [24] 3893 	mov	@r1,ar6
      00121E 0F               [12] 3894 	inc	r7
      00121F 80 EC            [24] 3895 	sjmp	00107$
      001221                       3896 00104$:
                                   3897 ;	fat.h:490: for(uint8_t i=8;i<11;i++) __global_rootEntry.extension[i-8] = temp[i];
      001221 7F 08            [12] 3898 	mov	r7,#0x08
      001223                       3899 00110$:
      001223 BF 0B 00         [24] 3900 	cjne	r7,#0x0b,00139$
      001226                       3901 00139$:
      001226 50 13            [24] 3902 	jnc	00105$
      001228 8F 06            [24] 3903 	mov	ar6,r7
      00122A EE               [12] 3904 	mov	a,r6
      00122B 24 F8            [12] 3905 	add	a,#0xf8
      00122D 24 74            [12] 3906 	add	a,#(___global_rootEntry + 0x0008)
      00122F F9               [12] 3907 	mov	r1,a
      001230 EF               [12] 3908 	mov	a,r7
      001231 24 A4            [12] 3909 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_151
      001233 F8               [12] 3910 	mov	r0,a
      001234 86 06            [24] 3911 	mov	ar6,@r0
      001236 A7 06            [24] 3912 	mov	@r1,ar6
      001238 0F               [12] 3913 	inc	r7
      001239 80 E8            [24] 3914 	sjmp	00110$
      00123B                       3915 00105$:
                                   3916 ;	fat.h:492: __global_rootEntry.attributes = temp[0x0b];
      00123B 78 AF            [12] 3917 	mov	r0,#(_FAT16_LOAD_ROOTENTRY_temp_65536_151 + 0x000b)
      00123D 86 07            [24] 3918 	mov	ar7,@r0
      00123F 78 77            [12] 3919 	mov	r0,#(___global_rootEntry + 0x000b)
      001241 A6 07            [24] 3920 	mov	@r0,ar7
                                   3921 ;	fat.h:493: __global_rootEntry.startCluster = HELPER_load_littleendian16(&temp[0x1a]);
      001243 90 00 BE         [24] 3922 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_151 + 0x001a)
      001246 75 F0 40         [24] 3923 	mov	b,#0x40
      001249 12 08 8D         [24] 3924 	lcall	_HELPER_load_littleendian16
      00124C E5 82            [12] 3925 	mov	a,dpl
      00124E 85 83 F0         [24] 3926 	mov	b,dph
      001251 78 78            [12] 3927 	mov	r0,#(___global_rootEntry + 0x000c)
      001253 F6               [12] 3928 	mov	@r0,a
      001254 08               [12] 3929 	inc	r0
      001255 A6 F0            [24] 3930 	mov	@r0,b
                                   3931 ;	fat.h:494: __global_rootEntry.size = HELPER_load_littleendian32(&temp[0x1c]);
      001257 90 00 C0         [24] 3932 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_151 + 0x001c)
      00125A 75 F0 40         [24] 3933 	mov	b,#0x40
      00125D 12 08 BB         [24] 3934 	lcall	_HELPER_load_littleendian32
      001260 AC 82            [24] 3935 	mov	r4,dpl
      001262 AD 83            [24] 3936 	mov	r5,dph
      001264 AE F0            [24] 3937 	mov	r6,b
      001266 FF               [12] 3938 	mov	r7,a
      001267 78 7A            [12] 3939 	mov	r0,#(___global_rootEntry + 0x000e)
      001269 A6 04            [24] 3940 	mov	@r0,ar4
      00126B 08               [12] 3941 	inc	r0
      00126C A6 05            [24] 3942 	mov	@r0,ar5
      00126E 08               [12] 3943 	inc	r0
      00126F A6 06            [24] 3944 	mov	@r0,ar6
      001271 08               [12] 3945 	inc	r0
      001272 A6 07            [24] 3946 	mov	@r0,ar7
                                   3947 ;	fat.h:496: return 0;
      001274 75 82 00         [24] 3948 	mov	dpl,#0x00
                                   3949 ;	fat.h:497: }
      001277 22               [24] 3950 	ret
                                   3951 ;------------------------------------------------------------
                                   3952 ;Allocation info for local variables in function 'FAT16_IS_ROOTENTRY_VALID_FILE'
                                   3953 ;------------------------------------------------------------
                                   3954 ;	fat.h:498: uint8_t FAT16_IS_ROOTENTRY_VALID_FILE()
                                   3955 ;	-----------------------------------------
                                   3956 ;	 function FAT16_IS_ROOTENTRY_VALID_FILE
                                   3957 ;	-----------------------------------------
      001278                       3958 _FAT16_IS_ROOTENTRY_VALID_FILE:
                                   3959 ;	fat.h:501: if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_AVAILABLE)
      001278 78 6C            [12] 3960 	mov	r0,#___global_rootEntry
      00127A E6               [12] 3961 	mov	a,@r0
      00127B FF               [12] 3962 	mov	r7,a
      00127C 70 04            [24] 3963 	jnz	00112$
                                   3964 ;	fat.h:506: return 255; //no more entries, stop scanning
      00127E 75 82 FF         [24] 3965 	mov	dpl,#0xff
      001281 22               [24] 3966 	ret
      001282                       3967 00112$:
                                   3968 ;	fat.h:508: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DELETED)
      001282 BF E5 04         [24] 3969 	cjne	r7,#0xe5,00109$
                                   3970 ;	fat.h:514: return FAT16_ROOTENTRY_DELETED; //deleted and available
      001285 75 82 E5         [24] 3971 	mov	dpl,#0xe5
      001288 22               [24] 3972 	ret
      001289                       3973 00109$:
                                   3974 ;	fat.h:516: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DOT)
      001289 BF 2E 04         [24] 3975 	cjne	r7,#0x2e,00106$
                                   3976 ;	fat.h:521: return FAT16_ROOTENTRY_DOT; //this is the entry to self
      00128C 75 82 2E         [24] 3977 	mov	dpl,#0x2e
      00128F 22               [24] 3978 	ret
      001290                       3979 00106$:
                                   3980 ;	fat.h:526: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_HIDDEN ||
      001290 90 00 6C         [24] 3981 	mov	dptr,#___global_rootEntry
      001293 75 F0 40         [24] 3982 	mov	b,#0x40
      001296 12 0A 16         [24] 3983 	lcall	_HELPER_rootentry_type
      001299 AF 82            [24] 3984 	mov	r7,dpl
      00129B BF 01 02         [24] 3985 	cjne	r7,#0x01,00141$
      00129E 80 1E            [24] 3986 	sjmp	00101$
      0012A0                       3987 00141$:
                                   3988 ;	fat.h:527: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_SYSTEM ||
      0012A0 90 00 6C         [24] 3989 	mov	dptr,#___global_rootEntry
      0012A3 75 F0 40         [24] 3990 	mov	b,#0x40
      0012A6 12 0A 16         [24] 3991 	lcall	_HELPER_rootentry_type
      0012A9 AF 82            [24] 3992 	mov	r7,dpl
      0012AB BF 02 02         [24] 3993 	cjne	r7,#0x02,00142$
      0012AE 80 0E            [24] 3994 	sjmp	00101$
      0012B0                       3995 00142$:
                                   3996 ;	fat.h:528: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_VOLUME
      0012B0 90 00 6C         [24] 3997 	mov	dptr,#___global_rootEntry
      0012B3 75 F0 40         [24] 3998 	mov	b,#0x40
      0012B6 12 0A 16         [24] 3999 	lcall	_HELPER_rootentry_type
      0012B9 AF 82            [24] 4000 	mov	r7,dpl
      0012BB BF 03 04         [24] 4001 	cjne	r7,#0x03,00110$
      0012BE                       4002 00101$:
                                   4003 ;	fat.h:535: return 254;
      0012BE 75 82 FE         [24] 4004 	mov	dpl,#0xfe
      0012C1 22               [24] 4005 	ret
      0012C2                       4006 00110$:
                                   4007 ;	fat.h:538: return 0;
      0012C2 75 82 00         [24] 4008 	mov	dpl,#0x00
                                   4009 ;	fat.h:539: }
      0012C5 22               [24] 4010 	ret
                                   4011 ;------------------------------------------------------------
                                   4012 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_READ'
                                   4013 ;------------------------------------------------------------
                                   4014 ;roote_index               Allocated to registers r6 r7 
                                   4015 ;file_validity             Allocated to registers r7 
                                   4016 ;------------------------------------------------------------
                                   4017 ;	fat.h:542: uint8_t FAT16_ROOTENTRY_READ(uint16_t roote_index)
                                   4018 ;	-----------------------------------------
                                   4019 ;	 function FAT16_ROOTENTRY_READ
                                   4020 ;	-----------------------------------------
      0012C6                       4021 _FAT16_ROOTENTRY_READ:
                                   4022 ;	fat.h:552: if(FAT16_LOAD_ROOTENTRY(roote_index)) // if returns 1, then we have reached the end of the rootentry table
      0012C6 12 11 3C         [24] 4023 	lcall	_FAT16_LOAD_ROOTENTRY
      0012C9 E5 82            [12] 4024 	mov	a,dpl
      0012CB 60 04            [24] 4025 	jz	00102$
                                   4026 ;	fat.h:554: return 0xff; //end of scan
      0012CD 75 82 FF         [24] 4027 	mov	dpl,#0xff
      0012D0 22               [24] 4028 	ret
      0012D1                       4029 00102$:
                                   4030 ;	fat.h:558: file_validity=FAT16_IS_ROOTENTRY_VALID_FILE(); //check validity
      0012D1 12 12 78         [24] 4031 	lcall	_FAT16_IS_ROOTENTRY_VALID_FILE
      0012D4 AF 82            [24] 4032 	mov	r7,dpl
                                   4033 ;	fat.h:560: if(file_validity==255)return 0xff; //end of scan
      0012D6 BF FF 04         [24] 4034 	cjne	r7,#0xff,00106$
      0012D9 75 82 FF         [24] 4035 	mov	dpl,#0xff
      0012DC 22               [24] 4036 	ret
      0012DD                       4037 00106$:
                                   4038 ;	fat.h:561: else if(file_validity==0)
      0012DD EF               [12] 4039 	mov	a,r7
                                   4040 ;	fat.h:567: return 0;
      0012DE 70 03            [24] 4041 	jnz	00107$
      0012E0 F5 82            [12] 4042 	mov	dpl,a
      0012E2 22               [24] 4043 	ret
      0012E3                       4044 00107$:
                                   4045 ;	fat.h:570: return 1; //invalid file if context reaches here
      0012E3 75 82 01         [24] 4046 	mov	dpl,#0x01
                                   4047 ;	fat.h:573: }
      0012E6 22               [24] 4048 	ret
                                   4049 ;------------------------------------------------------------
                                   4050 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN_RESET'
                                   4051 ;------------------------------------------------------------
                                   4052 ;	fat.h:575: void FAT16_ROOTENTRY_SCAN_RESET()
                                   4053 ;	-----------------------------------------
                                   4054 ;	 function FAT16_ROOTENTRY_SCAN_RESET
                                   4055 ;	-----------------------------------------
      0012E7                       4056 _FAT16_ROOTENTRY_SCAN_RESET:
                                   4057 ;	fat.h:577: __global_rootEntry.entry_index=0xffff; // in FAT16, maximum number of root entries can never reach 0xffff.
      0012E7 78 7E            [12] 4058 	mov	r0,#(___global_rootEntry + 0x0012)
      0012E9 76 FF            [12] 4059 	mov	@r0,#0xff
      0012EB 08               [12] 4060 	inc	r0
      0012EC 76 FF            [12] 4061 	mov	@r0,#0xff
                                   4062 ;	fat.h:583: __global_rootEntry.attributes |= 1<<FILETYPE_SYSTEM;
      0012EE 78 77            [12] 4063 	mov	r0,#(___global_rootEntry + 0x000b)
      0012F0 86 07            [24] 4064 	mov	ar7,@r0
      0012F2 74 04            [12] 4065 	mov	a,#0x04
      0012F4 4F               [12] 4066 	orl	a,r7
      0012F5 78 77            [12] 4067 	mov	r0,#(___global_rootEntry + 0x000b)
      0012F7 F6               [12] 4068 	mov	@r0,a
                                   4069 ;	fat.h:584: }
      0012F8 22               [24] 4070 	ret
                                   4071 ;------------------------------------------------------------
                                   4072 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN'
                                   4073 ;------------------------------------------------------------
                                   4074 ;validity                  Allocated to registers r7 
                                   4075 ;------------------------------------------------------------
                                   4076 ;	fat.h:586: uint8_t FAT16_ROOTENTRY_SCAN() __reentrant
                                   4077 ;	-----------------------------------------
                                   4078 ;	 function FAT16_ROOTENTRY_SCAN
                                   4079 ;	-----------------------------------------
      0012F9                       4080 _FAT16_ROOTENTRY_SCAN:
                                   4081 ;	fat.h:591: while(1)
      0012F9                       4082 00110$:
                                   4083 ;	fat.h:599: validity=FAT16_ROOTENTRY_READ(__global_rootEntry.entry_index+1); //read the next entry
      0012F9 78 7E            [12] 4084 	mov	r0,#(___global_rootEntry + 0x0012)
      0012FB 86 06            [24] 4085 	mov	ar6,@r0
      0012FD 08               [12] 4086 	inc	r0
      0012FE 86 07            [24] 4087 	mov	ar7,@r0
      001300 8E 82            [24] 4088 	mov	dpl,r6
      001302 8F 83            [24] 4089 	mov	dph,r7
      001304 A3               [24] 4090 	inc	dptr
      001305 12 12 C6         [24] 4091 	lcall	_FAT16_ROOTENTRY_READ
      001308 AF 82            [24] 4092 	mov	r7,dpl
                                   4093 ;	fat.h:601: if ( validity == 255 )
      00130A BF FF 04         [24] 4094 	cjne	r7,#0xff,00107$
                                   4095 ;	fat.h:607: return 255; //end scan
      00130D 75 82 FF         [24] 4096 	mov	dpl,#0xff
      001310 22               [24] 4097 	ret
      001311                       4098 00107$:
                                   4099 ;	fat.h:609: else if (validity == 1) 
      001311 BF 01 02         [24] 4100 	cjne	r7,#0x01,00132$
      001314 80 E3            [24] 4101 	sjmp	00110$
      001316                       4102 00132$:
                                   4103 ;	fat.h:617: else if(validity == 0)
      001316 EF               [12] 4104 	mov	a,r7
                                   4105 ;	fat.h:624: return 0; // found a valid file,break out of the loop
      001317 70 E0            [24] 4106 	jnz	00110$
      001319 F5 82            [12] 4107 	mov	dpl,a
                                   4108 ;	fat.h:631: }
      00131B 22               [24] 4109 	ret
                                   4110 ;------------------------------------------------------------
                                   4111 ;Allocation info for local variables in function 'FAT16_FILE_OPEN'
                                   4112 ;------------------------------------------------------------
                                   4113 ;filename                  Allocated to registers r5 r6 r7 
                                   4114 ;filename83                Allocated to stack - _bp +1
                                   4115 ;------------------------------------------------------------
                                   4116 ;	fat.h:633: uint8_t FAT16_FILE_OPEN(char *filename) __reentrant
                                   4117 ;	-----------------------------------------
                                   4118 ;	 function FAT16_FILE_OPEN
                                   4119 ;	-----------------------------------------
      00131C                       4120 _FAT16_FILE_OPEN:
      00131C C0 3E            [24] 4121 	push	_bp
      00131E E5 81            [12] 4122 	mov	a,sp
      001320 F5 3E            [12] 4123 	mov	_bp,a
      001322 24 0C            [12] 4124 	add	a,#0x0c
      001324 F5 81            [12] 4125 	mov	sp,a
      001326 AD 82            [24] 4126 	mov	r5,dpl
      001328 AE 83            [24] 4127 	mov	r6,dph
      00132A AF F0            [24] 4128 	mov	r7,b
                                   4129 ;	fat.h:639: if(HELPER_filename_to_8dot3filename(filename,filename83)) 
      00132C AC 3E            [24] 4130 	mov	r4,_bp
      00132E 0C               [12] 4131 	inc	r4
      00132F 8C 18            [24] 4132 	mov	_HELPER_filename_to_8dot3filename_PARM_2,r4
      001331 75 19 00         [24] 4133 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 1),#0x00
      001334 75 1A 40         [24] 4134 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 2),#0x40
      001337 8D 82            [24] 4135 	mov	dpl,r5
      001339 8E 83            [24] 4136 	mov	dph,r6
      00133B 8F F0            [24] 4137 	mov	b,r7
      00133D C0 04            [24] 4138 	push	ar4
      00133F 12 0A CF         [24] 4139 	lcall	_HELPER_filename_to_8dot3filename
      001342 E5 82            [12] 4140 	mov	a,dpl
      001344 D0 04            [24] 4141 	pop	ar4
      001346 60 05            [24] 4142 	jz	00102$
                                   4143 ;	fat.h:644: return 1; //invalid filename
      001348 75 82 01         [24] 4144 	mov	dpl,#0x01
      00134B 80 61            [24] 4145 	sjmp	00109$
      00134D                       4146 00102$:
                                   4147 ;	fat.h:647: FAT16_ROOTENTRY_SCAN_RESET();
      00134D C0 04            [24] 4148 	push	ar4
      00134F 12 12 E7         [24] 4149 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
      001352 D0 04            [24] 4150 	pop	ar4
                                   4151 ;	fat.h:648: while(FAT16_ROOTENTRY_SCAN()==0)
      001354 8C 07            [24] 4152 	mov	ar7,r4
      001356 74 08            [12] 4153 	mov	a,#0x08
      001358 2C               [12] 4154 	add	a,r4
      001359 FE               [12] 4155 	mov	r6,a
      00135A                       4156 00106$:
      00135A C0 07            [24] 4157 	push	ar7
      00135C C0 06            [24] 4158 	push	ar6
      00135E 12 12 F9         [24] 4159 	lcall	_FAT16_ROOTENTRY_SCAN
      001361 E5 82            [12] 4160 	mov	a,dpl
      001363 D0 06            [24] 4161 	pop	ar6
      001365 D0 07            [24] 4162 	pop	ar7
                                   4163 ;	fat.h:650: if( HELPER_strncmp(__global_rootEntry.name,filename83,8)==0 && 
      001367 70 42            [24] 4164 	jnz	00108$
      001369 8F 3F            [24] 4165 	mov	_HELPER_strncmp_PARM_2,r7
      00136B F5 40            [12] 4166 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      00136D 75 41 40         [24] 4167 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      001370 75 42 08         [24] 4168 	mov	_HELPER_strncmp_PARM_3,#0x08
      001373 90 00 6C         [24] 4169 	mov	dptr,#___global_rootEntry
      001376 75 F0 40         [24] 4170 	mov	b,#0x40
      001379 C0 07            [24] 4171 	push	ar7
      00137B C0 06            [24] 4172 	push	ar6
      00137D 12 09 9F         [24] 4173 	lcall	_HELPER_strncmp
      001380 E5 82            [12] 4174 	mov	a,dpl
      001382 D0 06            [24] 4175 	pop	ar6
      001384 D0 07            [24] 4176 	pop	ar7
                                   4177 ;	fat.h:651: HELPER_strncmp(__global_rootEntry.extension,&filename83[8],3)==0 )
      001386 70 D2            [24] 4178 	jnz	00106$
      001388 8E 3F            [24] 4179 	mov	_HELPER_strncmp_PARM_2,r6
      00138A F5 40            [12] 4180 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      00138C 75 41 40         [24] 4181 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      00138F 75 42 03         [24] 4182 	mov	_HELPER_strncmp_PARM_3,#0x03
      001392 90 00 74         [24] 4183 	mov	dptr,#(___global_rootEntry + 0x0008)
      001395 75 F0 40         [24] 4184 	mov	b,#0x40
      001398 C0 07            [24] 4185 	push	ar7
      00139A C0 06            [24] 4186 	push	ar6
      00139C 12 09 9F         [24] 4187 	lcall	_HELPER_strncmp
      00139F E5 82            [12] 4188 	mov	a,dpl
      0013A1 D0 06            [24] 4189 	pop	ar6
      0013A3 D0 07            [24] 4190 	pop	ar7
                                   4191 ;	fat.h:657: return 0; //file found
      0013A5 70 B3            [24] 4192 	jnz	00106$
      0013A7 F5 82            [12] 4193 	mov	dpl,a
      0013A9 80 03            [24] 4194 	sjmp	00109$
      0013AB                       4195 00108$:
                                   4196 ;	fat.h:664: return 2; // file not found
      0013AB 75 82 02         [24] 4197 	mov	dpl,#0x02
      0013AE                       4198 00109$:
                                   4199 ;	fat.h:666: }
      0013AE 85 3E 81         [24] 4200 	mov	sp,_bp
      0013B1 D0 3E            [24] 4201 	pop	_bp
      0013B3 22               [24] 4202 	ret
                                   4203 ;------------------------------------------------------------
                                   4204 ;Allocation info for local variables in function 'FAT16_GET_NEXT_CLUSTER'
                                   4205 ;------------------------------------------------------------
                                   4206 ;current_cluster           Allocated to registers r6 r7 
                                   4207 ;temp                      Allocated to stack - _bp +8
                                   4208 ;sloc0                     Allocated to stack - _bp +1
                                   4209 ;sloc1                     Allocated to stack - _bp +8
                                   4210 ;sloc2                     Allocated to stack - _bp +10
                                   4211 ;sloc3                     Allocated to stack - _bp +4
                                   4212 ;------------------------------------------------------------
                                   4213 ;	fat.h:669: uint16_t FAT16_GET_NEXT_CLUSTER(uint16_t current_cluster) __reentrant
                                   4214 ;	-----------------------------------------
                                   4215 ;	 function FAT16_GET_NEXT_CLUSTER
                                   4216 ;	-----------------------------------------
      0013B4                       4217 _FAT16_GET_NEXT_CLUSTER:
      0013B4 C0 3E            [24] 4218 	push	_bp
      0013B6 E5 81            [12] 4219 	mov	a,sp
      0013B8 F5 3E            [12] 4220 	mov	_bp,a
      0013BA 24 09            [12] 4221 	add	a,#0x09
      0013BC F5 81            [12] 4222 	mov	sp,a
      0013BE AE 82            [24] 4223 	mov	r6,dpl
      0013C0 AF 83            [24] 4224 	mov	r7,dph
                                   4225 ;	fat.h:678: SDread(__global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps, (current_cluster*2) % __global_vbr.bps, 2, temp);
      0013C2 E5 3E            [12] 4226 	mov	a,_bp
      0013C4 24 08            [12] 4227 	add	a,#0x08
      0013C6 F9               [12] 4228 	mov	r1,a
      0013C7 A8 3E            [24] 4229 	mov	r0,_bp
      0013C9 08               [12] 4230 	inc	r0
      0013CA A6 01            [24] 4231 	mov	@r0,ar1
      0013CC 08               [12] 4232 	inc	r0
      0013CD 76 00            [12] 4233 	mov	@r0,#0x00
      0013CF 08               [12] 4234 	inc	r0
      0013D0 76 40            [12] 4235 	mov	@r0,#0x40
      0013D2 EE               [12] 4236 	mov	a,r6
      0013D3 2E               [12] 4237 	add	a,r6
      0013D4 FE               [12] 4238 	mov	r6,a
      0013D5 EF               [12] 4239 	mov	a,r7
      0013D6 33               [12] 4240 	rlc	a
      0013D7 FF               [12] 4241 	mov	r7,a
      0013D8 78 52            [12] 4242 	mov	r0,#(___global_vbr + 0x0006)
      0013DA 86 05            [24] 4243 	mov	ar5,@r0
      0013DC 08               [12] 4244 	inc	r0
      0013DD 86 04            [24] 4245 	mov	ar4,@r0
      0013DF 8D 3F            [24] 4246 	mov	__moduint_PARM_2,r5
      0013E1 8C 40            [24] 4247 	mov	(__moduint_PARM_2 + 1),r4
      0013E3 8E 82            [24] 4248 	mov	dpl,r6
      0013E5 8F 83            [24] 4249 	mov	dph,r7
      0013E7 C0 07            [24] 4250 	push	ar7
      0013E9 C0 06            [24] 4251 	push	ar6
      0013EB C0 05            [24] 4252 	push	ar5
      0013ED C0 04            [24] 4253 	push	ar4
      0013EF C0 01            [24] 4254 	push	ar1
      0013F1 12 1D 62         [24] 4255 	lcall	__moduint
      0013F4 AB 82            [24] 4256 	mov	r3,dpl
      0013F6 AA 83            [24] 4257 	mov	r2,dph
      0013F8 D0 01            [24] 4258 	pop	ar1
      0013FA D0 04            [24] 4259 	pop	ar4
      0013FC D0 05            [24] 4260 	pop	ar5
      0013FE D0 06            [24] 4261 	pop	ar6
      001400 D0 07            [24] 4262 	pop	ar7
      001402 E5 3E            [12] 4263 	mov	a,_bp
      001404 24 04            [12] 4264 	add	a,#0x04
      001406 F8               [12] 4265 	mov	r0,a
      001407 C0 01            [24] 4266 	push	ar1
      001409 79 5F            [12] 4267 	mov	r1,#(___global_vbr + 0x0013)
      00140B E7               [12] 4268 	mov	a,@r1
      00140C F6               [12] 4269 	mov	@r0,a
      00140D 09               [12] 4270 	inc	r1
      00140E E7               [12] 4271 	mov	a,@r1
      00140F 08               [12] 4272 	inc	r0
      001410 F6               [12] 4273 	mov	@r0,a
      001411 09               [12] 4274 	inc	r1
      001412 E7               [12] 4275 	mov	a,@r1
      001413 08               [12] 4276 	inc	r0
      001414 F6               [12] 4277 	mov	@r0,a
      001415 09               [12] 4278 	inc	r1
      001416 E7               [12] 4279 	mov	a,@r1
      001417 08               [12] 4280 	inc	r0
      001418 F6               [12] 4281 	mov	@r0,a
      001419 D0 01            [24] 4282 	pop	ar1
      00141B 8D 3F            [24] 4283 	mov	__divuint_PARM_2,r5
      00141D 8C 40            [24] 4284 	mov	(__divuint_PARM_2 + 1),r4
      00141F 8E 82            [24] 4285 	mov	dpl,r6
      001421 8F 83            [24] 4286 	mov	dph,r7
      001423 C0 03            [24] 4287 	push	ar3
      001425 C0 02            [24] 4288 	push	ar2
      001427 C0 01            [24] 4289 	push	ar1
      001429 12 1C 19         [24] 4290 	lcall	__divuint
      00142C AE 82            [24] 4291 	mov	r6,dpl
      00142E AF 83            [24] 4292 	mov	r7,dph
      001430 D0 01            [24] 4293 	pop	ar1
      001432 D0 02            [24] 4294 	pop	ar2
      001434 D0 03            [24] 4295 	pop	ar3
      001436 8E 04            [24] 4296 	mov	ar4,r6
      001438 8F 05            [24] 4297 	mov	ar5,r7
      00143A E4               [12] 4298 	clr	a
      00143B FE               [12] 4299 	mov	r6,a
      00143C FF               [12] 4300 	mov	r7,a
      00143D E5 3E            [12] 4301 	mov	a,_bp
      00143F 24 04            [12] 4302 	add	a,#0x04
      001441 F8               [12] 4303 	mov	r0,a
      001442 EC               [12] 4304 	mov	a,r4
      001443 26               [12] 4305 	add	a,@r0
      001444 FC               [12] 4306 	mov	r4,a
      001445 ED               [12] 4307 	mov	a,r5
      001446 08               [12] 4308 	inc	r0
      001447 36               [12] 4309 	addc	a,@r0
      001448 FD               [12] 4310 	mov	r5,a
      001449 EE               [12] 4311 	mov	a,r6
      00144A 08               [12] 4312 	inc	r0
      00144B 36               [12] 4313 	addc	a,@r0
      00144C FE               [12] 4314 	mov	r6,a
      00144D EF               [12] 4315 	mov	a,r7
      00144E 08               [12] 4316 	inc	r0
      00144F 36               [12] 4317 	addc	a,@r0
      001450 FF               [12] 4318 	mov	r7,a
      001451 C0 01            [24] 4319 	push	ar1
      001453 A8 3E            [24] 4320 	mov	r0,_bp
      001455 08               [12] 4321 	inc	r0
      001456 E6               [12] 4322 	mov	a,@r0
      001457 C0 E0            [24] 4323 	push	acc
      001459 08               [12] 4324 	inc	r0
      00145A E6               [12] 4325 	mov	a,@r0
      00145B C0 E0            [24] 4326 	push	acc
      00145D 08               [12] 4327 	inc	r0
      00145E E6               [12] 4328 	mov	a,@r0
      00145F C0 E0            [24] 4329 	push	acc
      001461 74 02            [12] 4330 	mov	a,#0x02
      001463 C0 E0            [24] 4331 	push	acc
      001465 E4               [12] 4332 	clr	a
      001466 C0 E0            [24] 4333 	push	acc
      001468 C0 03            [24] 4334 	push	ar3
      00146A C0 02            [24] 4335 	push	ar2
      00146C 8C 82            [24] 4336 	mov	dpl,r4
      00146E 8D 83            [24] 4337 	mov	dph,r5
      001470 8E F0            [24] 4338 	mov	b,r6
      001472 EF               [12] 4339 	mov	a,r7
      001473 12 07 47         [24] 4340 	lcall	_SDread
      001476 E5 81            [12] 4341 	mov	a,sp
      001478 24 F9            [12] 4342 	add	a,#0xf9
      00147A F5 81            [12] 4343 	mov	sp,a
      00147C D0 01            [24] 4344 	pop	ar1
                                   4345 ;	fat.h:679: return (uint16_t)temp[1] << 8 | temp[0]; 
      00147E E9               [12] 4346 	mov	a,r1
      00147F 04               [12] 4347 	inc	a
      001480 F8               [12] 4348 	mov	r0,a
      001481 86 07            [24] 4349 	mov	ar7,@r0
      001483 8F 06            [24] 4350 	mov	ar6,r7
      001485 7F 00            [12] 4351 	mov	r7,#0x00
      001487 87 05            [24] 4352 	mov	ar5,@r1
      001489 7C 00            [12] 4353 	mov	r4,#0x00
      00148B ED               [12] 4354 	mov	a,r5
      00148C 4F               [12] 4355 	orl	a,r7
      00148D F5 82            [12] 4356 	mov	dpl,a
      00148F EC               [12] 4357 	mov	a,r4
      001490 4E               [12] 4358 	orl	a,r6
      001491 F5 83            [12] 4359 	mov	dph,a
                                   4360 ;	fat.h:685: }
      001493 85 3E 81         [24] 4361 	mov	sp,_bp
      001496 D0 3E            [24] 4362 	pop	_bp
      001498 22               [24] 4363 	ret
                                   4364 ;------------------------------------------------------------
                                   4365 ;Allocation info for local variables in function 'FAT16_FILE_READ'
                                   4366 ;------------------------------------------------------------
                                   4367 ;dst                       Allocated to stack - _bp -5
                                   4368 ;nbytes                    Allocated to stack - _bp +1
                                   4369 ;current_cluster           Allocated to registers r7 r6 
                                   4370 ;bytes_read_in_current_cluster Allocated to stack - _bp +10
                                   4371 ;bytes_read_in_current_sector Allocated to stack - _bp +12
                                   4372 ;current_sector            Allocated to stack - _bp +14
                                   4373 ;sloc0                     Allocated to stack - _bp +2
                                   4374 ;sloc1                     Allocated to stack - _bp +6
                                   4375 ;------------------------------------------------------------
                                   4376 ;	fat.h:706: uint8_t FAT16_FILE_READ(uint8_t nbytes, uint8_t *dst) __reentrant
                                   4377 ;	-----------------------------------------
                                   4378 ;	 function FAT16_FILE_READ
                                   4379 ;	-----------------------------------------
      001499                       4380 _FAT16_FILE_READ:
      001499 C0 3E            [24] 4381 	push	_bp
      00149B 85 81 3E         [24] 4382 	mov	_bp,sp
      00149E C0 82            [24] 4383 	push	dpl
      0014A0 E5 81            [12] 4384 	mov	a,sp
      0014A2 24 10            [12] 4385 	add	a,#0x10
      0014A4 F5 81            [12] 4386 	mov	sp,a
                                   4387 ;	fat.h:715: if(nbytes==0)
      0014A6 A8 3E            [24] 4388 	mov	r0,_bp
      0014A8 08               [12] 4389 	inc	r0
      0014A9 E6               [12] 4390 	mov	a,@r0
                                   4391 ;	fat.h:717: return 0; //read 0 bytes
      0014AA 70 05            [24] 4392 	jnz	00102$
      0014AC F5 82            [12] 4393 	mov	dpl,a
      0014AE 02 16 FC         [24] 4394 	ljmp	00113$
      0014B1                       4395 00102$:
                                   4396 ;	fat.h:720: if(nbytes & (nbytes-1))
      0014B1 A8 3E            [24] 4397 	mov	r0,_bp
      0014B3 08               [12] 4398 	inc	r0
      0014B4 86 05            [24] 4399 	mov	ar5,@r0
      0014B6 7E 00            [12] 4400 	mov	r6,#0x00
      0014B8 ED               [12] 4401 	mov	a,r5
      0014B9 24 FF            [12] 4402 	add	a,#0xff
      0014BB FB               [12] 4403 	mov	r3,a
      0014BC EE               [12] 4404 	mov	a,r6
      0014BD 34 FF            [12] 4405 	addc	a,#0xff
      0014BF FC               [12] 4406 	mov	r4,a
      0014C0 EB               [12] 4407 	mov	a,r3
      0014C1 52 05            [12] 4408 	anl	ar5,a
      0014C3 EC               [12] 4409 	mov	a,r4
      0014C4 52 06            [12] 4410 	anl	ar6,a
      0014C6 ED               [12] 4411 	mov	a,r5
      0014C7 4E               [12] 4412 	orl	a,r6
      0014C8 60 06            [24] 4413 	jz	00104$
                                   4414 ;	fat.h:725: return 255; //error
      0014CA 75 82 FF         [24] 4415 	mov	dpl,#0xff
      0014CD 02 16 FC         [24] 4416 	ljmp	00113$
      0014D0                       4417 00104$:
                                   4418 ;	fat.h:728: if(__global_rootEntry.bytes_read == __global_rootEntry.size)
      0014D0 A8 3E            [24] 4419 	mov	r0,_bp
      0014D2 08               [12] 4420 	inc	r0
      0014D3 08               [12] 4421 	inc	r0
      0014D4 79 80            [12] 4422 	mov	r1,#(___global_rootEntry + 0x0014)
      0014D6 E7               [12] 4423 	mov	a,@r1
      0014D7 F6               [12] 4424 	mov	@r0,a
      0014D8 09               [12] 4425 	inc	r1
      0014D9 E7               [12] 4426 	mov	a,@r1
      0014DA 08               [12] 4427 	inc	r0
      0014DB F6               [12] 4428 	mov	@r0,a
      0014DC 09               [12] 4429 	inc	r1
      0014DD E7               [12] 4430 	mov	a,@r1
      0014DE 08               [12] 4431 	inc	r0
      0014DF F6               [12] 4432 	mov	@r0,a
      0014E0 09               [12] 4433 	inc	r1
      0014E1 E7               [12] 4434 	mov	a,@r1
      0014E2 08               [12] 4435 	inc	r0
      0014E3 F6               [12] 4436 	mov	@r0,a
      0014E4 78 7A            [12] 4437 	mov	r0,#(___global_rootEntry + 0x000e)
      0014E6 86 02            [24] 4438 	mov	ar2,@r0
      0014E8 08               [12] 4439 	inc	r0
      0014E9 86 05            [24] 4440 	mov	ar5,@r0
      0014EB 08               [12] 4441 	inc	r0
      0014EC 86 06            [24] 4442 	mov	ar6,@r0
      0014EE 08               [12] 4443 	inc	r0
      0014EF 86 07            [24] 4444 	mov	ar7,@r0
      0014F1 A8 3E            [24] 4445 	mov	r0,_bp
      0014F3 08               [12] 4446 	inc	r0
      0014F4 08               [12] 4447 	inc	r0
      0014F5 E6               [12] 4448 	mov	a,@r0
      0014F6 B5 02 11         [24] 4449 	cjne	a,ar2,00141$
      0014F9 08               [12] 4450 	inc	r0
      0014FA E6               [12] 4451 	mov	a,@r0
      0014FB B5 05 0C         [24] 4452 	cjne	a,ar5,00141$
      0014FE 08               [12] 4453 	inc	r0
      0014FF E6               [12] 4454 	mov	a,@r0
      001500 B5 06 07         [24] 4455 	cjne	a,ar6,00141$
      001503 08               [12] 4456 	inc	r0
      001504 E6               [12] 4457 	mov	a,@r0
      001505 B5 07 02         [24] 4458 	cjne	a,ar7,00141$
      001508 80 02            [24] 4459 	sjmp	00142$
      00150A                       4460 00141$:
      00150A 80 06            [24] 4461 	sjmp	00111$
      00150C                       4462 00142$:
                                   4463 ;	fat.h:730: return 0; //end of file - return number of bytes read
      00150C 75 82 00         [24] 4464 	mov	dpl,#0x00
      00150F 02 16 FC         [24] 4465 	ljmp	00113$
      001512                       4466 00111$:
                                   4467 ;	fat.h:735: bytes_read_in_current_cluster = __global_rootEntry.bytes_read % __global_vbr.bpc;
      001512 78 5B            [12] 4468 	mov	r0,#(___global_vbr + 0x000f)
      001514 86 3F            [24] 4469 	mov	__modulong_PARM_2,@r0
      001516 08               [12] 4470 	inc	r0
      001517 86 40            [24] 4471 	mov	(__modulong_PARM_2 + 1),@r0
      001519 08               [12] 4472 	inc	r0
      00151A 86 41            [24] 4473 	mov	(__modulong_PARM_2 + 2),@r0
      00151C 08               [12] 4474 	inc	r0
      00151D 86 42            [24] 4475 	mov	(__modulong_PARM_2 + 3),@r0
      00151F A8 3E            [24] 4476 	mov	r0,_bp
      001521 08               [12] 4477 	inc	r0
      001522 08               [12] 4478 	inc	r0
      001523 86 82            [24] 4479 	mov	dpl,@r0
      001525 08               [12] 4480 	inc	r0
      001526 86 83            [24] 4481 	mov	dph,@r0
      001528 08               [12] 4482 	inc	r0
      001529 86 F0            [24] 4483 	mov	b,@r0
      00152B 08               [12] 4484 	inc	r0
      00152C E6               [12] 4485 	mov	a,@r0
      00152D 12 1C 42         [24] 4486 	lcall	__modulong
      001530 AB 82            [24] 4487 	mov	r3,dpl
      001532 AC 83            [24] 4488 	mov	r4,dph
      001534 E5 3E            [12] 4489 	mov	a,_bp
      001536 24 0A            [12] 4490 	add	a,#0x0a
      001538 F8               [12] 4491 	mov	r0,a
      001539 A6 03            [24] 4492 	mov	@r0,ar3
      00153B 08               [12] 4493 	inc	r0
      00153C A6 04            [24] 4494 	mov	@r0,ar4
                                   4495 ;	fat.h:779: if(__global_rootEntry.bytes_read!=0 && bytes_read_in_current_cluster==0)
      00153E A8 3E            [24] 4496 	mov	r0,_bp
      001540 08               [12] 4497 	inc	r0
      001541 08               [12] 4498 	inc	r0
      001542 E6               [12] 4499 	mov	a,@r0
      001543 08               [12] 4500 	inc	r0
      001544 46               [12] 4501 	orl	a,@r0
      001545 08               [12] 4502 	inc	r0
      001546 46               [12] 4503 	orl	a,@r0
      001547 08               [12] 4504 	inc	r0
      001548 46               [12] 4505 	orl	a,@r0
      001549 60 1F            [24] 4506 	jz	00106$
      00154B E5 3E            [12] 4507 	mov	a,_bp
      00154D 24 0A            [12] 4508 	add	a,#0x0a
      00154F F8               [12] 4509 	mov	r0,a
      001550 E6               [12] 4510 	mov	a,@r0
      001551 08               [12] 4511 	inc	r0
      001552 46               [12] 4512 	orl	a,@r0
      001553 70 15            [24] 4513 	jnz	00106$
                                   4514 ;	fat.h:781: __global_rootEntry.startCluster = FAT16_GET_NEXT_CLUSTER(__global_rootEntry.startCluster);
      001555 78 78            [12] 4515 	mov	r0,#(___global_rootEntry + 0x000c)
      001557 86 82            [24] 4516 	mov	dpl,@r0
      001559 08               [12] 4517 	inc	r0
      00155A 86 83            [24] 4518 	mov	dph,@r0
      00155C 12 13 B4         [24] 4519 	lcall	_FAT16_GET_NEXT_CLUSTER
      00155F E5 82            [12] 4520 	mov	a,dpl
      001561 85 83 F0         [24] 4521 	mov	b,dph
      001564 78 78            [12] 4522 	mov	r0,#(___global_rootEntry + 0x000c)
      001566 F6               [12] 4523 	mov	@r0,a
      001567 08               [12] 4524 	inc	r0
      001568 A6 F0            [24] 4525 	mov	@r0,b
      00156A                       4526 00106$:
                                   4527 ;	fat.h:785: current_cluster = __global_rootEntry.startCluster;
      00156A 78 78            [12] 4528 	mov	r0,#(___global_rootEntry + 0x000c)
      00156C 86 07            [24] 4529 	mov	ar7,@r0
      00156E 08               [12] 4530 	inc	r0
      00156F 86 06            [24] 4531 	mov	ar6,@r0
                                   4532 ;	fat.h:790: current_sector =    __global_vbr.addr_data_start 						//start of data
      001571 A8 3E            [24] 4533 	mov	r0,_bp
      001573 08               [12] 4534 	inc	r0
      001574 08               [12] 4535 	inc	r0
      001575 79 67            [12] 4536 	mov	r1,#(___global_vbr + 0x001b)
      001577 E7               [12] 4537 	mov	a,@r1
      001578 F6               [12] 4538 	mov	@r0,a
      001579 09               [12] 4539 	inc	r1
      00157A E7               [12] 4540 	mov	a,@r1
      00157B 08               [12] 4541 	inc	r0
      00157C F6               [12] 4542 	mov	@r0,a
      00157D 09               [12] 4543 	inc	r1
      00157E E7               [12] 4544 	mov	a,@r1
      00157F 08               [12] 4545 	inc	r0
      001580 F6               [12] 4546 	mov	@r0,a
      001581 09               [12] 4547 	inc	r1
      001582 E7               [12] 4548 	mov	a,@r1
      001583 08               [12] 4549 	inc	r0
      001584 F6               [12] 4550 	mov	@r0,a
                                   4551 ;	fat.h:791: + (current_cluster-2) * __global_vbr.spc 				//skip to the start of current cluster
      001585 EF               [12] 4552 	mov	a,r7
      001586 24 FE            [12] 4553 	add	a,#0xfe
      001588 F5 82            [12] 4554 	mov	dpl,a
      00158A EE               [12] 4555 	mov	a,r6
      00158B 34 FF            [12] 4556 	addc	a,#0xff
      00158D F5 83            [12] 4557 	mov	dph,a
      00158F 78 54            [12] 4558 	mov	r0,#(___global_vbr + 0x0008)
      001591 86 03            [24] 4559 	mov	ar3,@r0
      001593 8B 3F            [24] 4560 	mov	__mulint_PARM_2,r3
      001595 75 40 00         [24] 4561 	mov	(__mulint_PARM_2 + 1),#0x00
      001598 12 1D 45         [24] 4562 	lcall	__mulint
      00159B AB 82            [24] 4563 	mov	r3,dpl
      00159D AF 83            [24] 4564 	mov	r7,dph
      00159F 8F 05            [24] 4565 	mov	ar5,r7
      0015A1 7E 00            [12] 4566 	mov	r6,#0x00
      0015A3 7F 00            [12] 4567 	mov	r7,#0x00
      0015A5 A8 3E            [24] 4568 	mov	r0,_bp
      0015A7 08               [12] 4569 	inc	r0
      0015A8 08               [12] 4570 	inc	r0
      0015A9 EB               [12] 4571 	mov	a,r3
      0015AA 26               [12] 4572 	add	a,@r0
      0015AB F6               [12] 4573 	mov	@r0,a
      0015AC ED               [12] 4574 	mov	a,r5
      0015AD 08               [12] 4575 	inc	r0
      0015AE 36               [12] 4576 	addc	a,@r0
      0015AF F6               [12] 4577 	mov	@r0,a
      0015B0 EE               [12] 4578 	mov	a,r6
      0015B1 08               [12] 4579 	inc	r0
      0015B2 36               [12] 4580 	addc	a,@r0
      0015B3 F6               [12] 4581 	mov	@r0,a
      0015B4 EF               [12] 4582 	mov	a,r7
      0015B5 08               [12] 4583 	inc	r0
      0015B6 36               [12] 4584 	addc	a,@r0
      0015B7 F6               [12] 4585 	mov	@r0,a
                                   4586 ;	fat.h:792: + bytes_read_in_current_cluster/__global_vbr.bps;	//skip sectors already read in current cluster
      0015B8 78 52            [12] 4587 	mov	r0,#(___global_vbr + 0x0006)
      0015BA 86 02            [24] 4588 	mov	ar2,@r0
      0015BC 08               [12] 4589 	inc	r0
      0015BD 86 04            [24] 4590 	mov	ar4,@r0
      0015BF 8A 3F            [24] 4591 	mov	__divuint_PARM_2,r2
      0015C1 8C 40            [24] 4592 	mov	(__divuint_PARM_2 + 1),r4
      0015C3 E5 3E            [12] 4593 	mov	a,_bp
      0015C5 24 0A            [12] 4594 	add	a,#0x0a
      0015C7 F8               [12] 4595 	mov	r0,a
      0015C8 86 82            [24] 4596 	mov	dpl,@r0
      0015CA 08               [12] 4597 	inc	r0
      0015CB 86 83            [24] 4598 	mov	dph,@r0
      0015CD C0 04            [24] 4599 	push	ar4
      0015CF C0 02            [24] 4600 	push	ar2
      0015D1 12 1C 19         [24] 4601 	lcall	__divuint
      0015D4 AE 82            [24] 4602 	mov	r6,dpl
      0015D6 AF 83            [24] 4603 	mov	r7,dph
      0015D8 D0 02            [24] 4604 	pop	ar2
      0015DA D0 04            [24] 4605 	pop	ar4
      0015DC 7D 00            [12] 4606 	mov	r5,#0x00
      0015DE 7B 00            [12] 4607 	mov	r3,#0x00
      0015E0 A8 3E            [24] 4608 	mov	r0,_bp
      0015E2 08               [12] 4609 	inc	r0
      0015E3 08               [12] 4610 	inc	r0
      0015E4 EE               [12] 4611 	mov	a,r6
      0015E5 26               [12] 4612 	add	a,@r0
      0015E6 FE               [12] 4613 	mov	r6,a
      0015E7 EF               [12] 4614 	mov	a,r7
      0015E8 08               [12] 4615 	inc	r0
      0015E9 36               [12] 4616 	addc	a,@r0
      0015EA FF               [12] 4617 	mov	r7,a
      0015EB ED               [12] 4618 	mov	a,r5
      0015EC 08               [12] 4619 	inc	r0
      0015ED 36               [12] 4620 	addc	a,@r0
      0015EE FD               [12] 4621 	mov	r5,a
      0015EF EB               [12] 4622 	mov	a,r3
      0015F0 08               [12] 4623 	inc	r0
      0015F1 36               [12] 4624 	addc	a,@r0
      0015F2 FB               [12] 4625 	mov	r3,a
      0015F3 E5 3E            [12] 4626 	mov	a,_bp
      0015F5 24 0E            [12] 4627 	add	a,#0x0e
      0015F7 F8               [12] 4628 	mov	r0,a
      0015F8 A6 06            [24] 4629 	mov	@r0,ar6
      0015FA 08               [12] 4630 	inc	r0
      0015FB A6 07            [24] 4631 	mov	@r0,ar7
      0015FD 08               [12] 4632 	inc	r0
      0015FE A6 05            [24] 4633 	mov	@r0,ar5
      001600 08               [12] 4634 	inc	r0
      001601 A6 03            [24] 4635 	mov	@r0,ar3
                                   4636 ;	fat.h:795: bytes_read_in_current_sector = bytes_read_in_current_cluster % __global_vbr.bps;
      001603 8A 3F            [24] 4637 	mov	__moduint_PARM_2,r2
      001605 8C 40            [24] 4638 	mov	(__moduint_PARM_2 + 1),r4
      001607 E5 3E            [12] 4639 	mov	a,_bp
      001609 24 0A            [12] 4640 	add	a,#0x0a
      00160B F8               [12] 4641 	mov	r0,a
      00160C 86 82            [24] 4642 	mov	dpl,@r0
      00160E 08               [12] 4643 	inc	r0
      00160F 86 83            [24] 4644 	mov	dph,@r0
      001611 12 1D 62         [24] 4645 	lcall	__moduint
      001614 C8               [12] 4646 	xch	a,r0
      001615 E5 3E            [12] 4647 	mov	a,_bp
      001617 24 0C            [12] 4648 	add	a,#0x0c
      001619 C8               [12] 4649 	xch	a,r0
      00161A A6 82            [24] 4650 	mov	@r0,dpl
      00161C 08               [12] 4651 	inc	r0
      00161D A6 83            [24] 4652 	mov	@r0,dph
                                   4653 ;	fat.h:799: if(__global_rootEntry.bytes_read + nbytes > __global_rootEntry.size )
      00161F A8 3E            [24] 4654 	mov	r0,_bp
      001621 08               [12] 4655 	inc	r0
      001622 08               [12] 4656 	inc	r0
      001623 79 80            [12] 4657 	mov	r1,#(___global_rootEntry + 0x0014)
      001625 E7               [12] 4658 	mov	a,@r1
      001626 F6               [12] 4659 	mov	@r0,a
      001627 09               [12] 4660 	inc	r1
      001628 E7               [12] 4661 	mov	a,@r1
      001629 08               [12] 4662 	inc	r0
      00162A F6               [12] 4663 	mov	@r0,a
      00162B 09               [12] 4664 	inc	r1
      00162C E7               [12] 4665 	mov	a,@r1
      00162D 08               [12] 4666 	inc	r0
      00162E F6               [12] 4667 	mov	@r0,a
      00162F 09               [12] 4668 	inc	r1
      001630 E7               [12] 4669 	mov	a,@r1
      001631 08               [12] 4670 	inc	r0
      001632 F6               [12] 4671 	mov	@r0,a
      001633 A8 3E            [24] 4672 	mov	r0,_bp
      001635 08               [12] 4673 	inc	r0
      001636 86 03            [24] 4674 	mov	ar3,@r0
      001638 7D 00            [12] 4675 	mov	r5,#0x00
      00163A 7E 00            [12] 4676 	mov	r6,#0x00
      00163C 7F 00            [12] 4677 	mov	r7,#0x00
      00163E A8 3E            [24] 4678 	mov	r0,_bp
      001640 08               [12] 4679 	inc	r0
      001641 08               [12] 4680 	inc	r0
      001642 EB               [12] 4681 	mov	a,r3
      001643 26               [12] 4682 	add	a,@r0
      001644 FB               [12] 4683 	mov	r3,a
      001645 ED               [12] 4684 	mov	a,r5
      001646 08               [12] 4685 	inc	r0
      001647 36               [12] 4686 	addc	a,@r0
      001648 FD               [12] 4687 	mov	r5,a
      001649 EE               [12] 4688 	mov	a,r6
      00164A 08               [12] 4689 	inc	r0
      00164B 36               [12] 4690 	addc	a,@r0
      00164C FE               [12] 4691 	mov	r6,a
      00164D EF               [12] 4692 	mov	a,r7
      00164E 08               [12] 4693 	inc	r0
      00164F 36               [12] 4694 	addc	a,@r0
      001650 FF               [12] 4695 	mov	r7,a
      001651 E5 3E            [12] 4696 	mov	a,_bp
      001653 24 06            [12] 4697 	add	a,#0x06
      001655 F8               [12] 4698 	mov	r0,a
      001656 79 7A            [12] 4699 	mov	r1,#(___global_rootEntry + 0x000e)
      001658 E7               [12] 4700 	mov	a,@r1
      001659 F6               [12] 4701 	mov	@r0,a
      00165A 09               [12] 4702 	inc	r1
      00165B E7               [12] 4703 	mov	a,@r1
      00165C 08               [12] 4704 	inc	r0
      00165D F6               [12] 4705 	mov	@r0,a
      00165E 09               [12] 4706 	inc	r1
      00165F E7               [12] 4707 	mov	a,@r1
      001660 08               [12] 4708 	inc	r0
      001661 F6               [12] 4709 	mov	@r0,a
      001662 09               [12] 4710 	inc	r1
      001663 E7               [12] 4711 	mov	a,@r1
      001664 08               [12] 4712 	inc	r0
      001665 F6               [12] 4713 	mov	@r0,a
      001666 E5 3E            [12] 4714 	mov	a,_bp
      001668 24 06            [12] 4715 	add	a,#0x06
      00166A F8               [12] 4716 	mov	r0,a
      00166B C3               [12] 4717 	clr	c
      00166C E6               [12] 4718 	mov	a,@r0
      00166D 9B               [12] 4719 	subb	a,r3
      00166E 08               [12] 4720 	inc	r0
      00166F E6               [12] 4721 	mov	a,@r0
      001670 9D               [12] 4722 	subb	a,r5
      001671 08               [12] 4723 	inc	r0
      001672 E6               [12] 4724 	mov	a,@r0
      001673 9E               [12] 4725 	subb	a,r6
      001674 08               [12] 4726 	inc	r0
      001675 E6               [12] 4727 	mov	a,@r0
      001676 9F               [12] 4728 	subb	a,r7
      001677 50 14            [24] 4729 	jnc	00109$
                                   4730 ;	fat.h:801: nbytes = __global_rootEntry.size - __global_rootEntry.bytes_read;//;
      001679 E5 3E            [12] 4731 	mov	a,_bp
      00167B 24 06            [12] 4732 	add	a,#0x06
      00167D F8               [12] 4733 	mov	r0,a
      00167E 86 07            [24] 4734 	mov	ar7,@r0
      001680 A8 3E            [24] 4735 	mov	r0,_bp
      001682 08               [12] 4736 	inc	r0
      001683 08               [12] 4737 	inc	r0
      001684 86 02            [24] 4738 	mov	ar2,@r0
      001686 A8 3E            [24] 4739 	mov	r0,_bp
      001688 08               [12] 4740 	inc	r0
      001689 EF               [12] 4741 	mov	a,r7
      00168A C3               [12] 4742 	clr	c
      00168B 9A               [12] 4743 	subb	a,r2
      00168C F6               [12] 4744 	mov	@r0,a
      00168D                       4745 00109$:
                                   4746 ;	fat.h:820: __global_rootEntry.bytes_read += nbytes;
      00168D A8 3E            [24] 4747 	mov	r0,_bp
      00168F 08               [12] 4748 	inc	r0
      001690 86 04            [24] 4749 	mov	ar4,@r0
      001692 7D 00            [12] 4750 	mov	r5,#0x00
      001694 7E 00            [12] 4751 	mov	r6,#0x00
      001696 7F 00            [12] 4752 	mov	r7,#0x00
      001698 A8 3E            [24] 4753 	mov	r0,_bp
      00169A 08               [12] 4754 	inc	r0
      00169B 08               [12] 4755 	inc	r0
      00169C EC               [12] 4756 	mov	a,r4
      00169D 26               [12] 4757 	add	a,@r0
      00169E FC               [12] 4758 	mov	r4,a
      00169F ED               [12] 4759 	mov	a,r5
      0016A0 08               [12] 4760 	inc	r0
      0016A1 36               [12] 4761 	addc	a,@r0
      0016A2 FD               [12] 4762 	mov	r5,a
      0016A3 EE               [12] 4763 	mov	a,r6
      0016A4 08               [12] 4764 	inc	r0
      0016A5 36               [12] 4765 	addc	a,@r0
      0016A6 FE               [12] 4766 	mov	r6,a
      0016A7 EF               [12] 4767 	mov	a,r7
      0016A8 08               [12] 4768 	inc	r0
      0016A9 36               [12] 4769 	addc	a,@r0
      0016AA FF               [12] 4770 	mov	r7,a
      0016AB 78 80            [12] 4771 	mov	r0,#(___global_rootEntry + 0x0014)
      0016AD A6 04            [24] 4772 	mov	@r0,ar4
      0016AF 08               [12] 4773 	inc	r0
      0016B0 A6 05            [24] 4774 	mov	@r0,ar5
      0016B2 08               [12] 4775 	inc	r0
      0016B3 A6 06            [24] 4776 	mov	@r0,ar6
      0016B5 08               [12] 4777 	inc	r0
      0016B6 A6 07            [24] 4778 	mov	@r0,ar7
                                   4779 ;	fat.h:823: SDread(current_sector,bytes_read_in_current_sector,nbytes,dst);
      0016B8 A8 3E            [24] 4780 	mov	r0,_bp
      0016BA 08               [12] 4781 	inc	r0
      0016BB 86 06            [24] 4782 	mov	ar6,@r0
      0016BD 7F 00            [12] 4783 	mov	r7,#0x00
      0016BF E5 3E            [12] 4784 	mov	a,_bp
      0016C1 24 FB            [12] 4785 	add	a,#0xfb
      0016C3 F8               [12] 4786 	mov	r0,a
      0016C4 E6               [12] 4787 	mov	a,@r0
      0016C5 C0 E0            [24] 4788 	push	acc
      0016C7 08               [12] 4789 	inc	r0
      0016C8 E6               [12] 4790 	mov	a,@r0
      0016C9 C0 E0            [24] 4791 	push	acc
      0016CB 08               [12] 4792 	inc	r0
      0016CC E6               [12] 4793 	mov	a,@r0
      0016CD C0 E0            [24] 4794 	push	acc
      0016CF C0 06            [24] 4795 	push	ar6
      0016D1 C0 07            [24] 4796 	push	ar7
      0016D3 E5 3E            [12] 4797 	mov	a,_bp
      0016D5 24 0C            [12] 4798 	add	a,#0x0c
      0016D7 F8               [12] 4799 	mov	r0,a
      0016D8 E6               [12] 4800 	mov	a,@r0
      0016D9 C0 E0            [24] 4801 	push	acc
      0016DB 08               [12] 4802 	inc	r0
      0016DC E6               [12] 4803 	mov	a,@r0
      0016DD C0 E0            [24] 4804 	push	acc
      0016DF E5 3E            [12] 4805 	mov	a,_bp
      0016E1 24 0E            [12] 4806 	add	a,#0x0e
      0016E3 F8               [12] 4807 	mov	r0,a
      0016E4 86 82            [24] 4808 	mov	dpl,@r0
      0016E6 08               [12] 4809 	inc	r0
      0016E7 86 83            [24] 4810 	mov	dph,@r0
      0016E9 08               [12] 4811 	inc	r0
      0016EA 86 F0            [24] 4812 	mov	b,@r0
      0016EC 08               [12] 4813 	inc	r0
      0016ED E6               [12] 4814 	mov	a,@r0
      0016EE 12 07 47         [24] 4815 	lcall	_SDread
      0016F1 E5 81            [12] 4816 	mov	a,sp
      0016F3 24 F9            [12] 4817 	add	a,#0xf9
      0016F5 F5 81            [12] 4818 	mov	sp,a
                                   4819 ;	fat.h:828: return nbytes;
      0016F7 A8 3E            [24] 4820 	mov	r0,_bp
      0016F9 08               [12] 4821 	inc	r0
      0016FA 86 82            [24] 4822 	mov	dpl,@r0
      0016FC                       4823 00113$:
                                   4824 ;	fat.h:830: }
      0016FC 85 3E 81         [24] 4825 	mov	sp,_bp
      0016FF D0 3E            [24] 4826 	pop	_bp
      001701 22               [24] 4827 	ret
                                   4828 ;------------------------------------------------------------
                                   4829 ;Allocation info for local variables in function 'FAT16_FILE_CAT'
                                   4830 ;------------------------------------------------------------
                                   4831 ;filename                  Allocated to registers r5 r6 r7 
                                   4832 ;temp                      Allocated to stack - _bp +1
                                   4833 ;resp                      Allocated to registers r6 
                                   4834 ;i                         Allocated to registers r5 
                                   4835 ;------------------------------------------------------------
                                   4836 ;	fat.h:832: void FAT16_FILE_CAT(uint8_t *filename) __reentrant
                                   4837 ;	-----------------------------------------
                                   4838 ;	 function FAT16_FILE_CAT
                                   4839 ;	-----------------------------------------
      001702                       4840 _FAT16_FILE_CAT:
      001702 C0 3E            [24] 4841 	push	_bp
      001704 E5 81            [12] 4842 	mov	a,sp
      001706 F5 3E            [12] 4843 	mov	_bp,a
      001708 24 08            [12] 4844 	add	a,#0x08
      00170A F5 81            [12] 4845 	mov	sp,a
                                   4846 ;	fat.h:839: if(FAT16_FILE_OPEN(filename))
      00170C 12 13 1C         [24] 4847 	lcall	_FAT16_FILE_OPEN
      00170F E5 82            [12] 4848 	mov	a,dpl
      001711 60 0B            [24] 4849 	jz	00115$
                                   4850 ;	fat.h:841: UartPrint("FILE NOT FOUND\n.");
      001713 90 1F 45         [24] 4851 	mov	dptr,#___str_8
      001716 75 F0 80         [24] 4852 	mov	b,#0x80
      001719 12 01 84         [24] 4853 	lcall	_UartPrint
                                   4854 ;	fat.h:842: return;
                                   4855 ;	fat.h:845: do
      00171C 80 42            [24] 4856 	sjmp	00110$
      00171E                       4857 00115$:
      00171E AF 3E            [24] 4858 	mov	r7,_bp
      001720 0F               [12] 4859 	inc	r7
      001721                       4860 00104$:
                                   4861 ;	fat.h:847: resp=FAT16_FILE_READ(FILE_CAT_BUFFER_SIZE,temp);
      001721 8F 04            [24] 4862 	mov	ar4,r7
      001723 7D 00            [12] 4863 	mov	r5,#0x00
      001725 7E 40            [12] 4864 	mov	r6,#0x40
      001727 C0 07            [24] 4865 	push	ar7
      001729 C0 04            [24] 4866 	push	ar4
      00172B C0 05            [24] 4867 	push	ar5
      00172D C0 06            [24] 4868 	push	ar6
      00172F 75 82 08         [24] 4869 	mov	dpl,#0x08
      001732 12 14 99         [24] 4870 	lcall	_FAT16_FILE_READ
      001735 AE 82            [24] 4871 	mov	r6,dpl
      001737 15 81            [12] 4872 	dec	sp
      001739 15 81            [12] 4873 	dec	sp
      00173B 15 81            [12] 4874 	dec	sp
      00173D D0 07            [24] 4875 	pop	ar7
                                   4876 ;	fat.h:848: for(uint8_t i=0;i<resp;i++) UartWrite(temp[i]);
      00173F 7D 00            [12] 4877 	mov	r5,#0x00
      001741                       4878 00108$:
      001741 C3               [12] 4879 	clr	c
      001742 ED               [12] 4880 	mov	a,r5
      001743 9E               [12] 4881 	subb	a,r6
      001744 50 17            [24] 4882 	jnc	00105$
      001746 ED               [12] 4883 	mov	a,r5
      001747 2F               [12] 4884 	add	a,r7
      001748 F9               [12] 4885 	mov	r1,a
      001749 87 82            [24] 4886 	mov	dpl,@r1
      00174B C0 07            [24] 4887 	push	ar7
      00174D C0 06            [24] 4888 	push	ar6
      00174F C0 05            [24] 4889 	push	ar5
      001751 12 00 FE         [24] 4890 	lcall	_UartWrite
      001754 D0 05            [24] 4891 	pop	ar5
      001756 D0 06            [24] 4892 	pop	ar6
      001758 D0 07            [24] 4893 	pop	ar7
      00175A 0D               [12] 4894 	inc	r5
      00175B 80 E4            [24] 4895 	sjmp	00108$
      00175D                       4896 00105$:
                                   4897 ;	fat.h:851: } while (resp!=0);
      00175D EE               [12] 4898 	mov	a,r6
      00175E 70 C1            [24] 4899 	jnz	00104$
                                   4900 ;	fat.h:853: return;
      001760                       4901 00110$:
                                   4902 ;	fat.h:855: }
      001760 85 3E 81         [24] 4903 	mov	sp,_bp
      001763 D0 3E            [24] 4904 	pop	_bp
      001765 22               [24] 4905 	ret
                                   4906 ;------------------------------------------------------------
                                   4907 ;Allocation info for local variables in function 'SL_disable_write_protection'
                                   4908 ;------------------------------------------------------------
                                   4909 ;xram_addr                 Allocated to registers 
                                   4910 ;------------------------------------------------------------
                                   4911 ;	serialloader.h:24: void SL_disable_write_protection()
                                   4912 ;	-----------------------------------------
                                   4913 ;	 function SL_disable_write_protection
                                   4914 ;	-----------------------------------------
      001766                       4915 _SL_disable_write_protection:
                                   4916 ;	serialloader.h:29: *(xram_addr) = 0xAA;
      001766 90 15 55         [24] 4917 	mov	dptr,#0x1555
      001769 74 AA            [12] 4918 	mov	a,#0xaa
      00176B F0               [24] 4919 	movx	@dptr,a
                                   4920 ;	serialloader.h:31: *(xram_addr) = 0x55;
      00176C 90 0A AA         [24] 4921 	mov	dptr,#0x0aaa
      00176F F4               [12] 4922 	cpl	a
      001770 F0               [24] 4923 	movx	@dptr,a
                                   4924 ;	serialloader.h:33: *(xram_addr) = 0x80;
                                   4925 ;	serialloader.h:37: *(xram_addr) = 0xAA;
      001771 90 15 55         [24] 4926 	mov	dptr,#0x1555
      001774 74 80            [12] 4927 	mov	a,#0x80
      001776 F0               [24] 4928 	movx	@dptr,a
      001777 74 AA            [12] 4929 	mov	a,#0xaa
      001779 F0               [24] 4930 	movx	@dptr,a
                                   4931 ;	serialloader.h:39: *(xram_addr) = 0x55;
      00177A 90 0A AA         [24] 4932 	mov	dptr,#0x0aaa
      00177D F4               [12] 4933 	cpl	a
      00177E F0               [24] 4934 	movx	@dptr,a
                                   4935 ;	serialloader.h:41: *(xram_addr) = 0x20;
      00177F 90 15 55         [24] 4936 	mov	dptr,#0x1555
      001782 74 20            [12] 4937 	mov	a,#0x20
      001784 F0               [24] 4938 	movx	@dptr,a
                                   4939 ;	serialloader.h:43: UartWrite('D'); //ack
      001785 75 82 44         [24] 4940 	mov	dpl,#0x44
      001788 12 00 FE         [24] 4941 	lcall	_UartWrite
                                   4942 ;	serialloader.h:45: EEPROM_WRITE_PROTECTION=0; //change flag
      00178B 75 2B 00         [24] 4943 	mov	_EEPROM_WRITE_PROTECTION,#0x00
                                   4944 ;	serialloader.h:46: }
      00178E 22               [24] 4945 	ret
                                   4946 ;------------------------------------------------------------
                                   4947 ;Allocation info for local variables in function 'SL_enable_write_protection'
                                   4948 ;------------------------------------------------------------
                                   4949 ;	serialloader.h:48: void SL_enable_write_protection()
                                   4950 ;	-----------------------------------------
                                   4951 ;	 function SL_enable_write_protection
                                   4952 ;	-----------------------------------------
      00178F                       4953 _SL_enable_write_protection:
                                   4954 ;	serialloader.h:50: EEPROM_WRITE_PROTECTION=1; //change flag
      00178F 75 2B 01         [24] 4955 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                   4956 ;	serialloader.h:51: UartWrite('E'); 
      001792 75 82 45         [24] 4957 	mov	dpl,#0x45
                                   4958 ;	serialloader.h:52: }
      001795 02 00 FE         [24] 4959 	ljmp	_UartWrite
                                   4960 ;------------------------------------------------------------
                                   4961 ;Allocation info for local variables in function 'SL_write'
                                   4962 ;------------------------------------------------------------
                                   4963 ;data                      Allocated to registers r5 
                                   4964 ;addr                      Allocated to registers r7 r6 
                                   4965 ;xram_addr                 Allocated to registers 
                                   4966 ;------------------------------------------------------------
                                   4967 ;	serialloader.h:54: void SL_write()
                                   4968 ;	-----------------------------------------
                                   4969 ;	 function SL_write
                                   4970 ;	-----------------------------------------
      001798                       4971 _SL_write:
                                   4972 ;	serialloader.h:60: while(UartReadReady()==0); //wait till we rcv data
      001798                       4973 00101$:
      001798 12 00 EA         [24] 4974 	lcall	_UartReadReady
      00179B E5 82            [12] 4975 	mov	a,dpl
      00179D 60 F9            [24] 4976 	jz	00101$
                                   4977 ;	serialloader.h:63: addr = UartRead(); //msb
      00179F 12 00 F5         [24] 4978 	lcall	_UartRead
                                   4979 ;	serialloader.h:64: addr = addr << 8;
      0017A2 AE 82            [24] 4980 	mov	r6,dpl
      0017A4 7F 00            [12] 4981 	mov	r7,#0x00
                                   4982 ;	serialloader.h:65: addr |= UartRead(); //lsb
      0017A6 C0 07            [24] 4983 	push	ar7
      0017A8 C0 06            [24] 4984 	push	ar6
      0017AA 12 00 F5         [24] 4985 	lcall	_UartRead
      0017AD AD 82            [24] 4986 	mov	r5,dpl
      0017AF D0 06            [24] 4987 	pop	ar6
      0017B1 D0 07            [24] 4988 	pop	ar7
      0017B3 7C 00            [12] 4989 	mov	r4,#0x00
      0017B5 ED               [12] 4990 	mov	a,r5
      0017B6 42 07            [12] 4991 	orl	ar7,a
      0017B8 EC               [12] 4992 	mov	a,r4
      0017B9 42 06            [12] 4993 	orl	ar6,a
                                   4994 ;	serialloader.h:67: data = UartRead(); //read data
      0017BB C0 07            [24] 4995 	push	ar7
      0017BD C0 06            [24] 4996 	push	ar6
      0017BF 12 00 F5         [24] 4997 	lcall	_UartRead
      0017C2 AD 82            [24] 4998 	mov	r5,dpl
      0017C4 D0 06            [24] 4999 	pop	ar6
      0017C6 D0 07            [24] 5000 	pop	ar7
                                   5001 ;	serialloader.h:69: if(EEPROM_WRITE_PROTECTION)
      0017C8 E5 2B            [12] 5002 	mov	a,_EEPROM_WRITE_PROTECTION
      0017CA 60 11            [24] 5003 	jz	00105$
                                   5004 ;	serialloader.h:73: *(xram_addr) = 0xAA;
      0017CC 90 15 55         [24] 5005 	mov	dptr,#0x1555
      0017CF 74 AA            [12] 5006 	mov	a,#0xaa
      0017D1 F0               [24] 5007 	movx	@dptr,a
                                   5008 ;	serialloader.h:75: *(xram_addr) = 0x55;
      0017D2 90 0A AA         [24] 5009 	mov	dptr,#0x0aaa
      0017D5 F4               [12] 5010 	cpl	a
      0017D6 F0               [24] 5011 	movx	@dptr,a
                                   5012 ;	serialloader.h:77: *(xram_addr) = 0xA0;
      0017D7 90 15 55         [24] 5013 	mov	dptr,#0x1555
      0017DA 74 A0            [12] 5014 	mov	a,#0xa0
      0017DC F0               [24] 5015 	movx	@dptr,a
      0017DD                       5016 00105$:
                                   5017 ;	serialloader.h:80: xram_addr = (__xdata unsigned char*) addr;
      0017DD 8F 82            [24] 5018 	mov	dpl,r7
      0017DF 8E 83            [24] 5019 	mov	dph,r6
                                   5020 ;	serialloader.h:82: *(xram_addr) = data; //write to xram
      0017E1 ED               [12] 5021 	mov	a,r5
      0017E2 F0               [24] 5022 	movx	@dptr,a
                                   5023 ;	serialloader.h:84: UartWrite('W'); //ack
      0017E3 75 82 57         [24] 5024 	mov	dpl,#0x57
                                   5025 ;	serialloader.h:86: }
      0017E6 02 00 FE         [24] 5026 	ljmp	_UartWrite
                                   5027 ;------------------------------------------------------------
                                   5028 ;Allocation info for local variables in function 'SL_read'
                                   5029 ;------------------------------------------------------------
                                   5030 ;data                      Allocated to registers r7 
                                   5031 ;addr                      Allocated to registers r7 r6 
                                   5032 ;xram_addr                 Allocated to registers 
                                   5033 ;------------------------------------------------------------
                                   5034 ;	serialloader.h:88: void SL_read()
                                   5035 ;	-----------------------------------------
                                   5036 ;	 function SL_read
                                   5037 ;	-----------------------------------------
      0017E9                       5038 _SL_read:
                                   5039 ;	serialloader.h:94: while(UartReadReady()==0); //wait till we rcv data
      0017E9                       5040 00101$:
      0017E9 12 00 EA         [24] 5041 	lcall	_UartReadReady
      0017EC E5 82            [12] 5042 	mov	a,dpl
      0017EE 60 F9            [24] 5043 	jz	00101$
                                   5044 ;	serialloader.h:98: addr = UartRead(); //msb
      0017F0 12 00 F5         [24] 5045 	lcall	_UartRead
                                   5046 ;	serialloader.h:99: addr = addr << 8;
      0017F3 AE 82            [24] 5047 	mov	r6,dpl
      0017F5 7F 00            [12] 5048 	mov	r7,#0x00
                                   5049 ;	serialloader.h:100: addr |= UartRead(); //lsb
      0017F7 C0 07            [24] 5050 	push	ar7
      0017F9 C0 06            [24] 5051 	push	ar6
      0017FB 12 00 F5         [24] 5052 	lcall	_UartRead
      0017FE AD 82            [24] 5053 	mov	r5,dpl
      001800 D0 06            [24] 5054 	pop	ar6
      001802 D0 07            [24] 5055 	pop	ar7
      001804 7C 00            [12] 5056 	mov	r4,#0x00
      001806 ED               [12] 5057 	mov	a,r5
      001807 42 07            [12] 5058 	orl	ar7,a
      001809 EC               [12] 5059 	mov	a,r4
      00180A 42 06            [12] 5060 	orl	ar6,a
                                   5061 ;	serialloader.h:102: xram_addr = (__xdata unsigned char*) addr;
      00180C 8F 82            [24] 5062 	mov	dpl,r7
      00180E 8E 83            [24] 5063 	mov	dph,r6
                                   5064 ;	serialloader.h:104: data = *(xram_addr); //read from xram
      001810 E0               [24] 5065 	movx	a,@dptr
                                   5066 ;	serialloader.h:106: UartWrite(data);
      001811 F5 82            [12] 5067 	mov	dpl,a
                                   5068 ;	serialloader.h:108: }
      001813 02 00 FE         [24] 5069 	ljmp	_UartWrite
                                   5070 ;------------------------------------------------------------
                                   5071 ;Allocation info for local variables in function 'SL_getcmd'
                                   5072 ;------------------------------------------------------------
                                   5073 ;cmd                       Allocated to registers r7 
                                   5074 ;------------------------------------------------------------
                                   5075 ;	serialloader.h:111: unsigned char SL_getcmd()
                                   5076 ;	-----------------------------------------
                                   5077 ;	 function SL_getcmd
                                   5078 ;	-----------------------------------------
      001816                       5079 _SL_getcmd:
                                   5080 ;	serialloader.h:114: while(UartReadReady()) UartRead(); //flush 
      001816                       5081 00101$:
      001816 12 00 EA         [24] 5082 	lcall	_UartReadReady
      001819 E5 82            [12] 5083 	mov	a,dpl
      00181B 60 05            [24] 5084 	jz	00104$
      00181D 12 00 F5         [24] 5085 	lcall	_UartRead
                                   5086 ;	serialloader.h:116: while(UartReadReady()==0); //wait till we rcv data 
      001820 80 F4            [24] 5087 	sjmp	00101$
      001822                       5088 00104$:
      001822 12 00 EA         [24] 5089 	lcall	_UartReadReady
      001825 E5 82            [12] 5090 	mov	a,dpl
      001827 60 F9            [24] 5091 	jz	00104$
                                   5092 ;	serialloader.h:119: cmd = UartRead(); //read
      001829 12 00 F5         [24] 5093 	lcall	_UartRead
      00182C AF 82            [24] 5094 	mov	r7,dpl
                                   5095 ;	serialloader.h:121: switch(cmd)
      00182E BF 44 02         [24] 5096 	cjne	r7,#0x44,00159$
      001831 80 3A            [24] 5097 	sjmp	00110$
      001833                       5098 00159$:
      001833 BF 45 02         [24] 5099 	cjne	r7,#0x45,00160$
      001836 80 3E            [24] 5100 	sjmp	00111$
      001838                       5101 00160$:
      001838 BF 52 02         [24] 5102 	cjne	r7,#0x52,00161$
      00183B 80 1E            [24] 5103 	sjmp	00108$
      00183D                       5104 00161$:
      00183D BF 56 02         [24] 5105 	cjne	r7,#0x56,00162$
      001840 80 0A            [24] 5106 	sjmp	00107$
      001842                       5107 00162$:
      001842 BF 57 02         [24] 5108 	cjne	r7,#0x57,00163$
      001845 80 1D            [24] 5109 	sjmp	00109$
      001847                       5110 00163$:
                                   5111 ;	serialloader.h:123: case 'V':
      001847 BF 58 38         [24] 5112 	cjne	r7,#0x58,00114$
      00184A 80 33            [24] 5113 	sjmp	00112$
      00184C                       5114 00107$:
                                   5115 ;	serialloader.h:124: UartPrint(SERIAL_LOADER_VERSION_INFO);
      00184C 90 1C 06         [24] 5116 	mov	dptr,#_SERIAL_LOADER_VERSION_INFO
      00184F 75 F0 80         [24] 5117 	mov	b,#0x80
      001852 C0 07            [24] 5118 	push	ar7
      001854 12 01 84         [24] 5119 	lcall	_UartPrint
      001857 D0 07            [24] 5120 	pop	ar7
                                   5121 ;	serialloader.h:125: break;
                                   5122 ;	serialloader.h:126: case 'R':
      001859 80 27            [24] 5123 	sjmp	00114$
      00185B                       5124 00108$:
                                   5125 ;	serialloader.h:127: SL_read();
      00185B C0 07            [24] 5126 	push	ar7
      00185D 12 17 E9         [24] 5127 	lcall	_SL_read
      001860 D0 07            [24] 5128 	pop	ar7
                                   5129 ;	serialloader.h:128: break;
                                   5130 ;	serialloader.h:129: case 'W':
      001862 80 1E            [24] 5131 	sjmp	00114$
      001864                       5132 00109$:
                                   5133 ;	serialloader.h:130: SL_write();
      001864 C0 07            [24] 5134 	push	ar7
      001866 12 17 98         [24] 5135 	lcall	_SL_write
      001869 D0 07            [24] 5136 	pop	ar7
                                   5137 ;	serialloader.h:131: break;
                                   5138 ;	serialloader.h:132: case 'D':
      00186B 80 15            [24] 5139 	sjmp	00114$
      00186D                       5140 00110$:
                                   5141 ;	serialloader.h:133: SL_disable_write_protection();
      00186D C0 07            [24] 5142 	push	ar7
      00186F 12 17 66         [24] 5143 	lcall	_SL_disable_write_protection
      001872 D0 07            [24] 5144 	pop	ar7
                                   5145 ;	serialloader.h:134: break;
                                   5146 ;	serialloader.h:135: case 'E':
      001874 80 0C            [24] 5147 	sjmp	00114$
      001876                       5148 00111$:
                                   5149 ;	serialloader.h:136: SL_enable_write_protection();
      001876 C0 07            [24] 5150 	push	ar7
      001878 12 17 8F         [24] 5151 	lcall	_SL_enable_write_protection
      00187B D0 07            [24] 5152 	pop	ar7
                                   5153 ;	serialloader.h:137: break;
                                   5154 ;	serialloader.h:138: case 'X': //execute
      00187D 80 03            [24] 5155 	sjmp	00114$
      00187F                       5156 00112$:
                                   5157 ;	serialloader.h:139: SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);
      00187F 53 90 EF         [24] 5158 	anl	_P1,#0xef
                                   5159 ;	serialloader.h:143: }
      001882                       5160 00114$:
                                   5161 ;	serialloader.h:145: return cmd;
      001882 8F 82            [24] 5162 	mov	dpl,r7
                                   5163 ;	serialloader.h:146: }
      001884 22               [24] 5164 	ret
                                   5165 ;------------------------------------------------------------
                                   5166 ;Allocation info for local variables in function 'SelectFAT16PartitionPrompt'
                                   5167 ;------------------------------------------------------------
                                   5168 ;_resp                     Allocated to registers r6 
                                   5169 ;_temp                     Allocated to registers r5 
                                   5170 ;i                         Allocated to registers r5 
                                   5171 ;i                         Allocated to registers r5 
                                   5172 ;------------------------------------------------------------
                                   5173 ;	main.c:31: void SelectFAT16PartitionPrompt() __reentrant
                                   5174 ;	-----------------------------------------
                                   5175 ;	 function SelectFAT16PartitionPrompt
                                   5176 ;	-----------------------------------------
      001885                       5177 _SelectFAT16PartitionPrompt:
                                   5178 ;	main.c:36: if(MBR_CHECK__SIGNATURE())
      001885 12 0C 17         [24] 5179 	lcall	_MBR_CHECK__SIGNATURE
      001888 E5 82            [12] 5180 	mov	a,dpl
      00188A 60 09            [24] 5181 	jz	00102$
                                   5182 ;	main.c:39: UartPrint("BAD MBR!\n");
      00188C 90 1F 56         [24] 5183 	mov	dptr,#___str_10
      00188F 75 F0 80         [24] 5184 	mov	b,#0x80
      001892 12 01 84         [24] 5185 	lcall	_UartPrint
      001895                       5186 00102$:
                                   5187 ;	main.c:43: _resp=MBR_DETECT_FAT16();
      001895 12 0C F5         [24] 5188 	lcall	_MBR_DETECT_FAT16
                                   5189 ;	main.c:44: if(_resp)
      001898 E5 82            [12] 5190 	mov	a,dpl
      00189A FF               [12] 5191 	mov	r7,a
      00189B FE               [12] 5192 	mov	r6,a
      00189C 70 03            [24] 5193 	jnz	00201$
      00189E 02 1A 0B         [24] 5194 	ljmp	00129$
      0018A1                       5195 00201$:
                                   5196 ;	main.c:48: if( (_resp & (_resp-1)) == 0)
      0018A1 7F 00            [12] 5197 	mov	r7,#0x00
      0018A3 EE               [12] 5198 	mov	a,r6
      0018A4 24 FF            [12] 5199 	add	a,#0xff
      0018A6 FC               [12] 5200 	mov	r4,a
      0018A7 EF               [12] 5201 	mov	a,r7
      0018A8 34 FF            [12] 5202 	addc	a,#0xff
      0018AA FD               [12] 5203 	mov	r5,a
      0018AB EE               [12] 5204 	mov	a,r6
      0018AC 52 04            [12] 5205 	anl	ar4,a
      0018AE EF               [12] 5206 	mov	a,r7
      0018AF 52 05            [12] 5207 	anl	ar5,a
      0018B1 EC               [12] 5208 	mov	a,r4
      0018B2 4D               [12] 5209 	orl	a,r5
                                   5210 ;	main.c:50: for(uint8_t i=0;i<4;i++)
      0018B3 70 68            [24] 5211 	jnz	00149$
      0018B5 FD               [12] 5212 	mov	r5,a
      0018B6 FC               [12] 5213 	mov	r4,a
      0018B7                       5214 00132$:
      0018B7 BC 04 00         [24] 5215 	cjne	r4,#0x04,00203$
      0018BA                       5216 00203$:
      0018BA 40 01            [24] 5217 	jc	00204$
      0018BC 22               [24] 5218 	ret
      0018BD                       5219 00204$:
                                   5220 ;	main.c:52: if(_resp & 1<<i) 
      0018BD 8C F0            [24] 5221 	mov	b,r4
      0018BF 05 F0            [12] 5222 	inc	b
      0018C1 7A 01            [12] 5223 	mov	r2,#0x01
      0018C3 7B 00            [12] 5224 	mov	r3,#0x00
      0018C5 80 06            [24] 5225 	sjmp	00206$
      0018C7                       5226 00205$:
      0018C7 EA               [12] 5227 	mov	a,r2
      0018C8 2A               [12] 5228 	add	a,r2
      0018C9 FA               [12] 5229 	mov	r2,a
      0018CA EB               [12] 5230 	mov	a,r3
      0018CB 33               [12] 5231 	rlc	a
      0018CC FB               [12] 5232 	mov	r3,a
      0018CD                       5233 00206$:
      0018CD D5 F0 F7         [24] 5234 	djnz	b,00205$
      0018D0 EE               [12] 5235 	mov	a,r6
      0018D1 52 02            [12] 5236 	anl	ar2,a
      0018D3 EF               [12] 5237 	mov	a,r7
      0018D4 52 03            [12] 5238 	anl	ar3,a
      0018D6 EA               [12] 5239 	mov	a,r2
      0018D7 4B               [12] 5240 	orl	a,r3
      0018D8 60 3E            [24] 5241 	jz	00133$
                                   5242 ;	main.c:54: VBR_MOUNT_VBR(i);
      0018DA 8D 82            [24] 5243 	mov	dpl,r5
      0018DC C0 05            [24] 5244 	push	ar5
      0018DE 12 0E 50         [24] 5245 	lcall	_VBR_MOUNT_VBR
                                   5246 ;	main.c:55: UartPrint("Ptn. Mounted:");UartWriteNumber(i,HEX);
      0018E1 90 1F 60         [24] 5247 	mov	dptr,#___str_11
      0018E4 75 F0 80         [24] 5248 	mov	b,#0x80
      0018E7 12 01 84         [24] 5249 	lcall	_UartPrint
      0018EA D0 05            [24] 5250 	pop	ar5
      0018EC C0 05            [24] 5251 	push	ar5
      0018EE E4               [12] 5252 	clr	a
      0018EF C0 E0            [24] 5253 	push	acc
      0018F1 8D 82            [24] 5254 	mov	dpl,r5
      0018F3 12 01 B6         [24] 5255 	lcall	_UartWriteNumber
      0018F6 15 81            [12] 5256 	dec	sp
      0018F8 D0 05            [24] 5257 	pop	ar5
                                   5258 ;	main.c:56: if(VBR_FAT16_CHECK_COMPATIBILITY(i))
      0018FA 8D 82            [24] 5259 	mov	dpl,r5
      0018FC 12 10 6C         [24] 5260 	lcall	_VBR_FAT16_CHECK_COMPATIBILITY
      0018FF E5 82            [12] 5261 	mov	a,dpl
      001901 70 01            [24] 5262 	jnz	00208$
      001903 22               [24] 5263 	ret
      001904                       5264 00208$:
                                   5265 ;	main.c:58: UartPrint("Incmpat. FAT16\n");
      001904 90 1F 6E         [24] 5266 	mov	dptr,#___str_12
      001907 75 F0 80         [24] 5267 	mov	b,#0x80
      00190A 12 01 84         [24] 5268 	lcall	_UartPrint
                                   5269 ;	main.c:59: UartPrint(HALTING_MSG); while(1);
      00190D 90 1C 13         [24] 5270 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_196
      001910 75 F0 80         [24] 5271 	mov	b,#0x80
      001913 12 01 84         [24] 5272 	lcall	_UartPrint
      001916                       5273 00104$:
                                   5274 ;	main.c:61: break; //break from for loop
      001916 80 FE            [24] 5275 	sjmp	00104$
      001918                       5276 00133$:
                                   5277 ;	main.c:50: for(uint8_t i=0;i<4;i++)
      001918 0C               [12] 5278 	inc	r4
      001919 8C 05            [24] 5279 	mov	ar5,r4
                                   5280 ;	main.c:67: for(uint8_t i=0;i<4;i++)
      00191B 80 9A            [24] 5281 	sjmp	00132$
      00191D                       5282 00149$:
      00191D 7D 00            [12] 5283 	mov	r5,#0x00
      00191F                       5284 00135$:
      00191F BD 04 00         [24] 5285 	cjne	r5,#0x04,00209$
      001922                       5286 00209$:
      001922 50 75            [24] 5287 	jnc	00114$
                                   5288 ;	main.c:69: UartPrint("Ptn. ");UartWriteNumber(i,HEX);UartWrite('> ');
      001924 90 1F 7E         [24] 5289 	mov	dptr,#___str_13
      001927 75 F0 80         [24] 5290 	mov	b,#0x80
      00192A C0 07            [24] 5291 	push	ar7
      00192C C0 06            [24] 5292 	push	ar6
      00192E C0 05            [24] 5293 	push	ar5
      001930 12 01 84         [24] 5294 	lcall	_UartPrint
      001933 D0 05            [24] 5295 	pop	ar5
      001935 C0 05            [24] 5296 	push	ar5
      001937 E4               [12] 5297 	clr	a
      001938 C0 E0            [24] 5298 	push	acc
      00193A 8D 82            [24] 5299 	mov	dpl,r5
      00193C 12 01 B6         [24] 5300 	lcall	_UartWriteNumber
      00193F 15 81            [12] 5301 	dec	sp
      001941 75 82 3E         [24] 5302 	mov	dpl,#0x3e
      001944 12 00 FE         [24] 5303 	lcall	_UartWrite
      001947 D0 05            [24] 5304 	pop	ar5
      001949 D0 06            [24] 5305 	pop	ar6
      00194B D0 07            [24] 5306 	pop	ar7
                                   5307 ;	main.c:70: if(_resp & 1<<i) UartPrint("FAT16\n");
      00194D 8D F0            [24] 5308 	mov	b,r5
      00194F 05 F0            [12] 5309 	inc	b
      001951 7B 01            [12] 5310 	mov	r3,#0x01
      001953 7C 00            [12] 5311 	mov	r4,#0x00
      001955 80 06            [24] 5312 	sjmp	00212$
      001957                       5313 00211$:
      001957 EB               [12] 5314 	mov	a,r3
      001958 2B               [12] 5315 	add	a,r3
      001959 FB               [12] 5316 	mov	r3,a
      00195A EC               [12] 5317 	mov	a,r4
      00195B 33               [12] 5318 	rlc	a
      00195C FC               [12] 5319 	mov	r4,a
      00195D                       5320 00212$:
      00195D D5 F0 F7         [24] 5321 	djnz	b,00211$
      001960 EE               [12] 5322 	mov	a,r6
      001961 52 03            [12] 5323 	anl	ar3,a
      001963 EF               [12] 5324 	mov	a,r7
      001964 52 04            [12] 5325 	anl	ar4,a
      001966 EB               [12] 5326 	mov	a,r3
      001967 4C               [12] 5327 	orl	a,r4
      001968 60 17            [24] 5328 	jz	00112$
      00196A 90 1F 84         [24] 5329 	mov	dptr,#___str_14
      00196D 75 F0 80         [24] 5330 	mov	b,#0x80
      001970 C0 07            [24] 5331 	push	ar7
      001972 C0 06            [24] 5332 	push	ar6
      001974 C0 05            [24] 5333 	push	ar5
      001976 12 01 84         [24] 5334 	lcall	_UartPrint
      001979 D0 05            [24] 5335 	pop	ar5
      00197B D0 06            [24] 5336 	pop	ar6
      00197D D0 07            [24] 5337 	pop	ar7
      00197F 80 15            [24] 5338 	sjmp	00136$
      001981                       5339 00112$:
                                   5340 ;	main.c:71: else UartPrint("Unknown\n");
      001981 90 1F 8B         [24] 5341 	mov	dptr,#___str_15
      001984 75 F0 80         [24] 5342 	mov	b,#0x80
      001987 C0 07            [24] 5343 	push	ar7
      001989 C0 06            [24] 5344 	push	ar6
      00198B C0 05            [24] 5345 	push	ar5
      00198D 12 01 84         [24] 5346 	lcall	_UartPrint
      001990 D0 05            [24] 5347 	pop	ar5
      001992 D0 06            [24] 5348 	pop	ar6
      001994 D0 07            [24] 5349 	pop	ar7
      001996                       5350 00136$:
                                   5351 ;	main.c:67: for(uint8_t i=0;i<4;i++)
      001996 0D               [12] 5352 	inc	r5
      001997 80 86            [24] 5353 	sjmp	00135$
      001999                       5354 00114$:
                                   5355 ;	main.c:74: UartPrint("\nSlct Ptn. >\n");
      001999 90 1F 94         [24] 5356 	mov	dptr,#___str_16
      00199C 75 F0 80         [24] 5357 	mov	b,#0x80
      00199F C0 07            [24] 5358 	push	ar7
      0019A1 C0 06            [24] 5359 	push	ar6
      0019A3 12 01 84         [24] 5360 	lcall	_UartPrint
                                   5361 ;	main.c:75: _temp=UartScanByte();
      0019A6 12 03 C4         [24] 5362 	lcall	_UartScanByte
      0019A9 AD 82            [24] 5363 	mov	r5,dpl
      0019AB D0 06            [24] 5364 	pop	ar6
      0019AD D0 07            [24] 5365 	pop	ar7
                                   5366 ;	main.c:76: if( _temp<4 && (_resp & (1<<_temp)) )
      0019AF BD 04 00         [24] 5367 	cjne	r5,#0x04,00214$
      0019B2                       5368 00214$:
      0019B2 50 43            [24] 5369 	jnc	00119$
      0019B4 8D F0            [24] 5370 	mov	b,r5
      0019B6 05 F0            [12] 5371 	inc	b
      0019B8 7B 01            [12] 5372 	mov	r3,#0x01
      0019BA 7C 00            [12] 5373 	mov	r4,#0x00
      0019BC 80 06            [24] 5374 	sjmp	00217$
      0019BE                       5375 00216$:
      0019BE EB               [12] 5376 	mov	a,r3
      0019BF 2B               [12] 5377 	add	a,r3
      0019C0 FB               [12] 5378 	mov	r3,a
      0019C1 EC               [12] 5379 	mov	a,r4
      0019C2 33               [12] 5380 	rlc	a
      0019C3 FC               [12] 5381 	mov	r4,a
      0019C4                       5382 00217$:
      0019C4 D5 F0 F7         [24] 5383 	djnz	b,00216$
      0019C7 EB               [12] 5384 	mov	a,r3
      0019C8 52 06            [12] 5385 	anl	ar6,a
      0019CA EC               [12] 5386 	mov	a,r4
      0019CB 52 07            [12] 5387 	anl	ar7,a
      0019CD EE               [12] 5388 	mov	a,r6
      0019CE 4F               [12] 5389 	orl	a,r7
      0019CF 60 26            [24] 5390 	jz	00119$
                                   5391 ;	main.c:78: UartPrint("Ptn. Mounted:");UartWriteNumber(_temp,HEX);
      0019D1 90 1F 60         [24] 5392 	mov	dptr,#___str_11
      0019D4 75 F0 80         [24] 5393 	mov	b,#0x80
      0019D7 C0 05            [24] 5394 	push	ar5
      0019D9 12 01 84         [24] 5395 	lcall	_UartPrint
      0019DC D0 05            [24] 5396 	pop	ar5
      0019DE C0 05            [24] 5397 	push	ar5
      0019E0 E4               [12] 5398 	clr	a
      0019E1 C0 E0            [24] 5399 	push	acc
      0019E3 8D 82            [24] 5400 	mov	dpl,r5
      0019E5 12 01 B6         [24] 5401 	lcall	_UartWriteNumber
      0019E8 15 81            [12] 5402 	dec	sp
                                   5403 ;	main.c:79: UartWrite('\n');
      0019EA 75 82 0A         [24] 5404 	mov	dpl,#0x0a
      0019ED 12 00 FE         [24] 5405 	lcall	_UartWrite
      0019F0 D0 05            [24] 5406 	pop	ar5
                                   5407 ;	main.c:80: VBR_MOUNT_VBR(_temp);
      0019F2 8D 82            [24] 5408 	mov	dpl,r5
      0019F4 02 0E 50         [24] 5409 	ljmp	_VBR_MOUNT_VBR
      0019F7                       5410 00119$:
                                   5411 ;	main.c:84: UartPrint("Bad Ptn.\n");
      0019F7 90 1F A2         [24] 5412 	mov	dptr,#___str_17
      0019FA 75 F0 80         [24] 5413 	mov	b,#0x80
      0019FD 12 01 84         [24] 5414 	lcall	_UartPrint
                                   5415 ;	main.c:85: UartPrint(HALTING_MSG); while(1);
      001A00 90 1C 13         [24] 5416 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_196
      001A03 75 F0 80         [24] 5417 	mov	b,#0x80
      001A06 12 01 84         [24] 5418 	lcall	_UartPrint
      001A09                       5419 00116$:
      001A09 80 FE            [24] 5420 	sjmp	00116$
      001A0B                       5421 00129$:
                                   5422 ;	main.c:93: UartPrint("No FAT16 Ptn.\n");
      001A0B 90 1F AC         [24] 5423 	mov	dptr,#___str_18
      001A0E 75 F0 80         [24] 5424 	mov	b,#0x80
      001A11 12 01 84         [24] 5425 	lcall	_UartPrint
                                   5426 ;	main.c:94: UartPrint(HALTING_MSG); while(1);
      001A14 90 1C 13         [24] 5427 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_196
      001A17 75 F0 80         [24] 5428 	mov	b,#0x80
      001A1A 12 01 84         [24] 5429 	lcall	_UartPrint
      001A1D                       5430 00126$:
                                   5431 ;	main.c:97: }
      001A1D 80 FE            [24] 5432 	sjmp	00126$
                                   5433 ;------------------------------------------------------------
                                   5434 ;Allocation info for local variables in function 'SelectFileAndFileOpen'
                                   5435 ;------------------------------------------------------------
                                   5436 ;_result                   Allocated to registers r7 
                                   5437 ;i                         Allocated to registers r7 
                                   5438 ;j                         Allocated to registers r6 
                                   5439 ;------------------------------------------------------------
                                   5440 ;	main.c:99: void SelectFileAndFileOpen() __reentrant
                                   5441 ;	-----------------------------------------
                                   5442 ;	 function SelectFileAndFileOpen
                                   5443 ;	-----------------------------------------
      001A1F                       5444 _SelectFileAndFileOpen:
                                   5445 ;	main.c:102: FAT16_ROOTENTRY_SCAN_RESET();
      001A1F 12 12 E7         [24] 5446 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
                                   5447 ;	main.c:103: UartPrint("INDEX\t\tFILE\n\n");
      001A22 90 1F BB         [24] 5448 	mov	dptr,#___str_19
      001A25 75 F0 80         [24] 5449 	mov	b,#0x80
      001A28 12 01 84         [24] 5450 	lcall	_UartPrint
                                   5451 ;	main.c:106: for(uint8_t i=0;i<255;i++) 
      001A2B 7F 00            [12] 5452 	mov	r7,#0x00
      001A2D                       5453 00112$:
      001A2D BF FF 00         [24] 5454 	cjne	r7,#0xff,00148$
      001A30                       5455 00148$:
      001A30 50 58            [24] 5456 	jnc	00107$
                                   5457 ;	main.c:108: _result = FAT16_ROOTENTRY_SCAN();
      001A32 C0 07            [24] 5458 	push	ar7
      001A34 12 12 F9         [24] 5459 	lcall	_FAT16_ROOTENTRY_SCAN
      001A37 AE 82            [24] 5460 	mov	r6,dpl
      001A39 D0 07            [24] 5461 	pop	ar7
                                   5462 ;	main.c:109: if(_result==0xff) break; //end of scan
      001A3B BE FF 02         [24] 5463 	cjne	r6,#0xff,00150$
      001A3E 80 4A            [24] 5464 	sjmp	00107$
      001A40                       5465 00150$:
                                   5466 ;	main.c:110: else if (_result==0) //valid file
      001A40 EE               [12] 5467 	mov	a,r6
      001A41 70 44            [24] 5468 	jnz	00113$
                                   5469 ;	main.c:112: UartWriteNumber(__global_rootEntry.entry_index,DEC); //print root entry index
      001A43 78 7E            [12] 5470 	mov	r0,#(___global_rootEntry + 0x0012)
      001A45 86 06            [24] 5471 	mov	ar6,@r0
      001A47 C0 07            [24] 5472 	push	ar7
      001A49 74 01            [12] 5473 	mov	a,#0x01
      001A4B C0 E0            [24] 5474 	push	acc
      001A4D 8E 82            [24] 5475 	mov	dpl,r6
      001A4F 12 01 B6         [24] 5476 	lcall	_UartWriteNumber
      001A52 15 81            [12] 5477 	dec	sp
                                   5478 ;	main.c:113: UartWrite('\t');
      001A54 75 82 09         [24] 5479 	mov	dpl,#0x09
      001A57 12 00 FE         [24] 5480 	lcall	_UartWrite
                                   5481 ;	main.c:114: UartWrite('\t');
      001A5A 75 82 09         [24] 5482 	mov	dpl,#0x09
      001A5D 12 00 FE         [24] 5483 	lcall	_UartWrite
      001A60 D0 07            [24] 5484 	pop	ar7
                                   5485 ;	main.c:115: for(uint8_t j=0;j<11;j++)UartWrite(__global_rootEntry.name[j]); //print name
      001A62 7E 00            [12] 5486 	mov	r6,#0x00
      001A64                       5487 00109$:
      001A64 BE 0B 00         [24] 5488 	cjne	r6,#0x0b,00152$
      001A67                       5489 00152$:
      001A67 50 14            [24] 5490 	jnc	00101$
      001A69 EE               [12] 5491 	mov	a,r6
      001A6A 24 6C            [12] 5492 	add	a,#___global_rootEntry
      001A6C F9               [12] 5493 	mov	r1,a
      001A6D 87 82            [24] 5494 	mov	dpl,@r1
      001A6F C0 07            [24] 5495 	push	ar7
      001A71 C0 06            [24] 5496 	push	ar6
      001A73 12 00 FE         [24] 5497 	lcall	_UartWrite
      001A76 D0 06            [24] 5498 	pop	ar6
      001A78 D0 07            [24] 5499 	pop	ar7
      001A7A 0E               [12] 5500 	inc	r6
      001A7B 80 E7            [24] 5501 	sjmp	00109$
      001A7D                       5502 00101$:
                                   5503 ;	main.c:116: UartWrite('\n');
      001A7D 75 82 0A         [24] 5504 	mov	dpl,#0x0a
      001A80 C0 07            [24] 5505 	push	ar7
      001A82 12 00 FE         [24] 5506 	lcall	_UartWrite
      001A85 D0 07            [24] 5507 	pop	ar7
      001A87                       5508 00113$:
                                   5509 ;	main.c:106: for(uint8_t i=0;i<255;i++) 
      001A87 0F               [12] 5510 	inc	r7
      001A88 80 A3            [24] 5511 	sjmp	00112$
      001A8A                       5512 00107$:
                                   5513 ;	main.c:120: UartPrint("Slct index >\n");
      001A8A 90 1F C9         [24] 5514 	mov	dptr,#___str_20
      001A8D 75 F0 80         [24] 5515 	mov	b,#0x80
      001A90 12 01 84         [24] 5516 	lcall	_UartPrint
                                   5517 ;	main.c:121: _result=UartScanByte();
      001A93 12 03 C4         [24] 5518 	lcall	_UartScanByte
                                   5519 ;	main.c:122: FAT16_ROOTENTRY_READ(_result); //load the selected
      001A96 7E 00            [12] 5520 	mov	r6,#0x00
      001A98 8E 83            [24] 5521 	mov	dph,r6
                                   5522 ;	main.c:123: }
      001A9A 02 12 C6         [24] 5523 	ljmp	_FAT16_ROOTENTRY_READ
                                   5524 ;------------------------------------------------------------
                                   5525 ;Allocation info for local variables in function 'main'
                                   5526 ;------------------------------------------------------------
                                   5527 ;buff                      Allocated with name '_main_buff_65536_216'
                                   5528 ;_resp                     Allocated to registers r7 
                                   5529 ;xram_addr                 Allocated with name '_main_xram_addr_65536_216'
                                   5530 ;_t                        Allocated to registers r5 r6 
                                   5531 ;wastetime                 Allocated to registers r4 
                                   5532 ;i                         Allocated to registers r5 
                                   5533 ;i                         Allocated to registers r7 
                                   5534 ;------------------------------------------------------------
                                   5535 ;	main.c:134: void main(void)
                                   5536 ;	-----------------------------------------
                                   5537 ;	 function main
                                   5538 ;	-----------------------------------------
      001A9D                       5539 _main:
                                   5540 ;	main.c:143: uint8_t _resp=0;
      001A9D 7F 00            [12] 5541 	mov	r7,#0x00
                                   5542 ;	main.c:150: UartBegin();
      001A9F C0 07            [24] 5543 	push	ar7
      001AA1 12 00 DB         [24] 5544 	lcall	_UartBegin
                                   5545 ;	main.c:151: spi_init(); 
      001AA4 12 04 8A         [24] 5546 	lcall	_spi_init
                                   5547 ;	main.c:152: SDinit();
      001AA7 12 06 C3         [24] 5548 	lcall	_SDinit
      001AAA D0 07            [24] 5549 	pop	ar7
                                   5550 ;	main.c:156: while(UartReadReady())UartRead(); //flush
      001AAC                       5551 00101$:
      001AAC C0 07            [24] 5552 	push	ar7
      001AAE 12 00 EA         [24] 5553 	lcall	_UartReadReady
      001AB1 E5 82            [12] 5554 	mov	a,dpl
      001AB3 D0 07            [24] 5555 	pop	ar7
      001AB5 60 09            [24] 5556 	jz	00152$
      001AB7 C0 07            [24] 5557 	push	ar7
      001AB9 12 00 F5         [24] 5558 	lcall	_UartRead
      001ABC D0 07            [24] 5559 	pop	ar7
                                   5560 ;	main.c:161: for(unsigned int _t=0;_t<65000;_t++)
      001ABE 80 EC            [24] 5561 	sjmp	00101$
      001AC0                       5562 00152$:
      001AC0 7D 00            [12] 5563 	mov	r5,#0x00
      001AC2 7E 00            [12] 5564 	mov	r6,#0x00
      001AC4                       5565 00136$:
      001AC4 C3               [12] 5566 	clr	c
      001AC5 ED               [12] 5567 	mov	a,r5
      001AC6 94 E8            [12] 5568 	subb	a,#0xe8
      001AC8 EE               [12] 5569 	mov	a,r6
      001AC9 94 FD            [12] 5570 	subb	a,#0xfd
      001ACB 50 2B            [24] 5571 	jnc	00107$
                                   5572 ;	main.c:163: if(UartReadReady())
      001ACD C0 07            [24] 5573 	push	ar7
      001ACF C0 06            [24] 5574 	push	ar6
      001AD1 C0 05            [24] 5575 	push	ar5
      001AD3 12 00 EA         [24] 5576 	lcall	_UartReadReady
      001AD6 E5 82            [12] 5577 	mov	a,dpl
      001AD8 D0 05            [24] 5578 	pop	ar5
      001ADA D0 06            [24] 5579 	pop	ar6
      001ADC D0 07            [24] 5580 	pop	ar7
      001ADE 60 07            [24] 5581 	jz	00151$
                                   5582 ;	main.c:165: _resp=UartRead();
      001AE0 12 00 F5         [24] 5583 	lcall	_UartRead
      001AE3 AF 82            [24] 5584 	mov	r7,dpl
                                   5585 ;	main.c:166: break;
                                   5586 ;	main.c:168: for(uint8_t wastetime=0;wastetime<3;wastetime++);
      001AE5 80 11            [24] 5587 	sjmp	00107$
      001AE7                       5588 00151$:
      001AE7 7C 00            [12] 5589 	mov	r4,#0x00
      001AE9                       5590 00133$:
      001AE9 BC 03 00         [24] 5591 	cjne	r4,#0x03,00227$
      001AEC                       5592 00227$:
      001AEC 50 03            [24] 5593 	jnc	00137$
      001AEE 0C               [12] 5594 	inc	r4
      001AEF 80 F8            [24] 5595 	sjmp	00133$
      001AF1                       5596 00137$:
                                   5597 ;	main.c:161: for(unsigned int _t=0;_t<65000;_t++)
      001AF1 0D               [12] 5598 	inc	r5
      001AF2 BD 00 CF         [24] 5599 	cjne	r5,#0x00,00136$
      001AF5 0E               [12] 5600 	inc	r6
      001AF6 80 CC            [24] 5601 	sjmp	00136$
      001AF8                       5602 00107$:
                                   5603 ;	main.c:173: switch (_resp)
      001AF8 BF 56 10         [24] 5604 	cjne	r7,#0x56,00113$
                                   5605 ;	main.c:176: UartPrint("ISA:FS0:8052\n");
      001AFB 90 1F D7         [24] 5606 	mov	dptr,#___str_21
      001AFE 75 F0 80         [24] 5607 	mov	b,#0x80
      001B01 12 01 84         [24] 5608 	lcall	_UartPrint
                                   5609 ;	main.c:177: while(SL_getcmd()); //break when command is 0
      001B04                       5610 00109$:
      001B04 12 18 16         [24] 5611 	lcall	_SL_getcmd
      001B07 E5 82            [12] 5612 	mov	a,dpl
      001B09 70 F9            [24] 5613 	jnz	00109$
                                   5614 ;	main.c:181: }
      001B0B                       5615 00113$:
                                   5616 ;	main.c:186: SelectFAT16PartitionPrompt();
      001B0B 12 18 85         [24] 5617 	lcall	_SelectFAT16PartitionPrompt
                                   5618 ;	main.c:193: if(FAT16_FILE_OPEN(DEFAULT_LOAD_FILENAME)==0)
      001B0E 90 1F E5         [24] 5619 	mov	dptr,#___str_22
      001B11 75 F0 80         [24] 5620 	mov	b,#0x80
      001B14 12 13 1C         [24] 5621 	lcall	_FAT16_FILE_OPEN
      001B17 E5 82            [12] 5622 	mov	a,dpl
      001B19 70 11            [24] 5623 	jnz	00115$
                                   5624 ;	main.c:195: UartPrint(DEFAULT_LOAD_FILENAME);
      001B1B 90 1F E5         [24] 5625 	mov	dptr,#___str_22
      001B1E 75 F0 80         [24] 5626 	mov	b,#0x80
      001B21 12 01 84         [24] 5627 	lcall	_UartPrint
                                   5628 ;	main.c:196: UartWrite('\n');
      001B24 75 82 0A         [24] 5629 	mov	dpl,#0x0a
      001B27 12 00 FE         [24] 5630 	lcall	_UartWrite
      001B2A 80 03            [24] 5631 	sjmp	00159$
      001B2C                       5632 00115$:
                                   5633 ;	main.c:198: else SelectFileAndFileOpen();
      001B2C 12 1A 1F         [24] 5634 	lcall	_SelectFileAndFileOpen
                                   5635 ;	main.c:200: while(1)
      001B2F                       5636 00159$:
      001B2F                       5637 00127$:
                                   5638 ;	main.c:202: xram_addr=(__xdata unsigned char*)(uint16_t)__global_rootEntry.bytes_read;        
      001B2F 78 80            [12] 5639 	mov	r0,#(___global_rootEntry + 0x0014)
      001B31 86 06            [24] 5640 	mov	ar6,@r0
      001B33 08               [12] 5641 	inc	r0
      001B34 86 07            [24] 5642 	mov	ar7,@r0
      001B36 8E 3C            [24] 5643 	mov	_main_xram_addr_65536_216,r6
      001B38 8F 3D            [24] 5644 	mov	(_main_xram_addr_65536_216 + 1),r7
                                   5645 ;	main.c:203: _resp=FAT16_FILE_READ(FILE_BUFF_SIZE,buff);
      001B3A 74 2C            [12] 5646 	mov	a,#_main_buff_65536_216
      001B3C C0 E0            [24] 5647 	push	acc
      001B3E 74 00            [12] 5648 	mov	a,#(_main_buff_65536_216 >> 8)
      001B40 C0 E0            [24] 5649 	push	acc
      001B42 74 40            [12] 5650 	mov	a,#0x40
      001B44 C0 E0            [24] 5651 	push	acc
      001B46 75 82 10         [24] 5652 	mov	dpl,#0x10
      001B49 12 14 99         [24] 5653 	lcall	_FAT16_FILE_READ
      001B4C AD 82            [24] 5654 	mov	r5,dpl
      001B4E 15 81            [12] 5655 	dec	sp
      001B50 15 81            [12] 5656 	dec	sp
      001B52 15 81            [12] 5657 	dec	sp
                                   5658 ;	main.c:204: if(_resp==0) break;
      001B54 ED               [12] 5659 	mov	a,r5
      001B55 70 03            [24] 5660 	jnz	00234$
      001B57 02 1B E6         [24] 5661 	ljmp	00128$
      001B5A                       5662 00234$:
                                   5663 ;	main.c:205: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001B5A 7D 00            [12] 5664 	mov	r5,#0x00
      001B5C                       5665 00139$:
      001B5C BD 10 00         [24] 5666 	cjne	r5,#0x10,00235$
      001B5F                       5667 00235$:
      001B5F 50 55            [24] 5668 	jnc	00119$
                                   5669 ;	main.c:207: UartPrintNumber(__global_rootEntry.bytes_read);
      001B61 78 80            [12] 5670 	mov	r0,#(___global_rootEntry + 0x0014)
      001B63 86 02            [24] 5671 	mov	ar2,@r0
      001B65 08               [12] 5672 	inc	r0
      001B66 86 03            [24] 5673 	mov	ar3,@r0
      001B68 08               [12] 5674 	inc	r0
      001B69 86 04            [24] 5675 	mov	ar4,@r0
      001B6B 08               [12] 5676 	inc	r0
      001B6C 86 07            [24] 5677 	mov	ar7,@r0
      001B6E 8A 82            [24] 5678 	mov	dpl,r2
      001B70 8B 83            [24] 5679 	mov	dph,r3
      001B72 8C F0            [24] 5680 	mov	b,r4
      001B74 EF               [12] 5681 	mov	a,r7
      001B75 C0 05            [24] 5682 	push	ar5
      001B77 12 02 CA         [24] 5683 	lcall	_UartPrintNumber
                                   5684 ;	main.c:208: UartWrite('/');
      001B7A 75 82 2F         [24] 5685 	mov	dpl,#0x2f
      001B7D 12 00 FE         [24] 5686 	lcall	_UartWrite
                                   5687 ;	main.c:209: UartPrintNumber(__global_rootEntry.size);
      001B80 78 7A            [12] 5688 	mov	r0,#(___global_rootEntry + 0x000e)
      001B82 86 03            [24] 5689 	mov	ar3,@r0
      001B84 08               [12] 5690 	inc	r0
      001B85 86 04            [24] 5691 	mov	ar4,@r0
      001B87 08               [12] 5692 	inc	r0
      001B88 86 06            [24] 5693 	mov	ar6,@r0
      001B8A 08               [12] 5694 	inc	r0
      001B8B 86 07            [24] 5695 	mov	ar7,@r0
      001B8D 8B 82            [24] 5696 	mov	dpl,r3
      001B8F 8C 83            [24] 5697 	mov	dph,r4
      001B91 8E F0            [24] 5698 	mov	b,r6
      001B93 EF               [12] 5699 	mov	a,r7
      001B94 12 02 CA         [24] 5700 	lcall	_UartPrintNumber
                                   5701 ;	main.c:210: UartPrint("\r");
      001B97 90 1F EC         [24] 5702 	mov	dptr,#___str_23
      001B9A 75 F0 80         [24] 5703 	mov	b,#0x80
      001B9D 12 01 84         [24] 5704 	lcall	_UartPrint
      001BA0 D0 05            [24] 5705 	pop	ar5
                                   5706 ;	main.c:215: *(xram_addr+i) = buff[i];
      001BA2 ED               [12] 5707 	mov	a,r5
      001BA3 25 3C            [12] 5708 	add	a,_main_xram_addr_65536_216
      001BA5 F5 82            [12] 5709 	mov	dpl,a
      001BA7 E4               [12] 5710 	clr	a
      001BA8 35 3D            [12] 5711 	addc	a,(_main_xram_addr_65536_216 + 1)
      001BAA F5 83            [12] 5712 	mov	dph,a
      001BAC ED               [12] 5713 	mov	a,r5
      001BAD 24 2C            [12] 5714 	add	a,#_main_buff_65536_216
      001BAF F9               [12] 5715 	mov	r1,a
      001BB0 E7               [12] 5716 	mov	a,@r1
      001BB1 FF               [12] 5717 	mov	r7,a
      001BB2 F0               [24] 5718 	movx	@dptr,a
                                   5719 ;	main.c:205: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001BB3 0D               [12] 5720 	inc	r5
      001BB4 80 A6            [24] 5721 	sjmp	00139$
      001BB6                       5722 00119$:
                                   5723 ;	main.c:219: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001BB6 7F 00            [12] 5724 	mov	r7,#0x00
      001BB8                       5725 00142$:
      001BB8 BF 10 00         [24] 5726 	cjne	r7,#0x10,00237$
      001BBB                       5727 00237$:
      001BBB 40 03            [24] 5728 	jc	00238$
      001BBD 02 1B 2F         [24] 5729 	ljmp	00127$
      001BC0                       5730 00238$:
                                   5731 ;	main.c:221: if(buff[i]!=*(xram_addr+i)) 
      001BC0 EF               [12] 5732 	mov	a,r7
      001BC1 24 2C            [12] 5733 	add	a,#_main_buff_65536_216
      001BC3 F9               [12] 5734 	mov	r1,a
      001BC4 87 06            [24] 5735 	mov	ar6,@r1
      001BC6 EF               [12] 5736 	mov	a,r7
      001BC7 25 3C            [12] 5737 	add	a,_main_xram_addr_65536_216
      001BC9 F5 82            [12] 5738 	mov	dpl,a
      001BCB E4               [12] 5739 	clr	a
      001BCC 35 3D            [12] 5740 	addc	a,(_main_xram_addr_65536_216 + 1)
      001BCE F5 83            [12] 5741 	mov	dph,a
      001BD0 E0               [24] 5742 	movx	a,@dptr
      001BD1 FD               [12] 5743 	mov	r5,a
      001BD2 EE               [12] 5744 	mov	a,r6
      001BD3 B5 05 02         [24] 5745 	cjne	a,ar5,00239$
      001BD6 80 0B            [24] 5746 	sjmp	00143$
      001BD8                       5747 00239$:
                                   5748 ;	main.c:223: UartPrint("\nVerif. fail");
      001BD8 90 1F EE         [24] 5749 	mov	dptr,#___str_24
      001BDB 75 F0 80         [24] 5750 	mov	b,#0x80
      001BDE 12 01 84         [24] 5751 	lcall	_UartPrint
                                   5752 ;	main.c:224: while(1);
      001BE1                       5753 00121$:
      001BE1 80 FE            [24] 5754 	sjmp	00121$
      001BE3                       5755 00143$:
                                   5756 ;	main.c:219: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001BE3 0F               [12] 5757 	inc	r7
      001BE4 80 D2            [24] 5758 	sjmp	00142$
      001BE6                       5759 00128$:
                                   5760 ;	main.c:230: SELF_RESET_PORT &= ~(1<<SELF_RESET_PIN);
      001BE6 53 90 EF         [24] 5761 	anl	_P1,#0xef
                                   5762 ;	main.c:233: while(1);    
      001BE9                       5763 00130$:
                                   5764 ;	main.c:235: }
      001BE9 80 FE            [24] 5765 	sjmp	00130$
                                   5766 	.area CSEG    (CODE)
                                   5767 	.area CONST   (CODE)
                                   5768 	.area CONST   (CODE)
      001EAB                       5769 ___str_0:
      001EAB 4E 75 6D 62 65 72 28  5770 	.ascii "Number(hex) < "
             68 65 78 29 20 3C 20
      001EB9 00                    5771 	.db 0x00
                                   5772 	.area CSEG    (CODE)
                                   5773 	.area CONST   (CODE)
      001EBA                       5774 ___str_1:
      001EBA 56 42 52 3A 20 73 74  5775 	.ascii "VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start"
             61 72 74 2C 62 70 73
             2C 73 70 63 2C 72 65
             73 65 72 76 65 64 53
             65 63 74 6F 72 73 2C
             6E 66 61 74 2C 6E 72
             6F 6F 74 65 2C 73 70
             66 2C 66 61 74 5F 73
             74 61 72 74
      001EF6 2C 72 6F 6F 74 65 5F  5776 	.ascii ",roote_start,data_start"
             73 74 61 72 74 2C 64
             61 74 61 5F 73 74 61
             72 74
      001F0D 0A                    5777 	.db 0x0a
      001F0E 00                    5778 	.db 0x00
                                   5779 	.area CSEG    (CODE)
                                   5780 	.area CONST   (CODE)
      001F0F                       5781 ___str_2:
      001F0F 0A                    5782 	.db 0x0a
      001F10 52 4F 4F 54 5F 45 4E  5783 	.ascii "ROOT_ENTRY_INDEX:"
             54 52 59 5F 49 4E 44
             45 58 3A
      001F21 00                    5784 	.db 0x00
                                   5785 	.area CSEG    (CODE)
                                   5786 	.area CONST   (CODE)
      001F22                       5787 ___str_3:
      001F22 0A                    5788 	.db 0x0a
      001F23 46 49 4C 45 3A 20     5789 	.ascii "FILE: "
      001F29 00                    5790 	.db 0x00
                                   5791 	.area CSEG    (CODE)
                                   5792 	.area CONST   (CODE)
      001F2A                       5793 ___str_4:
      001F2A 0A                    5794 	.db 0x0a
      001F2B 53 54 41 52 54 3A 20  5795 	.ascii "START: "
      001F32 00                    5796 	.db 0x00
                                   5797 	.area CSEG    (CODE)
                                   5798 	.area CONST   (CODE)
      001F33                       5799 ___str_5:
      001F33 0A                    5800 	.db 0x0a
      001F34 53 49 5A 45 3A 20     5801 	.ascii "SIZE: "
      001F3A 00                    5802 	.db 0x00
                                   5803 	.area CSEG    (CODE)
                                   5804 	.area CONST   (CODE)
      001F3B                       5805 ___str_6:
      001F3B 0A                    5806 	.db 0x0a
      001F3C 41 54 54 52 3A 20 30  5807 	.ascii "ATTR: 0x"
             78
      001F44 00                    5808 	.db 0x00
                                   5809 	.area CSEG    (CODE)
      001BEB                       5810 _FAT16_FILE_READ_power2error_65536_177:
      001BEB 6E 62 79 74 65 73 20  5811 	.ascii "nbytes must be power of 2"
             6D 75 73 74 20 62 65
             20 70 6F 77 65 72 20
             6F 66 20 32
      001C04 0A                    5812 	.db 0x0a
      001C05 00                    5813 	.db 0x00
                                   5814 	.area CONST   (CODE)
      001F45                       5815 ___str_8:
      001F45 46 49 4C 45 20 4E 4F  5816 	.ascii "FILE NOT FOUND"
             54 20 46 4F 55 4E 44
      001F53 0A                    5817 	.db 0x0a
      001F54 2E                    5818 	.ascii "."
      001F55 00                    5819 	.db 0x00
                                   5820 	.area CSEG    (CODE)
      001C06                       5821 _SERIAL_LOADER_VERSION_INFO:
      001C06 49 53 41 3A 53 30 3A  5822 	.ascii "ISA:S0:8052"
             38 30 35 32
      001C11 0A                    5823 	.db 0x0a
      001C12 00                    5824 	.db 0x00
      001C13                       5825 _SelectFAT16PartitionPrompt_HALTING_MSG_65536_196:
      001C13 48 41 4C 54 21        5826 	.ascii "HALT!"
      001C18 00                    5827 	.db 0x00
                                   5828 	.area CONST   (CODE)
      001F56                       5829 ___str_10:
      001F56 42 41 44 20 4D 42 52  5830 	.ascii "BAD MBR!"
             21
      001F5E 0A                    5831 	.db 0x0a
      001F5F 00                    5832 	.db 0x00
                                   5833 	.area CSEG    (CODE)
                                   5834 	.area CONST   (CODE)
      001F60                       5835 ___str_11:
      001F60 50 74 6E 2E 20 4D 6F  5836 	.ascii "Ptn. Mounted:"
             75 6E 74 65 64 3A
      001F6D 00                    5837 	.db 0x00
                                   5838 	.area CSEG    (CODE)
                                   5839 	.area CONST   (CODE)
      001F6E                       5840 ___str_12:
      001F6E 49 6E 63 6D 70 61 74  5841 	.ascii "Incmpat. FAT16"
             2E 20 46 41 54 31 36
      001F7C 0A                    5842 	.db 0x0a
      001F7D 00                    5843 	.db 0x00
                                   5844 	.area CSEG    (CODE)
                                   5845 	.area CONST   (CODE)
      001F7E                       5846 ___str_13:
      001F7E 50 74 6E 2E 20        5847 	.ascii "Ptn. "
      001F83 00                    5848 	.db 0x00
                                   5849 	.area CSEG    (CODE)
                                   5850 	.area CONST   (CODE)
      001F84                       5851 ___str_14:
      001F84 46 41 54 31 36        5852 	.ascii "FAT16"
      001F89 0A                    5853 	.db 0x0a
      001F8A 00                    5854 	.db 0x00
                                   5855 	.area CSEG    (CODE)
                                   5856 	.area CONST   (CODE)
      001F8B                       5857 ___str_15:
      001F8B 55 6E 6B 6E 6F 77 6E  5858 	.ascii "Unknown"
      001F92 0A                    5859 	.db 0x0a
      001F93 00                    5860 	.db 0x00
                                   5861 	.area CSEG    (CODE)
                                   5862 	.area CONST   (CODE)
      001F94                       5863 ___str_16:
      001F94 0A                    5864 	.db 0x0a
      001F95 53 6C 63 74 20 50 74  5865 	.ascii "Slct Ptn. >"
             6E 2E 20 3E
      001FA0 0A                    5866 	.db 0x0a
      001FA1 00                    5867 	.db 0x00
                                   5868 	.area CSEG    (CODE)
                                   5869 	.area CONST   (CODE)
      001FA2                       5870 ___str_17:
      001FA2 42 61 64 20 50 74 6E  5871 	.ascii "Bad Ptn."
             2E
      001FAA 0A                    5872 	.db 0x0a
      001FAB 00                    5873 	.db 0x00
                                   5874 	.area CSEG    (CODE)
                                   5875 	.area CONST   (CODE)
      001FAC                       5876 ___str_18:
      001FAC 4E 6F 20 46 41 54 31  5877 	.ascii "No FAT16 Ptn."
             36 20 50 74 6E 2E
      001FB9 0A                    5878 	.db 0x0a
      001FBA 00                    5879 	.db 0x00
                                   5880 	.area CSEG    (CODE)
                                   5881 	.area CONST   (CODE)
      001FBB                       5882 ___str_19:
      001FBB 49 4E 44 45 58        5883 	.ascii "INDEX"
      001FC0 09                    5884 	.db 0x09
      001FC1 09                    5885 	.db 0x09
      001FC2 46 49 4C 45           5886 	.ascii "FILE"
      001FC6 0A                    5887 	.db 0x0a
      001FC7 0A                    5888 	.db 0x0a
      001FC8 00                    5889 	.db 0x00
                                   5890 	.area CSEG    (CODE)
                                   5891 	.area CONST   (CODE)
      001FC9                       5892 ___str_20:
      001FC9 53 6C 63 74 20 69 6E  5893 	.ascii "Slct index >"
             64 65 78 20 3E
      001FD5 0A                    5894 	.db 0x0a
      001FD6 00                    5895 	.db 0x00
                                   5896 	.area CSEG    (CODE)
                                   5897 	.area CONST   (CODE)
      001FD7                       5898 ___str_21:
      001FD7 49 53 41 3A 46 53 30  5899 	.ascii "ISA:FS0:8052"
             3A 38 30 35 32
      001FE3 0A                    5900 	.db 0x0a
      001FE4 00                    5901 	.db 0x00
                                   5902 	.area CSEG    (CODE)
                                   5903 	.area CONST   (CODE)
      001FE5                       5904 ___str_22:
      001FE5 46 57 2E 42 49 4E     5905 	.ascii "FW.BIN"
      001FEB 00                    5906 	.db 0x00
                                   5907 	.area CSEG    (CODE)
                                   5908 	.area CONST   (CODE)
      001FEC                       5909 ___str_23:
      001FEC 0D                    5910 	.db 0x0d
      001FED 00                    5911 	.db 0x00
                                   5912 	.area CSEG    (CODE)
                                   5913 	.area CONST   (CODE)
      001FEE                       5914 ___str_24:
      001FEE 0A                    5915 	.db 0x0a
      001FEF 56 65 72 69 66 2E 20  5916 	.ascii "Verif. fail"
             66 61 69 6C
      001FFA 00                    5917 	.db 0x00
                                   5918 	.area CSEG    (CODE)
                                   5919 	.area XINIT   (CODE)
                                   5920 	.area CABS    (ABS,CODE)
