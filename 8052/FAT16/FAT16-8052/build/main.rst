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
                                     72 	.globl _exitApp
                                     73 	.globl _enterApp
                                     74 	.globl _TF2
                                     75 	.globl _EXF2
                                     76 	.globl _RCLK
                                     77 	.globl _TCLK
                                     78 	.globl _EXEN2
                                     79 	.globl _TR2
                                     80 	.globl _C_T2
                                     81 	.globl _CP_RL2
                                     82 	.globl _T2CON_7
                                     83 	.globl _T2CON_6
                                     84 	.globl _T2CON_5
                                     85 	.globl _T2CON_4
                                     86 	.globl _T2CON_3
                                     87 	.globl _T2CON_2
                                     88 	.globl _T2CON_1
                                     89 	.globl _T2CON_0
                                     90 	.globl _PT2
                                     91 	.globl _ET2
                                     92 	.globl _CY
                                     93 	.globl _AC
                                     94 	.globl _F0
                                     95 	.globl _RS1
                                     96 	.globl _RS0
                                     97 	.globl _OV
                                     98 	.globl _F1
                                     99 	.globl _P
                                    100 	.globl _PS
                                    101 	.globl _PT1
                                    102 	.globl _PX1
                                    103 	.globl _PT0
                                    104 	.globl _PX0
                                    105 	.globl _RD
                                    106 	.globl _WR
                                    107 	.globl _T1
                                    108 	.globl _T0
                                    109 	.globl _INT1
                                    110 	.globl _INT0
                                    111 	.globl _TXD
                                    112 	.globl _RXD
                                    113 	.globl _P3_7
                                    114 	.globl _P3_6
                                    115 	.globl _P3_5
                                    116 	.globl _P3_4
                                    117 	.globl _P3_3
                                    118 	.globl _P3_2
                                    119 	.globl _P3_1
                                    120 	.globl _P3_0
                                    121 	.globl _EA
                                    122 	.globl _ES
                                    123 	.globl _ET1
                                    124 	.globl _EX1
                                    125 	.globl _ET0
                                    126 	.globl _EX0
                                    127 	.globl _P2_7
                                    128 	.globl _P2_6
                                    129 	.globl _P2_5
                                    130 	.globl _P2_4
                                    131 	.globl _P2_3
                                    132 	.globl _P2_2
                                    133 	.globl _P2_1
                                    134 	.globl _P2_0
                                    135 	.globl _SM0
                                    136 	.globl _SM1
                                    137 	.globl _SM2
                                    138 	.globl _REN
                                    139 	.globl _TB8
                                    140 	.globl _RB8
                                    141 	.globl _TI
                                    142 	.globl _RI
                                    143 	.globl _P1_7
                                    144 	.globl _P1_6
                                    145 	.globl _P1_5
                                    146 	.globl _P1_4
                                    147 	.globl _P1_3
                                    148 	.globl _P1_2
                                    149 	.globl _P1_1
                                    150 	.globl _P1_0
                                    151 	.globl _TF1
                                    152 	.globl _TR1
                                    153 	.globl _TF0
                                    154 	.globl _TR0
                                    155 	.globl _IE1
                                    156 	.globl _IT1
                                    157 	.globl _IE0
                                    158 	.globl _IT0
                                    159 	.globl _P0_7
                                    160 	.globl _P0_6
                                    161 	.globl _P0_5
                                    162 	.globl _P0_4
                                    163 	.globl _P0_3
                                    164 	.globl _P0_2
                                    165 	.globl _P0_1
                                    166 	.globl _P0_0
                                    167 	.globl _TH2
                                    168 	.globl _TL2
                                    169 	.globl _RCAP2H
                                    170 	.globl _RCAP2L
                                    171 	.globl _T2CON
                                    172 	.globl _B
                                    173 	.globl _ACC
                                    174 	.globl _PSW
                                    175 	.globl _IP
                                    176 	.globl _P3
                                    177 	.globl _IE
                                    178 	.globl _P2
                                    179 	.globl _SBUF
                                    180 	.globl _SCON
                                    181 	.globl _P1
                                    182 	.globl _TH1
                                    183 	.globl _TH0
                                    184 	.globl _TL1
                                    185 	.globl _TL0
                                    186 	.globl _TMOD
                                    187 	.globl _TCON
                                    188 	.globl _PCON
                                    189 	.globl _DPH
                                    190 	.globl _DPL
                                    191 	.globl _SP
                                    192 	.globl _P0
                                    193 	.globl _EEPROM_WRITE_PROTECTION
                                    194 	.globl _HELPER_filename_to_8dot3filename_PARM_2
                                    195 	.globl _SDreadBlock_PARM_2
                                    196 	.globl _sd_acmd_PARM_2
                                    197 	.globl _sd_cmd_PARM_2
                                    198 	.globl _spi_transfer_all_PARM_3
                                    199 	.globl _spi_transfer_all_PARM_2
                                    200 	.globl _UartReadBuff_PARM_2
                                    201 	.globl _UartWriteBuff_PARM_2
                                    202 	.globl _hex2dec_PARM_2
                                    203 ;--------------------------------------------------------
                                    204 ; special function registers
                                    205 ;--------------------------------------------------------
                                    206 	.area RSEG    (ABS,DATA)
      000000                        207 	.org 0x0000
                           000080   208 _P0	=	0x0080
                           000081   209 _SP	=	0x0081
                           000082   210 _DPL	=	0x0082
                           000083   211 _DPH	=	0x0083
                           000087   212 _PCON	=	0x0087
                           000088   213 _TCON	=	0x0088
                           000089   214 _TMOD	=	0x0089
                           00008A   215 _TL0	=	0x008a
                           00008B   216 _TL1	=	0x008b
                           00008C   217 _TH0	=	0x008c
                           00008D   218 _TH1	=	0x008d
                           000090   219 _P1	=	0x0090
                           000098   220 _SCON	=	0x0098
                           000099   221 _SBUF	=	0x0099
                           0000A0   222 _P2	=	0x00a0
                           0000A8   223 _IE	=	0x00a8
                           0000B0   224 _P3	=	0x00b0
                           0000B8   225 _IP	=	0x00b8
                           0000D0   226 _PSW	=	0x00d0
                           0000E0   227 _ACC	=	0x00e0
                           0000F0   228 _B	=	0x00f0
                           0000C8   229 _T2CON	=	0x00c8
                           0000CA   230 _RCAP2L	=	0x00ca
                           0000CB   231 _RCAP2H	=	0x00cb
                           0000CC   232 _TL2	=	0x00cc
                           0000CD   233 _TH2	=	0x00cd
                                    234 ;--------------------------------------------------------
                                    235 ; special function bits
                                    236 ;--------------------------------------------------------
                                    237 	.area RSEG    (ABS,DATA)
      000000                        238 	.org 0x0000
                           000080   239 _P0_0	=	0x0080
                           000081   240 _P0_1	=	0x0081
                           000082   241 _P0_2	=	0x0082
                           000083   242 _P0_3	=	0x0083
                           000084   243 _P0_4	=	0x0084
                           000085   244 _P0_5	=	0x0085
                           000086   245 _P0_6	=	0x0086
                           000087   246 _P0_7	=	0x0087
                           000088   247 _IT0	=	0x0088
                           000089   248 _IE0	=	0x0089
                           00008A   249 _IT1	=	0x008a
                           00008B   250 _IE1	=	0x008b
                           00008C   251 _TR0	=	0x008c
                           00008D   252 _TF0	=	0x008d
                           00008E   253 _TR1	=	0x008e
                           00008F   254 _TF1	=	0x008f
                           000090   255 _P1_0	=	0x0090
                           000091   256 _P1_1	=	0x0091
                           000092   257 _P1_2	=	0x0092
                           000093   258 _P1_3	=	0x0093
                           000094   259 _P1_4	=	0x0094
                           000095   260 _P1_5	=	0x0095
                           000096   261 _P1_6	=	0x0096
                           000097   262 _P1_7	=	0x0097
                           000098   263 _RI	=	0x0098
                           000099   264 _TI	=	0x0099
                           00009A   265 _RB8	=	0x009a
                           00009B   266 _TB8	=	0x009b
                           00009C   267 _REN	=	0x009c
                           00009D   268 _SM2	=	0x009d
                           00009E   269 _SM1	=	0x009e
                           00009F   270 _SM0	=	0x009f
                           0000A0   271 _P2_0	=	0x00a0
                           0000A1   272 _P2_1	=	0x00a1
                           0000A2   273 _P2_2	=	0x00a2
                           0000A3   274 _P2_3	=	0x00a3
                           0000A4   275 _P2_4	=	0x00a4
                           0000A5   276 _P2_5	=	0x00a5
                           0000A6   277 _P2_6	=	0x00a6
                           0000A7   278 _P2_7	=	0x00a7
                           0000A8   279 _EX0	=	0x00a8
                           0000A9   280 _ET0	=	0x00a9
                           0000AA   281 _EX1	=	0x00aa
                           0000AB   282 _ET1	=	0x00ab
                           0000AC   283 _ES	=	0x00ac
                           0000AF   284 _EA	=	0x00af
                           0000B0   285 _P3_0	=	0x00b0
                           0000B1   286 _P3_1	=	0x00b1
                           0000B2   287 _P3_2	=	0x00b2
                           0000B3   288 _P3_3	=	0x00b3
                           0000B4   289 _P3_4	=	0x00b4
                           0000B5   290 _P3_5	=	0x00b5
                           0000B6   291 _P3_6	=	0x00b6
                           0000B7   292 _P3_7	=	0x00b7
                           0000B0   293 _RXD	=	0x00b0
                           0000B1   294 _TXD	=	0x00b1
                           0000B2   295 _INT0	=	0x00b2
                           0000B3   296 _INT1	=	0x00b3
                           0000B4   297 _T0	=	0x00b4
                           0000B5   298 _T1	=	0x00b5
                           0000B6   299 _WR	=	0x00b6
                           0000B7   300 _RD	=	0x00b7
                           0000B8   301 _PX0	=	0x00b8
                           0000B9   302 _PT0	=	0x00b9
                           0000BA   303 _PX1	=	0x00ba
                           0000BB   304 _PT1	=	0x00bb
                           0000BC   305 _PS	=	0x00bc
                           0000D0   306 _P	=	0x00d0
                           0000D1   307 _F1	=	0x00d1
                           0000D2   308 _OV	=	0x00d2
                           0000D3   309 _RS0	=	0x00d3
                           0000D4   310 _RS1	=	0x00d4
                           0000D5   311 _F0	=	0x00d5
                           0000D6   312 _AC	=	0x00d6
                           0000D7   313 _CY	=	0x00d7
                           0000AD   314 _ET2	=	0x00ad
                           0000BD   315 _PT2	=	0x00bd
                           0000C8   316 _T2CON_0	=	0x00c8
                           0000C9   317 _T2CON_1	=	0x00c9
                           0000CA   318 _T2CON_2	=	0x00ca
                           0000CB   319 _T2CON_3	=	0x00cb
                           0000CC   320 _T2CON_4	=	0x00cc
                           0000CD   321 _T2CON_5	=	0x00cd
                           0000CE   322 _T2CON_6	=	0x00ce
                           0000CF   323 _T2CON_7	=	0x00cf
                           0000C8   324 _CP_RL2	=	0x00c8
                           0000C9   325 _C_T2	=	0x00c9
                           0000CA   326 _TR2	=	0x00ca
                           0000CB   327 _EXEN2	=	0x00cb
                           0000CC   328 _TCLK	=	0x00cc
                           0000CD   329 _RCLK	=	0x00cd
                           0000CE   330 _EXF2	=	0x00ce
                           0000CF   331 _TF2	=	0x00cf
                                    332 ;--------------------------------------------------------
                                    333 ; overlayable register banks
                                    334 ;--------------------------------------------------------
                                    335 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        336 	.ds 8
                                    337 ;--------------------------------------------------------
                                    338 ; internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area DSEG    (DATA)
      000008                        341 _hex2dec_PARM_2:
      000008                        342 	.ds 1
      000009                        343 _UartWriteBuff_PARM_2:
      000009                        344 	.ds 1
      00000A                        345 _UartReadBuff_PARM_2:
      00000A                        346 	.ds 1
      00000B                        347 _spi_transfer_all_PARM_2:
      00000B                        348 	.ds 1
      00000C                        349 _spi_transfer_all_PARM_3:
      00000C                        350 	.ds 1
      00000D                        351 _sd_cmd_PARM_2:
      00000D                        352 	.ds 4
      000011                        353 _sd_acmd_PARM_2:
      000011                        354 	.ds 4
      000015                        355 _SDreadBlock_PARM_2:
      000015                        356 	.ds 3
      000018                        357 _HELPER_filename_to_8dot3filename_PARM_2:
      000018                        358 	.ds 3
      00001B                        359 _HELPER_filename_to_8dot3filename_fname_65536_128:
      00001B                        360 	.ds 3
      00001E                        361 _HELPER_filename_to_8dot3filename_i_131072_134:
      00001E                        362 	.ds 1
      00001F                        363 _VBR_MOUNT_VBR_sloc0_1_0:
      00001F                        364 	.ds 4
      000023                        365 _FAT16_LOAD_ROOTENTRY_roote_number_65536_157:
      000023                        366 	.ds 2
      000025                        367 _FAT16_LOAD_ROOTENTRY_sloc0_1_0:
      000025                        368 	.ds 4
      000029                        369 _FAT16_LOAD_ROOTENTRY_sloc1_1_0:
      000029                        370 	.ds 2
      00002B                        371 _EEPROM_WRITE_PROTECTION::
      00002B                        372 	.ds 1
      00002C                        373 _main_buff_65536_222:
      00002C                        374 	.ds 16
                                    375 ;--------------------------------------------------------
                                    376 ; overlayable items in internal ram 
                                    377 ;--------------------------------------------------------
                                    378 	.area	OSEG    (OVR,DATA)
                                    379 	.area	OSEG    (OVR,DATA)
                                    380 	.area	OSEG    (OVR,DATA)
                                    381 	.area	OSEG    (OVR,DATA)
                                    382 	.area	OSEG    (OVR,DATA)
                                    383 	.area	OSEG    (OVR,DATA)
      00003D                        384 _spi_transfer_PARM_2:
      00003D                        385 	.ds 1
                                    386 	.area	OSEG    (OVR,DATA)
      00003D                        387 _HELPER_strcmp_PARM_2:
      00003D                        388 	.ds 3
                                    389 	.area	OSEG    (OVR,DATA)
      00003D                        390 _HELPER_strncmp_PARM_2:
      00003D                        391 	.ds 3
      000040                        392 _HELPER_strncmp_PARM_3:
      000040                        393 	.ds 1
                                    394 	.area	OSEG    (OVR,DATA)
                                    395 	.area	OSEG    (OVR,DATA)
                                    396 	.area	OSEG    (OVR,DATA)
                                    397 ;--------------------------------------------------------
                                    398 ; Stack segment in internal ram 
                                    399 ;--------------------------------------------------------
                                    400 	.area	SSEG
      0000C2                        401 __start__stack:
      0000C2                        402 	.ds	1
                                    403 
                                    404 ;--------------------------------------------------------
                                    405 ; indirectly addressable internal ram data
                                    406 ;--------------------------------------------------------
                                    407 	.area ISEG    (DATA)
      000041                        408 ___global_partitionTableEntry:
      000041                        409 	.ds 9
      00004A                        410 ___global_vbr:
      00004A                        411 	.ds 31
      000069                        412 ___global_nthPartitionVBRmounted:
      000069                        413 	.ds 1
      00006A                        414 ___global_rootEntry:
      00006A                        415 	.ds 24
      000082                        416 _MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_140:
      000082                        417 	.ds 16
      000092                        418 _VBR_MOUNT_VBR_temp_65536_146:
      000092                        419 	.ds 16
      0000A2                        420 _FAT16_LOAD_ROOTENTRY_temp_65536_158:
      0000A2                        421 	.ds 32
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
                                    476 ;	serialloader.h:13: volatile unsigned char EEPROM_WRITE_PROTECTION=1;
      00005F 75 2B 01         [24]  477 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                    478 ;	fat.h:238: __idata static uint8_t __global_nthPartitionVBRmounted=255; //mounted if value is 0-3 for the 4 partitions,else not mounted
      000062 78 69            [12]  479 	mov	r0,#___global_nthPartitionVBRmounted
      000064 76 FF            [12]  480 	mov	@r0,#0xff
                                    481 	.area GSFINAL (CODE)
      000066 02 00 03         [24]  482 	ljmp	__sdcc_program_startup
                                    483 ;--------------------------------------------------------
                                    484 ; Home
                                    485 ;--------------------------------------------------------
                                    486 	.area HOME    (CODE)
                                    487 	.area HOME    (CODE)
      000003                        488 __sdcc_program_startup:
      000003 02 19 E0         [24]  489 	ljmp	_main
                                    490 ;	return from main will return to caller
                                    491 ;--------------------------------------------------------
                                    492 ; code
                                    493 ;--------------------------------------------------------
                                    494 	.area CSEG    (CODE)
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'enterApp'
                                    497 ;------------------------------------------------------------
                                    498 ;x                         Allocated to registers r6 r7 
                                    499 ;y                         Allocated to registers r4 r5 
                                    500 ;------------------------------------------------------------
                                    501 ;	enterexitapp.h:13: void enterApp()
                                    502 ;	-----------------------------------------
                                    503 ;	 function enterApp
                                    504 ;	-----------------------------------------
      000069                        505 _enterApp:
                           000007   506 	ar7 = 0x07
                           000006   507 	ar6 = 0x06
                           000005   508 	ar5 = 0x05
                           000004   509 	ar4 = 0x04
                           000003   510 	ar3 = 0x03
                           000002   511 	ar2 = 0x02
                           000001   512 	ar1 = 0x01
                           000000   513 	ar0 = 0x00
                                    514 ;	enterexitapp.h:21: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
      000069 7E 00            [12]  515 	mov	r6,#0x00
      00006B 7F 00            [12]  516 	mov	r7,#0x00
      00006D                        517 00124$:
      00006D 7C C8            [12]  518 	mov	r4,#0xc8
      00006F 7D 00            [12]  519 	mov	r5,#0x00
      000071                        520 00109$:
      000071 1C               [12]  521 	dec	r4
      000072 BC FF 01         [24]  522 	cjne	r4,#0xff,00178$
      000075 1D               [12]  523 	dec	r5
      000076                        524 00178$:
      000076 EC               [12]  525 	mov	a,r4
      000077 4D               [12]  526 	orl	a,r5
      000078 70 F7            [24]  527 	jnz	00109$
      00007A 0E               [12]  528 	inc	r6
      00007B BE 00 01         [24]  529 	cjne	r6,#0x00,00180$
      00007E 0F               [12]  530 	inc	r7
      00007F                        531 00180$:
      00007F C3               [12]  532 	clr	c
      000080 EE               [12]  533 	mov	a,r6
      000081 94 FA            [12]  534 	subb	a,#0xfa
      000083 EF               [12]  535 	mov	a,r7
      000084 94 00            [12]  536 	subb	a,#0x00
      000086 40 E5            [24]  537 	jc	00124$
                                    538 ;	enterexitapp.h:22: for(x=0;x<250;x++)for(y=0;y<200;y++); // 250*200*3 = 150,000 ~ 150 ms
      000088 7E 00            [12]  539 	mov	r6,#0x00
      00008A 7F 00            [12]  540 	mov	r7,#0x00
      00008C                        541 00128$:
      00008C 7C C8            [12]  542 	mov	r4,#0xc8
      00008E 7D 00            [12]  543 	mov	r5,#0x00
      000090                        544 00114$:
      000090 1C               [12]  545 	dec	r4
      000091 BC FF 01         [24]  546 	cjne	r4,#0xff,00182$
      000094 1D               [12]  547 	dec	r5
      000095                        548 00182$:
      000095 EC               [12]  549 	mov	a,r4
      000096 4D               [12]  550 	orl	a,r5
      000097 70 F7            [24]  551 	jnz	00114$
      000099 0E               [12]  552 	inc	r6
      00009A BE 00 01         [24]  553 	cjne	r6,#0x00,00184$
      00009D 0F               [12]  554 	inc	r7
      00009E                        555 00184$:
      00009E C3               [12]  556 	clr	c
      00009F EE               [12]  557 	mov	a,r6
      0000A0 94 FA            [12]  558 	subb	a,#0xfa
      0000A2 EF               [12]  559 	mov	a,r7
      0000A3 94 00            [12]  560 	subb	a,#0x00
      0000A5 40 E5            [24]  561 	jc	00128$
                                    562 ;	enterexitapp.h:25: RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
      0000A7 53 90 EF         [24]  563 	anl	_P1,#0xef
                                    564 ;	enterexitapp.h:28: for(x=0;x<250;x++) for(y=0;y<100;y++); 	// inner for loop takes about 3 cycles,
      0000AA 7E 00            [12]  565 	mov	r6,#0x00
      0000AC 7F 00            [12]  566 	mov	r7,#0x00
      0000AE                        567 00132$:
      0000AE 7C 64            [12]  568 	mov	r4,#0x64
      0000B0 7D 00            [12]  569 	mov	r5,#0x00
      0000B2                        570 00119$:
      0000B2 1C               [12]  571 	dec	r4
      0000B3 BC FF 01         [24]  572 	cjne	r4,#0xff,00186$
      0000B6 1D               [12]  573 	dec	r5
      0000B7                        574 00186$:
      0000B7 EC               [12]  575 	mov	a,r4
      0000B8 4D               [12]  576 	orl	a,r5
      0000B9 70 F7            [24]  577 	jnz	00119$
      0000BB 0E               [12]  578 	inc	r6
      0000BC BE 00 01         [24]  579 	cjne	r6,#0x00,00188$
      0000BF 0F               [12]  580 	inc	r7
      0000C0                        581 00188$:
      0000C0 C3               [12]  582 	clr	c
      0000C1 EE               [12]  583 	mov	a,r6
      0000C2 94 FA            [12]  584 	subb	a,#0xfa
      0000C4 EF               [12]  585 	mov	a,r7
      0000C5 94 00            [12]  586 	subb	a,#0x00
      0000C7 40 E5            [24]  587 	jc	00132$
                                    588 ;	enterexitapp.h:32: RESET_PORT_8052 |= (1 << RESET_PIN_8052);	
      0000C9 43 90 10         [24]  589 	orl	_P1,#0x10
                                    590 ;	enterexitapp.h:35: }
      0000CC 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'exitApp'
                                    594 ;------------------------------------------------------------
                                    595 ;	enterexitapp.h:39: void exitApp()
                                    596 ;	-----------------------------------------
                                    597 ;	 function exitApp
                                    598 ;	-----------------------------------------
      0000CD                        599 _exitApp:
                                    600 ;	enterexitapp.h:42: RESET_PORT_8052 &= ~(1 << RESET_PIN_8052);
      0000CD 53 90 EF         [24]  601 	anl	_P1,#0xef
                                    602 ;	enterexitapp.h:43: }
      0000D0 22               [24]  603 	ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'hexNibble2dec'
                                    606 ;------------------------------------------------------------
                                    607 ;nibble                    Allocated to registers r7 
                                    608 ;------------------------------------------------------------
                                    609 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    610 ;	-----------------------------------------
                                    611 ;	 function hexNibble2dec
                                    612 ;	-----------------------------------------
      0000D1                        613 _hexNibble2dec:
      0000D1 AF 82            [24]  614 	mov	r7,dpl
                                    615 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      0000D3 BF 30 00         [24]  616 	cjne	r7,#0x30,00139$
      0000D6                        617 00139$:
      0000D6 40 0D            [24]  618 	jc	00110$
      0000D8 EF               [12]  619 	mov	a,r7
      0000D9 24 C6            [12]  620 	add	a,#0xff - 0x39
      0000DB 40 08            [24]  621 	jc	00110$
      0000DD 8F 06            [24]  622 	mov	ar6,r7
      0000DF EE               [12]  623 	mov	a,r6
      0000E0 24 D0            [12]  624 	add	a,#0xd0
      0000E2 F5 82            [12]  625 	mov	dpl,a
      0000E4 22               [24]  626 	ret
      0000E5                        627 00110$:
                                    628 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      0000E5 BF 41 00         [24]  629 	cjne	r7,#0x41,00142$
      0000E8                        630 00142$:
      0000E8 40 0D            [24]  631 	jc	00106$
      0000EA EF               [12]  632 	mov	a,r7
      0000EB 24 B9            [12]  633 	add	a,#0xff - 0x46
      0000ED 40 08            [24]  634 	jc	00106$
      0000EF 8F 06            [24]  635 	mov	ar6,r7
      0000F1 74 C9            [12]  636 	mov	a,#0xc9
      0000F3 2E               [12]  637 	add	a,r6
      0000F4 F5 82            [12]  638 	mov	dpl,a
      0000F6 22               [24]  639 	ret
      0000F7                        640 00106$:
                                    641 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      0000F7 BF 61 00         [24]  642 	cjne	r7,#0x61,00145$
      0000FA                        643 00145$:
      0000FA 40 0B            [24]  644 	jc	00102$
      0000FC EF               [12]  645 	mov	a,r7
      0000FD 24 99            [12]  646 	add	a,#0xff - 0x66
      0000FF 40 06            [24]  647 	jc	00102$
      000101 74 A9            [12]  648 	mov	a,#0xa9
      000103 2F               [12]  649 	add	a,r7
      000104 F5 82            [12]  650 	mov	dpl,a
      000106 22               [24]  651 	ret
      000107                        652 00102$:
                                    653 ;	uart.h:11: else return 0;
      000107 75 82 00         [24]  654 	mov	dpl,#0x00
                                    655 ;	uart.h:12: }
      00010A 22               [24]  656 	ret
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'hex2dec'
                                    659 ;------------------------------------------------------------
                                    660 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    661 ;MSnibble                  Allocated to registers r7 
                                    662 ;------------------------------------------------------------
                                    663 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    664 ;	-----------------------------------------
                                    665 ;	 function hex2dec
                                    666 ;	-----------------------------------------
      00010B                        667 _hex2dec:
                                    668 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      00010B 12 00 D1         [24]  669 	lcall	_hexNibble2dec
      00010E E5 82            [12]  670 	mov	a,dpl
      000110 C4               [12]  671 	swap	a
      000111 54 F0            [12]  672 	anl	a,#0xf0
      000113 FF               [12]  673 	mov	r7,a
      000114 85 08 82         [24]  674 	mov	dpl,_hex2dec_PARM_2
      000117 C0 07            [24]  675 	push	ar7
      000119 12 00 D1         [24]  676 	lcall	_hexNibble2dec
      00011C AE 82            [24]  677 	mov	r6,dpl
      00011E D0 07            [24]  678 	pop	ar7
      000120 EE               [12]  679 	mov	a,r6
      000121 2F               [12]  680 	add	a,r7
      000122 F5 82            [12]  681 	mov	dpl,a
                                    682 ;	uart.h:18: }
      000124 22               [24]  683 	ret
                                    684 ;------------------------------------------------------------
                                    685 ;Allocation info for local variables in function 'dec2hexNibble'
                                    686 ;------------------------------------------------------------
                                    687 ;dec                       Allocated to registers r7 
                                    688 ;------------------------------------------------------------
                                    689 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    690 ;	-----------------------------------------
                                    691 ;	 function dec2hexNibble
                                    692 ;	-----------------------------------------
      000125                        693 _dec2hexNibble:
                                    694 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      000125 E5 82            [12]  695 	mov	a,dpl
      000127 FF               [12]  696 	mov	r7,a
      000128 24 F0            [12]  697 	add	a,#0xff - 0x0f
      00012A 50 04            [24]  698 	jnc	00102$
      00012C 75 82 58         [24]  699 	mov	dpl,#0x58
      00012F 22               [24]  700 	ret
      000130                        701 00102$:
                                    702 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      000130 EF               [12]  703 	mov	a,r7
      000131 24 F6            [12]  704 	add	a,#0xff - 0x09
      000133 40 08            [24]  705 	jc	00104$
      000135 8F 06            [24]  706 	mov	ar6,r7
      000137 74 30            [12]  707 	mov	a,#0x30
      000139 2E               [12]  708 	add	a,r6
      00013A F5 82            [12]  709 	mov	dpl,a
      00013C 22               [24]  710 	ret
      00013D                        711 00104$:
                                    712 ;	uart.h:27: else return 'A' + dec - 10;
      00013D 74 37            [12]  713 	mov	a,#0x37
      00013F 2F               [12]  714 	add	a,r7
      000140 F5 82            [12]  715 	mov	dpl,a
                                    716 ;	uart.h:28: }
      000142 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'UartBegin'
                                    720 ;------------------------------------------------------------
                                    721 ;	uart.h:33: void UartBegin()
                                    722 ;	-----------------------------------------
                                    723 ;	 function UartBegin
                                    724 ;	-----------------------------------------
      000143                        725 _UartBegin:
                                    726 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      000143 75 89 20         [24]  727 	mov	_TMOD,#0x20
                                    728 ;	uart.h:39: TH1 = 0XF3; //2400
      000146 75 8D F3         [24]  729 	mov	_TH1,#0xf3
                                    730 ;	uart.h:40: SCON = 0X50;
      000149 75 98 50         [24]  731 	mov	_SCON,#0x50
                                    732 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      00014C 43 87 80         [24]  733 	orl	_PCON,#0x80
                                    734 ;	uart.h:44: TR1 = 1; //START TIMER
                                    735 ;	assignBit
      00014F D2 8E            [12]  736 	setb	_TR1
                                    737 ;	uart.h:45: }
      000151 22               [24]  738 	ret
                                    739 ;------------------------------------------------------------
                                    740 ;Allocation info for local variables in function 'UartReadReady'
                                    741 ;------------------------------------------------------------
                                    742 ;	uart.h:47: unsigned char UartReadReady()
                                    743 ;	-----------------------------------------
                                    744 ;	 function UartReadReady
                                    745 ;	-----------------------------------------
      000152                        746 _UartReadReady:
                                    747 ;	uart.h:49: if(RI==0)return 0; //not received any char
      000152 20 98 04         [24]  748 	jb	_RI,00102$
      000155 75 82 00         [24]  749 	mov	dpl,#0x00
      000158 22               [24]  750 	ret
      000159                        751 00102$:
                                    752 ;	uart.h:50: else return 1; //received and ready
      000159 75 82 01         [24]  753 	mov	dpl,#0x01
                                    754 ;	uart.h:51: }
      00015C 22               [24]  755 	ret
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'UartRead'
                                    758 ;------------------------------------------------------------
                                    759 ;value                     Allocated to registers 
                                    760 ;------------------------------------------------------------
                                    761 ;	uart.h:53: unsigned char UartRead()
                                    762 ;	-----------------------------------------
                                    763 ;	 function UartRead
                                    764 ;	-----------------------------------------
      00015D                        765 _UartRead:
                                    766 ;	uart.h:56: while(RI==0); //wait till RX
      00015D                        767 00101$:
                                    768 ;	uart.h:57: RI=0;
                                    769 ;	assignBit
      00015D 10 98 02         [24]  770 	jbc	_RI,00114$
      000160 80 FB            [24]  771 	sjmp	00101$
      000162                        772 00114$:
                                    773 ;	uart.h:58: value = SBUF;
      000162 85 99 82         [24]  774 	mov	dpl,_SBUF
                                    775 ;	uart.h:59: return value;
                                    776 ;	uart.h:60: }
      000165 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'UartWrite'
                                    780 ;------------------------------------------------------------
                                    781 ;value                     Allocated to registers 
                                    782 ;------------------------------------------------------------
                                    783 ;	uart.h:63: void UartWrite(unsigned char value)
                                    784 ;	-----------------------------------------
                                    785 ;	 function UartWrite
                                    786 ;	-----------------------------------------
      000166                        787 _UartWrite:
      000166 85 82 99         [24]  788 	mov	_SBUF,dpl
                                    789 ;	uart.h:66: while(TI==0); // wait till TX
      000169                        790 00101$:
                                    791 ;	uart.h:67: TI=0;
                                    792 ;	assignBit
      000169 10 99 02         [24]  793 	jbc	_TI,00114$
      00016C 80 FB            [24]  794 	sjmp	00101$
      00016E                        795 00114$:
                                    796 ;	uart.h:68: }
      00016E 22               [24]  797 	ret
                                    798 ;------------------------------------------------------------
                                    799 ;Allocation info for local variables in function 'UartWriteBuff'
                                    800 ;------------------------------------------------------------
                                    801 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    802 ;p                         Allocated to registers r5 r6 r7 
                                    803 ;i                         Allocated to registers r4 
                                    804 ;------------------------------------------------------------
                                    805 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    806 ;	-----------------------------------------
                                    807 ;	 function UartWriteBuff
                                    808 ;	-----------------------------------------
      00016F                        809 _UartWriteBuff:
      00016F AD 82            [24]  810 	mov	r5,dpl
      000171 AE 83            [24]  811 	mov	r6,dph
      000173 AF F0            [24]  812 	mov	r7,b
                                    813 ;	uart.h:73: for (i=0;i<length;i++)
      000175 7C 00            [12]  814 	mov	r4,#0x00
      000177                        815 00103$:
      000177 C3               [12]  816 	clr	c
      000178 EC               [12]  817 	mov	a,r4
      000179 95 09            [12]  818 	subb	a,_UartWriteBuff_PARM_2
      00017B 50 29            [24]  819 	jnc	00105$
                                    820 ;	uart.h:75: UartWrite(p[i]);
      00017D EC               [12]  821 	mov	a,r4
      00017E 2D               [12]  822 	add	a,r5
      00017F F9               [12]  823 	mov	r1,a
      000180 E4               [12]  824 	clr	a
      000181 3E               [12]  825 	addc	a,r6
      000182 FA               [12]  826 	mov	r2,a
      000183 8F 03            [24]  827 	mov	ar3,r7
      000185 89 82            [24]  828 	mov	dpl,r1
      000187 8A 83            [24]  829 	mov	dph,r2
      000189 8B F0            [24]  830 	mov	b,r3
      00018B 12 1D 77         [24]  831 	lcall	__gptrget
      00018E F5 82            [12]  832 	mov	dpl,a
      000190 C0 07            [24]  833 	push	ar7
      000192 C0 06            [24]  834 	push	ar6
      000194 C0 05            [24]  835 	push	ar5
      000196 C0 04            [24]  836 	push	ar4
      000198 12 01 66         [24]  837 	lcall	_UartWrite
      00019B D0 04            [24]  838 	pop	ar4
      00019D D0 05            [24]  839 	pop	ar5
      00019F D0 06            [24]  840 	pop	ar6
      0001A1 D0 07            [24]  841 	pop	ar7
                                    842 ;	uart.h:73: for (i=0;i<length;i++)
      0001A3 0C               [12]  843 	inc	r4
      0001A4 80 D1            [24]  844 	sjmp	00103$
      0001A6                        845 00105$:
                                    846 ;	uart.h:77: }
      0001A6 22               [24]  847 	ret
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'UartReadBuff'
                                    850 ;------------------------------------------------------------
                                    851 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    852 ;p                         Allocated to registers r5 r6 r7 
                                    853 ;i                         Allocated to registers r4 
                                    854 ;------------------------------------------------------------
                                    855 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    856 ;	-----------------------------------------
                                    857 ;	 function UartReadBuff
                                    858 ;	-----------------------------------------
      0001A7                        859 _UartReadBuff:
      0001A7 AD 82            [24]  860 	mov	r5,dpl
      0001A9 AE 83            [24]  861 	mov	r6,dph
      0001AB AF F0            [24]  862 	mov	r7,b
                                    863 ;	uart.h:82: for (i=0;i<length;i++)
      0001AD 7C 00            [12]  864 	mov	r4,#0x00
      0001AF                        865 00103$:
      0001AF C3               [12]  866 	clr	c
      0001B0 EC               [12]  867 	mov	a,r4
      0001B1 95 0A            [12]  868 	subb	a,_UartReadBuff_PARM_2
      0001B3 50 36            [24]  869 	jnc	00105$
                                    870 ;	uart.h:84: p[i] = UartRead();
      0001B5 EC               [12]  871 	mov	a,r4
      0001B6 2D               [12]  872 	add	a,r5
      0001B7 F9               [12]  873 	mov	r1,a
      0001B8 E4               [12]  874 	clr	a
      0001B9 3E               [12]  875 	addc	a,r6
      0001BA FA               [12]  876 	mov	r2,a
      0001BB 8F 03            [24]  877 	mov	ar3,r7
      0001BD C0 07            [24]  878 	push	ar7
      0001BF C0 06            [24]  879 	push	ar6
      0001C1 C0 05            [24]  880 	push	ar5
      0001C3 C0 04            [24]  881 	push	ar4
      0001C5 C0 03            [24]  882 	push	ar3
      0001C7 C0 02            [24]  883 	push	ar2
      0001C9 C0 01            [24]  884 	push	ar1
      0001CB 12 01 5D         [24]  885 	lcall	_UartRead
      0001CE A8 82            [24]  886 	mov	r0,dpl
      0001D0 D0 01            [24]  887 	pop	ar1
      0001D2 D0 02            [24]  888 	pop	ar2
      0001D4 D0 03            [24]  889 	pop	ar3
      0001D6 D0 04            [24]  890 	pop	ar4
      0001D8 D0 05            [24]  891 	pop	ar5
      0001DA D0 06            [24]  892 	pop	ar6
      0001DC D0 07            [24]  893 	pop	ar7
      0001DE 89 82            [24]  894 	mov	dpl,r1
      0001E0 8A 83            [24]  895 	mov	dph,r2
      0001E2 8B F0            [24]  896 	mov	b,r3
      0001E4 E8               [12]  897 	mov	a,r0
      0001E5 12 1C 84         [24]  898 	lcall	__gptrput
                                    899 ;	uart.h:82: for (i=0;i<length;i++)
      0001E8 0C               [12]  900 	inc	r4
      0001E9 80 C4            [24]  901 	sjmp	00103$
      0001EB                        902 00105$:
                                    903 ;	uart.h:86: }
      0001EB 22               [24]  904 	ret
                                    905 ;------------------------------------------------------------
                                    906 ;Allocation info for local variables in function 'UartPrint'
                                    907 ;------------------------------------------------------------
                                    908 ;p                         Allocated to registers 
                                    909 ;------------------------------------------------------------
                                    910 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    911 ;	-----------------------------------------
                                    912 ;	 function UartPrint
                                    913 ;	-----------------------------------------
      0001EC                        914 _UartPrint:
      0001EC AD 82            [24]  915 	mov	r5,dpl
      0001EE AE 83            [24]  916 	mov	r6,dph
      0001F0 AF F0            [24]  917 	mov	r7,b
                                    918 ;	uart.h:90: do
      0001F2                        919 00101$:
                                    920 ;	uart.h:92: UartWrite(*p);
      0001F2 8D 82            [24]  921 	mov	dpl,r5
      0001F4 8E 83            [24]  922 	mov	dph,r6
      0001F6 8F F0            [24]  923 	mov	b,r7
      0001F8 12 1D 77         [24]  924 	lcall	__gptrget
      0001FB FC               [12]  925 	mov	r4,a
      0001FC A3               [24]  926 	inc	dptr
      0001FD AD 82            [24]  927 	mov	r5,dpl
      0001FF AE 83            [24]  928 	mov	r6,dph
      000201 8C 82            [24]  929 	mov	dpl,r4
      000203 C0 07            [24]  930 	push	ar7
      000205 C0 06            [24]  931 	push	ar6
      000207 C0 05            [24]  932 	push	ar5
      000209 12 01 66         [24]  933 	lcall	_UartWrite
      00020C D0 05            [24]  934 	pop	ar5
      00020E D0 06            [24]  935 	pop	ar6
      000210 D0 07            [24]  936 	pop	ar7
                                    937 ;	uart.h:93: }while(*(++p)!=0);
      000212 8D 82            [24]  938 	mov	dpl,r5
      000214 8E 83            [24]  939 	mov	dph,r6
      000216 8F F0            [24]  940 	mov	b,r7
      000218 12 1D 77         [24]  941 	lcall	__gptrget
      00021B 70 D5            [24]  942 	jnz	00101$
                                    943 ;	uart.h:94: }
      00021D 22               [24]  944 	ret
                                    945 ;------------------------------------------------------------
                                    946 ;Allocation info for local variables in function 'UartWriteNumber'
                                    947 ;------------------------------------------------------------
                                    948 ;format                    Allocated to stack - _bp -3
                                    949 ;num                       Allocated to registers r7 
                                    950 ;msd                       Allocated to registers r4 
                                    951 ;lsd                       Allocated to registers r6 
                                    952 ;extra                     Allocated to registers r3 
                                    953 ;------------------------------------------------------------
                                    954 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    955 ;	-----------------------------------------
                                    956 ;	 function UartWriteNumber
                                    957 ;	-----------------------------------------
      00021E                        958 _UartWriteNumber:
      00021E C0 3C            [24]  959 	push	_bp
      000220 85 81 3C         [24]  960 	mov	_bp,sp
      000223 AF 82            [24]  961 	mov	r7,dpl
                                    962 ;	uart.h:104: if(format==HEX)
      000225 E5 3C            [12]  963 	mov	a,_bp
      000227 24 FD            [12]  964 	add	a,#0xfd
      000229 F8               [12]  965 	mov	r0,a
      00022A E6               [12]  966 	mov	a,@r0
                                    967 ;	uart.h:106: msd = num/16;
      00022B 70 32            [24]  968 	jnz	00104$
      00022D 8F 05            [24]  969 	mov	ar5,r7
      00022F FE               [12]  970 	mov	r6,a
      000230 75 3D 10         [24]  971 	mov	__divsint_PARM_2,#0x10
                                    972 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000233 8E 3E            [24]  973 	mov	(__divsint_PARM_2 + 1),r6
      000235 8D 82            [24]  974 	mov	dpl,r5
      000237 8E 83            [24]  975 	mov	dph,r6
      000239 C0 06            [24]  976 	push	ar6
      00023B C0 05            [24]  977 	push	ar5
      00023D 12 1D C9         [24]  978 	lcall	__divsint
      000240 AB 82            [24]  979 	mov	r3,dpl
      000242 D0 05            [24]  980 	pop	ar5
      000244 D0 06            [24]  981 	pop	ar6
                                    982 ;	uart.h:107: lsd = num%16;
      000246 53 05 0F         [24]  983 	anl	ar5,#0x0f
                                    984 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      000249 8B 82            [24]  985 	mov	dpl,r3
      00024B C0 05            [24]  986 	push	ar5
      00024D 12 01 25         [24]  987 	lcall	_dec2hexNibble
      000250 12 01 66         [24]  988 	lcall	_UartWrite
      000253 D0 05            [24]  989 	pop	ar5
                                    990 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      000255 8D 82            [24]  991 	mov	dpl,r5
      000257 12 01 25         [24]  992 	lcall	_dec2hexNibble
      00025A 12 01 66         [24]  993 	lcall	_UartWrite
      00025D 80 7B            [24]  994 	sjmp	00106$
      00025F                        995 00104$:
                                    996 ;	uart.h:112: else if(format==DEC)
      00025F E5 3C            [12]  997 	mov	a,_bp
      000261 24 FD            [12]  998 	add	a,#0xfd
      000263 F8               [12]  999 	mov	r0,a
      000264 B6 01 73         [24] 1000 	cjne	@r0,#0x01,00106$
                                   1001 ;	uart.h:114: msd = num/100; // 100s place
      000267 7E 00            [12] 1002 	mov	r6,#0x00
      000269 75 3D 64         [24] 1003 	mov	__divsint_PARM_2,#0x64
                                   1004 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00026C 8E 3E            [24] 1005 	mov	(__divsint_PARM_2 + 1),r6
      00026E 8F 82            [24] 1006 	mov	dpl,r7
      000270 8E 83            [24] 1007 	mov	dph,r6
      000272 C0 07            [24] 1008 	push	ar7
      000274 C0 06            [24] 1009 	push	ar6
      000276 12 1D C9         [24] 1010 	lcall	__divsint
      000279 AC 82            [24] 1011 	mov	r4,dpl
      00027B D0 06            [24] 1012 	pop	ar6
      00027D D0 07            [24] 1013 	pop	ar7
                                   1014 ;	uart.h:115: extra = (num%100)/10; //tenth place
      00027F 75 3D 64         [24] 1015 	mov	__modsint_PARM_2,#0x64
      000282 75 3E 00         [24] 1016 	mov	(__modsint_PARM_2 + 1),#0x00
      000285 8F 82            [24] 1017 	mov	dpl,r7
      000287 8E 83            [24] 1018 	mov	dph,r6
      000289 C0 07            [24] 1019 	push	ar7
      00028B C0 06            [24] 1020 	push	ar6
      00028D C0 04            [24] 1021 	push	ar4
      00028F 12 1D 93         [24] 1022 	lcall	__modsint
      000292 75 3D 0A         [24] 1023 	mov	__divsint_PARM_2,#0x0a
      000295 75 3E 00         [24] 1024 	mov	(__divsint_PARM_2 + 1),#0x00
      000298 12 1D C9         [24] 1025 	lcall	__divsint
      00029B AB 82            [24] 1026 	mov	r3,dpl
      00029D D0 04            [24] 1027 	pop	ar4
      00029F D0 06            [24] 1028 	pop	ar6
      0002A1 D0 07            [24] 1029 	pop	ar7
                                   1030 ;	uart.h:116: lsd = num%10;
      0002A3 75 3D 0A         [24] 1031 	mov	__modsint_PARM_2,#0x0a
      0002A6 75 3E 00         [24] 1032 	mov	(__modsint_PARM_2 + 1),#0x00
      0002A9 8F 82            [24] 1033 	mov	dpl,r7
      0002AB 8E 83            [24] 1034 	mov	dph,r6
      0002AD C0 04            [24] 1035 	push	ar4
      0002AF C0 03            [24] 1036 	push	ar3
      0002B1 12 1D 93         [24] 1037 	lcall	__modsint
      0002B4 AE 82            [24] 1038 	mov	r6,dpl
      0002B6 D0 03            [24] 1039 	pop	ar3
      0002B8 D0 04            [24] 1040 	pop	ar4
                                   1041 ;	uart.h:118: UartWrite(msd + 0x30);
      0002BA 74 30            [12] 1042 	mov	a,#0x30
      0002BC 2C               [12] 1043 	add	a,r4
      0002BD F5 82            [12] 1044 	mov	dpl,a
      0002BF C0 06            [24] 1045 	push	ar6
      0002C1 C0 03            [24] 1046 	push	ar3
      0002C3 12 01 66         [24] 1047 	lcall	_UartWrite
      0002C6 D0 03            [24] 1048 	pop	ar3
                                   1049 ;	uart.h:119: UartWrite(extra + 0x30);
      0002C8 74 30            [12] 1050 	mov	a,#0x30
      0002CA 2B               [12] 1051 	add	a,r3
      0002CB F5 82            [12] 1052 	mov	dpl,a
      0002CD 12 01 66         [24] 1053 	lcall	_UartWrite
      0002D0 D0 06            [24] 1054 	pop	ar6
                                   1055 ;	uart.h:120: UartWrite(lsd + 0x30);
      0002D2 74 30            [12] 1056 	mov	a,#0x30
      0002D4 2E               [12] 1057 	add	a,r6
      0002D5 F5 82            [12] 1058 	mov	dpl,a
      0002D7 12 01 66         [24] 1059 	lcall	_UartWrite
      0002DA                       1060 00106$:
                                   1061 ;	uart.h:123: }
      0002DA D0 3C            [24] 1062 	pop	_bp
      0002DC 22               [24] 1063 	ret
                                   1064 ;------------------------------------------------------------
                                   1065 ;Allocation info for local variables in function 'UartWriteNumbers'
                                   1066 ;------------------------------------------------------------
                                   1067 ;length                    Allocated to stack - _bp -3
                                   1068 ;format                    Allocated to stack - _bp -4
                                   1069 ;delimiter                 Allocated to stack - _bp -5
                                   1070 ;p                         Allocated to registers 
                                   1071 ;i                         Allocated to registers r4 
                                   1072 ;------------------------------------------------------------
                                   1073 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function UartWriteNumbers
                                   1076 ;	-----------------------------------------
      0002DD                       1077 _UartWriteNumbers:
      0002DD C0 3C            [24] 1078 	push	_bp
      0002DF 85 81 3C         [24] 1079 	mov	_bp,sp
      0002E2 AD 82            [24] 1080 	mov	r5,dpl
      0002E4 AE 83            [24] 1081 	mov	r6,dph
      0002E6 AF F0            [24] 1082 	mov	r7,b
                                   1083 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002E8 7C 00            [12] 1084 	mov	r4,#0x00
      0002EA                       1085 00103$:
      0002EA E5 3C            [12] 1086 	mov	a,_bp
      0002EC 24 FD            [12] 1087 	add	a,#0xfd
      0002EE F8               [12] 1088 	mov	r0,a
      0002EF C3               [12] 1089 	clr	c
      0002F0 EC               [12] 1090 	mov	a,r4
      0002F1 96               [12] 1091 	subb	a,@r0
      0002F2 50 3B            [24] 1092 	jnc	00105$
                                   1093 ;	uart.h:131: UartWriteNumber(*p,format);
      0002F4 8D 82            [24] 1094 	mov	dpl,r5
      0002F6 8E 83            [24] 1095 	mov	dph,r6
      0002F8 8F F0            [24] 1096 	mov	b,r7
      0002FA 12 1D 77         [24] 1097 	lcall	__gptrget
      0002FD FB               [12] 1098 	mov	r3,a
      0002FE A3               [24] 1099 	inc	dptr
      0002FF AD 82            [24] 1100 	mov	r5,dpl
      000301 AE 83            [24] 1101 	mov	r6,dph
      000303 C0 07            [24] 1102 	push	ar7
      000305 C0 06            [24] 1103 	push	ar6
      000307 C0 05            [24] 1104 	push	ar5
      000309 C0 04            [24] 1105 	push	ar4
      00030B E5 3C            [12] 1106 	mov	a,_bp
      00030D 24 FC            [12] 1107 	add	a,#0xfc
      00030F F8               [12] 1108 	mov	r0,a
      000310 E6               [12] 1109 	mov	a,@r0
      000311 C0 E0            [24] 1110 	push	acc
      000313 8B 82            [24] 1111 	mov	dpl,r3
      000315 12 02 1E         [24] 1112 	lcall	_UartWriteNumber
      000318 15 81            [12] 1113 	dec	sp
                                   1114 ;	uart.h:132: UartWrite(delimiter);
      00031A E5 3C            [12] 1115 	mov	a,_bp
      00031C 24 FB            [12] 1116 	add	a,#0xfb
      00031E F8               [12] 1117 	mov	r0,a
      00031F 86 82            [24] 1118 	mov	dpl,@r0
      000321 12 01 66         [24] 1119 	lcall	_UartWrite
      000324 D0 04            [24] 1120 	pop	ar4
      000326 D0 05            [24] 1121 	pop	ar5
      000328 D0 06            [24] 1122 	pop	ar6
      00032A D0 07            [24] 1123 	pop	ar7
                                   1124 ;	uart.h:129: for(i=0;i<length;i++,p++)
      00032C 0C               [12] 1125 	inc	r4
      00032D 80 BB            [24] 1126 	sjmp	00103$
      00032F                       1127 00105$:
                                   1128 ;	uart.h:134: }
      00032F D0 3C            [24] 1129 	pop	_bp
      000331 22               [24] 1130 	ret
                                   1131 ;------------------------------------------------------------
                                   1132 ;Allocation info for local variables in function 'UartPrintNumber'
                                   1133 ;------------------------------------------------------------
                                   1134 ;n                         Allocated to stack - _bp +1
                                   1135 ;digit                     Allocated to stack - _bp +5
                                   1136 ;i                         Allocated to stack - _bp +9
                                   1137 ;j                         Allocated to registers r3 
                                   1138 ;leading_zeroes_flag       Allocated to stack - _bp +10
                                   1139 ;sloc0                     Allocated to stack - _bp +12
                                   1140 ;------------------------------------------------------------
                                   1141 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function UartPrintNumber
                                   1144 ;	-----------------------------------------
      000332                       1145 _UartPrintNumber:
      000332 C0 3C            [24] 1146 	push	_bp
      000334 85 81 3C         [24] 1147 	mov	_bp,sp
      000337 C0 82            [24] 1148 	push	dpl
      000339 C0 83            [24] 1149 	push	dph
      00033B C0 F0            [24] 1150 	push	b
      00033D C0 E0            [24] 1151 	push	acc
      00033F E5 81            [12] 1152 	mov	a,sp
      000341 24 06            [12] 1153 	add	a,#0x06
      000343 F5 81            [12] 1154 	mov	sp,a
                                   1155 ;	uart.h:152: char i,j,leading_zeroes_flag=1;
      000345 E5 3C            [12] 1156 	mov	a,_bp
      000347 24 0A            [12] 1157 	add	a,#0x0a
      000349 F8               [12] 1158 	mov	r0,a
      00034A 76 01            [12] 1159 	mov	@r0,#0x01
                                   1160 ;	uart.h:153: for(i=8;i>0;i--)
      00034C E5 3C            [12] 1161 	mov	a,_bp
      00034E 24 09            [12] 1162 	add	a,#0x09
      000350 F8               [12] 1163 	mov	r0,a
      000351 76 08            [12] 1164 	mov	@r0,#0x08
      000353                       1165 00112$:
                                   1166 ;	uart.h:155: digit=n;
      000353 A8 3C            [24] 1167 	mov	r0,_bp
      000355 08               [12] 1168 	inc	r0
      000356 E5 3C            [12] 1169 	mov	a,_bp
      000358 24 05            [12] 1170 	add	a,#0x05
      00035A F9               [12] 1171 	mov	r1,a
      00035B E6               [12] 1172 	mov	a,@r0
      00035C F7               [12] 1173 	mov	@r1,a
      00035D 08               [12] 1174 	inc	r0
      00035E 09               [12] 1175 	inc	r1
      00035F E6               [12] 1176 	mov	a,@r0
      000360 F7               [12] 1177 	mov	@r1,a
      000361 08               [12] 1178 	inc	r0
      000362 09               [12] 1179 	inc	r1
      000363 E6               [12] 1180 	mov	a,@r0
      000364 F7               [12] 1181 	mov	@r1,a
      000365 08               [12] 1182 	inc	r0
      000366 09               [12] 1183 	inc	r1
      000367 E6               [12] 1184 	mov	a,@r0
      000368 F7               [12] 1185 	mov	@r1,a
                                   1186 ;	uart.h:156: for(j=1;j<i;j++) digit/=10;
      000369 7B 01            [12] 1187 	mov	r3,#0x01
      00036B                       1188 00110$:
      00036B E5 3C            [12] 1189 	mov	a,_bp
      00036D 24 09            [12] 1190 	add	a,#0x09
      00036F F8               [12] 1191 	mov	r0,a
      000370 C3               [12] 1192 	clr	c
      000371 EB               [12] 1193 	mov	a,r3
      000372 96               [12] 1194 	subb	a,@r0
      000373 50 3A            [24] 1195 	jnc	00101$
      000375 75 3D 0A         [24] 1196 	mov	__divulong_PARM_2,#0x0a
      000378 E4               [12] 1197 	clr	a
      000379 F5 3E            [12] 1198 	mov	(__divulong_PARM_2 + 1),a
      00037B F5 3F            [12] 1199 	mov	(__divulong_PARM_2 + 2),a
      00037D F5 40            [12] 1200 	mov	(__divulong_PARM_2 + 3),a
      00037F E5 3C            [12] 1201 	mov	a,_bp
      000381 24 05            [12] 1202 	add	a,#0x05
      000383 F8               [12] 1203 	mov	r0,a
      000384 86 82            [24] 1204 	mov	dpl,@r0
      000386 08               [12] 1205 	inc	r0
      000387 86 83            [24] 1206 	mov	dph,@r0
      000389 08               [12] 1207 	inc	r0
      00038A 86 F0            [24] 1208 	mov	b,@r0
      00038C 08               [12] 1209 	inc	r0
      00038D E6               [12] 1210 	mov	a,@r0
      00038E C0 03            [24] 1211 	push	ar3
      000390 12 1C 1F         [24] 1212 	lcall	__divulong
      000393 AC 82            [24] 1213 	mov	r4,dpl
      000395 AD 83            [24] 1214 	mov	r5,dph
      000397 AE F0            [24] 1215 	mov	r6,b
      000399 FF               [12] 1216 	mov	r7,a
      00039A D0 03            [24] 1217 	pop	ar3
      00039C E5 3C            [12] 1218 	mov	a,_bp
      00039E 24 05            [12] 1219 	add	a,#0x05
      0003A0 F8               [12] 1220 	mov	r0,a
      0003A1 A6 04            [24] 1221 	mov	@r0,ar4
      0003A3 08               [12] 1222 	inc	r0
      0003A4 A6 05            [24] 1223 	mov	@r0,ar5
      0003A6 08               [12] 1224 	inc	r0
      0003A7 A6 06            [24] 1225 	mov	@r0,ar6
      0003A9 08               [12] 1226 	inc	r0
      0003AA A6 07            [24] 1227 	mov	@r0,ar7
      0003AC 0B               [12] 1228 	inc	r3
      0003AD 80 BC            [24] 1229 	sjmp	00110$
      0003AF                       1230 00101$:
                                   1231 ;	uart.h:158: if(leading_zeroes_flag && digit%10) leading_zeroes_flag=0; //flag to start printing
      0003AF E5 3C            [12] 1232 	mov	a,_bp
      0003B1 24 0A            [12] 1233 	add	a,#0x0a
      0003B3 F8               [12] 1234 	mov	r0,a
      0003B4 E6               [12] 1235 	mov	a,@r0
      0003B5 60 30            [24] 1236 	jz	00103$
      0003B7 75 3D 0A         [24] 1237 	mov	__modulong_PARM_2,#0x0a
      0003BA E4               [12] 1238 	clr	a
      0003BB F5 3E            [12] 1239 	mov	(__modulong_PARM_2 + 1),a
      0003BD F5 3F            [12] 1240 	mov	(__modulong_PARM_2 + 2),a
      0003BF F5 40            [12] 1241 	mov	(__modulong_PARM_2 + 3),a
      0003C1 E5 3C            [12] 1242 	mov	a,_bp
      0003C3 24 05            [12] 1243 	add	a,#0x05
      0003C5 F8               [12] 1244 	mov	r0,a
      0003C6 86 82            [24] 1245 	mov	dpl,@r0
      0003C8 08               [12] 1246 	inc	r0
      0003C9 86 83            [24] 1247 	mov	dph,@r0
      0003CB 08               [12] 1248 	inc	r0
      0003CC 86 F0            [24] 1249 	mov	b,@r0
      0003CE 08               [12] 1250 	inc	r0
      0003CF E6               [12] 1251 	mov	a,@r0
      0003D0 12 1B 9C         [24] 1252 	lcall	__modulong
      0003D3 AA 82            [24] 1253 	mov	r2,dpl
      0003D5 AB 83            [24] 1254 	mov	r3,dph
      0003D7 AE F0            [24] 1255 	mov	r6,b
      0003D9 FF               [12] 1256 	mov	r7,a
      0003DA EA               [12] 1257 	mov	a,r2
      0003DB 4B               [12] 1258 	orl	a,r3
      0003DC 4E               [12] 1259 	orl	a,r6
      0003DD 4F               [12] 1260 	orl	a,r7
      0003DE 60 07            [24] 1261 	jz	00103$
      0003E0 E5 3C            [12] 1262 	mov	a,_bp
      0003E2 24 0A            [12] 1263 	add	a,#0x0a
      0003E4 F8               [12] 1264 	mov	r0,a
      0003E5 76 00            [12] 1265 	mov	@r0,#0x00
      0003E7                       1266 00103$:
                                   1267 ;	uart.h:160: if(leading_zeroes_flag); //pass - do not print
      0003E7 E5 3C            [12] 1268 	mov	a,_bp
      0003E9 24 0A            [12] 1269 	add	a,#0x0a
      0003EB F8               [12] 1270 	mov	r0,a
      0003EC E6               [12] 1271 	mov	a,@r0
      0003ED 70 26            [24] 1272 	jnz	00113$
                                   1273 ;	uart.h:161: else UartWrite(0x30 + digit%10);
      0003EF 75 3D 0A         [24] 1274 	mov	__modulong_PARM_2,#0x0a
      0003F2 E4               [12] 1275 	clr	a
      0003F3 F5 3E            [12] 1276 	mov	(__modulong_PARM_2 + 1),a
      0003F5 F5 3F            [12] 1277 	mov	(__modulong_PARM_2 + 2),a
      0003F7 F5 40            [12] 1278 	mov	(__modulong_PARM_2 + 3),a
      0003F9 E5 3C            [12] 1279 	mov	a,_bp
      0003FB 24 05            [12] 1280 	add	a,#0x05
      0003FD F8               [12] 1281 	mov	r0,a
      0003FE 86 82            [24] 1282 	mov	dpl,@r0
      000400 08               [12] 1283 	inc	r0
      000401 86 83            [24] 1284 	mov	dph,@r0
      000403 08               [12] 1285 	inc	r0
      000404 86 F0            [24] 1286 	mov	b,@r0
      000406 08               [12] 1287 	inc	r0
      000407 E6               [12] 1288 	mov	a,@r0
      000408 12 1B 9C         [24] 1289 	lcall	__modulong
      00040B AC 82            [24] 1290 	mov	r4,dpl
      00040D 74 30            [12] 1291 	mov	a,#0x30
      00040F 2C               [12] 1292 	add	a,r4
      000410 F5 82            [12] 1293 	mov	dpl,a
      000412 12 01 66         [24] 1294 	lcall	_UartWrite
      000415                       1295 00113$:
                                   1296 ;	uart.h:153: for(i=8;i>0;i--)
      000415 E5 3C            [12] 1297 	mov	a,_bp
      000417 24 09            [12] 1298 	add	a,#0x09
      000419 F8               [12] 1299 	mov	r0,a
      00041A 16               [12] 1300 	dec	@r0
      00041B E5 3C            [12] 1301 	mov	a,_bp
      00041D 24 09            [12] 1302 	add	a,#0x09
      00041F F8               [12] 1303 	mov	r0,a
      000420 E6               [12] 1304 	mov	a,@r0
      000421 60 03            [24] 1305 	jz	00149$
      000423 02 03 53         [24] 1306 	ljmp	00112$
      000426                       1307 00149$:
                                   1308 ;	uart.h:163: }
      000426 85 3C 81         [24] 1309 	mov	sp,_bp
      000429 D0 3C            [24] 1310 	pop	_bp
      00042B 22               [24] 1311 	ret
                                   1312 ;------------------------------------------------------------
                                   1313 ;Allocation info for local variables in function 'UartScanByte'
                                   1314 ;------------------------------------------------------------
                                   1315 ;unibble                   Allocated to registers r7 
                                   1316 ;lnibble                   Allocated to registers r6 
                                   1317 ;------------------------------------------------------------
                                   1318 ;	uart.h:166: uint8_t UartScanByte() __reentrant
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function UartScanByte
                                   1321 ;	-----------------------------------------
      00042C                       1322 _UartScanByte:
                                   1323 ;	uart.h:170: while(UartReadReady()) UartRead(); //flush
      00042C                       1324 00101$:
      00042C 12 01 52         [24] 1325 	lcall	_UartReadReady
      00042F E5 82            [12] 1326 	mov	a,dpl
      000431 60 05            [24] 1327 	jz	00103$
      000433 12 01 5D         [24] 1328 	lcall	_UartRead
      000436 80 F4            [24] 1329 	sjmp	00101$
      000438                       1330 00103$:
                                   1331 ;	uart.h:171: UartPrint("Number(hex) < ");
      000438 90 1E 05         [24] 1332 	mov	dptr,#___str_0
      00043B 75 F0 80         [24] 1333 	mov	b,#0x80
      00043E 12 01 EC         [24] 1334 	lcall	_UartPrint
                                   1335 ;	uart.h:173: unibble = UartRead();
      000441 12 01 5D         [24] 1336 	lcall	_UartRead
                                   1337 ;	uart.h:174: UartWrite(unibble);
      000444 AF 82            [24] 1338 	mov  r7,dpl
      000446 C0 07            [24] 1339 	push	ar7
      000448 12 01 66         [24] 1340 	lcall	_UartWrite
                                   1341 ;	uart.h:175: lnibble = UartRead();
      00044B 12 01 5D         [24] 1342 	lcall	_UartRead
                                   1343 ;	uart.h:176: UartWrite(lnibble);
      00044E AE 82            [24] 1344 	mov  r6,dpl
      000450 C0 06            [24] 1345 	push	ar6
      000452 12 01 66         [24] 1346 	lcall	_UartWrite
                                   1347 ;	uart.h:178: UartWrite('\n');
      000455 75 82 0A         [24] 1348 	mov	dpl,#0x0a
      000458 12 01 66         [24] 1349 	lcall	_UartWrite
      00045B D0 06            [24] 1350 	pop	ar6
      00045D D0 07            [24] 1351 	pop	ar7
                                   1352 ;	uart.h:180: return hex2dec(unibble,lnibble);
      00045F 8E 08            [24] 1353 	mov	_hex2dec_PARM_2,r6
      000461 8F 82            [24] 1354 	mov	dpl,r7
                                   1355 ;	uart.h:181: }
      000463 02 01 0B         [24] 1356 	ljmp	_hex2dec
                                   1357 ;------------------------------------------------------------
                                   1358 ;Allocation info for local variables in function 'UartScanLine'
                                   1359 ;------------------------------------------------------------
                                   1360 ;maxLength                 Allocated to stack - _bp -3
                                   1361 ;dst                       Allocated to stack - _bp +1
                                   1362 ;recv                      Allocated to registers r2 
                                   1363 ;count                     Allocated to registers r4 
                                   1364 ;------------------------------------------------------------
                                   1365 ;	uart.h:183: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1366 ;	-----------------------------------------
                                   1367 ;	 function UartScanLine
                                   1368 ;	-----------------------------------------
      000466                       1369 _UartScanLine:
      000466 C0 3C            [24] 1370 	push	_bp
      000468 85 81 3C         [24] 1371 	mov	_bp,sp
      00046B C0 82            [24] 1372 	push	dpl
      00046D C0 83            [24] 1373 	push	dph
      00046F C0 F0            [24] 1374 	push	b
                                   1375 ;	uart.h:185: uint8_t recv,count=0;
      000471 7C 00            [12] 1376 	mov	r4,#0x00
                                   1377 ;	uart.h:187: while(UartReadReady()) UartRead(); //flush
      000473                       1378 00101$:
      000473 C0 04            [24] 1379 	push	ar4
      000475 12 01 52         [24] 1380 	lcall	_UartReadReady
      000478 E5 82            [12] 1381 	mov	a,dpl
      00047A D0 04            [24] 1382 	pop	ar4
      00047C 60 09            [24] 1383 	jz	00118$
      00047E C0 04            [24] 1384 	push	ar4
      000480 12 01 5D         [24] 1385 	lcall	_UartRead
      000483 D0 04            [24] 1386 	pop	ar4
                                   1387 ;	uart.h:189: while(1)
      000485 80 EC            [24] 1388 	sjmp	00101$
      000487                       1389 00118$:
      000487 7B 00            [12] 1390 	mov	r3,#0x00
      000489                       1391 00110$:
                                   1392 ;	uart.h:192: recv=UartRead();
      000489 C0 04            [24] 1393 	push	ar4
      00048B C0 03            [24] 1394 	push	ar3
      00048D 12 01 5D         [24] 1395 	lcall	_UartRead
                                   1396 ;	uart.h:193: UartWrite(recv);
      000490 AA 82            [24] 1397 	mov  r2,dpl
      000492 C0 02            [24] 1398 	push	ar2
      000494 12 01 66         [24] 1399 	lcall	_UartWrite
      000497 D0 02            [24] 1400 	pop	ar2
      000499 D0 03            [24] 1401 	pop	ar3
      00049B D0 04            [24] 1402 	pop	ar4
                                   1403 ;	uart.h:194: if(recv == '\n') 
      00049D BA 0A 19         [24] 1404 	cjne	r2,#0x0a,00105$
                                   1405 ;	uart.h:196: *(dst+count)=0; //add string terminate
      0004A0 A8 3C            [24] 1406 	mov	r0,_bp
      0004A2 08               [12] 1407 	inc	r0
      0004A3 EC               [12] 1408 	mov	a,r4
      0004A4 26               [12] 1409 	add	a,@r0
      0004A5 FD               [12] 1410 	mov	r5,a
      0004A6 E4               [12] 1411 	clr	a
      0004A7 08               [12] 1412 	inc	r0
      0004A8 36               [12] 1413 	addc	a,@r0
      0004A9 FE               [12] 1414 	mov	r6,a
      0004AA 08               [12] 1415 	inc	r0
      0004AB 86 07            [24] 1416 	mov	ar7,@r0
      0004AD 8D 82            [24] 1417 	mov	dpl,r5
      0004AF 8E 83            [24] 1418 	mov	dph,r6
      0004B1 8F F0            [24] 1419 	mov	b,r7
      0004B3 E4               [12] 1420 	clr	a
      0004B4 12 1C 84         [24] 1421 	lcall	__gptrput
                                   1422 ;	uart.h:197: break;
      0004B7 80 31            [24] 1423 	sjmp	00111$
      0004B9                       1424 00105$:
                                   1425 ;	uart.h:199: else *(dst+count)=recv;
      0004B9 A8 3C            [24] 1426 	mov	r0,_bp
      0004BB 08               [12] 1427 	inc	r0
      0004BC EB               [12] 1428 	mov	a,r3
      0004BD 26               [12] 1429 	add	a,@r0
      0004BE FD               [12] 1430 	mov	r5,a
      0004BF E4               [12] 1431 	clr	a
      0004C0 08               [12] 1432 	inc	r0
      0004C1 36               [12] 1433 	addc	a,@r0
      0004C2 FE               [12] 1434 	mov	r6,a
      0004C3 08               [12] 1435 	inc	r0
      0004C4 86 07            [24] 1436 	mov	ar7,@r0
      0004C6 8D 82            [24] 1437 	mov	dpl,r5
      0004C8 8E 83            [24] 1438 	mov	dph,r6
      0004CA 8F F0            [24] 1439 	mov	b,r7
      0004CC EA               [12] 1440 	mov	a,r2
      0004CD 12 1C 84         [24] 1441 	lcall	__gptrput
                                   1442 ;	uart.h:201: if(count==maxLength) 
      0004D0 E5 3C            [12] 1443 	mov	a,_bp
      0004D2 24 FD            [12] 1444 	add	a,#0xfd
      0004D4 F8               [12] 1445 	mov	r0,a
      0004D5 E6               [12] 1446 	mov	a,@r0
      0004D6 B5 03 0C         [24] 1447 	cjne	a,ar3,00108$
                                   1448 ;	uart.h:203: *(dst+count)=0; // terminate string.
      0004D9 8D 82            [24] 1449 	mov	dpl,r5
      0004DB 8E 83            [24] 1450 	mov	dph,r6
      0004DD 8F F0            [24] 1451 	mov	b,r7
      0004DF E4               [12] 1452 	clr	a
      0004E0 12 1C 84         [24] 1453 	lcall	__gptrput
                                   1454 ;	uart.h:204: break;
      0004E3 80 05            [24] 1455 	sjmp	00111$
      0004E5                       1456 00108$:
                                   1457 ;	uart.h:207: count++;
      0004E5 0B               [12] 1458 	inc	r3
      0004E6 8B 04            [24] 1459 	mov	ar4,r3
      0004E8 80 9F            [24] 1460 	sjmp	00110$
      0004EA                       1461 00111$:
                                   1462 ;	uart.h:211: return count;
      0004EA 8C 82            [24] 1463 	mov	dpl,r4
                                   1464 ;	uart.h:213: }
      0004EC 85 3C 81         [24] 1465 	mov	sp,_bp
      0004EF D0 3C            [24] 1466 	pop	_bp
      0004F1 22               [24] 1467 	ret
                                   1468 ;------------------------------------------------------------
                                   1469 ;Allocation info for local variables in function 'spi_init'
                                   1470 ;------------------------------------------------------------
                                   1471 ;	spi.h:38: void spi_init()
                                   1472 ;	-----------------------------------------
                                   1473 ;	 function spi_init
                                   1474 ;	-----------------------------------------
      0004F2                       1475 _spi_init:
                                   1476 ;	spi.h:41: spi_miso_high(); //make MISO input
      0004F2 43 90 01         [24] 1477 	orl	_P1,#0x01
                                   1478 ;	spi.h:42: spi_mosi_high(); //recommended in sd card tutorial
      0004F5 43 90 02         [24] 1479 	orl	_P1,#0x02
                                   1480 ;	spi.h:43: spi_cs_high(); //deselect
      0004F8 43 90 08         [24] 1481 	orl	_P1,#0x08
                                   1482 ;	spi.h:44: spi_clk_low(); //mode 0, idle clk is low
      0004FB 53 90 FB         [24] 1483 	anl	_P1,#0xfb
                                   1484 ;	spi.h:45: }
      0004FE 22               [24] 1485 	ret
                                   1486 ;------------------------------------------------------------
                                   1487 ;Allocation info for local variables in function 'spi_transfer'
                                   1488 ;------------------------------------------------------------
                                   1489 ;handle_cs                 Allocated with name '_spi_transfer_PARM_2'
                                   1490 ;tx                        Allocated to registers r7 
                                   1491 ;rx                        Allocated to registers r6 
                                   1492 ;i                         Allocated to registers r5 
                                   1493 ;------------------------------------------------------------
                                   1494 ;	spi.h:47: uint8_t spi_transfer(uint8_t tx,uint8_t handle_cs)
                                   1495 ;	-----------------------------------------
                                   1496 ;	 function spi_transfer
                                   1497 ;	-----------------------------------------
      0004FF                       1498 _spi_transfer:
      0004FF AF 82            [24] 1499 	mov	r7,dpl
                                   1500 ;	spi.h:50: rx=0; //clear the rx - sdcc compiler throws warning otherwise
      000501 7E 00            [12] 1501 	mov	r6,#0x00
                                   1502 ;	spi.h:53: spi_clk_low();
      000503 53 90 FB         [24] 1503 	anl	_P1,#0xfb
                                   1504 ;	spi.h:56: if(handle_cs)
      000506 E5 3D            [12] 1505 	mov	a,_spi_transfer_PARM_2
      000508 60 03            [24] 1506 	jz	00139$
                                   1507 ;	spi.h:57: spi_cs_low();
      00050A 53 90 F7         [24] 1508 	anl	_P1,#0xf7
                                   1509 ;	spi.h:60: for(i=0;i<8;i++)
      00050D                       1510 00139$:
      00050D 7D 00            [12] 1511 	mov	r5,#0x00
      00050F                       1512 00132$:
                                   1513 ;	spi.h:63: if(tx & 0x80) spi_mosi_high();
      00050F EF               [12] 1514 	mov	a,r7
      000510 30 E7 05         [24] 1515 	jnb	acc.7,00112$
      000513 43 90 02         [24] 1516 	orl	_P1,#0x02
                                   1517 ;	spi.h:64: else spi_mosi_low();
      000516 80 03            [24] 1518 	sjmp	00117$
      000518                       1519 00112$:
      000518 53 90 FD         [24] 1520 	anl	_P1,#0xfd
      00051B                       1521 00117$:
                                   1522 ;	spi.h:66: tx <<=1;
      00051B 8F 04            [24] 1523 	mov	ar4,r7
      00051D EC               [12] 1524 	mov	a,r4
      00051E 2C               [12] 1525 	add	a,r4
      00051F FF               [12] 1526 	mov	r7,a
                                   1527 ;	spi.h:71: rx <<=1;
      000520 8E 04            [24] 1528 	mov	ar4,r6
      000522 EC               [12] 1529 	mov	a,r4
      000523 2C               [12] 1530 	add	a,r4
      000524 FE               [12] 1531 	mov	r6,a
                                   1532 ;	spi.h:74: spi_clk_high();
      000525 43 90 04         [24] 1533 	orl	_P1,#0x04
                                   1534 ;	spi.h:77: if(spi_read_miso()) rx |=1;
      000528 E5 90            [12] 1535 	mov	a,_P1
      00052A 30 E0 03         [24] 1536 	jnb	acc.0,00123$
      00052D 43 06 01         [24] 1537 	orl	ar6,#0x01
                                   1538 ;	spi.h:82: spi_clk_low();
      000530                       1539 00123$:
      000530 53 90 FB         [24] 1540 	anl	_P1,#0xfb
                                   1541 ;	spi.h:60: for(i=0;i<8;i++)
      000533 0D               [12] 1542 	inc	r5
      000534 BD 08 00         [24] 1543 	cjne	r5,#0x08,00164$
      000537                       1544 00164$:
      000537 40 D6            [24] 1545 	jc	00132$
                                   1546 ;	spi.h:87: if(handle_cs)
      000539 E5 3D            [12] 1547 	mov	a,_spi_transfer_PARM_2
      00053B 60 03            [24] 1548 	jz	00131$
                                   1549 ;	spi.h:88: spi_cs_high();
      00053D 43 90 08         [24] 1550 	orl	_P1,#0x08
      000540                       1551 00131$:
                                   1552 ;	spi.h:90: return rx;
      000540 8E 82            [24] 1553 	mov	dpl,r6
                                   1554 ;	spi.h:91: }
      000542 22               [24] 1555 	ret
                                   1556 ;------------------------------------------------------------
                                   1557 ;Allocation info for local variables in function 'spi_transfer_all'
                                   1558 ;------------------------------------------------------------
                                   1559 ;len                       Allocated with name '_spi_transfer_all_PARM_2'
                                   1560 ;handle_cs                 Allocated with name '_spi_transfer_all_PARM_3'
                                   1561 ;buff                      Allocated to registers r5 r6 r7 
                                   1562 ;i                         Allocated to registers r4 
                                   1563 ;------------------------------------------------------------
                                   1564 ;	spi.h:95: void spi_transfer_all(uint8_t *buff, uint8_t len,uint8_t handle_cs)
                                   1565 ;	-----------------------------------------
                                   1566 ;	 function spi_transfer_all
                                   1567 ;	-----------------------------------------
      000543                       1568 _spi_transfer_all:
      000543 AD 82            [24] 1569 	mov	r5,dpl
      000545 AE 83            [24] 1570 	mov	r6,dph
      000547 AF F0            [24] 1571 	mov	r7,b
                                   1572 ;	spi.h:100: if(handle_cs)spi_cs_low();
      000549 E5 0C            [12] 1573 	mov	a,_spi_transfer_all_PARM_3
      00054B 60 03            [24] 1574 	jz	00119$
      00054D 53 90 F7         [24] 1575 	anl	_P1,#0xf7
                                   1576 ;	spi.h:102: for(i=0;i<len;i++)
      000550                       1577 00119$:
      000550 7C 00            [12] 1578 	mov	r4,#0x00
      000552                       1579 00113$:
      000552 C3               [12] 1580 	clr	c
      000553 EC               [12] 1581 	mov	a,r4
      000554 95 0B            [12] 1582 	subb	a,_spi_transfer_all_PARM_2
      000556 50 2D            [24] 1583 	jnc	00106$
                                   1584 ;	spi.h:104: spi_transfer(buff[i],0);
      000558 EC               [12] 1585 	mov	a,r4
      000559 2D               [12] 1586 	add	a,r5
      00055A F9               [12] 1587 	mov	r1,a
      00055B E4               [12] 1588 	clr	a
      00055C 3E               [12] 1589 	addc	a,r6
      00055D FA               [12] 1590 	mov	r2,a
      00055E 8F 03            [24] 1591 	mov	ar3,r7
      000560 89 82            [24] 1592 	mov	dpl,r1
      000562 8A 83            [24] 1593 	mov	dph,r2
      000564 8B F0            [24] 1594 	mov	b,r3
      000566 12 1D 77         [24] 1595 	lcall	__gptrget
      000569 F9               [12] 1596 	mov	r1,a
      00056A 75 3D 00         [24] 1597 	mov	_spi_transfer_PARM_2,#0x00
      00056D 89 82            [24] 1598 	mov	dpl,r1
      00056F C0 07            [24] 1599 	push	ar7
      000571 C0 06            [24] 1600 	push	ar6
      000573 C0 05            [24] 1601 	push	ar5
      000575 C0 04            [24] 1602 	push	ar4
      000577 12 04 FF         [24] 1603 	lcall	_spi_transfer
      00057A D0 04            [24] 1604 	pop	ar4
      00057C D0 05            [24] 1605 	pop	ar5
      00057E D0 06            [24] 1606 	pop	ar6
      000580 D0 07            [24] 1607 	pop	ar7
                                   1608 ;	spi.h:102: for(i=0;i<len;i++)
      000582 0C               [12] 1609 	inc	r4
      000583 80 CD            [24] 1610 	sjmp	00113$
      000585                       1611 00106$:
                                   1612 ;	spi.h:108: if(handle_cs)spi_cs_high();
      000585 E5 0C            [12] 1613 	mov	a,_spi_transfer_all_PARM_3
      000587 60 03            [24] 1614 	jz	00115$
      000589 43 90 08         [24] 1615 	orl	_P1,#0x08
      00058C                       1616 00115$:
                                   1617 ;	spi.h:110: }
      00058C 22               [24] 1618 	ret
                                   1619 ;------------------------------------------------------------
                                   1620 ;Allocation info for local variables in function 'sd_isbusy'
                                   1621 ;------------------------------------------------------------
                                   1622 ;i                         Allocated to registers r7 
                                   1623 ;------------------------------------------------------------
                                   1624 ;	sdcard.h:26: uint8_t sd_isbusy()
                                   1625 ;	-----------------------------------------
                                   1626 ;	 function sd_isbusy
                                   1627 ;	-----------------------------------------
      00058D                       1628 _sd_isbusy:
                                   1629 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      00058D 7F 00            [12] 1630 	mov	r7,#0x00
      00058F                       1631 00104$:
                                   1632 ;	sdcard.h:31: if(sd_spi_write(0xff)==0xff) return 0; //not busy
      00058F 75 3D 00         [24] 1633 	mov	_spi_transfer_PARM_2,#0x00
      000592 75 82 FF         [24] 1634 	mov	dpl,#0xff
      000595 C0 07            [24] 1635 	push	ar7
      000597 12 04 FF         [24] 1636 	lcall	_spi_transfer
      00059A AE 82            [24] 1637 	mov	r6,dpl
      00059C D0 07            [24] 1638 	pop	ar7
      00059E BE FF 04         [24] 1639 	cjne	r6,#0xff,00105$
      0005A1 75 82 00         [24] 1640 	mov	dpl,#0x00
      0005A4 22               [24] 1641 	ret
      0005A5                       1642 00105$:
                                   1643 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      0005A5 0F               [12] 1644 	inc	r7
      0005A6 BF FE 00         [24] 1645 	cjne	r7,#0xfe,00122$
      0005A9                       1646 00122$:
      0005A9 40 E4            [24] 1647 	jc	00104$
                                   1648 ;	sdcard.h:34: return 1; //busy
      0005AB 75 82 01         [24] 1649 	mov	dpl,#0x01
                                   1650 ;	sdcard.h:35: }
      0005AE 22               [24] 1651 	ret
                                   1652 ;------------------------------------------------------------
                                   1653 ;Allocation info for local variables in function 'sd_initial_clk'
                                   1654 ;------------------------------------------------------------
                                   1655 ;i                         Allocated to registers r7 
                                   1656 ;------------------------------------------------------------
                                   1657 ;	sdcard.h:37: void sd_initial_clk()
                                   1658 ;	-----------------------------------------
                                   1659 ;	 function sd_initial_clk
                                   1660 ;	-----------------------------------------
      0005AF                       1661 _sd_initial_clk:
                                   1662 ;	sdcard.h:45: spi_cs_high(); // required by spec but works fine even when cs pin of SDCARD is always pulled to ground to save uC pins
      0005AF 43 90 08         [24] 1663 	orl	_P1,#0x08
                                   1664 ;	sdcard.h:46: for(uint8_t i=0;i<10;i++)spi_transfer(0xff,0);
      0005B2 7F 00            [12] 1665 	mov	r7,#0x00
      0005B4                       1666 00106$:
      0005B4 BF 0A 00         [24] 1667 	cjne	r7,#0x0a,00119$
      0005B7                       1668 00119$:
      0005B7 50 10            [24] 1669 	jnc	00108$
      0005B9 75 3D 00         [24] 1670 	mov	_spi_transfer_PARM_2,#0x00
      0005BC 75 82 FF         [24] 1671 	mov	dpl,#0xff
      0005BF C0 07            [24] 1672 	push	ar7
      0005C1 12 04 FF         [24] 1673 	lcall	_spi_transfer
      0005C4 D0 07            [24] 1674 	pop	ar7
      0005C6 0F               [12] 1675 	inc	r7
      0005C7 80 EB            [24] 1676 	sjmp	00106$
      0005C9                       1677 00108$:
                                   1678 ;	sdcard.h:47: }
      0005C9 22               [24] 1679 	ret
                                   1680 ;------------------------------------------------------------
                                   1681 ;Allocation info for local variables in function 'sd_cmd'
                                   1682 ;------------------------------------------------------------
                                   1683 ;arg                       Allocated with name '_sd_cmd_PARM_2'
                                   1684 ;cmd                       Allocated to registers r7 
                                   1685 ;_resp                     Allocated to registers r5 
                                   1686 ;retries                   Allocated to registers r6 
                                   1687 ;crc                       Allocated to registers r6 
                                   1688 ;i                         Allocated to registers r6 
                                   1689 ;i                         Allocated to registers r7 
                                   1690 ;------------------------------------------------------------
                                   1691 ;	sdcard.h:49: uint8_t sd_cmd(uint8_t cmd, uint32_t arg)
                                   1692 ;	-----------------------------------------
                                   1693 ;	 function sd_cmd
                                   1694 ;	-----------------------------------------
      0005CA                       1695 _sd_cmd:
      0005CA AF 82            [24] 1696 	mov	r7,dpl
                                   1697 ;	sdcard.h:51: uint8_t _resp=0,retries=0,crc=0xff;
      0005CC 7E FF            [12] 1698 	mov	r6,#0xff
                                   1699 ;	sdcard.h:53: spi_cs_low();
      0005CE 53 90 F7         [24] 1700 	anl	_P1,#0xf7
                                   1701 ;	sdcard.h:55: sd_isbusy(); //wait while sd is busy
      0005D1 C0 07            [24] 1702 	push	ar7
      0005D3 C0 06            [24] 1703 	push	ar6
      0005D5 12 05 8D         [24] 1704 	lcall	_sd_isbusy
      0005D8 D0 06            [24] 1705 	pop	ar6
      0005DA D0 07            [24] 1706 	pop	ar7
                                   1707 ;	sdcard.h:63: sd_spi_write(cmd | 0x40);
      0005DC 74 40            [12] 1708 	mov	a,#0x40
      0005DE 4F               [12] 1709 	orl	a,r7
      0005DF F5 82            [12] 1710 	mov	dpl,a
      0005E1 75 3D 00         [24] 1711 	mov	_spi_transfer_PARM_2,#0x00
      0005E4 C0 07            [24] 1712 	push	ar7
      0005E6 C0 06            [24] 1713 	push	ar6
      0005E8 12 04 FF         [24] 1714 	lcall	_spi_transfer
      0005EB D0 06            [24] 1715 	pop	ar6
      0005ED D0 07            [24] 1716 	pop	ar7
                                   1717 ;	sdcard.h:65: sd_spi_write((arg >> 24) & 0xff);
      0005EF 85 10 82         [24] 1718 	mov	dpl,(_sd_cmd_PARM_2 + 3)
      0005F2 75 3D 00         [24] 1719 	mov	_spi_transfer_PARM_2,#0x00
      0005F5 C0 07            [24] 1720 	push	ar7
      0005F7 C0 06            [24] 1721 	push	ar6
      0005F9 12 04 FF         [24] 1722 	lcall	_spi_transfer
      0005FC D0 06            [24] 1723 	pop	ar6
      0005FE D0 07            [24] 1724 	pop	ar7
                                   1725 ;	sdcard.h:66: sd_spi_write((arg >> 16) & 0xff);
      000600 85 0F 82         [24] 1726 	mov	dpl,(_sd_cmd_PARM_2 + 2)
      000603 75 3D 00         [24] 1727 	mov	_spi_transfer_PARM_2,#0x00
      000606 C0 07            [24] 1728 	push	ar7
      000608 C0 06            [24] 1729 	push	ar6
      00060A 12 04 FF         [24] 1730 	lcall	_spi_transfer
      00060D D0 06            [24] 1731 	pop	ar6
      00060F D0 07            [24] 1732 	pop	ar7
                                   1733 ;	sdcard.h:67: sd_spi_write((arg >> 8) & 0xff);
      000611 85 0E 82         [24] 1734 	mov	dpl,(_sd_cmd_PARM_2 + 1)
      000614 75 3D 00         [24] 1735 	mov	_spi_transfer_PARM_2,#0x00
      000617 C0 07            [24] 1736 	push	ar7
      000619 C0 06            [24] 1737 	push	ar6
      00061B 12 04 FF         [24] 1738 	lcall	_spi_transfer
      00061E D0 06            [24] 1739 	pop	ar6
      000620 D0 07            [24] 1740 	pop	ar7
                                   1741 ;	sdcard.h:68: sd_spi_write(arg & 0xff);
      000622 85 0D 82         [24] 1742 	mov	dpl,_sd_cmd_PARM_2
      000625 75 3D 00         [24] 1743 	mov	_spi_transfer_PARM_2,#0x00
      000628 C0 07            [24] 1744 	push	ar7
      00062A C0 06            [24] 1745 	push	ar6
      00062C 12 04 FF         [24] 1746 	lcall	_spi_transfer
      00062F D0 06            [24] 1747 	pop	ar6
      000631 D0 07            [24] 1748 	pop	ar7
                                   1749 ;	sdcard.h:70: if(cmd==CMD0) 
      000633 EF               [12] 1750 	mov	a,r7
      000634 70 04            [24] 1751 	jnz	00107$
                                   1752 ;	sdcard.h:72: crc=0x95;
      000636 7E 95            [12] 1753 	mov	r6,#0x95
      000638 80 05            [24] 1754 	sjmp	00108$
      00063A                       1755 00107$:
                                   1756 ;	sdcard.h:74: else if(cmd==CMD8) 
      00063A BF 08 02         [24] 1757 	cjne	r7,#0x08,00108$
                                   1758 ;	sdcard.h:76: crc=0x87;
      00063D 7E 87            [12] 1759 	mov	r6,#0x87
      00063F                       1760 00108$:
                                   1761 ;	sdcard.h:78: sd_spi_write(crc);	
      00063F 75 3D 00         [24] 1762 	mov	_spi_transfer_PARM_2,#0x00
      000642 8E 82            [24] 1763 	mov	dpl,r6
      000644 C0 07            [24] 1764 	push	ar7
      000646 12 04 FF         [24] 1765 	lcall	_spi_transfer
      000649 D0 07            [24] 1766 	pop	ar7
                                   1767 ;	sdcard.h:81: while(1) 
      00064B 7E 00            [12] 1768 	mov	r6,#0x00
      00064D                       1769 00115$:
                                   1770 ;	sdcard.h:83: _resp = sd_spi_write(0xff);
      00064D 75 3D 00         [24] 1771 	mov	_spi_transfer_PARM_2,#0x00
      000650 75 82 FF         [24] 1772 	mov	dpl,#0xff
      000653 C0 07            [24] 1773 	push	ar7
      000655 C0 06            [24] 1774 	push	ar6
      000657 12 04 FF         [24] 1775 	lcall	_spi_transfer
      00065A AD 82            [24] 1776 	mov	r5,dpl
      00065C D0 06            [24] 1777 	pop	ar6
      00065E D0 07            [24] 1778 	pop	ar7
                                   1779 ;	sdcard.h:85: if(_resp & 0x80);
      000660 ED               [12] 1780 	mov	a,r5
      000661 30 E7 0A         [24] 1781 	jnb	acc.7,00116$
                                   1782 ;	sdcard.h:88: if(retries++ == SD_MAX_RETRIES) 
      000664 8E 04            [24] 1783 	mov	ar4,r6
      000666 0E               [12] 1784 	inc	r6
      000667 BC 19 E3         [24] 1785 	cjne	r4,#0x19,00115$
                                   1786 ;	sdcard.h:94: return SD_MAX_RETRIES_FAIL; // 0xff means failed
      00066A 75 82 FE         [24] 1787 	mov	dpl,#0xfe
      00066D 22               [24] 1788 	ret
      00066E                       1789 00116$:
                                   1790 ;	sdcard.h:106: if(cmd==CMD8 || cmd==CMD58)
      00066E E4               [12] 1791 	clr	a
      00066F BF 08 01         [24] 1792 	cjne	r7,#0x08,00203$
      000672 04               [12] 1793 	inc	a
      000673                       1794 00203$:
      000673 FE               [12] 1795 	mov	r6,a
      000674 70 08            [24] 1796 	jnz	00128$
      000676 BF 3A 02         [24] 1797 	cjne	r7,#0x3a,00206$
      000679 80 03            [24] 1798 	sjmp	00207$
      00067B                       1799 00206$:
      00067B 02 06 F7         [24] 1800 	ljmp	00129$
      00067E                       1801 00207$:
      00067E                       1802 00128$:
                                   1803 ;	sdcard.h:114: if(cmd==CMD8)
      00067E EE               [12] 1804 	mov	a,r6
      00067F 60 33            [24] 1805 	jz	00126$
                                   1806 ;	sdcard.h:116: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000681 7E 00            [12] 1807 	mov	r6,#0x00
      000683                       1808 00132$:
      000683 BE 03 00         [24] 1809 	cjne	r6,#0x03,00209$
      000686                       1810 00209$:
      000686 50 14            [24] 1811 	jnc	00117$
      000688 75 3D 00         [24] 1812 	mov	_spi_transfer_PARM_2,#0x00
      00068B 75 82 FF         [24] 1813 	mov	dpl,#0xff
      00068E C0 06            [24] 1814 	push	ar6
      000690 C0 05            [24] 1815 	push	ar5
      000692 12 04 FF         [24] 1816 	lcall	_spi_transfer
      000695 D0 05            [24] 1817 	pop	ar5
      000697 D0 06            [24] 1818 	pop	ar6
      000699 0E               [12] 1819 	inc	r6
      00069A 80 E7            [24] 1820 	sjmp	00132$
      00069C                       1821 00117$:
                                   1822 ;	sdcard.h:117: if(sd_spi_write(0xff)!=0xAA) return SD_CMD_FAIL;
      00069C 75 3D 00         [24] 1823 	mov	_spi_transfer_PARM_2,#0x00
      00069F 75 82 FF         [24] 1824 	mov	dpl,#0xff
      0006A2 C0 05            [24] 1825 	push	ar5
      0006A4 12 04 FF         [24] 1826 	lcall	_spi_transfer
      0006A7 AE 82            [24] 1827 	mov	r6,dpl
      0006A9 D0 05            [24] 1828 	pop	ar5
      0006AB BE AA 02         [24] 1829 	cjne	r6,#0xaa,00211$
      0006AE 80 3A            [24] 1830 	sjmp	00127$
      0006B0                       1831 00211$:
      0006B0 75 82 FF         [24] 1832 	mov	dpl,#0xff
      0006B3 22               [24] 1833 	ret
      0006B4                       1834 00126$:
                                   1835 ;	sdcard.h:119: else if(cmd==CMD58)
      0006B4 BF 3A 33         [24] 1836 	cjne	r7,#0x3a,00127$
                                   1837 ;	sdcard.h:121: if(sd_spi_write(0xff)!=0xC0) return SD_CMD_FAIL;
      0006B7 75 3D 00         [24] 1838 	mov	_spi_transfer_PARM_2,#0x00
      0006BA 75 82 FF         [24] 1839 	mov	dpl,#0xff
      0006BD C0 05            [24] 1840 	push	ar5
      0006BF 12 04 FF         [24] 1841 	lcall	_spi_transfer
      0006C2 AF 82            [24] 1842 	mov	r7,dpl
      0006C4 D0 05            [24] 1843 	pop	ar5
      0006C6 BF C0 02         [24] 1844 	cjne	r7,#0xc0,00214$
      0006C9 80 04            [24] 1845 	sjmp	00152$
      0006CB                       1846 00214$:
      0006CB 75 82 FF         [24] 1847 	mov	dpl,#0xff
                                   1848 ;	sdcard.h:123: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      0006CE 22               [24] 1849 	ret
      0006CF                       1850 00152$:
      0006CF 7F 00            [12] 1851 	mov	r7,#0x00
      0006D1                       1852 00135$:
      0006D1 BF 03 00         [24] 1853 	cjne	r7,#0x03,00215$
      0006D4                       1854 00215$:
      0006D4 50 14            [24] 1855 	jnc	00127$
      0006D6 75 3D 00         [24] 1856 	mov	_spi_transfer_PARM_2,#0x00
      0006D9 75 82 FF         [24] 1857 	mov	dpl,#0xff
      0006DC C0 07            [24] 1858 	push	ar7
      0006DE C0 05            [24] 1859 	push	ar5
      0006E0 12 04 FF         [24] 1860 	lcall	_spi_transfer
      0006E3 D0 05            [24] 1861 	pop	ar5
      0006E5 D0 07            [24] 1862 	pop	ar7
      0006E7 0F               [12] 1863 	inc	r7
      0006E8 80 E7            [24] 1864 	sjmp	00135$
      0006EA                       1865 00127$:
                                   1866 ;	sdcard.h:128: sd_spi_write(0xff);
      0006EA 75 3D 00         [24] 1867 	mov	_spi_transfer_PARM_2,#0x00
      0006ED 75 82 FF         [24] 1868 	mov	dpl,#0xff
      0006F0 C0 05            [24] 1869 	push	ar5
      0006F2 12 04 FF         [24] 1870 	lcall	_spi_transfer
      0006F5 D0 05            [24] 1871 	pop	ar5
      0006F7                       1872 00129$:
                                   1873 ;	sdcard.h:136: return _resp;
      0006F7 8D 82            [24] 1874 	mov	dpl,r5
                                   1875 ;	sdcard.h:138: }
      0006F9 22               [24] 1876 	ret
                                   1877 ;------------------------------------------------------------
                                   1878 ;Allocation info for local variables in function 'sd_acmd'
                                   1879 ;------------------------------------------------------------
                                   1880 ;arg                       Allocated with name '_sd_acmd_PARM_2'
                                   1881 ;cmd                       Allocated to registers r7 
                                   1882 ;_resp                     Allocated to registers 
                                   1883 ;------------------------------------------------------------
                                   1884 ;	sdcard.h:140: uint8_t sd_acmd(uint8_t cmd, uint32_t arg)
                                   1885 ;	-----------------------------------------
                                   1886 ;	 function sd_acmd
                                   1887 ;	-----------------------------------------
      0006FA                       1888 _sd_acmd:
      0006FA AF 82            [24] 1889 	mov	r7,dpl
                                   1890 ;	sdcard.h:144: _resp=sd_cmd(CMD55,0);
      0006FC E4               [12] 1891 	clr	a
      0006FD F5 0D            [12] 1892 	mov	_sd_cmd_PARM_2,a
      0006FF F5 0E            [12] 1893 	mov	(_sd_cmd_PARM_2 + 1),a
      000701 F5 0F            [12] 1894 	mov	(_sd_cmd_PARM_2 + 2),a
      000703 F5 10            [12] 1895 	mov	(_sd_cmd_PARM_2 + 3),a
      000705 75 82 37         [24] 1896 	mov	dpl,#0x37
      000708 C0 07            [24] 1897 	push	ar7
      00070A 12 05 CA         [24] 1898 	lcall	_sd_cmd
      00070D AE 82            [24] 1899 	mov	r6,dpl
      00070F D0 07            [24] 1900 	pop	ar7
                                   1901 ;	sdcard.h:145: if(_resp!=1) return SD_CMD_FAIL;
      000711 BE 01 02         [24] 1902 	cjne	r6,#0x01,00110$
      000714 80 04            [24] 1903 	sjmp	00102$
      000716                       1904 00110$:
      000716 75 82 FF         [24] 1905 	mov	dpl,#0xff
      000719 22               [24] 1906 	ret
      00071A                       1907 00102$:
                                   1908 ;	sdcard.h:148: _resp=sd_cmd(cmd,arg);
      00071A 85 11 0D         [24] 1909 	mov	_sd_cmd_PARM_2,_sd_acmd_PARM_2
      00071D 85 12 0E         [24] 1910 	mov	(_sd_cmd_PARM_2 + 1),(_sd_acmd_PARM_2 + 1)
      000720 85 13 0F         [24] 1911 	mov	(_sd_cmd_PARM_2 + 2),(_sd_acmd_PARM_2 + 2)
      000723 85 14 10         [24] 1912 	mov	(_sd_cmd_PARM_2 + 3),(_sd_acmd_PARM_2 + 3)
      000726 8F 82            [24] 1913 	mov	dpl,r7
                                   1914 ;	sdcard.h:149: return _resp;
                                   1915 ;	sdcard.h:151: }
      000728 02 05 CA         [24] 1916 	ljmp	_sd_cmd
                                   1917 ;------------------------------------------------------------
                                   1918 ;Allocation info for local variables in function 'SDinit'
                                   1919 ;------------------------------------------------------------
                                   1920 ;retries                   Allocated to registers r7 
                                   1921 ;------------------------------------------------------------
                                   1922 ;	sdcard.h:157: uint8_t SDinit()
                                   1923 ;	-----------------------------------------
                                   1924 ;	 function SDinit
                                   1925 ;	-----------------------------------------
      00072B                       1926 _SDinit:
                                   1927 ;	sdcard.h:161: sd_initial_clk(); // 74 minimum clks for initialization
      00072B 12 05 AF         [24] 1928 	lcall	_sd_initial_clk
                                   1929 ;	sdcard.h:163: while(1)
      00072E 7F 00            [12] 1930 	mov	r7,#0x00
      000730                       1931 00107$:
                                   1932 ;	sdcard.h:165: if(sd_cmd(CMD0,0)==0x01)break; // correct response is 0x01 -> signals card is idling
      000730 E4               [12] 1933 	clr	a
      000731 F5 0D            [12] 1934 	mov	_sd_cmd_PARM_2,a
      000733 F5 0E            [12] 1935 	mov	(_sd_cmd_PARM_2 + 1),a
      000735 F5 0F            [12] 1936 	mov	(_sd_cmd_PARM_2 + 2),a
      000737 F5 10            [12] 1937 	mov	(_sd_cmd_PARM_2 + 3),a
      000739 75 82 00         [24] 1938 	mov	dpl,#0x00
      00073C C0 07            [24] 1939 	push	ar7
      00073E 12 05 CA         [24] 1940 	lcall	_sd_cmd
      000741 AE 82            [24] 1941 	mov	r6,dpl
      000743 D0 07            [24] 1942 	pop	ar7
      000745 BE 01 02         [24] 1943 	cjne	r6,#0x01,00155$
      000748 80 0A            [24] 1944 	sjmp	00108$
      00074A                       1945 00155$:
                                   1946 ;	sdcard.h:166: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      00074A 8F 06            [24] 1947 	mov	ar6,r7
      00074C 0F               [12] 1948 	inc	r7
      00074D BE 19 E0         [24] 1949 	cjne	r6,#0x19,00107$
      000750 75 82 FE         [24] 1950 	mov	dpl,#0xfe
      000753 22               [24] 1951 	ret
      000754                       1952 00108$:
                                   1953 ;	sdcard.h:170: if(sd_cmd(CMD8,0x1AA)!=0x01) return SD_CMD_FAIL; // correct response for cmd8 is 0x01
      000754 75 0D AA         [24] 1954 	mov	_sd_cmd_PARM_2,#0xaa
      000757 75 0E 01         [24] 1955 	mov	(_sd_cmd_PARM_2 + 1),#0x01
      00075A E4               [12] 1956 	clr	a
      00075B F5 0F            [12] 1957 	mov	(_sd_cmd_PARM_2 + 2),a
      00075D F5 10            [12] 1958 	mov	(_sd_cmd_PARM_2 + 3),a
      00075F 75 82 08         [24] 1959 	mov	dpl,#0x08
      000762 12 05 CA         [24] 1960 	lcall	_sd_cmd
      000765 AF 82            [24] 1961 	mov	r7,dpl
      000767 BF 01 02         [24] 1962 	cjne	r7,#0x01,00158$
      00076A 80 04            [24] 1963 	sjmp	00128$
      00076C                       1964 00158$:
      00076C 75 82 FF         [24] 1965 	mov	dpl,#0xff
                                   1966 ;	sdcard.h:173: while(1)
      00076F 22               [24] 1967 	ret
      000770                       1968 00128$:
      000770 7F 00            [12] 1969 	mov	r7,#0x00
      000772                       1970 00117$:
                                   1971 ;	sdcard.h:175: if(sd_acmd(CMD41,0x40000000)==0)break; //correct response
      000772 E4               [12] 1972 	clr	a
      000773 F5 11            [12] 1973 	mov	_sd_acmd_PARM_2,a
      000775 F5 12            [12] 1974 	mov	(_sd_acmd_PARM_2 + 1),a
      000777 F5 13            [12] 1975 	mov	(_sd_acmd_PARM_2 + 2),a
      000779 75 14 40         [24] 1976 	mov	(_sd_acmd_PARM_2 + 3),#0x40
      00077C 75 82 29         [24] 1977 	mov	dpl,#0x29
      00077F C0 07            [24] 1978 	push	ar7
      000781 12 06 FA         [24] 1979 	lcall	_sd_acmd
      000784 E5 82            [12] 1980 	mov	a,dpl
      000786 D0 07            [24] 1981 	pop	ar7
      000788 60 0A            [24] 1982 	jz	00118$
                                   1983 ;	sdcard.h:176: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      00078A 8F 06            [24] 1984 	mov	ar6,r7
      00078C 0F               [12] 1985 	inc	r7
      00078D BE 19 E2         [24] 1986 	cjne	r6,#0x19,00117$
      000790 75 82 FE         [24] 1987 	mov	dpl,#0xfe
      000793 22               [24] 1988 	ret
      000794                       1989 00118$:
                                   1990 ;	sdcard.h:182: if(sd_cmd(CMD58,0)) return SD_CMD_FAIL;  
      000794 E4               [12] 1991 	clr	a
      000795 F5 0D            [12] 1992 	mov	_sd_cmd_PARM_2,a
      000797 F5 0E            [12] 1993 	mov	(_sd_cmd_PARM_2 + 1),a
      000799 F5 0F            [12] 1994 	mov	(_sd_cmd_PARM_2 + 2),a
      00079B F5 10            [12] 1995 	mov	(_sd_cmd_PARM_2 + 3),a
      00079D 75 82 3A         [24] 1996 	mov	dpl,#0x3a
      0007A0 12 05 CA         [24] 1997 	lcall	_sd_cmd
      0007A3 E5 82            [12] 1998 	mov	a,dpl
      0007A5 60 04            [24] 1999 	jz	00120$
      0007A7 75 82 FF         [24] 2000 	mov	dpl,#0xff
      0007AA 22               [24] 2001 	ret
      0007AB                       2002 00120$:
                                   2003 ;	sdcard.h:190: return 0; //successful init
      0007AB 75 82 00         [24] 2004 	mov	dpl,#0x00
                                   2005 ;	sdcard.h:191: }
      0007AE 22               [24] 2006 	ret
                                   2007 ;------------------------------------------------------------
                                   2008 ;Allocation info for local variables in function 'SDread'
                                   2009 ;------------------------------------------------------------
                                   2010 ;offset                    Allocated to stack - _bp -4
                                   2011 ;count                     Allocated to stack - _bp -6
                                   2012 ;dst                       Allocated to stack - _bp -9
                                   2013 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   2014 ;retries                   Allocated to registers r7 
                                   2015 ;response                  Allocated to registers r3 
                                   2016 ;i                         Allocated to registers r4 r5 
                                   2017 ;------------------------------------------------------------
                                   2018 ;	sdcard.h:206: uint8_t SDread(uint32_t block_addr, uint16_t offset, uint16_t count, uint8_t* dst ) __reentrant
                                   2019 ;	-----------------------------------------
                                   2020 ;	 function SDread
                                   2021 ;	-----------------------------------------
      0007AF                       2022 _SDread:
      0007AF C0 3C            [24] 2023 	push	_bp
      0007B1 85 81 3C         [24] 2024 	mov	_bp,sp
      0007B4 AC 82            [24] 2025 	mov	r4,dpl
      0007B6 AD 83            [24] 2026 	mov	r5,dph
      0007B8 AE F0            [24] 2027 	mov	r6,b
      0007BA FF               [12] 2028 	mov	r7,a
                                   2029 ;	sdcard.h:221: if (count == 0) return 0; //success
      0007BB E5 3C            [12] 2030 	mov	a,_bp
      0007BD 24 FA            [12] 2031 	add	a,#0xfa
      0007BF F8               [12] 2032 	mov	r0,a
      0007C0 E6               [12] 2033 	mov	a,@r0
      0007C1 08               [12] 2034 	inc	r0
      0007C2 46               [12] 2035 	orl	a,@r0
      0007C3 70 05            [24] 2036 	jnz	00102$
      0007C5 F5 82            [12] 2037 	mov	dpl,a
      0007C7 02 08 C8         [24] 2038 	ljmp	00131$
      0007CA                       2039 00102$:
                                   2040 ;	sdcard.h:222: if ((count + offset) > SD_BLOCK_SIZE) {
      0007CA E5 3C            [12] 2041 	mov	a,_bp
      0007CC 24 FA            [12] 2042 	add	a,#0xfa
      0007CE F8               [12] 2043 	mov	r0,a
      0007CF E5 3C            [12] 2044 	mov	a,_bp
      0007D1 24 FC            [12] 2045 	add	a,#0xfc
      0007D3 F9               [12] 2046 	mov	r1,a
      0007D4 E7               [12] 2047 	mov	a,@r1
      0007D5 26               [12] 2048 	add	a,@r0
      0007D6 FA               [12] 2049 	mov	r2,a
      0007D7 09               [12] 2050 	inc	r1
      0007D8 E7               [12] 2051 	mov	a,@r1
      0007D9 08               [12] 2052 	inc	r0
      0007DA 36               [12] 2053 	addc	a,@r0
      0007DB FB               [12] 2054 	mov	r3,a
      0007DC C3               [12] 2055 	clr	c
      0007DD E4               [12] 2056 	clr	a
      0007DE 9A               [12] 2057 	subb	a,r2
      0007DF 74 02            [12] 2058 	mov	a,#0x02
      0007E1 9B               [12] 2059 	subb	a,r3
      0007E2 50 06            [24] 2060 	jnc	00105$
                                   2061 ;	sdcard.h:223: return 1; //fail
      0007E4 75 82 01         [24] 2062 	mov	dpl,#0x01
      0007E7 02 08 C8         [24] 2063 	ljmp	00131$
                                   2064 ;	sdcard.h:231: spi_cs_low();
      0007EA                       2065 00105$:
      0007EA 53 90 F7         [24] 2066 	anl	_P1,#0xf7
                                   2067 ;	sdcard.h:236: if(sd_cmd(CMD17,block_addr)) return SD_CMD_FAIL; 
      0007ED 8C 0D            [24] 2068 	mov	_sd_cmd_PARM_2,r4
      0007EF 8D 0E            [24] 2069 	mov	(_sd_cmd_PARM_2 + 1),r5
      0007F1 8E 0F            [24] 2070 	mov	(_sd_cmd_PARM_2 + 2),r6
      0007F3 8F 10            [24] 2071 	mov	(_sd_cmd_PARM_2 + 3),r7
      0007F5 75 82 11         [24] 2072 	mov	dpl,#0x11
      0007F8 12 05 CA         [24] 2073 	lcall	_sd_cmd
      0007FB E5 82            [12] 2074 	mov	a,dpl
      0007FD 60 06            [24] 2075 	jz	00138$
      0007FF 75 82 FF         [24] 2076 	mov	dpl,#0xff
      000802 02 08 C8         [24] 2077 	ljmp	00131$
                                   2078 ;	sdcard.h:240: while(1)
      000805                       2079 00138$:
      000805 7F 00            [12] 2080 	mov	r7,#0x00
      000807                       2081 00119$:
                                   2082 ;	sdcard.h:242: response = sd_spi_write(0xff);
      000807 75 3D 00         [24] 2083 	mov	_spi_transfer_PARM_2,#0x00
      00080A 75 82 FF         [24] 2084 	mov	dpl,#0xff
      00080D C0 07            [24] 2085 	push	ar7
      00080F 12 04 FF         [24] 2086 	lcall	_spi_transfer
      000812 AE 82            [24] 2087 	mov	r6,dpl
      000814 D0 07            [24] 2088 	pop	ar7
                                   2089 ;	sdcard.h:250: if(response==0xff); //pass
      000816 BE FF 02         [24] 2090 	cjne	r6,#0xff,00192$
      000819 80 0B            [24] 2091 	sjmp	00115$
      00081B                       2092 00192$:
                                   2093 ;	sdcard.h:251: else if(response == DATA_START_BLOCK) break; // if the last response is DATA_START_BLOCK=0xFE, then success, else fail
      00081B BE FE 02         [24] 2094 	cjne	r6,#0xfe,00193$
      00081E 80 12            [24] 2095 	sjmp	00143$
      000820                       2096 00193$:
                                   2097 ;	sdcard.h:252: else return DATA_START_BLOCK_FAIL; // if anything other than 0xff or DATA_START_BLOCK=0xFE
      000820 75 82 FD         [24] 2098 	mov	dpl,#0xfd
      000823 02 08 C8         [24] 2099 	ljmp	00131$
      000826                       2100 00115$:
                                   2101 ;	sdcard.h:254: if(retries++==255) return SD_MAX_RETRIES_FAIL;
      000826 8F 06            [24] 2102 	mov	ar6,r7
      000828 0F               [12] 2103 	inc	r7
      000829 BE FF DB         [24] 2104 	cjne	r6,#0xff,00119$
      00082C 75 82 FE         [24] 2105 	mov	dpl,#0xfe
      00082F 02 08 C8         [24] 2106 	ljmp	00131$
                                   2107 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      000832                       2108 00143$:
      000832 E5 3C            [12] 2109 	mov	a,_bp
      000834 24 FC            [12] 2110 	add	a,#0xfc
      000836 F8               [12] 2111 	mov	r0,a
      000837 E5 3C            [12] 2112 	mov	a,_bp
      000839 24 FA            [12] 2113 	add	a,#0xfa
      00083B F9               [12] 2114 	mov	r1,a
      00083C E7               [12] 2115 	mov	a,@r1
      00083D 26               [12] 2116 	add	a,@r0
      00083E FE               [12] 2117 	mov	r6,a
      00083F 09               [12] 2118 	inc	r1
      000840 E7               [12] 2119 	mov	a,@r1
      000841 08               [12] 2120 	inc	r0
      000842 36               [12] 2121 	addc	a,@r0
      000843 FF               [12] 2122 	mov	r7,a
      000844 7C 00            [12] 2123 	mov	r4,#0x00
      000846 7D 00            [12] 2124 	mov	r5,#0x00
      000848                       2125 00129$:
      000848 74 FE            [12] 2126 	mov	a,#0x100 - 0x02
      00084A 2D               [12] 2127 	add	a,r5
      00084B 40 63            [24] 2128 	jc	00124$
                                   2129 ;	sdcard.h:262: response = spi_transfer(0xff,0);
      00084D 75 3D 00         [24] 2130 	mov	_spi_transfer_PARM_2,#0x00
      000850 75 82 FF         [24] 2131 	mov	dpl,#0xff
      000853 C0 07            [24] 2132 	push	ar7
      000855 C0 06            [24] 2133 	push	ar6
      000857 C0 05            [24] 2134 	push	ar5
      000859 C0 04            [24] 2135 	push	ar4
      00085B 12 04 FF         [24] 2136 	lcall	_spi_transfer
      00085E AB 82            [24] 2137 	mov	r3,dpl
      000860 D0 04            [24] 2138 	pop	ar4
      000862 D0 05            [24] 2139 	pop	ar5
      000864 D0 06            [24] 2140 	pop	ar6
      000866 D0 07            [24] 2141 	pop	ar7
                                   2142 ;	sdcard.h:270: if(i>=offset && i<offset+count)
      000868 E5 3C            [12] 2143 	mov	a,_bp
      00086A 24 FC            [12] 2144 	add	a,#0xfc
      00086C F8               [12] 2145 	mov	r0,a
      00086D C3               [12] 2146 	clr	c
      00086E EC               [12] 2147 	mov	a,r4
      00086F 96               [12] 2148 	subb	a,@r0
      000870 ED               [12] 2149 	mov	a,r5
      000871 08               [12] 2150 	inc	r0
      000872 96               [12] 2151 	subb	a,@r0
      000873 40 34            [24] 2152 	jc	00130$
      000875 EC               [12] 2153 	mov	a,r4
      000876 9E               [12] 2154 	subb	a,r6
      000877 ED               [12] 2155 	mov	a,r5
      000878 9F               [12] 2156 	subb	a,r7
      000879 50 2E            [24] 2157 	jnc	00130$
                                   2158 ;	sdcard.h:272: dst[i-offset] = response;
      00087B C0 06            [24] 2159 	push	ar6
      00087D C0 07            [24] 2160 	push	ar7
      00087F E5 3C            [12] 2161 	mov	a,_bp
      000881 24 FC            [12] 2162 	add	a,#0xfc
      000883 F8               [12] 2163 	mov	r0,a
      000884 EC               [12] 2164 	mov	a,r4
      000885 C3               [12] 2165 	clr	c
      000886 96               [12] 2166 	subb	a,@r0
      000887 FA               [12] 2167 	mov	r2,a
      000888 ED               [12] 2168 	mov	a,r5
      000889 08               [12] 2169 	inc	r0
      00088A 96               [12] 2170 	subb	a,@r0
      00088B FF               [12] 2171 	mov	r7,a
      00088C E5 3C            [12] 2172 	mov	a,_bp
      00088E 24 F7            [12] 2173 	add	a,#0xf7
      000890 F8               [12] 2174 	mov	r0,a
      000891 EA               [12] 2175 	mov	a,r2
      000892 26               [12] 2176 	add	a,@r0
      000893 FA               [12] 2177 	mov	r2,a
      000894 EF               [12] 2178 	mov	a,r7
      000895 08               [12] 2179 	inc	r0
      000896 36               [12] 2180 	addc	a,@r0
      000897 FF               [12] 2181 	mov	r7,a
      000898 08               [12] 2182 	inc	r0
      000899 86 06            [24] 2183 	mov	ar6,@r0
      00089B 8A 82            [24] 2184 	mov	dpl,r2
      00089D 8F 83            [24] 2185 	mov	dph,r7
      00089F 8E F0            [24] 2186 	mov	b,r6
      0008A1 EB               [12] 2187 	mov	a,r3
      0008A2 12 1C 84         [24] 2188 	lcall	__gptrput
                                   2189 ;	sdcard.h:287: return 0; //success
      0008A5 D0 07            [24] 2190 	pop	ar7
      0008A7 D0 06            [24] 2191 	pop	ar6
                                   2192 ;	sdcard.h:272: dst[i-offset] = response;
      0008A9                       2193 00130$:
                                   2194 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      0008A9 0C               [12] 2195 	inc	r4
      0008AA BC 00 9B         [24] 2196 	cjne	r4,#0x00,00129$
      0008AD 0D               [12] 2197 	inc	r5
      0008AE 80 98            [24] 2198 	sjmp	00129$
      0008B0                       2199 00124$:
                                   2200 ;	sdcard.h:280: sd_spi_write(0xff);
      0008B0 75 3D 00         [24] 2201 	mov	_spi_transfer_PARM_2,#0x00
      0008B3 75 82 FF         [24] 2202 	mov	dpl,#0xff
      0008B6 12 04 FF         [24] 2203 	lcall	_spi_transfer
                                   2204 ;	sdcard.h:281: sd_spi_write(0xff);
      0008B9 75 3D 00         [24] 2205 	mov	_spi_transfer_PARM_2,#0x00
      0008BC 75 82 FF         [24] 2206 	mov	dpl,#0xff
      0008BF 12 04 FF         [24] 2207 	lcall	_spi_transfer
                                   2208 ;	sdcard.h:284: spi_cs_high(); //leave clock high
      0008C2 43 90 08         [24] 2209 	orl	_P1,#0x08
                                   2210 ;	sdcard.h:287: return 0; //success
      0008C5 75 82 00         [24] 2211 	mov	dpl,#0x00
      0008C8                       2212 00131$:
                                   2213 ;	sdcard.h:289: }
      0008C8 D0 3C            [24] 2214 	pop	_bp
      0008CA 22               [24] 2215 	ret
                                   2216 ;------------------------------------------------------------
                                   2217 ;Allocation info for local variables in function 'SDreadBlock'
                                   2218 ;------------------------------------------------------------
                                   2219 ;dst                       Allocated with name '_SDreadBlock_PARM_2'
                                   2220 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   2221 ;------------------------------------------------------------
                                   2222 ;	sdcard.h:291: uint8_t SDreadBlock(uint32_t block_addr,uint8_t* dst)
                                   2223 ;	-----------------------------------------
                                   2224 ;	 function SDreadBlock
                                   2225 ;	-----------------------------------------
      0008CB                       2226 _SDreadBlock:
      0008CB AC 82            [24] 2227 	mov	r4,dpl
      0008CD AD 83            [24] 2228 	mov	r5,dph
      0008CF AE F0            [24] 2229 	mov	r6,b
      0008D1 FF               [12] 2230 	mov	r7,a
                                   2231 ;	sdcard.h:293: return SDread(block_addr,0,SD_BLOCK_SIZE,dst);
      0008D2 C0 15            [24] 2232 	push	_SDreadBlock_PARM_2
      0008D4 C0 16            [24] 2233 	push	(_SDreadBlock_PARM_2 + 1)
      0008D6 C0 17            [24] 2234 	push	(_SDreadBlock_PARM_2 + 2)
      0008D8 E4               [12] 2235 	clr	a
      0008D9 C0 E0            [24] 2236 	push	acc
      0008DB 74 02            [12] 2237 	mov	a,#0x02
      0008DD C0 E0            [24] 2238 	push	acc
      0008DF E4               [12] 2239 	clr	a
      0008E0 C0 E0            [24] 2240 	push	acc
      0008E2 C0 E0            [24] 2241 	push	acc
      0008E4 8C 82            [24] 2242 	mov	dpl,r4
      0008E6 8D 83            [24] 2243 	mov	dph,r5
      0008E8 8E F0            [24] 2244 	mov	b,r6
      0008EA EF               [12] 2245 	mov	a,r7
      0008EB 12 07 AF         [24] 2246 	lcall	_SDread
      0008EE E5 81            [12] 2247 	mov	a,sp
      0008F0 24 F9            [12] 2248 	add	a,#0xf9
      0008F2 F5 81            [12] 2249 	mov	sp,a
                                   2250 ;	sdcard.h:294: }
      0008F4 22               [24] 2251 	ret
                                   2252 ;------------------------------------------------------------
                                   2253 ;Allocation info for local variables in function 'HELPER_load_littleendian16'
                                   2254 ;------------------------------------------------------------
                                   2255 ;src                       Allocated to registers r5 r6 r7 
                                   2256 ;val                       Allocated to registers r2 r4 
                                   2257 ;------------------------------------------------------------
                                   2258 ;	fat.h:85: uint16_t HELPER_load_littleendian16(uint8_t *src) __reentrant
                                   2259 ;	-----------------------------------------
                                   2260 ;	 function HELPER_load_littleendian16
                                   2261 ;	-----------------------------------------
      0008F5                       2262 _HELPER_load_littleendian16:
      0008F5 AD 82            [24] 2263 	mov	r5,dpl
      0008F7 AE 83            [24] 2264 	mov	r6,dph
      0008F9 AF F0            [24] 2265 	mov	r7,b
                                   2266 ;	fat.h:89: val = *(src+1);
      0008FB 74 01            [12] 2267 	mov	a,#0x01
      0008FD 2D               [12] 2268 	add	a,r5
      0008FE FA               [12] 2269 	mov	r2,a
      0008FF E4               [12] 2270 	clr	a
      000900 3E               [12] 2271 	addc	a,r6
      000901 FB               [12] 2272 	mov	r3,a
      000902 8F 04            [24] 2273 	mov	ar4,r7
      000904 8A 82            [24] 2274 	mov	dpl,r2
      000906 8B 83            [24] 2275 	mov	dph,r3
      000908 8C F0            [24] 2276 	mov	b,r4
      00090A 12 1D 77         [24] 2277 	lcall	__gptrget
                                   2278 ;	fat.h:90: val <<= 8;
      00090D FC               [12] 2279 	mov	r4,a
      00090E 7A 00            [12] 2280 	mov	r2,#0x00
                                   2281 ;	fat.h:91: val |= *src;
      000910 8D 82            [24] 2282 	mov	dpl,r5
      000912 8E 83            [24] 2283 	mov	dph,r6
      000914 8F F0            [24] 2284 	mov	b,r7
      000916 12 1D 77         [24] 2285 	lcall	__gptrget
      000919 7F 00            [12] 2286 	mov	r7,#0x00
      00091B 4A               [12] 2287 	orl	a,r2
      00091C F5 82            [12] 2288 	mov	dpl,a
      00091E EF               [12] 2289 	mov	a,r7
      00091F 4C               [12] 2290 	orl	a,r4
      000920 F5 83            [12] 2291 	mov	dph,a
                                   2292 ;	fat.h:93: return val;
                                   2293 ;	fat.h:94: }
      000922 22               [24] 2294 	ret
                                   2295 ;------------------------------------------------------------
                                   2296 ;Allocation info for local variables in function 'HELPER_load_littleendian32'
                                   2297 ;------------------------------------------------------------
                                   2298 ;src                       Allocated to stack - _bp +1
                                   2299 ;val                       Allocated to stack - _bp +8
                                   2300 ;i                         Allocated to stack - _bp +12
                                   2301 ;sloc0                     Allocated to stack - _bp +9
                                   2302 ;sloc1                     Allocated to stack - _bp +4
                                   2303 ;------------------------------------------------------------
                                   2304 ;	fat.h:96: uint32_t HELPER_load_littleendian32(uint8_t *src) __reentrant
                                   2305 ;	-----------------------------------------
                                   2306 ;	 function HELPER_load_littleendian32
                                   2307 ;	-----------------------------------------
      000923                       2308 _HELPER_load_littleendian32:
      000923 C0 3C            [24] 2309 	push	_bp
      000925 85 81 3C         [24] 2310 	mov	_bp,sp
      000928 C0 82            [24] 2311 	push	dpl
      00092A C0 83            [24] 2312 	push	dph
      00092C C0 F0            [24] 2313 	push	b
      00092E E5 81            [12] 2314 	mov	a,sp
      000930 24 09            [12] 2315 	add	a,#0x09
      000932 F5 81            [12] 2316 	mov	sp,a
                                   2317 ;	fat.h:98: uint32_t val=0;
                                   2318 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      000934 E4               [12] 2319 	clr	a
      000935 FA               [12] 2320 	mov	r2,a
      000936 FB               [12] 2321 	mov	r3,a
      000937 FC               [12] 2322 	mov	r4,a
      000938 FF               [12] 2323 	mov	r7,a
      000939 E5 3C            [12] 2324 	mov	a,_bp
      00093B 24 0C            [12] 2325 	add	a,#0x0c
      00093D F8               [12] 2326 	mov	r0,a
      00093E 76 00            [12] 2327 	mov	@r0,#0x00
      000940                       2328 00103$:
      000940 E5 3C            [12] 2329 	mov	a,_bp
      000942 24 0C            [12] 2330 	add	a,#0x0c
      000944 F8               [12] 2331 	mov	r0,a
      000945 B6 04 00         [24] 2332 	cjne	@r0,#0x04,00118$
      000948                       2333 00118$:
      000948 50 6F            [24] 2334 	jnc	00101$
                                   2335 ;	fat.h:102: val <<= 8;
      00094A E5 3C            [12] 2336 	mov	a,_bp
      00094C 24 08            [12] 2337 	add	a,#0x08
      00094E F8               [12] 2338 	mov	r0,a
      00094F 08               [12] 2339 	inc	r0
      000950 08               [12] 2340 	inc	r0
      000951 08               [12] 2341 	inc	r0
      000952 A6 04            [24] 2342 	mov	@r0,ar4
      000954 18               [12] 2343 	dec	r0
      000955 A6 03            [24] 2344 	mov	@r0,ar3
      000957 18               [12] 2345 	dec	r0
      000958 A6 02            [24] 2346 	mov	@r0,ar2
      00095A 18               [12] 2347 	dec	r0
      00095B 76 00            [12] 2348 	mov	@r0,#0x00
                                   2349 ;	fat.h:103: val |= src[3-i];
      00095D E5 3C            [12] 2350 	mov	a,_bp
      00095F 24 0C            [12] 2351 	add	a,#0x0c
      000961 F8               [12] 2352 	mov	r0,a
      000962 86 05            [24] 2353 	mov	ar5,@r0
      000964 7E 00            [12] 2354 	mov	r6,#0x00
      000966 74 03            [12] 2355 	mov	a,#0x03
      000968 C3               [12] 2356 	clr	c
      000969 9D               [12] 2357 	subb	a,r5
      00096A FD               [12] 2358 	mov	r5,a
      00096B E4               [12] 2359 	clr	a
      00096C 9E               [12] 2360 	subb	a,r6
      00096D FE               [12] 2361 	mov	r6,a
      00096E A8 3C            [24] 2362 	mov	r0,_bp
      000970 08               [12] 2363 	inc	r0
      000971 ED               [12] 2364 	mov	a,r5
      000972 26               [12] 2365 	add	a,@r0
      000973 FF               [12] 2366 	mov	r7,a
      000974 EE               [12] 2367 	mov	a,r6
      000975 08               [12] 2368 	inc	r0
      000976 36               [12] 2369 	addc	a,@r0
      000977 FE               [12] 2370 	mov	r6,a
      000978 08               [12] 2371 	inc	r0
      000979 86 05            [24] 2372 	mov	ar5,@r0
      00097B 8F 82            [24] 2373 	mov	dpl,r7
      00097D 8E 83            [24] 2374 	mov	dph,r6
      00097F 8D F0            [24] 2375 	mov	b,r5
      000981 12 1D 77         [24] 2376 	lcall	__gptrget
      000984 FE               [12] 2377 	mov	r6,a
      000985 E5 3C            [12] 2378 	mov	a,_bp
      000987 24 04            [12] 2379 	add	a,#0x04
      000989 F8               [12] 2380 	mov	r0,a
      00098A A6 06            [24] 2381 	mov	@r0,ar6
      00098C 08               [12] 2382 	inc	r0
      00098D 76 00            [12] 2383 	mov	@r0,#0x00
      00098F 08               [12] 2384 	inc	r0
      000990 76 00            [12] 2385 	mov	@r0,#0x00
      000992 08               [12] 2386 	inc	r0
      000993 76 00            [12] 2387 	mov	@r0,#0x00
      000995 E5 3C            [12] 2388 	mov	a,_bp
      000997 24 08            [12] 2389 	add	a,#0x08
      000999 F8               [12] 2390 	mov	r0,a
      00099A E5 3C            [12] 2391 	mov	a,_bp
      00099C 24 04            [12] 2392 	add	a,#0x04
      00099E F9               [12] 2393 	mov	r1,a
      00099F E7               [12] 2394 	mov	a,@r1
      0009A0 46               [12] 2395 	orl	a,@r0
      0009A1 FA               [12] 2396 	mov	r2,a
      0009A2 09               [12] 2397 	inc	r1
      0009A3 E7               [12] 2398 	mov	a,@r1
      0009A4 08               [12] 2399 	inc	r0
      0009A5 46               [12] 2400 	orl	a,@r0
      0009A6 FB               [12] 2401 	mov	r3,a
      0009A7 09               [12] 2402 	inc	r1
      0009A8 E7               [12] 2403 	mov	a,@r1
      0009A9 08               [12] 2404 	inc	r0
      0009AA 46               [12] 2405 	orl	a,@r0
      0009AB FC               [12] 2406 	mov	r4,a
      0009AC 09               [12] 2407 	inc	r1
      0009AD E7               [12] 2408 	mov	a,@r1
      0009AE 08               [12] 2409 	inc	r0
      0009AF 46               [12] 2410 	orl	a,@r0
      0009B0 FF               [12] 2411 	mov	r7,a
                                   2412 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      0009B1 E5 3C            [12] 2413 	mov	a,_bp
      0009B3 24 0C            [12] 2414 	add	a,#0x0c
      0009B5 F8               [12] 2415 	mov	r0,a
      0009B6 06               [12] 2416 	inc	@r0
      0009B7 80 87            [24] 2417 	sjmp	00103$
      0009B9                       2418 00101$:
                                   2419 ;	fat.h:106: return val;
      0009B9 8A 82            [24] 2420 	mov	dpl,r2
      0009BB 8B 83            [24] 2421 	mov	dph,r3
      0009BD 8C F0            [24] 2422 	mov	b,r4
      0009BF EF               [12] 2423 	mov	a,r7
                                   2424 ;	fat.h:107: }
      0009C0 85 3C 81         [24] 2425 	mov	sp,_bp
      0009C3 D0 3C            [24] 2426 	pop	_bp
      0009C5 22               [24] 2427 	ret
                                   2428 ;------------------------------------------------------------
                                   2429 ;Allocation info for local variables in function 'HELPER_strcmp'
                                   2430 ;------------------------------------------------------------
                                   2431 ;s2                        Allocated with name '_HELPER_strcmp_PARM_2'
                                   2432 ;s1                        Allocated to registers r5 r6 r7 
                                   2433 ;i                         Allocated to registers r4 
                                   2434 ;------------------------------------------------------------
                                   2435 ;	fat.h:109: uint8_t HELPER_strcmp(char *s1,char* s2)
                                   2436 ;	-----------------------------------------
                                   2437 ;	 function HELPER_strcmp
                                   2438 ;	-----------------------------------------
      0009C6                       2439 _HELPER_strcmp:
      0009C6 AD 82            [24] 2440 	mov	r5,dpl
      0009C8 AE 83            [24] 2441 	mov	r6,dph
      0009CA AF F0            [24] 2442 	mov	r7,b
                                   2443 ;	fat.h:112: while(1)
      0009CC 7C 00            [12] 2444 	mov	r4,#0x00
      0009CE                       2445 00107$:
                                   2446 ;	fat.h:114: if(s1[i]==s2[i]);
      0009CE EC               [12] 2447 	mov	a,r4
      0009CF 2D               [12] 2448 	add	a,r5
      0009D0 F9               [12] 2449 	mov	r1,a
      0009D1 E4               [12] 2450 	clr	a
      0009D2 3E               [12] 2451 	addc	a,r6
      0009D3 FA               [12] 2452 	mov	r2,a
      0009D4 8F 03            [24] 2453 	mov	ar3,r7
      0009D6 89 82            [24] 2454 	mov	dpl,r1
      0009D8 8A 83            [24] 2455 	mov	dph,r2
      0009DA 8B F0            [24] 2456 	mov	b,r3
      0009DC 12 1D 77         [24] 2457 	lcall	__gptrget
      0009DF FB               [12] 2458 	mov	r3,a
      0009E0 EC               [12] 2459 	mov	a,r4
      0009E1 25 3D            [12] 2460 	add	a,_HELPER_strcmp_PARM_2
      0009E3 F8               [12] 2461 	mov	r0,a
      0009E4 E4               [12] 2462 	clr	a
      0009E5 35 3E            [12] 2463 	addc	a,(_HELPER_strcmp_PARM_2 + 1)
      0009E7 F9               [12] 2464 	mov	r1,a
      0009E8 AA 3F            [24] 2465 	mov	r2,(_HELPER_strcmp_PARM_2 + 2)
      0009EA 88 82            [24] 2466 	mov	dpl,r0
      0009EC 89 83            [24] 2467 	mov	dph,r1
      0009EE 8A F0            [24] 2468 	mov	b,r2
      0009F0 12 1D 77         [24] 2469 	lcall	__gptrget
      0009F3 F8               [12] 2470 	mov	r0,a
      0009F4 EB               [12] 2471 	mov	a,r3
      0009F5 B5 00 02         [24] 2472 	cjne	a,ar0,00123$
      0009F8 80 04            [24] 2473 	sjmp	00103$
      0009FA                       2474 00123$:
                                   2475 ;	fat.h:115: else return 1;
      0009FA 75 82 01         [24] 2476 	mov	dpl,#0x01
      0009FD 22               [24] 2477 	ret
      0009FE                       2478 00103$:
                                   2479 ;	fat.h:117: if(s1[i]==0) return 0;
      0009FE EB               [12] 2480 	mov	a,r3
      0009FF 70 03            [24] 2481 	jnz	00105$
      000A01 F5 82            [12] 2482 	mov	dpl,a
      000A03 22               [24] 2483 	ret
      000A04                       2484 00105$:
                                   2485 ;	fat.h:118: i++;
      000A04 0C               [12] 2486 	inc	r4
                                   2487 ;	fat.h:120: }
      000A05 80 C7            [24] 2488 	sjmp	00107$
                                   2489 ;------------------------------------------------------------
                                   2490 ;Allocation info for local variables in function 'HELPER_strncmp'
                                   2491 ;------------------------------------------------------------
                                   2492 ;s2                        Allocated with name '_HELPER_strncmp_PARM_2'
                                   2493 ;n                         Allocated with name '_HELPER_strncmp_PARM_3'
                                   2494 ;s1                        Allocated to registers r5 r6 r7 
                                   2495 ;i                         Allocated to registers r4 
                                   2496 ;------------------------------------------------------------
                                   2497 ;	fat.h:122: uint8_t HELPER_strncmp(char *s1,char* s2,uint8_t n)
                                   2498 ;	-----------------------------------------
                                   2499 ;	 function HELPER_strncmp
                                   2500 ;	-----------------------------------------
      000A07                       2501 _HELPER_strncmp:
      000A07 AD 82            [24] 2502 	mov	r5,dpl
      000A09 AE 83            [24] 2503 	mov	r6,dph
      000A0B AF F0            [24] 2504 	mov	r7,b
                                   2505 ;	fat.h:125: while(1)
      000A0D 7C 00            [12] 2506 	mov	r4,#0x00
      000A0F                       2507 00109$:
                                   2508 ;	fat.h:127: if(i==n) return 0; //done - successful
      000A0F EC               [12] 2509 	mov	a,r4
      000A10 B5 40 04         [24] 2510 	cjne	a,_HELPER_strncmp_PARM_3,00102$
      000A13 75 82 00         [24] 2511 	mov	dpl,#0x00
      000A16 22               [24] 2512 	ret
      000A17                       2513 00102$:
                                   2514 ;	fat.h:129: if(s1[i]==s2[i]);
      000A17 EC               [12] 2515 	mov	a,r4
      000A18 2D               [12] 2516 	add	a,r5
      000A19 F9               [12] 2517 	mov	r1,a
      000A1A E4               [12] 2518 	clr	a
      000A1B 3E               [12] 2519 	addc	a,r6
      000A1C FA               [12] 2520 	mov	r2,a
      000A1D 8F 03            [24] 2521 	mov	ar3,r7
      000A1F 89 82            [24] 2522 	mov	dpl,r1
      000A21 8A 83            [24] 2523 	mov	dph,r2
      000A23 8B F0            [24] 2524 	mov	b,r3
      000A25 12 1D 77         [24] 2525 	lcall	__gptrget
      000A28 FB               [12] 2526 	mov	r3,a
      000A29 EC               [12] 2527 	mov	a,r4
      000A2A 25 3D            [12] 2528 	add	a,_HELPER_strncmp_PARM_2
      000A2C F8               [12] 2529 	mov	r0,a
      000A2D E4               [12] 2530 	clr	a
      000A2E 35 3E            [12] 2531 	addc	a,(_HELPER_strncmp_PARM_2 + 1)
      000A30 F9               [12] 2532 	mov	r1,a
      000A31 AA 3F            [24] 2533 	mov	r2,(_HELPER_strncmp_PARM_2 + 2)
      000A33 88 82            [24] 2534 	mov	dpl,r0
      000A35 89 83            [24] 2535 	mov	dph,r1
      000A37 8A F0            [24] 2536 	mov	b,r2
      000A39 12 1D 77         [24] 2537 	lcall	__gptrget
      000A3C F8               [12] 2538 	mov	r0,a
      000A3D EB               [12] 2539 	mov	a,r3
      000A3E B5 00 02         [24] 2540 	cjne	a,ar0,00131$
      000A41 80 04            [24] 2541 	sjmp	00105$
      000A43                       2542 00131$:
                                   2543 ;	fat.h:130: else return 1;
      000A43 75 82 01         [24] 2544 	mov	dpl,#0x01
      000A46 22               [24] 2545 	ret
      000A47                       2546 00105$:
                                   2547 ;	fat.h:132: if(s1[i]==0) return 0; //if string length < n, return success as well as we donot want to compare more
      000A47 EB               [12] 2548 	mov	a,r3
      000A48 70 03            [24] 2549 	jnz	00107$
      000A4A F5 82            [12] 2550 	mov	dpl,a
      000A4C 22               [24] 2551 	ret
      000A4D                       2552 00107$:
                                   2553 ;	fat.h:133: i++;
      000A4D 0C               [12] 2554 	inc	r4
                                   2555 ;	fat.h:135: }
      000A4E 80 BF            [24] 2556 	sjmp	00109$
                                   2557 ;------------------------------------------------------------
                                   2558 ;Allocation info for local variables in function 'HELPER_strlen'
                                   2559 ;------------------------------------------------------------
                                   2560 ;s                         Allocated to registers r5 r6 r7 
                                   2561 ;i                         Allocated to registers r4 
                                   2562 ;------------------------------------------------------------
                                   2563 ;	fat.h:137: uint8_t HELPER_strlen(char *s)
                                   2564 ;	-----------------------------------------
                                   2565 ;	 function HELPER_strlen
                                   2566 ;	-----------------------------------------
      000A50                       2567 _HELPER_strlen:
      000A50 AD 82            [24] 2568 	mov	r5,dpl
      000A52 AE 83            [24] 2569 	mov	r6,dph
      000A54 AF F0            [24] 2570 	mov	r7,b
                                   2571 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      000A56 7C 00            [12] 2572 	mov	r4,#0x00
      000A58 7B 00            [12] 2573 	mov	r3,#0x00
      000A5A                       2574 00105$:
      000A5A BB FF 00         [24] 2575 	cjne	r3,#0xff,00121$
      000A5D                       2576 00121$:
      000A5D 50 1B            [24] 2577 	jnc	00103$
                                   2578 ;	fat.h:141: if(s[i]==0) return i;
      000A5F EB               [12] 2579 	mov	a,r3
      000A60 2D               [12] 2580 	add	a,r5
      000A61 F8               [12] 2581 	mov	r0,a
      000A62 E4               [12] 2582 	clr	a
      000A63 3E               [12] 2583 	addc	a,r6
      000A64 F9               [12] 2584 	mov	r1,a
      000A65 8F 02            [24] 2585 	mov	ar2,r7
      000A67 88 82            [24] 2586 	mov	dpl,r0
      000A69 89 83            [24] 2587 	mov	dph,r1
      000A6B 8A F0            [24] 2588 	mov	b,r2
      000A6D 12 1D 77         [24] 2589 	lcall	__gptrget
      000A70 70 03            [24] 2590 	jnz	00106$
      000A72 8C 82            [24] 2591 	mov	dpl,r4
      000A74 22               [24] 2592 	ret
      000A75                       2593 00106$:
                                   2594 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      000A75 0B               [12] 2595 	inc	r3
      000A76 8B 04            [24] 2596 	mov	ar4,r3
      000A78 80 E0            [24] 2597 	sjmp	00105$
      000A7A                       2598 00103$:
                                   2599 ;	fat.h:144: return 255;
      000A7A 75 82 FF         [24] 2600 	mov	dpl,#0xff
                                   2601 ;	fat.h:145: }
      000A7D 22               [24] 2602 	ret
                                   2603 ;------------------------------------------------------------
                                   2604 ;Allocation info for local variables in function 'HELPER_rootentry_type'
                                   2605 ;------------------------------------------------------------
                                   2606 ;re                        Allocated to registers r5 r6 r7 
                                   2607 ;------------------------------------------------------------
                                   2608 ;	fat.h:147: uint8_t HELPER_rootentry_type(ROOTENTRY *re)
                                   2609 ;	-----------------------------------------
                                   2610 ;	 function HELPER_rootentry_type
                                   2611 ;	-----------------------------------------
      000A7E                       2612 _HELPER_rootentry_type:
      000A7E AD 82            [24] 2613 	mov	r5,dpl
      000A80 AE 83            [24] 2614 	mov	r6,dph
      000A82 AF F0            [24] 2615 	mov	r7,b
                                   2616 ;	fat.h:149: if(re->attributes & 1<<FILETYPE_HIDDEN) return FILETYPE_HIDDEN; //directory entry
      000A84 74 0B            [12] 2617 	mov	a,#0x0b
      000A86 2D               [12] 2618 	add	a,r5
      000A87 FA               [12] 2619 	mov	r2,a
      000A88 E4               [12] 2620 	clr	a
      000A89 3E               [12] 2621 	addc	a,r6
      000A8A FB               [12] 2622 	mov	r3,a
      000A8B 8F 04            [24] 2623 	mov	ar4,r7
      000A8D 8A 82            [24] 2624 	mov	dpl,r2
      000A8F 8B 83            [24] 2625 	mov	dph,r3
      000A91 8C F0            [24] 2626 	mov	b,r4
      000A93 12 1D 77         [24] 2627 	lcall	__gptrget
      000A96 FC               [12] 2628 	mov	r4,a
      000A97 30 E1 04         [24] 2629 	jnb	acc.1,00102$
      000A9A 75 82 01         [24] 2630 	mov	dpl,#0x01
      000A9D 22               [24] 2631 	ret
      000A9E                       2632 00102$:
                                   2633 ;	fat.h:150: if(re->attributes & 1<<FILETYPE_SYSTEM) return FILETYPE_SYSTEM; //directory entry
      000A9E EC               [12] 2634 	mov	a,r4
      000A9F 30 E2 04         [24] 2635 	jnb	acc.2,00104$
      000AA2 75 82 02         [24] 2636 	mov	dpl,#0x02
      000AA5 22               [24] 2637 	ret
      000AA6                       2638 00104$:
                                   2639 ;	fat.h:151: if(re->attributes & 1<<FILETYPE_VOLUME) return FILETYPE_VOLUME; //directory entry
      000AA6 EC               [12] 2640 	mov	a,r4
      000AA7 30 E3 04         [24] 2641 	jnb	acc.3,00106$
      000AAA 75 82 03         [24] 2642 	mov	dpl,#0x03
      000AAD 22               [24] 2643 	ret
      000AAE                       2644 00106$:
                                   2645 ;	fat.h:153: if(re->startCluster==0) return FILETYPE_NOFILE; //no file
      000AAE 74 0C            [12] 2646 	mov	a,#0x0c
      000AB0 2D               [12] 2647 	add	a,r5
      000AB1 FA               [12] 2648 	mov	r2,a
      000AB2 E4               [12] 2649 	clr	a
      000AB3 3E               [12] 2650 	addc	a,r6
      000AB4 FB               [12] 2651 	mov	r3,a
      000AB5 8F 04            [24] 2652 	mov	ar4,r7
      000AB7 8A 82            [24] 2653 	mov	dpl,r2
      000AB9 8B 83            [24] 2654 	mov	dph,r3
      000ABB 8C F0            [24] 2655 	mov	b,r4
      000ABD 12 1D 77         [24] 2656 	lcall	__gptrget
      000AC0 FA               [12] 2657 	mov	r2,a
      000AC1 A3               [24] 2658 	inc	dptr
      000AC2 12 1D 77         [24] 2659 	lcall	__gptrget
      000AC5 4A               [12] 2660 	orl	a,r2
      000AC6 70 04            [24] 2661 	jnz	00111$
      000AC8 75 82 FF         [24] 2662 	mov	dpl,#0xff
      000ACB 22               [24] 2663 	ret
      000ACC                       2664 00111$:
                                   2665 ;	fat.h:154: else if(re->size==0) return FILETYPE_EMPTYFILE; //empty file
      000ACC 74 0E            [12] 2666 	mov	a,#0x0e
      000ACE 2D               [12] 2667 	add	a,r5
      000ACF FD               [12] 2668 	mov	r5,a
      000AD0 E4               [12] 2669 	clr	a
      000AD1 3E               [12] 2670 	addc	a,r6
      000AD2 FE               [12] 2671 	mov	r6,a
      000AD3 8D 82            [24] 2672 	mov	dpl,r5
      000AD5 8E 83            [24] 2673 	mov	dph,r6
      000AD7 8F F0            [24] 2674 	mov	b,r7
      000AD9 12 1D 77         [24] 2675 	lcall	__gptrget
      000ADC FD               [12] 2676 	mov	r5,a
      000ADD A3               [24] 2677 	inc	dptr
      000ADE 12 1D 77         [24] 2678 	lcall	__gptrget
      000AE1 FE               [12] 2679 	mov	r6,a
      000AE2 A3               [24] 2680 	inc	dptr
      000AE3 12 1D 77         [24] 2681 	lcall	__gptrget
      000AE6 FF               [12] 2682 	mov	r7,a
      000AE7 A3               [24] 2683 	inc	dptr
      000AE8 12 1D 77         [24] 2684 	lcall	__gptrget
      000AEB FC               [12] 2685 	mov	r4,a
      000AEC ED               [12] 2686 	mov	a,r5
      000AED 4E               [12] 2687 	orl	a,r6
      000AEE 4F               [12] 2688 	orl	a,r7
      000AEF 4C               [12] 2689 	orl	a,r4
      000AF0 70 04            [24] 2690 	jnz	00108$
      000AF2 75 82 FE         [24] 2691 	mov	dpl,#0xfe
      000AF5 22               [24] 2692 	ret
      000AF6                       2693 00108$:
                                   2694 ;	fat.h:155: else return 0; // valid non-empty file
      000AF6 75 82 00         [24] 2695 	mov	dpl,#0x00
                                   2696 ;	fat.h:157: }
      000AF9 22               [24] 2697 	ret
                                   2698 ;------------------------------------------------------------
                                   2699 ;Allocation info for local variables in function 'HELPER_to_uppercase'
                                   2700 ;------------------------------------------------------------
                                   2701 ;s                         Allocated to registers r5 r6 r7 
                                   2702 ;i                         Allocated to registers r4 
                                   2703 ;------------------------------------------------------------
                                   2704 ;	fat.h:162: void HELPER_to_uppercase(unsigned char *s)
                                   2705 ;	-----------------------------------------
                                   2706 ;	 function HELPER_to_uppercase
                                   2707 ;	-----------------------------------------
      000AFA                       2708 _HELPER_to_uppercase:
      000AFA AD 82            [24] 2709 	mov	r5,dpl
      000AFC AE 83            [24] 2710 	mov	r6,dph
      000AFE AF F0            [24] 2711 	mov	r7,b
                                   2712 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000B00 7C 00            [12] 2713 	mov	r4,#0x00
      000B02                       2714 00108$:
      000B02 BC FF 00         [24] 2715 	cjne	r4,#0xff,00132$
      000B05                       2716 00132$:
      000B05 50 2F            [24] 2717 	jnc	00110$
                                   2718 ;	fat.h:166: if(s[i]==0) return; //done
      000B07 EC               [12] 2719 	mov	a,r4
      000B08 2D               [12] 2720 	add	a,r5
      000B09 F9               [12] 2721 	mov	r1,a
      000B0A E4               [12] 2722 	clr	a
      000B0B 3E               [12] 2723 	addc	a,r6
      000B0C FA               [12] 2724 	mov	r2,a
      000B0D 8F 03            [24] 2725 	mov	ar3,r7
      000B0F 89 82            [24] 2726 	mov	dpl,r1
      000B11 8A 83            [24] 2727 	mov	dph,r2
      000B13 8B F0            [24] 2728 	mov	b,r3
      000B15 12 1D 77         [24] 2729 	lcall	__gptrget
      000B18 F8               [12] 2730 	mov	r0,a
      000B19 70 01            [24] 2731 	jnz	00102$
      000B1B 22               [24] 2732 	ret
      000B1C                       2733 00102$:
                                   2734 ;	fat.h:167: if('a'<=s[i] && s[i]<='z') s[i] = s[i] - 32;
      000B1C B8 61 00         [24] 2735 	cjne	r0,#0x61,00135$
      000B1F                       2736 00135$:
      000B1F 40 12            [24] 2737 	jc	00109$
      000B21 E8               [12] 2738 	mov	a,r0
      000B22 24 85            [12] 2739 	add	a,#0xff - 0x7a
      000B24 40 0D            [24] 2740 	jc	00109$
      000B26 E8               [12] 2741 	mov	a,r0
      000B27 24 E0            [12] 2742 	add	a,#0xe0
      000B29 F8               [12] 2743 	mov	r0,a
      000B2A 89 82            [24] 2744 	mov	dpl,r1
      000B2C 8A 83            [24] 2745 	mov	dph,r2
      000B2E 8B F0            [24] 2746 	mov	b,r3
      000B30 12 1C 84         [24] 2747 	lcall	__gptrput
      000B33                       2748 00109$:
                                   2749 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000B33 0C               [12] 2750 	inc	r4
      000B34 80 CC            [24] 2751 	sjmp	00108$
      000B36                       2752 00110$:
                                   2753 ;	fat.h:169: }
      000B36 22               [24] 2754 	ret
                                   2755 ;------------------------------------------------------------
                                   2756 ;Allocation info for local variables in function 'HELPER_filename_to_8dot3filename'
                                   2757 ;------------------------------------------------------------
                                   2758 ;fname83                   Allocated with name '_HELPER_filename_to_8dot3filename_PARM_2'
                                   2759 ;fname                     Allocated with name '_HELPER_filename_to_8dot3filename_fname_65536_128'
                                   2760 ;index                     Allocated to registers r4 
                                   2761 ;i                         Allocated to registers r4 
                                   2762 ;i                         Allocated with name '_HELPER_filename_to_8dot3filename_i_131072_134'
                                   2763 ;------------------------------------------------------------
                                   2764 ;	fat.h:172: uint8_t HELPER_filename_to_8dot3filename( char *fname,  char *fname83)
                                   2765 ;	-----------------------------------------
                                   2766 ;	 function HELPER_filename_to_8dot3filename
                                   2767 ;	-----------------------------------------
      000B37                       2768 _HELPER_filename_to_8dot3filename:
                                   2769 ;	fat.h:177: HELPER_to_uppercase(fname);
      000B37 85 82 1B         [24] 2770 	mov	_HELPER_filename_to_8dot3filename_fname_65536_128,dpl
      000B3A 85 83 1C         [24] 2771 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_128 + 1),dph
      000B3D 85 F0 1D         [24] 2772 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_128 + 2),b
      000B40 12 0A FA         [24] 2773 	lcall	_HELPER_to_uppercase
                                   2774 ;	fat.h:185: for(uint8_t i=0;i<11;i++) fname83[i]=' '; //default fill by empty space
      000B43 7C 00            [12] 2775 	mov	r4,#0x00
      000B45                       2776 00120$:
      000B45 BC 0B 00         [24] 2777 	cjne	r4,#0x0b,00178$
      000B48                       2778 00178$:
      000B48 50 18            [24] 2779 	jnc	00101$
      000B4A EC               [12] 2780 	mov	a,r4
      000B4B 25 18            [12] 2781 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B4D F9               [12] 2782 	mov	r1,a
      000B4E E4               [12] 2783 	clr	a
      000B4F 35 19            [12] 2784 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B51 FA               [12] 2785 	mov	r2,a
      000B52 AB 1A            [24] 2786 	mov	r3,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B54 89 82            [24] 2787 	mov	dpl,r1
      000B56 8A 83            [24] 2788 	mov	dph,r2
      000B58 8B F0            [24] 2789 	mov	b,r3
      000B5A 74 20            [12] 2790 	mov	a,#0x20
      000B5C 12 1C 84         [24] 2791 	lcall	__gptrput
      000B5F 0C               [12] 2792 	inc	r4
      000B60 80 E3            [24] 2793 	sjmp	00120$
      000B62                       2794 00101$:
                                   2795 ;	fat.h:186: fname83[11]=0; //set last character as 0;
      000B62 74 0B            [12] 2796 	mov	a,#0x0b
      000B64 25 18            [12] 2797 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B66 FA               [12] 2798 	mov	r2,a
      000B67 E4               [12] 2799 	clr	a
      000B68 35 19            [12] 2800 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B6A FB               [12] 2801 	mov	r3,a
      000B6B AC 1A            [24] 2802 	mov	r4,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B6D 8A 82            [24] 2803 	mov	dpl,r2
      000B6F 8B 83            [24] 2804 	mov	dph,r3
      000B71 8C F0            [24] 2805 	mov	b,r4
      000B73 E4               [12] 2806 	clr	a
      000B74 12 1C 84         [24] 2807 	lcall	__gptrput
                                   2808 ;	fat.h:189: for(index=0;index<9;index++)
      000B77 7C 00            [12] 2809 	mov	r4,#0x00
      000B79 7B 00            [12] 2810 	mov	r3,#0x00
      000B7B                       2811 00122$:
                                   2812 ;	fat.h:192: if(index==8 && fname[index]!='.') 
      000B7B BB 08 1D         [24] 2813 	cjne	r3,#0x08,00103$
      000B7E EB               [12] 2814 	mov	a,r3
      000B7F 25 1B            [12] 2815 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_128
      000B81 F8               [12] 2816 	mov	r0,a
      000B82 E4               [12] 2817 	clr	a
      000B83 35 1C            [12] 2818 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 1)
      000B85 F9               [12] 2819 	mov	r1,a
      000B86 AA 1D            [24] 2820 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 2)
      000B88 88 82            [24] 2821 	mov	dpl,r0
      000B8A 89 83            [24] 2822 	mov	dph,r1
      000B8C 8A F0            [24] 2823 	mov	b,r2
      000B8E 12 1D 77         [24] 2824 	lcall	__gptrget
      000B91 F8               [12] 2825 	mov	r0,a
      000B92 B8 2E 02         [24] 2826 	cjne	r0,#0x2e,00182$
      000B95 80 04            [24] 2827 	sjmp	00103$
      000B97                       2828 00182$:
                                   2829 ;	fat.h:197: return 1; //error - invalid filename as dot not found till 9th charcter
      000B97 75 82 01         [24] 2830 	mov	dpl,#0x01
      000B9A 22               [24] 2831 	ret
      000B9B                       2832 00103$:
                                   2833 ;	fat.h:200: if(fname[index]==0) return 0; // success - we reached the end of the filename string before the dot character - filename has no extension
      000B9B EB               [12] 2834 	mov	a,r3
      000B9C 25 1B            [12] 2835 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_128
      000B9E F8               [12] 2836 	mov	r0,a
      000B9F E4               [12] 2837 	clr	a
      000BA0 35 1C            [12] 2838 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 1)
      000BA2 F9               [12] 2839 	mov	r1,a
      000BA3 AA 1D            [24] 2840 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 2)
      000BA5 88 82            [24] 2841 	mov	dpl,r0
      000BA7 89 83            [24] 2842 	mov	dph,r1
      000BA9 8A F0            [24] 2843 	mov	b,r2
      000BAB 12 1D 77         [24] 2844 	lcall	__gptrget
      000BAE FA               [12] 2845 	mov	r2,a
      000BAF 70 03            [24] 2846 	jnz	00109$
      000BB1 F5 82            [12] 2847 	mov	dpl,a
      000BB3 22               [24] 2848 	ret
      000BB4                       2849 00109$:
                                   2850 ;	fat.h:201: else if(fname[index]=='.') break; //found the dot, break the for loop
      000BB4 BA 2E 02         [24] 2851 	cjne	r2,#0x2e,00184$
      000BB7 80 1C            [24] 2852 	sjmp	00140$
      000BB9                       2853 00184$:
                                   2854 ;	fat.h:202: else fname83[index]=fname[index];
      000BB9 EB               [12] 2855 	mov	a,r3
      000BBA 25 18            [12] 2856 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000BBC F8               [12] 2857 	mov	r0,a
      000BBD E4               [12] 2858 	clr	a
      000BBE 35 19            [12] 2859 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000BC0 F9               [12] 2860 	mov	r1,a
      000BC1 AF 1A            [24] 2861 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000BC3 88 82            [24] 2862 	mov	dpl,r0
      000BC5 89 83            [24] 2863 	mov	dph,r1
      000BC7 8F F0            [24] 2864 	mov	b,r7
      000BC9 EA               [12] 2865 	mov	a,r2
      000BCA 12 1C 84         [24] 2866 	lcall	__gptrput
                                   2867 ;	fat.h:189: for(index=0;index<9;index++)
      000BCD 0B               [12] 2868 	inc	r3
      000BCE 8B 04            [24] 2869 	mov	ar4,r3
      000BD0 BB 09 00         [24] 2870 	cjne	r3,#0x09,00185$
      000BD3                       2871 00185$:
      000BD3 40 A6            [24] 2872 	jc	00122$
                                   2873 ;	fat.h:205: for(uint8_t i=0;i<4;i++)
      000BD5                       2874 00140$:
      000BD5 75 1E 00         [24] 2875 	mov	_HELPER_filename_to_8dot3filename_i_131072_134,#0x00
      000BD8                       2876 00125$:
      000BD8 74 FC            [12] 2877 	mov	a,#0x100 - 0x04
      000BDA 25 1E            [12] 2878 	add	a,_HELPER_filename_to_8dot3filename_i_131072_134
      000BDC 50 03            [24] 2879 	jnc	00187$
      000BDE 02 0C 7B         [24] 2880 	ljmp	00118$
      000BE1                       2881 00187$:
                                   2882 ;	fat.h:207: if(i==3 && fname[index+i+1]!=0) 
      000BE1 74 03            [12] 2883 	mov	a,#0x03
      000BE3 B5 1E 2C         [24] 2884 	cjne	a,_HELPER_filename_to_8dot3filename_i_131072_134,00113$
      000BE6 8C 05            [24] 2885 	mov	ar5,r4
      000BE8 7E 00            [12] 2886 	mov	r6,#0x00
      000BEA AA 1E            [24] 2887 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_134
      000BEC 7B 00            [12] 2888 	mov	r3,#0x00
      000BEE EA               [12] 2889 	mov	a,r2
      000BEF 2D               [12] 2890 	add	a,r5
      000BF0 FD               [12] 2891 	mov	r5,a
      000BF1 EB               [12] 2892 	mov	a,r3
      000BF2 3E               [12] 2893 	addc	a,r6
      000BF3 FE               [12] 2894 	mov	r6,a
      000BF4 0D               [12] 2895 	inc	r5
      000BF5 BD 00 01         [24] 2896 	cjne	r5,#0x00,00190$
      000BF8 0E               [12] 2897 	inc	r6
      000BF9                       2898 00190$:
      000BF9 ED               [12] 2899 	mov	a,r5
      000BFA 25 1B            [12] 2900 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_128
      000BFC FD               [12] 2901 	mov	r5,a
      000BFD EE               [12] 2902 	mov	a,r6
      000BFE 35 1C            [12] 2903 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 1)
      000C00 FE               [12] 2904 	mov	r6,a
      000C01 AB 1D            [24] 2905 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 2)
      000C03 8D 82            [24] 2906 	mov	dpl,r5
      000C05 8E 83            [24] 2907 	mov	dph,r6
      000C07 8B F0            [24] 2908 	mov	b,r3
      000C09 12 1D 77         [24] 2909 	lcall	__gptrget
      000C0C 60 04            [24] 2910 	jz	00113$
                                   2911 ;	fat.h:212: return 2; // error - extension has more than 3 characters
      000C0E 75 82 02         [24] 2912 	mov	dpl,#0x02
      000C11 22               [24] 2913 	ret
      000C12                       2914 00113$:
                                   2915 ;	fat.h:216: if(fname[index+i+1]==0) 
      000C12 8C 05            [24] 2916 	mov	ar5,r4
      000C14 7E 00            [12] 2917 	mov	r6,#0x00
      000C16 AA 1E            [24] 2918 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_134
      000C18 7B 00            [12] 2919 	mov	r3,#0x00
      000C1A EA               [12] 2920 	mov	a,r2
      000C1B 2D               [12] 2921 	add	a,r5
      000C1C F8               [12] 2922 	mov	r0,a
      000C1D EB               [12] 2923 	mov	a,r3
      000C1E 3E               [12] 2924 	addc	a,r6
      000C1F F9               [12] 2925 	mov	r1,a
      000C20 08               [12] 2926 	inc	r0
      000C21 B8 00 01         [24] 2927 	cjne	r0,#0x00,00192$
      000C24 09               [12] 2928 	inc	r1
      000C25                       2929 00192$:
      000C25 E8               [12] 2930 	mov	a,r0
      000C26 25 1B            [12] 2931 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_128
      000C28 F8               [12] 2932 	mov	r0,a
      000C29 E9               [12] 2933 	mov	a,r1
      000C2A 35 1C            [12] 2934 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 1)
      000C2C F9               [12] 2935 	mov	r1,a
      000C2D AF 1D            [24] 2936 	mov	r7,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 2)
      000C2F 88 82            [24] 2937 	mov	dpl,r0
      000C31 89 83            [24] 2938 	mov	dph,r1
      000C33 8F F0            [24] 2939 	mov	b,r7
      000C35 12 1D 77         [24] 2940 	lcall	__gptrget
                                   2941 ;	fat.h:225: return 0; 
      000C38 70 03            [24] 2942 	jnz	00116$
      000C3A F5 82            [12] 2943 	mov	dpl,a
      000C3C 22               [24] 2944 	ret
      000C3D                       2945 00116$:
                                   2946 ;	fat.h:227: else fname83[8+i]=fname[index+i+1]; // in a valid fname, there is just an extra dot in fname than in fname83
      000C3D 74 08            [12] 2947 	mov	a,#0x08
      000C3F 2A               [12] 2948 	add	a,r2
      000C40 F9               [12] 2949 	mov	r1,a
      000C41 E4               [12] 2950 	clr	a
      000C42 3B               [12] 2951 	addc	a,r3
      000C43 FF               [12] 2952 	mov	r7,a
      000C44 E9               [12] 2953 	mov	a,r1
      000C45 25 18            [12] 2954 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000C47 F9               [12] 2955 	mov	r1,a
      000C48 EF               [12] 2956 	mov	a,r7
      000C49 35 19            [12] 2957 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000C4B F8               [12] 2958 	mov	r0,a
      000C4C AF 1A            [24] 2959 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000C4E EA               [12] 2960 	mov	a,r2
      000C4F 2D               [12] 2961 	add	a,r5
      000C50 FD               [12] 2962 	mov	r5,a
      000C51 EB               [12] 2963 	mov	a,r3
      000C52 3E               [12] 2964 	addc	a,r6
      000C53 FE               [12] 2965 	mov	r6,a
      000C54 0D               [12] 2966 	inc	r5
      000C55 BD 00 01         [24] 2967 	cjne	r5,#0x00,00194$
      000C58 0E               [12] 2968 	inc	r6
      000C59                       2969 00194$:
      000C59 ED               [12] 2970 	mov	a,r5
      000C5A 25 1B            [12] 2971 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_128
      000C5C FD               [12] 2972 	mov	r5,a
      000C5D EE               [12] 2973 	mov	a,r6
      000C5E 35 1C            [12] 2974 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 1)
      000C60 FE               [12] 2975 	mov	r6,a
      000C61 AB 1D            [24] 2976 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_128 + 2)
      000C63 8D 82            [24] 2977 	mov	dpl,r5
      000C65 8E 83            [24] 2978 	mov	dph,r6
      000C67 8B F0            [24] 2979 	mov	b,r3
      000C69 12 1D 77         [24] 2980 	lcall	__gptrget
      000C6C FD               [12] 2981 	mov	r5,a
      000C6D 89 82            [24] 2982 	mov	dpl,r1
      000C6F 88 83            [24] 2983 	mov	dph,r0
      000C71 8F F0            [24] 2984 	mov	b,r7
      000C73 12 1C 84         [24] 2985 	lcall	__gptrput
                                   2986 ;	fat.h:205: for(uint8_t i=0;i<4;i++)
      000C76 05 1E            [12] 2987 	inc	_HELPER_filename_to_8dot3filename_i_131072_134
      000C78 02 0B D8         [24] 2988 	ljmp	00125$
      000C7B                       2989 00118$:
                                   2990 ;	fat.h:230: return 3;// if reached here, then it is an error
      000C7B 75 82 03         [24] 2991 	mov	dpl,#0x03
                                   2992 ;	fat.h:231: }
      000C7E 22               [24] 2993 	ret
                                   2994 ;------------------------------------------------------------
                                   2995 ;Allocation info for local variables in function 'MBR_CHECK__SIGNATURE'
                                   2996 ;------------------------------------------------------------
                                   2997 ;signature                 Allocated to stack - _bp +1
                                   2998 ;------------------------------------------------------------
                                   2999 ;	fat.h:245: uint8_t MBR_CHECK__SIGNATURE() __reentrant
                                   3000 ;	-----------------------------------------
                                   3001 ;	 function MBR_CHECK__SIGNATURE
                                   3002 ;	-----------------------------------------
      000C7F                       3003 _MBR_CHECK__SIGNATURE:
      000C7F C0 3C            [24] 3004 	push	_bp
      000C81 85 81 3C         [24] 3005 	mov	_bp,sp
      000C84 05 81            [12] 3006 	inc	sp
      000C86 05 81            [12] 3007 	inc	sp
                                   3008 ;	fat.h:248: SDread(0,510,2,signature);
      000C88 A9 3C            [24] 3009 	mov	r1,_bp
      000C8A 09               [12] 3010 	inc	r1
      000C8B 89 05            [24] 3011 	mov	ar5,r1
      000C8D 7E 00            [12] 3012 	mov	r6,#0x00
      000C8F 7F 40            [12] 3013 	mov	r7,#0x40
      000C91 C0 01            [24] 3014 	push	ar1
      000C93 C0 05            [24] 3015 	push	ar5
      000C95 C0 06            [24] 3016 	push	ar6
      000C97 C0 07            [24] 3017 	push	ar7
      000C99 74 02            [12] 3018 	mov	a,#0x02
      000C9B C0 E0            [24] 3019 	push	acc
      000C9D E4               [12] 3020 	clr	a
      000C9E C0 E0            [24] 3021 	push	acc
      000CA0 74 FE            [12] 3022 	mov	a,#0xfe
      000CA2 C0 E0            [24] 3023 	push	acc
      000CA4 F4               [12] 3024 	cpl	a
      000CA5 C0 E0            [24] 3025 	push	acc
      000CA7 90 00 00         [24] 3026 	mov	dptr,#(0x00&0x00ff)
      000CAA E4               [12] 3027 	clr	a
      000CAB F5 F0            [12] 3028 	mov	b,a
      000CAD 12 07 AF         [24] 3029 	lcall	_SDread
      000CB0 E5 81            [12] 3030 	mov	a,sp
      000CB2 24 F9            [12] 3031 	add	a,#0xf9
      000CB4 F5 81            [12] 3032 	mov	sp,a
      000CB6 D0 01            [24] 3033 	pop	ar1
                                   3034 ;	fat.h:257: if(signature[0]==0x55 && signature[1]==0xAA) return 0;
      000CB8 87 07            [24] 3035 	mov	ar7,@r1
      000CBA BF 55 0B         [24] 3036 	cjne	r7,#0x55,00102$
      000CBD 09               [12] 3037 	inc	r1
      000CBE 87 07            [24] 3038 	mov	ar7,@r1
      000CC0 BF AA 05         [24] 3039 	cjne	r7,#0xaa,00102$
      000CC3 75 82 00         [24] 3040 	mov	dpl,#0x00
      000CC6 80 03            [24] 3041 	sjmp	00105$
      000CC8                       3042 00102$:
                                   3043 ;	fat.h:258: else return 1;
      000CC8 75 82 01         [24] 3044 	mov	dpl,#0x01
      000CCB                       3045 00105$:
                                   3046 ;	fat.h:259: }
      000CCB 85 3C 81         [24] 3047 	mov	sp,_bp
      000CCE D0 3C            [24] 3048 	pop	_bp
      000CD0 22               [24] 3049 	ret
                                   3050 ;------------------------------------------------------------
                                   3051 ;Allocation info for local variables in function 'MBR_LOAD_PARTITION_TABLE_ENTRY'
                                   3052 ;------------------------------------------------------------
                                   3053 ;partition_number          Allocated to registers r7 
                                   3054 ;temp                      Allocated with name '_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_140'
                                   3055 ;offset                    Allocated to registers r5 r6 
                                   3056 ;------------------------------------------------------------
                                   3057 ;	fat.h:261: uint8_t MBR_LOAD_PARTITION_TABLE_ENTRY(uint8_t partition_number)
                                   3058 ;	-----------------------------------------
                                   3059 ;	 function MBR_LOAD_PARTITION_TABLE_ENTRY
                                   3060 ;	-----------------------------------------
      000CD1                       3061 _MBR_LOAD_PARTITION_TABLE_ENTRY:
      000CD1 AF 82            [24] 3062 	mov	r7,dpl
                                   3063 ;	fat.h:264: __idata uint16_t offset= 446 + partition_number*16; // get to the nth partition entry out of 0,1,2,3
      000CD3 8F 05            [24] 3064 	mov	ar5,r7
      000CD5 E4               [12] 3065 	clr	a
      000CD6 CD               [12] 3066 	xch	a,r5
      000CD7 C4               [12] 3067 	swap	a
      000CD8 CD               [12] 3068 	xch	a,r5
      000CD9 6D               [12] 3069 	xrl	a,r5
      000CDA CD               [12] 3070 	xch	a,r5
      000CDB 54 F0            [12] 3071 	anl	a,#0xf0
      000CDD CD               [12] 3072 	xch	a,r5
      000CDE 6D               [12] 3073 	xrl	a,r5
      000CDF FE               [12] 3074 	mov	r6,a
      000CE0 74 BE            [12] 3075 	mov	a,#0xbe
      000CE2 2D               [12] 3076 	add	a,r5
      000CE3 FD               [12] 3077 	mov	r5,a
      000CE4 74 01            [12] 3078 	mov	a,#0x01
      000CE6 3E               [12] 3079 	addc	a,r6
      000CE7 FE               [12] 3080 	mov	r6,a
                                   3081 ;	fat.h:266: if(partition_number>4) 
      000CE8 EF               [12] 3082 	mov	a,r7
      000CE9 24 FB            [12] 3083 	add	a,#0xff - 0x04
      000CEB 50 04            [24] 3084 	jnc	00102$
                                   3085 ;	fat.h:273: return 1; //error
      000CED 75 82 01         [24] 3086 	mov	dpl,#0x01
      000CF0 22               [24] 3087 	ret
      000CF1                       3088 00102$:
                                   3089 ;	fat.h:276: SDread(0,offset,16,temp);
      000CF1 74 82            [12] 3090 	mov	a,#_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_140
      000CF3 C0 E0            [24] 3091 	push	acc
      000CF5 74 00            [12] 3092 	mov	a,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_140 >> 8)
      000CF7 C0 E0            [24] 3093 	push	acc
      000CF9 74 40            [12] 3094 	mov	a,#0x40
      000CFB C0 E0            [24] 3095 	push	acc
      000CFD 74 10            [12] 3096 	mov	a,#0x10
      000CFF C0 E0            [24] 3097 	push	acc
      000D01 E4               [12] 3098 	clr	a
      000D02 C0 E0            [24] 3099 	push	acc
      000D04 C0 05            [24] 3100 	push	ar5
      000D06 C0 06            [24] 3101 	push	ar6
      000D08 90 00 00         [24] 3102 	mov	dptr,#(0x00&0x00ff)
      000D0B E4               [12] 3103 	clr	a
      000D0C F5 F0            [12] 3104 	mov	b,a
      000D0E 12 07 AF         [24] 3105 	lcall	_SDread
      000D11 E5 81            [12] 3106 	mov	a,sp
      000D13 24 F9            [12] 3107 	add	a,#0xf9
      000D15 F5 81            [12] 3108 	mov	sp,a
                                   3109 ;	fat.h:278: __global_partitionTableEntry.type = temp[4]; // type offset is 4
      000D17 78 86            [12] 3110 	mov	r0,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_140 + 0x0004)
      000D19 86 07            [24] 3111 	mov	ar7,@r0
      000D1B 78 41            [12] 3112 	mov	r0,#___global_partitionTableEntry
      000D1D A6 07            [24] 3113 	mov	@r0,ar7
                                   3114 ;	fat.h:279: __global_partitionTableEntry.start=HELPER_load_littleendian32(&temp[8]); //partition start LBA offset is 8
      000D1F 90 00 8A         [24] 3115 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_140 + 0x0008)
      000D22 75 F0 40         [24] 3116 	mov	b,#0x40
      000D25 12 09 23         [24] 3117 	lcall	_HELPER_load_littleendian32
      000D28 AC 82            [24] 3118 	mov	r4,dpl
      000D2A AD 83            [24] 3119 	mov	r5,dph
      000D2C AE F0            [24] 3120 	mov	r6,b
      000D2E FF               [12] 3121 	mov	r7,a
      000D2F 78 42            [12] 3122 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000D31 A6 04            [24] 3123 	mov	@r0,ar4
      000D33 08               [12] 3124 	inc	r0
      000D34 A6 05            [24] 3125 	mov	@r0,ar5
      000D36 08               [12] 3126 	inc	r0
      000D37 A6 06            [24] 3127 	mov	@r0,ar6
      000D39 08               [12] 3128 	inc	r0
      000D3A A6 07            [24] 3129 	mov	@r0,ar7
                                   3130 ;	fat.h:280: __global_partitionTableEntry.size=HELPER_load_littleendian32(&temp[12]); //partiiton size offset is 12
      000D3C 90 00 8E         [24] 3131 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_140 + 0x000c)
      000D3F 75 F0 40         [24] 3132 	mov	b,#0x40
      000D42 12 09 23         [24] 3133 	lcall	_HELPER_load_littleendian32
      000D45 AC 82            [24] 3134 	mov	r4,dpl
      000D47 AD 83            [24] 3135 	mov	r5,dph
      000D49 AE F0            [24] 3136 	mov	r6,b
      000D4B FF               [12] 3137 	mov	r7,a
      000D4C 78 46            [12] 3138 	mov	r0,#(___global_partitionTableEntry + 0x0005)
      000D4E A6 04            [24] 3139 	mov	@r0,ar4
      000D50 08               [12] 3140 	inc	r0
      000D51 A6 05            [24] 3141 	mov	@r0,ar5
      000D53 08               [12] 3142 	inc	r0
      000D54 A6 06            [24] 3143 	mov	@r0,ar6
      000D56 08               [12] 3144 	inc	r0
      000D57 A6 07            [24] 3145 	mov	@r0,ar7
                                   3146 ;	fat.h:282: return 0;
      000D59 75 82 00         [24] 3147 	mov	dpl,#0x00
                                   3148 ;	fat.h:284: }
      000D5C 22               [24] 3149 	ret
                                   3150 ;------------------------------------------------------------
                                   3151 ;Allocation info for local variables in function 'MBR_DETECT_FAT16'
                                   3152 ;------------------------------------------------------------
                                   3153 ;result                    Allocated to registers r7 
                                   3154 ;i                         Allocated to registers r6 
                                   3155 ;------------------------------------------------------------
                                   3156 ;	fat.h:286: uint8_t MBR_DETECT_FAT16()
                                   3157 ;	-----------------------------------------
                                   3158 ;	 function MBR_DETECT_FAT16
                                   3159 ;	-----------------------------------------
      000D5D                       3160 _MBR_DETECT_FAT16:
                                   3161 ;	fat.h:291: uint8_t result=0;
      000D5D 7F 00            [12] 3162 	mov	r7,#0x00
                                   3163 ;	fat.h:293: for(uint8_t i=0;i<4;i++) 
      000D5F 7E 00            [12] 3164 	mov	r6,#0x00
      000D61                       3165 00105$:
      000D61 BE 04 00         [24] 3166 	cjne	r6,#0x04,00122$
      000D64                       3167 00122$:
      000D64 50 2B            [24] 3168 	jnc	00103$
                                   3169 ;	fat.h:295: MBR_LOAD_PARTITION_TABLE_ENTRY(i);
      000D66 8E 82            [24] 3170 	mov	dpl,r6
      000D68 C0 07            [24] 3171 	push	ar7
      000D6A C0 06            [24] 3172 	push	ar6
      000D6C 12 0C D1         [24] 3173 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000D6F D0 06            [24] 3174 	pop	ar6
      000D71 D0 07            [24] 3175 	pop	ar7
                                   3176 ;	fat.h:296: if(__global_partitionTableEntry.type==FAT16_PARTITION_TYPE_ID) result |= (1<<i); //set corresponding bit
      000D73 78 41            [12] 3177 	mov	r0,#___global_partitionTableEntry
      000D75 86 05            [24] 3178 	mov	ar5,@r0
      000D77 BD 06 14         [24] 3179 	cjne	r5,#0x06,00106$
      000D7A 8E 05            [24] 3180 	mov	ar5,r6
      000D7C 8D F0            [24] 3181 	mov	b,r5
      000D7E 05 F0            [12] 3182 	inc	b
      000D80 74 01            [12] 3183 	mov	a,#0x01
      000D82 80 02            [24] 3184 	sjmp	00128$
      000D84                       3185 00126$:
      000D84 25 E0            [12] 3186 	add	a,acc
      000D86                       3187 00128$:
      000D86 D5 F0 FB         [24] 3188 	djnz	b,00126$
      000D89 FD               [12] 3189 	mov	r5,a
      000D8A 8F 04            [24] 3190 	mov	ar4,r7
      000D8C 4C               [12] 3191 	orl	a,r4
      000D8D FF               [12] 3192 	mov	r7,a
      000D8E                       3193 00106$:
                                   3194 ;	fat.h:293: for(uint8_t i=0;i<4;i++) 
      000D8E 0E               [12] 3195 	inc	r6
      000D8F 80 D0            [24] 3196 	sjmp	00105$
      000D91                       3197 00103$:
                                   3198 ;	fat.h:305: return result;
      000D91 8F 82            [24] 3199 	mov	dpl,r7
                                   3200 ;	fat.h:306: }
      000D93 22               [24] 3201 	ret
                                   3202 ;------------------------------------------------------------
                                   3203 ;Allocation info for local variables in function 'VBR_MOUNT_VBR'
                                   3204 ;------------------------------------------------------------
                                   3205 ;partition_number          Allocated to registers r7 
                                   3206 ;sloc0                     Allocated with name '_VBR_MOUNT_VBR_sloc0_1_0'
                                   3207 ;temp                      Allocated with name '_VBR_MOUNT_VBR_temp_65536_146'
                                   3208 ;------------------------------------------------------------
                                   3209 ;	fat.h:332: uint8_t VBR_MOUNT_VBR(uint8_t partition_number)
                                   3210 ;	-----------------------------------------
                                   3211 ;	 function VBR_MOUNT_VBR
                                   3212 ;	-----------------------------------------
      000D94                       3213 _VBR_MOUNT_VBR:
      000D94 AF 82            [24] 3214 	mov	r7,dpl
                                   3215 ;	fat.h:338: if(__global_nthPartitionVBRmounted == partition_number ) 
      000D96 78 69            [12] 3216 	mov	r0,#___global_nthPartitionVBRmounted
      000D98 E6               [12] 3217 	mov	a,@r0
      000D99 B5 07 04         [24] 3218 	cjne	a,ar7,00102$
                                   3219 ;	fat.h:346: return 0; //return if already loaded, else continue;
      000D9C 75 82 00         [24] 3220 	mov	dpl,#0x00
      000D9F 22               [24] 3221 	ret
      000DA0                       3222 00102$:
                                   3223 ;	fat.h:357: __global_nthPartitionVBRmounted=partition_number; //set global variable
      000DA0 78 69            [12] 3224 	mov	r0,#___global_nthPartitionVBRmounted
      000DA2 A6 07            [24] 3225 	mov	@r0,ar7
                                   3226 ;	fat.h:360: if(MBR_LOAD_PARTITION_TABLE_ENTRY(partition_number))  //if error, 0 is success
      000DA4 8F 82            [24] 3227 	mov	dpl,r7
      000DA6 12 0C D1         [24] 3228 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000DA9 E5 82            [12] 3229 	mov	a,dpl
      000DAB 60 04            [24] 3230 	jz	00104$
                                   3231 ;	fat.h:362: return 1; //return error
      000DAD 75 82 01         [24] 3232 	mov	dpl,#0x01
      000DB0 22               [24] 3233 	ret
      000DB1                       3234 00104$:
                                   3235 ;	fat.h:366: SDread(__global_partitionTableEntry.start,0,16,temp);
      000DB1 78 42            [12] 3236 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000DB3 86 04            [24] 3237 	mov	ar4,@r0
      000DB5 08               [12] 3238 	inc	r0
      000DB6 86 05            [24] 3239 	mov	ar5,@r0
      000DB8 08               [12] 3240 	inc	r0
      000DB9 86 06            [24] 3241 	mov	ar6,@r0
      000DBB 08               [12] 3242 	inc	r0
      000DBC 86 07            [24] 3243 	mov	ar7,@r0
      000DBE 74 92            [12] 3244 	mov	a,#_VBR_MOUNT_VBR_temp_65536_146
      000DC0 C0 E0            [24] 3245 	push	acc
      000DC2 74 00            [12] 3246 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_146 >> 8)
      000DC4 C0 E0            [24] 3247 	push	acc
      000DC6 74 40            [12] 3248 	mov	a,#0x40
      000DC8 C0 E0            [24] 3249 	push	acc
      000DCA 74 10            [12] 3250 	mov	a,#0x10
      000DCC C0 E0            [24] 3251 	push	acc
      000DCE E4               [12] 3252 	clr	a
      000DCF C0 E0            [24] 3253 	push	acc
      000DD1 C0 E0            [24] 3254 	push	acc
      000DD3 C0 E0            [24] 3255 	push	acc
      000DD5 8C 82            [24] 3256 	mov	dpl,r4
      000DD7 8D 83            [24] 3257 	mov	dph,r5
      000DD9 8E F0            [24] 3258 	mov	b,r6
      000DDB EF               [12] 3259 	mov	a,r7
      000DDC 12 07 AF         [24] 3260 	lcall	_SDread
      000DDF E5 81            [12] 3261 	mov	a,sp
      000DE1 24 F9            [12] 3262 	add	a,#0xf9
      000DE3 F5 81            [12] 3263 	mov	sp,a
                                   3264 ;	fat.h:375: __global_vbr.volumeStartSector = __global_partitionTableEntry.start;
      000DE5 78 42            [12] 3265 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000DE7 86 04            [24] 3266 	mov	ar4,@r0
      000DE9 08               [12] 3267 	inc	r0
      000DEA 86 05            [24] 3268 	mov	ar5,@r0
      000DEC 08               [12] 3269 	inc	r0
      000DED 86 06            [24] 3270 	mov	ar6,@r0
      000DEF 08               [12] 3271 	inc	r0
      000DF0 86 07            [24] 3272 	mov	ar7,@r0
      000DF2 78 4A            [12] 3273 	mov	r0,#___global_vbr
      000DF4 A6 04            [24] 3274 	mov	@r0,ar4
      000DF6 08               [12] 3275 	inc	r0
      000DF7 A6 05            [24] 3276 	mov	@r0,ar5
      000DF9 08               [12] 3277 	inc	r0
      000DFA A6 06            [24] 3278 	mov	@r0,ar6
      000DFC 08               [12] 3279 	inc	r0
      000DFD A6 07            [24] 3280 	mov	@r0,ar7
                                   3281 ;	fat.h:377: __global_vbr.bps = HELPER_load_littleendian16(&temp[0x0b]); // bps starts at offset 0x0b
      000DFF 90 00 9D         [24] 3282 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_146 + 0x000b)
      000E02 75 F0 40         [24] 3283 	mov	b,#0x40
      000E05 12 08 F5         [24] 3284 	lcall	_HELPER_load_littleendian16
      000E08 E5 82            [12] 3285 	mov	a,dpl
      000E0A 85 83 F0         [24] 3286 	mov	b,dph
      000E0D 78 50            [12] 3287 	mov	r0,#(___global_vbr + 0x0006)
      000E0F F6               [12] 3288 	mov	@r0,a
      000E10 08               [12] 3289 	inc	r0
      000E11 A6 F0            [24] 3290 	mov	@r0,b
                                   3291 ;	fat.h:378: __global_vbr.spc = temp[0x0d]; //spc offset 0x0d
      000E13 78 9F            [12] 3292 	mov	r0,#(_VBR_MOUNT_VBR_temp_65536_146 + 0x000d)
      000E15 86 07            [24] 3293 	mov	ar7,@r0
      000E17 78 52            [12] 3294 	mov	r0,#(___global_vbr + 0x0008)
      000E19 A6 07            [24] 3295 	mov	@r0,ar7
                                   3296 ;	fat.h:379: __global_vbr.reservedSectors = HELPER_load_littleendian16(&temp[0x0e]);
      000E1B 90 00 A0         [24] 3297 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_146 + 0x000e)
      000E1E 75 F0 40         [24] 3298 	mov	b,#0x40
      000E21 12 08 F5         [24] 3299 	lcall	_HELPER_load_littleendian16
      000E24 E5 82            [12] 3300 	mov	a,dpl
      000E26 85 83 F0         [24] 3301 	mov	b,dph
      000E29 78 4E            [12] 3302 	mov	r0,#(___global_vbr + 0x0004)
      000E2B F6               [12] 3303 	mov	@r0,a
      000E2C 08               [12] 3304 	inc	r0
      000E2D A6 F0            [24] 3305 	mov	@r0,b
                                   3306 ;	fat.h:383: SDread(__global_partitionTableEntry.start,16,16,temp);
      000E2F 78 42            [12] 3307 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000E31 86 04            [24] 3308 	mov	ar4,@r0
      000E33 08               [12] 3309 	inc	r0
      000E34 86 05            [24] 3310 	mov	ar5,@r0
      000E36 08               [12] 3311 	inc	r0
      000E37 86 06            [24] 3312 	mov	ar6,@r0
      000E39 08               [12] 3313 	inc	r0
      000E3A 86 07            [24] 3314 	mov	ar7,@r0
      000E3C 74 92            [12] 3315 	mov	a,#_VBR_MOUNT_VBR_temp_65536_146
      000E3E C0 E0            [24] 3316 	push	acc
      000E40 74 00            [12] 3317 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_146 >> 8)
      000E42 C0 E0            [24] 3318 	push	acc
      000E44 74 40            [12] 3319 	mov	a,#0x40
      000E46 C0 E0            [24] 3320 	push	acc
      000E48 74 10            [12] 3321 	mov	a,#0x10
      000E4A C0 E0            [24] 3322 	push	acc
      000E4C E4               [12] 3323 	clr	a
      000E4D C0 E0            [24] 3324 	push	acc
      000E4F 74 10            [12] 3325 	mov	a,#0x10
      000E51 C0 E0            [24] 3326 	push	acc
      000E53 E4               [12] 3327 	clr	a
      000E54 C0 E0            [24] 3328 	push	acc
      000E56 8C 82            [24] 3329 	mov	dpl,r4
      000E58 8D 83            [24] 3330 	mov	dph,r5
      000E5A 8E F0            [24] 3331 	mov	b,r6
      000E5C EF               [12] 3332 	mov	a,r7
      000E5D 12 07 AF         [24] 3333 	lcall	_SDread
      000E60 E5 81            [12] 3334 	mov	a,sp
      000E62 24 F9            [12] 3335 	add	a,#0xf9
      000E64 F5 81            [12] 3336 	mov	sp,a
                                   3337 ;	fat.h:392: __global_vbr.nfat = HELPER_load_littleendian16(&temp[0x10-16]); //offset of nfat is 0x01, but we subtract 16 as we have read from 16 offset in SDread
      000E66 90 00 92         [24] 3338 	mov	dptr,#_VBR_MOUNT_VBR_temp_65536_146
      000E69 75 F0 40         [24] 3339 	mov	b,#0x40
      000E6C 12 08 F5         [24] 3340 	lcall	_HELPER_load_littleendian16
      000E6F E5 82            [12] 3341 	mov	a,dpl
      000E71 85 83 F0         [24] 3342 	mov	b,dph
      000E74 78 53            [12] 3343 	mov	r0,#(___global_vbr + 0x0009)
      000E76 F6               [12] 3344 	mov	@r0,a
      000E77 08               [12] 3345 	inc	r0
      000E78 A6 F0            [24] 3346 	mov	@r0,b
                                   3347 ;	fat.h:393: __global_vbr.nroote = HELPER_load_littleendian16(&temp[0x11-16]); //offset of number_root_entrie is 0x11
      000E7A 90 00 93         [24] 3348 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_146 + 0x0001)
      000E7D 75 F0 40         [24] 3349 	mov	b,#0x40
      000E80 12 08 F5         [24] 3350 	lcall	_HELPER_load_littleendian16
      000E83 E5 82            [12] 3351 	mov	a,dpl
      000E85 85 83 F0         [24] 3352 	mov	b,dph
      000E88 78 57            [12] 3353 	mov	r0,#(___global_vbr + 0x000d)
      000E8A F6               [12] 3354 	mov	@r0,a
      000E8B 08               [12] 3355 	inc	r0
      000E8C A6 F0            [24] 3356 	mov	@r0,b
                                   3357 ;	fat.h:394: __global_vbr.spf = HELPER_load_littleendian16(&temp[0x16-16]); //offset of sectors_per_fat is 0x16
      000E8E 90 00 98         [24] 3358 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_146 + 0x0006)
      000E91 75 F0 40         [24] 3359 	mov	b,#0x40
      000E94 12 08 F5         [24] 3360 	lcall	_HELPER_load_littleendian16
      000E97 AE 82            [24] 3361 	mov	r6,dpl
      000E99 AF 83            [24] 3362 	mov	r7,dph
      000E9B 78 55            [12] 3363 	mov	r0,#(___global_vbr + 0x000b)
      000E9D A6 06            [24] 3364 	mov	@r0,ar6
      000E9F 08               [12] 3365 	inc	r0
      000EA0 A6 07            [24] 3366 	mov	@r0,ar7
                                   3367 ;	fat.h:403: __global_vbr.bpc =  (uint32_t)__global_vbr.bps * (uint32_t)__global_vbr.spc; 
      000EA2 78 50            [12] 3368 	mov	r0,#(___global_vbr + 0x0006)
      000EA4 86 04            [24] 3369 	mov	ar4,@r0
      000EA6 08               [12] 3370 	inc	r0
      000EA7 86 05            [24] 3371 	mov	ar5,@r0
      000EA9 8C 1F            [24] 3372 	mov	_VBR_MOUNT_VBR_sloc0_1_0,r4
      000EAB 8D 20            [24] 3373 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),r5
      000EAD 75 21 00         [24] 3374 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),#0x00
      000EB0 75 22 00         [24] 3375 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),#0x00
      000EB3 78 52            [12] 3376 	mov	r0,#(___global_vbr + 0x0008)
      000EB5 86 05            [24] 3377 	mov	ar5,@r0
      000EB7 8D 3D            [24] 3378 	mov	__mullong_PARM_2,r5
      000EB9 75 3E 00         [24] 3379 	mov	(__mullong_PARM_2 + 1),#0x00
      000EBC 75 3F 00         [24] 3380 	mov	(__mullong_PARM_2 + 2),#0x00
      000EBF 75 40 00         [24] 3381 	mov	(__mullong_PARM_2 + 3),#0x00
      000EC2 85 1F 82         [24] 3382 	mov	dpl,_VBR_MOUNT_VBR_sloc0_1_0
      000EC5 85 20 83         [24] 3383 	mov	dph,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000EC8 85 21 F0         [24] 3384 	mov	b,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000ECB E5 22            [12] 3385 	mov	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000ECD C0 07            [24] 3386 	push	ar7
      000ECF C0 06            [24] 3387 	push	ar6
      000ED1 12 1D 09         [24] 3388 	lcall	__mullong
      000ED4 AA 82            [24] 3389 	mov	r2,dpl
      000ED6 AB 83            [24] 3390 	mov	r3,dph
      000ED8 AC F0            [24] 3391 	mov	r4,b
      000EDA FD               [12] 3392 	mov	r5,a
      000EDB D0 06            [24] 3393 	pop	ar6
      000EDD D0 07            [24] 3394 	pop	ar7
      000EDF 78 59            [12] 3395 	mov	r0,#(___global_vbr + 0x000f)
      000EE1 A6 02            [24] 3396 	mov	@r0,ar2
      000EE3 08               [12] 3397 	inc	r0
      000EE4 A6 03            [24] 3398 	mov	@r0,ar3
      000EE6 08               [12] 3399 	inc	r0
      000EE7 A6 04            [24] 3400 	mov	@r0,ar4
      000EE9 08               [12] 3401 	inc	r0
      000EEA A6 05            [24] 3402 	mov	@r0,ar5
                                   3403 ;	fat.h:406: __global_vbr.addr_fat_start = __global_vbr.volumeStartSector + __global_vbr.reservedSectors;
      000EEC 78 4A            [12] 3404 	mov	r0,#___global_vbr
      000EEE 86 1F            [24] 3405 	mov	_VBR_MOUNT_VBR_sloc0_1_0,@r0
      000EF0 08               [12] 3406 	inc	r0
      000EF1 86 20            [24] 3407 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),@r0
      000EF3 08               [12] 3408 	inc	r0
      000EF4 86 21            [24] 3409 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),@r0
      000EF6 08               [12] 3410 	inc	r0
      000EF7 86 22            [24] 3411 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),@r0
      000EF9 78 4E            [12] 3412 	mov	r0,#(___global_vbr + 0x0004)
      000EFB 86 04            [24] 3413 	mov	ar4,@r0
      000EFD 08               [12] 3414 	inc	r0
      000EFE 86 05            [24] 3415 	mov	ar5,@r0
      000F00 E4               [12] 3416 	clr	a
      000F01 FB               [12] 3417 	mov	r3,a
      000F02 FA               [12] 3418 	mov	r2,a
      000F03 EC               [12] 3419 	mov	a,r4
      000F04 25 1F            [12] 3420 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000F06 F5 1F            [12] 3421 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000F08 ED               [12] 3422 	mov	a,r5
      000F09 35 20            [12] 3423 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F0B F5 20            [12] 3424 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000F0D EB               [12] 3425 	mov	a,r3
      000F0E 35 21            [12] 3426 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F10 F5 21            [12] 3427 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      000F12 EA               [12] 3428 	mov	a,r2
      000F13 35 22            [12] 3429 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000F15 F5 22            [12] 3430 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      000F17 78 5D            [12] 3431 	mov	r0,#(___global_vbr + 0x0013)
      000F19 A6 1F            [24] 3432 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      000F1B 08               [12] 3433 	inc	r0
      000F1C A6 20            [24] 3434 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F1E 08               [12] 3435 	inc	r0
      000F1F A6 21            [24] 3436 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F21 08               [12] 3437 	inc	r0
      000F22 A6 22            [24] 3438 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3439 ;	fat.h:407: __global_vbr.addr_roote_start = __global_vbr.addr_fat_start + __global_vbr.nfat * __global_vbr.spf;
      000F24 78 53            [12] 3440 	mov	r0,#(___global_vbr + 0x0009)
      000F26 86 82            [24] 3441 	mov	dpl,@r0
      000F28 08               [12] 3442 	inc	r0
      000F29 86 83            [24] 3443 	mov	dph,@r0
      000F2B 8E 3D            [24] 3444 	mov	__mulint_PARM_2,r6
      000F2D 8F 3E            [24] 3445 	mov	(__mulint_PARM_2 + 1),r7
      000F2F 12 1C 9F         [24] 3446 	lcall	__mulint
      000F32 AE 82            [24] 3447 	mov	r6,dpl
      000F34 AF 83            [24] 3448 	mov	r7,dph
      000F36 8E 04            [24] 3449 	mov	ar4,r6
      000F38 8F 05            [24] 3450 	mov	ar5,r7
      000F3A E4               [12] 3451 	clr	a
      000F3B FE               [12] 3452 	mov	r6,a
      000F3C FF               [12] 3453 	mov	r7,a
      000F3D EC               [12] 3454 	mov	a,r4
      000F3E 25 1F            [12] 3455 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000F40 F5 1F            [12] 3456 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000F42 ED               [12] 3457 	mov	a,r5
      000F43 35 20            [12] 3458 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F45 F5 20            [12] 3459 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000F47 EE               [12] 3460 	mov	a,r6
      000F48 35 21            [12] 3461 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F4A F5 21            [12] 3462 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      000F4C EF               [12] 3463 	mov	a,r7
      000F4D 35 22            [12] 3464 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000F4F F5 22            [12] 3465 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      000F51 78 61            [12] 3466 	mov	r0,#(___global_vbr + 0x0017)
      000F53 A6 1F            [24] 3467 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      000F55 08               [12] 3468 	inc	r0
      000F56 A6 20            [24] 3469 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F58 08               [12] 3470 	inc	r0
      000F59 A6 21            [24] 3471 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F5B 08               [12] 3472 	inc	r0
      000F5C A6 22            [24] 3473 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3474 ;	fat.h:408: __global_vbr.addr_data_start = __global_vbr.addr_roote_start + (__global_vbr.nroote*32)/__global_vbr.bps;
      000F5E 78 57            [12] 3475 	mov	r0,#(___global_vbr + 0x000d)
      000F60 86 02            [24] 3476 	mov	ar2,@r0
      000F62 08               [12] 3477 	inc	r0
      000F63 86 03            [24] 3478 	mov	ar3,@r0
      000F65 8A 82            [24] 3479 	mov	dpl,r2
      000F67 EB               [12] 3480 	mov	a,r3
      000F68 C4               [12] 3481 	swap	a
      000F69 23               [12] 3482 	rl	a
      000F6A 54 E0            [12] 3483 	anl	a,#0xe0
      000F6C C5 82            [12] 3484 	xch	a,dpl
      000F6E C4               [12] 3485 	swap	a
      000F6F 23               [12] 3486 	rl	a
      000F70 C5 82            [12] 3487 	xch	a,dpl
      000F72 65 82            [12] 3488 	xrl	a,dpl
      000F74 C5 82            [12] 3489 	xch	a,dpl
      000F76 54 E0            [12] 3490 	anl	a,#0xe0
      000F78 C5 82            [12] 3491 	xch	a,dpl
      000F7A 65 82            [12] 3492 	xrl	a,dpl
      000F7C F5 83            [12] 3493 	mov	dph,a
      000F7E 78 50            [12] 3494 	mov	r0,#(___global_vbr + 0x0006)
      000F80 86 3D            [24] 3495 	mov	__divuint_PARM_2,@r0
      000F82 08               [12] 3496 	inc	r0
      000F83 86 3E            [24] 3497 	mov	(__divuint_PARM_2 + 1),@r0
      000F85 12 1B 73         [24] 3498 	lcall	__divuint
      000F88 AA 82            [24] 3499 	mov	r2,dpl
      000F8A AB 83            [24] 3500 	mov	r3,dph
      000F8C E4               [12] 3501 	clr	a
      000F8D FE               [12] 3502 	mov	r6,a
      000F8E FF               [12] 3503 	mov	r7,a
      000F8F EA               [12] 3504 	mov	a,r2
      000F90 25 1F            [12] 3505 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000F92 FA               [12] 3506 	mov	r2,a
      000F93 EB               [12] 3507 	mov	a,r3
      000F94 35 20            [12] 3508 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000F96 FB               [12] 3509 	mov	r3,a
      000F97 EE               [12] 3510 	mov	a,r6
      000F98 35 21            [12] 3511 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000F9A FE               [12] 3512 	mov	r6,a
      000F9B EF               [12] 3513 	mov	a,r7
      000F9C 35 22            [12] 3514 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000F9E FF               [12] 3515 	mov	r7,a
      000F9F 78 65            [12] 3516 	mov	r0,#(___global_vbr + 0x001b)
      000FA1 A6 02            [24] 3517 	mov	@r0,ar2
      000FA3 08               [12] 3518 	inc	r0
      000FA4 A6 03            [24] 3519 	mov	@r0,ar3
      000FA6 08               [12] 3520 	inc	r0
      000FA7 A6 06            [24] 3521 	mov	@r0,ar6
      000FA9 08               [12] 3522 	inc	r0
      000FAA A6 07            [24] 3523 	mov	@r0,ar7
                                   3524 ;	fat.h:416: return 0;
      000FAC 75 82 00         [24] 3525 	mov	dpl,#0x00
                                   3526 ;	fat.h:418: }
      000FAF 22               [24] 3527 	ret
                                   3528 ;------------------------------------------------------------
                                   3529 ;Allocation info for local variables in function 'VBR_FAT16_CHECK_COMPATIBILITY'
                                   3530 ;------------------------------------------------------------
                                   3531 ;partition_number          Allocated to registers r7 
                                   3532 ;------------------------------------------------------------
                                   3533 ;	fat.h:420: uint8_t VBR_FAT16_CHECK_COMPATIBILITY(uint8_t partition_number)
                                   3534 ;	-----------------------------------------
                                   3535 ;	 function VBR_FAT16_CHECK_COMPATIBILITY
                                   3536 ;	-----------------------------------------
      000FB0                       3537 _VBR_FAT16_CHECK_COMPATIBILITY:
                                   3538 ;	fat.h:426: if(VBR_MOUNT_VBR(partition_number))
      000FB0 12 0D 94         [24] 3539 	lcall	_VBR_MOUNT_VBR
      000FB3 E5 82            [12] 3540 	mov	a,dpl
      000FB5 60 04            [24] 3541 	jz	00102$
                                   3542 ;	fat.h:428: return 1; //error
      000FB7 75 82 01         [24] 3543 	mov	dpl,#0x01
      000FBA 22               [24] 3544 	ret
      000FBB                       3545 00102$:
                                   3546 ;	fat.h:431: if(__global_vbr.bps!=SD_BLOCK_SIZE) 
      000FBB 78 50            [12] 3547 	mov	r0,#(___global_vbr + 0x0006)
      000FBD 86 06            [24] 3548 	mov	ar6,@r0
      000FBF 08               [12] 3549 	inc	r0
      000FC0 86 07            [24] 3550 	mov	ar7,@r0
      000FC2 BE 00 05         [24] 3551 	cjne	r6,#0x00,00116$
      000FC5 BF 02 02         [24] 3552 	cjne	r7,#0x02,00116$
      000FC8 80 04            [24] 3553 	sjmp	00104$
      000FCA                       3554 00116$:
                                   3555 ;	fat.h:436: return 2; //error - not supported fat16
      000FCA 75 82 02         [24] 3556 	mov	dpl,#0x02
      000FCD 22               [24] 3557 	ret
      000FCE                       3558 00104$:
                                   3559 ;	fat.h:439: return 0;
      000FCE 75 82 00         [24] 3560 	mov	dpl,#0x00
                                   3561 ;	fat.h:440: }
      000FD1 22               [24] 3562 	ret
                                   3563 ;------------------------------------------------------------
                                   3564 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_DUMP'
                                   3565 ;------------------------------------------------------------
                                   3566 ;i                         Allocated to registers r7 
                                   3567 ;i                         Allocated to registers r7 
                                   3568 ;------------------------------------------------------------
                                   3569 ;	fat.h:443: void FAT16_ROOTENTRY_DUMP()
                                   3570 ;	-----------------------------------------
                                   3571 ;	 function FAT16_ROOTENTRY_DUMP
                                   3572 ;	-----------------------------------------
      000FD2                       3573 _FAT16_ROOTENTRY_DUMP:
                                   3574 ;	fat.h:445: UartPrint("\nROOT_ENTRY_INDEX:");
      000FD2 90 1E 14         [24] 3575 	mov	dptr,#___str_1
      000FD5 75 F0 80         [24] 3576 	mov	b,#0x80
      000FD8 12 01 EC         [24] 3577 	lcall	_UartPrint
                                   3578 ;	fat.h:446: UartPrintNumber(__global_rootEntry.entry_index);
      000FDB 78 7C            [12] 3579 	mov	r0,#(___global_rootEntry + 0x0012)
      000FDD 86 06            [24] 3580 	mov	ar6,@r0
      000FDF 08               [12] 3581 	inc	r0
      000FE0 86 07            [24] 3582 	mov	ar7,@r0
      000FE2 7D 00            [12] 3583 	mov	r5,#0x00
      000FE4 7C 00            [12] 3584 	mov	r4,#0x00
      000FE6 8E 82            [24] 3585 	mov	dpl,r6
      000FE8 8F 83            [24] 3586 	mov	dph,r7
      000FEA 8D F0            [24] 3587 	mov	b,r5
      000FEC EC               [12] 3588 	mov	a,r4
      000FED 12 03 32         [24] 3589 	lcall	_UartPrintNumber
                                   3590 ;	fat.h:447: UartPrint("\nFILE: ");
      000FF0 90 1E 27         [24] 3591 	mov	dptr,#___str_2
      000FF3 75 F0 80         [24] 3592 	mov	b,#0x80
      000FF6 12 01 EC         [24] 3593 	lcall	_UartPrint
                                   3594 ;	fat.h:448: for(uint8_t i=0;i<8;i++)UartWrite(__global_rootEntry.name[i]);
      000FF9 7F 00            [12] 3595 	mov	r7,#0x00
      000FFB                       3596 00104$:
      000FFB BF 08 00         [24] 3597 	cjne	r7,#0x08,00129$
      000FFE                       3598 00129$:
      000FFE 50 10            [24] 3599 	jnc	00101$
      001000 EF               [12] 3600 	mov	a,r7
      001001 24 6A            [12] 3601 	add	a,#___global_rootEntry
      001003 F9               [12] 3602 	mov	r1,a
      001004 87 82            [24] 3603 	mov	dpl,@r1
      001006 C0 07            [24] 3604 	push	ar7
      001008 12 01 66         [24] 3605 	lcall	_UartWrite
      00100B D0 07            [24] 3606 	pop	ar7
      00100D 0F               [12] 3607 	inc	r7
      00100E 80 EB            [24] 3608 	sjmp	00104$
      001010                       3609 00101$:
                                   3610 ;	fat.h:449: for(uint8_t i=0;i<3;i++)UartWrite(__global_rootEntry.extension[i]);
      001010 7F 00            [12] 3611 	mov	r7,#0x00
      001012                       3612 00107$:
      001012 BF 03 00         [24] 3613 	cjne	r7,#0x03,00131$
      001015                       3614 00131$:
      001015 50 10            [24] 3615 	jnc	00102$
      001017 EF               [12] 3616 	mov	a,r7
      001018 24 72            [12] 3617 	add	a,#(___global_rootEntry + 0x0008)
      00101A F9               [12] 3618 	mov	r1,a
      00101B 87 82            [24] 3619 	mov	dpl,@r1
      00101D C0 07            [24] 3620 	push	ar7
      00101F 12 01 66         [24] 3621 	lcall	_UartWrite
      001022 D0 07            [24] 3622 	pop	ar7
      001024 0F               [12] 3623 	inc	r7
      001025 80 EB            [24] 3624 	sjmp	00107$
      001027                       3625 00102$:
                                   3626 ;	fat.h:450: UartPrint("\nSTART: ");
      001027 90 1E 2F         [24] 3627 	mov	dptr,#___str_3
      00102A 75 F0 80         [24] 3628 	mov	b,#0x80
      00102D 12 01 EC         [24] 3629 	lcall	_UartPrint
                                   3630 ;	fat.h:451: UartPrintNumber(__global_rootEntry.startCluster);
      001030 78 76            [12] 3631 	mov	r0,#(___global_rootEntry + 0x000c)
      001032 86 06            [24] 3632 	mov	ar6,@r0
      001034 08               [12] 3633 	inc	r0
      001035 86 07            [24] 3634 	mov	ar7,@r0
      001037 7D 00            [12] 3635 	mov	r5,#0x00
      001039 7C 00            [12] 3636 	mov	r4,#0x00
      00103B 8E 82            [24] 3637 	mov	dpl,r6
      00103D 8F 83            [24] 3638 	mov	dph,r7
      00103F 8D F0            [24] 3639 	mov	b,r5
      001041 EC               [12] 3640 	mov	a,r4
      001042 12 03 32         [24] 3641 	lcall	_UartPrintNumber
                                   3642 ;	fat.h:452: UartPrint("\nSIZE: ");
      001045 90 1E 38         [24] 3643 	mov	dptr,#___str_4
      001048 75 F0 80         [24] 3644 	mov	b,#0x80
      00104B 12 01 EC         [24] 3645 	lcall	_UartPrint
                                   3646 ;	fat.h:453: UartPrintNumber(__global_rootEntry.size);			
      00104E 78 78            [12] 3647 	mov	r0,#(___global_rootEntry + 0x000e)
      001050 86 04            [24] 3648 	mov	ar4,@r0
      001052 08               [12] 3649 	inc	r0
      001053 86 05            [24] 3650 	mov	ar5,@r0
      001055 08               [12] 3651 	inc	r0
      001056 86 06            [24] 3652 	mov	ar6,@r0
      001058 08               [12] 3653 	inc	r0
      001059 86 07            [24] 3654 	mov	ar7,@r0
      00105B 8C 82            [24] 3655 	mov	dpl,r4
      00105D 8D 83            [24] 3656 	mov	dph,r5
      00105F 8E F0            [24] 3657 	mov	b,r6
      001061 EF               [12] 3658 	mov	a,r7
      001062 12 03 32         [24] 3659 	lcall	_UartPrintNumber
                                   3660 ;	fat.h:454: UartPrint("\nATTR: 0x");
      001065 90 1E 40         [24] 3661 	mov	dptr,#___str_5
      001068 75 F0 80         [24] 3662 	mov	b,#0x80
      00106B 12 01 EC         [24] 3663 	lcall	_UartPrint
                                   3664 ;	fat.h:455: UartWriteNumber(__global_rootEntry.attributes,HEX);			
      00106E 78 75            [12] 3665 	mov	r0,#(___global_rootEntry + 0x000b)
      001070 86 82            [24] 3666 	mov	dpl,@r0
      001072 E4               [12] 3667 	clr	a
      001073 C0 E0            [24] 3668 	push	acc
      001075 12 02 1E         [24] 3669 	lcall	_UartWriteNumber
      001078 15 81            [12] 3670 	dec	sp
                                   3671 ;	fat.h:456: UartWrite('\n\n');
      00107A 75 82 0A         [24] 3672 	mov	dpl,#0x0a
                                   3673 ;	fat.h:457: }
      00107D 02 01 66         [24] 3674 	ljmp	_UartWrite
                                   3675 ;------------------------------------------------------------
                                   3676 ;Allocation info for local variables in function 'FAT16_LOAD_ROOTENTRY'
                                   3677 ;------------------------------------------------------------
                                   3678 ;roote_number              Allocated with name '_FAT16_LOAD_ROOTENTRY_roote_number_65536_157'
                                   3679 ;i                         Allocated to registers r7 
                                   3680 ;i                         Allocated to registers r7 
                                   3681 ;sloc0                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc0_1_0'
                                   3682 ;sloc1                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc1_1_0'
                                   3683 ;temp                      Allocated with name '_FAT16_LOAD_ROOTENTRY_temp_65536_158'
                                   3684 ;sector_of_given_roote     Allocated to registers r2 r3 r4 r5 
                                   3685 ;offset_in_this_sector     Allocated to registers r6 r7 
                                   3686 ;------------------------------------------------------------
                                   3687 ;	fat.h:467: uint8_t FAT16_LOAD_ROOTENTRY(uint16_t roote_number)
                                   3688 ;	-----------------------------------------
                                   3689 ;	 function FAT16_LOAD_ROOTENTRY
                                   3690 ;	-----------------------------------------
      001080                       3691 _FAT16_LOAD_ROOTENTRY:
      001080 85 82 23         [24] 3692 	mov	_FAT16_LOAD_ROOTENTRY_roote_number_65536_157,dpl
      001083 85 83 24         [24] 3693 	mov	(_FAT16_LOAD_ROOTENTRY_roote_number_65536_157 + 1),dph
                                   3694 ;	fat.h:476: if(roote_number < __global_vbr.nroote);//pass
      001086 78 57            [12] 3695 	mov	r0,#(___global_vbr + 0x000d)
      001088 86 04            [24] 3696 	mov	ar4,@r0
      00108A 08               [12] 3697 	inc	r0
      00108B 86 05            [24] 3698 	mov	ar5,@r0
      00108D C3               [12] 3699 	clr	c
      00108E E5 23            [12] 3700 	mov	a,_FAT16_LOAD_ROOTENTRY_roote_number_65536_157
      001090 9C               [12] 3701 	subb	a,r4
      001091 E5 24            [12] 3702 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_157 + 1)
      001093 9D               [12] 3703 	subb	a,r5
      001094 40 04            [24] 3704 	jc	00103$
                                   3705 ;	fat.h:477: else return 1; // error as roote_number is more than number of root entries present in rootentry table 
      001096 75 82 01         [24] 3706 	mov	dpl,#0x01
      001099 22               [24] 3707 	ret
      00109A                       3708 00103$:
                                   3709 ;	fat.h:479: VBR_MOUNT_VBR(__global_nthPartitionVBRmounted);
      00109A 78 69            [12] 3710 	mov	r0,#___global_nthPartitionVBRmounted
      00109C 86 82            [24] 3711 	mov	dpl,@r0
      00109E 12 0D 94         [24] 3712 	lcall	_VBR_MOUNT_VBR
                                   3713 ;	fat.h:482: sector_of_given_roote = __global_vbr.addr_roote_start + (roote_number*32)/__global_vbr.bps;
      0010A1 78 61            [12] 3714 	mov	r0,#(___global_vbr + 0x0017)
      0010A3 86 25            [24] 3715 	mov	_FAT16_LOAD_ROOTENTRY_sloc0_1_0,@r0
      0010A5 08               [12] 3716 	inc	r0
      0010A6 86 26            [24] 3717 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1),@r0
      0010A8 08               [12] 3718 	inc	r0
      0010A9 86 27            [24] 3719 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2),@r0
      0010AB 08               [12] 3720 	inc	r0
      0010AC 86 28            [24] 3721 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3),@r0
      0010AE AE 23            [24] 3722 	mov	r6,_FAT16_LOAD_ROOTENTRY_roote_number_65536_157
      0010B0 E5 24            [12] 3723 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_157 + 1)
      0010B2 C4               [12] 3724 	swap	a
      0010B3 23               [12] 3725 	rl	a
      0010B4 54 E0            [12] 3726 	anl	a,#0xe0
      0010B6 CE               [12] 3727 	xch	a,r6
      0010B7 C4               [12] 3728 	swap	a
      0010B8 23               [12] 3729 	rl	a
      0010B9 CE               [12] 3730 	xch	a,r6
      0010BA 6E               [12] 3731 	xrl	a,r6
      0010BB CE               [12] 3732 	xch	a,r6
      0010BC 54 E0            [12] 3733 	anl	a,#0xe0
      0010BE CE               [12] 3734 	xch	a,r6
      0010BF 6E               [12] 3735 	xrl	a,r6
      0010C0 FF               [12] 3736 	mov	r7,a
      0010C1 78 50            [12] 3737 	mov	r0,#(___global_vbr + 0x0006)
      0010C3 86 29            [24] 3738 	mov	_FAT16_LOAD_ROOTENTRY_sloc1_1_0,@r0
      0010C5 08               [12] 3739 	inc	r0
      0010C6 86 2A            [24] 3740 	mov	(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1),@r0
      0010C8 85 29 3D         [24] 3741 	mov	__divuint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      0010CB 85 2A 3E         [24] 3742 	mov	(__divuint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      0010CE 8E 82            [24] 3743 	mov	dpl,r6
      0010D0 8F 83            [24] 3744 	mov	dph,r7
      0010D2 C0 07            [24] 3745 	push	ar7
      0010D4 C0 06            [24] 3746 	push	ar6
      0010D6 12 1B 73         [24] 3747 	lcall	__divuint
      0010D9 AA 82            [24] 3748 	mov	r2,dpl
      0010DB AB 83            [24] 3749 	mov	r3,dph
      0010DD D0 06            [24] 3750 	pop	ar6
      0010DF D0 07            [24] 3751 	pop	ar7
      0010E1 E4               [12] 3752 	clr	a
      0010E2 FC               [12] 3753 	mov	r4,a
      0010E3 FD               [12] 3754 	mov	r5,a
      0010E4 EA               [12] 3755 	mov	a,r2
      0010E5 25 25            [12] 3756 	add	a,_FAT16_LOAD_ROOTENTRY_sloc0_1_0
      0010E7 FA               [12] 3757 	mov	r2,a
      0010E8 EB               [12] 3758 	mov	a,r3
      0010E9 35 26            [12] 3759 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1)
      0010EB FB               [12] 3760 	mov	r3,a
      0010EC EC               [12] 3761 	mov	a,r4
      0010ED 35 27            [12] 3762 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2)
      0010EF FC               [12] 3763 	mov	r4,a
      0010F0 ED               [12] 3764 	mov	a,r5
      0010F1 35 28            [12] 3765 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3)
      0010F3 FD               [12] 3766 	mov	r5,a
                                   3767 ;	fat.h:483: offset_in_this_sector = (roote_number*32)%__global_vbr.bps;
      0010F4 85 29 3D         [24] 3768 	mov	__moduint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      0010F7 85 2A 3E         [24] 3769 	mov	(__moduint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      0010FA 8E 82            [24] 3770 	mov	dpl,r6
      0010FC 8F 83            [24] 3771 	mov	dph,r7
      0010FE C0 05            [24] 3772 	push	ar5
      001100 C0 04            [24] 3773 	push	ar4
      001102 C0 03            [24] 3774 	push	ar3
      001104 C0 02            [24] 3775 	push	ar2
      001106 12 1C BC         [24] 3776 	lcall	__moduint
      001109 AE 82            [24] 3777 	mov	r6,dpl
      00110B AF 83            [24] 3778 	mov	r7,dph
      00110D D0 02            [24] 3779 	pop	ar2
      00110F D0 03            [24] 3780 	pop	ar3
      001111 D0 04            [24] 3781 	pop	ar4
      001113 D0 05            [24] 3782 	pop	ar5
                                   3783 ;	fat.h:485: SDread(sector_of_given_roote,offset_in_this_sector,32,temp);
      001115 74 A2            [12] 3784 	mov	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_158
      001117 C0 E0            [24] 3785 	push	acc
      001119 74 00            [12] 3786 	mov	a,#(_FAT16_LOAD_ROOTENTRY_temp_65536_158 >> 8)
      00111B C0 E0            [24] 3787 	push	acc
      00111D 74 40            [12] 3788 	mov	a,#0x40
      00111F C0 E0            [24] 3789 	push	acc
      001121 03               [12] 3790 	rr	a
      001122 C0 E0            [24] 3791 	push	acc
      001124 E4               [12] 3792 	clr	a
      001125 C0 E0            [24] 3793 	push	acc
      001127 C0 06            [24] 3794 	push	ar6
      001129 C0 07            [24] 3795 	push	ar7
      00112B 8A 82            [24] 3796 	mov	dpl,r2
      00112D 8B 83            [24] 3797 	mov	dph,r3
      00112F 8C F0            [24] 3798 	mov	b,r4
      001131 ED               [12] 3799 	mov	a,r5
      001132 12 07 AF         [24] 3800 	lcall	_SDread
      001135 E5 81            [12] 3801 	mov	a,sp
      001137 24 F9            [12] 3802 	add	a,#0xf9
      001139 F5 81            [12] 3803 	mov	sp,a
                                   3804 ;	fat.h:487: __global_rootEntry.entry_index = roote_number; //save the index of the root_entry
      00113B 78 7C            [12] 3805 	mov	r0,#(___global_rootEntry + 0x0012)
      00113D A6 23            [24] 3806 	mov	@r0,_FAT16_LOAD_ROOTENTRY_roote_number_65536_157
      00113F 08               [12] 3807 	inc	r0
      001140 A6 24            [24] 3808 	mov	@r0,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_157 + 1)
                                   3809 ;	fat.h:488: __global_rootEntry.bytes_read = 0; //no bytes has been read so far by FAT16_FILE_READ as we have just loaded the rootentry
      001142 78 7E            [12] 3810 	mov	r0,#(___global_rootEntry + 0x0014)
      001144 76 00            [12] 3811 	mov	@r0,#0x00
      001146 08               [12] 3812 	inc	r0
      001147 76 00            [12] 3813 	mov	@r0,#0x00
      001149 08               [12] 3814 	inc	r0
      00114A 76 00            [12] 3815 	mov	@r0,#0x00
      00114C 08               [12] 3816 	inc	r0
      00114D 76 00            [12] 3817 	mov	@r0,#0x00
                                   3818 ;	fat.h:490: for(uint8_t i=0;i<8;i++) __global_rootEntry.name[i] = temp[i];
      00114F 7F 00            [12] 3819 	mov	r7,#0x00
      001151                       3820 00107$:
      001151 BF 08 00         [24] 3821 	cjne	r7,#0x08,00137$
      001154                       3822 00137$:
      001154 50 0F            [24] 3823 	jnc	00104$
      001156 EF               [12] 3824 	mov	a,r7
      001157 24 6A            [12] 3825 	add	a,#___global_rootEntry
      001159 F9               [12] 3826 	mov	r1,a
      00115A EF               [12] 3827 	mov	a,r7
      00115B 24 A2            [12] 3828 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_158
      00115D F8               [12] 3829 	mov	r0,a
      00115E 86 06            [24] 3830 	mov	ar6,@r0
      001160 A7 06            [24] 3831 	mov	@r1,ar6
      001162 0F               [12] 3832 	inc	r7
      001163 80 EC            [24] 3833 	sjmp	00107$
      001165                       3834 00104$:
                                   3835 ;	fat.h:491: for(uint8_t i=8;i<11;i++) __global_rootEntry.extension[i-8] = temp[i];
      001165 7F 08            [12] 3836 	mov	r7,#0x08
      001167                       3837 00110$:
      001167 BF 0B 00         [24] 3838 	cjne	r7,#0x0b,00139$
      00116A                       3839 00139$:
      00116A 50 13            [24] 3840 	jnc	00105$
      00116C 8F 06            [24] 3841 	mov	ar6,r7
      00116E EE               [12] 3842 	mov	a,r6
      00116F 24 F8            [12] 3843 	add	a,#0xf8
      001171 24 72            [12] 3844 	add	a,#(___global_rootEntry + 0x0008)
      001173 F9               [12] 3845 	mov	r1,a
      001174 EF               [12] 3846 	mov	a,r7
      001175 24 A2            [12] 3847 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_158
      001177 F8               [12] 3848 	mov	r0,a
      001178 86 06            [24] 3849 	mov	ar6,@r0
      00117A A7 06            [24] 3850 	mov	@r1,ar6
      00117C 0F               [12] 3851 	inc	r7
      00117D 80 E8            [24] 3852 	sjmp	00110$
      00117F                       3853 00105$:
                                   3854 ;	fat.h:493: __global_rootEntry.attributes = temp[0x0b];
      00117F 78 AD            [12] 3855 	mov	r0,#(_FAT16_LOAD_ROOTENTRY_temp_65536_158 + 0x000b)
      001181 86 07            [24] 3856 	mov	ar7,@r0
      001183 78 75            [12] 3857 	mov	r0,#(___global_rootEntry + 0x000b)
      001185 A6 07            [24] 3858 	mov	@r0,ar7
                                   3859 ;	fat.h:494: __global_rootEntry.startCluster = HELPER_load_littleendian16(&temp[0x1a]);
      001187 90 00 BC         [24] 3860 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_158 + 0x001a)
      00118A 75 F0 40         [24] 3861 	mov	b,#0x40
      00118D 12 08 F5         [24] 3862 	lcall	_HELPER_load_littleendian16
      001190 E5 82            [12] 3863 	mov	a,dpl
      001192 85 83 F0         [24] 3864 	mov	b,dph
      001195 78 76            [12] 3865 	mov	r0,#(___global_rootEntry + 0x000c)
      001197 F6               [12] 3866 	mov	@r0,a
      001198 08               [12] 3867 	inc	r0
      001199 A6 F0            [24] 3868 	mov	@r0,b
                                   3869 ;	fat.h:495: __global_rootEntry.size = HELPER_load_littleendian32(&temp[0x1c]);
      00119B 90 00 BE         [24] 3870 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_158 + 0x001c)
      00119E 75 F0 40         [24] 3871 	mov	b,#0x40
      0011A1 12 09 23         [24] 3872 	lcall	_HELPER_load_littleendian32
      0011A4 AC 82            [24] 3873 	mov	r4,dpl
      0011A6 AD 83            [24] 3874 	mov	r5,dph
      0011A8 AE F0            [24] 3875 	mov	r6,b
      0011AA FF               [12] 3876 	mov	r7,a
      0011AB 78 78            [12] 3877 	mov	r0,#(___global_rootEntry + 0x000e)
      0011AD A6 04            [24] 3878 	mov	@r0,ar4
      0011AF 08               [12] 3879 	inc	r0
      0011B0 A6 05            [24] 3880 	mov	@r0,ar5
      0011B2 08               [12] 3881 	inc	r0
      0011B3 A6 06            [24] 3882 	mov	@r0,ar6
      0011B5 08               [12] 3883 	inc	r0
      0011B6 A6 07            [24] 3884 	mov	@r0,ar7
                                   3885 ;	fat.h:497: return 0;
      0011B8 75 82 00         [24] 3886 	mov	dpl,#0x00
                                   3887 ;	fat.h:498: }
      0011BB 22               [24] 3888 	ret
                                   3889 ;------------------------------------------------------------
                                   3890 ;Allocation info for local variables in function 'FAT16_IS_ROOTENTRY_VALID_FILE'
                                   3891 ;------------------------------------------------------------
                                   3892 ;	fat.h:499: uint8_t FAT16_IS_ROOTENTRY_VALID_FILE()
                                   3893 ;	-----------------------------------------
                                   3894 ;	 function FAT16_IS_ROOTENTRY_VALID_FILE
                                   3895 ;	-----------------------------------------
      0011BC                       3896 _FAT16_IS_ROOTENTRY_VALID_FILE:
                                   3897 ;	fat.h:502: if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_AVAILABLE)
      0011BC 78 6A            [12] 3898 	mov	r0,#___global_rootEntry
      0011BE E6               [12] 3899 	mov	a,@r0
      0011BF FF               [12] 3900 	mov	r7,a
      0011C0 70 04            [24] 3901 	jnz	00112$
                                   3902 ;	fat.h:507: return 255; //no more entries, stop scanning
      0011C2 75 82 FF         [24] 3903 	mov	dpl,#0xff
      0011C5 22               [24] 3904 	ret
      0011C6                       3905 00112$:
                                   3906 ;	fat.h:509: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DELETED)
      0011C6 BF E5 04         [24] 3907 	cjne	r7,#0xe5,00109$
                                   3908 ;	fat.h:515: return FAT16_ROOTENTRY_DELETED; //deleted and available
      0011C9 75 82 E5         [24] 3909 	mov	dpl,#0xe5
      0011CC 22               [24] 3910 	ret
      0011CD                       3911 00109$:
                                   3912 ;	fat.h:517: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DOT)
      0011CD BF 2E 04         [24] 3913 	cjne	r7,#0x2e,00106$
                                   3914 ;	fat.h:522: return FAT16_ROOTENTRY_DOT; //this is the entry to self
      0011D0 75 82 2E         [24] 3915 	mov	dpl,#0x2e
      0011D3 22               [24] 3916 	ret
      0011D4                       3917 00106$:
                                   3918 ;	fat.h:527: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_HIDDEN ||
      0011D4 90 00 6A         [24] 3919 	mov	dptr,#___global_rootEntry
      0011D7 75 F0 40         [24] 3920 	mov	b,#0x40
      0011DA 12 0A 7E         [24] 3921 	lcall	_HELPER_rootentry_type
      0011DD AF 82            [24] 3922 	mov	r7,dpl
      0011DF BF 01 02         [24] 3923 	cjne	r7,#0x01,00141$
      0011E2 80 1E            [24] 3924 	sjmp	00101$
      0011E4                       3925 00141$:
                                   3926 ;	fat.h:528: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_SYSTEM ||
      0011E4 90 00 6A         [24] 3927 	mov	dptr,#___global_rootEntry
      0011E7 75 F0 40         [24] 3928 	mov	b,#0x40
      0011EA 12 0A 7E         [24] 3929 	lcall	_HELPER_rootentry_type
      0011ED AF 82            [24] 3930 	mov	r7,dpl
      0011EF BF 02 02         [24] 3931 	cjne	r7,#0x02,00142$
      0011F2 80 0E            [24] 3932 	sjmp	00101$
      0011F4                       3933 00142$:
                                   3934 ;	fat.h:529: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_VOLUME
      0011F4 90 00 6A         [24] 3935 	mov	dptr,#___global_rootEntry
      0011F7 75 F0 40         [24] 3936 	mov	b,#0x40
      0011FA 12 0A 7E         [24] 3937 	lcall	_HELPER_rootentry_type
      0011FD AF 82            [24] 3938 	mov	r7,dpl
      0011FF BF 03 04         [24] 3939 	cjne	r7,#0x03,00110$
      001202                       3940 00101$:
                                   3941 ;	fat.h:536: return 254;
      001202 75 82 FE         [24] 3942 	mov	dpl,#0xfe
      001205 22               [24] 3943 	ret
      001206                       3944 00110$:
                                   3945 ;	fat.h:539: return 0;
      001206 75 82 00         [24] 3946 	mov	dpl,#0x00
                                   3947 ;	fat.h:540: }
      001209 22               [24] 3948 	ret
                                   3949 ;------------------------------------------------------------
                                   3950 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_READ'
                                   3951 ;------------------------------------------------------------
                                   3952 ;roote_index               Allocated to registers r6 r7 
                                   3953 ;file_validity             Allocated to registers r7 
                                   3954 ;------------------------------------------------------------
                                   3955 ;	fat.h:543: uint8_t FAT16_ROOTENTRY_READ(uint16_t roote_index)
                                   3956 ;	-----------------------------------------
                                   3957 ;	 function FAT16_ROOTENTRY_READ
                                   3958 ;	-----------------------------------------
      00120A                       3959 _FAT16_ROOTENTRY_READ:
                                   3960 ;	fat.h:553: if(FAT16_LOAD_ROOTENTRY(roote_index)) // if returns 1, then we have reached the end of the rootentry table
      00120A 12 10 80         [24] 3961 	lcall	_FAT16_LOAD_ROOTENTRY
      00120D E5 82            [12] 3962 	mov	a,dpl
      00120F 60 04            [24] 3963 	jz	00102$
                                   3964 ;	fat.h:555: return 0xff; //end of scan
      001211 75 82 FF         [24] 3965 	mov	dpl,#0xff
      001214 22               [24] 3966 	ret
      001215                       3967 00102$:
                                   3968 ;	fat.h:559: file_validity=FAT16_IS_ROOTENTRY_VALID_FILE(); //check validity
      001215 12 11 BC         [24] 3969 	lcall	_FAT16_IS_ROOTENTRY_VALID_FILE
      001218 AF 82            [24] 3970 	mov	r7,dpl
                                   3971 ;	fat.h:561: if(file_validity==255)return 0xff; //end of scan
      00121A BF FF 04         [24] 3972 	cjne	r7,#0xff,00106$
      00121D 75 82 FF         [24] 3973 	mov	dpl,#0xff
      001220 22               [24] 3974 	ret
      001221                       3975 00106$:
                                   3976 ;	fat.h:562: else if(file_validity==0)
      001221 EF               [12] 3977 	mov	a,r7
                                   3978 ;	fat.h:568: return 0;
      001222 70 03            [24] 3979 	jnz	00107$
      001224 F5 82            [12] 3980 	mov	dpl,a
      001226 22               [24] 3981 	ret
      001227                       3982 00107$:
                                   3983 ;	fat.h:571: return 1; //invalid file if context reaches here
      001227 75 82 01         [24] 3984 	mov	dpl,#0x01
                                   3985 ;	fat.h:574: }
      00122A 22               [24] 3986 	ret
                                   3987 ;------------------------------------------------------------
                                   3988 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN_RESET'
                                   3989 ;------------------------------------------------------------
                                   3990 ;	fat.h:576: void FAT16_ROOTENTRY_SCAN_RESET()
                                   3991 ;	-----------------------------------------
                                   3992 ;	 function FAT16_ROOTENTRY_SCAN_RESET
                                   3993 ;	-----------------------------------------
      00122B                       3994 _FAT16_ROOTENTRY_SCAN_RESET:
                                   3995 ;	fat.h:578: __global_rootEntry.entry_index=0xffff; // in FAT16, maximum number of root entries can never reach 0xffff.
      00122B 78 7C            [12] 3996 	mov	r0,#(___global_rootEntry + 0x0012)
      00122D 76 FF            [12] 3997 	mov	@r0,#0xff
      00122F 08               [12] 3998 	inc	r0
      001230 76 FF            [12] 3999 	mov	@r0,#0xff
                                   4000 ;	fat.h:584: __global_rootEntry.attributes |= 1<<FILETYPE_SYSTEM;
      001232 78 75            [12] 4001 	mov	r0,#(___global_rootEntry + 0x000b)
      001234 86 07            [24] 4002 	mov	ar7,@r0
      001236 74 04            [12] 4003 	mov	a,#0x04
      001238 4F               [12] 4004 	orl	a,r7
      001239 78 75            [12] 4005 	mov	r0,#(___global_rootEntry + 0x000b)
      00123B F6               [12] 4006 	mov	@r0,a
                                   4007 ;	fat.h:585: }
      00123C 22               [24] 4008 	ret
                                   4009 ;------------------------------------------------------------
                                   4010 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN'
                                   4011 ;------------------------------------------------------------
                                   4012 ;validity                  Allocated to registers r7 
                                   4013 ;------------------------------------------------------------
                                   4014 ;	fat.h:587: uint8_t FAT16_ROOTENTRY_SCAN() __reentrant
                                   4015 ;	-----------------------------------------
                                   4016 ;	 function FAT16_ROOTENTRY_SCAN
                                   4017 ;	-----------------------------------------
      00123D                       4018 _FAT16_ROOTENTRY_SCAN:
                                   4019 ;	fat.h:592: while(1)
      00123D                       4020 00110$:
                                   4021 ;	fat.h:600: validity=FAT16_ROOTENTRY_READ(__global_rootEntry.entry_index+1); //read the next entry
      00123D 78 7C            [12] 4022 	mov	r0,#(___global_rootEntry + 0x0012)
      00123F 86 06            [24] 4023 	mov	ar6,@r0
      001241 08               [12] 4024 	inc	r0
      001242 86 07            [24] 4025 	mov	ar7,@r0
      001244 8E 82            [24] 4026 	mov	dpl,r6
      001246 8F 83            [24] 4027 	mov	dph,r7
      001248 A3               [24] 4028 	inc	dptr
      001249 12 12 0A         [24] 4029 	lcall	_FAT16_ROOTENTRY_READ
      00124C AF 82            [24] 4030 	mov	r7,dpl
                                   4031 ;	fat.h:602: if ( validity == 255 )
      00124E BF FF 04         [24] 4032 	cjne	r7,#0xff,00107$
                                   4033 ;	fat.h:608: return 255; //end scan
      001251 75 82 FF         [24] 4034 	mov	dpl,#0xff
      001254 22               [24] 4035 	ret
      001255                       4036 00107$:
                                   4037 ;	fat.h:610: else if (validity == 1) 
      001255 BF 01 02         [24] 4038 	cjne	r7,#0x01,00132$
      001258 80 E3            [24] 4039 	sjmp	00110$
      00125A                       4040 00132$:
                                   4041 ;	fat.h:618: else if(validity == 0)
      00125A EF               [12] 4042 	mov	a,r7
                                   4043 ;	fat.h:625: return 0; // found a valid file,break out of the loop
      00125B 70 E0            [24] 4044 	jnz	00110$
      00125D F5 82            [12] 4045 	mov	dpl,a
                                   4046 ;	fat.h:632: }
      00125F 22               [24] 4047 	ret
                                   4048 ;------------------------------------------------------------
                                   4049 ;Allocation info for local variables in function 'FAT16_FILE_OPEN'
                                   4050 ;------------------------------------------------------------
                                   4051 ;filename                  Allocated to registers r5 r6 r7 
                                   4052 ;filename83                Allocated to stack - _bp +1
                                   4053 ;------------------------------------------------------------
                                   4054 ;	fat.h:634: uint8_t FAT16_FILE_OPEN(char *filename) __reentrant
                                   4055 ;	-----------------------------------------
                                   4056 ;	 function FAT16_FILE_OPEN
                                   4057 ;	-----------------------------------------
      001260                       4058 _FAT16_FILE_OPEN:
      001260 C0 3C            [24] 4059 	push	_bp
      001262 E5 81            [12] 4060 	mov	a,sp
      001264 F5 3C            [12] 4061 	mov	_bp,a
      001266 24 0C            [12] 4062 	add	a,#0x0c
      001268 F5 81            [12] 4063 	mov	sp,a
      00126A AD 82            [24] 4064 	mov	r5,dpl
      00126C AE 83            [24] 4065 	mov	r6,dph
      00126E AF F0            [24] 4066 	mov	r7,b
                                   4067 ;	fat.h:640: if(HELPER_filename_to_8dot3filename(filename,filename83)) 
      001270 AC 3C            [24] 4068 	mov	r4,_bp
      001272 0C               [12] 4069 	inc	r4
      001273 8C 18            [24] 4070 	mov	_HELPER_filename_to_8dot3filename_PARM_2,r4
      001275 75 19 00         [24] 4071 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 1),#0x00
      001278 75 1A 40         [24] 4072 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 2),#0x40
      00127B 8D 82            [24] 4073 	mov	dpl,r5
      00127D 8E 83            [24] 4074 	mov	dph,r6
      00127F 8F F0            [24] 4075 	mov	b,r7
      001281 C0 04            [24] 4076 	push	ar4
      001283 12 0B 37         [24] 4077 	lcall	_HELPER_filename_to_8dot3filename
      001286 E5 82            [12] 4078 	mov	a,dpl
      001288 D0 04            [24] 4079 	pop	ar4
      00128A 60 05            [24] 4080 	jz	00102$
                                   4081 ;	fat.h:645: return 1; //invalid filename
      00128C 75 82 01         [24] 4082 	mov	dpl,#0x01
      00128F 80 61            [24] 4083 	sjmp	00109$
      001291                       4084 00102$:
                                   4085 ;	fat.h:648: FAT16_ROOTENTRY_SCAN_RESET();
      001291 C0 04            [24] 4086 	push	ar4
      001293 12 12 2B         [24] 4087 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
      001296 D0 04            [24] 4088 	pop	ar4
                                   4089 ;	fat.h:649: while(FAT16_ROOTENTRY_SCAN()==0)
      001298 8C 07            [24] 4090 	mov	ar7,r4
      00129A 74 08            [12] 4091 	mov	a,#0x08
      00129C 2C               [12] 4092 	add	a,r4
      00129D FE               [12] 4093 	mov	r6,a
      00129E                       4094 00106$:
      00129E C0 07            [24] 4095 	push	ar7
      0012A0 C0 06            [24] 4096 	push	ar6
      0012A2 12 12 3D         [24] 4097 	lcall	_FAT16_ROOTENTRY_SCAN
      0012A5 E5 82            [12] 4098 	mov	a,dpl
      0012A7 D0 06            [24] 4099 	pop	ar6
      0012A9 D0 07            [24] 4100 	pop	ar7
                                   4101 ;	fat.h:651: if( HELPER_strncmp(__global_rootEntry.name,filename83,8)==0 && 
      0012AB 70 42            [24] 4102 	jnz	00108$
      0012AD 8F 3D            [24] 4103 	mov	_HELPER_strncmp_PARM_2,r7
      0012AF F5 3E            [12] 4104 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      0012B1 75 3F 40         [24] 4105 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      0012B4 75 40 08         [24] 4106 	mov	_HELPER_strncmp_PARM_3,#0x08
      0012B7 90 00 6A         [24] 4107 	mov	dptr,#___global_rootEntry
      0012BA 75 F0 40         [24] 4108 	mov	b,#0x40
      0012BD C0 07            [24] 4109 	push	ar7
      0012BF C0 06            [24] 4110 	push	ar6
      0012C1 12 0A 07         [24] 4111 	lcall	_HELPER_strncmp
      0012C4 E5 82            [12] 4112 	mov	a,dpl
      0012C6 D0 06            [24] 4113 	pop	ar6
      0012C8 D0 07            [24] 4114 	pop	ar7
                                   4115 ;	fat.h:652: HELPER_strncmp(__global_rootEntry.extension,&filename83[8],3)==0 )
      0012CA 70 D2            [24] 4116 	jnz	00106$
      0012CC 8E 3D            [24] 4117 	mov	_HELPER_strncmp_PARM_2,r6
      0012CE F5 3E            [12] 4118 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      0012D0 75 3F 40         [24] 4119 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      0012D3 75 40 03         [24] 4120 	mov	_HELPER_strncmp_PARM_3,#0x03
      0012D6 90 00 72         [24] 4121 	mov	dptr,#(___global_rootEntry + 0x0008)
      0012D9 75 F0 40         [24] 4122 	mov	b,#0x40
      0012DC C0 07            [24] 4123 	push	ar7
      0012DE C0 06            [24] 4124 	push	ar6
      0012E0 12 0A 07         [24] 4125 	lcall	_HELPER_strncmp
      0012E3 E5 82            [12] 4126 	mov	a,dpl
      0012E5 D0 06            [24] 4127 	pop	ar6
      0012E7 D0 07            [24] 4128 	pop	ar7
                                   4129 ;	fat.h:658: return 0; //file found
      0012E9 70 B3            [24] 4130 	jnz	00106$
      0012EB F5 82            [12] 4131 	mov	dpl,a
      0012ED 80 03            [24] 4132 	sjmp	00109$
      0012EF                       4133 00108$:
                                   4134 ;	fat.h:665: return 2; // file not found
      0012EF 75 82 02         [24] 4135 	mov	dpl,#0x02
      0012F2                       4136 00109$:
                                   4137 ;	fat.h:667: }
      0012F2 85 3C 81         [24] 4138 	mov	sp,_bp
      0012F5 D0 3C            [24] 4139 	pop	_bp
      0012F7 22               [24] 4140 	ret
                                   4141 ;------------------------------------------------------------
                                   4142 ;Allocation info for local variables in function 'FAT16_GET_NEXT_CLUSTER'
                                   4143 ;------------------------------------------------------------
                                   4144 ;current_cluster           Allocated to registers r6 r7 
                                   4145 ;temp                      Allocated to stack - _bp +8
                                   4146 ;sloc0                     Allocated to stack - _bp +1
                                   4147 ;sloc1                     Allocated to stack - _bp +8
                                   4148 ;sloc2                     Allocated to stack - _bp +10
                                   4149 ;sloc3                     Allocated to stack - _bp +4
                                   4150 ;------------------------------------------------------------
                                   4151 ;	fat.h:670: uint16_t FAT16_GET_NEXT_CLUSTER(uint16_t current_cluster) __reentrant
                                   4152 ;	-----------------------------------------
                                   4153 ;	 function FAT16_GET_NEXT_CLUSTER
                                   4154 ;	-----------------------------------------
      0012F8                       4155 _FAT16_GET_NEXT_CLUSTER:
      0012F8 C0 3C            [24] 4156 	push	_bp
      0012FA E5 81            [12] 4157 	mov	a,sp
      0012FC F5 3C            [12] 4158 	mov	_bp,a
      0012FE 24 09            [12] 4159 	add	a,#0x09
      001300 F5 81            [12] 4160 	mov	sp,a
      001302 AE 82            [24] 4161 	mov	r6,dpl
      001304 AF 83            [24] 4162 	mov	r7,dph
                                   4163 ;	fat.h:679: SDread(__global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps, (current_cluster*2) % __global_vbr.bps, 2, temp);
      001306 E5 3C            [12] 4164 	mov	a,_bp
      001308 24 08            [12] 4165 	add	a,#0x08
      00130A F9               [12] 4166 	mov	r1,a
      00130B A8 3C            [24] 4167 	mov	r0,_bp
      00130D 08               [12] 4168 	inc	r0
      00130E A6 01            [24] 4169 	mov	@r0,ar1
      001310 08               [12] 4170 	inc	r0
      001311 76 00            [12] 4171 	mov	@r0,#0x00
      001313 08               [12] 4172 	inc	r0
      001314 76 40            [12] 4173 	mov	@r0,#0x40
      001316 EE               [12] 4174 	mov	a,r6
      001317 2E               [12] 4175 	add	a,r6
      001318 FE               [12] 4176 	mov	r6,a
      001319 EF               [12] 4177 	mov	a,r7
      00131A 33               [12] 4178 	rlc	a
      00131B FF               [12] 4179 	mov	r7,a
      00131C 78 50            [12] 4180 	mov	r0,#(___global_vbr + 0x0006)
      00131E 86 05            [24] 4181 	mov	ar5,@r0
      001320 08               [12] 4182 	inc	r0
      001321 86 04            [24] 4183 	mov	ar4,@r0
      001323 8D 3D            [24] 4184 	mov	__moduint_PARM_2,r5
      001325 8C 3E            [24] 4185 	mov	(__moduint_PARM_2 + 1),r4
      001327 8E 82            [24] 4186 	mov	dpl,r6
      001329 8F 83            [24] 4187 	mov	dph,r7
      00132B C0 07            [24] 4188 	push	ar7
      00132D C0 06            [24] 4189 	push	ar6
      00132F C0 05            [24] 4190 	push	ar5
      001331 C0 04            [24] 4191 	push	ar4
      001333 C0 01            [24] 4192 	push	ar1
      001335 12 1C BC         [24] 4193 	lcall	__moduint
      001338 AB 82            [24] 4194 	mov	r3,dpl
      00133A AA 83            [24] 4195 	mov	r2,dph
      00133C D0 01            [24] 4196 	pop	ar1
      00133E D0 04            [24] 4197 	pop	ar4
      001340 D0 05            [24] 4198 	pop	ar5
      001342 D0 06            [24] 4199 	pop	ar6
      001344 D0 07            [24] 4200 	pop	ar7
      001346 E5 3C            [12] 4201 	mov	a,_bp
      001348 24 04            [12] 4202 	add	a,#0x04
      00134A F8               [12] 4203 	mov	r0,a
      00134B C0 01            [24] 4204 	push	ar1
      00134D 79 5D            [12] 4205 	mov	r1,#(___global_vbr + 0x0013)
      00134F E7               [12] 4206 	mov	a,@r1
      001350 F6               [12] 4207 	mov	@r0,a
      001351 09               [12] 4208 	inc	r1
      001352 E7               [12] 4209 	mov	a,@r1
      001353 08               [12] 4210 	inc	r0
      001354 F6               [12] 4211 	mov	@r0,a
      001355 09               [12] 4212 	inc	r1
      001356 E7               [12] 4213 	mov	a,@r1
      001357 08               [12] 4214 	inc	r0
      001358 F6               [12] 4215 	mov	@r0,a
      001359 09               [12] 4216 	inc	r1
      00135A E7               [12] 4217 	mov	a,@r1
      00135B 08               [12] 4218 	inc	r0
      00135C F6               [12] 4219 	mov	@r0,a
      00135D D0 01            [24] 4220 	pop	ar1
      00135F 8D 3D            [24] 4221 	mov	__divuint_PARM_2,r5
      001361 8C 3E            [24] 4222 	mov	(__divuint_PARM_2 + 1),r4
      001363 8E 82            [24] 4223 	mov	dpl,r6
      001365 8F 83            [24] 4224 	mov	dph,r7
      001367 C0 03            [24] 4225 	push	ar3
      001369 C0 02            [24] 4226 	push	ar2
      00136B C0 01            [24] 4227 	push	ar1
      00136D 12 1B 73         [24] 4228 	lcall	__divuint
      001370 AE 82            [24] 4229 	mov	r6,dpl
      001372 AF 83            [24] 4230 	mov	r7,dph
      001374 D0 01            [24] 4231 	pop	ar1
      001376 D0 02            [24] 4232 	pop	ar2
      001378 D0 03            [24] 4233 	pop	ar3
      00137A 8E 04            [24] 4234 	mov	ar4,r6
      00137C 8F 05            [24] 4235 	mov	ar5,r7
      00137E E4               [12] 4236 	clr	a
      00137F FE               [12] 4237 	mov	r6,a
      001380 FF               [12] 4238 	mov	r7,a
      001381 E5 3C            [12] 4239 	mov	a,_bp
      001383 24 04            [12] 4240 	add	a,#0x04
      001385 F8               [12] 4241 	mov	r0,a
      001386 EC               [12] 4242 	mov	a,r4
      001387 26               [12] 4243 	add	a,@r0
      001388 FC               [12] 4244 	mov	r4,a
      001389 ED               [12] 4245 	mov	a,r5
      00138A 08               [12] 4246 	inc	r0
      00138B 36               [12] 4247 	addc	a,@r0
      00138C FD               [12] 4248 	mov	r5,a
      00138D EE               [12] 4249 	mov	a,r6
      00138E 08               [12] 4250 	inc	r0
      00138F 36               [12] 4251 	addc	a,@r0
      001390 FE               [12] 4252 	mov	r6,a
      001391 EF               [12] 4253 	mov	a,r7
      001392 08               [12] 4254 	inc	r0
      001393 36               [12] 4255 	addc	a,@r0
      001394 FF               [12] 4256 	mov	r7,a
      001395 C0 01            [24] 4257 	push	ar1
      001397 A8 3C            [24] 4258 	mov	r0,_bp
      001399 08               [12] 4259 	inc	r0
      00139A E6               [12] 4260 	mov	a,@r0
      00139B C0 E0            [24] 4261 	push	acc
      00139D 08               [12] 4262 	inc	r0
      00139E E6               [12] 4263 	mov	a,@r0
      00139F C0 E0            [24] 4264 	push	acc
      0013A1 08               [12] 4265 	inc	r0
      0013A2 E6               [12] 4266 	mov	a,@r0
      0013A3 C0 E0            [24] 4267 	push	acc
      0013A5 74 02            [12] 4268 	mov	a,#0x02
      0013A7 C0 E0            [24] 4269 	push	acc
      0013A9 E4               [12] 4270 	clr	a
      0013AA C0 E0            [24] 4271 	push	acc
      0013AC C0 03            [24] 4272 	push	ar3
      0013AE C0 02            [24] 4273 	push	ar2
      0013B0 8C 82            [24] 4274 	mov	dpl,r4
      0013B2 8D 83            [24] 4275 	mov	dph,r5
      0013B4 8E F0            [24] 4276 	mov	b,r6
      0013B6 EF               [12] 4277 	mov	a,r7
      0013B7 12 07 AF         [24] 4278 	lcall	_SDread
      0013BA E5 81            [12] 4279 	mov	a,sp
      0013BC 24 F9            [12] 4280 	add	a,#0xf9
      0013BE F5 81            [12] 4281 	mov	sp,a
      0013C0 D0 01            [24] 4282 	pop	ar1
                                   4283 ;	fat.h:680: return (uint16_t)temp[1] << 8 | temp[0]; 
      0013C2 E9               [12] 4284 	mov	a,r1
      0013C3 04               [12] 4285 	inc	a
      0013C4 F8               [12] 4286 	mov	r0,a
      0013C5 86 07            [24] 4287 	mov	ar7,@r0
      0013C7 8F 06            [24] 4288 	mov	ar6,r7
      0013C9 7F 00            [12] 4289 	mov	r7,#0x00
      0013CB 87 05            [24] 4290 	mov	ar5,@r1
      0013CD 7C 00            [12] 4291 	mov	r4,#0x00
      0013CF ED               [12] 4292 	mov	a,r5
      0013D0 4F               [12] 4293 	orl	a,r7
      0013D1 F5 82            [12] 4294 	mov	dpl,a
      0013D3 EC               [12] 4295 	mov	a,r4
      0013D4 4E               [12] 4296 	orl	a,r6
      0013D5 F5 83            [12] 4297 	mov	dph,a
                                   4298 ;	fat.h:686: }
      0013D7 85 3C 81         [24] 4299 	mov	sp,_bp
      0013DA D0 3C            [24] 4300 	pop	_bp
      0013DC 22               [24] 4301 	ret
                                   4302 ;------------------------------------------------------------
                                   4303 ;Allocation info for local variables in function 'FAT16_FILE_READ'
                                   4304 ;------------------------------------------------------------
                                   4305 ;dst                       Allocated to stack - _bp -5
                                   4306 ;nbytes                    Allocated to stack - _bp +1
                                   4307 ;current_cluster           Allocated to registers r7 r6 
                                   4308 ;bytes_read_in_current_cluster Allocated to stack - _bp +10
                                   4309 ;bytes_read_in_current_sector Allocated to stack - _bp +12
                                   4310 ;current_sector            Allocated to stack - _bp +14
                                   4311 ;sloc0                     Allocated to stack - _bp +2
                                   4312 ;sloc1                     Allocated to stack - _bp +6
                                   4313 ;------------------------------------------------------------
                                   4314 ;	fat.h:707: uint8_t FAT16_FILE_READ(uint8_t nbytes, uint8_t *dst) __reentrant
                                   4315 ;	-----------------------------------------
                                   4316 ;	 function FAT16_FILE_READ
                                   4317 ;	-----------------------------------------
      0013DD                       4318 _FAT16_FILE_READ:
      0013DD C0 3C            [24] 4319 	push	_bp
      0013DF 85 81 3C         [24] 4320 	mov	_bp,sp
      0013E2 C0 82            [24] 4321 	push	dpl
      0013E4 E5 81            [12] 4322 	mov	a,sp
      0013E6 24 10            [12] 4323 	add	a,#0x10
      0013E8 F5 81            [12] 4324 	mov	sp,a
                                   4325 ;	fat.h:716: if(nbytes==0)
      0013EA A8 3C            [24] 4326 	mov	r0,_bp
      0013EC 08               [12] 4327 	inc	r0
      0013ED E6               [12] 4328 	mov	a,@r0
                                   4329 ;	fat.h:718: return 0; //read 0 bytes
      0013EE 70 05            [24] 4330 	jnz	00102$
      0013F0 F5 82            [12] 4331 	mov	dpl,a
      0013F2 02 16 40         [24] 4332 	ljmp	00113$
      0013F5                       4333 00102$:
                                   4334 ;	fat.h:721: if(nbytes & (nbytes-1))
      0013F5 A8 3C            [24] 4335 	mov	r0,_bp
      0013F7 08               [12] 4336 	inc	r0
      0013F8 86 05            [24] 4337 	mov	ar5,@r0
      0013FA 7E 00            [12] 4338 	mov	r6,#0x00
      0013FC ED               [12] 4339 	mov	a,r5
      0013FD 24 FF            [12] 4340 	add	a,#0xff
      0013FF FB               [12] 4341 	mov	r3,a
      001400 EE               [12] 4342 	mov	a,r6
      001401 34 FF            [12] 4343 	addc	a,#0xff
      001403 FC               [12] 4344 	mov	r4,a
      001404 EB               [12] 4345 	mov	a,r3
      001405 52 05            [12] 4346 	anl	ar5,a
      001407 EC               [12] 4347 	mov	a,r4
      001408 52 06            [12] 4348 	anl	ar6,a
      00140A ED               [12] 4349 	mov	a,r5
      00140B 4E               [12] 4350 	orl	a,r6
      00140C 60 06            [24] 4351 	jz	00104$
                                   4352 ;	fat.h:726: return 255; //error
      00140E 75 82 FF         [24] 4353 	mov	dpl,#0xff
      001411 02 16 40         [24] 4354 	ljmp	00113$
      001414                       4355 00104$:
                                   4356 ;	fat.h:729: if(__global_rootEntry.bytes_read == __global_rootEntry.size)
      001414 A8 3C            [24] 4357 	mov	r0,_bp
      001416 08               [12] 4358 	inc	r0
      001417 08               [12] 4359 	inc	r0
      001418 79 7E            [12] 4360 	mov	r1,#(___global_rootEntry + 0x0014)
      00141A E7               [12] 4361 	mov	a,@r1
      00141B F6               [12] 4362 	mov	@r0,a
      00141C 09               [12] 4363 	inc	r1
      00141D E7               [12] 4364 	mov	a,@r1
      00141E 08               [12] 4365 	inc	r0
      00141F F6               [12] 4366 	mov	@r0,a
      001420 09               [12] 4367 	inc	r1
      001421 E7               [12] 4368 	mov	a,@r1
      001422 08               [12] 4369 	inc	r0
      001423 F6               [12] 4370 	mov	@r0,a
      001424 09               [12] 4371 	inc	r1
      001425 E7               [12] 4372 	mov	a,@r1
      001426 08               [12] 4373 	inc	r0
      001427 F6               [12] 4374 	mov	@r0,a
      001428 78 78            [12] 4375 	mov	r0,#(___global_rootEntry + 0x000e)
      00142A 86 02            [24] 4376 	mov	ar2,@r0
      00142C 08               [12] 4377 	inc	r0
      00142D 86 05            [24] 4378 	mov	ar5,@r0
      00142F 08               [12] 4379 	inc	r0
      001430 86 06            [24] 4380 	mov	ar6,@r0
      001432 08               [12] 4381 	inc	r0
      001433 86 07            [24] 4382 	mov	ar7,@r0
      001435 A8 3C            [24] 4383 	mov	r0,_bp
      001437 08               [12] 4384 	inc	r0
      001438 08               [12] 4385 	inc	r0
      001439 E6               [12] 4386 	mov	a,@r0
      00143A B5 02 11         [24] 4387 	cjne	a,ar2,00141$
      00143D 08               [12] 4388 	inc	r0
      00143E E6               [12] 4389 	mov	a,@r0
      00143F B5 05 0C         [24] 4390 	cjne	a,ar5,00141$
      001442 08               [12] 4391 	inc	r0
      001443 E6               [12] 4392 	mov	a,@r0
      001444 B5 06 07         [24] 4393 	cjne	a,ar6,00141$
      001447 08               [12] 4394 	inc	r0
      001448 E6               [12] 4395 	mov	a,@r0
      001449 B5 07 02         [24] 4396 	cjne	a,ar7,00141$
      00144C 80 02            [24] 4397 	sjmp	00142$
      00144E                       4398 00141$:
      00144E 80 06            [24] 4399 	sjmp	00111$
      001450                       4400 00142$:
                                   4401 ;	fat.h:731: return 0; //end of file - return number of bytes read
      001450 75 82 00         [24] 4402 	mov	dpl,#0x00
      001453 02 16 40         [24] 4403 	ljmp	00113$
      001456                       4404 00111$:
                                   4405 ;	fat.h:736: bytes_read_in_current_cluster = __global_rootEntry.bytes_read % __global_vbr.bpc;
      001456 78 59            [12] 4406 	mov	r0,#(___global_vbr + 0x000f)
      001458 86 3D            [24] 4407 	mov	__modulong_PARM_2,@r0
      00145A 08               [12] 4408 	inc	r0
      00145B 86 3E            [24] 4409 	mov	(__modulong_PARM_2 + 1),@r0
      00145D 08               [12] 4410 	inc	r0
      00145E 86 3F            [24] 4411 	mov	(__modulong_PARM_2 + 2),@r0
      001460 08               [12] 4412 	inc	r0
      001461 86 40            [24] 4413 	mov	(__modulong_PARM_2 + 3),@r0
      001463 A8 3C            [24] 4414 	mov	r0,_bp
      001465 08               [12] 4415 	inc	r0
      001466 08               [12] 4416 	inc	r0
      001467 86 82            [24] 4417 	mov	dpl,@r0
      001469 08               [12] 4418 	inc	r0
      00146A 86 83            [24] 4419 	mov	dph,@r0
      00146C 08               [12] 4420 	inc	r0
      00146D 86 F0            [24] 4421 	mov	b,@r0
      00146F 08               [12] 4422 	inc	r0
      001470 E6               [12] 4423 	mov	a,@r0
      001471 12 1B 9C         [24] 4424 	lcall	__modulong
      001474 AB 82            [24] 4425 	mov	r3,dpl
      001476 AC 83            [24] 4426 	mov	r4,dph
      001478 E5 3C            [12] 4427 	mov	a,_bp
      00147A 24 0A            [12] 4428 	add	a,#0x0a
      00147C F8               [12] 4429 	mov	r0,a
      00147D A6 03            [24] 4430 	mov	@r0,ar3
      00147F 08               [12] 4431 	inc	r0
      001480 A6 04            [24] 4432 	mov	@r0,ar4
                                   4433 ;	fat.h:780: if(__global_rootEntry.bytes_read!=0 && bytes_read_in_current_cluster==0)
      001482 A8 3C            [24] 4434 	mov	r0,_bp
      001484 08               [12] 4435 	inc	r0
      001485 08               [12] 4436 	inc	r0
      001486 E6               [12] 4437 	mov	a,@r0
      001487 08               [12] 4438 	inc	r0
      001488 46               [12] 4439 	orl	a,@r0
      001489 08               [12] 4440 	inc	r0
      00148A 46               [12] 4441 	orl	a,@r0
      00148B 08               [12] 4442 	inc	r0
      00148C 46               [12] 4443 	orl	a,@r0
      00148D 60 1F            [24] 4444 	jz	00106$
      00148F E5 3C            [12] 4445 	mov	a,_bp
      001491 24 0A            [12] 4446 	add	a,#0x0a
      001493 F8               [12] 4447 	mov	r0,a
      001494 E6               [12] 4448 	mov	a,@r0
      001495 08               [12] 4449 	inc	r0
      001496 46               [12] 4450 	orl	a,@r0
      001497 70 15            [24] 4451 	jnz	00106$
                                   4452 ;	fat.h:782: __global_rootEntry.startCluster = FAT16_GET_NEXT_CLUSTER(__global_rootEntry.startCluster);
      001499 78 76            [12] 4453 	mov	r0,#(___global_rootEntry + 0x000c)
      00149B 86 82            [24] 4454 	mov	dpl,@r0
      00149D 08               [12] 4455 	inc	r0
      00149E 86 83            [24] 4456 	mov	dph,@r0
      0014A0 12 12 F8         [24] 4457 	lcall	_FAT16_GET_NEXT_CLUSTER
      0014A3 E5 82            [12] 4458 	mov	a,dpl
      0014A5 85 83 F0         [24] 4459 	mov	b,dph
      0014A8 78 76            [12] 4460 	mov	r0,#(___global_rootEntry + 0x000c)
      0014AA F6               [12] 4461 	mov	@r0,a
      0014AB 08               [12] 4462 	inc	r0
      0014AC A6 F0            [24] 4463 	mov	@r0,b
      0014AE                       4464 00106$:
                                   4465 ;	fat.h:786: current_cluster = __global_rootEntry.startCluster;
      0014AE 78 76            [12] 4466 	mov	r0,#(___global_rootEntry + 0x000c)
      0014B0 86 07            [24] 4467 	mov	ar7,@r0
      0014B2 08               [12] 4468 	inc	r0
      0014B3 86 06            [24] 4469 	mov	ar6,@r0
                                   4470 ;	fat.h:791: current_sector =    __global_vbr.addr_data_start 						//start of data
      0014B5 A8 3C            [24] 4471 	mov	r0,_bp
      0014B7 08               [12] 4472 	inc	r0
      0014B8 08               [12] 4473 	inc	r0
      0014B9 79 65            [12] 4474 	mov	r1,#(___global_vbr + 0x001b)
      0014BB E7               [12] 4475 	mov	a,@r1
      0014BC F6               [12] 4476 	mov	@r0,a
      0014BD 09               [12] 4477 	inc	r1
      0014BE E7               [12] 4478 	mov	a,@r1
      0014BF 08               [12] 4479 	inc	r0
      0014C0 F6               [12] 4480 	mov	@r0,a
      0014C1 09               [12] 4481 	inc	r1
      0014C2 E7               [12] 4482 	mov	a,@r1
      0014C3 08               [12] 4483 	inc	r0
      0014C4 F6               [12] 4484 	mov	@r0,a
      0014C5 09               [12] 4485 	inc	r1
      0014C6 E7               [12] 4486 	mov	a,@r1
      0014C7 08               [12] 4487 	inc	r0
      0014C8 F6               [12] 4488 	mov	@r0,a
                                   4489 ;	fat.h:792: + (current_cluster-2) * __global_vbr.spc 				//skip to the start of current cluster
      0014C9 EF               [12] 4490 	mov	a,r7
      0014CA 24 FE            [12] 4491 	add	a,#0xfe
      0014CC F5 82            [12] 4492 	mov	dpl,a
      0014CE EE               [12] 4493 	mov	a,r6
      0014CF 34 FF            [12] 4494 	addc	a,#0xff
      0014D1 F5 83            [12] 4495 	mov	dph,a
      0014D3 78 52            [12] 4496 	mov	r0,#(___global_vbr + 0x0008)
      0014D5 86 03            [24] 4497 	mov	ar3,@r0
      0014D7 8B 3D            [24] 4498 	mov	__mulint_PARM_2,r3
      0014D9 75 3E 00         [24] 4499 	mov	(__mulint_PARM_2 + 1),#0x00
      0014DC 12 1C 9F         [24] 4500 	lcall	__mulint
      0014DF AB 82            [24] 4501 	mov	r3,dpl
      0014E1 AF 83            [24] 4502 	mov	r7,dph
      0014E3 8F 05            [24] 4503 	mov	ar5,r7
      0014E5 7E 00            [12] 4504 	mov	r6,#0x00
      0014E7 7F 00            [12] 4505 	mov	r7,#0x00
      0014E9 A8 3C            [24] 4506 	mov	r0,_bp
      0014EB 08               [12] 4507 	inc	r0
      0014EC 08               [12] 4508 	inc	r0
      0014ED EB               [12] 4509 	mov	a,r3
      0014EE 26               [12] 4510 	add	a,@r0
      0014EF F6               [12] 4511 	mov	@r0,a
      0014F0 ED               [12] 4512 	mov	a,r5
      0014F1 08               [12] 4513 	inc	r0
      0014F2 36               [12] 4514 	addc	a,@r0
      0014F3 F6               [12] 4515 	mov	@r0,a
      0014F4 EE               [12] 4516 	mov	a,r6
      0014F5 08               [12] 4517 	inc	r0
      0014F6 36               [12] 4518 	addc	a,@r0
      0014F7 F6               [12] 4519 	mov	@r0,a
      0014F8 EF               [12] 4520 	mov	a,r7
      0014F9 08               [12] 4521 	inc	r0
      0014FA 36               [12] 4522 	addc	a,@r0
      0014FB F6               [12] 4523 	mov	@r0,a
                                   4524 ;	fat.h:793: + bytes_read_in_current_cluster/__global_vbr.bps;	//skip sectors already read in current cluster
      0014FC 78 50            [12] 4525 	mov	r0,#(___global_vbr + 0x0006)
      0014FE 86 02            [24] 4526 	mov	ar2,@r0
      001500 08               [12] 4527 	inc	r0
      001501 86 04            [24] 4528 	mov	ar4,@r0
      001503 8A 3D            [24] 4529 	mov	__divuint_PARM_2,r2
      001505 8C 3E            [24] 4530 	mov	(__divuint_PARM_2 + 1),r4
      001507 E5 3C            [12] 4531 	mov	a,_bp
      001509 24 0A            [12] 4532 	add	a,#0x0a
      00150B F8               [12] 4533 	mov	r0,a
      00150C 86 82            [24] 4534 	mov	dpl,@r0
      00150E 08               [12] 4535 	inc	r0
      00150F 86 83            [24] 4536 	mov	dph,@r0
      001511 C0 04            [24] 4537 	push	ar4
      001513 C0 02            [24] 4538 	push	ar2
      001515 12 1B 73         [24] 4539 	lcall	__divuint
      001518 AE 82            [24] 4540 	mov	r6,dpl
      00151A AF 83            [24] 4541 	mov	r7,dph
      00151C D0 02            [24] 4542 	pop	ar2
      00151E D0 04            [24] 4543 	pop	ar4
      001520 7D 00            [12] 4544 	mov	r5,#0x00
      001522 7B 00            [12] 4545 	mov	r3,#0x00
      001524 A8 3C            [24] 4546 	mov	r0,_bp
      001526 08               [12] 4547 	inc	r0
      001527 08               [12] 4548 	inc	r0
      001528 EE               [12] 4549 	mov	a,r6
      001529 26               [12] 4550 	add	a,@r0
      00152A FE               [12] 4551 	mov	r6,a
      00152B EF               [12] 4552 	mov	a,r7
      00152C 08               [12] 4553 	inc	r0
      00152D 36               [12] 4554 	addc	a,@r0
      00152E FF               [12] 4555 	mov	r7,a
      00152F ED               [12] 4556 	mov	a,r5
      001530 08               [12] 4557 	inc	r0
      001531 36               [12] 4558 	addc	a,@r0
      001532 FD               [12] 4559 	mov	r5,a
      001533 EB               [12] 4560 	mov	a,r3
      001534 08               [12] 4561 	inc	r0
      001535 36               [12] 4562 	addc	a,@r0
      001536 FB               [12] 4563 	mov	r3,a
      001537 E5 3C            [12] 4564 	mov	a,_bp
      001539 24 0E            [12] 4565 	add	a,#0x0e
      00153B F8               [12] 4566 	mov	r0,a
      00153C A6 06            [24] 4567 	mov	@r0,ar6
      00153E 08               [12] 4568 	inc	r0
      00153F A6 07            [24] 4569 	mov	@r0,ar7
      001541 08               [12] 4570 	inc	r0
      001542 A6 05            [24] 4571 	mov	@r0,ar5
      001544 08               [12] 4572 	inc	r0
      001545 A6 03            [24] 4573 	mov	@r0,ar3
                                   4574 ;	fat.h:796: bytes_read_in_current_sector = bytes_read_in_current_cluster % __global_vbr.bps;
      001547 8A 3D            [24] 4575 	mov	__moduint_PARM_2,r2
      001549 8C 3E            [24] 4576 	mov	(__moduint_PARM_2 + 1),r4
      00154B E5 3C            [12] 4577 	mov	a,_bp
      00154D 24 0A            [12] 4578 	add	a,#0x0a
      00154F F8               [12] 4579 	mov	r0,a
      001550 86 82            [24] 4580 	mov	dpl,@r0
      001552 08               [12] 4581 	inc	r0
      001553 86 83            [24] 4582 	mov	dph,@r0
      001555 12 1C BC         [24] 4583 	lcall	__moduint
      001558 C8               [12] 4584 	xch	a,r0
      001559 E5 3C            [12] 4585 	mov	a,_bp
      00155B 24 0C            [12] 4586 	add	a,#0x0c
      00155D C8               [12] 4587 	xch	a,r0
      00155E A6 82            [24] 4588 	mov	@r0,dpl
      001560 08               [12] 4589 	inc	r0
      001561 A6 83            [24] 4590 	mov	@r0,dph
                                   4591 ;	fat.h:800: if(__global_rootEntry.bytes_read + nbytes > __global_rootEntry.size )
      001563 A8 3C            [24] 4592 	mov	r0,_bp
      001565 08               [12] 4593 	inc	r0
      001566 08               [12] 4594 	inc	r0
      001567 79 7E            [12] 4595 	mov	r1,#(___global_rootEntry + 0x0014)
      001569 E7               [12] 4596 	mov	a,@r1
      00156A F6               [12] 4597 	mov	@r0,a
      00156B 09               [12] 4598 	inc	r1
      00156C E7               [12] 4599 	mov	a,@r1
      00156D 08               [12] 4600 	inc	r0
      00156E F6               [12] 4601 	mov	@r0,a
      00156F 09               [12] 4602 	inc	r1
      001570 E7               [12] 4603 	mov	a,@r1
      001571 08               [12] 4604 	inc	r0
      001572 F6               [12] 4605 	mov	@r0,a
      001573 09               [12] 4606 	inc	r1
      001574 E7               [12] 4607 	mov	a,@r1
      001575 08               [12] 4608 	inc	r0
      001576 F6               [12] 4609 	mov	@r0,a
      001577 A8 3C            [24] 4610 	mov	r0,_bp
      001579 08               [12] 4611 	inc	r0
      00157A 86 03            [24] 4612 	mov	ar3,@r0
      00157C 7D 00            [12] 4613 	mov	r5,#0x00
      00157E 7E 00            [12] 4614 	mov	r6,#0x00
      001580 7F 00            [12] 4615 	mov	r7,#0x00
      001582 A8 3C            [24] 4616 	mov	r0,_bp
      001584 08               [12] 4617 	inc	r0
      001585 08               [12] 4618 	inc	r0
      001586 EB               [12] 4619 	mov	a,r3
      001587 26               [12] 4620 	add	a,@r0
      001588 FB               [12] 4621 	mov	r3,a
      001589 ED               [12] 4622 	mov	a,r5
      00158A 08               [12] 4623 	inc	r0
      00158B 36               [12] 4624 	addc	a,@r0
      00158C FD               [12] 4625 	mov	r5,a
      00158D EE               [12] 4626 	mov	a,r6
      00158E 08               [12] 4627 	inc	r0
      00158F 36               [12] 4628 	addc	a,@r0
      001590 FE               [12] 4629 	mov	r6,a
      001591 EF               [12] 4630 	mov	a,r7
      001592 08               [12] 4631 	inc	r0
      001593 36               [12] 4632 	addc	a,@r0
      001594 FF               [12] 4633 	mov	r7,a
      001595 E5 3C            [12] 4634 	mov	a,_bp
      001597 24 06            [12] 4635 	add	a,#0x06
      001599 F8               [12] 4636 	mov	r0,a
      00159A 79 78            [12] 4637 	mov	r1,#(___global_rootEntry + 0x000e)
      00159C E7               [12] 4638 	mov	a,@r1
      00159D F6               [12] 4639 	mov	@r0,a
      00159E 09               [12] 4640 	inc	r1
      00159F E7               [12] 4641 	mov	a,@r1
      0015A0 08               [12] 4642 	inc	r0
      0015A1 F6               [12] 4643 	mov	@r0,a
      0015A2 09               [12] 4644 	inc	r1
      0015A3 E7               [12] 4645 	mov	a,@r1
      0015A4 08               [12] 4646 	inc	r0
      0015A5 F6               [12] 4647 	mov	@r0,a
      0015A6 09               [12] 4648 	inc	r1
      0015A7 E7               [12] 4649 	mov	a,@r1
      0015A8 08               [12] 4650 	inc	r0
      0015A9 F6               [12] 4651 	mov	@r0,a
      0015AA E5 3C            [12] 4652 	mov	a,_bp
      0015AC 24 06            [12] 4653 	add	a,#0x06
      0015AE F8               [12] 4654 	mov	r0,a
      0015AF C3               [12] 4655 	clr	c
      0015B0 E6               [12] 4656 	mov	a,@r0
      0015B1 9B               [12] 4657 	subb	a,r3
      0015B2 08               [12] 4658 	inc	r0
      0015B3 E6               [12] 4659 	mov	a,@r0
      0015B4 9D               [12] 4660 	subb	a,r5
      0015B5 08               [12] 4661 	inc	r0
      0015B6 E6               [12] 4662 	mov	a,@r0
      0015B7 9E               [12] 4663 	subb	a,r6
      0015B8 08               [12] 4664 	inc	r0
      0015B9 E6               [12] 4665 	mov	a,@r0
      0015BA 9F               [12] 4666 	subb	a,r7
      0015BB 50 14            [24] 4667 	jnc	00109$
                                   4668 ;	fat.h:802: nbytes = __global_rootEntry.size - __global_rootEntry.bytes_read;//;
      0015BD E5 3C            [12] 4669 	mov	a,_bp
      0015BF 24 06            [12] 4670 	add	a,#0x06
      0015C1 F8               [12] 4671 	mov	r0,a
      0015C2 86 07            [24] 4672 	mov	ar7,@r0
      0015C4 A8 3C            [24] 4673 	mov	r0,_bp
      0015C6 08               [12] 4674 	inc	r0
      0015C7 08               [12] 4675 	inc	r0
      0015C8 86 02            [24] 4676 	mov	ar2,@r0
      0015CA A8 3C            [24] 4677 	mov	r0,_bp
      0015CC 08               [12] 4678 	inc	r0
      0015CD EF               [12] 4679 	mov	a,r7
      0015CE C3               [12] 4680 	clr	c
      0015CF 9A               [12] 4681 	subb	a,r2
      0015D0 F6               [12] 4682 	mov	@r0,a
      0015D1                       4683 00109$:
                                   4684 ;	fat.h:821: __global_rootEntry.bytes_read += nbytes;
      0015D1 A8 3C            [24] 4685 	mov	r0,_bp
      0015D3 08               [12] 4686 	inc	r0
      0015D4 86 04            [24] 4687 	mov	ar4,@r0
      0015D6 7D 00            [12] 4688 	mov	r5,#0x00
      0015D8 7E 00            [12] 4689 	mov	r6,#0x00
      0015DA 7F 00            [12] 4690 	mov	r7,#0x00
      0015DC A8 3C            [24] 4691 	mov	r0,_bp
      0015DE 08               [12] 4692 	inc	r0
      0015DF 08               [12] 4693 	inc	r0
      0015E0 EC               [12] 4694 	mov	a,r4
      0015E1 26               [12] 4695 	add	a,@r0
      0015E2 FC               [12] 4696 	mov	r4,a
      0015E3 ED               [12] 4697 	mov	a,r5
      0015E4 08               [12] 4698 	inc	r0
      0015E5 36               [12] 4699 	addc	a,@r0
      0015E6 FD               [12] 4700 	mov	r5,a
      0015E7 EE               [12] 4701 	mov	a,r6
      0015E8 08               [12] 4702 	inc	r0
      0015E9 36               [12] 4703 	addc	a,@r0
      0015EA FE               [12] 4704 	mov	r6,a
      0015EB EF               [12] 4705 	mov	a,r7
      0015EC 08               [12] 4706 	inc	r0
      0015ED 36               [12] 4707 	addc	a,@r0
      0015EE FF               [12] 4708 	mov	r7,a
      0015EF 78 7E            [12] 4709 	mov	r0,#(___global_rootEntry + 0x0014)
      0015F1 A6 04            [24] 4710 	mov	@r0,ar4
      0015F3 08               [12] 4711 	inc	r0
      0015F4 A6 05            [24] 4712 	mov	@r0,ar5
      0015F6 08               [12] 4713 	inc	r0
      0015F7 A6 06            [24] 4714 	mov	@r0,ar6
      0015F9 08               [12] 4715 	inc	r0
      0015FA A6 07            [24] 4716 	mov	@r0,ar7
                                   4717 ;	fat.h:824: SDread(current_sector,bytes_read_in_current_sector,nbytes,dst);
      0015FC A8 3C            [24] 4718 	mov	r0,_bp
      0015FE 08               [12] 4719 	inc	r0
      0015FF 86 06            [24] 4720 	mov	ar6,@r0
      001601 7F 00            [12] 4721 	mov	r7,#0x00
      001603 E5 3C            [12] 4722 	mov	a,_bp
      001605 24 FB            [12] 4723 	add	a,#0xfb
      001607 F8               [12] 4724 	mov	r0,a
      001608 E6               [12] 4725 	mov	a,@r0
      001609 C0 E0            [24] 4726 	push	acc
      00160B 08               [12] 4727 	inc	r0
      00160C E6               [12] 4728 	mov	a,@r0
      00160D C0 E0            [24] 4729 	push	acc
      00160F 08               [12] 4730 	inc	r0
      001610 E6               [12] 4731 	mov	a,@r0
      001611 C0 E0            [24] 4732 	push	acc
      001613 C0 06            [24] 4733 	push	ar6
      001615 C0 07            [24] 4734 	push	ar7
      001617 E5 3C            [12] 4735 	mov	a,_bp
      001619 24 0C            [12] 4736 	add	a,#0x0c
      00161B F8               [12] 4737 	mov	r0,a
      00161C E6               [12] 4738 	mov	a,@r0
      00161D C0 E0            [24] 4739 	push	acc
      00161F 08               [12] 4740 	inc	r0
      001620 E6               [12] 4741 	mov	a,@r0
      001621 C0 E0            [24] 4742 	push	acc
      001623 E5 3C            [12] 4743 	mov	a,_bp
      001625 24 0E            [12] 4744 	add	a,#0x0e
      001627 F8               [12] 4745 	mov	r0,a
      001628 86 82            [24] 4746 	mov	dpl,@r0
      00162A 08               [12] 4747 	inc	r0
      00162B 86 83            [24] 4748 	mov	dph,@r0
      00162D 08               [12] 4749 	inc	r0
      00162E 86 F0            [24] 4750 	mov	b,@r0
      001630 08               [12] 4751 	inc	r0
      001631 E6               [12] 4752 	mov	a,@r0
      001632 12 07 AF         [24] 4753 	lcall	_SDread
      001635 E5 81            [12] 4754 	mov	a,sp
      001637 24 F9            [12] 4755 	add	a,#0xf9
      001639 F5 81            [12] 4756 	mov	sp,a
                                   4757 ;	fat.h:829: return nbytes;
      00163B A8 3C            [24] 4758 	mov	r0,_bp
      00163D 08               [12] 4759 	inc	r0
      00163E 86 82            [24] 4760 	mov	dpl,@r0
      001640                       4761 00113$:
                                   4762 ;	fat.h:831: }
      001640 85 3C 81         [24] 4763 	mov	sp,_bp
      001643 D0 3C            [24] 4764 	pop	_bp
      001645 22               [24] 4765 	ret
                                   4766 ;------------------------------------------------------------
                                   4767 ;Allocation info for local variables in function 'FAT16_FILE_CAT'
                                   4768 ;------------------------------------------------------------
                                   4769 ;filename                  Allocated to registers r5 r6 r7 
                                   4770 ;temp                      Allocated to stack - _bp +1
                                   4771 ;resp                      Allocated to registers r6 
                                   4772 ;i                         Allocated to registers r5 
                                   4773 ;------------------------------------------------------------
                                   4774 ;	fat.h:833: void FAT16_FILE_CAT(uint8_t *filename) __reentrant
                                   4775 ;	-----------------------------------------
                                   4776 ;	 function FAT16_FILE_CAT
                                   4777 ;	-----------------------------------------
      001646                       4778 _FAT16_FILE_CAT:
      001646 C0 3C            [24] 4779 	push	_bp
      001648 E5 81            [12] 4780 	mov	a,sp
      00164A F5 3C            [12] 4781 	mov	_bp,a
      00164C 24 08            [12] 4782 	add	a,#0x08
      00164E F5 81            [12] 4783 	mov	sp,a
                                   4784 ;	fat.h:840: if(FAT16_FILE_OPEN(filename))
      001650 12 12 60         [24] 4785 	lcall	_FAT16_FILE_OPEN
      001653 E5 82            [12] 4786 	mov	a,dpl
      001655 60 0B            [24] 4787 	jz	00115$
                                   4788 ;	fat.h:842: UartPrint("FILE NOT FOUND\n.");
      001657 90 1E 4A         [24] 4789 	mov	dptr,#___str_7
      00165A 75 F0 80         [24] 4790 	mov	b,#0x80
      00165D 12 01 EC         [24] 4791 	lcall	_UartPrint
                                   4792 ;	fat.h:843: return;
                                   4793 ;	fat.h:846: do
      001660 80 42            [24] 4794 	sjmp	00110$
      001662                       4795 00115$:
      001662 AF 3C            [24] 4796 	mov	r7,_bp
      001664 0F               [12] 4797 	inc	r7
      001665                       4798 00104$:
                                   4799 ;	fat.h:848: resp=FAT16_FILE_READ(FILE_CAT_BUFFER_SIZE,temp);
      001665 8F 04            [24] 4800 	mov	ar4,r7
      001667 7D 00            [12] 4801 	mov	r5,#0x00
      001669 7E 40            [12] 4802 	mov	r6,#0x40
      00166B C0 07            [24] 4803 	push	ar7
      00166D C0 04            [24] 4804 	push	ar4
      00166F C0 05            [24] 4805 	push	ar5
      001671 C0 06            [24] 4806 	push	ar6
      001673 75 82 08         [24] 4807 	mov	dpl,#0x08
      001676 12 13 DD         [24] 4808 	lcall	_FAT16_FILE_READ
      001679 AE 82            [24] 4809 	mov	r6,dpl
      00167B 15 81            [12] 4810 	dec	sp
      00167D 15 81            [12] 4811 	dec	sp
      00167F 15 81            [12] 4812 	dec	sp
      001681 D0 07            [24] 4813 	pop	ar7
                                   4814 ;	fat.h:849: for(uint8_t i=0;i<resp;i++) UartWrite(temp[i]);
      001683 7D 00            [12] 4815 	mov	r5,#0x00
      001685                       4816 00108$:
      001685 C3               [12] 4817 	clr	c
      001686 ED               [12] 4818 	mov	a,r5
      001687 9E               [12] 4819 	subb	a,r6
      001688 50 17            [24] 4820 	jnc	00105$
      00168A ED               [12] 4821 	mov	a,r5
      00168B 2F               [12] 4822 	add	a,r7
      00168C F9               [12] 4823 	mov	r1,a
      00168D 87 82            [24] 4824 	mov	dpl,@r1
      00168F C0 07            [24] 4825 	push	ar7
      001691 C0 06            [24] 4826 	push	ar6
      001693 C0 05            [24] 4827 	push	ar5
      001695 12 01 66         [24] 4828 	lcall	_UartWrite
      001698 D0 05            [24] 4829 	pop	ar5
      00169A D0 06            [24] 4830 	pop	ar6
      00169C D0 07            [24] 4831 	pop	ar7
      00169E 0D               [12] 4832 	inc	r5
      00169F 80 E4            [24] 4833 	sjmp	00108$
      0016A1                       4834 00105$:
                                   4835 ;	fat.h:852: } while (resp!=0);
      0016A1 EE               [12] 4836 	mov	a,r6
      0016A2 70 C1            [24] 4837 	jnz	00104$
                                   4838 ;	fat.h:854: return;
      0016A4                       4839 00110$:
                                   4840 ;	fat.h:856: }
      0016A4 85 3C 81         [24] 4841 	mov	sp,_bp
      0016A7 D0 3C            [24] 4842 	pop	_bp
      0016A9 22               [24] 4843 	ret
                                   4844 ;------------------------------------------------------------
                                   4845 ;Allocation info for local variables in function 'SL_disable_write_protection'
                                   4846 ;------------------------------------------------------------
                                   4847 ;xram_addr                 Allocated to registers 
                                   4848 ;------------------------------------------------------------
                                   4849 ;	serialloader.h:17: void SL_disable_write_protection()
                                   4850 ;	-----------------------------------------
                                   4851 ;	 function SL_disable_write_protection
                                   4852 ;	-----------------------------------------
      0016AA                       4853 _SL_disable_write_protection:
                                   4854 ;	serialloader.h:22: *(xram_addr) = 0xAA;
      0016AA 90 15 55         [24] 4855 	mov	dptr,#0x1555
      0016AD 74 AA            [12] 4856 	mov	a,#0xaa
      0016AF F0               [24] 4857 	movx	@dptr,a
                                   4858 ;	serialloader.h:24: *(xram_addr) = 0x55;
      0016B0 90 0A AA         [24] 4859 	mov	dptr,#0x0aaa
      0016B3 F4               [12] 4860 	cpl	a
      0016B4 F0               [24] 4861 	movx	@dptr,a
                                   4862 ;	serialloader.h:26: *(xram_addr) = 0x80;
                                   4863 ;	serialloader.h:30: *(xram_addr) = 0xAA;
      0016B5 90 15 55         [24] 4864 	mov	dptr,#0x1555
      0016B8 74 80            [12] 4865 	mov	a,#0x80
      0016BA F0               [24] 4866 	movx	@dptr,a
      0016BB 74 AA            [12] 4867 	mov	a,#0xaa
      0016BD F0               [24] 4868 	movx	@dptr,a
                                   4869 ;	serialloader.h:32: *(xram_addr) = 0x55;
      0016BE 90 0A AA         [24] 4870 	mov	dptr,#0x0aaa
      0016C1 F4               [12] 4871 	cpl	a
      0016C2 F0               [24] 4872 	movx	@dptr,a
                                   4873 ;	serialloader.h:34: *(xram_addr) = 0x20;
      0016C3 90 15 55         [24] 4874 	mov	dptr,#0x1555
      0016C6 74 20            [12] 4875 	mov	a,#0x20
      0016C8 F0               [24] 4876 	movx	@dptr,a
                                   4877 ;	serialloader.h:36: UartWrite('D'); //ack
      0016C9 75 82 44         [24] 4878 	mov	dpl,#0x44
      0016CC 12 01 66         [24] 4879 	lcall	_UartWrite
                                   4880 ;	serialloader.h:38: EEPROM_WRITE_PROTECTION=0; //change flag
      0016CF 75 2B 00         [24] 4881 	mov	_EEPROM_WRITE_PROTECTION,#0x00
                                   4882 ;	serialloader.h:39: }
      0016D2 22               [24] 4883 	ret
                                   4884 ;------------------------------------------------------------
                                   4885 ;Allocation info for local variables in function 'SL_enable_write_protection'
                                   4886 ;------------------------------------------------------------
                                   4887 ;	serialloader.h:41: void SL_enable_write_protection()
                                   4888 ;	-----------------------------------------
                                   4889 ;	 function SL_enable_write_protection
                                   4890 ;	-----------------------------------------
      0016D3                       4891 _SL_enable_write_protection:
                                   4892 ;	serialloader.h:43: EEPROM_WRITE_PROTECTION=1; //change flag
      0016D3 75 2B 01         [24] 4893 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                   4894 ;	serialloader.h:44: UartWrite('E'); 
      0016D6 75 82 45         [24] 4895 	mov	dpl,#0x45
                                   4896 ;	serialloader.h:45: }
      0016D9 02 01 66         [24] 4897 	ljmp	_UartWrite
                                   4898 ;------------------------------------------------------------
                                   4899 ;Allocation info for local variables in function 'SL_write'
                                   4900 ;------------------------------------------------------------
                                   4901 ;data                      Allocated to registers r5 
                                   4902 ;addr                      Allocated to registers r7 r6 
                                   4903 ;xram_addr                 Allocated to registers 
                                   4904 ;------------------------------------------------------------
                                   4905 ;	serialloader.h:47: void SL_write()
                                   4906 ;	-----------------------------------------
                                   4907 ;	 function SL_write
                                   4908 ;	-----------------------------------------
      0016DC                       4909 _SL_write:
                                   4910 ;	serialloader.h:53: while(UartReadReady()==0); //wait till we rcv data
      0016DC                       4911 00101$:
      0016DC 12 01 52         [24] 4912 	lcall	_UartReadReady
      0016DF E5 82            [12] 4913 	mov	a,dpl
      0016E1 60 F9            [24] 4914 	jz	00101$
                                   4915 ;	serialloader.h:56: addr = UartRead(); //msb
      0016E3 12 01 5D         [24] 4916 	lcall	_UartRead
                                   4917 ;	serialloader.h:57: addr = addr << 8;
      0016E6 AE 82            [24] 4918 	mov	r6,dpl
      0016E8 7F 00            [12] 4919 	mov	r7,#0x00
                                   4920 ;	serialloader.h:58: addr |= UartRead(); //lsb
      0016EA C0 07            [24] 4921 	push	ar7
      0016EC C0 06            [24] 4922 	push	ar6
      0016EE 12 01 5D         [24] 4923 	lcall	_UartRead
      0016F1 AD 82            [24] 4924 	mov	r5,dpl
      0016F3 D0 06            [24] 4925 	pop	ar6
      0016F5 D0 07            [24] 4926 	pop	ar7
      0016F7 7C 00            [12] 4927 	mov	r4,#0x00
      0016F9 ED               [12] 4928 	mov	a,r5
      0016FA 42 07            [12] 4929 	orl	ar7,a
      0016FC EC               [12] 4930 	mov	a,r4
      0016FD 42 06            [12] 4931 	orl	ar6,a
                                   4932 ;	serialloader.h:60: data = UartRead(); //read data
      0016FF C0 07            [24] 4933 	push	ar7
      001701 C0 06            [24] 4934 	push	ar6
      001703 12 01 5D         [24] 4935 	lcall	_UartRead
      001706 AD 82            [24] 4936 	mov	r5,dpl
      001708 D0 06            [24] 4937 	pop	ar6
      00170A D0 07            [24] 4938 	pop	ar7
                                   4939 ;	serialloader.h:62: if(EEPROM_WRITE_PROTECTION)
      00170C E5 2B            [12] 4940 	mov	a,_EEPROM_WRITE_PROTECTION
      00170E 60 11            [24] 4941 	jz	00105$
                                   4942 ;	serialloader.h:66: *(xram_addr) = 0xAA;
      001710 90 15 55         [24] 4943 	mov	dptr,#0x1555
      001713 74 AA            [12] 4944 	mov	a,#0xaa
      001715 F0               [24] 4945 	movx	@dptr,a
                                   4946 ;	serialloader.h:68: *(xram_addr) = 0x55;
      001716 90 0A AA         [24] 4947 	mov	dptr,#0x0aaa
      001719 F4               [12] 4948 	cpl	a
      00171A F0               [24] 4949 	movx	@dptr,a
                                   4950 ;	serialloader.h:70: *(xram_addr) = 0xA0;
      00171B 90 15 55         [24] 4951 	mov	dptr,#0x1555
      00171E 74 A0            [12] 4952 	mov	a,#0xa0
      001720 F0               [24] 4953 	movx	@dptr,a
      001721                       4954 00105$:
                                   4955 ;	serialloader.h:73: xram_addr = (__xdata unsigned char*) addr;
      001721 8F 82            [24] 4956 	mov	dpl,r7
      001723 8E 83            [24] 4957 	mov	dph,r6
                                   4958 ;	serialloader.h:75: *(xram_addr) = data; //write to xram
      001725 ED               [12] 4959 	mov	a,r5
      001726 F0               [24] 4960 	movx	@dptr,a
                                   4961 ;	serialloader.h:77: UartWrite('W'); //ack
      001727 75 82 57         [24] 4962 	mov	dpl,#0x57
                                   4963 ;	serialloader.h:79: }
      00172A 02 01 66         [24] 4964 	ljmp	_UartWrite
                                   4965 ;------------------------------------------------------------
                                   4966 ;Allocation info for local variables in function 'SL_read'
                                   4967 ;------------------------------------------------------------
                                   4968 ;data                      Allocated to registers r7 
                                   4969 ;addr                      Allocated to registers r7 r6 
                                   4970 ;xram_addr                 Allocated to registers 
                                   4971 ;------------------------------------------------------------
                                   4972 ;	serialloader.h:81: void SL_read()
                                   4973 ;	-----------------------------------------
                                   4974 ;	 function SL_read
                                   4975 ;	-----------------------------------------
      00172D                       4976 _SL_read:
                                   4977 ;	serialloader.h:87: while(UartReadReady()==0); //wait till we rcv data
      00172D                       4978 00101$:
      00172D 12 01 52         [24] 4979 	lcall	_UartReadReady
      001730 E5 82            [12] 4980 	mov	a,dpl
      001732 60 F9            [24] 4981 	jz	00101$
                                   4982 ;	serialloader.h:91: addr = UartRead(); //msb
      001734 12 01 5D         [24] 4983 	lcall	_UartRead
                                   4984 ;	serialloader.h:92: addr = addr << 8;
      001737 AE 82            [24] 4985 	mov	r6,dpl
      001739 7F 00            [12] 4986 	mov	r7,#0x00
                                   4987 ;	serialloader.h:93: addr |= UartRead(); //lsb
      00173B C0 07            [24] 4988 	push	ar7
      00173D C0 06            [24] 4989 	push	ar6
      00173F 12 01 5D         [24] 4990 	lcall	_UartRead
      001742 AD 82            [24] 4991 	mov	r5,dpl
      001744 D0 06            [24] 4992 	pop	ar6
      001746 D0 07            [24] 4993 	pop	ar7
      001748 7C 00            [12] 4994 	mov	r4,#0x00
      00174A ED               [12] 4995 	mov	a,r5
      00174B 42 07            [12] 4996 	orl	ar7,a
      00174D EC               [12] 4997 	mov	a,r4
      00174E 42 06            [12] 4998 	orl	ar6,a
                                   4999 ;	serialloader.h:95: xram_addr = (__xdata unsigned char*) addr;
      001750 8F 82            [24] 5000 	mov	dpl,r7
      001752 8E 83            [24] 5001 	mov	dph,r6
                                   5002 ;	serialloader.h:97: data = *(xram_addr); //read from xram
      001754 E0               [24] 5003 	movx	a,@dptr
                                   5004 ;	serialloader.h:99: UartWrite(data);
      001755 F5 82            [12] 5005 	mov	dpl,a
                                   5006 ;	serialloader.h:101: }
      001757 02 01 66         [24] 5007 	ljmp	_UartWrite
                                   5008 ;------------------------------------------------------------
                                   5009 ;Allocation info for local variables in function 'SL_getcmd'
                                   5010 ;------------------------------------------------------------
                                   5011 ;cmd                       Allocated to registers r7 
                                   5012 ;------------------------------------------------------------
                                   5013 ;	serialloader.h:104: unsigned char SL_getcmd()
                                   5014 ;	-----------------------------------------
                                   5015 ;	 function SL_getcmd
                                   5016 ;	-----------------------------------------
      00175A                       5017 _SL_getcmd:
                                   5018 ;	serialloader.h:107: while(UartReadReady()) UartRead(); //flush 
      00175A                       5019 00101$:
      00175A 12 01 52         [24] 5020 	lcall	_UartReadReady
      00175D E5 82            [12] 5021 	mov	a,dpl
      00175F 60 05            [24] 5022 	jz	00104$
      001761 12 01 5D         [24] 5023 	lcall	_UartRead
                                   5024 ;	serialloader.h:109: while(UartReadReady()==0); //wait till we rcv data 
      001764 80 F4            [24] 5025 	sjmp	00101$
      001766                       5026 00104$:
      001766 12 01 52         [24] 5027 	lcall	_UartReadReady
      001769 E5 82            [12] 5028 	mov	a,dpl
      00176B 60 F9            [24] 5029 	jz	00104$
                                   5030 ;	serialloader.h:112: cmd = UartRead(); //read
      00176D 12 01 5D         [24] 5031 	lcall	_UartRead
      001770 AF 82            [24] 5032 	mov	r7,dpl
                                   5033 ;	serialloader.h:114: switch(cmd)
      001772 BF 44 02         [24] 5034 	cjne	r7,#0x44,00159$
      001775 80 3A            [24] 5035 	sjmp	00110$
      001777                       5036 00159$:
      001777 BF 45 02         [24] 5037 	cjne	r7,#0x45,00160$
      00177A 80 3E            [24] 5038 	sjmp	00111$
      00177C                       5039 00160$:
      00177C BF 52 02         [24] 5040 	cjne	r7,#0x52,00161$
      00177F 80 1E            [24] 5041 	sjmp	00108$
      001781                       5042 00161$:
      001781 BF 56 02         [24] 5043 	cjne	r7,#0x56,00162$
      001784 80 0A            [24] 5044 	sjmp	00107$
      001786                       5045 00162$:
      001786 BF 57 02         [24] 5046 	cjne	r7,#0x57,00163$
      001789 80 1D            [24] 5047 	sjmp	00109$
      00178B                       5048 00163$:
                                   5049 ;	serialloader.h:116: case 'V':
      00178B BF 58 3C         [24] 5050 	cjne	r7,#0x58,00114$
      00178E 80 33            [24] 5051 	sjmp	00112$
      001790                       5052 00107$:
                                   5053 ;	serialloader.h:117: UartPrint(SERIAL_LOADER_VERSION_INFO);
      001790 90 1B 60         [24] 5054 	mov	dptr,#_SERIAL_LOADER_VERSION_INFO
      001793 75 F0 80         [24] 5055 	mov	b,#0x80
      001796 C0 07            [24] 5056 	push	ar7
      001798 12 01 EC         [24] 5057 	lcall	_UartPrint
      00179B D0 07            [24] 5058 	pop	ar7
                                   5059 ;	serialloader.h:118: break;
                                   5060 ;	serialloader.h:119: case 'R':
      00179D 80 2B            [24] 5061 	sjmp	00114$
      00179F                       5062 00108$:
                                   5063 ;	serialloader.h:120: SL_read();
      00179F C0 07            [24] 5064 	push	ar7
      0017A1 12 17 2D         [24] 5065 	lcall	_SL_read
      0017A4 D0 07            [24] 5066 	pop	ar7
                                   5067 ;	serialloader.h:121: break;
                                   5068 ;	serialloader.h:122: case 'W':
      0017A6 80 22            [24] 5069 	sjmp	00114$
      0017A8                       5070 00109$:
                                   5071 ;	serialloader.h:123: SL_write();
      0017A8 C0 07            [24] 5072 	push	ar7
      0017AA 12 16 DC         [24] 5073 	lcall	_SL_write
      0017AD D0 07            [24] 5074 	pop	ar7
                                   5075 ;	serialloader.h:124: break;
                                   5076 ;	serialloader.h:125: case 'D':
      0017AF 80 19            [24] 5077 	sjmp	00114$
      0017B1                       5078 00110$:
                                   5079 ;	serialloader.h:126: SL_disable_write_protection();
      0017B1 C0 07            [24] 5080 	push	ar7
      0017B3 12 16 AA         [24] 5081 	lcall	_SL_disable_write_protection
      0017B6 D0 07            [24] 5082 	pop	ar7
                                   5083 ;	serialloader.h:127: break;
                                   5084 ;	serialloader.h:128: case 'E':
      0017B8 80 10            [24] 5085 	sjmp	00114$
      0017BA                       5086 00111$:
                                   5087 ;	serialloader.h:129: SL_enable_write_protection();
      0017BA C0 07            [24] 5088 	push	ar7
      0017BC 12 16 D3         [24] 5089 	lcall	_SL_enable_write_protection
      0017BF D0 07            [24] 5090 	pop	ar7
                                   5091 ;	serialloader.h:130: break;
                                   5092 ;	serialloader.h:131: case 'X': //execute
      0017C1 80 07            [24] 5093 	sjmp	00114$
      0017C3                       5094 00112$:
                                   5095 ;	serialloader.h:132: enterApp();
      0017C3 C0 07            [24] 5096 	push	ar7
      0017C5 12 00 69         [24] 5097 	lcall	_enterApp
      0017C8 D0 07            [24] 5098 	pop	ar7
                                   5099 ;	serialloader.h:136: }
      0017CA                       5100 00114$:
                                   5101 ;	serialloader.h:138: return cmd;
      0017CA 8F 82            [24] 5102 	mov	dpl,r7
                                   5103 ;	serialloader.h:139: }
      0017CC 22               [24] 5104 	ret
                                   5105 ;------------------------------------------------------------
                                   5106 ;Allocation info for local variables in function 'SelectFAT16PartitionPrompt'
                                   5107 ;------------------------------------------------------------
                                   5108 ;_resp                     Allocated to registers r6 
                                   5109 ;_temp                     Allocated to registers r7 
                                   5110 ;i                         Allocated to registers r5 
                                   5111 ;i                         Allocated to registers r4 
                                   5112 ;------------------------------------------------------------
                                   5113 ;	main.c:22: void SelectFAT16PartitionPrompt() __reentrant
                                   5114 ;	-----------------------------------------
                                   5115 ;	 function SelectFAT16PartitionPrompt
                                   5116 ;	-----------------------------------------
      0017CD                       5117 _SelectFAT16PartitionPrompt:
                                   5118 ;	main.c:24: uint8_t _resp=0,_temp=0;
      0017CD 7F 00            [12] 5119 	mov	r7,#0x00
                                   5120 ;	main.c:27: if(MBR_CHECK__SIGNATURE())
      0017CF C0 07            [24] 5121 	push	ar7
      0017D1 12 0C 7F         [24] 5122 	lcall	_MBR_CHECK__SIGNATURE
      0017D4 E5 82            [12] 5123 	mov	a,dpl
      0017D6 D0 07            [24] 5124 	pop	ar7
      0017D8 60 0D            [24] 5125 	jz	00102$
                                   5126 ;	main.c:30: UartPrint("BAD MBR!\n");
      0017DA 90 1E 5B         [24] 5127 	mov	dptr,#___str_9
      0017DD 75 F0 80         [24] 5128 	mov	b,#0x80
      0017E0 C0 07            [24] 5129 	push	ar7
      0017E2 12 01 EC         [24] 5130 	lcall	_UartPrint
      0017E5 D0 07            [24] 5131 	pop	ar7
      0017E7                       5132 00102$:
                                   5133 ;	main.c:34: _resp=MBR_DETECT_FAT16(); 	// _resp now contains the bit set for the partitions which have valid FAT16 ID
      0017E7 C0 07            [24] 5134 	push	ar7
      0017E9 12 0D 5D         [24] 5135 	lcall	_MBR_DETECT_FAT16
      0017EC AE 82            [24] 5136 	mov	r6,dpl
      0017EE D0 07            [24] 5137 	pop	ar7
                                   5138 ;	main.c:37: if(_resp)
      0017F0 EE               [12] 5139 	mov	a,r6
      0017F1 70 03            [24] 5140 	jnz	00188$
      0017F3 02 19 39         [24] 5141 	ljmp	00124$
      0017F6                       5142 00188$:
                                   5143 ;	main.c:41: for(uint8_t i=0;i<4;i++)
      0017F6 7D 00            [12] 5144 	mov	r5,#0x00
      0017F8                       5145 00127$:
      0017F8 BD 04 00         [24] 5146 	cjne	r5,#0x04,00189$
      0017FB                       5147 00189$:
      0017FB 40 03            [24] 5148 	jc	00190$
      0017FD 02 18 7E         [24] 5149 	ljmp	00106$
      001800                       5150 00190$:
                                   5151 ;	main.c:43: UartPrint("Ptn. ");UartWriteNumber(i,HEX);UartWrite('> ');
      001800 C0 07            [24] 5152 	push	ar7
      001802 90 1E 65         [24] 5153 	mov	dptr,#___str_10
      001805 75 F0 80         [24] 5154 	mov	b,#0x80
      001808 C0 07            [24] 5155 	push	ar7
      00180A C0 06            [24] 5156 	push	ar6
      00180C C0 05            [24] 5157 	push	ar5
      00180E 12 01 EC         [24] 5158 	lcall	_UartPrint
      001811 D0 05            [24] 5159 	pop	ar5
      001813 C0 05            [24] 5160 	push	ar5
      001815 E4               [12] 5161 	clr	a
      001816 C0 E0            [24] 5162 	push	acc
      001818 8D 82            [24] 5163 	mov	dpl,r5
      00181A 12 02 1E         [24] 5164 	lcall	_UartWriteNumber
      00181D 15 81            [12] 5165 	dec	sp
      00181F 75 82 3E         [24] 5166 	mov	dpl,#0x3e
      001822 12 01 66         [24] 5167 	lcall	_UartWrite
      001825 D0 05            [24] 5168 	pop	ar5
      001827 D0 06            [24] 5169 	pop	ar6
      001829 D0 07            [24] 5170 	pop	ar7
                                   5171 ;	main.c:44: if(_resp & 1<<i) UartPrint("FAT16\n");
      00182B 8D F0            [24] 5172 	mov	b,r5
      00182D 05 F0            [12] 5173 	inc	b
      00182F 7B 01            [12] 5174 	mov	r3,#0x01
      001831 7C 00            [12] 5175 	mov	r4,#0x00
      001833 80 06            [24] 5176 	sjmp	00192$
      001835                       5177 00191$:
      001835 EB               [12] 5178 	mov	a,r3
      001836 2B               [12] 5179 	add	a,r3
      001837 FB               [12] 5180 	mov	r3,a
      001838 EC               [12] 5181 	mov	a,r4
      001839 33               [12] 5182 	rlc	a
      00183A FC               [12] 5183 	mov	r4,a
      00183B                       5184 00192$:
      00183B D5 F0 F7         [24] 5185 	djnz	b,00191$
      00183E 8E 02            [24] 5186 	mov	ar2,r6
      001840 7F 00            [12] 5187 	mov	r7,#0x00
      001842 EA               [12] 5188 	mov	a,r2
      001843 52 03            [12] 5189 	anl	ar3,a
      001845 EF               [12] 5190 	mov	a,r7
      001846 52 04            [12] 5191 	anl	ar4,a
      001848 D0 07            [24] 5192 	pop	ar7
      00184A EB               [12] 5193 	mov	a,r3
      00184B 4C               [12] 5194 	orl	a,r4
      00184C 60 17            [24] 5195 	jz	00104$
      00184E 90 1E 6B         [24] 5196 	mov	dptr,#___str_11
      001851 75 F0 80         [24] 5197 	mov	b,#0x80
      001854 C0 07            [24] 5198 	push	ar7
      001856 C0 06            [24] 5199 	push	ar6
      001858 C0 05            [24] 5200 	push	ar5
      00185A 12 01 EC         [24] 5201 	lcall	_UartPrint
      00185D D0 05            [24] 5202 	pop	ar5
      00185F D0 06            [24] 5203 	pop	ar6
      001861 D0 07            [24] 5204 	pop	ar7
      001863 80 15            [24] 5205 	sjmp	00128$
      001865                       5206 00104$:
                                   5207 ;	main.c:45: else UartPrint("Unknown\n");
      001865 90 1E 72         [24] 5208 	mov	dptr,#___str_12
      001868 75 F0 80         [24] 5209 	mov	b,#0x80
      00186B C0 07            [24] 5210 	push	ar7
      00186D C0 06            [24] 5211 	push	ar6
      00186F C0 05            [24] 5212 	push	ar5
      001871 12 01 EC         [24] 5213 	lcall	_UartPrint
      001874 D0 05            [24] 5214 	pop	ar5
      001876 D0 06            [24] 5215 	pop	ar6
      001878 D0 07            [24] 5216 	pop	ar7
      00187A                       5217 00128$:
                                   5218 ;	main.c:41: for(uint8_t i=0;i<4;i++)
      00187A 0D               [12] 5219 	inc	r5
      00187B 02 17 F8         [24] 5220 	ljmp	00127$
      00187E                       5221 00106$:
                                   5222 ;	main.c:51: if( (_resp & (_resp-1)) == 0)
      00187E 8E 05            [24] 5223 	mov	ar5,r6
      001880 7E 00            [12] 5224 	mov	r6,#0x00
      001882 ED               [12] 5225 	mov	a,r5
      001883 24 FF            [12] 5226 	add	a,#0xff
      001885 FB               [12] 5227 	mov	r3,a
      001886 EE               [12] 5228 	mov	a,r6
      001887 34 FF            [12] 5229 	addc	a,#0xff
      001889 FC               [12] 5230 	mov	r4,a
      00188A ED               [12] 5231 	mov	a,r5
      00188B 52 03            [12] 5232 	anl	ar3,a
      00188D EE               [12] 5233 	mov	a,r6
      00188E 52 04            [12] 5234 	anl	ar4,a
      001890 EB               [12] 5235 	mov	a,r3
      001891 4C               [12] 5236 	orl	a,r4
                                   5237 ;	main.c:53: for(uint8_t i=0;i<4;i++)
      001892 70 31            [24] 5238 	jnz	00111$
      001894 FC               [12] 5239 	mov	r4,a
      001895 FB               [12] 5240 	mov	r3,a
      001896                       5241 00130$:
      001896 BB 04 00         [24] 5242 	cjne	r3,#0x04,00195$
      001899                       5243 00195$:
      001899 50 42            [24] 5244 	jnc	00112$
                                   5245 ;	main.c:55: if(_resp & 1<<i) 
      00189B C0 04            [24] 5246 	push	ar4
      00189D 8B F0            [24] 5247 	mov	b,r3
      00189F 05 F0            [12] 5248 	inc	b
      0018A1 7A 01            [12] 5249 	mov	r2,#0x01
      0018A3 7C 00            [12] 5250 	mov	r4,#0x00
      0018A5 80 06            [24] 5251 	sjmp	00198$
      0018A7                       5252 00197$:
      0018A7 EA               [12] 5253 	mov	a,r2
      0018A8 2A               [12] 5254 	add	a,r2
      0018A9 FA               [12] 5255 	mov	r2,a
      0018AA EC               [12] 5256 	mov	a,r4
      0018AB 33               [12] 5257 	rlc	a
      0018AC FC               [12] 5258 	mov	r4,a
      0018AD                       5259 00198$:
      0018AD D5 F0 F7         [24] 5260 	djnz	b,00197$
      0018B0 ED               [12] 5261 	mov	a,r5
      0018B1 52 02            [12] 5262 	anl	ar2,a
      0018B3 EE               [12] 5263 	mov	a,r6
      0018B4 52 04            [12] 5264 	anl	ar4,a
      0018B6 EA               [12] 5265 	mov	a,r2
      0018B7 4C               [12] 5266 	orl	a,r4
      0018B8 D0 04            [24] 5267 	pop	ar4
      0018BA 60 04            [24] 5268 	jz	00131$
                                   5269 ;	main.c:57: _temp=i; // select the i-th partition
      0018BC 8C 07            [24] 5270 	mov	ar7,r4
                                   5271 ;	main.c:58: break; //break from for loop
      0018BE 80 1D            [24] 5272 	sjmp	00112$
      0018C0                       5273 00131$:
                                   5274 ;	main.c:53: for(uint8_t i=0;i<4;i++)
      0018C0 0B               [12] 5275 	inc	r3
      0018C1 8B 04            [24] 5276 	mov	ar4,r3
      0018C3 80 D1            [24] 5277 	sjmp	00130$
      0018C5                       5278 00111$:
                                   5279 ;	main.c:65: UartPrint("Slct Ptn. >\n");
      0018C5 90 1E 7B         [24] 5280 	mov	dptr,#___str_13
      0018C8 75 F0 80         [24] 5281 	mov	b,#0x80
      0018CB C0 06            [24] 5282 	push	ar6
      0018CD C0 05            [24] 5283 	push	ar5
      0018CF 12 01 EC         [24] 5284 	lcall	_UartPrint
                                   5285 ;	main.c:66: _temp=UartScanByte();
      0018D2 12 04 2C         [24] 5286 	lcall	_UartScanByte
      0018D5 AC 82            [24] 5287 	mov	r4,dpl
      0018D7 D0 05            [24] 5288 	pop	ar5
      0018D9 D0 06            [24] 5289 	pop	ar6
      0018DB 8C 07            [24] 5290 	mov	ar7,r4
      0018DD                       5291 00112$:
                                   5292 ;	main.c:70: if( _temp<4 && (_resp & (1<<_temp)) )
      0018DD BF 04 00         [24] 5293 	cjne	r7,#0x04,00200$
      0018E0                       5294 00200$:
      0018E0 50 43            [24] 5295 	jnc	00117$
      0018E2 8F F0            [24] 5296 	mov	b,r7
      0018E4 05 F0            [12] 5297 	inc	b
      0018E6 7B 01            [12] 5298 	mov	r3,#0x01
      0018E8 7C 00            [12] 5299 	mov	r4,#0x00
      0018EA 80 06            [24] 5300 	sjmp	00203$
      0018EC                       5301 00202$:
      0018EC EB               [12] 5302 	mov	a,r3
      0018ED 2B               [12] 5303 	add	a,r3
      0018EE FB               [12] 5304 	mov	r3,a
      0018EF EC               [12] 5305 	mov	a,r4
      0018F0 33               [12] 5306 	rlc	a
      0018F1 FC               [12] 5307 	mov	r4,a
      0018F2                       5308 00203$:
      0018F2 D5 F0 F7         [24] 5309 	djnz	b,00202$
      0018F5 EB               [12] 5310 	mov	a,r3
      0018F6 52 05            [12] 5311 	anl	ar5,a
      0018F8 EC               [12] 5312 	mov	a,r4
      0018F9 52 06            [12] 5313 	anl	ar6,a
      0018FB ED               [12] 5314 	mov	a,r5
      0018FC 4E               [12] 5315 	orl	a,r6
      0018FD 60 26            [24] 5316 	jz	00117$
                                   5317 ;	main.c:72: UartPrint("\n\nPtn. Mounted:");UartWriteNumber(_temp,HEX);
      0018FF 90 1E 88         [24] 5318 	mov	dptr,#___str_14
      001902 75 F0 80         [24] 5319 	mov	b,#0x80
      001905 C0 07            [24] 5320 	push	ar7
      001907 12 01 EC         [24] 5321 	lcall	_UartPrint
      00190A D0 07            [24] 5322 	pop	ar7
      00190C C0 07            [24] 5323 	push	ar7
      00190E E4               [12] 5324 	clr	a
      00190F C0 E0            [24] 5325 	push	acc
      001911 8F 82            [24] 5326 	mov	dpl,r7
      001913 12 02 1E         [24] 5327 	lcall	_UartWriteNumber
      001916 15 81            [12] 5328 	dec	sp
                                   5329 ;	main.c:73: UartWrite('\n');
      001918 75 82 0A         [24] 5330 	mov	dpl,#0x0a
      00191B 12 01 66         [24] 5331 	lcall	_UartWrite
      00191E D0 07            [24] 5332 	pop	ar7
                                   5333 ;	main.c:74: VBR_MOUNT_VBR(_temp);
      001920 8F 82            [24] 5334 	mov	dpl,r7
      001922 02 0D 94         [24] 5335 	ljmp	_VBR_MOUNT_VBR
      001925                       5336 00117$:
                                   5337 ;	main.c:78: UartPrint("\nBad Ptn.\n");
      001925 90 1E 98         [24] 5338 	mov	dptr,#___str_15
      001928 75 F0 80         [24] 5339 	mov	b,#0x80
      00192B 12 01 EC         [24] 5340 	lcall	_UartPrint
                                   5341 ;	main.c:79: UartPrint(HALTING_MSG); while(1);
      00192E 90 1B 6D         [24] 5342 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_203
      001931 75 F0 80         [24] 5343 	mov	b,#0x80
      001934 12 01 EC         [24] 5344 	lcall	_UartPrint
      001937                       5345 00114$:
      001937 80 FE            [24] 5346 	sjmp	00114$
      001939                       5347 00124$:
                                   5348 ;	main.c:85: UartPrint("No FAT16 Ptn.\n");
      001939 90 1E A3         [24] 5349 	mov	dptr,#___str_16
      00193C 75 F0 80         [24] 5350 	mov	b,#0x80
      00193F 12 01 EC         [24] 5351 	lcall	_UartPrint
                                   5352 ;	main.c:86: UartPrint(HALTING_MSG); while(1);
      001942 90 1B 6D         [24] 5353 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_203
      001945 75 F0 80         [24] 5354 	mov	b,#0x80
      001948 12 01 EC         [24] 5355 	lcall	_UartPrint
      00194B                       5356 00121$:
                                   5357 ;	main.c:89: }
      00194B 80 FE            [24] 5358 	sjmp	00121$
                                   5359 ;------------------------------------------------------------
                                   5360 ;Allocation info for local variables in function 'SelectFileAndFileOpen'
                                   5361 ;------------------------------------------------------------
                                   5362 ;_result                   Allocated to registers r7 
                                   5363 ;i                         Allocated to registers r7 
                                   5364 ;j                         Allocated to registers r6 
                                   5365 ;------------------------------------------------------------
                                   5366 ;	main.c:91: uint8_t SelectFileAndFileOpen() __reentrant
                                   5367 ;	-----------------------------------------
                                   5368 ;	 function SelectFileAndFileOpen
                                   5369 ;	-----------------------------------------
      00194D                       5370 _SelectFileAndFileOpen:
                                   5371 ;	main.c:94: FAT16_ROOTENTRY_SCAN_RESET();
      00194D 12 12 2B         [24] 5372 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
                                   5373 ;	main.c:95: UartPrint("\nINDEX\t\tFILE\n");
      001950 90 1E B2         [24] 5374 	mov	dptr,#___str_17
      001953 75 F0 80         [24] 5375 	mov	b,#0x80
      001956 12 01 EC         [24] 5376 	lcall	_UartPrint
                                   5377 ;	main.c:98: for(uint8_t i=0;i<255;i++) 
      001959 7F 00            [12] 5378 	mov	r7,#0x00
      00195B                       5379 00114$:
      00195B BF FF 00         [24] 5380 	cjne	r7,#0xff,00155$
      00195E                       5381 00155$:
      00195E 50 58            [24] 5382 	jnc	00107$
                                   5383 ;	main.c:100: _result = FAT16_ROOTENTRY_SCAN();
      001960 C0 07            [24] 5384 	push	ar7
      001962 12 12 3D         [24] 5385 	lcall	_FAT16_ROOTENTRY_SCAN
      001965 AE 82            [24] 5386 	mov	r6,dpl
      001967 D0 07            [24] 5387 	pop	ar7
                                   5388 ;	main.c:101: if(_result==0xff) break; //end of scan
      001969 BE FF 02         [24] 5389 	cjne	r6,#0xff,00157$
      00196C 80 4A            [24] 5390 	sjmp	00107$
      00196E                       5391 00157$:
                                   5392 ;	main.c:102: else if (_result==0) //valid file
      00196E EE               [12] 5393 	mov	a,r6
      00196F 70 44            [24] 5394 	jnz	00115$
                                   5395 ;	main.c:104: UartWriteNumber(__global_rootEntry.entry_index,DEC); //print root entry index
      001971 78 7C            [12] 5396 	mov	r0,#(___global_rootEntry + 0x0012)
      001973 86 06            [24] 5397 	mov	ar6,@r0
      001975 C0 07            [24] 5398 	push	ar7
      001977 74 01            [12] 5399 	mov	a,#0x01
      001979 C0 E0            [24] 5400 	push	acc
      00197B 8E 82            [24] 5401 	mov	dpl,r6
      00197D 12 02 1E         [24] 5402 	lcall	_UartWriteNumber
      001980 15 81            [12] 5403 	dec	sp
                                   5404 ;	main.c:105: UartWrite('\t');
      001982 75 82 09         [24] 5405 	mov	dpl,#0x09
      001985 12 01 66         [24] 5406 	lcall	_UartWrite
                                   5407 ;	main.c:106: UartWrite('\t');
      001988 75 82 09         [24] 5408 	mov	dpl,#0x09
      00198B 12 01 66         [24] 5409 	lcall	_UartWrite
      00198E D0 07            [24] 5410 	pop	ar7
                                   5411 ;	main.c:107: for(uint8_t j=0;j<11;j++)UartWrite(__global_rootEntry.name[j]); //print name
      001990 7E 00            [12] 5412 	mov	r6,#0x00
      001992                       5413 00111$:
      001992 BE 0B 00         [24] 5414 	cjne	r6,#0x0b,00159$
      001995                       5415 00159$:
      001995 50 14            [24] 5416 	jnc	00101$
      001997 EE               [12] 5417 	mov	a,r6
      001998 24 6A            [12] 5418 	add	a,#___global_rootEntry
      00199A F9               [12] 5419 	mov	r1,a
      00199B 87 82            [24] 5420 	mov	dpl,@r1
      00199D C0 07            [24] 5421 	push	ar7
      00199F C0 06            [24] 5422 	push	ar6
      0019A1 12 01 66         [24] 5423 	lcall	_UartWrite
      0019A4 D0 06            [24] 5424 	pop	ar6
      0019A6 D0 07            [24] 5425 	pop	ar7
      0019A8 0E               [12] 5426 	inc	r6
      0019A9 80 E7            [24] 5427 	sjmp	00111$
      0019AB                       5428 00101$:
                                   5429 ;	main.c:108: UartWrite('\n');
      0019AB 75 82 0A         [24] 5430 	mov	dpl,#0x0a
      0019AE C0 07            [24] 5431 	push	ar7
      0019B0 12 01 66         [24] 5432 	lcall	_UartWrite
      0019B3 D0 07            [24] 5433 	pop	ar7
      0019B5                       5434 00115$:
                                   5435 ;	main.c:98: for(uint8_t i=0;i<255;i++) 
      0019B5 0F               [12] 5436 	inc	r7
      0019B6 80 A3            [24] 5437 	sjmp	00114$
      0019B8                       5438 00107$:
                                   5439 ;	main.c:112: UartPrint("\nSlct index >\n");
      0019B8 90 1E C0         [24] 5440 	mov	dptr,#___str_18
      0019BB 75 F0 80         [24] 5441 	mov	b,#0x80
      0019BE 12 01 EC         [24] 5442 	lcall	_UartPrint
                                   5443 ;	main.c:113: _result=UartScanByte();
      0019C1 12 04 2C         [24] 5444 	lcall	_UartScanByte
                                   5445 ;	main.c:116: _result=FAT16_ROOTENTRY_READ(_result); //load the selected
      0019C4 7E 00            [12] 5446 	mov	r6,#0x00
      0019C6 8E 83            [24] 5447 	mov	dph,r6
      0019C8 12 12 0A         [24] 5448 	lcall	_FAT16_ROOTENTRY_READ
                                   5449 ;	main.c:117: if(_result!=0) UartPrint("\nInvalid Entry !\n");
      0019CB E5 82            [12] 5450 	mov	a,dpl
      0019CD FF               [12] 5451 	mov	r7,a
      0019CE 60 0D            [24] 5452 	jz	00109$
      0019D0 90 1E CF         [24] 5453 	mov	dptr,#___str_19
      0019D3 75 F0 80         [24] 5454 	mov	b,#0x80
      0019D6 C0 07            [24] 5455 	push	ar7
      0019D8 12 01 EC         [24] 5456 	lcall	_UartPrint
      0019DB D0 07            [24] 5457 	pop	ar7
      0019DD                       5458 00109$:
                                   5459 ;	main.c:118: return _result;
      0019DD 8F 82            [24] 5460 	mov	dpl,r7
                                   5461 ;	main.c:120: }
      0019DF 22               [24] 5462 	ret
                                   5463 ;------------------------------------------------------------
                                   5464 ;Allocation info for local variables in function 'main'
                                   5465 ;------------------------------------------------------------
                                   5466 ;buff                      Allocated with name '_main_buff_65536_222'
                                   5467 ;_resp                     Allocated to registers r7 
                                   5468 ;xram_addr                 Allocated to registers r6 r7 
                                   5469 ;_t                        Allocated to registers r5 r6 
                                   5470 ;wastetime                 Allocated to registers r4 
                                   5471 ;i                         Allocated to registers r5 
                                   5472 ;i                         Allocated to registers r5 
                                   5473 ;------------------------------------------------------------
                                   5474 ;	main.c:131: void main(void)
                                   5475 ;	-----------------------------------------
                                   5476 ;	 function main
                                   5477 ;	-----------------------------------------
      0019E0                       5478 _main:
                                   5479 ;	main.c:140: uint8_t _resp=0;
      0019E0 7F 00            [12] 5480 	mov	r7,#0x00
                                   5481 ;	main.c:147: UartBegin();
      0019E2 C0 07            [24] 5482 	push	ar7
      0019E4 12 01 43         [24] 5483 	lcall	_UartBegin
                                   5484 ;	main.c:148: spi_init(); 
      0019E7 12 04 F2         [24] 5485 	lcall	_spi_init
                                   5486 ;	main.c:149: SDinit();
      0019EA 12 07 2B         [24] 5487 	lcall	_SDinit
                                   5488 ;	main.c:153: UartPrint("\nSYAMPUTER:V0\n");
      0019ED 90 1E E1         [24] 5489 	mov	dptr,#___str_20
      0019F0 75 F0 80         [24] 5490 	mov	b,#0x80
      0019F3 12 01 EC         [24] 5491 	lcall	_UartPrint
      0019F6 D0 07            [24] 5492 	pop	ar7
                                   5493 ;	main.c:155: while(UartReadReady())UartRead(); //flush
      0019F8                       5494 00101$:
      0019F8 C0 07            [24] 5495 	push	ar7
      0019FA 12 01 52         [24] 5496 	lcall	_UartReadReady
      0019FD E5 82            [12] 5497 	mov	a,dpl
      0019FF D0 07            [24] 5498 	pop	ar7
      001A01 60 09            [24] 5499 	jz	00156$
      001A03 C0 07            [24] 5500 	push	ar7
      001A05 12 01 5D         [24] 5501 	lcall	_UartRead
      001A08 D0 07            [24] 5502 	pop	ar7
                                   5503 ;	main.c:160: for(unsigned int _t=0;_t<65000;_t++)
      001A0A 80 EC            [24] 5504 	sjmp	00101$
      001A0C                       5505 00156$:
      001A0C 7D 00            [12] 5506 	mov	r5,#0x00
      001A0E 7E 00            [12] 5507 	mov	r6,#0x00
      001A10                       5508 00140$:
      001A10 C3               [12] 5509 	clr	c
      001A11 ED               [12] 5510 	mov	a,r5
      001A12 94 E8            [12] 5511 	subb	a,#0xe8
      001A14 EE               [12] 5512 	mov	a,r6
      001A15 94 FD            [12] 5513 	subb	a,#0xfd
      001A17 50 2B            [24] 5514 	jnc	00107$
                                   5515 ;	main.c:162: if(UartReadReady())
      001A19 C0 07            [24] 5516 	push	ar7
      001A1B C0 06            [24] 5517 	push	ar6
      001A1D C0 05            [24] 5518 	push	ar5
      001A1F 12 01 52         [24] 5519 	lcall	_UartReadReady
      001A22 E5 82            [12] 5520 	mov	a,dpl
      001A24 D0 05            [24] 5521 	pop	ar5
      001A26 D0 06            [24] 5522 	pop	ar6
      001A28 D0 07            [24] 5523 	pop	ar7
      001A2A 60 07            [24] 5524 	jz	00155$
                                   5525 ;	main.c:164: _resp=UartRead();
      001A2C 12 01 5D         [24] 5526 	lcall	_UartRead
      001A2F AF 82            [24] 5527 	mov	r7,dpl
                                   5528 ;	main.c:165: break;
                                   5529 ;	main.c:167: for(uint8_t wastetime=0;wastetime<3;wastetime++);
      001A31 80 11            [24] 5530 	sjmp	00107$
      001A33                       5531 00155$:
      001A33 7C 00            [12] 5532 	mov	r4,#0x00
      001A35                       5533 00137$:
      001A35 BC 03 00         [24] 5534 	cjne	r4,#0x03,00239$
      001A38                       5535 00239$:
      001A38 50 03            [24] 5536 	jnc	00141$
      001A3A 0C               [12] 5537 	inc	r4
      001A3B 80 F8            [24] 5538 	sjmp	00137$
      001A3D                       5539 00141$:
                                   5540 ;	main.c:160: for(unsigned int _t=0;_t<65000;_t++)
      001A3D 0D               [12] 5541 	inc	r5
      001A3E BD 00 CF         [24] 5542 	cjne	r5,#0x00,00140$
      001A41 0E               [12] 5543 	inc	r6
      001A42 80 CC            [24] 5544 	sjmp	00140$
      001A44                       5545 00107$:
                                   5546 ;	main.c:172: switch (_resp)
      001A44 BF 56 10         [24] 5547 	cjne	r7,#0x56,00113$
                                   5548 ;	main.c:175: UartPrint("ISA:FS0:8052\n");
      001A47 90 1E F0         [24] 5549 	mov	dptr,#___str_21
      001A4A 75 F0 80         [24] 5550 	mov	b,#0x80
      001A4D 12 01 EC         [24] 5551 	lcall	_UartPrint
                                   5552 ;	main.c:176: while(SL_getcmd()); //break when command is 0
      001A50                       5553 00109$:
      001A50 12 17 5A         [24] 5554 	lcall	_SL_getcmd
      001A53 E5 82            [12] 5555 	mov	a,dpl
      001A55 70 F9            [24] 5556 	jnz	00109$
                                   5557 ;	main.c:180: }
      001A57                       5558 00113$:
                                   5559 ;	main.c:185: SelectFAT16PartitionPrompt();
      001A57 12 17 CD         [24] 5560 	lcall	_SelectFAT16PartitionPrompt
                                   5561 ;	main.c:192: if(FAT16_FILE_OPEN(DEFAULT_LOAD_FILENAME)==0)
      001A5A 90 1E FE         [24] 5562 	mov	dptr,#___str_22
      001A5D 75 F0 80         [24] 5563 	mov	b,#0x80
      001A60 12 12 60         [24] 5564 	lcall	_FAT16_FILE_OPEN
      001A63 E5 82            [12] 5565 	mov	a,dpl
      001A65 70 11            [24] 5566 	jnz	00114$
                                   5567 ;	main.c:194: UartPrint(DEFAULT_LOAD_FILENAME);
      001A67 90 1E FE         [24] 5568 	mov	dptr,#___str_22
      001A6A 75 F0 80         [24] 5569 	mov	b,#0x80
      001A6D 12 01 EC         [24] 5570 	lcall	_UartPrint
                                   5571 ;	main.c:195: UartWrite('\n');
      001A70 75 82 0A         [24] 5572 	mov	dpl,#0x0a
      001A73 12 01 66         [24] 5573 	lcall	_UartWrite
                                   5574 ;	main.c:200: do{}
      001A76 80 07            [24] 5575 	sjmp	00168$
      001A78                       5576 00114$:
                                   5577 ;	main.c:201: while(SelectFileAndFileOpen());
      001A78 12 19 4D         [24] 5578 	lcall	_SelectFileAndFileOpen
      001A7B E5 82            [12] 5579 	mov	a,dpl
      001A7D 70 F9            [24] 5580 	jnz	00114$
                                   5581 ;	main.c:204: while(1)
      001A7F                       5582 00168$:
      001A7F                       5583 00131$:
                                   5584 ;	main.c:206: xram_addr=(__xdata unsigned char*)(uint16_t)__global_rootEntry.bytes_read;        
      001A7F 78 7E            [12] 5585 	mov	r0,#(___global_rootEntry + 0x0014)
      001A81 86 06            [24] 5586 	mov	ar6,@r0
      001A83 08               [12] 5587 	inc	r0
      001A84 86 07            [24] 5588 	mov	ar7,@r0
                                   5589 ;	main.c:207: _resp=FAT16_FILE_READ(FILE_BUFF_SIZE,buff);
      001A86 C0 07            [24] 5590 	push	ar7
      001A88 C0 06            [24] 5591 	push	ar6
      001A8A 74 2C            [12] 5592 	mov	a,#_main_buff_65536_222
      001A8C C0 E0            [24] 5593 	push	acc
      001A8E 74 00            [12] 5594 	mov	a,#(_main_buff_65536_222 >> 8)
      001A90 C0 E0            [24] 5595 	push	acc
      001A92 74 40            [12] 5596 	mov	a,#0x40
      001A94 C0 E0            [24] 5597 	push	acc
      001A96 75 82 10         [24] 5598 	mov	dpl,#0x10
      001A99 12 13 DD         [24] 5599 	lcall	_FAT16_FILE_READ
      001A9C AD 82            [24] 5600 	mov	r5,dpl
      001A9E 15 81            [12] 5601 	dec	sp
      001AA0 15 81            [12] 5602 	dec	sp
      001AA2 15 81            [12] 5603 	dec	sp
      001AA4 D0 06            [24] 5604 	pop	ar6
      001AA6 D0 07            [24] 5605 	pop	ar7
                                   5606 ;	main.c:208: if(_resp==0) 
      001AA8 ED               [12] 5607 	mov	a,r5
      001AA9 70 0C            [24] 5608 	jnz	00163$
                                   5609 ;	main.c:210: UartPrint("\n<RUN>\n");
      001AAB 90 1F 05         [24] 5610 	mov	dptr,#___str_23
      001AAE 75 F0 80         [24] 5611 	mov	b,#0x80
      001AB1 12 01 EC         [24] 5612 	lcall	_UartPrint
                                   5613 ;	main.c:211: break;
      001AB4 02 1B 40         [24] 5614 	ljmp	00132$
                                   5615 ;	main.c:213: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001AB7                       5616 00163$:
      001AB7 7D 00            [12] 5617 	mov	r5,#0x00
      001AB9                       5618 00143$:
      001AB9 BD 10 00         [24] 5619 	cjne	r5,#0x10,00248$
      001ABC                       5620 00248$:
      001ABC 50 12            [24] 5621 	jnc	00121$
                                   5622 ;	main.c:219: *(xram_addr+i) = buff[i];
      001ABE ED               [12] 5623 	mov	a,r5
      001ABF 2E               [12] 5624 	add	a,r6
      001AC0 F5 82            [12] 5625 	mov	dpl,a
      001AC2 E4               [12] 5626 	clr	a
      001AC3 3F               [12] 5627 	addc	a,r7
      001AC4 F5 83            [12] 5628 	mov	dph,a
      001AC6 ED               [12] 5629 	mov	a,r5
      001AC7 24 2C            [12] 5630 	add	a,#_main_buff_65536_222
      001AC9 F9               [12] 5631 	mov	r1,a
      001ACA E7               [12] 5632 	mov	a,@r1
      001ACB FC               [12] 5633 	mov	r4,a
      001ACC F0               [24] 5634 	movx	@dptr,a
                                   5635 ;	main.c:213: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001ACD 0D               [12] 5636 	inc	r5
      001ACE 80 E9            [24] 5637 	sjmp	00143$
      001AD0                       5638 00121$:
                                   5639 ;	main.c:223: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001AD0 7D 00            [12] 5640 	mov	r5,#0x00
      001AD2                       5641 00146$:
      001AD2 BD 10 00         [24] 5642 	cjne	r5,#0x10,00250$
      001AD5                       5643 00250$:
      001AD5 50 24            [24] 5644 	jnc	00127$
                                   5645 ;	main.c:225: if(buff[i]!=*(xram_addr+i)) 
      001AD7 ED               [12] 5646 	mov	a,r5
      001AD8 24 2C            [12] 5647 	add	a,#_main_buff_65536_222
      001ADA F9               [12] 5648 	mov	r1,a
      001ADB 87 04            [24] 5649 	mov	ar4,@r1
      001ADD ED               [12] 5650 	mov	a,r5
      001ADE 2E               [12] 5651 	add	a,r6
      001ADF F5 82            [12] 5652 	mov	dpl,a
      001AE1 E4               [12] 5653 	clr	a
      001AE2 3F               [12] 5654 	addc	a,r7
      001AE3 F5 83            [12] 5655 	mov	dph,a
      001AE5 E0               [24] 5656 	movx	a,@dptr
      001AE6 FB               [12] 5657 	mov	r3,a
      001AE7 EC               [12] 5658 	mov	a,r4
      001AE8 B5 03 02         [24] 5659 	cjne	a,ar3,00252$
      001AEB 80 0B            [24] 5660 	sjmp	00147$
      001AED                       5661 00252$:
                                   5662 ;	main.c:227: UartPrint("\nVerif. fail");
      001AED 90 1F 0D         [24] 5663 	mov	dptr,#___str_24
      001AF0 75 F0 80         [24] 5664 	mov	b,#0x80
      001AF3 12 01 EC         [24] 5665 	lcall	_UartPrint
                                   5666 ;	main.c:229: while(1);
      001AF6                       5667 00123$:
      001AF6 80 FE            [24] 5668 	sjmp	00123$
      001AF8                       5669 00147$:
                                   5670 ;	main.c:223: for(uint8_t i=0;i<FILE_BUFF_SIZE;i++)
      001AF8 0D               [12] 5671 	inc	r5
      001AF9 80 D7            [24] 5672 	sjmp	00146$
      001AFB                       5673 00127$:
                                   5674 ;	main.c:235: if(__global_rootEntry.bytes_read % 64 == 0)
      001AFB 78 7E            [12] 5675 	mov	r0,#(___global_rootEntry + 0x0014)
      001AFD 86 04            [24] 5676 	mov	ar4,@r0
      001AFF 08               [12] 5677 	inc	r0
      001B00 86 05            [24] 5678 	mov	ar5,@r0
      001B02 08               [12] 5679 	inc	r0
      001B03 86 06            [24] 5680 	mov	ar6,@r0
      001B05 08               [12] 5681 	inc	r0
      001B06 86 07            [24] 5682 	mov	ar7,@r0
      001B08 EC               [12] 5683 	mov	a,r4
      001B09 54 3F            [12] 5684 	anl	a,#0x3f
      001B0B 60 03            [24] 5685 	jz	00254$
      001B0D 02 1A 7F         [24] 5686 	ljmp	00131$
      001B10                       5687 00254$:
                                   5688 ;	main.c:238: UartPrintNumber(__global_rootEntry.bytes_read);
      001B10 8C 82            [24] 5689 	mov	dpl,r4
      001B12 8D 83            [24] 5690 	mov	dph,r5
      001B14 8E F0            [24] 5691 	mov	b,r6
      001B16 EF               [12] 5692 	mov	a,r7
      001B17 12 03 32         [24] 5693 	lcall	_UartPrintNumber
                                   5694 ;	main.c:239: UartWrite('/');
      001B1A 75 82 2F         [24] 5695 	mov	dpl,#0x2f
      001B1D 12 01 66         [24] 5696 	lcall	_UartWrite
                                   5697 ;	main.c:240: UartPrintNumber(__global_rootEntry.size);
      001B20 78 78            [12] 5698 	mov	r0,#(___global_rootEntry + 0x000e)
      001B22 86 04            [24] 5699 	mov	ar4,@r0
      001B24 08               [12] 5700 	inc	r0
      001B25 86 05            [24] 5701 	mov	ar5,@r0
      001B27 08               [12] 5702 	inc	r0
      001B28 86 06            [24] 5703 	mov	ar6,@r0
      001B2A 08               [12] 5704 	inc	r0
      001B2B 86 07            [24] 5705 	mov	ar7,@r0
      001B2D 8C 82            [24] 5706 	mov	dpl,r4
      001B2F 8D 83            [24] 5707 	mov	dph,r5
      001B31 8E F0            [24] 5708 	mov	b,r6
      001B33 EF               [12] 5709 	mov	a,r7
      001B34 12 03 32         [24] 5710 	lcall	_UartPrintNumber
                                   5711 ;	main.c:241: UartWrite('\r');
      001B37 75 82 0D         [24] 5712 	mov	dpl,#0x0d
      001B3A 12 01 66         [24] 5713 	lcall	_UartWrite
      001B3D 02 1A 7F         [24] 5714 	ljmp	00131$
      001B40                       5715 00132$:
                                   5716 ;	main.c:247: enterApp();
      001B40 12 00 69         [24] 5717 	lcall	_enterApp
                                   5718 ;	main.c:250: while(1);    
      001B43                       5719 00134$:
                                   5720 ;	main.c:252: }
      001B43 80 FE            [24] 5721 	sjmp	00134$
                                   5722 	.area CSEG    (CODE)
                                   5723 	.area CONST   (CODE)
                                   5724 	.area CONST   (CODE)
      001E05                       5725 ___str_0:
      001E05 4E 75 6D 62 65 72 28  5726 	.ascii "Number(hex) < "
             68 65 78 29 20 3C 20
      001E13 00                    5727 	.db 0x00
                                   5728 	.area CSEG    (CODE)
                                   5729 	.area CONST   (CODE)
      001E14                       5730 ___str_1:
      001E14 0A                    5731 	.db 0x0a
      001E15 52 4F 4F 54 5F 45 4E  5732 	.ascii "ROOT_ENTRY_INDEX:"
             54 52 59 5F 49 4E 44
             45 58 3A
      001E26 00                    5733 	.db 0x00
                                   5734 	.area CSEG    (CODE)
                                   5735 	.area CONST   (CODE)
      001E27                       5736 ___str_2:
      001E27 0A                    5737 	.db 0x0a
      001E28 46 49 4C 45 3A 20     5738 	.ascii "FILE: "
      001E2E 00                    5739 	.db 0x00
                                   5740 	.area CSEG    (CODE)
                                   5741 	.area CONST   (CODE)
      001E2F                       5742 ___str_3:
      001E2F 0A                    5743 	.db 0x0a
      001E30 53 54 41 52 54 3A 20  5744 	.ascii "START: "
      001E37 00                    5745 	.db 0x00
                                   5746 	.area CSEG    (CODE)
                                   5747 	.area CONST   (CODE)
      001E38                       5748 ___str_4:
      001E38 0A                    5749 	.db 0x0a
      001E39 53 49 5A 45 3A 20     5750 	.ascii "SIZE: "
      001E3F 00                    5751 	.db 0x00
                                   5752 	.area CSEG    (CODE)
                                   5753 	.area CONST   (CODE)
      001E40                       5754 ___str_5:
      001E40 0A                    5755 	.db 0x0a
      001E41 41 54 54 52 3A 20 30  5756 	.ascii "ATTR: 0x"
             78
      001E49 00                    5757 	.db 0x00
                                   5758 	.area CSEG    (CODE)
      001B45                       5759 _FAT16_FILE_READ_power2error_65536_184:
      001B45 6E 62 79 74 65 73 20  5760 	.ascii "nbytes must be power of 2"
             6D 75 73 74 20 62 65
             20 70 6F 77 65 72 20
             6F 66 20 32
      001B5E 0A                    5761 	.db 0x0a
      001B5F 00                    5762 	.db 0x00
                                   5763 	.area CONST   (CODE)
      001E4A                       5764 ___str_7:
      001E4A 46 49 4C 45 20 4E 4F  5765 	.ascii "FILE NOT FOUND"
             54 20 46 4F 55 4E 44
      001E58 0A                    5766 	.db 0x0a
      001E59 2E                    5767 	.ascii "."
      001E5A 00                    5768 	.db 0x00
                                   5769 	.area CSEG    (CODE)
      001B60                       5770 _SERIAL_LOADER_VERSION_INFO:
      001B60 49 53 41 3A 53 30 3A  5771 	.ascii "ISA:S0:8052"
             38 30 35 32
      001B6B 0A                    5772 	.db 0x0a
      001B6C 00                    5773 	.db 0x00
      001B6D                       5774 _SelectFAT16PartitionPrompt_HALTING_MSG_65536_203:
      001B6D 48 41 4C 54 21        5775 	.ascii "HALT!"
      001B72 00                    5776 	.db 0x00
                                   5777 	.area CONST   (CODE)
      001E5B                       5778 ___str_9:
      001E5B 42 41 44 20 4D 42 52  5779 	.ascii "BAD MBR!"
             21
      001E63 0A                    5780 	.db 0x0a
      001E64 00                    5781 	.db 0x00
                                   5782 	.area CSEG    (CODE)
                                   5783 	.area CONST   (CODE)
      001E65                       5784 ___str_10:
      001E65 50 74 6E 2E 20        5785 	.ascii "Ptn. "
      001E6A 00                    5786 	.db 0x00
                                   5787 	.area CSEG    (CODE)
                                   5788 	.area CONST   (CODE)
      001E6B                       5789 ___str_11:
      001E6B 46 41 54 31 36        5790 	.ascii "FAT16"
      001E70 0A                    5791 	.db 0x0a
      001E71 00                    5792 	.db 0x00
                                   5793 	.area CSEG    (CODE)
                                   5794 	.area CONST   (CODE)
      001E72                       5795 ___str_12:
      001E72 55 6E 6B 6E 6F 77 6E  5796 	.ascii "Unknown"
      001E79 0A                    5797 	.db 0x0a
      001E7A 00                    5798 	.db 0x00
                                   5799 	.area CSEG    (CODE)
                                   5800 	.area CONST   (CODE)
      001E7B                       5801 ___str_13:
      001E7B 53 6C 63 74 20 50 74  5802 	.ascii "Slct Ptn. >"
             6E 2E 20 3E
      001E86 0A                    5803 	.db 0x0a
      001E87 00                    5804 	.db 0x00
                                   5805 	.area CSEG    (CODE)
                                   5806 	.area CONST   (CODE)
      001E88                       5807 ___str_14:
      001E88 0A                    5808 	.db 0x0a
      001E89 0A                    5809 	.db 0x0a
      001E8A 50 74 6E 2E 20 4D 6F  5810 	.ascii "Ptn. Mounted:"
             75 6E 74 65 64 3A
      001E97 00                    5811 	.db 0x00
                                   5812 	.area CSEG    (CODE)
                                   5813 	.area CONST   (CODE)
      001E98                       5814 ___str_15:
      001E98 0A                    5815 	.db 0x0a
      001E99 42 61 64 20 50 74 6E  5816 	.ascii "Bad Ptn."
             2E
      001EA1 0A                    5817 	.db 0x0a
      001EA2 00                    5818 	.db 0x00
                                   5819 	.area CSEG    (CODE)
                                   5820 	.area CONST   (CODE)
      001EA3                       5821 ___str_16:
      001EA3 4E 6F 20 46 41 54 31  5822 	.ascii "No FAT16 Ptn."
             36 20 50 74 6E 2E
      001EB0 0A                    5823 	.db 0x0a
      001EB1 00                    5824 	.db 0x00
                                   5825 	.area CSEG    (CODE)
                                   5826 	.area CONST   (CODE)
      001EB2                       5827 ___str_17:
      001EB2 0A                    5828 	.db 0x0a
      001EB3 49 4E 44 45 58        5829 	.ascii "INDEX"
      001EB8 09                    5830 	.db 0x09
      001EB9 09                    5831 	.db 0x09
      001EBA 46 49 4C 45           5832 	.ascii "FILE"
      001EBE 0A                    5833 	.db 0x0a
      001EBF 00                    5834 	.db 0x00
                                   5835 	.area CSEG    (CODE)
                                   5836 	.area CONST   (CODE)
      001EC0                       5837 ___str_18:
      001EC0 0A                    5838 	.db 0x0a
      001EC1 53 6C 63 74 20 69 6E  5839 	.ascii "Slct index >"
             64 65 78 20 3E
      001ECD 0A                    5840 	.db 0x0a
      001ECE 00                    5841 	.db 0x00
                                   5842 	.area CSEG    (CODE)
                                   5843 	.area CONST   (CODE)
      001ECF                       5844 ___str_19:
      001ECF 0A                    5845 	.db 0x0a
      001ED0 49 6E 76 61 6C 69 64  5846 	.ascii "Invalid Entry !"
             20 45 6E 74 72 79 20
             21
      001EDF 0A                    5847 	.db 0x0a
      001EE0 00                    5848 	.db 0x00
                                   5849 	.area CSEG    (CODE)
                                   5850 	.area CONST   (CODE)
      001EE1                       5851 ___str_20:
      001EE1 0A                    5852 	.db 0x0a
      001EE2 53 59 41 4D 50 55 54  5853 	.ascii "SYAMPUTER:V0"
             45 52 3A 56 30
      001EEE 0A                    5854 	.db 0x0a
      001EEF 00                    5855 	.db 0x00
                                   5856 	.area CSEG    (CODE)
                                   5857 	.area CONST   (CODE)
      001EF0                       5858 ___str_21:
      001EF0 49 53 41 3A 46 53 30  5859 	.ascii "ISA:FS0:8052"
             3A 38 30 35 32
      001EFC 0A                    5860 	.db 0x0a
      001EFD 00                    5861 	.db 0x00
                                   5862 	.area CSEG    (CODE)
                                   5863 	.area CONST   (CODE)
      001EFE                       5864 ___str_22:
      001EFE 46 57 2E 42 49 4E     5865 	.ascii "FW.BIN"
      001F04 00                    5866 	.db 0x00
                                   5867 	.area CSEG    (CODE)
                                   5868 	.area CONST   (CODE)
      001F05                       5869 ___str_23:
      001F05 0A                    5870 	.db 0x0a
      001F06 3C 52 55 4E 3E        5871 	.ascii "<RUN>"
      001F0B 0A                    5872 	.db 0x0a
      001F0C 00                    5873 	.db 0x00
                                   5874 	.area CSEG    (CODE)
                                   5875 	.area CONST   (CODE)
      001F0D                       5876 ___str_24:
      001F0D 0A                    5877 	.db 0x0a
      001F0E 56 65 72 69 66 2E 20  5878 	.ascii "Verif. fail"
             66 61 69 6C
      001F19 00                    5879 	.db 0x00
                                   5880 	.area CSEG    (CODE)
                                   5881 	.area XINIT   (CODE)
                                   5882 	.area CABS    (ABS,CODE)
