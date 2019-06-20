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
                                     16 	.globl _setup
                                     17 	.globl _SelectFileAndFileOpen
                                     18 	.globl _SelectFAT16PartitionPrompt
                                     19 	.globl _delay
                                     20 	.globl _SL_getcmd
                                     21 	.globl _SL_read
                                     22 	.globl _SL_write
                                     23 	.globl _SL_enable_write_protection
                                     24 	.globl _SL_disable_write_protection
                                     25 	.globl _delay_ms
                                     26 	.globl _FAT16_FILE_CAT
                                     27 	.globl _FAT16_FILE_READ
                                     28 	.globl _FAT16_GET_NEXT_CLUSTER
                                     29 	.globl _FAT16_FILE_OPEN
                                     30 	.globl _FAT16_ROOTENTRY_SCAN
                                     31 	.globl _FAT16_ROOTENTRY_SCAN_RESET
                                     32 	.globl _FAT16_ROOTENTRY_READ
                                     33 	.globl _FAT16_IS_ROOTENTRY_VALID_FILE
                                     34 	.globl _FAT16_LOAD_ROOTENTRY
                                     35 	.globl _FAT16_ROOTENTRY_DUMP
                                     36 	.globl _VBR_FAT16_CHECK_COMPATIBILITY
                                     37 	.globl _VBR_MOUNT_VBR
                                     38 	.globl _VBR_DUMP
                                     39 	.globl _MBR_DETECT_FAT16
                                     40 	.globl _MBR_LOAD_PARTITION_TABLE_ENTRY
                                     41 	.globl _MBR_CHECK__SIGNATURE
                                     42 	.globl _HELPER_filename_to_8dot3filename
                                     43 	.globl _HELPER_to_uppercase
                                     44 	.globl _HELPER_rootentry_type
                                     45 	.globl _HELPER_strlen
                                     46 	.globl _HELPER_strncmp
                                     47 	.globl _HELPER_strcmp
                                     48 	.globl _HELPER_load_littleendian32
                                     49 	.globl _HELPER_load_littleendian16
                                     50 	.globl _SDreadBlock
                                     51 	.globl _SDread
                                     52 	.globl _SDinit
                                     53 	.globl _sd_acmd
                                     54 	.globl _sd_cmd
                                     55 	.globl _sd_initial_clk
                                     56 	.globl _sd_isbusy
                                     57 	.globl _spi_transfer_all
                                     58 	.globl _spi_transfer
                                     59 	.globl _spi_init
                                     60 	.globl _spi_delay
                                     61 	.globl _UartScanLine
                                     62 	.globl _UartScanByte
                                     63 	.globl _UartPrintNumber
                                     64 	.globl _UartWriteNumbers
                                     65 	.globl _UartWriteNumber
                                     66 	.globl _UartPrint
                                     67 	.globl _UartReadBuff
                                     68 	.globl _UartWriteBuff
                                     69 	.globl _UartWrite
                                     70 	.globl _UartRead
                                     71 	.globl _UartReadReady
                                     72 	.globl _UartBegin
                                     73 	.globl _dec2hexNibble
                                     74 	.globl _hex2dec
                                     75 	.globl _hexNibble2dec
                                     76 	.globl _TF2
                                     77 	.globl _EXF2
                                     78 	.globl _RCLK
                                     79 	.globl _TCLK
                                     80 	.globl _EXEN2
                                     81 	.globl _TR2
                                     82 	.globl _C_T2
                                     83 	.globl _CP_RL2
                                     84 	.globl _T2CON_7
                                     85 	.globl _T2CON_6
                                     86 	.globl _T2CON_5
                                     87 	.globl _T2CON_4
                                     88 	.globl _T2CON_3
                                     89 	.globl _T2CON_2
                                     90 	.globl _T2CON_1
                                     91 	.globl _T2CON_0
                                     92 	.globl _PT2
                                     93 	.globl _ET2
                                     94 	.globl _CY
                                     95 	.globl _AC
                                     96 	.globl _F0
                                     97 	.globl _RS1
                                     98 	.globl _RS0
                                     99 	.globl _OV
                                    100 	.globl _F1
                                    101 	.globl _P
                                    102 	.globl _PS
                                    103 	.globl _PT1
                                    104 	.globl _PX1
                                    105 	.globl _PT0
                                    106 	.globl _PX0
                                    107 	.globl _RD
                                    108 	.globl _WR
                                    109 	.globl _T1
                                    110 	.globl _T0
                                    111 	.globl _INT1
                                    112 	.globl _INT0
                                    113 	.globl _TXD
                                    114 	.globl _RXD
                                    115 	.globl _P3_7
                                    116 	.globl _P3_6
                                    117 	.globl _P3_5
                                    118 	.globl _P3_4
                                    119 	.globl _P3_3
                                    120 	.globl _P3_2
                                    121 	.globl _P3_1
                                    122 	.globl _P3_0
                                    123 	.globl _EA
                                    124 	.globl _ES
                                    125 	.globl _ET1
                                    126 	.globl _EX1
                                    127 	.globl _ET0
                                    128 	.globl _EX0
                                    129 	.globl _P2_7
                                    130 	.globl _P2_6
                                    131 	.globl _P2_5
                                    132 	.globl _P2_4
                                    133 	.globl _P2_3
                                    134 	.globl _P2_2
                                    135 	.globl _P2_1
                                    136 	.globl _P2_0
                                    137 	.globl _SM0
                                    138 	.globl _SM1
                                    139 	.globl _SM2
                                    140 	.globl _REN
                                    141 	.globl _TB8
                                    142 	.globl _RB8
                                    143 	.globl _TI
                                    144 	.globl _RI
                                    145 	.globl _P1_7
                                    146 	.globl _P1_6
                                    147 	.globl _P1_5
                                    148 	.globl _P1_4
                                    149 	.globl _P1_3
                                    150 	.globl _P1_2
                                    151 	.globl _P1_1
                                    152 	.globl _P1_0
                                    153 	.globl _TF1
                                    154 	.globl _TR1
                                    155 	.globl _TF0
                                    156 	.globl _TR0
                                    157 	.globl _IE1
                                    158 	.globl _IT1
                                    159 	.globl _IE0
                                    160 	.globl _IT0
                                    161 	.globl _P0_7
                                    162 	.globl _P0_6
                                    163 	.globl _P0_5
                                    164 	.globl _P0_4
                                    165 	.globl _P0_3
                                    166 	.globl _P0_2
                                    167 	.globl _P0_1
                                    168 	.globl _P0_0
                                    169 	.globl _TH2
                                    170 	.globl _TL2
                                    171 	.globl _RCAP2H
                                    172 	.globl _RCAP2L
                                    173 	.globl _T2CON
                                    174 	.globl _B
                                    175 	.globl _ACC
                                    176 	.globl _PSW
                                    177 	.globl _IP
                                    178 	.globl _P3
                                    179 	.globl _IE
                                    180 	.globl _P2
                                    181 	.globl _SBUF
                                    182 	.globl _SCON
                                    183 	.globl _P1
                                    184 	.globl _TH1
                                    185 	.globl _TH0
                                    186 	.globl _TL1
                                    187 	.globl _TL0
                                    188 	.globl _TMOD
                                    189 	.globl _TCON
                                    190 	.globl _PCON
                                    191 	.globl _DPH
                                    192 	.globl _DPL
                                    193 	.globl _SP
                                    194 	.globl _P0
                                    195 	.globl _EEPROM_WRITE_PROTECTION
                                    196 	.globl _HELPER_filename_to_8dot3filename_PARM_2
                                    197 	.globl _SDreadBlock_PARM_2
                                    198 	.globl _sd_acmd_PARM_2
                                    199 	.globl _sd_cmd_PARM_2
                                    200 	.globl _spi_transfer_all_PARM_3
                                    201 	.globl _spi_transfer_all_PARM_2
                                    202 	.globl _UartReadBuff_PARM_2
                                    203 	.globl _UartWriteBuff_PARM_2
                                    204 	.globl _hex2dec_PARM_2
                                    205 ;--------------------------------------------------------
                                    206 ; special function registers
                                    207 ;--------------------------------------------------------
                                    208 	.area RSEG    (ABS,DATA)
      000000                        209 	.org 0x0000
                           000080   210 _P0	=	0x0080
                           000081   211 _SP	=	0x0081
                           000082   212 _DPL	=	0x0082
                           000083   213 _DPH	=	0x0083
                           000087   214 _PCON	=	0x0087
                           000088   215 _TCON	=	0x0088
                           000089   216 _TMOD	=	0x0089
                           00008A   217 _TL0	=	0x008a
                           00008B   218 _TL1	=	0x008b
                           00008C   219 _TH0	=	0x008c
                           00008D   220 _TH1	=	0x008d
                           000090   221 _P1	=	0x0090
                           000098   222 _SCON	=	0x0098
                           000099   223 _SBUF	=	0x0099
                           0000A0   224 _P2	=	0x00a0
                           0000A8   225 _IE	=	0x00a8
                           0000B0   226 _P3	=	0x00b0
                           0000B8   227 _IP	=	0x00b8
                           0000D0   228 _PSW	=	0x00d0
                           0000E0   229 _ACC	=	0x00e0
                           0000F0   230 _B	=	0x00f0
                           0000C8   231 _T2CON	=	0x00c8
                           0000CA   232 _RCAP2L	=	0x00ca
                           0000CB   233 _RCAP2H	=	0x00cb
                           0000CC   234 _TL2	=	0x00cc
                           0000CD   235 _TH2	=	0x00cd
                                    236 ;--------------------------------------------------------
                                    237 ; special function bits
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           000080   241 _P0_0	=	0x0080
                           000081   242 _P0_1	=	0x0081
                           000082   243 _P0_2	=	0x0082
                           000083   244 _P0_3	=	0x0083
                           000084   245 _P0_4	=	0x0084
                           000085   246 _P0_5	=	0x0085
                           000086   247 _P0_6	=	0x0086
                           000087   248 _P0_7	=	0x0087
                           000088   249 _IT0	=	0x0088
                           000089   250 _IE0	=	0x0089
                           00008A   251 _IT1	=	0x008a
                           00008B   252 _IE1	=	0x008b
                           00008C   253 _TR0	=	0x008c
                           00008D   254 _TF0	=	0x008d
                           00008E   255 _TR1	=	0x008e
                           00008F   256 _TF1	=	0x008f
                           000090   257 _P1_0	=	0x0090
                           000091   258 _P1_1	=	0x0091
                           000092   259 _P1_2	=	0x0092
                           000093   260 _P1_3	=	0x0093
                           000094   261 _P1_4	=	0x0094
                           000095   262 _P1_5	=	0x0095
                           000096   263 _P1_6	=	0x0096
                           000097   264 _P1_7	=	0x0097
                           000098   265 _RI	=	0x0098
                           000099   266 _TI	=	0x0099
                           00009A   267 _RB8	=	0x009a
                           00009B   268 _TB8	=	0x009b
                           00009C   269 _REN	=	0x009c
                           00009D   270 _SM2	=	0x009d
                           00009E   271 _SM1	=	0x009e
                           00009F   272 _SM0	=	0x009f
                           0000A0   273 _P2_0	=	0x00a0
                           0000A1   274 _P2_1	=	0x00a1
                           0000A2   275 _P2_2	=	0x00a2
                           0000A3   276 _P2_3	=	0x00a3
                           0000A4   277 _P2_4	=	0x00a4
                           0000A5   278 _P2_5	=	0x00a5
                           0000A6   279 _P2_6	=	0x00a6
                           0000A7   280 _P2_7	=	0x00a7
                           0000A8   281 _EX0	=	0x00a8
                           0000A9   282 _ET0	=	0x00a9
                           0000AA   283 _EX1	=	0x00aa
                           0000AB   284 _ET1	=	0x00ab
                           0000AC   285 _ES	=	0x00ac
                           0000AF   286 _EA	=	0x00af
                           0000B0   287 _P3_0	=	0x00b0
                           0000B1   288 _P3_1	=	0x00b1
                           0000B2   289 _P3_2	=	0x00b2
                           0000B3   290 _P3_3	=	0x00b3
                           0000B4   291 _P3_4	=	0x00b4
                           0000B5   292 _P3_5	=	0x00b5
                           0000B6   293 _P3_6	=	0x00b6
                           0000B7   294 _P3_7	=	0x00b7
                           0000B0   295 _RXD	=	0x00b0
                           0000B1   296 _TXD	=	0x00b1
                           0000B2   297 _INT0	=	0x00b2
                           0000B3   298 _INT1	=	0x00b3
                           0000B4   299 _T0	=	0x00b4
                           0000B5   300 _T1	=	0x00b5
                           0000B6   301 _WR	=	0x00b6
                           0000B7   302 _RD	=	0x00b7
                           0000B8   303 _PX0	=	0x00b8
                           0000B9   304 _PT0	=	0x00b9
                           0000BA   305 _PX1	=	0x00ba
                           0000BB   306 _PT1	=	0x00bb
                           0000BC   307 _PS	=	0x00bc
                           0000D0   308 _P	=	0x00d0
                           0000D1   309 _F1	=	0x00d1
                           0000D2   310 _OV	=	0x00d2
                           0000D3   311 _RS0	=	0x00d3
                           0000D4   312 _RS1	=	0x00d4
                           0000D5   313 _F0	=	0x00d5
                           0000D6   314 _AC	=	0x00d6
                           0000D7   315 _CY	=	0x00d7
                           0000AD   316 _ET2	=	0x00ad
                           0000BD   317 _PT2	=	0x00bd
                           0000C8   318 _T2CON_0	=	0x00c8
                           0000C9   319 _T2CON_1	=	0x00c9
                           0000CA   320 _T2CON_2	=	0x00ca
                           0000CB   321 _T2CON_3	=	0x00cb
                           0000CC   322 _T2CON_4	=	0x00cc
                           0000CD   323 _T2CON_5	=	0x00cd
                           0000CE   324 _T2CON_6	=	0x00ce
                           0000CF   325 _T2CON_7	=	0x00cf
                           0000C8   326 _CP_RL2	=	0x00c8
                           0000C9   327 _C_T2	=	0x00c9
                           0000CA   328 _TR2	=	0x00ca
                           0000CB   329 _EXEN2	=	0x00cb
                           0000CC   330 _TCLK	=	0x00cc
                           0000CD   331 _RCLK	=	0x00cd
                           0000CE   332 _EXF2	=	0x00ce
                           0000CF   333 _TF2	=	0x00cf
                                    334 ;--------------------------------------------------------
                                    335 ; overlayable register banks
                                    336 ;--------------------------------------------------------
                                    337 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        338 	.ds 8
                                    339 ;--------------------------------------------------------
                                    340 ; internal ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area DSEG    (DATA)
      000008                        343 _hex2dec_PARM_2:
      000008                        344 	.ds 1
      000009                        345 _UartWriteBuff_PARM_2:
      000009                        346 	.ds 1
      00000A                        347 _UartReadBuff_PARM_2:
      00000A                        348 	.ds 1
      00000B                        349 _spi_transfer_all_PARM_2:
      00000B                        350 	.ds 1
      00000C                        351 _spi_transfer_all_PARM_3:
      00000C                        352 	.ds 1
      00000D                        353 _sd_cmd_PARM_2:
      00000D                        354 	.ds 4
      000011                        355 _sd_acmd_PARM_2:
      000011                        356 	.ds 4
      000015                        357 _SDreadBlock_PARM_2:
      000015                        358 	.ds 3
      000018                        359 _HELPER_filename_to_8dot3filename_PARM_2:
      000018                        360 	.ds 3
      00001B                        361 _HELPER_filename_to_8dot3filename_fname_65536_125:
      00001B                        362 	.ds 3
      00001E                        363 _HELPER_filename_to_8dot3filename_i_131072_131:
      00001E                        364 	.ds 1
      00001F                        365 _VBR_MOUNT_VBR_sloc0_1_0:
      00001F                        366 	.ds 4
      000023                        367 _FAT16_LOAD_ROOTENTRY_roote_number_65536_155:
      000023                        368 	.ds 2
      000025                        369 _FAT16_LOAD_ROOTENTRY_sloc0_1_0:
      000025                        370 	.ds 4
      000029                        371 _FAT16_LOAD_ROOTENTRY_sloc1_1_0:
      000029                        372 	.ds 2
      00002B                        373 _EEPROM_WRITE_PROTECTION::
      00002B                        374 	.ds 1
      00002C                        375 _main_buff_65536_230:
      00002C                        376 	.ds 16
                                    377 ;--------------------------------------------------------
                                    378 ; overlayable items in internal ram 
                                    379 ;--------------------------------------------------------
                                    380 	.area	OSEG    (OVR,DATA)
                                    381 	.area	OSEG    (OVR,DATA)
                                    382 	.area	OSEG    (OVR,DATA)
                                    383 	.area	OSEG    (OVR,DATA)
                                    384 	.area	OSEG    (OVR,DATA)
                                    385 	.area	OSEG    (OVR,DATA)
      00003D                        386 _spi_transfer_PARM_2:
      00003D                        387 	.ds 1
                                    388 	.area	OSEG    (OVR,DATA)
      00003D                        389 _HELPER_strcmp_PARM_2:
      00003D                        390 	.ds 3
                                    391 	.area	OSEG    (OVR,DATA)
      00003D                        392 _HELPER_strncmp_PARM_2:
      00003D                        393 	.ds 3
      000040                        394 _HELPER_strncmp_PARM_3:
      000040                        395 	.ds 1
                                    396 	.area	OSEG    (OVR,DATA)
                                    397 	.area	OSEG    (OVR,DATA)
                                    398 	.area	OSEG    (OVR,DATA)
                                    399 	.area	OSEG    (OVR,DATA)
                                    400 ;--------------------------------------------------------
                                    401 ; Stack segment in internal ram 
                                    402 ;--------------------------------------------------------
                                    403 	.area	SSEG
      0000C2                        404 __start__stack:
      0000C2                        405 	.ds	1
                                    406 
                                    407 ;--------------------------------------------------------
                                    408 ; indirectly addressable internal ram data
                                    409 ;--------------------------------------------------------
                                    410 	.area ISEG    (DATA)
      000041                        411 ___global_partitionTableEntry:
      000041                        412 	.ds 9
      00004A                        413 ___global_vbr:
      00004A                        414 	.ds 31
      000069                        415 ___global_nthPartitionVBRmounted:
      000069                        416 	.ds 1
      00006A                        417 ___global_rootEntry:
      00006A                        418 	.ds 24
      000082                        419 _MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137:
      000082                        420 	.ds 16
      000092                        421 _VBR_MOUNT_VBR_temp_65536_144:
      000092                        422 	.ds 16
      0000A2                        423 _FAT16_LOAD_ROOTENTRY_temp_65536_156:
      0000A2                        424 	.ds 32
                                    425 ;--------------------------------------------------------
                                    426 ; absolute internal ram data
                                    427 ;--------------------------------------------------------
                                    428 	.area IABS    (ABS,DATA)
                                    429 	.area IABS    (ABS,DATA)
                                    430 ;--------------------------------------------------------
                                    431 ; bit data
                                    432 ;--------------------------------------------------------
                                    433 	.area BSEG    (BIT)
                                    434 ;--------------------------------------------------------
                                    435 ; paged external ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area PSEG    (PAG,XDATA)
                                    438 ;--------------------------------------------------------
                                    439 ; external ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area XSEG    (XDATA)
                                    442 ;--------------------------------------------------------
                                    443 ; absolute external ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area XABS    (ABS,XDATA)
                                    446 ;--------------------------------------------------------
                                    447 ; external initialized ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area XISEG   (XDATA)
                                    450 	.area HOME    (CODE)
                                    451 	.area GSINIT0 (CODE)
                                    452 	.area GSINIT1 (CODE)
                                    453 	.area GSINIT2 (CODE)
                                    454 	.area GSINIT3 (CODE)
                                    455 	.area GSINIT4 (CODE)
                                    456 	.area GSINIT5 (CODE)
                                    457 	.area GSINIT  (CODE)
                                    458 	.area GSFINAL (CODE)
                                    459 	.area CSEG    (CODE)
                                    460 ;--------------------------------------------------------
                                    461 ; interrupt vector 
                                    462 ;--------------------------------------------------------
                                    463 	.area HOME    (CODE)
      000000                        464 __interrupt_vect:
      000000 02 00 06         [24]  465 	ljmp	__sdcc_gsinit_startup
                                    466 ;--------------------------------------------------------
                                    467 ; global & static initialisations
                                    468 ;--------------------------------------------------------
                                    469 	.area HOME    (CODE)
                                    470 	.area GSINIT  (CODE)
                                    471 	.area GSFINAL (CODE)
                                    472 	.area GSINIT  (CODE)
                                    473 	.globl __sdcc_gsinit_startup
                                    474 	.globl __sdcc_program_startup
                                    475 	.globl __start__stack
                                    476 	.globl __mcs51_genXINIT
                                    477 	.globl __mcs51_genXRAMCLEAR
                                    478 	.globl __mcs51_genRAMCLEAR
                                    479 ;	serialloader.h:11: volatile unsigned char EEPROM_WRITE_PROTECTION=1;
      00005F 75 2B 01         [24]  480 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                    481 ;	fat.h:237: __idata static uint8_t __global_nthPartitionVBRmounted=255; //mounted if value is 0-3 for the 4 partitions,else not mounted
      000062 78 69            [12]  482 	mov	r0,#___global_nthPartitionVBRmounted
      000064 76 FF            [12]  483 	mov	@r0,#0xff
                                    484 	.area GSFINAL (CODE)
      000066 02 00 03         [24]  485 	ljmp	__sdcc_program_startup
                                    486 ;--------------------------------------------------------
                                    487 ; Home
                                    488 ;--------------------------------------------------------
                                    489 	.area HOME    (CODE)
                                    490 	.area HOME    (CODE)
      000003                        491 __sdcc_program_startup:
      000003 02 1A E2         [24]  492 	ljmp	_main
                                    493 ;	return from main will return to caller
                                    494 ;--------------------------------------------------------
                                    495 ; code
                                    496 ;--------------------------------------------------------
                                    497 	.area CSEG    (CODE)
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'hexNibble2dec'
                                    500 ;------------------------------------------------------------
                                    501 ;nibble                    Allocated to registers r7 
                                    502 ;------------------------------------------------------------
                                    503 ;	uart.h:6: unsigned char hexNibble2dec(char nibble)
                                    504 ;	-----------------------------------------
                                    505 ;	 function hexNibble2dec
                                    506 ;	-----------------------------------------
      000069                        507 _hexNibble2dec:
                           000007   508 	ar7 = 0x07
                           000006   509 	ar6 = 0x06
                           000005   510 	ar5 = 0x05
                           000004   511 	ar4 = 0x04
                           000003   512 	ar3 = 0x03
                           000002   513 	ar2 = 0x02
                           000001   514 	ar1 = 0x01
                           000000   515 	ar0 = 0x00
      000069 AF 82            [24]  516 	mov	r7,dpl
                                    517 ;	uart.h:8: if('0' <= nibble && nibble <= '9') return nibble - 0x30;
      00006B BF 30 00         [24]  518 	cjne	r7,#0x30,00139$
      00006E                        519 00139$:
      00006E 40 0D            [24]  520 	jc	00110$
      000070 EF               [12]  521 	mov	a,r7
      000071 24 C6            [12]  522 	add	a,#0xff - 0x39
      000073 40 08            [24]  523 	jc	00110$
      000075 8F 06            [24]  524 	mov	ar6,r7
      000077 EE               [12]  525 	mov	a,r6
      000078 24 D0            [12]  526 	add	a,#0xd0
      00007A F5 82            [12]  527 	mov	dpl,a
      00007C 22               [24]  528 	ret
      00007D                        529 00110$:
                                    530 ;	uart.h:9: else if('A' <= nibble && nibble <= 'F') return 10 + nibble - 'A';
      00007D BF 41 00         [24]  531 	cjne	r7,#0x41,00142$
      000080                        532 00142$:
      000080 40 0D            [24]  533 	jc	00106$
      000082 EF               [12]  534 	mov	a,r7
      000083 24 B9            [12]  535 	add	a,#0xff - 0x46
      000085 40 08            [24]  536 	jc	00106$
      000087 8F 06            [24]  537 	mov	ar6,r7
      000089 74 C9            [12]  538 	mov	a,#0xc9
      00008B 2E               [12]  539 	add	a,r6
      00008C F5 82            [12]  540 	mov	dpl,a
      00008E 22               [24]  541 	ret
      00008F                        542 00106$:
                                    543 ;	uart.h:10: else if('a' <= nibble && nibble <= 'f') return 10 + nibble - 'a';
      00008F BF 61 00         [24]  544 	cjne	r7,#0x61,00145$
      000092                        545 00145$:
      000092 40 0B            [24]  546 	jc	00102$
      000094 EF               [12]  547 	mov	a,r7
      000095 24 99            [12]  548 	add	a,#0xff - 0x66
      000097 40 06            [24]  549 	jc	00102$
      000099 74 A9            [12]  550 	mov	a,#0xa9
      00009B 2F               [12]  551 	add	a,r7
      00009C F5 82            [12]  552 	mov	dpl,a
      00009E 22               [24]  553 	ret
      00009F                        554 00102$:
                                    555 ;	uart.h:11: else return 0;
      00009F 75 82 00         [24]  556 	mov	dpl,#0x00
                                    557 ;	uart.h:12: }
      0000A2 22               [24]  558 	ret
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'hex2dec'
                                    561 ;------------------------------------------------------------
                                    562 ;LSnibble                  Allocated with name '_hex2dec_PARM_2'
                                    563 ;MSnibble                  Allocated to registers r7 
                                    564 ;------------------------------------------------------------
                                    565 ;	uart.h:14: unsigned char hex2dec(char MSnibble,char LSnibble)
                                    566 ;	-----------------------------------------
                                    567 ;	 function hex2dec
                                    568 ;	-----------------------------------------
      0000A3                        569 _hex2dec:
                                    570 ;	uart.h:17: return 16*hexNibble2dec(MSnibble) + hexNibble2dec(LSnibble);
      0000A3 12 00 69         [24]  571 	lcall	_hexNibble2dec
      0000A6 E5 82            [12]  572 	mov	a,dpl
      0000A8 C4               [12]  573 	swap	a
      0000A9 54 F0            [12]  574 	anl	a,#0xf0
      0000AB FF               [12]  575 	mov	r7,a
      0000AC 85 08 82         [24]  576 	mov	dpl,_hex2dec_PARM_2
      0000AF C0 07            [24]  577 	push	ar7
      0000B1 12 00 69         [24]  578 	lcall	_hexNibble2dec
      0000B4 AE 82            [24]  579 	mov	r6,dpl
      0000B6 D0 07            [24]  580 	pop	ar7
      0000B8 EE               [12]  581 	mov	a,r6
      0000B9 2F               [12]  582 	add	a,r7
      0000BA F5 82            [12]  583 	mov	dpl,a
                                    584 ;	uart.h:18: }
      0000BC 22               [24]  585 	ret
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'dec2hexNibble'
                                    588 ;------------------------------------------------------------
                                    589 ;dec                       Allocated to registers r7 
                                    590 ;------------------------------------------------------------
                                    591 ;	uart.h:21: unsigned char dec2hexNibble(unsigned char dec)
                                    592 ;	-----------------------------------------
                                    593 ;	 function dec2hexNibble
                                    594 ;	-----------------------------------------
      0000BD                        595 _dec2hexNibble:
                                    596 ;	uart.h:24: if(dec>15) return 'X'; // X for invalid
      0000BD E5 82            [12]  597 	mov	a,dpl
      0000BF FF               [12]  598 	mov	r7,a
      0000C0 24 F0            [12]  599 	add	a,#0xff - 0x0f
      0000C2 50 04            [24]  600 	jnc	00102$
      0000C4 75 82 58         [24]  601 	mov	dpl,#0x58
      0000C7 22               [24]  602 	ret
      0000C8                        603 00102$:
                                    604 ;	uart.h:26: if(dec<=9) return 0x30 + dec;
      0000C8 EF               [12]  605 	mov	a,r7
      0000C9 24 F6            [12]  606 	add	a,#0xff - 0x09
      0000CB 40 08            [24]  607 	jc	00104$
      0000CD 8F 06            [24]  608 	mov	ar6,r7
      0000CF 74 30            [12]  609 	mov	a,#0x30
      0000D1 2E               [12]  610 	add	a,r6
      0000D2 F5 82            [12]  611 	mov	dpl,a
      0000D4 22               [24]  612 	ret
      0000D5                        613 00104$:
                                    614 ;	uart.h:27: else return 'A' + dec - 10;
      0000D5 74 37            [12]  615 	mov	a,#0x37
      0000D7 2F               [12]  616 	add	a,r7
      0000D8 F5 82            [12]  617 	mov	dpl,a
                                    618 ;	uart.h:28: }
      0000DA 22               [24]  619 	ret
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'UartBegin'
                                    622 ;------------------------------------------------------------
                                    623 ;	uart.h:33: void UartBegin()
                                    624 ;	-----------------------------------------
                                    625 ;	 function UartBegin
                                    626 ;	-----------------------------------------
      0000DB                        627 _UartBegin:
                                    628 ;	uart.h:37: TMOD = 0X20; //TIMER1 8 BIT AUTO-RELOAD
      0000DB 75 89 20         [24]  629 	mov	_TMOD,#0x20
                                    630 ;	uart.h:39: TH1 = 0XF3; //2400
      0000DE 75 8D F3         [24]  631 	mov	_TH1,#0xf3
                                    632 ;	uart.h:40: SCON = 0X50;
      0000E1 75 98 50         [24]  633 	mov	_SCON,#0x50
                                    634 ;	uart.h:42: PCON |= 1<<7; //double the baudrate - 4800
      0000E4 43 87 80         [24]  635 	orl	_PCON,#0x80
                                    636 ;	uart.h:44: TR1 = 1; //START TIMER
                                    637 ;	assignBit
      0000E7 D2 8E            [12]  638 	setb	_TR1
                                    639 ;	uart.h:45: }
      0000E9 22               [24]  640 	ret
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'UartReadReady'
                                    643 ;------------------------------------------------------------
                                    644 ;	uart.h:47: unsigned char UartReadReady()
                                    645 ;	-----------------------------------------
                                    646 ;	 function UartReadReady
                                    647 ;	-----------------------------------------
      0000EA                        648 _UartReadReady:
                                    649 ;	uart.h:49: if(RI==0)return 0; //not received any char
      0000EA 20 98 04         [24]  650 	jb	_RI,00102$
      0000ED 75 82 00         [24]  651 	mov	dpl,#0x00
      0000F0 22               [24]  652 	ret
      0000F1                        653 00102$:
                                    654 ;	uart.h:50: else return 1; //received and ready
      0000F1 75 82 01         [24]  655 	mov	dpl,#0x01
                                    656 ;	uart.h:51: }
      0000F4 22               [24]  657 	ret
                                    658 ;------------------------------------------------------------
                                    659 ;Allocation info for local variables in function 'UartRead'
                                    660 ;------------------------------------------------------------
                                    661 ;value                     Allocated to registers 
                                    662 ;------------------------------------------------------------
                                    663 ;	uart.h:53: unsigned char UartRead()
                                    664 ;	-----------------------------------------
                                    665 ;	 function UartRead
                                    666 ;	-----------------------------------------
      0000F5                        667 _UartRead:
                                    668 ;	uart.h:56: while(RI==0); //wait till RX
      0000F5                        669 00101$:
                                    670 ;	uart.h:57: RI=0;
                                    671 ;	assignBit
      0000F5 10 98 02         [24]  672 	jbc	_RI,00114$
      0000F8 80 FB            [24]  673 	sjmp	00101$
      0000FA                        674 00114$:
                                    675 ;	uart.h:58: value = SBUF;
      0000FA 85 99 82         [24]  676 	mov	dpl,_SBUF
                                    677 ;	uart.h:59: return value;
                                    678 ;	uart.h:60: }
      0000FD 22               [24]  679 	ret
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'UartWrite'
                                    682 ;------------------------------------------------------------
                                    683 ;value                     Allocated to registers 
                                    684 ;------------------------------------------------------------
                                    685 ;	uart.h:63: void UartWrite(unsigned char value)
                                    686 ;	-----------------------------------------
                                    687 ;	 function UartWrite
                                    688 ;	-----------------------------------------
      0000FE                        689 _UartWrite:
      0000FE 85 82 99         [24]  690 	mov	_SBUF,dpl
                                    691 ;	uart.h:66: while(TI==0); // wait till TX
      000101                        692 00101$:
                                    693 ;	uart.h:67: TI=0;
                                    694 ;	assignBit
      000101 10 99 02         [24]  695 	jbc	_TI,00114$
      000104 80 FB            [24]  696 	sjmp	00101$
      000106                        697 00114$:
                                    698 ;	uart.h:68: }
      000106 22               [24]  699 	ret
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'UartWriteBuff'
                                    702 ;------------------------------------------------------------
                                    703 ;length                    Allocated with name '_UartWriteBuff_PARM_2'
                                    704 ;p                         Allocated to registers r5 r6 r7 
                                    705 ;i                         Allocated to registers r4 
                                    706 ;------------------------------------------------------------
                                    707 ;	uart.h:70: void UartWriteBuff(unsigned char *p, unsigned char length)
                                    708 ;	-----------------------------------------
                                    709 ;	 function UartWriteBuff
                                    710 ;	-----------------------------------------
      000107                        711 _UartWriteBuff:
      000107 AD 82            [24]  712 	mov	r5,dpl
      000109 AE 83            [24]  713 	mov	r6,dph
      00010B AF F0            [24]  714 	mov	r7,b
                                    715 ;	uart.h:73: for (i=0;i<length;i++)
      00010D 7C 00            [12]  716 	mov	r4,#0x00
      00010F                        717 00103$:
      00010F C3               [12]  718 	clr	c
      000110 EC               [12]  719 	mov	a,r4
      000111 95 09            [12]  720 	subb	a,_UartWriteBuff_PARM_2
      000113 50 29            [24]  721 	jnc	00105$
                                    722 ;	uart.h:75: UartWrite(p[i]);
      000115 EC               [12]  723 	mov	a,r4
      000116 2D               [12]  724 	add	a,r5
      000117 F9               [12]  725 	mov	r1,a
      000118 E4               [12]  726 	clr	a
      000119 3E               [12]  727 	addc	a,r6
      00011A FA               [12]  728 	mov	r2,a
      00011B 8F 03            [24]  729 	mov	ar3,r7
      00011D 89 82            [24]  730 	mov	dpl,r1
      00011F 8A 83            [24]  731 	mov	dph,r2
      000121 8B F0            [24]  732 	mov	b,r3
      000123 12 1D 20         [24]  733 	lcall	__gptrget
      000126 F5 82            [12]  734 	mov	dpl,a
      000128 C0 07            [24]  735 	push	ar7
      00012A C0 06            [24]  736 	push	ar6
      00012C C0 05            [24]  737 	push	ar5
      00012E C0 04            [24]  738 	push	ar4
      000130 12 00 FE         [24]  739 	lcall	_UartWrite
      000133 D0 04            [24]  740 	pop	ar4
      000135 D0 05            [24]  741 	pop	ar5
      000137 D0 06            [24]  742 	pop	ar6
      000139 D0 07            [24]  743 	pop	ar7
                                    744 ;	uart.h:73: for (i=0;i<length;i++)
      00013B 0C               [12]  745 	inc	r4
      00013C 80 D1            [24]  746 	sjmp	00103$
      00013E                        747 00105$:
                                    748 ;	uart.h:77: }
      00013E 22               [24]  749 	ret
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'UartReadBuff'
                                    752 ;------------------------------------------------------------
                                    753 ;length                    Allocated with name '_UartReadBuff_PARM_2'
                                    754 ;p                         Allocated to registers r5 r6 r7 
                                    755 ;i                         Allocated to registers r4 
                                    756 ;------------------------------------------------------------
                                    757 ;	uart.h:79: void UartReadBuff(unsigned char *p, unsigned char length)
                                    758 ;	-----------------------------------------
                                    759 ;	 function UartReadBuff
                                    760 ;	-----------------------------------------
      00013F                        761 _UartReadBuff:
      00013F AD 82            [24]  762 	mov	r5,dpl
      000141 AE 83            [24]  763 	mov	r6,dph
      000143 AF F0            [24]  764 	mov	r7,b
                                    765 ;	uart.h:82: for (i=0;i<length;i++)
      000145 7C 00            [12]  766 	mov	r4,#0x00
      000147                        767 00103$:
      000147 C3               [12]  768 	clr	c
      000148 EC               [12]  769 	mov	a,r4
      000149 95 0A            [12]  770 	subb	a,_UartReadBuff_PARM_2
      00014B 50 36            [24]  771 	jnc	00105$
                                    772 ;	uart.h:84: p[i] = UartRead();
      00014D EC               [12]  773 	mov	a,r4
      00014E 2D               [12]  774 	add	a,r5
      00014F F9               [12]  775 	mov	r1,a
      000150 E4               [12]  776 	clr	a
      000151 3E               [12]  777 	addc	a,r6
      000152 FA               [12]  778 	mov	r2,a
      000153 8F 03            [24]  779 	mov	ar3,r7
      000155 C0 07            [24]  780 	push	ar7
      000157 C0 06            [24]  781 	push	ar6
      000159 C0 05            [24]  782 	push	ar5
      00015B C0 04            [24]  783 	push	ar4
      00015D C0 03            [24]  784 	push	ar3
      00015F C0 02            [24]  785 	push	ar2
      000161 C0 01            [24]  786 	push	ar1
      000163 12 00 F5         [24]  787 	lcall	_UartRead
      000166 A8 82            [24]  788 	mov	r0,dpl
      000168 D0 01            [24]  789 	pop	ar1
      00016A D0 02            [24]  790 	pop	ar2
      00016C D0 03            [24]  791 	pop	ar3
      00016E D0 04            [24]  792 	pop	ar4
      000170 D0 05            [24]  793 	pop	ar5
      000172 D0 06            [24]  794 	pop	ar6
      000174 D0 07            [24]  795 	pop	ar7
      000176 89 82            [24]  796 	mov	dpl,r1
      000178 8A 83            [24]  797 	mov	dph,r2
      00017A 8B F0            [24]  798 	mov	b,r3
      00017C E8               [12]  799 	mov	a,r0
      00017D 12 1C 2D         [24]  800 	lcall	__gptrput
                                    801 ;	uart.h:82: for (i=0;i<length;i++)
      000180 0C               [12]  802 	inc	r4
      000181 80 C4            [24]  803 	sjmp	00103$
      000183                        804 00105$:
                                    805 ;	uart.h:86: }
      000183 22               [24]  806 	ret
                                    807 ;------------------------------------------------------------
                                    808 ;Allocation info for local variables in function 'UartPrint'
                                    809 ;------------------------------------------------------------
                                    810 ;p                         Allocated to registers 
                                    811 ;------------------------------------------------------------
                                    812 ;	uart.h:88: void UartPrint(unsigned char *p)
                                    813 ;	-----------------------------------------
                                    814 ;	 function UartPrint
                                    815 ;	-----------------------------------------
      000184                        816 _UartPrint:
      000184 AD 82            [24]  817 	mov	r5,dpl
      000186 AE 83            [24]  818 	mov	r6,dph
      000188 AF F0            [24]  819 	mov	r7,b
                                    820 ;	uart.h:90: do
      00018A                        821 00101$:
                                    822 ;	uart.h:92: UartWrite(*p);
      00018A 8D 82            [24]  823 	mov	dpl,r5
      00018C 8E 83            [24]  824 	mov	dph,r6
      00018E 8F F0            [24]  825 	mov	b,r7
      000190 12 1D 20         [24]  826 	lcall	__gptrget
      000193 FC               [12]  827 	mov	r4,a
      000194 A3               [24]  828 	inc	dptr
      000195 AD 82            [24]  829 	mov	r5,dpl
      000197 AE 83            [24]  830 	mov	r6,dph
      000199 8C 82            [24]  831 	mov	dpl,r4
      00019B C0 07            [24]  832 	push	ar7
      00019D C0 06            [24]  833 	push	ar6
      00019F C0 05            [24]  834 	push	ar5
      0001A1 12 00 FE         [24]  835 	lcall	_UartWrite
      0001A4 D0 05            [24]  836 	pop	ar5
      0001A6 D0 06            [24]  837 	pop	ar6
      0001A8 D0 07            [24]  838 	pop	ar7
                                    839 ;	uart.h:93: }while(*(++p)!=0);
      0001AA 8D 82            [24]  840 	mov	dpl,r5
      0001AC 8E 83            [24]  841 	mov	dph,r6
      0001AE 8F F0            [24]  842 	mov	b,r7
      0001B0 12 1D 20         [24]  843 	lcall	__gptrget
      0001B3 70 D5            [24]  844 	jnz	00101$
                                    845 ;	uart.h:94: }
      0001B5 22               [24]  846 	ret
                                    847 ;------------------------------------------------------------
                                    848 ;Allocation info for local variables in function 'UartWriteNumber'
                                    849 ;------------------------------------------------------------
                                    850 ;format                    Allocated to stack - _bp -3
                                    851 ;num                       Allocated to registers r7 
                                    852 ;msd                       Allocated to registers r4 
                                    853 ;lsd                       Allocated to registers r6 
                                    854 ;extra                     Allocated to registers r3 
                                    855 ;------------------------------------------------------------
                                    856 ;	uart.h:99: void UartWriteNumber(unsigned char num,unsigned char format) __reentrant
                                    857 ;	-----------------------------------------
                                    858 ;	 function UartWriteNumber
                                    859 ;	-----------------------------------------
      0001B6                        860 _UartWriteNumber:
      0001B6 C0 3C            [24]  861 	push	_bp
      0001B8 85 81 3C         [24]  862 	mov	_bp,sp
      0001BB AF 82            [24]  863 	mov	r7,dpl
                                    864 ;	uart.h:104: if(format==HEX)
      0001BD E5 3C            [12]  865 	mov	a,_bp
      0001BF 24 FD            [12]  866 	add	a,#0xfd
      0001C1 F8               [12]  867 	mov	r0,a
      0001C2 E6               [12]  868 	mov	a,@r0
                                    869 ;	uart.h:106: msd = num/16;
      0001C3 70 32            [24]  870 	jnz	00104$
      0001C5 8F 05            [24]  871 	mov	ar5,r7
      0001C7 FE               [12]  872 	mov	r6,a
      0001C8 75 3D 10         [24]  873 	mov	__divsint_PARM_2,#0x10
                                    874 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      0001CB 8E 3E            [24]  875 	mov	(__divsint_PARM_2 + 1),r6
      0001CD 8D 82            [24]  876 	mov	dpl,r5
      0001CF 8E 83            [24]  877 	mov	dph,r6
      0001D1 C0 06            [24]  878 	push	ar6
      0001D3 C0 05            [24]  879 	push	ar5
      0001D5 12 1D 72         [24]  880 	lcall	__divsint
      0001D8 AB 82            [24]  881 	mov	r3,dpl
      0001DA D0 05            [24]  882 	pop	ar5
      0001DC D0 06            [24]  883 	pop	ar6
                                    884 ;	uart.h:107: lsd = num%16;
      0001DE 53 05 0F         [24]  885 	anl	ar5,#0x0f
                                    886 ;	uart.h:108: UartWrite(dec2hexNibble(msd));
      0001E1 8B 82            [24]  887 	mov	dpl,r3
      0001E3 C0 05            [24]  888 	push	ar5
      0001E5 12 00 BD         [24]  889 	lcall	_dec2hexNibble
      0001E8 12 00 FE         [24]  890 	lcall	_UartWrite
      0001EB D0 05            [24]  891 	pop	ar5
                                    892 ;	uart.h:109: UartWrite(dec2hexNibble(lsd));
      0001ED 8D 82            [24]  893 	mov	dpl,r5
      0001EF 12 00 BD         [24]  894 	lcall	_dec2hexNibble
      0001F2 12 00 FE         [24]  895 	lcall	_UartWrite
      0001F5 80 7B            [24]  896 	sjmp	00106$
      0001F7                        897 00104$:
                                    898 ;	uart.h:112: else if(format==DEC)
      0001F7 E5 3C            [12]  899 	mov	a,_bp
      0001F9 24 FD            [12]  900 	add	a,#0xfd
      0001FB F8               [12]  901 	mov	r0,a
      0001FC B6 01 73         [24]  902 	cjne	@r0,#0x01,00106$
                                    903 ;	uart.h:114: msd = num/100; // 100s place
      0001FF 7E 00            [12]  904 	mov	r6,#0x00
      000201 75 3D 64         [24]  905 	mov	__divsint_PARM_2,#0x64
                                    906 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000204 8E 3E            [24]  907 	mov	(__divsint_PARM_2 + 1),r6
      000206 8F 82            [24]  908 	mov	dpl,r7
      000208 8E 83            [24]  909 	mov	dph,r6
      00020A C0 07            [24]  910 	push	ar7
      00020C C0 06            [24]  911 	push	ar6
      00020E 12 1D 72         [24]  912 	lcall	__divsint
      000211 AC 82            [24]  913 	mov	r4,dpl
      000213 D0 06            [24]  914 	pop	ar6
      000215 D0 07            [24]  915 	pop	ar7
                                    916 ;	uart.h:115: extra = (num%100)/10; //tenth place
      000217 75 3D 64         [24]  917 	mov	__modsint_PARM_2,#0x64
      00021A 75 3E 00         [24]  918 	mov	(__modsint_PARM_2 + 1),#0x00
      00021D 8F 82            [24]  919 	mov	dpl,r7
      00021F 8E 83            [24]  920 	mov	dph,r6
      000221 C0 07            [24]  921 	push	ar7
      000223 C0 06            [24]  922 	push	ar6
      000225 C0 04            [24]  923 	push	ar4
      000227 12 1D 3C         [24]  924 	lcall	__modsint
      00022A 75 3D 0A         [24]  925 	mov	__divsint_PARM_2,#0x0a
      00022D 75 3E 00         [24]  926 	mov	(__divsint_PARM_2 + 1),#0x00
      000230 12 1D 72         [24]  927 	lcall	__divsint
      000233 AB 82            [24]  928 	mov	r3,dpl
      000235 D0 04            [24]  929 	pop	ar4
      000237 D0 06            [24]  930 	pop	ar6
      000239 D0 07            [24]  931 	pop	ar7
                                    932 ;	uart.h:116: lsd = num%10;
      00023B 75 3D 0A         [24]  933 	mov	__modsint_PARM_2,#0x0a
      00023E 75 3E 00         [24]  934 	mov	(__modsint_PARM_2 + 1),#0x00
      000241 8F 82            [24]  935 	mov	dpl,r7
      000243 8E 83            [24]  936 	mov	dph,r6
      000245 C0 04            [24]  937 	push	ar4
      000247 C0 03            [24]  938 	push	ar3
      000249 12 1D 3C         [24]  939 	lcall	__modsint
      00024C AE 82            [24]  940 	mov	r6,dpl
      00024E D0 03            [24]  941 	pop	ar3
      000250 D0 04            [24]  942 	pop	ar4
                                    943 ;	uart.h:118: UartWrite(msd + 0x30);
      000252 74 30            [12]  944 	mov	a,#0x30
      000254 2C               [12]  945 	add	a,r4
      000255 F5 82            [12]  946 	mov	dpl,a
      000257 C0 06            [24]  947 	push	ar6
      000259 C0 03            [24]  948 	push	ar3
      00025B 12 00 FE         [24]  949 	lcall	_UartWrite
      00025E D0 03            [24]  950 	pop	ar3
                                    951 ;	uart.h:119: UartWrite(extra + 0x30);
      000260 74 30            [12]  952 	mov	a,#0x30
      000262 2B               [12]  953 	add	a,r3
      000263 F5 82            [12]  954 	mov	dpl,a
      000265 12 00 FE         [24]  955 	lcall	_UartWrite
      000268 D0 06            [24]  956 	pop	ar6
                                    957 ;	uart.h:120: UartWrite(lsd + 0x30);
      00026A 74 30            [12]  958 	mov	a,#0x30
      00026C 2E               [12]  959 	add	a,r6
      00026D F5 82            [12]  960 	mov	dpl,a
      00026F 12 00 FE         [24]  961 	lcall	_UartWrite
      000272                        962 00106$:
                                    963 ;	uart.h:123: }
      000272 D0 3C            [24]  964 	pop	_bp
      000274 22               [24]  965 	ret
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'UartWriteNumbers'
                                    968 ;------------------------------------------------------------
                                    969 ;length                    Allocated to stack - _bp -3
                                    970 ;format                    Allocated to stack - _bp -4
                                    971 ;delimiter                 Allocated to stack - _bp -5
                                    972 ;p                         Allocated to registers 
                                    973 ;i                         Allocated to registers r4 
                                    974 ;------------------------------------------------------------
                                    975 ;	uart.h:125: void UartWriteNumbers(unsigned char *p, unsigned char length,unsigned char format,unsigned char delimiter) __reentrant
                                    976 ;	-----------------------------------------
                                    977 ;	 function UartWriteNumbers
                                    978 ;	-----------------------------------------
      000275                        979 _UartWriteNumbers:
      000275 C0 3C            [24]  980 	push	_bp
      000277 85 81 3C         [24]  981 	mov	_bp,sp
      00027A AD 82            [24]  982 	mov	r5,dpl
      00027C AE 83            [24]  983 	mov	r6,dph
      00027E AF F0            [24]  984 	mov	r7,b
                                    985 ;	uart.h:129: for(i=0;i<length;i++,p++)
      000280 7C 00            [12]  986 	mov	r4,#0x00
      000282                        987 00103$:
      000282 E5 3C            [12]  988 	mov	a,_bp
      000284 24 FD            [12]  989 	add	a,#0xfd
      000286 F8               [12]  990 	mov	r0,a
      000287 C3               [12]  991 	clr	c
      000288 EC               [12]  992 	mov	a,r4
      000289 96               [12]  993 	subb	a,@r0
      00028A 50 3B            [24]  994 	jnc	00105$
                                    995 ;	uart.h:131: UartWriteNumber(*p,format);
      00028C 8D 82            [24]  996 	mov	dpl,r5
      00028E 8E 83            [24]  997 	mov	dph,r6
      000290 8F F0            [24]  998 	mov	b,r7
      000292 12 1D 20         [24]  999 	lcall	__gptrget
      000295 FB               [12] 1000 	mov	r3,a
      000296 A3               [24] 1001 	inc	dptr
      000297 AD 82            [24] 1002 	mov	r5,dpl
      000299 AE 83            [24] 1003 	mov	r6,dph
      00029B C0 07            [24] 1004 	push	ar7
      00029D C0 06            [24] 1005 	push	ar6
      00029F C0 05            [24] 1006 	push	ar5
      0002A1 C0 04            [24] 1007 	push	ar4
      0002A3 E5 3C            [12] 1008 	mov	a,_bp
      0002A5 24 FC            [12] 1009 	add	a,#0xfc
      0002A7 F8               [12] 1010 	mov	r0,a
      0002A8 E6               [12] 1011 	mov	a,@r0
      0002A9 C0 E0            [24] 1012 	push	acc
      0002AB 8B 82            [24] 1013 	mov	dpl,r3
      0002AD 12 01 B6         [24] 1014 	lcall	_UartWriteNumber
      0002B0 15 81            [12] 1015 	dec	sp
                                   1016 ;	uart.h:132: UartWrite(delimiter);
      0002B2 E5 3C            [12] 1017 	mov	a,_bp
      0002B4 24 FB            [12] 1018 	add	a,#0xfb
      0002B6 F8               [12] 1019 	mov	r0,a
      0002B7 86 82            [24] 1020 	mov	dpl,@r0
      0002B9 12 00 FE         [24] 1021 	lcall	_UartWrite
      0002BC D0 04            [24] 1022 	pop	ar4
      0002BE D0 05            [24] 1023 	pop	ar5
      0002C0 D0 06            [24] 1024 	pop	ar6
      0002C2 D0 07            [24] 1025 	pop	ar7
                                   1026 ;	uart.h:129: for(i=0;i<length;i++,p++)
      0002C4 0C               [12] 1027 	inc	r4
      0002C5 80 BB            [24] 1028 	sjmp	00103$
      0002C7                       1029 00105$:
                                   1030 ;	uart.h:134: }
      0002C7 D0 3C            [24] 1031 	pop	_bp
      0002C9 22               [24] 1032 	ret
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'UartPrintNumber'
                                   1035 ;------------------------------------------------------------
                                   1036 ;n                         Allocated to stack - _bp +1
                                   1037 ;digit                     Allocated to stack - _bp +7
                                   1038 ;i                         Allocated to stack - _bp +5
                                   1039 ;j                         Allocated to registers r3 
                                   1040 ;leading_zeroes_flag       Allocated to stack - _bp +6
                                   1041 ;sloc0                     Allocated to stack - _bp +12
                                   1042 ;------------------------------------------------------------
                                   1043 ;	uart.h:136: void UartPrintNumber(unsigned long n) __reentrant
                                   1044 ;	-----------------------------------------
                                   1045 ;	 function UartPrintNumber
                                   1046 ;	-----------------------------------------
      0002CA                       1047 _UartPrintNumber:
      0002CA C0 3C            [24] 1048 	push	_bp
      0002CC 85 81 3C         [24] 1049 	mov	_bp,sp
      0002CF C0 82            [24] 1050 	push	dpl
      0002D1 C0 83            [24] 1051 	push	dph
      0002D3 C0 F0            [24] 1052 	push	b
      0002D5 C0 E0            [24] 1053 	push	acc
      0002D7 E5 81            [12] 1054 	mov	a,sp
      0002D9 24 06            [12] 1055 	add	a,#0x06
      0002DB F5 81            [12] 1056 	mov	sp,a
                                   1057 ;	uart.h:152: char i,j,leading_zeroes_flag=1;
      0002DD E5 3C            [12] 1058 	mov	a,_bp
      0002DF 24 06            [12] 1059 	add	a,#0x06
      0002E1 F8               [12] 1060 	mov	r0,a
      0002E2 76 01            [12] 1061 	mov	@r0,#0x01
                                   1062 ;	uart.h:153: for(i=8;i>0;i--)
      0002E4 E5 3C            [12] 1063 	mov	a,_bp
      0002E6 24 05            [12] 1064 	add	a,#0x05
      0002E8 F8               [12] 1065 	mov	r0,a
      0002E9 76 08            [12] 1066 	mov	@r0,#0x08
      0002EB                       1067 00112$:
                                   1068 ;	uart.h:155: digit=n;
      0002EB A8 3C            [24] 1069 	mov	r0,_bp
      0002ED 08               [12] 1070 	inc	r0
      0002EE E5 3C            [12] 1071 	mov	a,_bp
      0002F0 24 07            [12] 1072 	add	a,#0x07
      0002F2 F9               [12] 1073 	mov	r1,a
      0002F3 E6               [12] 1074 	mov	a,@r0
      0002F4 F7               [12] 1075 	mov	@r1,a
      0002F5 08               [12] 1076 	inc	r0
      0002F6 09               [12] 1077 	inc	r1
      0002F7 E6               [12] 1078 	mov	a,@r0
      0002F8 F7               [12] 1079 	mov	@r1,a
      0002F9 08               [12] 1080 	inc	r0
      0002FA 09               [12] 1081 	inc	r1
      0002FB E6               [12] 1082 	mov	a,@r0
      0002FC F7               [12] 1083 	mov	@r1,a
      0002FD 08               [12] 1084 	inc	r0
      0002FE 09               [12] 1085 	inc	r1
      0002FF E6               [12] 1086 	mov	a,@r0
      000300 F7               [12] 1087 	mov	@r1,a
                                   1088 ;	uart.h:156: for(j=1;j<i;j++) digit/=10;
      000301 7B 01            [12] 1089 	mov	r3,#0x01
      000303                       1090 00110$:
      000303 E5 3C            [12] 1091 	mov	a,_bp
      000305 24 05            [12] 1092 	add	a,#0x05
      000307 F8               [12] 1093 	mov	r0,a
      000308 C3               [12] 1094 	clr	c
      000309 EB               [12] 1095 	mov	a,r3
      00030A 96               [12] 1096 	subb	a,@r0
      00030B 50 3A            [24] 1097 	jnc	00101$
      00030D 75 3D 0A         [24] 1098 	mov	__divulong_PARM_2,#0x0a
      000310 E4               [12] 1099 	clr	a
      000311 F5 3E            [12] 1100 	mov	(__divulong_PARM_2 + 1),a
      000313 F5 3F            [12] 1101 	mov	(__divulong_PARM_2 + 2),a
      000315 F5 40            [12] 1102 	mov	(__divulong_PARM_2 + 3),a
      000317 E5 3C            [12] 1103 	mov	a,_bp
      000319 24 07            [12] 1104 	add	a,#0x07
      00031B F8               [12] 1105 	mov	r0,a
      00031C 86 82            [24] 1106 	mov	dpl,@r0
      00031E 08               [12] 1107 	inc	r0
      00031F 86 83            [24] 1108 	mov	dph,@r0
      000321 08               [12] 1109 	inc	r0
      000322 86 F0            [24] 1110 	mov	b,@r0
      000324 08               [12] 1111 	inc	r0
      000325 E6               [12] 1112 	mov	a,@r0
      000326 C0 03            [24] 1113 	push	ar3
      000328 12 1B C8         [24] 1114 	lcall	__divulong
      00032B AC 82            [24] 1115 	mov	r4,dpl
      00032D AD 83            [24] 1116 	mov	r5,dph
      00032F AE F0            [24] 1117 	mov	r6,b
      000331 FF               [12] 1118 	mov	r7,a
      000332 D0 03            [24] 1119 	pop	ar3
      000334 E5 3C            [12] 1120 	mov	a,_bp
      000336 24 07            [12] 1121 	add	a,#0x07
      000338 F8               [12] 1122 	mov	r0,a
      000339 A6 04            [24] 1123 	mov	@r0,ar4
      00033B 08               [12] 1124 	inc	r0
      00033C A6 05            [24] 1125 	mov	@r0,ar5
      00033E 08               [12] 1126 	inc	r0
      00033F A6 06            [24] 1127 	mov	@r0,ar6
      000341 08               [12] 1128 	inc	r0
      000342 A6 07            [24] 1129 	mov	@r0,ar7
      000344 0B               [12] 1130 	inc	r3
      000345 80 BC            [24] 1131 	sjmp	00110$
      000347                       1132 00101$:
                                   1133 ;	uart.h:158: if(leading_zeroes_flag && digit%10) leading_zeroes_flag=0; //flag to start printing
      000347 E5 3C            [12] 1134 	mov	a,_bp
      000349 24 06            [12] 1135 	add	a,#0x06
      00034B F8               [12] 1136 	mov	r0,a
      00034C E6               [12] 1137 	mov	a,@r0
      00034D 60 30            [24] 1138 	jz	00103$
      00034F 75 3D 0A         [24] 1139 	mov	__modulong_PARM_2,#0x0a
      000352 E4               [12] 1140 	clr	a
      000353 F5 3E            [12] 1141 	mov	(__modulong_PARM_2 + 1),a
      000355 F5 3F            [12] 1142 	mov	(__modulong_PARM_2 + 2),a
      000357 F5 40            [12] 1143 	mov	(__modulong_PARM_2 + 3),a
      000359 E5 3C            [12] 1144 	mov	a,_bp
      00035B 24 07            [12] 1145 	add	a,#0x07
      00035D F8               [12] 1146 	mov	r0,a
      00035E 86 82            [24] 1147 	mov	dpl,@r0
      000360 08               [12] 1148 	inc	r0
      000361 86 83            [24] 1149 	mov	dph,@r0
      000363 08               [12] 1150 	inc	r0
      000364 86 F0            [24] 1151 	mov	b,@r0
      000366 08               [12] 1152 	inc	r0
      000367 E6               [12] 1153 	mov	a,@r0
      000368 12 1B 45         [24] 1154 	lcall	__modulong
      00036B AA 82            [24] 1155 	mov	r2,dpl
      00036D AB 83            [24] 1156 	mov	r3,dph
      00036F AE F0            [24] 1157 	mov	r6,b
      000371 FF               [12] 1158 	mov	r7,a
      000372 EA               [12] 1159 	mov	a,r2
      000373 4B               [12] 1160 	orl	a,r3
      000374 4E               [12] 1161 	orl	a,r6
      000375 4F               [12] 1162 	orl	a,r7
      000376 60 07            [24] 1163 	jz	00103$
      000378 E5 3C            [12] 1164 	mov	a,_bp
      00037A 24 06            [12] 1165 	add	a,#0x06
      00037C F8               [12] 1166 	mov	r0,a
      00037D 76 00            [12] 1167 	mov	@r0,#0x00
      00037F                       1168 00103$:
                                   1169 ;	uart.h:160: if(leading_zeroes_flag); //pass - do not print
      00037F E5 3C            [12] 1170 	mov	a,_bp
      000381 24 06            [12] 1171 	add	a,#0x06
      000383 F8               [12] 1172 	mov	r0,a
      000384 E6               [12] 1173 	mov	a,@r0
      000385 70 26            [24] 1174 	jnz	00113$
                                   1175 ;	uart.h:161: else UartWrite(0x30 + digit%10);
      000387 75 3D 0A         [24] 1176 	mov	__modulong_PARM_2,#0x0a
      00038A E4               [12] 1177 	clr	a
      00038B F5 3E            [12] 1178 	mov	(__modulong_PARM_2 + 1),a
      00038D F5 3F            [12] 1179 	mov	(__modulong_PARM_2 + 2),a
      00038F F5 40            [12] 1180 	mov	(__modulong_PARM_2 + 3),a
      000391 E5 3C            [12] 1181 	mov	a,_bp
      000393 24 07            [12] 1182 	add	a,#0x07
      000395 F8               [12] 1183 	mov	r0,a
      000396 86 82            [24] 1184 	mov	dpl,@r0
      000398 08               [12] 1185 	inc	r0
      000399 86 83            [24] 1186 	mov	dph,@r0
      00039B 08               [12] 1187 	inc	r0
      00039C 86 F0            [24] 1188 	mov	b,@r0
      00039E 08               [12] 1189 	inc	r0
      00039F E6               [12] 1190 	mov	a,@r0
      0003A0 12 1B 45         [24] 1191 	lcall	__modulong
      0003A3 AC 82            [24] 1192 	mov	r4,dpl
      0003A5 74 30            [12] 1193 	mov	a,#0x30
      0003A7 2C               [12] 1194 	add	a,r4
      0003A8 F5 82            [12] 1195 	mov	dpl,a
      0003AA 12 00 FE         [24] 1196 	lcall	_UartWrite
      0003AD                       1197 00113$:
                                   1198 ;	uart.h:153: for(i=8;i>0;i--)
      0003AD E5 3C            [12] 1199 	mov	a,_bp
      0003AF 24 05            [12] 1200 	add	a,#0x05
      0003B1 F8               [12] 1201 	mov	r0,a
      0003B2 16               [12] 1202 	dec	@r0
      0003B3 E5 3C            [12] 1203 	mov	a,_bp
      0003B5 24 05            [12] 1204 	add	a,#0x05
      0003B7 F8               [12] 1205 	mov	r0,a
      0003B8 E6               [12] 1206 	mov	a,@r0
      0003B9 60 03            [24] 1207 	jz	00149$
      0003BB 02 02 EB         [24] 1208 	ljmp	00112$
      0003BE                       1209 00149$:
                                   1210 ;	uart.h:163: }
      0003BE 85 3C 81         [24] 1211 	mov	sp,_bp
      0003C1 D0 3C            [24] 1212 	pop	_bp
      0003C3 22               [24] 1213 	ret
                                   1214 ;------------------------------------------------------------
                                   1215 ;Allocation info for local variables in function 'UartScanByte'
                                   1216 ;------------------------------------------------------------
                                   1217 ;unibble                   Allocated to registers r7 
                                   1218 ;lnibble                   Allocated to registers r6 
                                   1219 ;------------------------------------------------------------
                                   1220 ;	uart.h:166: uint8_t UartScanByte() __reentrant
                                   1221 ;	-----------------------------------------
                                   1222 ;	 function UartScanByte
                                   1223 ;	-----------------------------------------
      0003C4                       1224 _UartScanByte:
                                   1225 ;	uart.h:170: while(UartReadReady()) UartRead(); //flush
      0003C4                       1226 00101$:
      0003C4 12 00 EA         [24] 1227 	lcall	_UartReadReady
      0003C7 E5 82            [12] 1228 	mov	a,dpl
      0003C9 60 05            [24] 1229 	jz	00103$
      0003CB 12 00 F5         [24] 1230 	lcall	_UartRead
      0003CE 80 F4            [24] 1231 	sjmp	00101$
      0003D0                       1232 00103$:
                                   1233 ;	uart.h:171: UartPrint("Number(HEX, eg FE for 254): ");
      0003D0 90 1D AE         [24] 1234 	mov	dptr,#___str_0
      0003D3 75 F0 80         [24] 1235 	mov	b,#0x80
      0003D6 12 01 84         [24] 1236 	lcall	_UartPrint
                                   1237 ;	uart.h:173: unibble = UartRead();
      0003D9 12 00 F5         [24] 1238 	lcall	_UartRead
                                   1239 ;	uart.h:174: UartWrite(unibble);
      0003DC AF 82            [24] 1240 	mov  r7,dpl
      0003DE C0 07            [24] 1241 	push	ar7
      0003E0 12 00 FE         [24] 1242 	lcall	_UartWrite
                                   1243 ;	uart.h:175: lnibble = UartRead();
      0003E3 12 00 F5         [24] 1244 	lcall	_UartRead
                                   1245 ;	uart.h:176: UartWrite(lnibble);
      0003E6 AE 82            [24] 1246 	mov  r6,dpl
      0003E8 C0 06            [24] 1247 	push	ar6
      0003EA 12 00 FE         [24] 1248 	lcall	_UartWrite
                                   1249 ;	uart.h:178: UartWrite('\n');
      0003ED 75 82 0A         [24] 1250 	mov	dpl,#0x0a
      0003F0 12 00 FE         [24] 1251 	lcall	_UartWrite
      0003F3 D0 06            [24] 1252 	pop	ar6
      0003F5 D0 07            [24] 1253 	pop	ar7
                                   1254 ;	uart.h:180: return hex2dec(unibble,lnibble);
      0003F7 8E 08            [24] 1255 	mov	_hex2dec_PARM_2,r6
      0003F9 8F 82            [24] 1256 	mov	dpl,r7
                                   1257 ;	uart.h:181: }
      0003FB 02 00 A3         [24] 1258 	ljmp	_hex2dec
                                   1259 ;------------------------------------------------------------
                                   1260 ;Allocation info for local variables in function 'UartScanLine'
                                   1261 ;------------------------------------------------------------
                                   1262 ;maxLength                 Allocated to stack - _bp -3
                                   1263 ;dst                       Allocated to stack - _bp +1
                                   1264 ;recv                      Allocated to registers r2 
                                   1265 ;count                     Allocated to registers r4 
                                   1266 ;------------------------------------------------------------
                                   1267 ;	uart.h:183: uint8_t UartScanLine(uint8_t *dst, uint8_t maxLength) __reentrant
                                   1268 ;	-----------------------------------------
                                   1269 ;	 function UartScanLine
                                   1270 ;	-----------------------------------------
      0003FE                       1271 _UartScanLine:
      0003FE C0 3C            [24] 1272 	push	_bp
      000400 85 81 3C         [24] 1273 	mov	_bp,sp
      000403 C0 82            [24] 1274 	push	dpl
      000405 C0 83            [24] 1275 	push	dph
      000407 C0 F0            [24] 1276 	push	b
                                   1277 ;	uart.h:185: uint8_t recv,count=0;
      000409 7C 00            [12] 1278 	mov	r4,#0x00
                                   1279 ;	uart.h:187: while(UartReadReady()) UartRead(); //flush
      00040B                       1280 00101$:
      00040B C0 04            [24] 1281 	push	ar4
      00040D 12 00 EA         [24] 1282 	lcall	_UartReadReady
      000410 E5 82            [12] 1283 	mov	a,dpl
      000412 D0 04            [24] 1284 	pop	ar4
      000414 60 09            [24] 1285 	jz	00118$
      000416 C0 04            [24] 1286 	push	ar4
      000418 12 00 F5         [24] 1287 	lcall	_UartRead
      00041B D0 04            [24] 1288 	pop	ar4
                                   1289 ;	uart.h:189: while(1)
      00041D 80 EC            [24] 1290 	sjmp	00101$
      00041F                       1291 00118$:
      00041F 7B 00            [12] 1292 	mov	r3,#0x00
      000421                       1293 00110$:
                                   1294 ;	uart.h:192: recv=UartRead();
      000421 C0 04            [24] 1295 	push	ar4
      000423 C0 03            [24] 1296 	push	ar3
      000425 12 00 F5         [24] 1297 	lcall	_UartRead
                                   1298 ;	uart.h:193: UartWrite(recv);
      000428 AA 82            [24] 1299 	mov  r2,dpl
      00042A C0 02            [24] 1300 	push	ar2
      00042C 12 00 FE         [24] 1301 	lcall	_UartWrite
      00042F D0 02            [24] 1302 	pop	ar2
      000431 D0 03            [24] 1303 	pop	ar3
      000433 D0 04            [24] 1304 	pop	ar4
                                   1305 ;	uart.h:194: if(recv == '\n') 
      000435 BA 0A 19         [24] 1306 	cjne	r2,#0x0a,00105$
                                   1307 ;	uart.h:196: *(dst+count)=0; //add string terminate
      000438 A8 3C            [24] 1308 	mov	r0,_bp
      00043A 08               [12] 1309 	inc	r0
      00043B EC               [12] 1310 	mov	a,r4
      00043C 26               [12] 1311 	add	a,@r0
      00043D FD               [12] 1312 	mov	r5,a
      00043E E4               [12] 1313 	clr	a
      00043F 08               [12] 1314 	inc	r0
      000440 36               [12] 1315 	addc	a,@r0
      000441 FE               [12] 1316 	mov	r6,a
      000442 08               [12] 1317 	inc	r0
      000443 86 07            [24] 1318 	mov	ar7,@r0
      000445 8D 82            [24] 1319 	mov	dpl,r5
      000447 8E 83            [24] 1320 	mov	dph,r6
      000449 8F F0            [24] 1321 	mov	b,r7
      00044B E4               [12] 1322 	clr	a
      00044C 12 1C 2D         [24] 1323 	lcall	__gptrput
                                   1324 ;	uart.h:197: break;
      00044F 80 31            [24] 1325 	sjmp	00111$
      000451                       1326 00105$:
                                   1327 ;	uart.h:199: else *(dst+count)=recv;
      000451 A8 3C            [24] 1328 	mov	r0,_bp
      000453 08               [12] 1329 	inc	r0
      000454 EB               [12] 1330 	mov	a,r3
      000455 26               [12] 1331 	add	a,@r0
      000456 FD               [12] 1332 	mov	r5,a
      000457 E4               [12] 1333 	clr	a
      000458 08               [12] 1334 	inc	r0
      000459 36               [12] 1335 	addc	a,@r0
      00045A FE               [12] 1336 	mov	r6,a
      00045B 08               [12] 1337 	inc	r0
      00045C 86 07            [24] 1338 	mov	ar7,@r0
      00045E 8D 82            [24] 1339 	mov	dpl,r5
      000460 8E 83            [24] 1340 	mov	dph,r6
      000462 8F F0            [24] 1341 	mov	b,r7
      000464 EA               [12] 1342 	mov	a,r2
      000465 12 1C 2D         [24] 1343 	lcall	__gptrput
                                   1344 ;	uart.h:201: if(count==maxLength) 
      000468 E5 3C            [12] 1345 	mov	a,_bp
      00046A 24 FD            [12] 1346 	add	a,#0xfd
      00046C F8               [12] 1347 	mov	r0,a
      00046D E6               [12] 1348 	mov	a,@r0
      00046E B5 03 0C         [24] 1349 	cjne	a,ar3,00108$
                                   1350 ;	uart.h:203: *(dst+count)=0; // terminate string.
      000471 8D 82            [24] 1351 	mov	dpl,r5
      000473 8E 83            [24] 1352 	mov	dph,r6
      000475 8F F0            [24] 1353 	mov	b,r7
      000477 E4               [12] 1354 	clr	a
      000478 12 1C 2D         [24] 1355 	lcall	__gptrput
                                   1356 ;	uart.h:204: break;
      00047B 80 05            [24] 1357 	sjmp	00111$
      00047D                       1358 00108$:
                                   1359 ;	uart.h:207: count++;
      00047D 0B               [12] 1360 	inc	r3
      00047E 8B 04            [24] 1361 	mov	ar4,r3
      000480 80 9F            [24] 1362 	sjmp	00110$
      000482                       1363 00111$:
                                   1364 ;	uart.h:211: return count;
      000482 8C 82            [24] 1365 	mov	dpl,r4
                                   1366 ;	uart.h:213: }
      000484 85 3C 81         [24] 1367 	mov	sp,_bp
      000487 D0 3C            [24] 1368 	pop	_bp
      000489 22               [24] 1369 	ret
                                   1370 ;------------------------------------------------------------
                                   1371 ;Allocation info for local variables in function 'spi_delay'
                                   1372 ;------------------------------------------------------------
                                   1373 ;ms                        Allocated to registers r6 r7 
                                   1374 ;j                         Allocated to registers r4 r5 
                                   1375 ;i                         Allocated to registers r2 r3 
                                   1376 ;------------------------------------------------------------
                                   1377 ;	spi.h:1: void spi_delay(unsigned int ms)
                                   1378 ;	-----------------------------------------
                                   1379 ;	 function spi_delay
                                   1380 ;	-----------------------------------------
      00048A                       1381 _spi_delay:
      00048A AE 82            [24] 1382 	mov	r6,dpl
      00048C AF 83            [24] 1383 	mov	r7,dph
                                   1384 ;	spi.h:3: unsigned int j=0,i=0;
      00048E 7C 00            [12] 1385 	mov	r4,#0x00
      000490 7D 00            [12] 1386 	mov	r5,#0x00
                                   1387 ;	spi.h:4: for( i=0;i<ms;i++)
      000492 7A 00            [12] 1388 	mov	r2,#0x00
      000494 7B 00            [12] 1389 	mov	r3,#0x00
      000496                       1390 00107$:
      000496 C3               [12] 1391 	clr	c
      000497 EA               [12] 1392 	mov	a,r2
      000498 9E               [12] 1393 	subb	a,r6
      000499 EB               [12] 1394 	mov	a,r3
      00049A 9F               [12] 1395 	subb	a,r7
      00049B 50 1F            [24] 1396 	jnc	00109$
      00049D 8C 00            [24] 1397 	mov	ar0,r4
      00049F 8D 01            [24] 1398 	mov	ar1,r5
      0004A1                       1399 00104$:
                                   1400 ;	spi.h:6: for(;j<120;j++);
      0004A1 C3               [12] 1401 	clr	c
      0004A2 E8               [12] 1402 	mov	a,r0
      0004A3 94 78            [12] 1403 	subb	a,#0x78
      0004A5 E9               [12] 1404 	mov	a,r1
      0004A6 94 00            [12] 1405 	subb	a,#0x00
      0004A8 50 07            [24] 1406 	jnc	00114$
      0004AA 08               [12] 1407 	inc	r0
      0004AB B8 00 F3         [24] 1408 	cjne	r0,#0x00,00104$
      0004AE 09               [12] 1409 	inc	r1
      0004AF 80 F0            [24] 1410 	sjmp	00104$
      0004B1                       1411 00114$:
      0004B1 88 04            [24] 1412 	mov	ar4,r0
      0004B3 89 05            [24] 1413 	mov	ar5,r1
                                   1414 ;	spi.h:4: for( i=0;i<ms;i++)
      0004B5 0A               [12] 1415 	inc	r2
      0004B6 BA 00 DD         [24] 1416 	cjne	r2,#0x00,00107$
      0004B9 0B               [12] 1417 	inc	r3
      0004BA 80 DA            [24] 1418 	sjmp	00107$
      0004BC                       1419 00109$:
                                   1420 ;	spi.h:8: }
      0004BC 22               [24] 1421 	ret
                                   1422 ;------------------------------------------------------------
                                   1423 ;Allocation info for local variables in function 'spi_init'
                                   1424 ;------------------------------------------------------------
                                   1425 ;	spi.h:32: void spi_init()
                                   1426 ;	-----------------------------------------
                                   1427 ;	 function spi_init
                                   1428 ;	-----------------------------------------
      0004BD                       1429 _spi_init:
                                   1430 ;	spi.h:35: spi_miso_high(); //make MISO input
      0004BD 43 90 04         [24] 1431 	orl	_P1,#0x04
                                   1432 ;	spi.h:36: spi_mosi_high(); //recommended in sd card tutorial
      0004C0 43 90 02         [24] 1433 	orl	_P1,#0x02
                                   1434 ;	spi.h:37: spi_cs_high(); //deselect
      0004C3 43 90 08         [24] 1435 	orl	_P1,#0x08
                                   1436 ;	spi.h:38: spi_clk_low(); //mode 0, idle clk is low
      0004C6 53 90 FE         [24] 1437 	anl	_P1,#0xfe
                                   1438 ;	spi.h:39: }
      0004C9 22               [24] 1439 	ret
                                   1440 ;------------------------------------------------------------
                                   1441 ;Allocation info for local variables in function 'spi_transfer'
                                   1442 ;------------------------------------------------------------
                                   1443 ;handle_cs                 Allocated with name '_spi_transfer_PARM_2'
                                   1444 ;tx                        Allocated to registers r7 
                                   1445 ;rx                        Allocated to registers r6 
                                   1446 ;i                         Allocated to registers r5 
                                   1447 ;------------------------------------------------------------
                                   1448 ;	spi.h:41: uint8_t spi_transfer(uint8_t tx,uint8_t handle_cs)
                                   1449 ;	-----------------------------------------
                                   1450 ;	 function spi_transfer
                                   1451 ;	-----------------------------------------
      0004CA                       1452 _spi_transfer:
      0004CA AF 82            [24] 1453 	mov	r7,dpl
                                   1454 ;	spi.h:44: rx=0; //clear the rx - sdcc compiler throws warning otherwise
      0004CC 7E 00            [12] 1455 	mov	r6,#0x00
                                   1456 ;	spi.h:47: spi_clk_low();
      0004CE 53 90 FE         [24] 1457 	anl	_P1,#0xfe
                                   1458 ;	spi.h:50: if(handle_cs)
      0004D1 E5 3D            [12] 1459 	mov	a,_spi_transfer_PARM_2
      0004D3 60 03            [24] 1460 	jz	00139$
                                   1461 ;	spi.h:51: spi_cs_low();
      0004D5 53 90 F7         [24] 1462 	anl	_P1,#0xf7
                                   1463 ;	spi.h:54: for(i=0;i<8;i++)
      0004D8                       1464 00139$:
      0004D8 7D 00            [12] 1465 	mov	r5,#0x00
      0004DA                       1466 00132$:
                                   1467 ;	spi.h:57: if(tx & 0x80) spi_mosi_high();
      0004DA EF               [12] 1468 	mov	a,r7
      0004DB 30 E7 05         [24] 1469 	jnb	acc.7,00112$
      0004DE 43 90 02         [24] 1470 	orl	_P1,#0x02
                                   1471 ;	spi.h:58: else spi_mosi_low();
      0004E1 80 03            [24] 1472 	sjmp	00117$
      0004E3                       1473 00112$:
      0004E3 53 90 FD         [24] 1474 	anl	_P1,#0xfd
      0004E6                       1475 00117$:
                                   1476 ;	spi.h:60: tx <<=1;
      0004E6 8F 04            [24] 1477 	mov	ar4,r7
      0004E8 EC               [12] 1478 	mov	a,r4
      0004E9 2C               [12] 1479 	add	a,r4
      0004EA FF               [12] 1480 	mov	r7,a
                                   1481 ;	spi.h:65: rx <<=1;
      0004EB 8E 04            [24] 1482 	mov	ar4,r6
      0004ED EC               [12] 1483 	mov	a,r4
      0004EE 2C               [12] 1484 	add	a,r4
      0004EF FE               [12] 1485 	mov	r6,a
                                   1486 ;	spi.h:68: spi_clk_high();
      0004F0 43 90 01         [24] 1487 	orl	_P1,#0x01
                                   1488 ;	spi.h:71: if(spi_read_miso()) rx |=1;
      0004F3 E5 90            [12] 1489 	mov	a,_P1
      0004F5 30 E2 03         [24] 1490 	jnb	acc.2,00123$
      0004F8 43 06 01         [24] 1491 	orl	ar6,#0x01
                                   1492 ;	spi.h:76: spi_clk_low();
      0004FB                       1493 00123$:
      0004FB 53 90 FE         [24] 1494 	anl	_P1,#0xfe
                                   1495 ;	spi.h:54: for(i=0;i<8;i++)
      0004FE 0D               [12] 1496 	inc	r5
      0004FF BD 08 00         [24] 1497 	cjne	r5,#0x08,00164$
      000502                       1498 00164$:
      000502 40 D6            [24] 1499 	jc	00132$
                                   1500 ;	spi.h:81: if(handle_cs)
      000504 E5 3D            [12] 1501 	mov	a,_spi_transfer_PARM_2
      000506 60 03            [24] 1502 	jz	00131$
                                   1503 ;	spi.h:82: spi_cs_high();
      000508 43 90 08         [24] 1504 	orl	_P1,#0x08
      00050B                       1505 00131$:
                                   1506 ;	spi.h:84: return rx;
      00050B 8E 82            [24] 1507 	mov	dpl,r6
                                   1508 ;	spi.h:85: }
      00050D 22               [24] 1509 	ret
                                   1510 ;------------------------------------------------------------
                                   1511 ;Allocation info for local variables in function 'spi_transfer_all'
                                   1512 ;------------------------------------------------------------
                                   1513 ;len                       Allocated with name '_spi_transfer_all_PARM_2'
                                   1514 ;handle_cs                 Allocated with name '_spi_transfer_all_PARM_3'
                                   1515 ;buff                      Allocated to registers r5 r6 r7 
                                   1516 ;i                         Allocated to registers r4 
                                   1517 ;------------------------------------------------------------
                                   1518 ;	spi.h:89: void spi_transfer_all(uint8_t *buff, uint8_t len,uint8_t handle_cs)
                                   1519 ;	-----------------------------------------
                                   1520 ;	 function spi_transfer_all
                                   1521 ;	-----------------------------------------
      00050E                       1522 _spi_transfer_all:
      00050E AD 82            [24] 1523 	mov	r5,dpl
      000510 AE 83            [24] 1524 	mov	r6,dph
      000512 AF F0            [24] 1525 	mov	r7,b
                                   1526 ;	spi.h:94: if(handle_cs)spi_cs_low();
      000514 E5 0C            [12] 1527 	mov	a,_spi_transfer_all_PARM_3
      000516 60 03            [24] 1528 	jz	00119$
      000518 53 90 F7         [24] 1529 	anl	_P1,#0xf7
                                   1530 ;	spi.h:96: for(i=0;i<len;i++)
      00051B                       1531 00119$:
      00051B 7C 00            [12] 1532 	mov	r4,#0x00
      00051D                       1533 00113$:
      00051D C3               [12] 1534 	clr	c
      00051E EC               [12] 1535 	mov	a,r4
      00051F 95 0B            [12] 1536 	subb	a,_spi_transfer_all_PARM_2
      000521 50 2D            [24] 1537 	jnc	00106$
                                   1538 ;	spi.h:98: spi_transfer(buff[i],0);
      000523 EC               [12] 1539 	mov	a,r4
      000524 2D               [12] 1540 	add	a,r5
      000525 F9               [12] 1541 	mov	r1,a
      000526 E4               [12] 1542 	clr	a
      000527 3E               [12] 1543 	addc	a,r6
      000528 FA               [12] 1544 	mov	r2,a
      000529 8F 03            [24] 1545 	mov	ar3,r7
      00052B 89 82            [24] 1546 	mov	dpl,r1
      00052D 8A 83            [24] 1547 	mov	dph,r2
      00052F 8B F0            [24] 1548 	mov	b,r3
      000531 12 1D 20         [24] 1549 	lcall	__gptrget
      000534 F9               [12] 1550 	mov	r1,a
      000535 75 3D 00         [24] 1551 	mov	_spi_transfer_PARM_2,#0x00
      000538 89 82            [24] 1552 	mov	dpl,r1
      00053A C0 07            [24] 1553 	push	ar7
      00053C C0 06            [24] 1554 	push	ar6
      00053E C0 05            [24] 1555 	push	ar5
      000540 C0 04            [24] 1556 	push	ar4
      000542 12 04 CA         [24] 1557 	lcall	_spi_transfer
      000545 D0 04            [24] 1558 	pop	ar4
      000547 D0 05            [24] 1559 	pop	ar5
      000549 D0 06            [24] 1560 	pop	ar6
      00054B D0 07            [24] 1561 	pop	ar7
                                   1562 ;	spi.h:96: for(i=0;i<len;i++)
      00054D 0C               [12] 1563 	inc	r4
      00054E 80 CD            [24] 1564 	sjmp	00113$
      000550                       1565 00106$:
                                   1566 ;	spi.h:102: if(handle_cs)spi_cs_high();
      000550 E5 0C            [12] 1567 	mov	a,_spi_transfer_all_PARM_3
      000552 60 03            [24] 1568 	jz	00115$
      000554 43 90 08         [24] 1569 	orl	_P1,#0x08
      000557                       1570 00115$:
                                   1571 ;	spi.h:104: }
      000557 22               [24] 1572 	ret
                                   1573 ;------------------------------------------------------------
                                   1574 ;Allocation info for local variables in function 'sd_isbusy'
                                   1575 ;------------------------------------------------------------
                                   1576 ;i                         Allocated to registers r7 
                                   1577 ;------------------------------------------------------------
                                   1578 ;	sdcard.h:26: uint8_t sd_isbusy()
                                   1579 ;	-----------------------------------------
                                   1580 ;	 function sd_isbusy
                                   1581 ;	-----------------------------------------
      000558                       1582 _sd_isbusy:
                                   1583 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      000558 7F 00            [12] 1584 	mov	r7,#0x00
      00055A                       1585 00104$:
                                   1586 ;	sdcard.h:31: if(sd_spi_write(0xff)==0xff) return 0; //not busy
      00055A 75 3D 00         [24] 1587 	mov	_spi_transfer_PARM_2,#0x00
      00055D 75 82 FF         [24] 1588 	mov	dpl,#0xff
      000560 C0 07            [24] 1589 	push	ar7
      000562 12 04 CA         [24] 1590 	lcall	_spi_transfer
      000565 AE 82            [24] 1591 	mov	r6,dpl
      000567 D0 07            [24] 1592 	pop	ar7
      000569 BE FF 04         [24] 1593 	cjne	r6,#0xff,00105$
      00056C 75 82 00         [24] 1594 	mov	dpl,#0x00
      00056F 22               [24] 1595 	ret
      000570                       1596 00105$:
                                   1597 ;	sdcard.h:29: for(i=0;i<254;i++) //could have been anything(100/200/etc.)
      000570 0F               [12] 1598 	inc	r7
      000571 BF FE 00         [24] 1599 	cjne	r7,#0xfe,00122$
      000574                       1600 00122$:
      000574 40 E4            [24] 1601 	jc	00104$
                                   1602 ;	sdcard.h:34: return 1; //busy
      000576 75 82 01         [24] 1603 	mov	dpl,#0x01
                                   1604 ;	sdcard.h:35: }
      000579 22               [24] 1605 	ret
                                   1606 ;------------------------------------------------------------
                                   1607 ;Allocation info for local variables in function 'sd_initial_clk'
                                   1608 ;------------------------------------------------------------
                                   1609 ;i                         Allocated to registers r7 
                                   1610 ;------------------------------------------------------------
                                   1611 ;	sdcard.h:37: void sd_initial_clk()
                                   1612 ;	-----------------------------------------
                                   1613 ;	 function sd_initial_clk
                                   1614 ;	-----------------------------------------
      00057A                       1615 _sd_initial_clk:
                                   1616 ;	sdcard.h:45: spi_cs_high(); // required by spec but works fine even when cs pin of SDCARD is always pulled to ground to save uC pins
      00057A 43 90 08         [24] 1617 	orl	_P1,#0x08
                                   1618 ;	sdcard.h:46: for(uint8_t i=0;i<10;i++)spi_transfer(0xff,0);
      00057D 7F 00            [12] 1619 	mov	r7,#0x00
      00057F                       1620 00106$:
      00057F BF 0A 00         [24] 1621 	cjne	r7,#0x0a,00119$
      000582                       1622 00119$:
      000582 50 10            [24] 1623 	jnc	00108$
      000584 75 3D 00         [24] 1624 	mov	_spi_transfer_PARM_2,#0x00
      000587 75 82 FF         [24] 1625 	mov	dpl,#0xff
      00058A C0 07            [24] 1626 	push	ar7
      00058C 12 04 CA         [24] 1627 	lcall	_spi_transfer
      00058F D0 07            [24] 1628 	pop	ar7
      000591 0F               [12] 1629 	inc	r7
      000592 80 EB            [24] 1630 	sjmp	00106$
      000594                       1631 00108$:
                                   1632 ;	sdcard.h:47: }
      000594 22               [24] 1633 	ret
                                   1634 ;------------------------------------------------------------
                                   1635 ;Allocation info for local variables in function 'sd_cmd'
                                   1636 ;------------------------------------------------------------
                                   1637 ;arg                       Allocated with name '_sd_cmd_PARM_2'
                                   1638 ;cmd                       Allocated to registers r7 
                                   1639 ;_resp                     Allocated to registers r5 
                                   1640 ;retries                   Allocated to registers r6 
                                   1641 ;crc                       Allocated to registers r6 
                                   1642 ;i                         Allocated to registers r6 
                                   1643 ;i                         Allocated to registers r7 
                                   1644 ;------------------------------------------------------------
                                   1645 ;	sdcard.h:49: uint8_t sd_cmd(uint8_t cmd, uint32_t arg)
                                   1646 ;	-----------------------------------------
                                   1647 ;	 function sd_cmd
                                   1648 ;	-----------------------------------------
      000595                       1649 _sd_cmd:
      000595 AF 82            [24] 1650 	mov	r7,dpl
                                   1651 ;	sdcard.h:51: uint8_t _resp=0,retries=0,crc=0xff;
      000597 7E FF            [12] 1652 	mov	r6,#0xff
                                   1653 ;	sdcard.h:53: spi_cs_low();
      000599 53 90 F7         [24] 1654 	anl	_P1,#0xf7
                                   1655 ;	sdcard.h:55: sd_isbusy(); //wait while sd is busy
      00059C C0 07            [24] 1656 	push	ar7
      00059E C0 06            [24] 1657 	push	ar6
      0005A0 12 05 58         [24] 1658 	lcall	_sd_isbusy
      0005A3 D0 06            [24] 1659 	pop	ar6
      0005A5 D0 07            [24] 1660 	pop	ar7
                                   1661 ;	sdcard.h:63: sd_spi_write(cmd | 0x40);
      0005A7 74 40            [12] 1662 	mov	a,#0x40
      0005A9 4F               [12] 1663 	orl	a,r7
      0005AA F5 82            [12] 1664 	mov	dpl,a
      0005AC 75 3D 00         [24] 1665 	mov	_spi_transfer_PARM_2,#0x00
      0005AF C0 07            [24] 1666 	push	ar7
      0005B1 C0 06            [24] 1667 	push	ar6
      0005B3 12 04 CA         [24] 1668 	lcall	_spi_transfer
      0005B6 D0 06            [24] 1669 	pop	ar6
      0005B8 D0 07            [24] 1670 	pop	ar7
                                   1671 ;	sdcard.h:65: sd_spi_write((arg >> 24) & 0xff);
      0005BA 85 10 82         [24] 1672 	mov	dpl,(_sd_cmd_PARM_2 + 3)
      0005BD 75 3D 00         [24] 1673 	mov	_spi_transfer_PARM_2,#0x00
      0005C0 C0 07            [24] 1674 	push	ar7
      0005C2 C0 06            [24] 1675 	push	ar6
      0005C4 12 04 CA         [24] 1676 	lcall	_spi_transfer
      0005C7 D0 06            [24] 1677 	pop	ar6
      0005C9 D0 07            [24] 1678 	pop	ar7
                                   1679 ;	sdcard.h:66: sd_spi_write((arg >> 16) & 0xff);
      0005CB 85 0F 82         [24] 1680 	mov	dpl,(_sd_cmd_PARM_2 + 2)
      0005CE 75 3D 00         [24] 1681 	mov	_spi_transfer_PARM_2,#0x00
      0005D1 C0 07            [24] 1682 	push	ar7
      0005D3 C0 06            [24] 1683 	push	ar6
      0005D5 12 04 CA         [24] 1684 	lcall	_spi_transfer
      0005D8 D0 06            [24] 1685 	pop	ar6
      0005DA D0 07            [24] 1686 	pop	ar7
                                   1687 ;	sdcard.h:67: sd_spi_write((arg >> 8) & 0xff);
      0005DC 85 0E 82         [24] 1688 	mov	dpl,(_sd_cmd_PARM_2 + 1)
      0005DF 75 3D 00         [24] 1689 	mov	_spi_transfer_PARM_2,#0x00
      0005E2 C0 07            [24] 1690 	push	ar7
      0005E4 C0 06            [24] 1691 	push	ar6
      0005E6 12 04 CA         [24] 1692 	lcall	_spi_transfer
      0005E9 D0 06            [24] 1693 	pop	ar6
      0005EB D0 07            [24] 1694 	pop	ar7
                                   1695 ;	sdcard.h:68: sd_spi_write(arg & 0xff);
      0005ED 85 0D 82         [24] 1696 	mov	dpl,_sd_cmd_PARM_2
      0005F0 75 3D 00         [24] 1697 	mov	_spi_transfer_PARM_2,#0x00
      0005F3 C0 07            [24] 1698 	push	ar7
      0005F5 C0 06            [24] 1699 	push	ar6
      0005F7 12 04 CA         [24] 1700 	lcall	_spi_transfer
      0005FA D0 06            [24] 1701 	pop	ar6
      0005FC D0 07            [24] 1702 	pop	ar7
                                   1703 ;	sdcard.h:70: if(cmd==CMD0) 
      0005FE EF               [12] 1704 	mov	a,r7
      0005FF 70 04            [24] 1705 	jnz	00107$
                                   1706 ;	sdcard.h:72: crc=0x95;
      000601 7E 95            [12] 1707 	mov	r6,#0x95
      000603 80 05            [24] 1708 	sjmp	00108$
      000605                       1709 00107$:
                                   1710 ;	sdcard.h:74: else if(cmd==CMD8) 
      000605 BF 08 02         [24] 1711 	cjne	r7,#0x08,00108$
                                   1712 ;	sdcard.h:76: crc=0x87;
      000608 7E 87            [12] 1713 	mov	r6,#0x87
      00060A                       1714 00108$:
                                   1715 ;	sdcard.h:78: sd_spi_write(crc);	
      00060A 75 3D 00         [24] 1716 	mov	_spi_transfer_PARM_2,#0x00
      00060D 8E 82            [24] 1717 	mov	dpl,r6
      00060F C0 07            [24] 1718 	push	ar7
      000611 12 04 CA         [24] 1719 	lcall	_spi_transfer
      000614 D0 07            [24] 1720 	pop	ar7
                                   1721 ;	sdcard.h:81: while(1) 
      000616 7E 00            [12] 1722 	mov	r6,#0x00
      000618                       1723 00115$:
                                   1724 ;	sdcard.h:83: _resp = sd_spi_write(0xff);
      000618 75 3D 00         [24] 1725 	mov	_spi_transfer_PARM_2,#0x00
      00061B 75 82 FF         [24] 1726 	mov	dpl,#0xff
      00061E C0 07            [24] 1727 	push	ar7
      000620 C0 06            [24] 1728 	push	ar6
      000622 12 04 CA         [24] 1729 	lcall	_spi_transfer
      000625 AD 82            [24] 1730 	mov	r5,dpl
      000627 D0 06            [24] 1731 	pop	ar6
      000629 D0 07            [24] 1732 	pop	ar7
                                   1733 ;	sdcard.h:85: if(_resp & 0x80);
      00062B ED               [12] 1734 	mov	a,r5
      00062C 30 E7 0A         [24] 1735 	jnb	acc.7,00116$
                                   1736 ;	sdcard.h:88: if(retries++ == SD_MAX_RETRIES) 
      00062F 8E 04            [24] 1737 	mov	ar4,r6
      000631 0E               [12] 1738 	inc	r6
      000632 BC 19 E3         [24] 1739 	cjne	r4,#0x19,00115$
                                   1740 ;	sdcard.h:94: return SD_MAX_RETRIES_FAIL; // 0xff means failed
      000635 75 82 FE         [24] 1741 	mov	dpl,#0xfe
      000638 22               [24] 1742 	ret
      000639                       1743 00116$:
                                   1744 ;	sdcard.h:106: if(cmd==CMD8 || cmd==CMD58)
      000639 E4               [12] 1745 	clr	a
      00063A BF 08 01         [24] 1746 	cjne	r7,#0x08,00203$
      00063D 04               [12] 1747 	inc	a
      00063E                       1748 00203$:
      00063E FE               [12] 1749 	mov	r6,a
      00063F 70 08            [24] 1750 	jnz	00128$
      000641 BF 3A 02         [24] 1751 	cjne	r7,#0x3a,00206$
      000644 80 03            [24] 1752 	sjmp	00207$
      000646                       1753 00206$:
      000646 02 06 C2         [24] 1754 	ljmp	00129$
      000649                       1755 00207$:
      000649                       1756 00128$:
                                   1757 ;	sdcard.h:114: if(cmd==CMD8)
      000649 EE               [12] 1758 	mov	a,r6
      00064A 60 33            [24] 1759 	jz	00126$
                                   1760 ;	sdcard.h:116: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      00064C 7E 00            [12] 1761 	mov	r6,#0x00
      00064E                       1762 00132$:
      00064E BE 03 00         [24] 1763 	cjne	r6,#0x03,00209$
      000651                       1764 00209$:
      000651 50 14            [24] 1765 	jnc	00117$
      000653 75 3D 00         [24] 1766 	mov	_spi_transfer_PARM_2,#0x00
      000656 75 82 FF         [24] 1767 	mov	dpl,#0xff
      000659 C0 06            [24] 1768 	push	ar6
      00065B C0 05            [24] 1769 	push	ar5
      00065D 12 04 CA         [24] 1770 	lcall	_spi_transfer
      000660 D0 05            [24] 1771 	pop	ar5
      000662 D0 06            [24] 1772 	pop	ar6
      000664 0E               [12] 1773 	inc	r6
      000665 80 E7            [24] 1774 	sjmp	00132$
      000667                       1775 00117$:
                                   1776 ;	sdcard.h:117: if(sd_spi_write(0xff)!=0xAA) return SD_CMD_FAIL;
      000667 75 3D 00         [24] 1777 	mov	_spi_transfer_PARM_2,#0x00
      00066A 75 82 FF         [24] 1778 	mov	dpl,#0xff
      00066D C0 05            [24] 1779 	push	ar5
      00066F 12 04 CA         [24] 1780 	lcall	_spi_transfer
      000672 AE 82            [24] 1781 	mov	r6,dpl
      000674 D0 05            [24] 1782 	pop	ar5
      000676 BE AA 02         [24] 1783 	cjne	r6,#0xaa,00211$
      000679 80 3A            [24] 1784 	sjmp	00127$
      00067B                       1785 00211$:
      00067B 75 82 FF         [24] 1786 	mov	dpl,#0xff
      00067E 22               [24] 1787 	ret
      00067F                       1788 00126$:
                                   1789 ;	sdcard.h:119: else if(cmd==CMD58)
      00067F BF 3A 33         [24] 1790 	cjne	r7,#0x3a,00127$
                                   1791 ;	sdcard.h:121: if(sd_spi_write(0xff)!=0xC0) return SD_CMD_FAIL;
      000682 75 3D 00         [24] 1792 	mov	_spi_transfer_PARM_2,#0x00
      000685 75 82 FF         [24] 1793 	mov	dpl,#0xff
      000688 C0 05            [24] 1794 	push	ar5
      00068A 12 04 CA         [24] 1795 	lcall	_spi_transfer
      00068D AF 82            [24] 1796 	mov	r7,dpl
      00068F D0 05            [24] 1797 	pop	ar5
      000691 BF C0 02         [24] 1798 	cjne	r7,#0xc0,00214$
      000694 80 04            [24] 1799 	sjmp	00152$
      000696                       1800 00214$:
      000696 75 82 FF         [24] 1801 	mov	dpl,#0xff
                                   1802 ;	sdcard.h:123: for(uint8_t i=0;i<3;i++) sd_spi_write(0xff);//waste the 3 bytes
      000699 22               [24] 1803 	ret
      00069A                       1804 00152$:
      00069A 7F 00            [12] 1805 	mov	r7,#0x00
      00069C                       1806 00135$:
      00069C BF 03 00         [24] 1807 	cjne	r7,#0x03,00215$
      00069F                       1808 00215$:
      00069F 50 14            [24] 1809 	jnc	00127$
      0006A1 75 3D 00         [24] 1810 	mov	_spi_transfer_PARM_2,#0x00
      0006A4 75 82 FF         [24] 1811 	mov	dpl,#0xff
      0006A7 C0 07            [24] 1812 	push	ar7
      0006A9 C0 05            [24] 1813 	push	ar5
      0006AB 12 04 CA         [24] 1814 	lcall	_spi_transfer
      0006AE D0 05            [24] 1815 	pop	ar5
      0006B0 D0 07            [24] 1816 	pop	ar7
      0006B2 0F               [12] 1817 	inc	r7
      0006B3 80 E7            [24] 1818 	sjmp	00135$
      0006B5                       1819 00127$:
                                   1820 ;	sdcard.h:128: sd_spi_write(0xff);
      0006B5 75 3D 00         [24] 1821 	mov	_spi_transfer_PARM_2,#0x00
      0006B8 75 82 FF         [24] 1822 	mov	dpl,#0xff
      0006BB C0 05            [24] 1823 	push	ar5
      0006BD 12 04 CA         [24] 1824 	lcall	_spi_transfer
      0006C0 D0 05            [24] 1825 	pop	ar5
      0006C2                       1826 00129$:
                                   1827 ;	sdcard.h:136: return _resp;
      0006C2 8D 82            [24] 1828 	mov	dpl,r5
                                   1829 ;	sdcard.h:138: }
      0006C4 22               [24] 1830 	ret
                                   1831 ;------------------------------------------------------------
                                   1832 ;Allocation info for local variables in function 'sd_acmd'
                                   1833 ;------------------------------------------------------------
                                   1834 ;arg                       Allocated with name '_sd_acmd_PARM_2'
                                   1835 ;cmd                       Allocated to registers r7 
                                   1836 ;_resp                     Allocated to registers 
                                   1837 ;------------------------------------------------------------
                                   1838 ;	sdcard.h:140: uint8_t sd_acmd(uint8_t cmd, uint32_t arg)
                                   1839 ;	-----------------------------------------
                                   1840 ;	 function sd_acmd
                                   1841 ;	-----------------------------------------
      0006C5                       1842 _sd_acmd:
      0006C5 AF 82            [24] 1843 	mov	r7,dpl
                                   1844 ;	sdcard.h:144: _resp=sd_cmd(CMD55,0);
      0006C7 E4               [12] 1845 	clr	a
      0006C8 F5 0D            [12] 1846 	mov	_sd_cmd_PARM_2,a
      0006CA F5 0E            [12] 1847 	mov	(_sd_cmd_PARM_2 + 1),a
      0006CC F5 0F            [12] 1848 	mov	(_sd_cmd_PARM_2 + 2),a
      0006CE F5 10            [12] 1849 	mov	(_sd_cmd_PARM_2 + 3),a
      0006D0 75 82 37         [24] 1850 	mov	dpl,#0x37
      0006D3 C0 07            [24] 1851 	push	ar7
      0006D5 12 05 95         [24] 1852 	lcall	_sd_cmd
      0006D8 AE 82            [24] 1853 	mov	r6,dpl
      0006DA D0 07            [24] 1854 	pop	ar7
                                   1855 ;	sdcard.h:145: if(_resp!=1) return SD_CMD_FAIL;
      0006DC BE 01 02         [24] 1856 	cjne	r6,#0x01,00110$
      0006DF 80 04            [24] 1857 	sjmp	00102$
      0006E1                       1858 00110$:
      0006E1 75 82 FF         [24] 1859 	mov	dpl,#0xff
      0006E4 22               [24] 1860 	ret
      0006E5                       1861 00102$:
                                   1862 ;	sdcard.h:148: _resp=sd_cmd(cmd,arg);
      0006E5 85 11 0D         [24] 1863 	mov	_sd_cmd_PARM_2,_sd_acmd_PARM_2
      0006E8 85 12 0E         [24] 1864 	mov	(_sd_cmd_PARM_2 + 1),(_sd_acmd_PARM_2 + 1)
      0006EB 85 13 0F         [24] 1865 	mov	(_sd_cmd_PARM_2 + 2),(_sd_acmd_PARM_2 + 2)
      0006EE 85 14 10         [24] 1866 	mov	(_sd_cmd_PARM_2 + 3),(_sd_acmd_PARM_2 + 3)
      0006F1 8F 82            [24] 1867 	mov	dpl,r7
                                   1868 ;	sdcard.h:149: return _resp;
                                   1869 ;	sdcard.h:151: }
      0006F3 02 05 95         [24] 1870 	ljmp	_sd_cmd
                                   1871 ;------------------------------------------------------------
                                   1872 ;Allocation info for local variables in function 'SDinit'
                                   1873 ;------------------------------------------------------------
                                   1874 ;retries                   Allocated to registers r7 
                                   1875 ;------------------------------------------------------------
                                   1876 ;	sdcard.h:157: uint8_t SDinit()
                                   1877 ;	-----------------------------------------
                                   1878 ;	 function SDinit
                                   1879 ;	-----------------------------------------
      0006F6                       1880 _SDinit:
                                   1881 ;	sdcard.h:161: sd_initial_clk(); // 74 minimum clks for initialization
      0006F6 12 05 7A         [24] 1882 	lcall	_sd_initial_clk
                                   1883 ;	sdcard.h:163: while(1)
      0006F9 7F 00            [12] 1884 	mov	r7,#0x00
      0006FB                       1885 00107$:
                                   1886 ;	sdcard.h:165: if(sd_cmd(CMD0,0)==0x01)break; // correct response is 0x01 -> signals card is idling
      0006FB E4               [12] 1887 	clr	a
      0006FC F5 0D            [12] 1888 	mov	_sd_cmd_PARM_2,a
      0006FE F5 0E            [12] 1889 	mov	(_sd_cmd_PARM_2 + 1),a
      000700 F5 0F            [12] 1890 	mov	(_sd_cmd_PARM_2 + 2),a
      000702 F5 10            [12] 1891 	mov	(_sd_cmd_PARM_2 + 3),a
      000704 75 82 00         [24] 1892 	mov	dpl,#0x00
      000707 C0 07            [24] 1893 	push	ar7
      000709 12 05 95         [24] 1894 	lcall	_sd_cmd
      00070C AE 82            [24] 1895 	mov	r6,dpl
      00070E D0 07            [24] 1896 	pop	ar7
      000710 BE 01 02         [24] 1897 	cjne	r6,#0x01,00155$
      000713 80 0A            [24] 1898 	sjmp	00108$
      000715                       1899 00155$:
                                   1900 ;	sdcard.h:166: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      000715 8F 06            [24] 1901 	mov	ar6,r7
      000717 0F               [12] 1902 	inc	r7
      000718 BE 19 E0         [24] 1903 	cjne	r6,#0x19,00107$
      00071B 75 82 FE         [24] 1904 	mov	dpl,#0xfe
      00071E 22               [24] 1905 	ret
      00071F                       1906 00108$:
                                   1907 ;	sdcard.h:170: if(sd_cmd(CMD8,0x1AA)!=0x01) return SD_CMD_FAIL; // correct response for cmd8 is 0x01
      00071F 75 0D AA         [24] 1908 	mov	_sd_cmd_PARM_2,#0xaa
      000722 75 0E 01         [24] 1909 	mov	(_sd_cmd_PARM_2 + 1),#0x01
      000725 E4               [12] 1910 	clr	a
      000726 F5 0F            [12] 1911 	mov	(_sd_cmd_PARM_2 + 2),a
      000728 F5 10            [12] 1912 	mov	(_sd_cmd_PARM_2 + 3),a
      00072A 75 82 08         [24] 1913 	mov	dpl,#0x08
      00072D 12 05 95         [24] 1914 	lcall	_sd_cmd
      000730 AF 82            [24] 1915 	mov	r7,dpl
      000732 BF 01 02         [24] 1916 	cjne	r7,#0x01,00158$
      000735 80 04            [24] 1917 	sjmp	00128$
      000737                       1918 00158$:
      000737 75 82 FF         [24] 1919 	mov	dpl,#0xff
                                   1920 ;	sdcard.h:173: while(1)
      00073A 22               [24] 1921 	ret
      00073B                       1922 00128$:
      00073B 7F 00            [12] 1923 	mov	r7,#0x00
      00073D                       1924 00117$:
                                   1925 ;	sdcard.h:175: if(sd_acmd(CMD41,0x40000000)==0)break; //correct response
      00073D E4               [12] 1926 	clr	a
      00073E F5 11            [12] 1927 	mov	_sd_acmd_PARM_2,a
      000740 F5 12            [12] 1928 	mov	(_sd_acmd_PARM_2 + 1),a
      000742 F5 13            [12] 1929 	mov	(_sd_acmd_PARM_2 + 2),a
      000744 75 14 40         [24] 1930 	mov	(_sd_acmd_PARM_2 + 3),#0x40
      000747 75 82 29         [24] 1931 	mov	dpl,#0x29
      00074A C0 07            [24] 1932 	push	ar7
      00074C 12 06 C5         [24] 1933 	lcall	_sd_acmd
      00074F E5 82            [12] 1934 	mov	a,dpl
      000751 D0 07            [24] 1935 	pop	ar7
      000753 60 0A            [24] 1936 	jz	00118$
                                   1937 ;	sdcard.h:176: else if(retries++==SD_MAX_RETRIES) return SD_MAX_RETRIES_FAIL;
      000755 8F 06            [24] 1938 	mov	ar6,r7
      000757 0F               [12] 1939 	inc	r7
      000758 BE 19 E2         [24] 1940 	cjne	r6,#0x19,00117$
      00075B 75 82 FE         [24] 1941 	mov	dpl,#0xfe
      00075E 22               [24] 1942 	ret
      00075F                       1943 00118$:
                                   1944 ;	sdcard.h:182: if(sd_cmd(CMD58,0)) return SD_CMD_FAIL;  
      00075F E4               [12] 1945 	clr	a
      000760 F5 0D            [12] 1946 	mov	_sd_cmd_PARM_2,a
      000762 F5 0E            [12] 1947 	mov	(_sd_cmd_PARM_2 + 1),a
      000764 F5 0F            [12] 1948 	mov	(_sd_cmd_PARM_2 + 2),a
      000766 F5 10            [12] 1949 	mov	(_sd_cmd_PARM_2 + 3),a
      000768 75 82 3A         [24] 1950 	mov	dpl,#0x3a
      00076B 12 05 95         [24] 1951 	lcall	_sd_cmd
      00076E E5 82            [12] 1952 	mov	a,dpl
      000770 60 04            [24] 1953 	jz	00120$
      000772 75 82 FF         [24] 1954 	mov	dpl,#0xff
      000775 22               [24] 1955 	ret
      000776                       1956 00120$:
                                   1957 ;	sdcard.h:190: return 0; //successful init
      000776 75 82 00         [24] 1958 	mov	dpl,#0x00
                                   1959 ;	sdcard.h:191: }
      000779 22               [24] 1960 	ret
                                   1961 ;------------------------------------------------------------
                                   1962 ;Allocation info for local variables in function 'SDread'
                                   1963 ;------------------------------------------------------------
                                   1964 ;offset                    Allocated to stack - _bp -4
                                   1965 ;count                     Allocated to stack - _bp -6
                                   1966 ;dst                       Allocated to stack - _bp -9
                                   1967 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   1968 ;retries                   Allocated to registers r7 
                                   1969 ;response                  Allocated to registers r3 
                                   1970 ;i                         Allocated to registers r4 r5 
                                   1971 ;------------------------------------------------------------
                                   1972 ;	sdcard.h:206: uint8_t SDread(uint32_t block_addr, uint16_t offset, uint16_t count, uint8_t* dst ) __reentrant
                                   1973 ;	-----------------------------------------
                                   1974 ;	 function SDread
                                   1975 ;	-----------------------------------------
      00077A                       1976 _SDread:
      00077A C0 3C            [24] 1977 	push	_bp
      00077C 85 81 3C         [24] 1978 	mov	_bp,sp
      00077F AC 82            [24] 1979 	mov	r4,dpl
      000781 AD 83            [24] 1980 	mov	r5,dph
      000783 AE F0            [24] 1981 	mov	r6,b
      000785 FF               [12] 1982 	mov	r7,a
                                   1983 ;	sdcard.h:221: if (count == 0) return 0; //success
      000786 E5 3C            [12] 1984 	mov	a,_bp
      000788 24 FA            [12] 1985 	add	a,#0xfa
      00078A F8               [12] 1986 	mov	r0,a
      00078B E6               [12] 1987 	mov	a,@r0
      00078C 08               [12] 1988 	inc	r0
      00078D 46               [12] 1989 	orl	a,@r0
      00078E 70 05            [24] 1990 	jnz	00102$
      000790 F5 82            [12] 1991 	mov	dpl,a
      000792 02 08 93         [24] 1992 	ljmp	00131$
      000795                       1993 00102$:
                                   1994 ;	sdcard.h:222: if ((count + offset) > SD_BLOCK_SIZE) {
      000795 E5 3C            [12] 1995 	mov	a,_bp
      000797 24 FA            [12] 1996 	add	a,#0xfa
      000799 F8               [12] 1997 	mov	r0,a
      00079A E5 3C            [12] 1998 	mov	a,_bp
      00079C 24 FC            [12] 1999 	add	a,#0xfc
      00079E F9               [12] 2000 	mov	r1,a
      00079F E7               [12] 2001 	mov	a,@r1
      0007A0 26               [12] 2002 	add	a,@r0
      0007A1 FA               [12] 2003 	mov	r2,a
      0007A2 09               [12] 2004 	inc	r1
      0007A3 E7               [12] 2005 	mov	a,@r1
      0007A4 08               [12] 2006 	inc	r0
      0007A5 36               [12] 2007 	addc	a,@r0
      0007A6 FB               [12] 2008 	mov	r3,a
      0007A7 C3               [12] 2009 	clr	c
      0007A8 E4               [12] 2010 	clr	a
      0007A9 9A               [12] 2011 	subb	a,r2
      0007AA 74 02            [12] 2012 	mov	a,#0x02
      0007AC 9B               [12] 2013 	subb	a,r3
      0007AD 50 06            [24] 2014 	jnc	00105$
                                   2015 ;	sdcard.h:223: return 1; //fail
      0007AF 75 82 01         [24] 2016 	mov	dpl,#0x01
      0007B2 02 08 93         [24] 2017 	ljmp	00131$
                                   2018 ;	sdcard.h:231: spi_cs_low();
      0007B5                       2019 00105$:
      0007B5 53 90 F7         [24] 2020 	anl	_P1,#0xf7
                                   2021 ;	sdcard.h:236: if(sd_cmd(CMD17,block_addr)) return SD_CMD_FAIL; 
      0007B8 8C 0D            [24] 2022 	mov	_sd_cmd_PARM_2,r4
      0007BA 8D 0E            [24] 2023 	mov	(_sd_cmd_PARM_2 + 1),r5
      0007BC 8E 0F            [24] 2024 	mov	(_sd_cmd_PARM_2 + 2),r6
      0007BE 8F 10            [24] 2025 	mov	(_sd_cmd_PARM_2 + 3),r7
      0007C0 75 82 11         [24] 2026 	mov	dpl,#0x11
      0007C3 12 05 95         [24] 2027 	lcall	_sd_cmd
      0007C6 E5 82            [12] 2028 	mov	a,dpl
      0007C8 60 06            [24] 2029 	jz	00138$
      0007CA 75 82 FF         [24] 2030 	mov	dpl,#0xff
      0007CD 02 08 93         [24] 2031 	ljmp	00131$
                                   2032 ;	sdcard.h:240: while(1)
      0007D0                       2033 00138$:
      0007D0 7F 00            [12] 2034 	mov	r7,#0x00
      0007D2                       2035 00119$:
                                   2036 ;	sdcard.h:242: response = sd_spi_write(0xff);
      0007D2 75 3D 00         [24] 2037 	mov	_spi_transfer_PARM_2,#0x00
      0007D5 75 82 FF         [24] 2038 	mov	dpl,#0xff
      0007D8 C0 07            [24] 2039 	push	ar7
      0007DA 12 04 CA         [24] 2040 	lcall	_spi_transfer
      0007DD AE 82            [24] 2041 	mov	r6,dpl
      0007DF D0 07            [24] 2042 	pop	ar7
                                   2043 ;	sdcard.h:250: if(response==0xff); //pass
      0007E1 BE FF 02         [24] 2044 	cjne	r6,#0xff,00192$
      0007E4 80 0B            [24] 2045 	sjmp	00115$
      0007E6                       2046 00192$:
                                   2047 ;	sdcard.h:251: else if(response == DATA_START_BLOCK) break; // if the last response is DATA_START_BLOCK=0xFE, then success, else fail
      0007E6 BE FE 02         [24] 2048 	cjne	r6,#0xfe,00193$
      0007E9 80 12            [24] 2049 	sjmp	00143$
      0007EB                       2050 00193$:
                                   2051 ;	sdcard.h:252: else return DATA_START_BLOCK_FAIL; // if anything other than 0xff or DATA_START_BLOCK=0xFE
      0007EB 75 82 FD         [24] 2052 	mov	dpl,#0xfd
      0007EE 02 08 93         [24] 2053 	ljmp	00131$
      0007F1                       2054 00115$:
                                   2055 ;	sdcard.h:254: if(retries++==255) return SD_MAX_RETRIES_FAIL;
      0007F1 8F 06            [24] 2056 	mov	ar6,r7
      0007F3 0F               [12] 2057 	inc	r7
      0007F4 BE FF DB         [24] 2058 	cjne	r6,#0xff,00119$
      0007F7 75 82 FE         [24] 2059 	mov	dpl,#0xfe
      0007FA 02 08 93         [24] 2060 	ljmp	00131$
                                   2061 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      0007FD                       2062 00143$:
      0007FD E5 3C            [12] 2063 	mov	a,_bp
      0007FF 24 FC            [12] 2064 	add	a,#0xfc
      000801 F8               [12] 2065 	mov	r0,a
      000802 E5 3C            [12] 2066 	mov	a,_bp
      000804 24 FA            [12] 2067 	add	a,#0xfa
      000806 F9               [12] 2068 	mov	r1,a
      000807 E7               [12] 2069 	mov	a,@r1
      000808 26               [12] 2070 	add	a,@r0
      000809 FE               [12] 2071 	mov	r6,a
      00080A 09               [12] 2072 	inc	r1
      00080B E7               [12] 2073 	mov	a,@r1
      00080C 08               [12] 2074 	inc	r0
      00080D 36               [12] 2075 	addc	a,@r0
      00080E FF               [12] 2076 	mov	r7,a
      00080F 7C 00            [12] 2077 	mov	r4,#0x00
      000811 7D 00            [12] 2078 	mov	r5,#0x00
      000813                       2079 00129$:
      000813 74 FE            [12] 2080 	mov	a,#0x100 - 0x02
      000815 2D               [12] 2081 	add	a,r5
      000816 40 63            [24] 2082 	jc	00124$
                                   2083 ;	sdcard.h:262: response = spi_transfer(0xff,0);
      000818 75 3D 00         [24] 2084 	mov	_spi_transfer_PARM_2,#0x00
      00081B 75 82 FF         [24] 2085 	mov	dpl,#0xff
      00081E C0 07            [24] 2086 	push	ar7
      000820 C0 06            [24] 2087 	push	ar6
      000822 C0 05            [24] 2088 	push	ar5
      000824 C0 04            [24] 2089 	push	ar4
      000826 12 04 CA         [24] 2090 	lcall	_spi_transfer
      000829 AB 82            [24] 2091 	mov	r3,dpl
      00082B D0 04            [24] 2092 	pop	ar4
      00082D D0 05            [24] 2093 	pop	ar5
      00082F D0 06            [24] 2094 	pop	ar6
      000831 D0 07            [24] 2095 	pop	ar7
                                   2096 ;	sdcard.h:270: if(i>=offset && i<offset+count)
      000833 E5 3C            [12] 2097 	mov	a,_bp
      000835 24 FC            [12] 2098 	add	a,#0xfc
      000837 F8               [12] 2099 	mov	r0,a
      000838 C3               [12] 2100 	clr	c
      000839 EC               [12] 2101 	mov	a,r4
      00083A 96               [12] 2102 	subb	a,@r0
      00083B ED               [12] 2103 	mov	a,r5
      00083C 08               [12] 2104 	inc	r0
      00083D 96               [12] 2105 	subb	a,@r0
      00083E 40 34            [24] 2106 	jc	00130$
      000840 EC               [12] 2107 	mov	a,r4
      000841 9E               [12] 2108 	subb	a,r6
      000842 ED               [12] 2109 	mov	a,r5
      000843 9F               [12] 2110 	subb	a,r7
      000844 50 2E            [24] 2111 	jnc	00130$
                                   2112 ;	sdcard.h:272: dst[i-offset] = response;
      000846 C0 06            [24] 2113 	push	ar6
      000848 C0 07            [24] 2114 	push	ar7
      00084A E5 3C            [12] 2115 	mov	a,_bp
      00084C 24 FC            [12] 2116 	add	a,#0xfc
      00084E F8               [12] 2117 	mov	r0,a
      00084F EC               [12] 2118 	mov	a,r4
      000850 C3               [12] 2119 	clr	c
      000851 96               [12] 2120 	subb	a,@r0
      000852 FA               [12] 2121 	mov	r2,a
      000853 ED               [12] 2122 	mov	a,r5
      000854 08               [12] 2123 	inc	r0
      000855 96               [12] 2124 	subb	a,@r0
      000856 FF               [12] 2125 	mov	r7,a
      000857 E5 3C            [12] 2126 	mov	a,_bp
      000859 24 F7            [12] 2127 	add	a,#0xf7
      00085B F8               [12] 2128 	mov	r0,a
      00085C EA               [12] 2129 	mov	a,r2
      00085D 26               [12] 2130 	add	a,@r0
      00085E FA               [12] 2131 	mov	r2,a
      00085F EF               [12] 2132 	mov	a,r7
      000860 08               [12] 2133 	inc	r0
      000861 36               [12] 2134 	addc	a,@r0
      000862 FF               [12] 2135 	mov	r7,a
      000863 08               [12] 2136 	inc	r0
      000864 86 06            [24] 2137 	mov	ar6,@r0
      000866 8A 82            [24] 2138 	mov	dpl,r2
      000868 8F 83            [24] 2139 	mov	dph,r7
      00086A 8E F0            [24] 2140 	mov	b,r6
      00086C EB               [12] 2141 	mov	a,r3
      00086D 12 1C 2D         [24] 2142 	lcall	__gptrput
                                   2143 ;	sdcard.h:287: return 0; //success
      000870 D0 07            [24] 2144 	pop	ar7
      000872 D0 06            [24] 2145 	pop	ar6
                                   2146 ;	sdcard.h:272: dst[i-offset] = response;
      000874                       2147 00130$:
                                   2148 ;	sdcard.h:260: for(uint16_t i=0;i<512;i++)
      000874 0C               [12] 2149 	inc	r4
      000875 BC 00 9B         [24] 2150 	cjne	r4,#0x00,00129$
      000878 0D               [12] 2151 	inc	r5
      000879 80 98            [24] 2152 	sjmp	00129$
      00087B                       2153 00124$:
                                   2154 ;	sdcard.h:280: sd_spi_write(0xff);
      00087B 75 3D 00         [24] 2155 	mov	_spi_transfer_PARM_2,#0x00
      00087E 75 82 FF         [24] 2156 	mov	dpl,#0xff
      000881 12 04 CA         [24] 2157 	lcall	_spi_transfer
                                   2158 ;	sdcard.h:281: sd_spi_write(0xff);
      000884 75 3D 00         [24] 2159 	mov	_spi_transfer_PARM_2,#0x00
      000887 75 82 FF         [24] 2160 	mov	dpl,#0xff
      00088A 12 04 CA         [24] 2161 	lcall	_spi_transfer
                                   2162 ;	sdcard.h:284: spi_cs_high(); //leave clock high
      00088D 43 90 08         [24] 2163 	orl	_P1,#0x08
                                   2164 ;	sdcard.h:287: return 0; //success
      000890 75 82 00         [24] 2165 	mov	dpl,#0x00
      000893                       2166 00131$:
                                   2167 ;	sdcard.h:289: }
      000893 D0 3C            [24] 2168 	pop	_bp
      000895 22               [24] 2169 	ret
                                   2170 ;------------------------------------------------------------
                                   2171 ;Allocation info for local variables in function 'SDreadBlock'
                                   2172 ;------------------------------------------------------------
                                   2173 ;dst                       Allocated with name '_SDreadBlock_PARM_2'
                                   2174 ;block_addr                Allocated to registers r4 r5 r6 r7 
                                   2175 ;------------------------------------------------------------
                                   2176 ;	sdcard.h:291: uint8_t SDreadBlock(uint32_t block_addr,uint8_t* dst)
                                   2177 ;	-----------------------------------------
                                   2178 ;	 function SDreadBlock
                                   2179 ;	-----------------------------------------
      000896                       2180 _SDreadBlock:
      000896 AC 82            [24] 2181 	mov	r4,dpl
      000898 AD 83            [24] 2182 	mov	r5,dph
      00089A AE F0            [24] 2183 	mov	r6,b
      00089C FF               [12] 2184 	mov	r7,a
                                   2185 ;	sdcard.h:293: return SDread(block_addr,0,SD_BLOCK_SIZE,dst);
      00089D C0 15            [24] 2186 	push	_SDreadBlock_PARM_2
      00089F C0 16            [24] 2187 	push	(_SDreadBlock_PARM_2 + 1)
      0008A1 C0 17            [24] 2188 	push	(_SDreadBlock_PARM_2 + 2)
      0008A3 E4               [12] 2189 	clr	a
      0008A4 C0 E0            [24] 2190 	push	acc
      0008A6 74 02            [12] 2191 	mov	a,#0x02
      0008A8 C0 E0            [24] 2192 	push	acc
      0008AA E4               [12] 2193 	clr	a
      0008AB C0 E0            [24] 2194 	push	acc
      0008AD C0 E0            [24] 2195 	push	acc
      0008AF 8C 82            [24] 2196 	mov	dpl,r4
      0008B1 8D 83            [24] 2197 	mov	dph,r5
      0008B3 8E F0            [24] 2198 	mov	b,r6
      0008B5 EF               [12] 2199 	mov	a,r7
      0008B6 12 07 7A         [24] 2200 	lcall	_SDread
      0008B9 E5 81            [12] 2201 	mov	a,sp
      0008BB 24 F9            [12] 2202 	add	a,#0xf9
      0008BD F5 81            [12] 2203 	mov	sp,a
                                   2204 ;	sdcard.h:294: }
      0008BF 22               [24] 2205 	ret
                                   2206 ;------------------------------------------------------------
                                   2207 ;Allocation info for local variables in function 'HELPER_load_littleendian16'
                                   2208 ;------------------------------------------------------------
                                   2209 ;src                       Allocated to registers r5 r6 r7 
                                   2210 ;val                       Allocated to registers r2 r4 
                                   2211 ;------------------------------------------------------------
                                   2212 ;	fat.h:85: uint16_t HELPER_load_littleendian16(uint8_t *src) __reentrant
                                   2213 ;	-----------------------------------------
                                   2214 ;	 function HELPER_load_littleendian16
                                   2215 ;	-----------------------------------------
      0008C0                       2216 _HELPER_load_littleendian16:
      0008C0 AD 82            [24] 2217 	mov	r5,dpl
      0008C2 AE 83            [24] 2218 	mov	r6,dph
      0008C4 AF F0            [24] 2219 	mov	r7,b
                                   2220 ;	fat.h:89: val = *(src+1);
      0008C6 74 01            [12] 2221 	mov	a,#0x01
      0008C8 2D               [12] 2222 	add	a,r5
      0008C9 FA               [12] 2223 	mov	r2,a
      0008CA E4               [12] 2224 	clr	a
      0008CB 3E               [12] 2225 	addc	a,r6
      0008CC FB               [12] 2226 	mov	r3,a
      0008CD 8F 04            [24] 2227 	mov	ar4,r7
      0008CF 8A 82            [24] 2228 	mov	dpl,r2
      0008D1 8B 83            [24] 2229 	mov	dph,r3
      0008D3 8C F0            [24] 2230 	mov	b,r4
      0008D5 12 1D 20         [24] 2231 	lcall	__gptrget
                                   2232 ;	fat.h:90: val <<= 8;
      0008D8 FC               [12] 2233 	mov	r4,a
      0008D9 7A 00            [12] 2234 	mov	r2,#0x00
                                   2235 ;	fat.h:91: val |= *src;
      0008DB 8D 82            [24] 2236 	mov	dpl,r5
      0008DD 8E 83            [24] 2237 	mov	dph,r6
      0008DF 8F F0            [24] 2238 	mov	b,r7
      0008E1 12 1D 20         [24] 2239 	lcall	__gptrget
      0008E4 7F 00            [12] 2240 	mov	r7,#0x00
      0008E6 4A               [12] 2241 	orl	a,r2
      0008E7 F5 82            [12] 2242 	mov	dpl,a
      0008E9 EF               [12] 2243 	mov	a,r7
      0008EA 4C               [12] 2244 	orl	a,r4
      0008EB F5 83            [12] 2245 	mov	dph,a
                                   2246 ;	fat.h:93: return val;
                                   2247 ;	fat.h:94: }
      0008ED 22               [24] 2248 	ret
                                   2249 ;------------------------------------------------------------
                                   2250 ;Allocation info for local variables in function 'HELPER_load_littleendian32'
                                   2251 ;------------------------------------------------------------
                                   2252 ;src                       Allocated to stack - _bp +1
                                   2253 ;val                       Allocated to stack - _bp +8
                                   2254 ;i                         Allocated to stack - _bp +12
                                   2255 ;sloc0                     Allocated to stack - _bp +9
                                   2256 ;sloc1                     Allocated to stack - _bp +4
                                   2257 ;------------------------------------------------------------
                                   2258 ;	fat.h:96: uint32_t HELPER_load_littleendian32(uint8_t *src) __reentrant
                                   2259 ;	-----------------------------------------
                                   2260 ;	 function HELPER_load_littleendian32
                                   2261 ;	-----------------------------------------
      0008EE                       2262 _HELPER_load_littleendian32:
      0008EE C0 3C            [24] 2263 	push	_bp
      0008F0 85 81 3C         [24] 2264 	mov	_bp,sp
      0008F3 C0 82            [24] 2265 	push	dpl
      0008F5 C0 83            [24] 2266 	push	dph
      0008F7 C0 F0            [24] 2267 	push	b
      0008F9 E5 81            [12] 2268 	mov	a,sp
      0008FB 24 09            [12] 2269 	add	a,#0x09
      0008FD F5 81            [12] 2270 	mov	sp,a
                                   2271 ;	fat.h:98: uint32_t val=0;
                                   2272 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      0008FF E4               [12] 2273 	clr	a
      000900 FA               [12] 2274 	mov	r2,a
      000901 FB               [12] 2275 	mov	r3,a
      000902 FC               [12] 2276 	mov	r4,a
      000903 FF               [12] 2277 	mov	r7,a
      000904 E5 3C            [12] 2278 	mov	a,_bp
      000906 24 0C            [12] 2279 	add	a,#0x0c
      000908 F8               [12] 2280 	mov	r0,a
      000909 76 00            [12] 2281 	mov	@r0,#0x00
      00090B                       2282 00103$:
      00090B E5 3C            [12] 2283 	mov	a,_bp
      00090D 24 0C            [12] 2284 	add	a,#0x0c
      00090F F8               [12] 2285 	mov	r0,a
      000910 B6 04 00         [24] 2286 	cjne	@r0,#0x04,00118$
      000913                       2287 00118$:
      000913 50 6F            [24] 2288 	jnc	00101$
                                   2289 ;	fat.h:102: val <<= 8;
      000915 E5 3C            [12] 2290 	mov	a,_bp
      000917 24 08            [12] 2291 	add	a,#0x08
      000919 F8               [12] 2292 	mov	r0,a
      00091A 08               [12] 2293 	inc	r0
      00091B 08               [12] 2294 	inc	r0
      00091C 08               [12] 2295 	inc	r0
      00091D A6 04            [24] 2296 	mov	@r0,ar4
      00091F 18               [12] 2297 	dec	r0
      000920 A6 03            [24] 2298 	mov	@r0,ar3
      000922 18               [12] 2299 	dec	r0
      000923 A6 02            [24] 2300 	mov	@r0,ar2
      000925 18               [12] 2301 	dec	r0
      000926 76 00            [12] 2302 	mov	@r0,#0x00
                                   2303 ;	fat.h:103: val |= src[3-i];
      000928 E5 3C            [12] 2304 	mov	a,_bp
      00092A 24 0C            [12] 2305 	add	a,#0x0c
      00092C F8               [12] 2306 	mov	r0,a
      00092D 86 05            [24] 2307 	mov	ar5,@r0
      00092F 7E 00            [12] 2308 	mov	r6,#0x00
      000931 74 03            [12] 2309 	mov	a,#0x03
      000933 C3               [12] 2310 	clr	c
      000934 9D               [12] 2311 	subb	a,r5
      000935 FD               [12] 2312 	mov	r5,a
      000936 E4               [12] 2313 	clr	a
      000937 9E               [12] 2314 	subb	a,r6
      000938 FE               [12] 2315 	mov	r6,a
      000939 A8 3C            [24] 2316 	mov	r0,_bp
      00093B 08               [12] 2317 	inc	r0
      00093C ED               [12] 2318 	mov	a,r5
      00093D 26               [12] 2319 	add	a,@r0
      00093E FF               [12] 2320 	mov	r7,a
      00093F EE               [12] 2321 	mov	a,r6
      000940 08               [12] 2322 	inc	r0
      000941 36               [12] 2323 	addc	a,@r0
      000942 FE               [12] 2324 	mov	r6,a
      000943 08               [12] 2325 	inc	r0
      000944 86 05            [24] 2326 	mov	ar5,@r0
      000946 8F 82            [24] 2327 	mov	dpl,r7
      000948 8E 83            [24] 2328 	mov	dph,r6
      00094A 8D F0            [24] 2329 	mov	b,r5
      00094C 12 1D 20         [24] 2330 	lcall	__gptrget
      00094F FE               [12] 2331 	mov	r6,a
      000950 E5 3C            [12] 2332 	mov	a,_bp
      000952 24 04            [12] 2333 	add	a,#0x04
      000954 F8               [12] 2334 	mov	r0,a
      000955 A6 06            [24] 2335 	mov	@r0,ar6
      000957 08               [12] 2336 	inc	r0
      000958 76 00            [12] 2337 	mov	@r0,#0x00
      00095A 08               [12] 2338 	inc	r0
      00095B 76 00            [12] 2339 	mov	@r0,#0x00
      00095D 08               [12] 2340 	inc	r0
      00095E 76 00            [12] 2341 	mov	@r0,#0x00
      000960 E5 3C            [12] 2342 	mov	a,_bp
      000962 24 08            [12] 2343 	add	a,#0x08
      000964 F8               [12] 2344 	mov	r0,a
      000965 E5 3C            [12] 2345 	mov	a,_bp
      000967 24 04            [12] 2346 	add	a,#0x04
      000969 F9               [12] 2347 	mov	r1,a
      00096A E7               [12] 2348 	mov	a,@r1
      00096B 46               [12] 2349 	orl	a,@r0
      00096C FA               [12] 2350 	mov	r2,a
      00096D 09               [12] 2351 	inc	r1
      00096E E7               [12] 2352 	mov	a,@r1
      00096F 08               [12] 2353 	inc	r0
      000970 46               [12] 2354 	orl	a,@r0
      000971 FB               [12] 2355 	mov	r3,a
      000972 09               [12] 2356 	inc	r1
      000973 E7               [12] 2357 	mov	a,@r1
      000974 08               [12] 2358 	inc	r0
      000975 46               [12] 2359 	orl	a,@r0
      000976 FC               [12] 2360 	mov	r4,a
      000977 09               [12] 2361 	inc	r1
      000978 E7               [12] 2362 	mov	a,@r1
      000979 08               [12] 2363 	inc	r0
      00097A 46               [12] 2364 	orl	a,@r0
      00097B FF               [12] 2365 	mov	r7,a
                                   2366 ;	fat.h:100: for(uint8_t i=0;i<4;i++)
      00097C E5 3C            [12] 2367 	mov	a,_bp
      00097E 24 0C            [12] 2368 	add	a,#0x0c
      000980 F8               [12] 2369 	mov	r0,a
      000981 06               [12] 2370 	inc	@r0
      000982 80 87            [24] 2371 	sjmp	00103$
      000984                       2372 00101$:
                                   2373 ;	fat.h:106: return val;
      000984 8A 82            [24] 2374 	mov	dpl,r2
      000986 8B 83            [24] 2375 	mov	dph,r3
      000988 8C F0            [24] 2376 	mov	b,r4
      00098A EF               [12] 2377 	mov	a,r7
                                   2378 ;	fat.h:107: }
      00098B 85 3C 81         [24] 2379 	mov	sp,_bp
      00098E D0 3C            [24] 2380 	pop	_bp
      000990 22               [24] 2381 	ret
                                   2382 ;------------------------------------------------------------
                                   2383 ;Allocation info for local variables in function 'HELPER_strcmp'
                                   2384 ;------------------------------------------------------------
                                   2385 ;s2                        Allocated with name '_HELPER_strcmp_PARM_2'
                                   2386 ;s1                        Allocated to registers r5 r6 r7 
                                   2387 ;i                         Allocated to registers r4 
                                   2388 ;------------------------------------------------------------
                                   2389 ;	fat.h:109: uint8_t HELPER_strcmp(char *s1,char* s2)
                                   2390 ;	-----------------------------------------
                                   2391 ;	 function HELPER_strcmp
                                   2392 ;	-----------------------------------------
      000991                       2393 _HELPER_strcmp:
      000991 AD 82            [24] 2394 	mov	r5,dpl
      000993 AE 83            [24] 2395 	mov	r6,dph
      000995 AF F0            [24] 2396 	mov	r7,b
                                   2397 ;	fat.h:112: while(1)
      000997 7C 00            [12] 2398 	mov	r4,#0x00
      000999                       2399 00107$:
                                   2400 ;	fat.h:114: if(s1[i]==s2[i]);
      000999 EC               [12] 2401 	mov	a,r4
      00099A 2D               [12] 2402 	add	a,r5
      00099B F9               [12] 2403 	mov	r1,a
      00099C E4               [12] 2404 	clr	a
      00099D 3E               [12] 2405 	addc	a,r6
      00099E FA               [12] 2406 	mov	r2,a
      00099F 8F 03            [24] 2407 	mov	ar3,r7
      0009A1 89 82            [24] 2408 	mov	dpl,r1
      0009A3 8A 83            [24] 2409 	mov	dph,r2
      0009A5 8B F0            [24] 2410 	mov	b,r3
      0009A7 12 1D 20         [24] 2411 	lcall	__gptrget
      0009AA FB               [12] 2412 	mov	r3,a
      0009AB EC               [12] 2413 	mov	a,r4
      0009AC 25 3D            [12] 2414 	add	a,_HELPER_strcmp_PARM_2
      0009AE F8               [12] 2415 	mov	r0,a
      0009AF E4               [12] 2416 	clr	a
      0009B0 35 3E            [12] 2417 	addc	a,(_HELPER_strcmp_PARM_2 + 1)
      0009B2 F9               [12] 2418 	mov	r1,a
      0009B3 AA 3F            [24] 2419 	mov	r2,(_HELPER_strcmp_PARM_2 + 2)
      0009B5 88 82            [24] 2420 	mov	dpl,r0
      0009B7 89 83            [24] 2421 	mov	dph,r1
      0009B9 8A F0            [24] 2422 	mov	b,r2
      0009BB 12 1D 20         [24] 2423 	lcall	__gptrget
      0009BE F8               [12] 2424 	mov	r0,a
      0009BF EB               [12] 2425 	mov	a,r3
      0009C0 B5 00 02         [24] 2426 	cjne	a,ar0,00123$
      0009C3 80 04            [24] 2427 	sjmp	00103$
      0009C5                       2428 00123$:
                                   2429 ;	fat.h:115: else return 1;
      0009C5 75 82 01         [24] 2430 	mov	dpl,#0x01
      0009C8 22               [24] 2431 	ret
      0009C9                       2432 00103$:
                                   2433 ;	fat.h:117: if(s1[i]==0) return 0;
      0009C9 EB               [12] 2434 	mov	a,r3
      0009CA 70 03            [24] 2435 	jnz	00105$
      0009CC F5 82            [12] 2436 	mov	dpl,a
      0009CE 22               [24] 2437 	ret
      0009CF                       2438 00105$:
                                   2439 ;	fat.h:118: i++;
      0009CF 0C               [12] 2440 	inc	r4
                                   2441 ;	fat.h:120: }
      0009D0 80 C7            [24] 2442 	sjmp	00107$
                                   2443 ;------------------------------------------------------------
                                   2444 ;Allocation info for local variables in function 'HELPER_strncmp'
                                   2445 ;------------------------------------------------------------
                                   2446 ;s2                        Allocated with name '_HELPER_strncmp_PARM_2'
                                   2447 ;n                         Allocated with name '_HELPER_strncmp_PARM_3'
                                   2448 ;s1                        Allocated to registers r5 r6 r7 
                                   2449 ;i                         Allocated to registers r4 
                                   2450 ;------------------------------------------------------------
                                   2451 ;	fat.h:122: uint8_t HELPER_strncmp(char *s1,char* s2,uint8_t n)
                                   2452 ;	-----------------------------------------
                                   2453 ;	 function HELPER_strncmp
                                   2454 ;	-----------------------------------------
      0009D2                       2455 _HELPER_strncmp:
      0009D2 AD 82            [24] 2456 	mov	r5,dpl
      0009D4 AE 83            [24] 2457 	mov	r6,dph
      0009D6 AF F0            [24] 2458 	mov	r7,b
                                   2459 ;	fat.h:125: while(1)
      0009D8 7C 00            [12] 2460 	mov	r4,#0x00
      0009DA                       2461 00109$:
                                   2462 ;	fat.h:127: if(i==n) return 0; //done - successful
      0009DA EC               [12] 2463 	mov	a,r4
      0009DB B5 40 04         [24] 2464 	cjne	a,_HELPER_strncmp_PARM_3,00102$
      0009DE 75 82 00         [24] 2465 	mov	dpl,#0x00
      0009E1 22               [24] 2466 	ret
      0009E2                       2467 00102$:
                                   2468 ;	fat.h:129: if(s1[i]==s2[i]);
      0009E2 EC               [12] 2469 	mov	a,r4
      0009E3 2D               [12] 2470 	add	a,r5
      0009E4 F9               [12] 2471 	mov	r1,a
      0009E5 E4               [12] 2472 	clr	a
      0009E6 3E               [12] 2473 	addc	a,r6
      0009E7 FA               [12] 2474 	mov	r2,a
      0009E8 8F 03            [24] 2475 	mov	ar3,r7
      0009EA 89 82            [24] 2476 	mov	dpl,r1
      0009EC 8A 83            [24] 2477 	mov	dph,r2
      0009EE 8B F0            [24] 2478 	mov	b,r3
      0009F0 12 1D 20         [24] 2479 	lcall	__gptrget
      0009F3 FB               [12] 2480 	mov	r3,a
      0009F4 EC               [12] 2481 	mov	a,r4
      0009F5 25 3D            [12] 2482 	add	a,_HELPER_strncmp_PARM_2
      0009F7 F8               [12] 2483 	mov	r0,a
      0009F8 E4               [12] 2484 	clr	a
      0009F9 35 3E            [12] 2485 	addc	a,(_HELPER_strncmp_PARM_2 + 1)
      0009FB F9               [12] 2486 	mov	r1,a
      0009FC AA 3F            [24] 2487 	mov	r2,(_HELPER_strncmp_PARM_2 + 2)
      0009FE 88 82            [24] 2488 	mov	dpl,r0
      000A00 89 83            [24] 2489 	mov	dph,r1
      000A02 8A F0            [24] 2490 	mov	b,r2
      000A04 12 1D 20         [24] 2491 	lcall	__gptrget
      000A07 F8               [12] 2492 	mov	r0,a
      000A08 EB               [12] 2493 	mov	a,r3
      000A09 B5 00 02         [24] 2494 	cjne	a,ar0,00131$
      000A0C 80 04            [24] 2495 	sjmp	00105$
      000A0E                       2496 00131$:
                                   2497 ;	fat.h:130: else return 1;
      000A0E 75 82 01         [24] 2498 	mov	dpl,#0x01
      000A11 22               [24] 2499 	ret
      000A12                       2500 00105$:
                                   2501 ;	fat.h:132: if(s1[i]==0) return 0; //if string length < n, return success as well as we donot want to compare more
      000A12 EB               [12] 2502 	mov	a,r3
      000A13 70 03            [24] 2503 	jnz	00107$
      000A15 F5 82            [12] 2504 	mov	dpl,a
      000A17 22               [24] 2505 	ret
      000A18                       2506 00107$:
                                   2507 ;	fat.h:133: i++;
      000A18 0C               [12] 2508 	inc	r4
                                   2509 ;	fat.h:135: }
      000A19 80 BF            [24] 2510 	sjmp	00109$
                                   2511 ;------------------------------------------------------------
                                   2512 ;Allocation info for local variables in function 'HELPER_strlen'
                                   2513 ;------------------------------------------------------------
                                   2514 ;s                         Allocated to registers r5 r6 r7 
                                   2515 ;i                         Allocated to registers r4 
                                   2516 ;------------------------------------------------------------
                                   2517 ;	fat.h:137: uint8_t HELPER_strlen(char *s)
                                   2518 ;	-----------------------------------------
                                   2519 ;	 function HELPER_strlen
                                   2520 ;	-----------------------------------------
      000A1B                       2521 _HELPER_strlen:
      000A1B AD 82            [24] 2522 	mov	r5,dpl
      000A1D AE 83            [24] 2523 	mov	r6,dph
      000A1F AF F0            [24] 2524 	mov	r7,b
                                   2525 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      000A21 7C 00            [12] 2526 	mov	r4,#0x00
      000A23 7B 00            [12] 2527 	mov	r3,#0x00
      000A25                       2528 00105$:
      000A25 BB FF 00         [24] 2529 	cjne	r3,#0xff,00121$
      000A28                       2530 00121$:
      000A28 50 1B            [24] 2531 	jnc	00103$
                                   2532 ;	fat.h:141: if(s[i]==0) return i;
      000A2A EB               [12] 2533 	mov	a,r3
      000A2B 2D               [12] 2534 	add	a,r5
      000A2C F8               [12] 2535 	mov	r0,a
      000A2D E4               [12] 2536 	clr	a
      000A2E 3E               [12] 2537 	addc	a,r6
      000A2F F9               [12] 2538 	mov	r1,a
      000A30 8F 02            [24] 2539 	mov	ar2,r7
      000A32 88 82            [24] 2540 	mov	dpl,r0
      000A34 89 83            [24] 2541 	mov	dph,r1
      000A36 8A F0            [24] 2542 	mov	b,r2
      000A38 12 1D 20         [24] 2543 	lcall	__gptrget
      000A3B 70 03            [24] 2544 	jnz	00106$
      000A3D 8C 82            [24] 2545 	mov	dpl,r4
      000A3F 22               [24] 2546 	ret
      000A40                       2547 00106$:
                                   2548 ;	fat.h:139: for(uint8_t i=0;i<255;i++)
      000A40 0B               [12] 2549 	inc	r3
      000A41 8B 04            [24] 2550 	mov	ar4,r3
      000A43 80 E0            [24] 2551 	sjmp	00105$
      000A45                       2552 00103$:
                                   2553 ;	fat.h:144: return 255;
      000A45 75 82 FF         [24] 2554 	mov	dpl,#0xff
                                   2555 ;	fat.h:145: }
      000A48 22               [24] 2556 	ret
                                   2557 ;------------------------------------------------------------
                                   2558 ;Allocation info for local variables in function 'HELPER_rootentry_type'
                                   2559 ;------------------------------------------------------------
                                   2560 ;re                        Allocated to registers r5 r6 r7 
                                   2561 ;------------------------------------------------------------
                                   2562 ;	fat.h:147: uint8_t HELPER_rootentry_type(ROOTENTRY *re)
                                   2563 ;	-----------------------------------------
                                   2564 ;	 function HELPER_rootentry_type
                                   2565 ;	-----------------------------------------
      000A49                       2566 _HELPER_rootentry_type:
      000A49 AD 82            [24] 2567 	mov	r5,dpl
      000A4B AE 83            [24] 2568 	mov	r6,dph
      000A4D AF F0            [24] 2569 	mov	r7,b
                                   2570 ;	fat.h:149: if(re->attributes & 1<<FILETYPE_HIDDEN) return FILETYPE_HIDDEN; //directory entry
      000A4F 74 0B            [12] 2571 	mov	a,#0x0b
      000A51 2D               [12] 2572 	add	a,r5
      000A52 FA               [12] 2573 	mov	r2,a
      000A53 E4               [12] 2574 	clr	a
      000A54 3E               [12] 2575 	addc	a,r6
      000A55 FB               [12] 2576 	mov	r3,a
      000A56 8F 04            [24] 2577 	mov	ar4,r7
      000A58 8A 82            [24] 2578 	mov	dpl,r2
      000A5A 8B 83            [24] 2579 	mov	dph,r3
      000A5C 8C F0            [24] 2580 	mov	b,r4
      000A5E 12 1D 20         [24] 2581 	lcall	__gptrget
      000A61 FC               [12] 2582 	mov	r4,a
      000A62 30 E1 04         [24] 2583 	jnb	acc.1,00102$
      000A65 75 82 01         [24] 2584 	mov	dpl,#0x01
      000A68 22               [24] 2585 	ret
      000A69                       2586 00102$:
                                   2587 ;	fat.h:150: if(re->attributes & 1<<FILETYPE_SYSTEM) return FILETYPE_SYSTEM; //directory entry
      000A69 EC               [12] 2588 	mov	a,r4
      000A6A 30 E2 04         [24] 2589 	jnb	acc.2,00104$
      000A6D 75 82 02         [24] 2590 	mov	dpl,#0x02
      000A70 22               [24] 2591 	ret
      000A71                       2592 00104$:
                                   2593 ;	fat.h:151: if(re->attributes & 1<<FILETYPE_VOLUME) return FILETYPE_VOLUME; //directory entry
      000A71 EC               [12] 2594 	mov	a,r4
      000A72 30 E3 04         [24] 2595 	jnb	acc.3,00106$
      000A75 75 82 03         [24] 2596 	mov	dpl,#0x03
      000A78 22               [24] 2597 	ret
      000A79                       2598 00106$:
                                   2599 ;	fat.h:153: if(re->startCluster==0) return FILETYPE_NOFILE; //no file
      000A79 74 0C            [12] 2600 	mov	a,#0x0c
      000A7B 2D               [12] 2601 	add	a,r5
      000A7C FA               [12] 2602 	mov	r2,a
      000A7D E4               [12] 2603 	clr	a
      000A7E 3E               [12] 2604 	addc	a,r6
      000A7F FB               [12] 2605 	mov	r3,a
      000A80 8F 04            [24] 2606 	mov	ar4,r7
      000A82 8A 82            [24] 2607 	mov	dpl,r2
      000A84 8B 83            [24] 2608 	mov	dph,r3
      000A86 8C F0            [24] 2609 	mov	b,r4
      000A88 12 1D 20         [24] 2610 	lcall	__gptrget
      000A8B FA               [12] 2611 	mov	r2,a
      000A8C A3               [24] 2612 	inc	dptr
      000A8D 12 1D 20         [24] 2613 	lcall	__gptrget
      000A90 4A               [12] 2614 	orl	a,r2
      000A91 70 04            [24] 2615 	jnz	00111$
      000A93 75 82 FF         [24] 2616 	mov	dpl,#0xff
      000A96 22               [24] 2617 	ret
      000A97                       2618 00111$:
                                   2619 ;	fat.h:154: else if(re->size==0) return FILETYPE_EMPTYFILE; //empty file
      000A97 74 0E            [12] 2620 	mov	a,#0x0e
      000A99 2D               [12] 2621 	add	a,r5
      000A9A FD               [12] 2622 	mov	r5,a
      000A9B E4               [12] 2623 	clr	a
      000A9C 3E               [12] 2624 	addc	a,r6
      000A9D FE               [12] 2625 	mov	r6,a
      000A9E 8D 82            [24] 2626 	mov	dpl,r5
      000AA0 8E 83            [24] 2627 	mov	dph,r6
      000AA2 8F F0            [24] 2628 	mov	b,r7
      000AA4 12 1D 20         [24] 2629 	lcall	__gptrget
      000AA7 FD               [12] 2630 	mov	r5,a
      000AA8 A3               [24] 2631 	inc	dptr
      000AA9 12 1D 20         [24] 2632 	lcall	__gptrget
      000AAC FE               [12] 2633 	mov	r6,a
      000AAD A3               [24] 2634 	inc	dptr
      000AAE 12 1D 20         [24] 2635 	lcall	__gptrget
      000AB1 FF               [12] 2636 	mov	r7,a
      000AB2 A3               [24] 2637 	inc	dptr
      000AB3 12 1D 20         [24] 2638 	lcall	__gptrget
      000AB6 FC               [12] 2639 	mov	r4,a
      000AB7 ED               [12] 2640 	mov	a,r5
      000AB8 4E               [12] 2641 	orl	a,r6
      000AB9 4F               [12] 2642 	orl	a,r7
      000ABA 4C               [12] 2643 	orl	a,r4
      000ABB 70 04            [24] 2644 	jnz	00108$
      000ABD 75 82 FE         [24] 2645 	mov	dpl,#0xfe
      000AC0 22               [24] 2646 	ret
      000AC1                       2647 00108$:
                                   2648 ;	fat.h:155: else return 0; // valid non-empty file
      000AC1 75 82 00         [24] 2649 	mov	dpl,#0x00
                                   2650 ;	fat.h:157: }
      000AC4 22               [24] 2651 	ret
                                   2652 ;------------------------------------------------------------
                                   2653 ;Allocation info for local variables in function 'HELPER_to_uppercase'
                                   2654 ;------------------------------------------------------------
                                   2655 ;s                         Allocated to registers r5 r6 r7 
                                   2656 ;i                         Allocated to registers r4 
                                   2657 ;------------------------------------------------------------
                                   2658 ;	fat.h:162: void HELPER_to_uppercase(char *s)
                                   2659 ;	-----------------------------------------
                                   2660 ;	 function HELPER_to_uppercase
                                   2661 ;	-----------------------------------------
      000AC5                       2662 _HELPER_to_uppercase:
      000AC5 AD 82            [24] 2663 	mov	r5,dpl
      000AC7 AE 83            [24] 2664 	mov	r6,dph
      000AC9 AF F0            [24] 2665 	mov	r7,b
                                   2666 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000ACB 7C 00            [12] 2667 	mov	r4,#0x00
      000ACD                       2668 00108$:
      000ACD BC FF 00         [24] 2669 	cjne	r4,#0xff,00132$
      000AD0                       2670 00132$:
      000AD0 50 2F            [24] 2671 	jnc	00110$
                                   2672 ;	fat.h:166: if(s[i]==0) return; //done
      000AD2 EC               [12] 2673 	mov	a,r4
      000AD3 2D               [12] 2674 	add	a,r5
      000AD4 F9               [12] 2675 	mov	r1,a
      000AD5 E4               [12] 2676 	clr	a
      000AD6 3E               [12] 2677 	addc	a,r6
      000AD7 FA               [12] 2678 	mov	r2,a
      000AD8 8F 03            [24] 2679 	mov	ar3,r7
      000ADA 89 82            [24] 2680 	mov	dpl,r1
      000ADC 8A 83            [24] 2681 	mov	dph,r2
      000ADE 8B F0            [24] 2682 	mov	b,r3
      000AE0 12 1D 20         [24] 2683 	lcall	__gptrget
      000AE3 F8               [12] 2684 	mov	r0,a
      000AE4 70 01            [24] 2685 	jnz	00102$
      000AE6 22               [24] 2686 	ret
      000AE7                       2687 00102$:
                                   2688 ;	fat.h:167: if('a'<=s[i] && s[i]<='z') s[i] = s[i] - 32;
      000AE7 B8 61 00         [24] 2689 	cjne	r0,#0x61,00135$
      000AEA                       2690 00135$:
      000AEA 40 12            [24] 2691 	jc	00109$
      000AEC E8               [12] 2692 	mov	a,r0
      000AED 24 85            [12] 2693 	add	a,#0xff - 0x7a
      000AEF 40 0D            [24] 2694 	jc	00109$
      000AF1 E8               [12] 2695 	mov	a,r0
      000AF2 24 E0            [12] 2696 	add	a,#0xe0
      000AF4 F8               [12] 2697 	mov	r0,a
      000AF5 89 82            [24] 2698 	mov	dpl,r1
      000AF7 8A 83            [24] 2699 	mov	dph,r2
      000AF9 8B F0            [24] 2700 	mov	b,r3
      000AFB 12 1C 2D         [24] 2701 	lcall	__gptrput
      000AFE                       2702 00109$:
                                   2703 ;	fat.h:164: for(uint8_t i=0;i<255;i++)
      000AFE 0C               [12] 2704 	inc	r4
      000AFF 80 CC            [24] 2705 	sjmp	00108$
      000B01                       2706 00110$:
                                   2707 ;	fat.h:169: }
      000B01 22               [24] 2708 	ret
                                   2709 ;------------------------------------------------------------
                                   2710 ;Allocation info for local variables in function 'HELPER_filename_to_8dot3filename'
                                   2711 ;------------------------------------------------------------
                                   2712 ;fname83                   Allocated with name '_HELPER_filename_to_8dot3filename_PARM_2'
                                   2713 ;fname                     Allocated with name '_HELPER_filename_to_8dot3filename_fname_65536_125'
                                   2714 ;index                     Allocated to registers r4 
                                   2715 ;i                         Allocated to registers r4 
                                   2716 ;i                         Allocated with name '_HELPER_filename_to_8dot3filename_i_131072_131'
                                   2717 ;------------------------------------------------------------
                                   2718 ;	fat.h:171: uint8_t HELPER_filename_to_8dot3filename( char *fname,  char *fname83)
                                   2719 ;	-----------------------------------------
                                   2720 ;	 function HELPER_filename_to_8dot3filename
                                   2721 ;	-----------------------------------------
      000B02                       2722 _HELPER_filename_to_8dot3filename:
                                   2723 ;	fat.h:176: HELPER_to_uppercase(fname);
      000B02 85 82 1B         [24] 2724 	mov	_HELPER_filename_to_8dot3filename_fname_65536_125,dpl
      000B05 85 83 1C         [24] 2725 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1),dph
      000B08 85 F0 1D         [24] 2726 	mov	(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2),b
      000B0B 12 0A C5         [24] 2727 	lcall	_HELPER_to_uppercase
                                   2728 ;	fat.h:184: for(uint8_t i=0;i<11;i++) fname83[i]=' '; //default fill by empty space
      000B0E 7C 00            [12] 2729 	mov	r4,#0x00
      000B10                       2730 00120$:
      000B10 BC 0B 00         [24] 2731 	cjne	r4,#0x0b,00178$
      000B13                       2732 00178$:
      000B13 50 18            [24] 2733 	jnc	00101$
      000B15 EC               [12] 2734 	mov	a,r4
      000B16 25 18            [12] 2735 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B18 F9               [12] 2736 	mov	r1,a
      000B19 E4               [12] 2737 	clr	a
      000B1A 35 19            [12] 2738 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B1C FA               [12] 2739 	mov	r2,a
      000B1D AB 1A            [24] 2740 	mov	r3,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B1F 89 82            [24] 2741 	mov	dpl,r1
      000B21 8A 83            [24] 2742 	mov	dph,r2
      000B23 8B F0            [24] 2743 	mov	b,r3
      000B25 74 20            [12] 2744 	mov	a,#0x20
      000B27 12 1C 2D         [24] 2745 	lcall	__gptrput
      000B2A 0C               [12] 2746 	inc	r4
      000B2B 80 E3            [24] 2747 	sjmp	00120$
      000B2D                       2748 00101$:
                                   2749 ;	fat.h:185: fname83[11]=0; //set last character as 0;
      000B2D 74 0B            [12] 2750 	mov	a,#0x0b
      000B2F 25 18            [12] 2751 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B31 FA               [12] 2752 	mov	r2,a
      000B32 E4               [12] 2753 	clr	a
      000B33 35 19            [12] 2754 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B35 FB               [12] 2755 	mov	r3,a
      000B36 AC 1A            [24] 2756 	mov	r4,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B38 8A 82            [24] 2757 	mov	dpl,r2
      000B3A 8B 83            [24] 2758 	mov	dph,r3
      000B3C 8C F0            [24] 2759 	mov	b,r4
      000B3E E4               [12] 2760 	clr	a
      000B3F 12 1C 2D         [24] 2761 	lcall	__gptrput
                                   2762 ;	fat.h:188: for(index=0;index<9;index++)
      000B42 7C 00            [12] 2763 	mov	r4,#0x00
      000B44 7B 00            [12] 2764 	mov	r3,#0x00
      000B46                       2765 00122$:
                                   2766 ;	fat.h:191: if(index==8 && fname[index]!='.') 
      000B46 BB 08 1D         [24] 2767 	cjne	r3,#0x08,00103$
      000B49 EB               [12] 2768 	mov	a,r3
      000B4A 25 1B            [12] 2769 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000B4C F8               [12] 2770 	mov	r0,a
      000B4D E4               [12] 2771 	clr	a
      000B4E 35 1C            [12] 2772 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000B50 F9               [12] 2773 	mov	r1,a
      000B51 AA 1D            [24] 2774 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000B53 88 82            [24] 2775 	mov	dpl,r0
      000B55 89 83            [24] 2776 	mov	dph,r1
      000B57 8A F0            [24] 2777 	mov	b,r2
      000B59 12 1D 20         [24] 2778 	lcall	__gptrget
      000B5C F8               [12] 2779 	mov	r0,a
      000B5D B8 2E 02         [24] 2780 	cjne	r0,#0x2e,00182$
      000B60 80 04            [24] 2781 	sjmp	00103$
      000B62                       2782 00182$:
                                   2783 ;	fat.h:196: return 1; //error - invalid filename as dot not found till 9th charcter
      000B62 75 82 01         [24] 2784 	mov	dpl,#0x01
      000B65 22               [24] 2785 	ret
      000B66                       2786 00103$:
                                   2787 ;	fat.h:199: if(fname[index]==0) return 0; // success - we reached the end of the filename string before the dot character - filename has no extension
      000B66 EB               [12] 2788 	mov	a,r3
      000B67 25 1B            [12] 2789 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000B69 F8               [12] 2790 	mov	r0,a
      000B6A E4               [12] 2791 	clr	a
      000B6B 35 1C            [12] 2792 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000B6D F9               [12] 2793 	mov	r1,a
      000B6E AA 1D            [24] 2794 	mov	r2,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000B70 88 82            [24] 2795 	mov	dpl,r0
      000B72 89 83            [24] 2796 	mov	dph,r1
      000B74 8A F0            [24] 2797 	mov	b,r2
      000B76 12 1D 20         [24] 2798 	lcall	__gptrget
      000B79 FA               [12] 2799 	mov	r2,a
      000B7A 70 03            [24] 2800 	jnz	00109$
      000B7C F5 82            [12] 2801 	mov	dpl,a
      000B7E 22               [24] 2802 	ret
      000B7F                       2803 00109$:
                                   2804 ;	fat.h:200: else if(fname[index]=='.') break; //found the dot, break the for loop
      000B7F BA 2E 02         [24] 2805 	cjne	r2,#0x2e,00184$
      000B82 80 1C            [24] 2806 	sjmp	00140$
      000B84                       2807 00184$:
                                   2808 ;	fat.h:201: else fname83[index]=fname[index];
      000B84 EB               [12] 2809 	mov	a,r3
      000B85 25 18            [12] 2810 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000B87 F8               [12] 2811 	mov	r0,a
      000B88 E4               [12] 2812 	clr	a
      000B89 35 19            [12] 2813 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000B8B F9               [12] 2814 	mov	r1,a
      000B8C AF 1A            [24] 2815 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000B8E 88 82            [24] 2816 	mov	dpl,r0
      000B90 89 83            [24] 2817 	mov	dph,r1
      000B92 8F F0            [24] 2818 	mov	b,r7
      000B94 EA               [12] 2819 	mov	a,r2
      000B95 12 1C 2D         [24] 2820 	lcall	__gptrput
                                   2821 ;	fat.h:188: for(index=0;index<9;index++)
      000B98 0B               [12] 2822 	inc	r3
      000B99 8B 04            [24] 2823 	mov	ar4,r3
      000B9B BB 09 00         [24] 2824 	cjne	r3,#0x09,00185$
      000B9E                       2825 00185$:
      000B9E 40 A6            [24] 2826 	jc	00122$
                                   2827 ;	fat.h:204: for(uint8_t i=0;i<4;i++)
      000BA0                       2828 00140$:
      000BA0 75 1E 00         [24] 2829 	mov	_HELPER_filename_to_8dot3filename_i_131072_131,#0x00
      000BA3                       2830 00125$:
      000BA3 74 FC            [12] 2831 	mov	a,#0x100 - 0x04
      000BA5 25 1E            [12] 2832 	add	a,_HELPER_filename_to_8dot3filename_i_131072_131
      000BA7 50 03            [24] 2833 	jnc	00187$
      000BA9 02 0C 46         [24] 2834 	ljmp	00118$
      000BAC                       2835 00187$:
                                   2836 ;	fat.h:206: if(i==3 && fname[index+i+1]!=0) 
      000BAC 74 03            [12] 2837 	mov	a,#0x03
      000BAE B5 1E 2C         [24] 2838 	cjne	a,_HELPER_filename_to_8dot3filename_i_131072_131,00113$
      000BB1 8C 05            [24] 2839 	mov	ar5,r4
      000BB3 7E 00            [12] 2840 	mov	r6,#0x00
      000BB5 AA 1E            [24] 2841 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_131
      000BB7 7B 00            [12] 2842 	mov	r3,#0x00
      000BB9 EA               [12] 2843 	mov	a,r2
      000BBA 2D               [12] 2844 	add	a,r5
      000BBB FD               [12] 2845 	mov	r5,a
      000BBC EB               [12] 2846 	mov	a,r3
      000BBD 3E               [12] 2847 	addc	a,r6
      000BBE FE               [12] 2848 	mov	r6,a
      000BBF 0D               [12] 2849 	inc	r5
      000BC0 BD 00 01         [24] 2850 	cjne	r5,#0x00,00190$
      000BC3 0E               [12] 2851 	inc	r6
      000BC4                       2852 00190$:
      000BC4 ED               [12] 2853 	mov	a,r5
      000BC5 25 1B            [12] 2854 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000BC7 FD               [12] 2855 	mov	r5,a
      000BC8 EE               [12] 2856 	mov	a,r6
      000BC9 35 1C            [12] 2857 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000BCB FE               [12] 2858 	mov	r6,a
      000BCC AB 1D            [24] 2859 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000BCE 8D 82            [24] 2860 	mov	dpl,r5
      000BD0 8E 83            [24] 2861 	mov	dph,r6
      000BD2 8B F0            [24] 2862 	mov	b,r3
      000BD4 12 1D 20         [24] 2863 	lcall	__gptrget
      000BD7 60 04            [24] 2864 	jz	00113$
                                   2865 ;	fat.h:211: return 2; // error - extension has more than 3 characters
      000BD9 75 82 02         [24] 2866 	mov	dpl,#0x02
      000BDC 22               [24] 2867 	ret
      000BDD                       2868 00113$:
                                   2869 ;	fat.h:215: if(fname[index+i+1]==0) 
      000BDD 8C 05            [24] 2870 	mov	ar5,r4
      000BDF 7E 00            [12] 2871 	mov	r6,#0x00
      000BE1 AA 1E            [24] 2872 	mov	r2,_HELPER_filename_to_8dot3filename_i_131072_131
      000BE3 7B 00            [12] 2873 	mov	r3,#0x00
      000BE5 EA               [12] 2874 	mov	a,r2
      000BE6 2D               [12] 2875 	add	a,r5
      000BE7 F8               [12] 2876 	mov	r0,a
      000BE8 EB               [12] 2877 	mov	a,r3
      000BE9 3E               [12] 2878 	addc	a,r6
      000BEA F9               [12] 2879 	mov	r1,a
      000BEB 08               [12] 2880 	inc	r0
      000BEC B8 00 01         [24] 2881 	cjne	r0,#0x00,00192$
      000BEF 09               [12] 2882 	inc	r1
      000BF0                       2883 00192$:
      000BF0 E8               [12] 2884 	mov	a,r0
      000BF1 25 1B            [12] 2885 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000BF3 F8               [12] 2886 	mov	r0,a
      000BF4 E9               [12] 2887 	mov	a,r1
      000BF5 35 1C            [12] 2888 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000BF7 F9               [12] 2889 	mov	r1,a
      000BF8 AF 1D            [24] 2890 	mov	r7,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000BFA 88 82            [24] 2891 	mov	dpl,r0
      000BFC 89 83            [24] 2892 	mov	dph,r1
      000BFE 8F F0            [24] 2893 	mov	b,r7
      000C00 12 1D 20         [24] 2894 	lcall	__gptrget
                                   2895 ;	fat.h:224: return 0; 
      000C03 70 03            [24] 2896 	jnz	00116$
      000C05 F5 82            [12] 2897 	mov	dpl,a
      000C07 22               [24] 2898 	ret
      000C08                       2899 00116$:
                                   2900 ;	fat.h:226: else fname83[8+i]=fname[index+i+1]; // in a valid fname, there is just an extra dot in fname than in fname83
      000C08 74 08            [12] 2901 	mov	a,#0x08
      000C0A 2A               [12] 2902 	add	a,r2
      000C0B F9               [12] 2903 	mov	r1,a
      000C0C E4               [12] 2904 	clr	a
      000C0D 3B               [12] 2905 	addc	a,r3
      000C0E FF               [12] 2906 	mov	r7,a
      000C0F E9               [12] 2907 	mov	a,r1
      000C10 25 18            [12] 2908 	add	a,_HELPER_filename_to_8dot3filename_PARM_2
      000C12 F9               [12] 2909 	mov	r1,a
      000C13 EF               [12] 2910 	mov	a,r7
      000C14 35 19            [12] 2911 	addc	a,(_HELPER_filename_to_8dot3filename_PARM_2 + 1)
      000C16 F8               [12] 2912 	mov	r0,a
      000C17 AF 1A            [24] 2913 	mov	r7,(_HELPER_filename_to_8dot3filename_PARM_2 + 2)
      000C19 EA               [12] 2914 	mov	a,r2
      000C1A 2D               [12] 2915 	add	a,r5
      000C1B FD               [12] 2916 	mov	r5,a
      000C1C EB               [12] 2917 	mov	a,r3
      000C1D 3E               [12] 2918 	addc	a,r6
      000C1E FE               [12] 2919 	mov	r6,a
      000C1F 0D               [12] 2920 	inc	r5
      000C20 BD 00 01         [24] 2921 	cjne	r5,#0x00,00194$
      000C23 0E               [12] 2922 	inc	r6
      000C24                       2923 00194$:
      000C24 ED               [12] 2924 	mov	a,r5
      000C25 25 1B            [12] 2925 	add	a,_HELPER_filename_to_8dot3filename_fname_65536_125
      000C27 FD               [12] 2926 	mov	r5,a
      000C28 EE               [12] 2927 	mov	a,r6
      000C29 35 1C            [12] 2928 	addc	a,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 1)
      000C2B FE               [12] 2929 	mov	r6,a
      000C2C AB 1D            [24] 2930 	mov	r3,(_HELPER_filename_to_8dot3filename_fname_65536_125 + 2)
      000C2E 8D 82            [24] 2931 	mov	dpl,r5
      000C30 8E 83            [24] 2932 	mov	dph,r6
      000C32 8B F0            [24] 2933 	mov	b,r3
      000C34 12 1D 20         [24] 2934 	lcall	__gptrget
      000C37 FD               [12] 2935 	mov	r5,a
      000C38 89 82            [24] 2936 	mov	dpl,r1
      000C3A 88 83            [24] 2937 	mov	dph,r0
      000C3C 8F F0            [24] 2938 	mov	b,r7
      000C3E 12 1C 2D         [24] 2939 	lcall	__gptrput
                                   2940 ;	fat.h:204: for(uint8_t i=0;i<4;i++)
      000C41 05 1E            [12] 2941 	inc	_HELPER_filename_to_8dot3filename_i_131072_131
      000C43 02 0B A3         [24] 2942 	ljmp	00125$
      000C46                       2943 00118$:
                                   2944 ;	fat.h:229: return 3;// if reached here, then it is an error
      000C46 75 82 03         [24] 2945 	mov	dpl,#0x03
                                   2946 ;	fat.h:230: }
      000C49 22               [24] 2947 	ret
                                   2948 ;------------------------------------------------------------
                                   2949 ;Allocation info for local variables in function 'MBR_CHECK__SIGNATURE'
                                   2950 ;------------------------------------------------------------
                                   2951 ;signature                 Allocated to stack - _bp +1
                                   2952 ;------------------------------------------------------------
                                   2953 ;	fat.h:244: uint8_t MBR_CHECK__SIGNATURE() __reentrant
                                   2954 ;	-----------------------------------------
                                   2955 ;	 function MBR_CHECK__SIGNATURE
                                   2956 ;	-----------------------------------------
      000C4A                       2957 _MBR_CHECK__SIGNATURE:
      000C4A C0 3C            [24] 2958 	push	_bp
      000C4C 85 81 3C         [24] 2959 	mov	_bp,sp
      000C4F 05 81            [12] 2960 	inc	sp
      000C51 05 81            [12] 2961 	inc	sp
                                   2962 ;	fat.h:247: SDread(0,510,2,signature);
      000C53 A9 3C            [24] 2963 	mov	r1,_bp
      000C55 09               [12] 2964 	inc	r1
      000C56 89 05            [24] 2965 	mov	ar5,r1
      000C58 7E 00            [12] 2966 	mov	r6,#0x00
      000C5A 7F 40            [12] 2967 	mov	r7,#0x40
      000C5C C0 01            [24] 2968 	push	ar1
      000C5E C0 05            [24] 2969 	push	ar5
      000C60 C0 06            [24] 2970 	push	ar6
      000C62 C0 07            [24] 2971 	push	ar7
      000C64 74 02            [12] 2972 	mov	a,#0x02
      000C66 C0 E0            [24] 2973 	push	acc
      000C68 E4               [12] 2974 	clr	a
      000C69 C0 E0            [24] 2975 	push	acc
      000C6B 74 FE            [12] 2976 	mov	a,#0xfe
      000C6D C0 E0            [24] 2977 	push	acc
      000C6F F4               [12] 2978 	cpl	a
      000C70 C0 E0            [24] 2979 	push	acc
      000C72 90 00 00         [24] 2980 	mov	dptr,#(0x00&0x00ff)
      000C75 E4               [12] 2981 	clr	a
      000C76 F5 F0            [12] 2982 	mov	b,a
      000C78 12 07 7A         [24] 2983 	lcall	_SDread
      000C7B E5 81            [12] 2984 	mov	a,sp
      000C7D 24 F9            [12] 2985 	add	a,#0xf9
      000C7F F5 81            [12] 2986 	mov	sp,a
      000C81 D0 01            [24] 2987 	pop	ar1
                                   2988 ;	fat.h:256: if(signature[0]==0x55 && signature[1]==0xAA) return 0;
      000C83 87 07            [24] 2989 	mov	ar7,@r1
      000C85 BF 55 0B         [24] 2990 	cjne	r7,#0x55,00102$
      000C88 09               [12] 2991 	inc	r1
      000C89 87 07            [24] 2992 	mov	ar7,@r1
      000C8B BF AA 05         [24] 2993 	cjne	r7,#0xaa,00102$
      000C8E 75 82 00         [24] 2994 	mov	dpl,#0x00
      000C91 80 03            [24] 2995 	sjmp	00105$
      000C93                       2996 00102$:
                                   2997 ;	fat.h:257: else return 1;
      000C93 75 82 01         [24] 2998 	mov	dpl,#0x01
      000C96                       2999 00105$:
                                   3000 ;	fat.h:258: }
      000C96 85 3C 81         [24] 3001 	mov	sp,_bp
      000C99 D0 3C            [24] 3002 	pop	_bp
      000C9B 22               [24] 3003 	ret
                                   3004 ;------------------------------------------------------------
                                   3005 ;Allocation info for local variables in function 'MBR_LOAD_PARTITION_TABLE_ENTRY'
                                   3006 ;------------------------------------------------------------
                                   3007 ;partition_number          Allocated to registers r7 
                                   3008 ;temp                      Allocated with name '_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137'
                                   3009 ;offset                    Allocated to registers r5 r6 
                                   3010 ;------------------------------------------------------------
                                   3011 ;	fat.h:260: uint8_t MBR_LOAD_PARTITION_TABLE_ENTRY(uint8_t partition_number)
                                   3012 ;	-----------------------------------------
                                   3013 ;	 function MBR_LOAD_PARTITION_TABLE_ENTRY
                                   3014 ;	-----------------------------------------
      000C9C                       3015 _MBR_LOAD_PARTITION_TABLE_ENTRY:
      000C9C AF 82            [24] 3016 	mov	r7,dpl
                                   3017 ;	fat.h:263: __idata uint16_t offset= 446 + partition_number*16; // get to the nth partition entry out of 0,1,2,3
      000C9E 8F 05            [24] 3018 	mov	ar5,r7
      000CA0 E4               [12] 3019 	clr	a
      000CA1 CD               [12] 3020 	xch	a,r5
      000CA2 C4               [12] 3021 	swap	a
      000CA3 CD               [12] 3022 	xch	a,r5
      000CA4 6D               [12] 3023 	xrl	a,r5
      000CA5 CD               [12] 3024 	xch	a,r5
      000CA6 54 F0            [12] 3025 	anl	a,#0xf0
      000CA8 CD               [12] 3026 	xch	a,r5
      000CA9 6D               [12] 3027 	xrl	a,r5
      000CAA FE               [12] 3028 	mov	r6,a
      000CAB 74 BE            [12] 3029 	mov	a,#0xbe
      000CAD 2D               [12] 3030 	add	a,r5
      000CAE FD               [12] 3031 	mov	r5,a
      000CAF 74 01            [12] 3032 	mov	a,#0x01
      000CB1 3E               [12] 3033 	addc	a,r6
      000CB2 FE               [12] 3034 	mov	r6,a
                                   3035 ;	fat.h:265: if(partition_number>4) 
      000CB3 EF               [12] 3036 	mov	a,r7
      000CB4 24 FB            [12] 3037 	add	a,#0xff - 0x04
      000CB6 50 04            [24] 3038 	jnc	00102$
                                   3039 ;	fat.h:272: return 1; //error
      000CB8 75 82 01         [24] 3040 	mov	dpl,#0x01
      000CBB 22               [24] 3041 	ret
      000CBC                       3042 00102$:
                                   3043 ;	fat.h:275: SDread(0,offset,16,temp);
      000CBC 74 82            [12] 3044 	mov	a,#_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137
      000CBE C0 E0            [24] 3045 	push	acc
      000CC0 74 00            [12] 3046 	mov	a,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 >> 8)
      000CC2 C0 E0            [24] 3047 	push	acc
      000CC4 74 40            [12] 3048 	mov	a,#0x40
      000CC6 C0 E0            [24] 3049 	push	acc
      000CC8 74 10            [12] 3050 	mov	a,#0x10
      000CCA C0 E0            [24] 3051 	push	acc
      000CCC E4               [12] 3052 	clr	a
      000CCD C0 E0            [24] 3053 	push	acc
      000CCF C0 05            [24] 3054 	push	ar5
      000CD1 C0 06            [24] 3055 	push	ar6
      000CD3 90 00 00         [24] 3056 	mov	dptr,#(0x00&0x00ff)
      000CD6 E4               [12] 3057 	clr	a
      000CD7 F5 F0            [12] 3058 	mov	b,a
      000CD9 12 07 7A         [24] 3059 	lcall	_SDread
      000CDC E5 81            [12] 3060 	mov	a,sp
      000CDE 24 F9            [12] 3061 	add	a,#0xf9
      000CE0 F5 81            [12] 3062 	mov	sp,a
                                   3063 ;	fat.h:277: __global_partitionTableEntry.type = temp[4]; // type offset is 4
      000CE2 78 86            [12] 3064 	mov	r0,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x0004)
      000CE4 86 07            [24] 3065 	mov	ar7,@r0
      000CE6 78 41            [12] 3066 	mov	r0,#___global_partitionTableEntry
      000CE8 A6 07            [24] 3067 	mov	@r0,ar7
                                   3068 ;	fat.h:278: __global_partitionTableEntry.start=HELPER_load_littleendian32(&temp[8]); //partition start LBA offset is 8
      000CEA 90 00 8A         [24] 3069 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x0008)
      000CED 75 F0 40         [24] 3070 	mov	b,#0x40
      000CF0 12 08 EE         [24] 3071 	lcall	_HELPER_load_littleendian32
      000CF3 AC 82            [24] 3072 	mov	r4,dpl
      000CF5 AD 83            [24] 3073 	mov	r5,dph
      000CF7 AE F0            [24] 3074 	mov	r6,b
      000CF9 FF               [12] 3075 	mov	r7,a
      000CFA 78 42            [12] 3076 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000CFC A6 04            [24] 3077 	mov	@r0,ar4
      000CFE 08               [12] 3078 	inc	r0
      000CFF A6 05            [24] 3079 	mov	@r0,ar5
      000D01 08               [12] 3080 	inc	r0
      000D02 A6 06            [24] 3081 	mov	@r0,ar6
      000D04 08               [12] 3082 	inc	r0
      000D05 A6 07            [24] 3083 	mov	@r0,ar7
                                   3084 ;	fat.h:279: __global_partitionTableEntry.size=HELPER_load_littleendian32(&temp[12]); //partiiton size offset is 12
      000D07 90 00 8E         [24] 3085 	mov	dptr,#(_MBR_LOAD_PARTITION_TABLE_ENTRY_temp_65536_137 + 0x000c)
      000D0A 75 F0 40         [24] 3086 	mov	b,#0x40
      000D0D 12 08 EE         [24] 3087 	lcall	_HELPER_load_littleendian32
      000D10 AC 82            [24] 3088 	mov	r4,dpl
      000D12 AD 83            [24] 3089 	mov	r5,dph
      000D14 AE F0            [24] 3090 	mov	r6,b
      000D16 FF               [12] 3091 	mov	r7,a
      000D17 78 46            [12] 3092 	mov	r0,#(___global_partitionTableEntry + 0x0005)
      000D19 A6 04            [24] 3093 	mov	@r0,ar4
      000D1B 08               [12] 3094 	inc	r0
      000D1C A6 05            [24] 3095 	mov	@r0,ar5
      000D1E 08               [12] 3096 	inc	r0
      000D1F A6 06            [24] 3097 	mov	@r0,ar6
      000D21 08               [12] 3098 	inc	r0
      000D22 A6 07            [24] 3099 	mov	@r0,ar7
                                   3100 ;	fat.h:281: return 0;
      000D24 75 82 00         [24] 3101 	mov	dpl,#0x00
                                   3102 ;	fat.h:283: }
      000D27 22               [24] 3103 	ret
                                   3104 ;------------------------------------------------------------
                                   3105 ;Allocation info for local variables in function 'MBR_DETECT_FAT16'
                                   3106 ;------------------------------------------------------------
                                   3107 ;result                    Allocated to registers r7 
                                   3108 ;i                         Allocated to registers r6 
                                   3109 ;------------------------------------------------------------
                                   3110 ;	fat.h:285: uint8_t MBR_DETECT_FAT16()
                                   3111 ;	-----------------------------------------
                                   3112 ;	 function MBR_DETECT_FAT16
                                   3113 ;	-----------------------------------------
      000D28                       3114 _MBR_DETECT_FAT16:
                                   3115 ;	fat.h:290: uint8_t result=0;
      000D28 7F 00            [12] 3116 	mov	r7,#0x00
                                   3117 ;	fat.h:292: for(uint8_t i=0;i<4;i++) 
      000D2A 7E 00            [12] 3118 	mov	r6,#0x00
      000D2C                       3119 00105$:
      000D2C BE 04 00         [24] 3120 	cjne	r6,#0x04,00122$
      000D2F                       3121 00122$:
      000D2F 50 2B            [24] 3122 	jnc	00103$
                                   3123 ;	fat.h:294: MBR_LOAD_PARTITION_TABLE_ENTRY(i);
      000D31 8E 82            [24] 3124 	mov	dpl,r6
      000D33 C0 07            [24] 3125 	push	ar7
      000D35 C0 06            [24] 3126 	push	ar6
      000D37 12 0C 9C         [24] 3127 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000D3A D0 06            [24] 3128 	pop	ar6
      000D3C D0 07            [24] 3129 	pop	ar7
                                   3130 ;	fat.h:295: if(__global_partitionTableEntry.type==FAT16_PARTITION_TYPE_ID) result |= (1<<i); //set corresponding bit
      000D3E 78 41            [12] 3131 	mov	r0,#___global_partitionTableEntry
      000D40 86 05            [24] 3132 	mov	ar5,@r0
      000D42 BD 06 14         [24] 3133 	cjne	r5,#0x06,00106$
      000D45 8E 05            [24] 3134 	mov	ar5,r6
      000D47 8D F0            [24] 3135 	mov	b,r5
      000D49 05 F0            [12] 3136 	inc	b
      000D4B 74 01            [12] 3137 	mov	a,#0x01
      000D4D 80 02            [24] 3138 	sjmp	00128$
      000D4F                       3139 00126$:
      000D4F 25 E0            [12] 3140 	add	a,acc
      000D51                       3141 00128$:
      000D51 D5 F0 FB         [24] 3142 	djnz	b,00126$
      000D54 FD               [12] 3143 	mov	r5,a
      000D55 8F 04            [24] 3144 	mov	ar4,r7
      000D57 4C               [12] 3145 	orl	a,r4
      000D58 FF               [12] 3146 	mov	r7,a
      000D59                       3147 00106$:
                                   3148 ;	fat.h:292: for(uint8_t i=0;i<4;i++) 
      000D59 0E               [12] 3149 	inc	r6
      000D5A 80 D0            [24] 3150 	sjmp	00105$
      000D5C                       3151 00103$:
                                   3152 ;	fat.h:304: return result;
      000D5C 8F 82            [24] 3153 	mov	dpl,r7
                                   3154 ;	fat.h:305: }
      000D5E 22               [24] 3155 	ret
                                   3156 ;------------------------------------------------------------
                                   3157 ;Allocation info for local variables in function 'VBR_DUMP'
                                   3158 ;------------------------------------------------------------
                                   3159 ;	fat.h:312: void VBR_DUMP() __reentrant
                                   3160 ;	-----------------------------------------
                                   3161 ;	 function VBR_DUMP
                                   3162 ;	-----------------------------------------
      000D5F                       3163 _VBR_DUMP:
                                   3164 ;	fat.h:314: UartPrint("VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start,roote_start,data_start\n"); 
      000D5F 90 1D CB         [24] 3165 	mov	dptr,#___str_1
      000D62 75 F0 80         [24] 3166 	mov	b,#0x80
      000D65 12 01 84         [24] 3167 	lcall	_UartPrint
                                   3168 ;	fat.h:315: UartPrintNumber(__global_vbr.volumeStartSector);UartWrite(',');
      000D68 78 4A            [12] 3169 	mov	r0,#___global_vbr
      000D6A 86 04            [24] 3170 	mov	ar4,@r0
      000D6C 08               [12] 3171 	inc	r0
      000D6D 86 05            [24] 3172 	mov	ar5,@r0
      000D6F 08               [12] 3173 	inc	r0
      000D70 86 06            [24] 3174 	mov	ar6,@r0
      000D72 08               [12] 3175 	inc	r0
      000D73 86 07            [24] 3176 	mov	ar7,@r0
      000D75 8C 82            [24] 3177 	mov	dpl,r4
      000D77 8D 83            [24] 3178 	mov	dph,r5
      000D79 8E F0            [24] 3179 	mov	b,r6
      000D7B EF               [12] 3180 	mov	a,r7
      000D7C 12 02 CA         [24] 3181 	lcall	_UartPrintNumber
      000D7F 75 82 2C         [24] 3182 	mov	dpl,#0x2c
      000D82 12 00 FE         [24] 3183 	lcall	_UartWrite
                                   3184 ;	fat.h:316: UartPrintNumber(__global_vbr.bps);UartWrite(',');
      000D85 78 50            [12] 3185 	mov	r0,#(___global_vbr + 0x0006)
      000D87 86 06            [24] 3186 	mov	ar6,@r0
      000D89 08               [12] 3187 	inc	r0
      000D8A 86 07            [24] 3188 	mov	ar7,@r0
      000D8C 7D 00            [12] 3189 	mov	r5,#0x00
      000D8E 7C 00            [12] 3190 	mov	r4,#0x00
      000D90 8E 82            [24] 3191 	mov	dpl,r6
      000D92 8F 83            [24] 3192 	mov	dph,r7
      000D94 8D F0            [24] 3193 	mov	b,r5
      000D96 EC               [12] 3194 	mov	a,r4
      000D97 12 02 CA         [24] 3195 	lcall	_UartPrintNumber
      000D9A 75 82 2C         [24] 3196 	mov	dpl,#0x2c
      000D9D 12 00 FE         [24] 3197 	lcall	_UartWrite
                                   3198 ;	fat.h:317: UartPrintNumber(__global_vbr.spc);UartWrite(',');
      000DA0 78 52            [12] 3199 	mov	r0,#(___global_vbr + 0x0008)
      000DA2 86 07            [24] 3200 	mov	ar7,@r0
      000DA4 7E 00            [12] 3201 	mov	r6,#0x00
      000DA6 7D 00            [12] 3202 	mov	r5,#0x00
      000DA8 7C 00            [12] 3203 	mov	r4,#0x00
      000DAA 8F 82            [24] 3204 	mov	dpl,r7
      000DAC 8E 83            [24] 3205 	mov	dph,r6
      000DAE 8D F0            [24] 3206 	mov	b,r5
      000DB0 EC               [12] 3207 	mov	a,r4
      000DB1 12 02 CA         [24] 3208 	lcall	_UartPrintNumber
      000DB4 75 82 2C         [24] 3209 	mov	dpl,#0x2c
      000DB7 12 00 FE         [24] 3210 	lcall	_UartWrite
                                   3211 ;	fat.h:318: UartPrintNumber(__global_vbr.reservedSectors);UartWrite(',');
      000DBA 78 4E            [12] 3212 	mov	r0,#(___global_vbr + 0x0004)
      000DBC 86 06            [24] 3213 	mov	ar6,@r0
      000DBE 08               [12] 3214 	inc	r0
      000DBF 86 07            [24] 3215 	mov	ar7,@r0
      000DC1 7D 00            [12] 3216 	mov	r5,#0x00
      000DC3 7C 00            [12] 3217 	mov	r4,#0x00
      000DC5 8E 82            [24] 3218 	mov	dpl,r6
      000DC7 8F 83            [24] 3219 	mov	dph,r7
      000DC9 8D F0            [24] 3220 	mov	b,r5
      000DCB EC               [12] 3221 	mov	a,r4
      000DCC 12 02 CA         [24] 3222 	lcall	_UartPrintNumber
      000DCF 75 82 2C         [24] 3223 	mov	dpl,#0x2c
      000DD2 12 00 FE         [24] 3224 	lcall	_UartWrite
                                   3225 ;	fat.h:319: UartPrintNumber(__global_vbr.nfat);UartWrite(',');
      000DD5 78 53            [12] 3226 	mov	r0,#(___global_vbr + 0x0009)
      000DD7 86 06            [24] 3227 	mov	ar6,@r0
      000DD9 08               [12] 3228 	inc	r0
      000DDA 86 07            [24] 3229 	mov	ar7,@r0
      000DDC 7D 00            [12] 3230 	mov	r5,#0x00
      000DDE 7C 00            [12] 3231 	mov	r4,#0x00
      000DE0 8E 82            [24] 3232 	mov	dpl,r6
      000DE2 8F 83            [24] 3233 	mov	dph,r7
      000DE4 8D F0            [24] 3234 	mov	b,r5
      000DE6 EC               [12] 3235 	mov	a,r4
      000DE7 12 02 CA         [24] 3236 	lcall	_UartPrintNumber
      000DEA 75 82 2C         [24] 3237 	mov	dpl,#0x2c
      000DED 12 00 FE         [24] 3238 	lcall	_UartWrite
                                   3239 ;	fat.h:320: UartPrintNumber(__global_vbr.nroote);UartWrite(',');
      000DF0 78 57            [12] 3240 	mov	r0,#(___global_vbr + 0x000d)
      000DF2 86 06            [24] 3241 	mov	ar6,@r0
      000DF4 08               [12] 3242 	inc	r0
      000DF5 86 07            [24] 3243 	mov	ar7,@r0
      000DF7 7D 00            [12] 3244 	mov	r5,#0x00
      000DF9 7C 00            [12] 3245 	mov	r4,#0x00
      000DFB 8E 82            [24] 3246 	mov	dpl,r6
      000DFD 8F 83            [24] 3247 	mov	dph,r7
      000DFF 8D F0            [24] 3248 	mov	b,r5
      000E01 EC               [12] 3249 	mov	a,r4
      000E02 12 02 CA         [24] 3250 	lcall	_UartPrintNumber
      000E05 75 82 2C         [24] 3251 	mov	dpl,#0x2c
      000E08 12 00 FE         [24] 3252 	lcall	_UartWrite
                                   3253 ;	fat.h:321: UartPrintNumber(__global_vbr.spf);UartWrite(',');
      000E0B 78 55            [12] 3254 	mov	r0,#(___global_vbr + 0x000b)
      000E0D 86 06            [24] 3255 	mov	ar6,@r0
      000E0F 08               [12] 3256 	inc	r0
      000E10 86 07            [24] 3257 	mov	ar7,@r0
      000E12 7D 00            [12] 3258 	mov	r5,#0x00
      000E14 7C 00            [12] 3259 	mov	r4,#0x00
      000E16 8E 82            [24] 3260 	mov	dpl,r6
      000E18 8F 83            [24] 3261 	mov	dph,r7
      000E1A 8D F0            [24] 3262 	mov	b,r5
      000E1C EC               [12] 3263 	mov	a,r4
      000E1D 12 02 CA         [24] 3264 	lcall	_UartPrintNumber
      000E20 75 82 2C         [24] 3265 	mov	dpl,#0x2c
      000E23 12 00 FE         [24] 3266 	lcall	_UartWrite
                                   3267 ;	fat.h:323: UartPrintNumber(__global_vbr.addr_fat_start);UartWrite(',');
      000E26 78 5D            [12] 3268 	mov	r0,#(___global_vbr + 0x0013)
      000E28 86 04            [24] 3269 	mov	ar4,@r0
      000E2A 08               [12] 3270 	inc	r0
      000E2B 86 05            [24] 3271 	mov	ar5,@r0
      000E2D 08               [12] 3272 	inc	r0
      000E2E 86 06            [24] 3273 	mov	ar6,@r0
      000E30 08               [12] 3274 	inc	r0
      000E31 86 07            [24] 3275 	mov	ar7,@r0
      000E33 8C 82            [24] 3276 	mov	dpl,r4
      000E35 8D 83            [24] 3277 	mov	dph,r5
      000E37 8E F0            [24] 3278 	mov	b,r6
      000E39 EF               [12] 3279 	mov	a,r7
      000E3A 12 02 CA         [24] 3280 	lcall	_UartPrintNumber
      000E3D 75 82 2C         [24] 3281 	mov	dpl,#0x2c
      000E40 12 00 FE         [24] 3282 	lcall	_UartWrite
                                   3283 ;	fat.h:324: UartPrintNumber(__global_vbr.addr_roote_start);UartWrite(',');
      000E43 78 61            [12] 3284 	mov	r0,#(___global_vbr + 0x0017)
      000E45 86 04            [24] 3285 	mov	ar4,@r0
      000E47 08               [12] 3286 	inc	r0
      000E48 86 05            [24] 3287 	mov	ar5,@r0
      000E4A 08               [12] 3288 	inc	r0
      000E4B 86 06            [24] 3289 	mov	ar6,@r0
      000E4D 08               [12] 3290 	inc	r0
      000E4E 86 07            [24] 3291 	mov	ar7,@r0
      000E50 8C 82            [24] 3292 	mov	dpl,r4
      000E52 8D 83            [24] 3293 	mov	dph,r5
      000E54 8E F0            [24] 3294 	mov	b,r6
      000E56 EF               [12] 3295 	mov	a,r7
      000E57 12 02 CA         [24] 3296 	lcall	_UartPrintNumber
      000E5A 75 82 2C         [24] 3297 	mov	dpl,#0x2c
      000E5D 12 00 FE         [24] 3298 	lcall	_UartWrite
                                   3299 ;	fat.h:325: UartPrintNumber(__global_vbr.addr_data_start);UartWrite(',');
      000E60 78 65            [12] 3300 	mov	r0,#(___global_vbr + 0x001b)
      000E62 86 04            [24] 3301 	mov	ar4,@r0
      000E64 08               [12] 3302 	inc	r0
      000E65 86 05            [24] 3303 	mov	ar5,@r0
      000E67 08               [12] 3304 	inc	r0
      000E68 86 06            [24] 3305 	mov	ar6,@r0
      000E6A 08               [12] 3306 	inc	r0
      000E6B 86 07            [24] 3307 	mov	ar7,@r0
      000E6D 8C 82            [24] 3308 	mov	dpl,r4
      000E6F 8D 83            [24] 3309 	mov	dph,r5
      000E71 8E F0            [24] 3310 	mov	b,r6
      000E73 EF               [12] 3311 	mov	a,r7
      000E74 12 02 CA         [24] 3312 	lcall	_UartPrintNumber
      000E77 75 82 2C         [24] 3313 	mov	dpl,#0x2c
      000E7A 12 00 FE         [24] 3314 	lcall	_UartWrite
                                   3315 ;	fat.h:326: UartWrite('\n');
      000E7D 75 82 0A         [24] 3316 	mov	dpl,#0x0a
                                   3317 ;	fat.h:327: }
      000E80 02 00 FE         [24] 3318 	ljmp	_UartWrite
                                   3319 ;------------------------------------------------------------
                                   3320 ;Allocation info for local variables in function 'VBR_MOUNT_VBR'
                                   3321 ;------------------------------------------------------------
                                   3322 ;partition_number          Allocated to registers r7 
                                   3323 ;sloc0                     Allocated with name '_VBR_MOUNT_VBR_sloc0_1_0'
                                   3324 ;temp                      Allocated with name '_VBR_MOUNT_VBR_temp_65536_144'
                                   3325 ;------------------------------------------------------------
                                   3326 ;	fat.h:330: uint8_t VBR_MOUNT_VBR(uint8_t partition_number)
                                   3327 ;	-----------------------------------------
                                   3328 ;	 function VBR_MOUNT_VBR
                                   3329 ;	-----------------------------------------
      000E83                       3330 _VBR_MOUNT_VBR:
      000E83 AF 82            [24] 3331 	mov	r7,dpl
                                   3332 ;	fat.h:336: if(__global_nthPartitionVBRmounted == partition_number ) 
      000E85 78 69            [12] 3333 	mov	r0,#___global_nthPartitionVBRmounted
      000E87 E6               [12] 3334 	mov	a,@r0
      000E88 B5 07 04         [24] 3335 	cjne	a,ar7,00102$
                                   3336 ;	fat.h:344: return 0; //return if already loaded, else continue;
      000E8B 75 82 00         [24] 3337 	mov	dpl,#0x00
      000E8E 22               [24] 3338 	ret
      000E8F                       3339 00102$:
                                   3340 ;	fat.h:355: __global_nthPartitionVBRmounted=partition_number; //set global variable
      000E8F 78 69            [12] 3341 	mov	r0,#___global_nthPartitionVBRmounted
      000E91 A6 07            [24] 3342 	mov	@r0,ar7
                                   3343 ;	fat.h:358: if(MBR_LOAD_PARTITION_TABLE_ENTRY(partition_number))  //if error, 0 is success
      000E93 8F 82            [24] 3344 	mov	dpl,r7
      000E95 12 0C 9C         [24] 3345 	lcall	_MBR_LOAD_PARTITION_TABLE_ENTRY
      000E98 E5 82            [12] 3346 	mov	a,dpl
      000E9A 60 04            [24] 3347 	jz	00104$
                                   3348 ;	fat.h:360: return 1; //return error
      000E9C 75 82 01         [24] 3349 	mov	dpl,#0x01
      000E9F 22               [24] 3350 	ret
      000EA0                       3351 00104$:
                                   3352 ;	fat.h:364: SDread(__global_partitionTableEntry.start,0,16,temp);
      000EA0 78 42            [12] 3353 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000EA2 86 04            [24] 3354 	mov	ar4,@r0
      000EA4 08               [12] 3355 	inc	r0
      000EA5 86 05            [24] 3356 	mov	ar5,@r0
      000EA7 08               [12] 3357 	inc	r0
      000EA8 86 06            [24] 3358 	mov	ar6,@r0
      000EAA 08               [12] 3359 	inc	r0
      000EAB 86 07            [24] 3360 	mov	ar7,@r0
      000EAD 74 92            [12] 3361 	mov	a,#_VBR_MOUNT_VBR_temp_65536_144
      000EAF C0 E0            [24] 3362 	push	acc
      000EB1 74 00            [12] 3363 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_144 >> 8)
      000EB3 C0 E0            [24] 3364 	push	acc
      000EB5 74 40            [12] 3365 	mov	a,#0x40
      000EB7 C0 E0            [24] 3366 	push	acc
      000EB9 74 10            [12] 3367 	mov	a,#0x10
      000EBB C0 E0            [24] 3368 	push	acc
      000EBD E4               [12] 3369 	clr	a
      000EBE C0 E0            [24] 3370 	push	acc
      000EC0 C0 E0            [24] 3371 	push	acc
      000EC2 C0 E0            [24] 3372 	push	acc
      000EC4 8C 82            [24] 3373 	mov	dpl,r4
      000EC6 8D 83            [24] 3374 	mov	dph,r5
      000EC8 8E F0            [24] 3375 	mov	b,r6
      000ECA EF               [12] 3376 	mov	a,r7
      000ECB 12 07 7A         [24] 3377 	lcall	_SDread
      000ECE E5 81            [12] 3378 	mov	a,sp
      000ED0 24 F9            [12] 3379 	add	a,#0xf9
      000ED2 F5 81            [12] 3380 	mov	sp,a
                                   3381 ;	fat.h:373: __global_vbr.volumeStartSector = __global_partitionTableEntry.start;
      000ED4 78 42            [12] 3382 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000ED6 86 04            [24] 3383 	mov	ar4,@r0
      000ED8 08               [12] 3384 	inc	r0
      000ED9 86 05            [24] 3385 	mov	ar5,@r0
      000EDB 08               [12] 3386 	inc	r0
      000EDC 86 06            [24] 3387 	mov	ar6,@r0
      000EDE 08               [12] 3388 	inc	r0
      000EDF 86 07            [24] 3389 	mov	ar7,@r0
      000EE1 78 4A            [12] 3390 	mov	r0,#___global_vbr
      000EE3 A6 04            [24] 3391 	mov	@r0,ar4
      000EE5 08               [12] 3392 	inc	r0
      000EE6 A6 05            [24] 3393 	mov	@r0,ar5
      000EE8 08               [12] 3394 	inc	r0
      000EE9 A6 06            [24] 3395 	mov	@r0,ar6
      000EEB 08               [12] 3396 	inc	r0
      000EEC A6 07            [24] 3397 	mov	@r0,ar7
                                   3398 ;	fat.h:375: __global_vbr.bps = HELPER_load_littleendian16(&temp[0x0b]); // bps starts at offset 0x0b
      000EEE 90 00 9D         [24] 3399 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000b)
      000EF1 75 F0 40         [24] 3400 	mov	b,#0x40
      000EF4 12 08 C0         [24] 3401 	lcall	_HELPER_load_littleendian16
      000EF7 E5 82            [12] 3402 	mov	a,dpl
      000EF9 85 83 F0         [24] 3403 	mov	b,dph
      000EFC 78 50            [12] 3404 	mov	r0,#(___global_vbr + 0x0006)
      000EFE F6               [12] 3405 	mov	@r0,a
      000EFF 08               [12] 3406 	inc	r0
      000F00 A6 F0            [24] 3407 	mov	@r0,b
                                   3408 ;	fat.h:376: __global_vbr.spc = temp[0x0d]; //spc offset 0x0d
      000F02 78 9F            [12] 3409 	mov	r0,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000d)
      000F04 86 07            [24] 3410 	mov	ar7,@r0
      000F06 78 52            [12] 3411 	mov	r0,#(___global_vbr + 0x0008)
      000F08 A6 07            [24] 3412 	mov	@r0,ar7
                                   3413 ;	fat.h:377: __global_vbr.reservedSectors = HELPER_load_littleendian16(&temp[0x0e]);
      000F0A 90 00 A0         [24] 3414 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x000e)
      000F0D 75 F0 40         [24] 3415 	mov	b,#0x40
      000F10 12 08 C0         [24] 3416 	lcall	_HELPER_load_littleendian16
      000F13 E5 82            [12] 3417 	mov	a,dpl
      000F15 85 83 F0         [24] 3418 	mov	b,dph
      000F18 78 4E            [12] 3419 	mov	r0,#(___global_vbr + 0x0004)
      000F1A F6               [12] 3420 	mov	@r0,a
      000F1B 08               [12] 3421 	inc	r0
      000F1C A6 F0            [24] 3422 	mov	@r0,b
                                   3423 ;	fat.h:381: SDread(__global_partitionTableEntry.start,16,16,temp);
      000F1E 78 42            [12] 3424 	mov	r0,#(___global_partitionTableEntry + 0x0001)
      000F20 86 04            [24] 3425 	mov	ar4,@r0
      000F22 08               [12] 3426 	inc	r0
      000F23 86 05            [24] 3427 	mov	ar5,@r0
      000F25 08               [12] 3428 	inc	r0
      000F26 86 06            [24] 3429 	mov	ar6,@r0
      000F28 08               [12] 3430 	inc	r0
      000F29 86 07            [24] 3431 	mov	ar7,@r0
      000F2B 74 92            [12] 3432 	mov	a,#_VBR_MOUNT_VBR_temp_65536_144
      000F2D C0 E0            [24] 3433 	push	acc
      000F2F 74 00            [12] 3434 	mov	a,#(_VBR_MOUNT_VBR_temp_65536_144 >> 8)
      000F31 C0 E0            [24] 3435 	push	acc
      000F33 74 40            [12] 3436 	mov	a,#0x40
      000F35 C0 E0            [24] 3437 	push	acc
      000F37 74 10            [12] 3438 	mov	a,#0x10
      000F39 C0 E0            [24] 3439 	push	acc
      000F3B E4               [12] 3440 	clr	a
      000F3C C0 E0            [24] 3441 	push	acc
      000F3E 74 10            [12] 3442 	mov	a,#0x10
      000F40 C0 E0            [24] 3443 	push	acc
      000F42 E4               [12] 3444 	clr	a
      000F43 C0 E0            [24] 3445 	push	acc
      000F45 8C 82            [24] 3446 	mov	dpl,r4
      000F47 8D 83            [24] 3447 	mov	dph,r5
      000F49 8E F0            [24] 3448 	mov	b,r6
      000F4B EF               [12] 3449 	mov	a,r7
      000F4C 12 07 7A         [24] 3450 	lcall	_SDread
      000F4F E5 81            [12] 3451 	mov	a,sp
      000F51 24 F9            [12] 3452 	add	a,#0xf9
      000F53 F5 81            [12] 3453 	mov	sp,a
                                   3454 ;	fat.h:390: __global_vbr.nfat = HELPER_load_littleendian16(&temp[0x10-16]); //offset of nfat is 0x01, but we subtract 16 as we have read from 16 offset in SDread
      000F55 90 00 92         [24] 3455 	mov	dptr,#_VBR_MOUNT_VBR_temp_65536_144
      000F58 75 F0 40         [24] 3456 	mov	b,#0x40
      000F5B 12 08 C0         [24] 3457 	lcall	_HELPER_load_littleendian16
      000F5E E5 82            [12] 3458 	mov	a,dpl
      000F60 85 83 F0         [24] 3459 	mov	b,dph
      000F63 78 53            [12] 3460 	mov	r0,#(___global_vbr + 0x0009)
      000F65 F6               [12] 3461 	mov	@r0,a
      000F66 08               [12] 3462 	inc	r0
      000F67 A6 F0            [24] 3463 	mov	@r0,b
                                   3464 ;	fat.h:391: __global_vbr.nroote = HELPER_load_littleendian16(&temp[0x11-16]); //offset of number_root_entrie is 0x11
      000F69 90 00 93         [24] 3465 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x0001)
      000F6C 75 F0 40         [24] 3466 	mov	b,#0x40
      000F6F 12 08 C0         [24] 3467 	lcall	_HELPER_load_littleendian16
      000F72 E5 82            [12] 3468 	mov	a,dpl
      000F74 85 83 F0         [24] 3469 	mov	b,dph
      000F77 78 57            [12] 3470 	mov	r0,#(___global_vbr + 0x000d)
      000F79 F6               [12] 3471 	mov	@r0,a
      000F7A 08               [12] 3472 	inc	r0
      000F7B A6 F0            [24] 3473 	mov	@r0,b
                                   3474 ;	fat.h:392: __global_vbr.spf = HELPER_load_littleendian16(&temp[0x16-16]); //offset of sectors_per_fat is 0x16
      000F7D 90 00 98         [24] 3475 	mov	dptr,#(_VBR_MOUNT_VBR_temp_65536_144 + 0x0006)
      000F80 75 F0 40         [24] 3476 	mov	b,#0x40
      000F83 12 08 C0         [24] 3477 	lcall	_HELPER_load_littleendian16
      000F86 AE 82            [24] 3478 	mov	r6,dpl
      000F88 AF 83            [24] 3479 	mov	r7,dph
      000F8A 78 55            [12] 3480 	mov	r0,#(___global_vbr + 0x000b)
      000F8C A6 06            [24] 3481 	mov	@r0,ar6
      000F8E 08               [12] 3482 	inc	r0
      000F8F A6 07            [24] 3483 	mov	@r0,ar7
                                   3484 ;	fat.h:401: __global_vbr.bpc =  (uint32_t)__global_vbr.bps * (uint32_t)__global_vbr.spc; 
      000F91 78 50            [12] 3485 	mov	r0,#(___global_vbr + 0x0006)
      000F93 86 04            [24] 3486 	mov	ar4,@r0
      000F95 08               [12] 3487 	inc	r0
      000F96 86 05            [24] 3488 	mov	ar5,@r0
      000F98 8C 1F            [24] 3489 	mov	_VBR_MOUNT_VBR_sloc0_1_0,r4
      000F9A 8D 20            [24] 3490 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),r5
      000F9C 75 21 00         [24] 3491 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),#0x00
      000F9F 75 22 00         [24] 3492 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),#0x00
      000FA2 78 52            [12] 3493 	mov	r0,#(___global_vbr + 0x0008)
      000FA4 86 05            [24] 3494 	mov	ar5,@r0
      000FA6 8D 3D            [24] 3495 	mov	__mullong_PARM_2,r5
      000FA8 75 3E 00         [24] 3496 	mov	(__mullong_PARM_2 + 1),#0x00
      000FAB 75 3F 00         [24] 3497 	mov	(__mullong_PARM_2 + 2),#0x00
      000FAE 75 40 00         [24] 3498 	mov	(__mullong_PARM_2 + 3),#0x00
      000FB1 85 1F 82         [24] 3499 	mov	dpl,_VBR_MOUNT_VBR_sloc0_1_0
      000FB4 85 20 83         [24] 3500 	mov	dph,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FB7 85 21 F0         [24] 3501 	mov	b,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FBA E5 22            [12] 3502 	mov	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      000FBC C0 07            [24] 3503 	push	ar7
      000FBE C0 06            [24] 3504 	push	ar6
      000FC0 12 1C B2         [24] 3505 	lcall	__mullong
      000FC3 AA 82            [24] 3506 	mov	r2,dpl
      000FC5 AB 83            [24] 3507 	mov	r3,dph
      000FC7 AC F0            [24] 3508 	mov	r4,b
      000FC9 FD               [12] 3509 	mov	r5,a
      000FCA D0 06            [24] 3510 	pop	ar6
      000FCC D0 07            [24] 3511 	pop	ar7
      000FCE 78 59            [12] 3512 	mov	r0,#(___global_vbr + 0x000f)
      000FD0 A6 02            [24] 3513 	mov	@r0,ar2
      000FD2 08               [12] 3514 	inc	r0
      000FD3 A6 03            [24] 3515 	mov	@r0,ar3
      000FD5 08               [12] 3516 	inc	r0
      000FD6 A6 04            [24] 3517 	mov	@r0,ar4
      000FD8 08               [12] 3518 	inc	r0
      000FD9 A6 05            [24] 3519 	mov	@r0,ar5
                                   3520 ;	fat.h:404: __global_vbr.addr_fat_start = __global_vbr.volumeStartSector + __global_vbr.reservedSectors;
      000FDB 78 4A            [12] 3521 	mov	r0,#___global_vbr
      000FDD 86 1F            [24] 3522 	mov	_VBR_MOUNT_VBR_sloc0_1_0,@r0
      000FDF 08               [12] 3523 	inc	r0
      000FE0 86 20            [24] 3524 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),@r0
      000FE2 08               [12] 3525 	inc	r0
      000FE3 86 21            [24] 3526 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),@r0
      000FE5 08               [12] 3527 	inc	r0
      000FE6 86 22            [24] 3528 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),@r0
      000FE8 78 4E            [12] 3529 	mov	r0,#(___global_vbr + 0x0004)
      000FEA 86 04            [24] 3530 	mov	ar4,@r0
      000FEC 08               [12] 3531 	inc	r0
      000FED 86 05            [24] 3532 	mov	ar5,@r0
      000FEF E4               [12] 3533 	clr	a
      000FF0 FB               [12] 3534 	mov	r3,a
      000FF1 FA               [12] 3535 	mov	r2,a
      000FF2 EC               [12] 3536 	mov	a,r4
      000FF3 25 1F            [12] 3537 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      000FF5 F5 1F            [12] 3538 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      000FF7 ED               [12] 3539 	mov	a,r5
      000FF8 35 20            [12] 3540 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      000FFA F5 20            [12] 3541 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      000FFC EB               [12] 3542 	mov	a,r3
      000FFD 35 21            [12] 3543 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      000FFF F5 21            [12] 3544 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      001001 EA               [12] 3545 	mov	a,r2
      001002 35 22            [12] 3546 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      001004 F5 22            [12] 3547 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      001006 78 5D            [12] 3548 	mov	r0,#(___global_vbr + 0x0013)
      001008 A6 1F            [24] 3549 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      00100A 08               [12] 3550 	inc	r0
      00100B A6 20            [24] 3551 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      00100D 08               [12] 3552 	inc	r0
      00100E A6 21            [24] 3553 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001010 08               [12] 3554 	inc	r0
      001011 A6 22            [24] 3555 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3556 ;	fat.h:405: __global_vbr.addr_roote_start = __global_vbr.addr_fat_start + __global_vbr.nfat * __global_vbr.spf;
      001013 78 53            [12] 3557 	mov	r0,#(___global_vbr + 0x0009)
      001015 86 82            [24] 3558 	mov	dpl,@r0
      001017 08               [12] 3559 	inc	r0
      001018 86 83            [24] 3560 	mov	dph,@r0
      00101A 8E 3D            [24] 3561 	mov	__mulint_PARM_2,r6
      00101C 8F 3E            [24] 3562 	mov	(__mulint_PARM_2 + 1),r7
      00101E 12 1C 48         [24] 3563 	lcall	__mulint
      001021 AE 82            [24] 3564 	mov	r6,dpl
      001023 AF 83            [24] 3565 	mov	r7,dph
      001025 8E 04            [24] 3566 	mov	ar4,r6
      001027 8F 05            [24] 3567 	mov	ar5,r7
      001029 E4               [12] 3568 	clr	a
      00102A FE               [12] 3569 	mov	r6,a
      00102B FF               [12] 3570 	mov	r7,a
      00102C EC               [12] 3571 	mov	a,r4
      00102D 25 1F            [12] 3572 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      00102F F5 1F            [12] 3573 	mov	_VBR_MOUNT_VBR_sloc0_1_0,a
      001031 ED               [12] 3574 	mov	a,r5
      001032 35 20            [12] 3575 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001034 F5 20            [12] 3576 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 1),a
      001036 EE               [12] 3577 	mov	a,r6
      001037 35 21            [12] 3578 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001039 F5 21            [12] 3579 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 2),a
      00103B EF               [12] 3580 	mov	a,r7
      00103C 35 22            [12] 3581 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      00103E F5 22            [12] 3582 	mov	(_VBR_MOUNT_VBR_sloc0_1_0 + 3),a
      001040 78 61            [12] 3583 	mov	r0,#(___global_vbr + 0x0017)
      001042 A6 1F            [24] 3584 	mov	@r0,_VBR_MOUNT_VBR_sloc0_1_0
      001044 08               [12] 3585 	inc	r0
      001045 A6 20            [24] 3586 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001047 08               [12] 3587 	inc	r0
      001048 A6 21            [24] 3588 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      00104A 08               [12] 3589 	inc	r0
      00104B A6 22            [24] 3590 	mov	@r0,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
                                   3591 ;	fat.h:406: __global_vbr.addr_data_start = __global_vbr.addr_roote_start + (__global_vbr.nroote*32)/__global_vbr.bps;
      00104D 78 57            [12] 3592 	mov	r0,#(___global_vbr + 0x000d)
      00104F 86 02            [24] 3593 	mov	ar2,@r0
      001051 08               [12] 3594 	inc	r0
      001052 86 03            [24] 3595 	mov	ar3,@r0
      001054 8A 82            [24] 3596 	mov	dpl,r2
      001056 EB               [12] 3597 	mov	a,r3
      001057 C4               [12] 3598 	swap	a
      001058 23               [12] 3599 	rl	a
      001059 54 E0            [12] 3600 	anl	a,#0xe0
      00105B C5 82            [12] 3601 	xch	a,dpl
      00105D C4               [12] 3602 	swap	a
      00105E 23               [12] 3603 	rl	a
      00105F C5 82            [12] 3604 	xch	a,dpl
      001061 65 82            [12] 3605 	xrl	a,dpl
      001063 C5 82            [12] 3606 	xch	a,dpl
      001065 54 E0            [12] 3607 	anl	a,#0xe0
      001067 C5 82            [12] 3608 	xch	a,dpl
      001069 65 82            [12] 3609 	xrl	a,dpl
      00106B F5 83            [12] 3610 	mov	dph,a
      00106D 78 50            [12] 3611 	mov	r0,#(___global_vbr + 0x0006)
      00106F 86 3D            [24] 3612 	mov	__divuint_PARM_2,@r0
      001071 08               [12] 3613 	inc	r0
      001072 86 3E            [24] 3614 	mov	(__divuint_PARM_2 + 1),@r0
      001074 12 1B 1C         [24] 3615 	lcall	__divuint
      001077 AA 82            [24] 3616 	mov	r2,dpl
      001079 AB 83            [24] 3617 	mov	r3,dph
      00107B E4               [12] 3618 	clr	a
      00107C FE               [12] 3619 	mov	r6,a
      00107D FF               [12] 3620 	mov	r7,a
      00107E EA               [12] 3621 	mov	a,r2
      00107F 25 1F            [12] 3622 	add	a,_VBR_MOUNT_VBR_sloc0_1_0
      001081 FA               [12] 3623 	mov	r2,a
      001082 EB               [12] 3624 	mov	a,r3
      001083 35 20            [12] 3625 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 1)
      001085 FB               [12] 3626 	mov	r3,a
      001086 EE               [12] 3627 	mov	a,r6
      001087 35 21            [12] 3628 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 2)
      001089 FE               [12] 3629 	mov	r6,a
      00108A EF               [12] 3630 	mov	a,r7
      00108B 35 22            [12] 3631 	addc	a,(_VBR_MOUNT_VBR_sloc0_1_0 + 3)
      00108D FF               [12] 3632 	mov	r7,a
      00108E 78 65            [12] 3633 	mov	r0,#(___global_vbr + 0x001b)
      001090 A6 02            [24] 3634 	mov	@r0,ar2
      001092 08               [12] 3635 	inc	r0
      001093 A6 03            [24] 3636 	mov	@r0,ar3
      001095 08               [12] 3637 	inc	r0
      001096 A6 06            [24] 3638 	mov	@r0,ar6
      001098 08               [12] 3639 	inc	r0
      001099 A6 07            [24] 3640 	mov	@r0,ar7
                                   3641 ;	fat.h:414: return 0;
      00109B 75 82 00         [24] 3642 	mov	dpl,#0x00
                                   3643 ;	fat.h:416: }
      00109E 22               [24] 3644 	ret
                                   3645 ;------------------------------------------------------------
                                   3646 ;Allocation info for local variables in function 'VBR_FAT16_CHECK_COMPATIBILITY'
                                   3647 ;------------------------------------------------------------
                                   3648 ;partition_number          Allocated to registers r7 
                                   3649 ;------------------------------------------------------------
                                   3650 ;	fat.h:418: uint8_t VBR_FAT16_CHECK_COMPATIBILITY(uint8_t partition_number)
                                   3651 ;	-----------------------------------------
                                   3652 ;	 function VBR_FAT16_CHECK_COMPATIBILITY
                                   3653 ;	-----------------------------------------
      00109F                       3654 _VBR_FAT16_CHECK_COMPATIBILITY:
                                   3655 ;	fat.h:424: if(VBR_MOUNT_VBR(partition_number))
      00109F 12 0E 83         [24] 3656 	lcall	_VBR_MOUNT_VBR
      0010A2 E5 82            [12] 3657 	mov	a,dpl
      0010A4 60 04            [24] 3658 	jz	00102$
                                   3659 ;	fat.h:426: return 1; //error
      0010A6 75 82 01         [24] 3660 	mov	dpl,#0x01
      0010A9 22               [24] 3661 	ret
      0010AA                       3662 00102$:
                                   3663 ;	fat.h:429: if(__global_vbr.bps!=SD_BLOCK_SIZE) 
      0010AA 78 50            [12] 3664 	mov	r0,#(___global_vbr + 0x0006)
      0010AC 86 06            [24] 3665 	mov	ar6,@r0
      0010AE 08               [12] 3666 	inc	r0
      0010AF 86 07            [24] 3667 	mov	ar7,@r0
      0010B1 BE 00 05         [24] 3668 	cjne	r6,#0x00,00116$
      0010B4 BF 02 02         [24] 3669 	cjne	r7,#0x02,00116$
      0010B7 80 04            [24] 3670 	sjmp	00104$
      0010B9                       3671 00116$:
                                   3672 ;	fat.h:434: return 2; //error - not supported fat16
      0010B9 75 82 02         [24] 3673 	mov	dpl,#0x02
      0010BC 22               [24] 3674 	ret
      0010BD                       3675 00104$:
                                   3676 ;	fat.h:437: return 0;
      0010BD 75 82 00         [24] 3677 	mov	dpl,#0x00
                                   3678 ;	fat.h:438: }
      0010C0 22               [24] 3679 	ret
                                   3680 ;------------------------------------------------------------
                                   3681 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_DUMP'
                                   3682 ;------------------------------------------------------------
                                   3683 ;i                         Allocated to registers r7 
                                   3684 ;i                         Allocated to registers r7 
                                   3685 ;------------------------------------------------------------
                                   3686 ;	fat.h:441: void FAT16_ROOTENTRY_DUMP()
                                   3687 ;	-----------------------------------------
                                   3688 ;	 function FAT16_ROOTENTRY_DUMP
                                   3689 ;	-----------------------------------------
      0010C1                       3690 _FAT16_ROOTENTRY_DUMP:
                                   3691 ;	fat.h:443: UartPrint("\nROOT_ENTRY_INDEX:");
      0010C1 90 1E 20         [24] 3692 	mov	dptr,#___str_2
      0010C4 75 F0 80         [24] 3693 	mov	b,#0x80
      0010C7 12 01 84         [24] 3694 	lcall	_UartPrint
                                   3695 ;	fat.h:444: UartPrintNumber(__global_rootEntry.entry_index);
      0010CA 78 7C            [12] 3696 	mov	r0,#(___global_rootEntry + 0x0012)
      0010CC 86 06            [24] 3697 	mov	ar6,@r0
      0010CE 08               [12] 3698 	inc	r0
      0010CF 86 07            [24] 3699 	mov	ar7,@r0
      0010D1 7D 00            [12] 3700 	mov	r5,#0x00
      0010D3 7C 00            [12] 3701 	mov	r4,#0x00
      0010D5 8E 82            [24] 3702 	mov	dpl,r6
      0010D7 8F 83            [24] 3703 	mov	dph,r7
      0010D9 8D F0            [24] 3704 	mov	b,r5
      0010DB EC               [12] 3705 	mov	a,r4
      0010DC 12 02 CA         [24] 3706 	lcall	_UartPrintNumber
                                   3707 ;	fat.h:445: UartPrint("\nFILE: ");
      0010DF 90 1E 33         [24] 3708 	mov	dptr,#___str_3
      0010E2 75 F0 80         [24] 3709 	mov	b,#0x80
      0010E5 12 01 84         [24] 3710 	lcall	_UartPrint
                                   3711 ;	fat.h:446: for(uint8_t i=0;i<8;i++)UartWrite(__global_rootEntry.name[i]);
      0010E8 7F 00            [12] 3712 	mov	r7,#0x00
      0010EA                       3713 00104$:
      0010EA BF 08 00         [24] 3714 	cjne	r7,#0x08,00129$
      0010ED                       3715 00129$:
      0010ED 50 10            [24] 3716 	jnc	00101$
      0010EF EF               [12] 3717 	mov	a,r7
      0010F0 24 6A            [12] 3718 	add	a,#___global_rootEntry
      0010F2 F9               [12] 3719 	mov	r1,a
      0010F3 87 82            [24] 3720 	mov	dpl,@r1
      0010F5 C0 07            [24] 3721 	push	ar7
      0010F7 12 00 FE         [24] 3722 	lcall	_UartWrite
      0010FA D0 07            [24] 3723 	pop	ar7
      0010FC 0F               [12] 3724 	inc	r7
      0010FD 80 EB            [24] 3725 	sjmp	00104$
      0010FF                       3726 00101$:
                                   3727 ;	fat.h:447: for(uint8_t i=0;i<3;i++)UartWrite(__global_rootEntry.extension[i]);
      0010FF 7F 00            [12] 3728 	mov	r7,#0x00
      001101                       3729 00107$:
      001101 BF 03 00         [24] 3730 	cjne	r7,#0x03,00131$
      001104                       3731 00131$:
      001104 50 10            [24] 3732 	jnc	00102$
      001106 EF               [12] 3733 	mov	a,r7
      001107 24 72            [12] 3734 	add	a,#(___global_rootEntry + 0x0008)
      001109 F9               [12] 3735 	mov	r1,a
      00110A 87 82            [24] 3736 	mov	dpl,@r1
      00110C C0 07            [24] 3737 	push	ar7
      00110E 12 00 FE         [24] 3738 	lcall	_UartWrite
      001111 D0 07            [24] 3739 	pop	ar7
      001113 0F               [12] 3740 	inc	r7
      001114 80 EB            [24] 3741 	sjmp	00107$
      001116                       3742 00102$:
                                   3743 ;	fat.h:448: UartPrint("\nSTART: ");
      001116 90 1E 3B         [24] 3744 	mov	dptr,#___str_4
      001119 75 F0 80         [24] 3745 	mov	b,#0x80
      00111C 12 01 84         [24] 3746 	lcall	_UartPrint
                                   3747 ;	fat.h:449: UartPrintNumber(__global_rootEntry.startCluster);
      00111F 78 76            [12] 3748 	mov	r0,#(___global_rootEntry + 0x000c)
      001121 86 06            [24] 3749 	mov	ar6,@r0
      001123 08               [12] 3750 	inc	r0
      001124 86 07            [24] 3751 	mov	ar7,@r0
      001126 7D 00            [12] 3752 	mov	r5,#0x00
      001128 7C 00            [12] 3753 	mov	r4,#0x00
      00112A 8E 82            [24] 3754 	mov	dpl,r6
      00112C 8F 83            [24] 3755 	mov	dph,r7
      00112E 8D F0            [24] 3756 	mov	b,r5
      001130 EC               [12] 3757 	mov	a,r4
      001131 12 02 CA         [24] 3758 	lcall	_UartPrintNumber
                                   3759 ;	fat.h:450: UartPrint("\nSIZE: ");
      001134 90 1E 44         [24] 3760 	mov	dptr,#___str_5
      001137 75 F0 80         [24] 3761 	mov	b,#0x80
      00113A 12 01 84         [24] 3762 	lcall	_UartPrint
                                   3763 ;	fat.h:451: UartPrintNumber(__global_rootEntry.size);			
      00113D 78 78            [12] 3764 	mov	r0,#(___global_rootEntry + 0x000e)
      00113F 86 04            [24] 3765 	mov	ar4,@r0
      001141 08               [12] 3766 	inc	r0
      001142 86 05            [24] 3767 	mov	ar5,@r0
      001144 08               [12] 3768 	inc	r0
      001145 86 06            [24] 3769 	mov	ar6,@r0
      001147 08               [12] 3770 	inc	r0
      001148 86 07            [24] 3771 	mov	ar7,@r0
      00114A 8C 82            [24] 3772 	mov	dpl,r4
      00114C 8D 83            [24] 3773 	mov	dph,r5
      00114E 8E F0            [24] 3774 	mov	b,r6
      001150 EF               [12] 3775 	mov	a,r7
      001151 12 02 CA         [24] 3776 	lcall	_UartPrintNumber
                                   3777 ;	fat.h:452: UartPrint("\nATTR: 0x");
      001154 90 1E 4C         [24] 3778 	mov	dptr,#___str_6
      001157 75 F0 80         [24] 3779 	mov	b,#0x80
      00115A 12 01 84         [24] 3780 	lcall	_UartPrint
                                   3781 ;	fat.h:453: UartWriteNumber(__global_rootEntry.attributes,HEX);			
      00115D 78 75            [12] 3782 	mov	r0,#(___global_rootEntry + 0x000b)
      00115F 86 82            [24] 3783 	mov	dpl,@r0
      001161 E4               [12] 3784 	clr	a
      001162 C0 E0            [24] 3785 	push	acc
      001164 12 01 B6         [24] 3786 	lcall	_UartWriteNumber
      001167 15 81            [12] 3787 	dec	sp
                                   3788 ;	fat.h:454: UartWrite('\n\n');
      001169 75 82 0A         [24] 3789 	mov	dpl,#0x0a
                                   3790 ;	fat.h:455: }
      00116C 02 00 FE         [24] 3791 	ljmp	_UartWrite
                                   3792 ;------------------------------------------------------------
                                   3793 ;Allocation info for local variables in function 'FAT16_LOAD_ROOTENTRY'
                                   3794 ;------------------------------------------------------------
                                   3795 ;roote_number              Allocated with name '_FAT16_LOAD_ROOTENTRY_roote_number_65536_155'
                                   3796 ;i                         Allocated to registers r7 
                                   3797 ;i                         Allocated to registers r7 
                                   3798 ;sloc0                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc0_1_0'
                                   3799 ;sloc1                     Allocated with name '_FAT16_LOAD_ROOTENTRY_sloc1_1_0'
                                   3800 ;temp                      Allocated with name '_FAT16_LOAD_ROOTENTRY_temp_65536_156'
                                   3801 ;sector_of_given_roote     Allocated to registers r2 r3 r4 r5 
                                   3802 ;offset_in_this_sector     Allocated to registers r6 r7 
                                   3803 ;------------------------------------------------------------
                                   3804 ;	fat.h:465: uint8_t FAT16_LOAD_ROOTENTRY(uint16_t roote_number)
                                   3805 ;	-----------------------------------------
                                   3806 ;	 function FAT16_LOAD_ROOTENTRY
                                   3807 ;	-----------------------------------------
      00116F                       3808 _FAT16_LOAD_ROOTENTRY:
      00116F 85 82 23         [24] 3809 	mov	_FAT16_LOAD_ROOTENTRY_roote_number_65536_155,dpl
      001172 85 83 24         [24] 3810 	mov	(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1),dph
                                   3811 ;	fat.h:474: if(roote_number < __global_vbr.nroote);//pass
      001175 78 57            [12] 3812 	mov	r0,#(___global_vbr + 0x000d)
      001177 86 04            [24] 3813 	mov	ar4,@r0
      001179 08               [12] 3814 	inc	r0
      00117A 86 05            [24] 3815 	mov	ar5,@r0
      00117C C3               [12] 3816 	clr	c
      00117D E5 23            [12] 3817 	mov	a,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
      00117F 9C               [12] 3818 	subb	a,r4
      001180 E5 24            [12] 3819 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
      001182 9D               [12] 3820 	subb	a,r5
      001183 40 04            [24] 3821 	jc	00103$
                                   3822 ;	fat.h:475: else return 1; // error as roote_number is more than number of root entries present in rootentry table 
      001185 75 82 01         [24] 3823 	mov	dpl,#0x01
      001188 22               [24] 3824 	ret
      001189                       3825 00103$:
                                   3826 ;	fat.h:477: VBR_MOUNT_VBR(__global_nthPartitionVBRmounted);
      001189 78 69            [12] 3827 	mov	r0,#___global_nthPartitionVBRmounted
      00118B 86 82            [24] 3828 	mov	dpl,@r0
      00118D 12 0E 83         [24] 3829 	lcall	_VBR_MOUNT_VBR
                                   3830 ;	fat.h:480: sector_of_given_roote = __global_vbr.addr_roote_start + (roote_number*32)/__global_vbr.bps;
      001190 78 61            [12] 3831 	mov	r0,#(___global_vbr + 0x0017)
      001192 86 25            [24] 3832 	mov	_FAT16_LOAD_ROOTENTRY_sloc0_1_0,@r0
      001194 08               [12] 3833 	inc	r0
      001195 86 26            [24] 3834 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1),@r0
      001197 08               [12] 3835 	inc	r0
      001198 86 27            [24] 3836 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2),@r0
      00119A 08               [12] 3837 	inc	r0
      00119B 86 28            [24] 3838 	mov	(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3),@r0
      00119D AE 23            [24] 3839 	mov	r6,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
      00119F E5 24            [12] 3840 	mov	a,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
      0011A1 C4               [12] 3841 	swap	a
      0011A2 23               [12] 3842 	rl	a
      0011A3 54 E0            [12] 3843 	anl	a,#0xe0
      0011A5 CE               [12] 3844 	xch	a,r6
      0011A6 C4               [12] 3845 	swap	a
      0011A7 23               [12] 3846 	rl	a
      0011A8 CE               [12] 3847 	xch	a,r6
      0011A9 6E               [12] 3848 	xrl	a,r6
      0011AA CE               [12] 3849 	xch	a,r6
      0011AB 54 E0            [12] 3850 	anl	a,#0xe0
      0011AD CE               [12] 3851 	xch	a,r6
      0011AE 6E               [12] 3852 	xrl	a,r6
      0011AF FF               [12] 3853 	mov	r7,a
      0011B0 78 50            [12] 3854 	mov	r0,#(___global_vbr + 0x0006)
      0011B2 86 29            [24] 3855 	mov	_FAT16_LOAD_ROOTENTRY_sloc1_1_0,@r0
      0011B4 08               [12] 3856 	inc	r0
      0011B5 86 2A            [24] 3857 	mov	(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1),@r0
      0011B7 85 29 3D         [24] 3858 	mov	__divuint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      0011BA 85 2A 3E         [24] 3859 	mov	(__divuint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      0011BD 8E 82            [24] 3860 	mov	dpl,r6
      0011BF 8F 83            [24] 3861 	mov	dph,r7
      0011C1 C0 07            [24] 3862 	push	ar7
      0011C3 C0 06            [24] 3863 	push	ar6
      0011C5 12 1B 1C         [24] 3864 	lcall	__divuint
      0011C8 AA 82            [24] 3865 	mov	r2,dpl
      0011CA AB 83            [24] 3866 	mov	r3,dph
      0011CC D0 06            [24] 3867 	pop	ar6
      0011CE D0 07            [24] 3868 	pop	ar7
      0011D0 E4               [12] 3869 	clr	a
      0011D1 FC               [12] 3870 	mov	r4,a
      0011D2 FD               [12] 3871 	mov	r5,a
      0011D3 EA               [12] 3872 	mov	a,r2
      0011D4 25 25            [12] 3873 	add	a,_FAT16_LOAD_ROOTENTRY_sloc0_1_0
      0011D6 FA               [12] 3874 	mov	r2,a
      0011D7 EB               [12] 3875 	mov	a,r3
      0011D8 35 26            [12] 3876 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 1)
      0011DA FB               [12] 3877 	mov	r3,a
      0011DB EC               [12] 3878 	mov	a,r4
      0011DC 35 27            [12] 3879 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 2)
      0011DE FC               [12] 3880 	mov	r4,a
      0011DF ED               [12] 3881 	mov	a,r5
      0011E0 35 28            [12] 3882 	addc	a,(_FAT16_LOAD_ROOTENTRY_sloc0_1_0 + 3)
      0011E2 FD               [12] 3883 	mov	r5,a
                                   3884 ;	fat.h:481: offset_in_this_sector = (roote_number*32)%__global_vbr.bps;
      0011E3 85 29 3D         [24] 3885 	mov	__moduint_PARM_2,_FAT16_LOAD_ROOTENTRY_sloc1_1_0
      0011E6 85 2A 3E         [24] 3886 	mov	(__moduint_PARM_2 + 1),(_FAT16_LOAD_ROOTENTRY_sloc1_1_0 + 1)
      0011E9 8E 82            [24] 3887 	mov	dpl,r6
      0011EB 8F 83            [24] 3888 	mov	dph,r7
      0011ED C0 05            [24] 3889 	push	ar5
      0011EF C0 04            [24] 3890 	push	ar4
      0011F1 C0 03            [24] 3891 	push	ar3
      0011F3 C0 02            [24] 3892 	push	ar2
      0011F5 12 1C 65         [24] 3893 	lcall	__moduint
      0011F8 AE 82            [24] 3894 	mov	r6,dpl
      0011FA AF 83            [24] 3895 	mov	r7,dph
      0011FC D0 02            [24] 3896 	pop	ar2
      0011FE D0 03            [24] 3897 	pop	ar3
      001200 D0 04            [24] 3898 	pop	ar4
      001202 D0 05            [24] 3899 	pop	ar5
                                   3900 ;	fat.h:483: SDread(sector_of_given_roote,offset_in_this_sector,32,temp);
      001204 74 A2            [12] 3901 	mov	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
      001206 C0 E0            [24] 3902 	push	acc
      001208 74 00            [12] 3903 	mov	a,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 >> 8)
      00120A C0 E0            [24] 3904 	push	acc
      00120C 74 40            [12] 3905 	mov	a,#0x40
      00120E C0 E0            [24] 3906 	push	acc
      001210 03               [12] 3907 	rr	a
      001211 C0 E0            [24] 3908 	push	acc
      001213 E4               [12] 3909 	clr	a
      001214 C0 E0            [24] 3910 	push	acc
      001216 C0 06            [24] 3911 	push	ar6
      001218 C0 07            [24] 3912 	push	ar7
      00121A 8A 82            [24] 3913 	mov	dpl,r2
      00121C 8B 83            [24] 3914 	mov	dph,r3
      00121E 8C F0            [24] 3915 	mov	b,r4
      001220 ED               [12] 3916 	mov	a,r5
      001221 12 07 7A         [24] 3917 	lcall	_SDread
      001224 E5 81            [12] 3918 	mov	a,sp
      001226 24 F9            [12] 3919 	add	a,#0xf9
      001228 F5 81            [12] 3920 	mov	sp,a
                                   3921 ;	fat.h:485: __global_rootEntry.entry_index = roote_number; //save the index of the root_entry
      00122A 78 7C            [12] 3922 	mov	r0,#(___global_rootEntry + 0x0012)
      00122C A6 23            [24] 3923 	mov	@r0,_FAT16_LOAD_ROOTENTRY_roote_number_65536_155
      00122E 08               [12] 3924 	inc	r0
      00122F A6 24            [24] 3925 	mov	@r0,(_FAT16_LOAD_ROOTENTRY_roote_number_65536_155 + 1)
                                   3926 ;	fat.h:486: __global_rootEntry.bytes_read = 0; //no bytes has been read so far by FAT16_FILE_READ as we have just loaded the rootentry
      001231 78 7E            [12] 3927 	mov	r0,#(___global_rootEntry + 0x0014)
      001233 76 00            [12] 3928 	mov	@r0,#0x00
      001235 08               [12] 3929 	inc	r0
      001236 76 00            [12] 3930 	mov	@r0,#0x00
      001238 08               [12] 3931 	inc	r0
      001239 76 00            [12] 3932 	mov	@r0,#0x00
      00123B 08               [12] 3933 	inc	r0
      00123C 76 00            [12] 3934 	mov	@r0,#0x00
                                   3935 ;	fat.h:488: for(uint8_t i=0;i<8;i++) __global_rootEntry.name[i] = temp[i];
      00123E 7F 00            [12] 3936 	mov	r7,#0x00
      001240                       3937 00107$:
      001240 BF 08 00         [24] 3938 	cjne	r7,#0x08,00137$
      001243                       3939 00137$:
      001243 50 0F            [24] 3940 	jnc	00104$
      001245 EF               [12] 3941 	mov	a,r7
      001246 24 6A            [12] 3942 	add	a,#___global_rootEntry
      001248 F9               [12] 3943 	mov	r1,a
      001249 EF               [12] 3944 	mov	a,r7
      00124A 24 A2            [12] 3945 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
      00124C F8               [12] 3946 	mov	r0,a
      00124D 86 06            [24] 3947 	mov	ar6,@r0
      00124F A7 06            [24] 3948 	mov	@r1,ar6
      001251 0F               [12] 3949 	inc	r7
      001252 80 EC            [24] 3950 	sjmp	00107$
      001254                       3951 00104$:
                                   3952 ;	fat.h:489: for(uint8_t i=8;i<11;i++) __global_rootEntry.extension[i-8] = temp[i];
      001254 7F 08            [12] 3953 	mov	r7,#0x08
      001256                       3954 00110$:
      001256 BF 0B 00         [24] 3955 	cjne	r7,#0x0b,00139$
      001259                       3956 00139$:
      001259 50 13            [24] 3957 	jnc	00105$
      00125B 8F 06            [24] 3958 	mov	ar6,r7
      00125D EE               [12] 3959 	mov	a,r6
      00125E 24 F8            [12] 3960 	add	a,#0xf8
      001260 24 72            [12] 3961 	add	a,#(___global_rootEntry + 0x0008)
      001262 F9               [12] 3962 	mov	r1,a
      001263 EF               [12] 3963 	mov	a,r7
      001264 24 A2            [12] 3964 	add	a,#_FAT16_LOAD_ROOTENTRY_temp_65536_156
      001266 F8               [12] 3965 	mov	r0,a
      001267 86 06            [24] 3966 	mov	ar6,@r0
      001269 A7 06            [24] 3967 	mov	@r1,ar6
      00126B 0F               [12] 3968 	inc	r7
      00126C 80 E8            [24] 3969 	sjmp	00110$
      00126E                       3970 00105$:
                                   3971 ;	fat.h:491: __global_rootEntry.attributes = temp[0x0b];
      00126E 78 AD            [12] 3972 	mov	r0,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x000b)
      001270 86 07            [24] 3973 	mov	ar7,@r0
      001272 78 75            [12] 3974 	mov	r0,#(___global_rootEntry + 0x000b)
      001274 A6 07            [24] 3975 	mov	@r0,ar7
                                   3976 ;	fat.h:492: __global_rootEntry.startCluster = HELPER_load_littleendian16(&temp[0x1a]);
      001276 90 00 BC         [24] 3977 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x001a)
      001279 75 F0 40         [24] 3978 	mov	b,#0x40
      00127C 12 08 C0         [24] 3979 	lcall	_HELPER_load_littleendian16
      00127F E5 82            [12] 3980 	mov	a,dpl
      001281 85 83 F0         [24] 3981 	mov	b,dph
      001284 78 76            [12] 3982 	mov	r0,#(___global_rootEntry + 0x000c)
      001286 F6               [12] 3983 	mov	@r0,a
      001287 08               [12] 3984 	inc	r0
      001288 A6 F0            [24] 3985 	mov	@r0,b
                                   3986 ;	fat.h:493: __global_rootEntry.size = HELPER_load_littleendian32(&temp[0x1c]);
      00128A 90 00 BE         [24] 3987 	mov	dptr,#(_FAT16_LOAD_ROOTENTRY_temp_65536_156 + 0x001c)
      00128D 75 F0 40         [24] 3988 	mov	b,#0x40
      001290 12 08 EE         [24] 3989 	lcall	_HELPER_load_littleendian32
      001293 AC 82            [24] 3990 	mov	r4,dpl
      001295 AD 83            [24] 3991 	mov	r5,dph
      001297 AE F0            [24] 3992 	mov	r6,b
      001299 FF               [12] 3993 	mov	r7,a
      00129A 78 78            [12] 3994 	mov	r0,#(___global_rootEntry + 0x000e)
      00129C A6 04            [24] 3995 	mov	@r0,ar4
      00129E 08               [12] 3996 	inc	r0
      00129F A6 05            [24] 3997 	mov	@r0,ar5
      0012A1 08               [12] 3998 	inc	r0
      0012A2 A6 06            [24] 3999 	mov	@r0,ar6
      0012A4 08               [12] 4000 	inc	r0
      0012A5 A6 07            [24] 4001 	mov	@r0,ar7
                                   4002 ;	fat.h:495: return 0;
      0012A7 75 82 00         [24] 4003 	mov	dpl,#0x00
                                   4004 ;	fat.h:496: }
      0012AA 22               [24] 4005 	ret
                                   4006 ;------------------------------------------------------------
                                   4007 ;Allocation info for local variables in function 'FAT16_IS_ROOTENTRY_VALID_FILE'
                                   4008 ;------------------------------------------------------------
                                   4009 ;	fat.h:497: uint8_t FAT16_IS_ROOTENTRY_VALID_FILE()
                                   4010 ;	-----------------------------------------
                                   4011 ;	 function FAT16_IS_ROOTENTRY_VALID_FILE
                                   4012 ;	-----------------------------------------
      0012AB                       4013 _FAT16_IS_ROOTENTRY_VALID_FILE:
                                   4014 ;	fat.h:500: if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_AVAILABLE)
      0012AB 78 6A            [12] 4015 	mov	r0,#___global_rootEntry
      0012AD E6               [12] 4016 	mov	a,@r0
      0012AE FF               [12] 4017 	mov	r7,a
      0012AF 70 04            [24] 4018 	jnz	00112$
                                   4019 ;	fat.h:505: return 255; //no more entries, stop scanning
      0012B1 75 82 FF         [24] 4020 	mov	dpl,#0xff
      0012B4 22               [24] 4021 	ret
      0012B5                       4022 00112$:
                                   4023 ;	fat.h:507: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DELETED)
      0012B5 BF E5 04         [24] 4024 	cjne	r7,#0xe5,00109$
                                   4025 ;	fat.h:513: return FAT16_ROOTENTRY_DELETED; //deleted and available
      0012B8 75 82 E5         [24] 4026 	mov	dpl,#0xe5
      0012BB 22               [24] 4027 	ret
      0012BC                       4028 00109$:
                                   4029 ;	fat.h:515: else if(__global_rootEntry.name[0]==FAT16_ROOTENTRY_DOT)
      0012BC BF 2E 04         [24] 4030 	cjne	r7,#0x2e,00106$
                                   4031 ;	fat.h:520: return FAT16_ROOTENTRY_DOT; //this is the entry to self
      0012BF 75 82 2E         [24] 4032 	mov	dpl,#0x2e
      0012C2 22               [24] 4033 	ret
      0012C3                       4034 00106$:
                                   4035 ;	fat.h:525: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_HIDDEN ||
      0012C3 90 00 6A         [24] 4036 	mov	dptr,#___global_rootEntry
      0012C6 75 F0 40         [24] 4037 	mov	b,#0x40
      0012C9 12 0A 49         [24] 4038 	lcall	_HELPER_rootentry_type
      0012CC AF 82            [24] 4039 	mov	r7,dpl
      0012CE BF 01 02         [24] 4040 	cjne	r7,#0x01,00141$
      0012D1 80 1E            [24] 4041 	sjmp	00101$
      0012D3                       4042 00141$:
                                   4043 ;	fat.h:526: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_SYSTEM ||
      0012D3 90 00 6A         [24] 4044 	mov	dptr,#___global_rootEntry
      0012D6 75 F0 40         [24] 4045 	mov	b,#0x40
      0012D9 12 0A 49         [24] 4046 	lcall	_HELPER_rootentry_type
      0012DC AF 82            [24] 4047 	mov	r7,dpl
      0012DE BF 02 02         [24] 4048 	cjne	r7,#0x02,00142$
      0012E1 80 0E            [24] 4049 	sjmp	00101$
      0012E3                       4050 00142$:
                                   4051 ;	fat.h:527: HELPER_rootentry_type(&__global_rootEntry)==FILETYPE_VOLUME
      0012E3 90 00 6A         [24] 4052 	mov	dptr,#___global_rootEntry
      0012E6 75 F0 40         [24] 4053 	mov	b,#0x40
      0012E9 12 0A 49         [24] 4054 	lcall	_HELPER_rootentry_type
      0012EC AF 82            [24] 4055 	mov	r7,dpl
      0012EE BF 03 04         [24] 4056 	cjne	r7,#0x03,00110$
      0012F1                       4057 00101$:
                                   4058 ;	fat.h:534: return 254;
      0012F1 75 82 FE         [24] 4059 	mov	dpl,#0xfe
      0012F4 22               [24] 4060 	ret
      0012F5                       4061 00110$:
                                   4062 ;	fat.h:537: return 0;
      0012F5 75 82 00         [24] 4063 	mov	dpl,#0x00
                                   4064 ;	fat.h:538: }
      0012F8 22               [24] 4065 	ret
                                   4066 ;------------------------------------------------------------
                                   4067 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_READ'
                                   4068 ;------------------------------------------------------------
                                   4069 ;roote_index               Allocated to registers r6 r7 
                                   4070 ;file_validity             Allocated to registers r7 
                                   4071 ;------------------------------------------------------------
                                   4072 ;	fat.h:541: uint8_t FAT16_ROOTENTRY_READ(uint16_t roote_index)
                                   4073 ;	-----------------------------------------
                                   4074 ;	 function FAT16_ROOTENTRY_READ
                                   4075 ;	-----------------------------------------
      0012F9                       4076 _FAT16_ROOTENTRY_READ:
                                   4077 ;	fat.h:551: if(FAT16_LOAD_ROOTENTRY(roote_index)) // if returns 1, then we have reached the end of the rootentry table
      0012F9 12 11 6F         [24] 4078 	lcall	_FAT16_LOAD_ROOTENTRY
      0012FC E5 82            [12] 4079 	mov	a,dpl
      0012FE 60 04            [24] 4080 	jz	00102$
                                   4081 ;	fat.h:553: return 0xff; //end of scan
      001300 75 82 FF         [24] 4082 	mov	dpl,#0xff
      001303 22               [24] 4083 	ret
      001304                       4084 00102$:
                                   4085 ;	fat.h:557: file_validity=FAT16_IS_ROOTENTRY_VALID_FILE(); //check validity
      001304 12 12 AB         [24] 4086 	lcall	_FAT16_IS_ROOTENTRY_VALID_FILE
      001307 AF 82            [24] 4087 	mov	r7,dpl
                                   4088 ;	fat.h:559: if(file_validity==255)return 0xff; //end of scan
      001309 BF FF 04         [24] 4089 	cjne	r7,#0xff,00106$
      00130C 75 82 FF         [24] 4090 	mov	dpl,#0xff
      00130F 22               [24] 4091 	ret
      001310                       4092 00106$:
                                   4093 ;	fat.h:560: else if(file_validity==0)
      001310 EF               [12] 4094 	mov	a,r7
                                   4095 ;	fat.h:566: return 0;
      001311 70 03            [24] 4096 	jnz	00107$
      001313 F5 82            [12] 4097 	mov	dpl,a
      001315 22               [24] 4098 	ret
      001316                       4099 00107$:
                                   4100 ;	fat.h:569: return 1; //invalid file if context reaches here
      001316 75 82 01         [24] 4101 	mov	dpl,#0x01
                                   4102 ;	fat.h:572: }
      001319 22               [24] 4103 	ret
                                   4104 ;------------------------------------------------------------
                                   4105 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN_RESET'
                                   4106 ;------------------------------------------------------------
                                   4107 ;	fat.h:574: void FAT16_ROOTENTRY_SCAN_RESET()
                                   4108 ;	-----------------------------------------
                                   4109 ;	 function FAT16_ROOTENTRY_SCAN_RESET
                                   4110 ;	-----------------------------------------
      00131A                       4111 _FAT16_ROOTENTRY_SCAN_RESET:
                                   4112 ;	fat.h:576: __global_rootEntry.entry_index=0xffff; // in FAT16, maximum number of root entries can never reach 0xffff.
      00131A 78 7C            [12] 4113 	mov	r0,#(___global_rootEntry + 0x0012)
      00131C 76 FF            [12] 4114 	mov	@r0,#0xff
      00131E 08               [12] 4115 	inc	r0
      00131F 76 FF            [12] 4116 	mov	@r0,#0xff
                                   4117 ;	fat.h:582: __global_rootEntry.attributes |= 1<<FILETYPE_SYSTEM;
      001321 78 75            [12] 4118 	mov	r0,#(___global_rootEntry + 0x000b)
      001323 86 07            [24] 4119 	mov	ar7,@r0
      001325 74 04            [12] 4120 	mov	a,#0x04
      001327 4F               [12] 4121 	orl	a,r7
      001328 78 75            [12] 4122 	mov	r0,#(___global_rootEntry + 0x000b)
      00132A F6               [12] 4123 	mov	@r0,a
                                   4124 ;	fat.h:583: }
      00132B 22               [24] 4125 	ret
                                   4126 ;------------------------------------------------------------
                                   4127 ;Allocation info for local variables in function 'FAT16_ROOTENTRY_SCAN'
                                   4128 ;------------------------------------------------------------
                                   4129 ;validity                  Allocated to registers r7 
                                   4130 ;------------------------------------------------------------
                                   4131 ;	fat.h:585: uint8_t FAT16_ROOTENTRY_SCAN() __reentrant
                                   4132 ;	-----------------------------------------
                                   4133 ;	 function FAT16_ROOTENTRY_SCAN
                                   4134 ;	-----------------------------------------
      00132C                       4135 _FAT16_ROOTENTRY_SCAN:
                                   4136 ;	fat.h:590: while(1)
      00132C                       4137 00110$:
                                   4138 ;	fat.h:598: validity=FAT16_ROOTENTRY_READ(__global_rootEntry.entry_index+1); //read the next entry
      00132C 78 7C            [12] 4139 	mov	r0,#(___global_rootEntry + 0x0012)
      00132E 86 06            [24] 4140 	mov	ar6,@r0
      001330 08               [12] 4141 	inc	r0
      001331 86 07            [24] 4142 	mov	ar7,@r0
      001333 8E 82            [24] 4143 	mov	dpl,r6
      001335 8F 83            [24] 4144 	mov	dph,r7
      001337 A3               [24] 4145 	inc	dptr
      001338 12 12 F9         [24] 4146 	lcall	_FAT16_ROOTENTRY_READ
      00133B AF 82            [24] 4147 	mov	r7,dpl
                                   4148 ;	fat.h:600: if ( validity == 255 )
      00133D BF FF 04         [24] 4149 	cjne	r7,#0xff,00107$
                                   4150 ;	fat.h:606: return 255; //end scan
      001340 75 82 FF         [24] 4151 	mov	dpl,#0xff
      001343 22               [24] 4152 	ret
      001344                       4153 00107$:
                                   4154 ;	fat.h:608: else if (validity == 1) 
      001344 BF 01 02         [24] 4155 	cjne	r7,#0x01,00132$
      001347 80 E3            [24] 4156 	sjmp	00110$
      001349                       4157 00132$:
                                   4158 ;	fat.h:616: else if(validity == 0)
      001349 EF               [12] 4159 	mov	a,r7
                                   4160 ;	fat.h:623: return 0; // found a valid file,break out of the loop
      00134A 70 E0            [24] 4161 	jnz	00110$
      00134C F5 82            [12] 4162 	mov	dpl,a
                                   4163 ;	fat.h:630: }
      00134E 22               [24] 4164 	ret
                                   4165 ;------------------------------------------------------------
                                   4166 ;Allocation info for local variables in function 'FAT16_FILE_OPEN'
                                   4167 ;------------------------------------------------------------
                                   4168 ;filename                  Allocated to registers r5 r6 r7 
                                   4169 ;filename83                Allocated to stack - _bp +1
                                   4170 ;------------------------------------------------------------
                                   4171 ;	fat.h:632: uint8_t FAT16_FILE_OPEN(char *filename) __reentrant
                                   4172 ;	-----------------------------------------
                                   4173 ;	 function FAT16_FILE_OPEN
                                   4174 ;	-----------------------------------------
      00134F                       4175 _FAT16_FILE_OPEN:
      00134F C0 3C            [24] 4176 	push	_bp
      001351 E5 81            [12] 4177 	mov	a,sp
      001353 F5 3C            [12] 4178 	mov	_bp,a
      001355 24 0C            [12] 4179 	add	a,#0x0c
      001357 F5 81            [12] 4180 	mov	sp,a
      001359 AD 82            [24] 4181 	mov	r5,dpl
      00135B AE 83            [24] 4182 	mov	r6,dph
      00135D AF F0            [24] 4183 	mov	r7,b
                                   4184 ;	fat.h:638: if(HELPER_filename_to_8dot3filename(filename,filename83)) 
      00135F AC 3C            [24] 4185 	mov	r4,_bp
      001361 0C               [12] 4186 	inc	r4
      001362 8C 18            [24] 4187 	mov	_HELPER_filename_to_8dot3filename_PARM_2,r4
      001364 75 19 00         [24] 4188 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 1),#0x00
      001367 75 1A 40         [24] 4189 	mov	(_HELPER_filename_to_8dot3filename_PARM_2 + 2),#0x40
      00136A 8D 82            [24] 4190 	mov	dpl,r5
      00136C 8E 83            [24] 4191 	mov	dph,r6
      00136E 8F F0            [24] 4192 	mov	b,r7
      001370 C0 04            [24] 4193 	push	ar4
      001372 12 0B 02         [24] 4194 	lcall	_HELPER_filename_to_8dot3filename
      001375 E5 82            [12] 4195 	mov	a,dpl
      001377 D0 04            [24] 4196 	pop	ar4
      001379 60 05            [24] 4197 	jz	00102$
                                   4198 ;	fat.h:643: return 1; //invalid filename
      00137B 75 82 01         [24] 4199 	mov	dpl,#0x01
      00137E 80 61            [24] 4200 	sjmp	00109$
      001380                       4201 00102$:
                                   4202 ;	fat.h:646: FAT16_ROOTENTRY_SCAN_RESET();
      001380 C0 04            [24] 4203 	push	ar4
      001382 12 13 1A         [24] 4204 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
      001385 D0 04            [24] 4205 	pop	ar4
                                   4206 ;	fat.h:647: while(FAT16_ROOTENTRY_SCAN()==0)
      001387 8C 07            [24] 4207 	mov	ar7,r4
      001389 74 08            [12] 4208 	mov	a,#0x08
      00138B 2C               [12] 4209 	add	a,r4
      00138C FE               [12] 4210 	mov	r6,a
      00138D                       4211 00106$:
      00138D C0 07            [24] 4212 	push	ar7
      00138F C0 06            [24] 4213 	push	ar6
      001391 12 13 2C         [24] 4214 	lcall	_FAT16_ROOTENTRY_SCAN
      001394 E5 82            [12] 4215 	mov	a,dpl
      001396 D0 06            [24] 4216 	pop	ar6
      001398 D0 07            [24] 4217 	pop	ar7
                                   4218 ;	fat.h:649: if( HELPER_strncmp(__global_rootEntry.name,filename83,8)==0 && 
      00139A 70 42            [24] 4219 	jnz	00108$
      00139C 8F 3D            [24] 4220 	mov	_HELPER_strncmp_PARM_2,r7
      00139E F5 3E            [12] 4221 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      0013A0 75 3F 40         [24] 4222 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      0013A3 75 40 08         [24] 4223 	mov	_HELPER_strncmp_PARM_3,#0x08
      0013A6 90 00 6A         [24] 4224 	mov	dptr,#___global_rootEntry
      0013A9 75 F0 40         [24] 4225 	mov	b,#0x40
      0013AC C0 07            [24] 4226 	push	ar7
      0013AE C0 06            [24] 4227 	push	ar6
      0013B0 12 09 D2         [24] 4228 	lcall	_HELPER_strncmp
      0013B3 E5 82            [12] 4229 	mov	a,dpl
      0013B5 D0 06            [24] 4230 	pop	ar6
      0013B7 D0 07            [24] 4231 	pop	ar7
                                   4232 ;	fat.h:650: HELPER_strncmp(__global_rootEntry.extension,&filename83[8],3)==0 )
      0013B9 70 D2            [24] 4233 	jnz	00106$
      0013BB 8E 3D            [24] 4234 	mov	_HELPER_strncmp_PARM_2,r6
      0013BD F5 3E            [12] 4235 	mov	(_HELPER_strncmp_PARM_2 + 1),a
      0013BF 75 3F 40         [24] 4236 	mov	(_HELPER_strncmp_PARM_2 + 2),#0x40
      0013C2 75 40 03         [24] 4237 	mov	_HELPER_strncmp_PARM_3,#0x03
      0013C5 90 00 72         [24] 4238 	mov	dptr,#(___global_rootEntry + 0x0008)
      0013C8 75 F0 40         [24] 4239 	mov	b,#0x40
      0013CB C0 07            [24] 4240 	push	ar7
      0013CD C0 06            [24] 4241 	push	ar6
      0013CF 12 09 D2         [24] 4242 	lcall	_HELPER_strncmp
      0013D2 E5 82            [12] 4243 	mov	a,dpl
      0013D4 D0 06            [24] 4244 	pop	ar6
      0013D6 D0 07            [24] 4245 	pop	ar7
                                   4246 ;	fat.h:656: return 0; //file found
      0013D8 70 B3            [24] 4247 	jnz	00106$
      0013DA F5 82            [12] 4248 	mov	dpl,a
      0013DC 80 03            [24] 4249 	sjmp	00109$
      0013DE                       4250 00108$:
                                   4251 ;	fat.h:663: return 2; // file not found
      0013DE 75 82 02         [24] 4252 	mov	dpl,#0x02
      0013E1                       4253 00109$:
                                   4254 ;	fat.h:665: }
      0013E1 85 3C 81         [24] 4255 	mov	sp,_bp
      0013E4 D0 3C            [24] 4256 	pop	_bp
      0013E6 22               [24] 4257 	ret
                                   4258 ;------------------------------------------------------------
                                   4259 ;Allocation info for local variables in function 'FAT16_GET_NEXT_CLUSTER'
                                   4260 ;------------------------------------------------------------
                                   4261 ;current_cluster           Allocated to registers r6 r7 
                                   4262 ;temp                      Allocated to stack - _bp +8
                                   4263 ;sloc0                     Allocated to stack - _bp +1
                                   4264 ;sloc1                     Allocated to stack - _bp +8
                                   4265 ;sloc2                     Allocated to stack - _bp +10
                                   4266 ;sloc3                     Allocated to stack - _bp +4
                                   4267 ;------------------------------------------------------------
                                   4268 ;	fat.h:668: uint16_t FAT16_GET_NEXT_CLUSTER(uint16_t current_cluster) __reentrant
                                   4269 ;	-----------------------------------------
                                   4270 ;	 function FAT16_GET_NEXT_CLUSTER
                                   4271 ;	-----------------------------------------
      0013E7                       4272 _FAT16_GET_NEXT_CLUSTER:
      0013E7 C0 3C            [24] 4273 	push	_bp
      0013E9 E5 81            [12] 4274 	mov	a,sp
      0013EB F5 3C            [12] 4275 	mov	_bp,a
      0013ED 24 09            [12] 4276 	add	a,#0x09
      0013EF F5 81            [12] 4277 	mov	sp,a
      0013F1 AE 82            [24] 4278 	mov	r6,dpl
      0013F3 AF 83            [24] 4279 	mov	r7,dph
                                   4280 ;	fat.h:677: SDread(__global_vbr.addr_fat_start + (current_cluster*2)/__global_vbr.bps, (current_cluster*2) % __global_vbr.bps, 2, temp);
      0013F5 E5 3C            [12] 4281 	mov	a,_bp
      0013F7 24 08            [12] 4282 	add	a,#0x08
      0013F9 F9               [12] 4283 	mov	r1,a
      0013FA A8 3C            [24] 4284 	mov	r0,_bp
      0013FC 08               [12] 4285 	inc	r0
      0013FD A6 01            [24] 4286 	mov	@r0,ar1
      0013FF 08               [12] 4287 	inc	r0
      001400 76 00            [12] 4288 	mov	@r0,#0x00
      001402 08               [12] 4289 	inc	r0
      001403 76 40            [12] 4290 	mov	@r0,#0x40
      001405 EE               [12] 4291 	mov	a,r6
      001406 2E               [12] 4292 	add	a,r6
      001407 FE               [12] 4293 	mov	r6,a
      001408 EF               [12] 4294 	mov	a,r7
      001409 33               [12] 4295 	rlc	a
      00140A FF               [12] 4296 	mov	r7,a
      00140B 78 50            [12] 4297 	mov	r0,#(___global_vbr + 0x0006)
      00140D 86 05            [24] 4298 	mov	ar5,@r0
      00140F 08               [12] 4299 	inc	r0
      001410 86 04            [24] 4300 	mov	ar4,@r0
      001412 8D 3D            [24] 4301 	mov	__moduint_PARM_2,r5
      001414 8C 3E            [24] 4302 	mov	(__moduint_PARM_2 + 1),r4
      001416 8E 82            [24] 4303 	mov	dpl,r6
      001418 8F 83            [24] 4304 	mov	dph,r7
      00141A C0 07            [24] 4305 	push	ar7
      00141C C0 06            [24] 4306 	push	ar6
      00141E C0 05            [24] 4307 	push	ar5
      001420 C0 04            [24] 4308 	push	ar4
      001422 C0 01            [24] 4309 	push	ar1
      001424 12 1C 65         [24] 4310 	lcall	__moduint
      001427 AB 82            [24] 4311 	mov	r3,dpl
      001429 AA 83            [24] 4312 	mov	r2,dph
      00142B D0 01            [24] 4313 	pop	ar1
      00142D D0 04            [24] 4314 	pop	ar4
      00142F D0 05            [24] 4315 	pop	ar5
      001431 D0 06            [24] 4316 	pop	ar6
      001433 D0 07            [24] 4317 	pop	ar7
      001435 E5 3C            [12] 4318 	mov	a,_bp
      001437 24 04            [12] 4319 	add	a,#0x04
      001439 F8               [12] 4320 	mov	r0,a
      00143A C0 01            [24] 4321 	push	ar1
      00143C 79 5D            [12] 4322 	mov	r1,#(___global_vbr + 0x0013)
      00143E E7               [12] 4323 	mov	a,@r1
      00143F F6               [12] 4324 	mov	@r0,a
      001440 09               [12] 4325 	inc	r1
      001441 E7               [12] 4326 	mov	a,@r1
      001442 08               [12] 4327 	inc	r0
      001443 F6               [12] 4328 	mov	@r0,a
      001444 09               [12] 4329 	inc	r1
      001445 E7               [12] 4330 	mov	a,@r1
      001446 08               [12] 4331 	inc	r0
      001447 F6               [12] 4332 	mov	@r0,a
      001448 09               [12] 4333 	inc	r1
      001449 E7               [12] 4334 	mov	a,@r1
      00144A 08               [12] 4335 	inc	r0
      00144B F6               [12] 4336 	mov	@r0,a
      00144C D0 01            [24] 4337 	pop	ar1
      00144E 8D 3D            [24] 4338 	mov	__divuint_PARM_2,r5
      001450 8C 3E            [24] 4339 	mov	(__divuint_PARM_2 + 1),r4
      001452 8E 82            [24] 4340 	mov	dpl,r6
      001454 8F 83            [24] 4341 	mov	dph,r7
      001456 C0 03            [24] 4342 	push	ar3
      001458 C0 02            [24] 4343 	push	ar2
      00145A C0 01            [24] 4344 	push	ar1
      00145C 12 1B 1C         [24] 4345 	lcall	__divuint
      00145F AE 82            [24] 4346 	mov	r6,dpl
      001461 AF 83            [24] 4347 	mov	r7,dph
      001463 D0 01            [24] 4348 	pop	ar1
      001465 D0 02            [24] 4349 	pop	ar2
      001467 D0 03            [24] 4350 	pop	ar3
      001469 8E 04            [24] 4351 	mov	ar4,r6
      00146B 8F 05            [24] 4352 	mov	ar5,r7
      00146D E4               [12] 4353 	clr	a
      00146E FE               [12] 4354 	mov	r6,a
      00146F FF               [12] 4355 	mov	r7,a
      001470 E5 3C            [12] 4356 	mov	a,_bp
      001472 24 04            [12] 4357 	add	a,#0x04
      001474 F8               [12] 4358 	mov	r0,a
      001475 EC               [12] 4359 	mov	a,r4
      001476 26               [12] 4360 	add	a,@r0
      001477 FC               [12] 4361 	mov	r4,a
      001478 ED               [12] 4362 	mov	a,r5
      001479 08               [12] 4363 	inc	r0
      00147A 36               [12] 4364 	addc	a,@r0
      00147B FD               [12] 4365 	mov	r5,a
      00147C EE               [12] 4366 	mov	a,r6
      00147D 08               [12] 4367 	inc	r0
      00147E 36               [12] 4368 	addc	a,@r0
      00147F FE               [12] 4369 	mov	r6,a
      001480 EF               [12] 4370 	mov	a,r7
      001481 08               [12] 4371 	inc	r0
      001482 36               [12] 4372 	addc	a,@r0
      001483 FF               [12] 4373 	mov	r7,a
      001484 C0 01            [24] 4374 	push	ar1
      001486 A8 3C            [24] 4375 	mov	r0,_bp
      001488 08               [12] 4376 	inc	r0
      001489 E6               [12] 4377 	mov	a,@r0
      00148A C0 E0            [24] 4378 	push	acc
      00148C 08               [12] 4379 	inc	r0
      00148D E6               [12] 4380 	mov	a,@r0
      00148E C0 E0            [24] 4381 	push	acc
      001490 08               [12] 4382 	inc	r0
      001491 E6               [12] 4383 	mov	a,@r0
      001492 C0 E0            [24] 4384 	push	acc
      001494 74 02            [12] 4385 	mov	a,#0x02
      001496 C0 E0            [24] 4386 	push	acc
      001498 E4               [12] 4387 	clr	a
      001499 C0 E0            [24] 4388 	push	acc
      00149B C0 03            [24] 4389 	push	ar3
      00149D C0 02            [24] 4390 	push	ar2
      00149F 8C 82            [24] 4391 	mov	dpl,r4
      0014A1 8D 83            [24] 4392 	mov	dph,r5
      0014A3 8E F0            [24] 4393 	mov	b,r6
      0014A5 EF               [12] 4394 	mov	a,r7
      0014A6 12 07 7A         [24] 4395 	lcall	_SDread
      0014A9 E5 81            [12] 4396 	mov	a,sp
      0014AB 24 F9            [12] 4397 	add	a,#0xf9
      0014AD F5 81            [12] 4398 	mov	sp,a
      0014AF D0 01            [24] 4399 	pop	ar1
                                   4400 ;	fat.h:678: return (uint16_t)temp[1] << 8 | temp[0]; 
      0014B1 E9               [12] 4401 	mov	a,r1
      0014B2 04               [12] 4402 	inc	a
      0014B3 F8               [12] 4403 	mov	r0,a
      0014B4 86 07            [24] 4404 	mov	ar7,@r0
      0014B6 8F 06            [24] 4405 	mov	ar6,r7
      0014B8 7F 00            [12] 4406 	mov	r7,#0x00
      0014BA 87 05            [24] 4407 	mov	ar5,@r1
      0014BC 7C 00            [12] 4408 	mov	r4,#0x00
      0014BE ED               [12] 4409 	mov	a,r5
      0014BF 4F               [12] 4410 	orl	a,r7
      0014C0 F5 82            [12] 4411 	mov	dpl,a
      0014C2 EC               [12] 4412 	mov	a,r4
      0014C3 4E               [12] 4413 	orl	a,r6
      0014C4 F5 83            [12] 4414 	mov	dph,a
                                   4415 ;	fat.h:684: }
      0014C6 85 3C 81         [24] 4416 	mov	sp,_bp
      0014C9 D0 3C            [24] 4417 	pop	_bp
      0014CB 22               [24] 4418 	ret
                                   4419 ;------------------------------------------------------------
                                   4420 ;Allocation info for local variables in function 'FAT16_FILE_READ'
                                   4421 ;------------------------------------------------------------
                                   4422 ;dst                       Allocated to stack - _bp -5
                                   4423 ;nbytes                    Allocated to stack - _bp +1
                                   4424 ;current_cluster           Allocated to registers r7 r6 
                                   4425 ;bytes_read_in_current_cluster Allocated to stack - _bp +10
                                   4426 ;bytes_read_in_current_sector Allocated to stack - _bp +12
                                   4427 ;current_sector            Allocated to stack - _bp +14
                                   4428 ;sloc0                     Allocated to stack - _bp +2
                                   4429 ;sloc1                     Allocated to stack - _bp +6
                                   4430 ;------------------------------------------------------------
                                   4431 ;	fat.h:705: uint8_t FAT16_FILE_READ(uint8_t nbytes, uint8_t *dst) __reentrant
                                   4432 ;	-----------------------------------------
                                   4433 ;	 function FAT16_FILE_READ
                                   4434 ;	-----------------------------------------
      0014CC                       4435 _FAT16_FILE_READ:
      0014CC C0 3C            [24] 4436 	push	_bp
      0014CE 85 81 3C         [24] 4437 	mov	_bp,sp
      0014D1 C0 82            [24] 4438 	push	dpl
      0014D3 E5 81            [12] 4439 	mov	a,sp
      0014D5 24 10            [12] 4440 	add	a,#0x10
      0014D7 F5 81            [12] 4441 	mov	sp,a
                                   4442 ;	fat.h:714: if(nbytes==0)
      0014D9 A8 3C            [24] 4443 	mov	r0,_bp
      0014DB 08               [12] 4444 	inc	r0
      0014DC E6               [12] 4445 	mov	a,@r0
                                   4446 ;	fat.h:716: return 0; //read 0 bytes
      0014DD 70 05            [24] 4447 	jnz	00102$
      0014DF F5 82            [12] 4448 	mov	dpl,a
      0014E1 02 17 2F         [24] 4449 	ljmp	00113$
      0014E4                       4450 00102$:
                                   4451 ;	fat.h:719: if(nbytes & (nbytes-1))
      0014E4 A8 3C            [24] 4452 	mov	r0,_bp
      0014E6 08               [12] 4453 	inc	r0
      0014E7 86 05            [24] 4454 	mov	ar5,@r0
      0014E9 7E 00            [12] 4455 	mov	r6,#0x00
      0014EB ED               [12] 4456 	mov	a,r5
      0014EC 24 FF            [12] 4457 	add	a,#0xff
      0014EE FB               [12] 4458 	mov	r3,a
      0014EF EE               [12] 4459 	mov	a,r6
      0014F0 34 FF            [12] 4460 	addc	a,#0xff
      0014F2 FC               [12] 4461 	mov	r4,a
      0014F3 EB               [12] 4462 	mov	a,r3
      0014F4 52 05            [12] 4463 	anl	ar5,a
      0014F6 EC               [12] 4464 	mov	a,r4
      0014F7 52 06            [12] 4465 	anl	ar6,a
      0014F9 ED               [12] 4466 	mov	a,r5
      0014FA 4E               [12] 4467 	orl	a,r6
      0014FB 60 06            [24] 4468 	jz	00104$
                                   4469 ;	fat.h:724: return 255; //error
      0014FD 75 82 FF         [24] 4470 	mov	dpl,#0xff
      001500 02 17 2F         [24] 4471 	ljmp	00113$
      001503                       4472 00104$:
                                   4473 ;	fat.h:727: if(__global_rootEntry.bytes_read == __global_rootEntry.size)
      001503 A8 3C            [24] 4474 	mov	r0,_bp
      001505 08               [12] 4475 	inc	r0
      001506 08               [12] 4476 	inc	r0
      001507 79 7E            [12] 4477 	mov	r1,#(___global_rootEntry + 0x0014)
      001509 E7               [12] 4478 	mov	a,@r1
      00150A F6               [12] 4479 	mov	@r0,a
      00150B 09               [12] 4480 	inc	r1
      00150C E7               [12] 4481 	mov	a,@r1
      00150D 08               [12] 4482 	inc	r0
      00150E F6               [12] 4483 	mov	@r0,a
      00150F 09               [12] 4484 	inc	r1
      001510 E7               [12] 4485 	mov	a,@r1
      001511 08               [12] 4486 	inc	r0
      001512 F6               [12] 4487 	mov	@r0,a
      001513 09               [12] 4488 	inc	r1
      001514 E7               [12] 4489 	mov	a,@r1
      001515 08               [12] 4490 	inc	r0
      001516 F6               [12] 4491 	mov	@r0,a
      001517 78 78            [12] 4492 	mov	r0,#(___global_rootEntry + 0x000e)
      001519 86 02            [24] 4493 	mov	ar2,@r0
      00151B 08               [12] 4494 	inc	r0
      00151C 86 05            [24] 4495 	mov	ar5,@r0
      00151E 08               [12] 4496 	inc	r0
      00151F 86 06            [24] 4497 	mov	ar6,@r0
      001521 08               [12] 4498 	inc	r0
      001522 86 07            [24] 4499 	mov	ar7,@r0
      001524 A8 3C            [24] 4500 	mov	r0,_bp
      001526 08               [12] 4501 	inc	r0
      001527 08               [12] 4502 	inc	r0
      001528 E6               [12] 4503 	mov	a,@r0
      001529 B5 02 11         [24] 4504 	cjne	a,ar2,00141$
      00152C 08               [12] 4505 	inc	r0
      00152D E6               [12] 4506 	mov	a,@r0
      00152E B5 05 0C         [24] 4507 	cjne	a,ar5,00141$
      001531 08               [12] 4508 	inc	r0
      001532 E6               [12] 4509 	mov	a,@r0
      001533 B5 06 07         [24] 4510 	cjne	a,ar6,00141$
      001536 08               [12] 4511 	inc	r0
      001537 E6               [12] 4512 	mov	a,@r0
      001538 B5 07 02         [24] 4513 	cjne	a,ar7,00141$
      00153B 80 02            [24] 4514 	sjmp	00142$
      00153D                       4515 00141$:
      00153D 80 06            [24] 4516 	sjmp	00111$
      00153F                       4517 00142$:
                                   4518 ;	fat.h:729: return 0; //end of file - return number of bytes read
      00153F 75 82 00         [24] 4519 	mov	dpl,#0x00
      001542 02 17 2F         [24] 4520 	ljmp	00113$
      001545                       4521 00111$:
                                   4522 ;	fat.h:734: bytes_read_in_current_cluster = __global_rootEntry.bytes_read % __global_vbr.bpc;
      001545 78 59            [12] 4523 	mov	r0,#(___global_vbr + 0x000f)
      001547 86 3D            [24] 4524 	mov	__modulong_PARM_2,@r0
      001549 08               [12] 4525 	inc	r0
      00154A 86 3E            [24] 4526 	mov	(__modulong_PARM_2 + 1),@r0
      00154C 08               [12] 4527 	inc	r0
      00154D 86 3F            [24] 4528 	mov	(__modulong_PARM_2 + 2),@r0
      00154F 08               [12] 4529 	inc	r0
      001550 86 40            [24] 4530 	mov	(__modulong_PARM_2 + 3),@r0
      001552 A8 3C            [24] 4531 	mov	r0,_bp
      001554 08               [12] 4532 	inc	r0
      001555 08               [12] 4533 	inc	r0
      001556 86 82            [24] 4534 	mov	dpl,@r0
      001558 08               [12] 4535 	inc	r0
      001559 86 83            [24] 4536 	mov	dph,@r0
      00155B 08               [12] 4537 	inc	r0
      00155C 86 F0            [24] 4538 	mov	b,@r0
      00155E 08               [12] 4539 	inc	r0
      00155F E6               [12] 4540 	mov	a,@r0
      001560 12 1B 45         [24] 4541 	lcall	__modulong
      001563 AB 82            [24] 4542 	mov	r3,dpl
      001565 AC 83            [24] 4543 	mov	r4,dph
      001567 E5 3C            [12] 4544 	mov	a,_bp
      001569 24 0A            [12] 4545 	add	a,#0x0a
      00156B F8               [12] 4546 	mov	r0,a
      00156C A6 03            [24] 4547 	mov	@r0,ar3
      00156E 08               [12] 4548 	inc	r0
      00156F A6 04            [24] 4549 	mov	@r0,ar4
                                   4550 ;	fat.h:778: if(__global_rootEntry.bytes_read!=0 && bytes_read_in_current_cluster==0)
      001571 A8 3C            [24] 4551 	mov	r0,_bp
      001573 08               [12] 4552 	inc	r0
      001574 08               [12] 4553 	inc	r0
      001575 E6               [12] 4554 	mov	a,@r0
      001576 08               [12] 4555 	inc	r0
      001577 46               [12] 4556 	orl	a,@r0
      001578 08               [12] 4557 	inc	r0
      001579 46               [12] 4558 	orl	a,@r0
      00157A 08               [12] 4559 	inc	r0
      00157B 46               [12] 4560 	orl	a,@r0
      00157C 60 1F            [24] 4561 	jz	00106$
      00157E E5 3C            [12] 4562 	mov	a,_bp
      001580 24 0A            [12] 4563 	add	a,#0x0a
      001582 F8               [12] 4564 	mov	r0,a
      001583 E6               [12] 4565 	mov	a,@r0
      001584 08               [12] 4566 	inc	r0
      001585 46               [12] 4567 	orl	a,@r0
      001586 70 15            [24] 4568 	jnz	00106$
                                   4569 ;	fat.h:780: __global_rootEntry.startCluster = FAT16_GET_NEXT_CLUSTER(__global_rootEntry.startCluster);
      001588 78 76            [12] 4570 	mov	r0,#(___global_rootEntry + 0x000c)
      00158A 86 82            [24] 4571 	mov	dpl,@r0
      00158C 08               [12] 4572 	inc	r0
      00158D 86 83            [24] 4573 	mov	dph,@r0
      00158F 12 13 E7         [24] 4574 	lcall	_FAT16_GET_NEXT_CLUSTER
      001592 E5 82            [12] 4575 	mov	a,dpl
      001594 85 83 F0         [24] 4576 	mov	b,dph
      001597 78 76            [12] 4577 	mov	r0,#(___global_rootEntry + 0x000c)
      001599 F6               [12] 4578 	mov	@r0,a
      00159A 08               [12] 4579 	inc	r0
      00159B A6 F0            [24] 4580 	mov	@r0,b
      00159D                       4581 00106$:
                                   4582 ;	fat.h:784: current_cluster = __global_rootEntry.startCluster;
      00159D 78 76            [12] 4583 	mov	r0,#(___global_rootEntry + 0x000c)
      00159F 86 07            [24] 4584 	mov	ar7,@r0
      0015A1 08               [12] 4585 	inc	r0
      0015A2 86 06            [24] 4586 	mov	ar6,@r0
                                   4587 ;	fat.h:789: current_sector =    __global_vbr.addr_data_start 						//start of data
      0015A4 A8 3C            [24] 4588 	mov	r0,_bp
      0015A6 08               [12] 4589 	inc	r0
      0015A7 08               [12] 4590 	inc	r0
      0015A8 79 65            [12] 4591 	mov	r1,#(___global_vbr + 0x001b)
      0015AA E7               [12] 4592 	mov	a,@r1
      0015AB F6               [12] 4593 	mov	@r0,a
      0015AC 09               [12] 4594 	inc	r1
      0015AD E7               [12] 4595 	mov	a,@r1
      0015AE 08               [12] 4596 	inc	r0
      0015AF F6               [12] 4597 	mov	@r0,a
      0015B0 09               [12] 4598 	inc	r1
      0015B1 E7               [12] 4599 	mov	a,@r1
      0015B2 08               [12] 4600 	inc	r0
      0015B3 F6               [12] 4601 	mov	@r0,a
      0015B4 09               [12] 4602 	inc	r1
      0015B5 E7               [12] 4603 	mov	a,@r1
      0015B6 08               [12] 4604 	inc	r0
      0015B7 F6               [12] 4605 	mov	@r0,a
                                   4606 ;	fat.h:790: + (current_cluster-2) * __global_vbr.spc 				//skip to the start of current cluster
      0015B8 EF               [12] 4607 	mov	a,r7
      0015B9 24 FE            [12] 4608 	add	a,#0xfe
      0015BB F5 82            [12] 4609 	mov	dpl,a
      0015BD EE               [12] 4610 	mov	a,r6
      0015BE 34 FF            [12] 4611 	addc	a,#0xff
      0015C0 F5 83            [12] 4612 	mov	dph,a
      0015C2 78 52            [12] 4613 	mov	r0,#(___global_vbr + 0x0008)
      0015C4 86 03            [24] 4614 	mov	ar3,@r0
      0015C6 8B 3D            [24] 4615 	mov	__mulint_PARM_2,r3
      0015C8 75 3E 00         [24] 4616 	mov	(__mulint_PARM_2 + 1),#0x00
      0015CB 12 1C 48         [24] 4617 	lcall	__mulint
      0015CE AB 82            [24] 4618 	mov	r3,dpl
      0015D0 AF 83            [24] 4619 	mov	r7,dph
      0015D2 8F 05            [24] 4620 	mov	ar5,r7
      0015D4 7E 00            [12] 4621 	mov	r6,#0x00
      0015D6 7F 00            [12] 4622 	mov	r7,#0x00
      0015D8 A8 3C            [24] 4623 	mov	r0,_bp
      0015DA 08               [12] 4624 	inc	r0
      0015DB 08               [12] 4625 	inc	r0
      0015DC EB               [12] 4626 	mov	a,r3
      0015DD 26               [12] 4627 	add	a,@r0
      0015DE F6               [12] 4628 	mov	@r0,a
      0015DF ED               [12] 4629 	mov	a,r5
      0015E0 08               [12] 4630 	inc	r0
      0015E1 36               [12] 4631 	addc	a,@r0
      0015E2 F6               [12] 4632 	mov	@r0,a
      0015E3 EE               [12] 4633 	mov	a,r6
      0015E4 08               [12] 4634 	inc	r0
      0015E5 36               [12] 4635 	addc	a,@r0
      0015E6 F6               [12] 4636 	mov	@r0,a
      0015E7 EF               [12] 4637 	mov	a,r7
      0015E8 08               [12] 4638 	inc	r0
      0015E9 36               [12] 4639 	addc	a,@r0
      0015EA F6               [12] 4640 	mov	@r0,a
                                   4641 ;	fat.h:791: + bytes_read_in_current_cluster/__global_vbr.bps;	//skip sectors already read in current cluster
      0015EB 78 50            [12] 4642 	mov	r0,#(___global_vbr + 0x0006)
      0015ED 86 02            [24] 4643 	mov	ar2,@r0
      0015EF 08               [12] 4644 	inc	r0
      0015F0 86 04            [24] 4645 	mov	ar4,@r0
      0015F2 8A 3D            [24] 4646 	mov	__divuint_PARM_2,r2
      0015F4 8C 3E            [24] 4647 	mov	(__divuint_PARM_2 + 1),r4
      0015F6 E5 3C            [12] 4648 	mov	a,_bp
      0015F8 24 0A            [12] 4649 	add	a,#0x0a
      0015FA F8               [12] 4650 	mov	r0,a
      0015FB 86 82            [24] 4651 	mov	dpl,@r0
      0015FD 08               [12] 4652 	inc	r0
      0015FE 86 83            [24] 4653 	mov	dph,@r0
      001600 C0 04            [24] 4654 	push	ar4
      001602 C0 02            [24] 4655 	push	ar2
      001604 12 1B 1C         [24] 4656 	lcall	__divuint
      001607 AE 82            [24] 4657 	mov	r6,dpl
      001609 AF 83            [24] 4658 	mov	r7,dph
      00160B D0 02            [24] 4659 	pop	ar2
      00160D D0 04            [24] 4660 	pop	ar4
      00160F 7D 00            [12] 4661 	mov	r5,#0x00
      001611 7B 00            [12] 4662 	mov	r3,#0x00
      001613 A8 3C            [24] 4663 	mov	r0,_bp
      001615 08               [12] 4664 	inc	r0
      001616 08               [12] 4665 	inc	r0
      001617 EE               [12] 4666 	mov	a,r6
      001618 26               [12] 4667 	add	a,@r0
      001619 FE               [12] 4668 	mov	r6,a
      00161A EF               [12] 4669 	mov	a,r7
      00161B 08               [12] 4670 	inc	r0
      00161C 36               [12] 4671 	addc	a,@r0
      00161D FF               [12] 4672 	mov	r7,a
      00161E ED               [12] 4673 	mov	a,r5
      00161F 08               [12] 4674 	inc	r0
      001620 36               [12] 4675 	addc	a,@r0
      001621 FD               [12] 4676 	mov	r5,a
      001622 EB               [12] 4677 	mov	a,r3
      001623 08               [12] 4678 	inc	r0
      001624 36               [12] 4679 	addc	a,@r0
      001625 FB               [12] 4680 	mov	r3,a
      001626 E5 3C            [12] 4681 	mov	a,_bp
      001628 24 0E            [12] 4682 	add	a,#0x0e
      00162A F8               [12] 4683 	mov	r0,a
      00162B A6 06            [24] 4684 	mov	@r0,ar6
      00162D 08               [12] 4685 	inc	r0
      00162E A6 07            [24] 4686 	mov	@r0,ar7
      001630 08               [12] 4687 	inc	r0
      001631 A6 05            [24] 4688 	mov	@r0,ar5
      001633 08               [12] 4689 	inc	r0
      001634 A6 03            [24] 4690 	mov	@r0,ar3
                                   4691 ;	fat.h:794: bytes_read_in_current_sector = bytes_read_in_current_cluster % __global_vbr.bps;
      001636 8A 3D            [24] 4692 	mov	__moduint_PARM_2,r2
      001638 8C 3E            [24] 4693 	mov	(__moduint_PARM_2 + 1),r4
      00163A E5 3C            [12] 4694 	mov	a,_bp
      00163C 24 0A            [12] 4695 	add	a,#0x0a
      00163E F8               [12] 4696 	mov	r0,a
      00163F 86 82            [24] 4697 	mov	dpl,@r0
      001641 08               [12] 4698 	inc	r0
      001642 86 83            [24] 4699 	mov	dph,@r0
      001644 12 1C 65         [24] 4700 	lcall	__moduint
      001647 C8               [12] 4701 	xch	a,r0
      001648 E5 3C            [12] 4702 	mov	a,_bp
      00164A 24 0C            [12] 4703 	add	a,#0x0c
      00164C C8               [12] 4704 	xch	a,r0
      00164D A6 82            [24] 4705 	mov	@r0,dpl
      00164F 08               [12] 4706 	inc	r0
      001650 A6 83            [24] 4707 	mov	@r0,dph
                                   4708 ;	fat.h:798: if(__global_rootEntry.bytes_read + nbytes > __global_rootEntry.size )
      001652 A8 3C            [24] 4709 	mov	r0,_bp
      001654 08               [12] 4710 	inc	r0
      001655 08               [12] 4711 	inc	r0
      001656 79 7E            [12] 4712 	mov	r1,#(___global_rootEntry + 0x0014)
      001658 E7               [12] 4713 	mov	a,@r1
      001659 F6               [12] 4714 	mov	@r0,a
      00165A 09               [12] 4715 	inc	r1
      00165B E7               [12] 4716 	mov	a,@r1
      00165C 08               [12] 4717 	inc	r0
      00165D F6               [12] 4718 	mov	@r0,a
      00165E 09               [12] 4719 	inc	r1
      00165F E7               [12] 4720 	mov	a,@r1
      001660 08               [12] 4721 	inc	r0
      001661 F6               [12] 4722 	mov	@r0,a
      001662 09               [12] 4723 	inc	r1
      001663 E7               [12] 4724 	mov	a,@r1
      001664 08               [12] 4725 	inc	r0
      001665 F6               [12] 4726 	mov	@r0,a
      001666 A8 3C            [24] 4727 	mov	r0,_bp
      001668 08               [12] 4728 	inc	r0
      001669 86 03            [24] 4729 	mov	ar3,@r0
      00166B 7D 00            [12] 4730 	mov	r5,#0x00
      00166D 7E 00            [12] 4731 	mov	r6,#0x00
      00166F 7F 00            [12] 4732 	mov	r7,#0x00
      001671 A8 3C            [24] 4733 	mov	r0,_bp
      001673 08               [12] 4734 	inc	r0
      001674 08               [12] 4735 	inc	r0
      001675 EB               [12] 4736 	mov	a,r3
      001676 26               [12] 4737 	add	a,@r0
      001677 FB               [12] 4738 	mov	r3,a
      001678 ED               [12] 4739 	mov	a,r5
      001679 08               [12] 4740 	inc	r0
      00167A 36               [12] 4741 	addc	a,@r0
      00167B FD               [12] 4742 	mov	r5,a
      00167C EE               [12] 4743 	mov	a,r6
      00167D 08               [12] 4744 	inc	r0
      00167E 36               [12] 4745 	addc	a,@r0
      00167F FE               [12] 4746 	mov	r6,a
      001680 EF               [12] 4747 	mov	a,r7
      001681 08               [12] 4748 	inc	r0
      001682 36               [12] 4749 	addc	a,@r0
      001683 FF               [12] 4750 	mov	r7,a
      001684 E5 3C            [12] 4751 	mov	a,_bp
      001686 24 06            [12] 4752 	add	a,#0x06
      001688 F8               [12] 4753 	mov	r0,a
      001689 79 78            [12] 4754 	mov	r1,#(___global_rootEntry + 0x000e)
      00168B E7               [12] 4755 	mov	a,@r1
      00168C F6               [12] 4756 	mov	@r0,a
      00168D 09               [12] 4757 	inc	r1
      00168E E7               [12] 4758 	mov	a,@r1
      00168F 08               [12] 4759 	inc	r0
      001690 F6               [12] 4760 	mov	@r0,a
      001691 09               [12] 4761 	inc	r1
      001692 E7               [12] 4762 	mov	a,@r1
      001693 08               [12] 4763 	inc	r0
      001694 F6               [12] 4764 	mov	@r0,a
      001695 09               [12] 4765 	inc	r1
      001696 E7               [12] 4766 	mov	a,@r1
      001697 08               [12] 4767 	inc	r0
      001698 F6               [12] 4768 	mov	@r0,a
      001699 E5 3C            [12] 4769 	mov	a,_bp
      00169B 24 06            [12] 4770 	add	a,#0x06
      00169D F8               [12] 4771 	mov	r0,a
      00169E C3               [12] 4772 	clr	c
      00169F E6               [12] 4773 	mov	a,@r0
      0016A0 9B               [12] 4774 	subb	a,r3
      0016A1 08               [12] 4775 	inc	r0
      0016A2 E6               [12] 4776 	mov	a,@r0
      0016A3 9D               [12] 4777 	subb	a,r5
      0016A4 08               [12] 4778 	inc	r0
      0016A5 E6               [12] 4779 	mov	a,@r0
      0016A6 9E               [12] 4780 	subb	a,r6
      0016A7 08               [12] 4781 	inc	r0
      0016A8 E6               [12] 4782 	mov	a,@r0
      0016A9 9F               [12] 4783 	subb	a,r7
      0016AA 50 14            [24] 4784 	jnc	00109$
                                   4785 ;	fat.h:800: nbytes = __global_rootEntry.size - __global_rootEntry.bytes_read;//;
      0016AC E5 3C            [12] 4786 	mov	a,_bp
      0016AE 24 06            [12] 4787 	add	a,#0x06
      0016B0 F8               [12] 4788 	mov	r0,a
      0016B1 86 07            [24] 4789 	mov	ar7,@r0
      0016B3 A8 3C            [24] 4790 	mov	r0,_bp
      0016B5 08               [12] 4791 	inc	r0
      0016B6 08               [12] 4792 	inc	r0
      0016B7 86 02            [24] 4793 	mov	ar2,@r0
      0016B9 A8 3C            [24] 4794 	mov	r0,_bp
      0016BB 08               [12] 4795 	inc	r0
      0016BC EF               [12] 4796 	mov	a,r7
      0016BD C3               [12] 4797 	clr	c
      0016BE 9A               [12] 4798 	subb	a,r2
      0016BF F6               [12] 4799 	mov	@r0,a
      0016C0                       4800 00109$:
                                   4801 ;	fat.h:819: __global_rootEntry.bytes_read += nbytes;
      0016C0 A8 3C            [24] 4802 	mov	r0,_bp
      0016C2 08               [12] 4803 	inc	r0
      0016C3 86 04            [24] 4804 	mov	ar4,@r0
      0016C5 7D 00            [12] 4805 	mov	r5,#0x00
      0016C7 7E 00            [12] 4806 	mov	r6,#0x00
      0016C9 7F 00            [12] 4807 	mov	r7,#0x00
      0016CB A8 3C            [24] 4808 	mov	r0,_bp
      0016CD 08               [12] 4809 	inc	r0
      0016CE 08               [12] 4810 	inc	r0
      0016CF EC               [12] 4811 	mov	a,r4
      0016D0 26               [12] 4812 	add	a,@r0
      0016D1 FC               [12] 4813 	mov	r4,a
      0016D2 ED               [12] 4814 	mov	a,r5
      0016D3 08               [12] 4815 	inc	r0
      0016D4 36               [12] 4816 	addc	a,@r0
      0016D5 FD               [12] 4817 	mov	r5,a
      0016D6 EE               [12] 4818 	mov	a,r6
      0016D7 08               [12] 4819 	inc	r0
      0016D8 36               [12] 4820 	addc	a,@r0
      0016D9 FE               [12] 4821 	mov	r6,a
      0016DA EF               [12] 4822 	mov	a,r7
      0016DB 08               [12] 4823 	inc	r0
      0016DC 36               [12] 4824 	addc	a,@r0
      0016DD FF               [12] 4825 	mov	r7,a
      0016DE 78 7E            [12] 4826 	mov	r0,#(___global_rootEntry + 0x0014)
      0016E0 A6 04            [24] 4827 	mov	@r0,ar4
      0016E2 08               [12] 4828 	inc	r0
      0016E3 A6 05            [24] 4829 	mov	@r0,ar5
      0016E5 08               [12] 4830 	inc	r0
      0016E6 A6 06            [24] 4831 	mov	@r0,ar6
      0016E8 08               [12] 4832 	inc	r0
      0016E9 A6 07            [24] 4833 	mov	@r0,ar7
                                   4834 ;	fat.h:822: SDread(current_sector,bytes_read_in_current_sector,nbytes,dst);
      0016EB A8 3C            [24] 4835 	mov	r0,_bp
      0016ED 08               [12] 4836 	inc	r0
      0016EE 86 06            [24] 4837 	mov	ar6,@r0
      0016F0 7F 00            [12] 4838 	mov	r7,#0x00
      0016F2 E5 3C            [12] 4839 	mov	a,_bp
      0016F4 24 FB            [12] 4840 	add	a,#0xfb
      0016F6 F8               [12] 4841 	mov	r0,a
      0016F7 E6               [12] 4842 	mov	a,@r0
      0016F8 C0 E0            [24] 4843 	push	acc
      0016FA 08               [12] 4844 	inc	r0
      0016FB E6               [12] 4845 	mov	a,@r0
      0016FC C0 E0            [24] 4846 	push	acc
      0016FE 08               [12] 4847 	inc	r0
      0016FF E6               [12] 4848 	mov	a,@r0
      001700 C0 E0            [24] 4849 	push	acc
      001702 C0 06            [24] 4850 	push	ar6
      001704 C0 07            [24] 4851 	push	ar7
      001706 E5 3C            [12] 4852 	mov	a,_bp
      001708 24 0C            [12] 4853 	add	a,#0x0c
      00170A F8               [12] 4854 	mov	r0,a
      00170B E6               [12] 4855 	mov	a,@r0
      00170C C0 E0            [24] 4856 	push	acc
      00170E 08               [12] 4857 	inc	r0
      00170F E6               [12] 4858 	mov	a,@r0
      001710 C0 E0            [24] 4859 	push	acc
      001712 E5 3C            [12] 4860 	mov	a,_bp
      001714 24 0E            [12] 4861 	add	a,#0x0e
      001716 F8               [12] 4862 	mov	r0,a
      001717 86 82            [24] 4863 	mov	dpl,@r0
      001719 08               [12] 4864 	inc	r0
      00171A 86 83            [24] 4865 	mov	dph,@r0
      00171C 08               [12] 4866 	inc	r0
      00171D 86 F0            [24] 4867 	mov	b,@r0
      00171F 08               [12] 4868 	inc	r0
      001720 E6               [12] 4869 	mov	a,@r0
      001721 12 07 7A         [24] 4870 	lcall	_SDread
      001724 E5 81            [12] 4871 	mov	a,sp
      001726 24 F9            [12] 4872 	add	a,#0xf9
      001728 F5 81            [12] 4873 	mov	sp,a
                                   4874 ;	fat.h:827: return nbytes;
      00172A A8 3C            [24] 4875 	mov	r0,_bp
      00172C 08               [12] 4876 	inc	r0
      00172D 86 82            [24] 4877 	mov	dpl,@r0
      00172F                       4878 00113$:
                                   4879 ;	fat.h:829: }
      00172F 85 3C 81         [24] 4880 	mov	sp,_bp
      001732 D0 3C            [24] 4881 	pop	_bp
      001734 22               [24] 4882 	ret
                                   4883 ;------------------------------------------------------------
                                   4884 ;Allocation info for local variables in function 'FAT16_FILE_CAT'
                                   4885 ;------------------------------------------------------------
                                   4886 ;filename                  Allocated to registers r5 r6 r7 
                                   4887 ;temp                      Allocated to stack - _bp +1
                                   4888 ;resp                      Allocated to registers r6 
                                   4889 ;i                         Allocated to registers r5 
                                   4890 ;------------------------------------------------------------
                                   4891 ;	fat.h:831: void FAT16_FILE_CAT(uint8_t *filename) __reentrant
                                   4892 ;	-----------------------------------------
                                   4893 ;	 function FAT16_FILE_CAT
                                   4894 ;	-----------------------------------------
      001735                       4895 _FAT16_FILE_CAT:
      001735 C0 3C            [24] 4896 	push	_bp
      001737 E5 81            [12] 4897 	mov	a,sp
      001739 F5 3C            [12] 4898 	mov	_bp,a
      00173B 24 08            [12] 4899 	add	a,#0x08
      00173D F5 81            [12] 4900 	mov	sp,a
                                   4901 ;	fat.h:838: if(FAT16_FILE_OPEN(filename))
      00173F 12 13 4F         [24] 4902 	lcall	_FAT16_FILE_OPEN
      001742 E5 82            [12] 4903 	mov	a,dpl
      001744 60 0B            [24] 4904 	jz	00115$
                                   4905 ;	fat.h:840: UartPrint("FILE NOT FOUND\n.");
      001746 90 1E 56         [24] 4906 	mov	dptr,#___str_8
      001749 75 F0 80         [24] 4907 	mov	b,#0x80
      00174C 12 01 84         [24] 4908 	lcall	_UartPrint
                                   4909 ;	fat.h:841: return;
                                   4910 ;	fat.h:844: do
      00174F 80 42            [24] 4911 	sjmp	00110$
      001751                       4912 00115$:
      001751 AF 3C            [24] 4913 	mov	r7,_bp
      001753 0F               [12] 4914 	inc	r7
      001754                       4915 00104$:
                                   4916 ;	fat.h:846: resp=FAT16_FILE_READ(FILE_CAT_BUFFER_SIZE,temp);
      001754 8F 04            [24] 4917 	mov	ar4,r7
      001756 7D 00            [12] 4918 	mov	r5,#0x00
      001758 7E 40            [12] 4919 	mov	r6,#0x40
      00175A C0 07            [24] 4920 	push	ar7
      00175C C0 04            [24] 4921 	push	ar4
      00175E C0 05            [24] 4922 	push	ar5
      001760 C0 06            [24] 4923 	push	ar6
      001762 75 82 08         [24] 4924 	mov	dpl,#0x08
      001765 12 14 CC         [24] 4925 	lcall	_FAT16_FILE_READ
      001768 AE 82            [24] 4926 	mov	r6,dpl
      00176A 15 81            [12] 4927 	dec	sp
      00176C 15 81            [12] 4928 	dec	sp
      00176E 15 81            [12] 4929 	dec	sp
      001770 D0 07            [24] 4930 	pop	ar7
                                   4931 ;	fat.h:847: for(uint8_t i=0;i<resp;i++) UartWrite(temp[i]);
      001772 7D 00            [12] 4932 	mov	r5,#0x00
      001774                       4933 00108$:
      001774 C3               [12] 4934 	clr	c
      001775 ED               [12] 4935 	mov	a,r5
      001776 9E               [12] 4936 	subb	a,r6
      001777 50 17            [24] 4937 	jnc	00105$
      001779 ED               [12] 4938 	mov	a,r5
      00177A 2F               [12] 4939 	add	a,r7
      00177B F9               [12] 4940 	mov	r1,a
      00177C 87 82            [24] 4941 	mov	dpl,@r1
      00177E C0 07            [24] 4942 	push	ar7
      001780 C0 06            [24] 4943 	push	ar6
      001782 C0 05            [24] 4944 	push	ar5
      001784 12 00 FE         [24] 4945 	lcall	_UartWrite
      001787 D0 05            [24] 4946 	pop	ar5
      001789 D0 06            [24] 4947 	pop	ar6
      00178B D0 07            [24] 4948 	pop	ar7
      00178D 0D               [12] 4949 	inc	r5
      00178E 80 E4            [24] 4950 	sjmp	00108$
      001790                       4951 00105$:
                                   4952 ;	fat.h:850: } while (resp!=0);
      001790 EE               [12] 4953 	mov	a,r6
      001791 70 C1            [24] 4954 	jnz	00104$
                                   4955 ;	fat.h:852: return;
      001793                       4956 00110$:
                                   4957 ;	fat.h:854: }
      001793 85 3C 81         [24] 4958 	mov	sp,_bp
      001796 D0 3C            [24] 4959 	pop	_bp
      001798 22               [24] 4960 	ret
                                   4961 ;------------------------------------------------------------
                                   4962 ;Allocation info for local variables in function 'delay_ms'
                                   4963 ;------------------------------------------------------------
                                   4964 ;millisec                  Allocated to registers r6 r7 
                                   4965 ;i                         Allocated to registers r4 r5 
                                   4966 ;j                         Allocated to registers r3 
                                   4967 ;------------------------------------------------------------
                                   4968 ;	serialloader.h:16: void delay_ms(unsigned int millisec)
                                   4969 ;	-----------------------------------------
                                   4970 ;	 function delay_ms
                                   4971 ;	-----------------------------------------
      001799                       4972 _delay_ms:
      001799 AE 82            [24] 4973 	mov	r6,dpl
      00179B AF 83            [24] 4974 	mov	r7,dph
                                   4975 ;	serialloader.h:18: for(unsigned int i=0;i<millisec;i++)for(unsigned char j=0;j<255;j++); //wait millisec * 1ms
      00179D 7C 00            [12] 4976 	mov	r4,#0x00
      00179F 7D 00            [12] 4977 	mov	r5,#0x00
      0017A1                       4978 00107$:
      0017A1 C3               [12] 4979 	clr	c
      0017A2 EC               [12] 4980 	mov	a,r4
      0017A3 9E               [12] 4981 	subb	a,r6
      0017A4 ED               [12] 4982 	mov	a,r5
      0017A5 9F               [12] 4983 	subb	a,r7
      0017A6 50 11            [24] 4984 	jnc	00109$
      0017A8 7B 00            [12] 4985 	mov	r3,#0x00
      0017AA                       4986 00104$:
      0017AA BB FF 00         [24] 4987 	cjne	r3,#0xff,00130$
      0017AD                       4988 00130$:
      0017AD 50 03            [24] 4989 	jnc	00108$
      0017AF 0B               [12] 4990 	inc	r3
      0017B0 80 F8            [24] 4991 	sjmp	00104$
      0017B2                       4992 00108$:
      0017B2 0C               [12] 4993 	inc	r4
      0017B3 BC 00 EB         [24] 4994 	cjne	r4,#0x00,00107$
      0017B6 0D               [12] 4995 	inc	r5
      0017B7 80 E8            [24] 4996 	sjmp	00107$
      0017B9                       4997 00109$:
                                   4998 ;	serialloader.h:19: }
      0017B9 22               [24] 4999 	ret
                                   5000 ;------------------------------------------------------------
                                   5001 ;Allocation info for local variables in function 'SL_disable_write_protection'
                                   5002 ;------------------------------------------------------------
                                   5003 ;xram_addr                 Allocated to registers 
                                   5004 ;------------------------------------------------------------
                                   5005 ;	serialloader.h:21: void SL_disable_write_protection()
                                   5006 ;	-----------------------------------------
                                   5007 ;	 function SL_disable_write_protection
                                   5008 ;	-----------------------------------------
      0017BA                       5009 _SL_disable_write_protection:
                                   5010 ;	serialloader.h:26: *(xram_addr) = 0xAA;
      0017BA 90 15 55         [24] 5011 	mov	dptr,#0x1555
      0017BD 74 AA            [12] 5012 	mov	a,#0xaa
      0017BF F0               [24] 5013 	movx	@dptr,a
                                   5014 ;	serialloader.h:28: *(xram_addr) = 0x55;
      0017C0 90 0A AA         [24] 5015 	mov	dptr,#0x0aaa
      0017C3 F4               [12] 5016 	cpl	a
      0017C4 F0               [24] 5017 	movx	@dptr,a
                                   5018 ;	serialloader.h:30: *(xram_addr) = 0x80;
                                   5019 ;	serialloader.h:34: *(xram_addr) = 0xAA;
      0017C5 90 15 55         [24] 5020 	mov	dptr,#0x1555
      0017C8 74 80            [12] 5021 	mov	a,#0x80
      0017CA F0               [24] 5022 	movx	@dptr,a
      0017CB 74 AA            [12] 5023 	mov	a,#0xaa
      0017CD F0               [24] 5024 	movx	@dptr,a
                                   5025 ;	serialloader.h:36: *(xram_addr) = 0x55;
      0017CE 90 0A AA         [24] 5026 	mov	dptr,#0x0aaa
      0017D1 F4               [12] 5027 	cpl	a
      0017D2 F0               [24] 5028 	movx	@dptr,a
                                   5029 ;	serialloader.h:38: *(xram_addr) = 0x20;
      0017D3 90 15 55         [24] 5030 	mov	dptr,#0x1555
      0017D6 74 20            [12] 5031 	mov	a,#0x20
      0017D8 F0               [24] 5032 	movx	@dptr,a
                                   5033 ;	serialloader.h:40: UartWrite('D'); //ack
      0017D9 75 82 44         [24] 5034 	mov	dpl,#0x44
      0017DC 12 00 FE         [24] 5035 	lcall	_UartWrite
                                   5036 ;	serialloader.h:42: EEPROM_WRITE_PROTECTION=0; //change flag
      0017DF 75 2B 00         [24] 5037 	mov	_EEPROM_WRITE_PROTECTION,#0x00
                                   5038 ;	serialloader.h:43: }
      0017E2 22               [24] 5039 	ret
                                   5040 ;------------------------------------------------------------
                                   5041 ;Allocation info for local variables in function 'SL_enable_write_protection'
                                   5042 ;------------------------------------------------------------
                                   5043 ;	serialloader.h:45: void SL_enable_write_protection()
                                   5044 ;	-----------------------------------------
                                   5045 ;	 function SL_enable_write_protection
                                   5046 ;	-----------------------------------------
      0017E3                       5047 _SL_enable_write_protection:
                                   5048 ;	serialloader.h:47: EEPROM_WRITE_PROTECTION=1; //change flag
      0017E3 75 2B 01         [24] 5049 	mov	_EEPROM_WRITE_PROTECTION,#0x01
                                   5050 ;	serialloader.h:48: UartWrite('E'); 
      0017E6 75 82 45         [24] 5051 	mov	dpl,#0x45
                                   5052 ;	serialloader.h:49: }
      0017E9 02 00 FE         [24] 5053 	ljmp	_UartWrite
                                   5054 ;------------------------------------------------------------
                                   5055 ;Allocation info for local variables in function 'SL_write'
                                   5056 ;------------------------------------------------------------
                                   5057 ;data                      Allocated to registers r5 
                                   5058 ;addr                      Allocated to registers r7 r6 
                                   5059 ;xram_addr                 Allocated to registers 
                                   5060 ;------------------------------------------------------------
                                   5061 ;	serialloader.h:51: void SL_write()
                                   5062 ;	-----------------------------------------
                                   5063 ;	 function SL_write
                                   5064 ;	-----------------------------------------
      0017EC                       5065 _SL_write:
                                   5066 ;	serialloader.h:57: while(UartReadReady()==0); //wait till we rcv data
      0017EC                       5067 00101$:
      0017EC 12 00 EA         [24] 5068 	lcall	_UartReadReady
      0017EF E5 82            [12] 5069 	mov	a,dpl
      0017F1 60 F9            [24] 5070 	jz	00101$
                                   5071 ;	serialloader.h:60: addr = UartRead(); //msb
      0017F3 12 00 F5         [24] 5072 	lcall	_UartRead
                                   5073 ;	serialloader.h:61: addr = addr << 8;
      0017F6 AE 82            [24] 5074 	mov	r6,dpl
      0017F8 7F 00            [12] 5075 	mov	r7,#0x00
                                   5076 ;	serialloader.h:62: addr |= UartRead(); //lsb
      0017FA C0 07            [24] 5077 	push	ar7
      0017FC C0 06            [24] 5078 	push	ar6
      0017FE 12 00 F5         [24] 5079 	lcall	_UartRead
      001801 AD 82            [24] 5080 	mov	r5,dpl
      001803 D0 06            [24] 5081 	pop	ar6
      001805 D0 07            [24] 5082 	pop	ar7
      001807 7C 00            [12] 5083 	mov	r4,#0x00
      001809 ED               [12] 5084 	mov	a,r5
      00180A 42 07            [12] 5085 	orl	ar7,a
      00180C EC               [12] 5086 	mov	a,r4
      00180D 42 06            [12] 5087 	orl	ar6,a
                                   5088 ;	serialloader.h:64: data = UartRead(); //read data
      00180F C0 07            [24] 5089 	push	ar7
      001811 C0 06            [24] 5090 	push	ar6
      001813 12 00 F5         [24] 5091 	lcall	_UartRead
      001816 AD 82            [24] 5092 	mov	r5,dpl
      001818 D0 06            [24] 5093 	pop	ar6
      00181A D0 07            [24] 5094 	pop	ar7
                                   5095 ;	serialloader.h:66: if(EEPROM_WRITE_PROTECTION)
      00181C E5 2B            [12] 5096 	mov	a,_EEPROM_WRITE_PROTECTION
      00181E 60 11            [24] 5097 	jz	00105$
                                   5098 ;	serialloader.h:70: *(xram_addr) = 0xAA;
      001820 90 15 55         [24] 5099 	mov	dptr,#0x1555
      001823 74 AA            [12] 5100 	mov	a,#0xaa
      001825 F0               [24] 5101 	movx	@dptr,a
                                   5102 ;	serialloader.h:72: *(xram_addr) = 0x55;
      001826 90 0A AA         [24] 5103 	mov	dptr,#0x0aaa
      001829 F4               [12] 5104 	cpl	a
      00182A F0               [24] 5105 	movx	@dptr,a
                                   5106 ;	serialloader.h:74: *(xram_addr) = 0xA0;
      00182B 90 15 55         [24] 5107 	mov	dptr,#0x1555
      00182E 74 A0            [12] 5108 	mov	a,#0xa0
      001830 F0               [24] 5109 	movx	@dptr,a
      001831                       5110 00105$:
                                   5111 ;	serialloader.h:77: xram_addr = (__xdata unsigned char*) addr;
      001831 8F 82            [24] 5112 	mov	dpl,r7
      001833 8E 83            [24] 5113 	mov	dph,r6
                                   5114 ;	serialloader.h:79: *(xram_addr) = data; //write to xram
      001835 ED               [12] 5115 	mov	a,r5
      001836 F0               [24] 5116 	movx	@dptr,a
                                   5117 ;	serialloader.h:81: UartWrite('W'); //ack
      001837 75 82 57         [24] 5118 	mov	dpl,#0x57
                                   5119 ;	serialloader.h:83: }
      00183A 02 00 FE         [24] 5120 	ljmp	_UartWrite
                                   5121 ;------------------------------------------------------------
                                   5122 ;Allocation info for local variables in function 'SL_read'
                                   5123 ;------------------------------------------------------------
                                   5124 ;data                      Allocated to registers r7 
                                   5125 ;addr                      Allocated to registers r7 r6 
                                   5126 ;xram_addr                 Allocated to registers 
                                   5127 ;------------------------------------------------------------
                                   5128 ;	serialloader.h:85: void SL_read()
                                   5129 ;	-----------------------------------------
                                   5130 ;	 function SL_read
                                   5131 ;	-----------------------------------------
      00183D                       5132 _SL_read:
                                   5133 ;	serialloader.h:91: while(UartReadReady()==0); //wait till we rcv data
      00183D                       5134 00101$:
      00183D 12 00 EA         [24] 5135 	lcall	_UartReadReady
      001840 E5 82            [12] 5136 	mov	a,dpl
      001842 60 F9            [24] 5137 	jz	00101$
                                   5138 ;	serialloader.h:95: addr = UartRead(); //msb
      001844 12 00 F5         [24] 5139 	lcall	_UartRead
                                   5140 ;	serialloader.h:96: addr = addr << 8;
      001847 AE 82            [24] 5141 	mov	r6,dpl
      001849 7F 00            [12] 5142 	mov	r7,#0x00
                                   5143 ;	serialloader.h:97: addr |= UartRead(); //lsb
      00184B C0 07            [24] 5144 	push	ar7
      00184D C0 06            [24] 5145 	push	ar6
      00184F 12 00 F5         [24] 5146 	lcall	_UartRead
      001852 AD 82            [24] 5147 	mov	r5,dpl
      001854 D0 06            [24] 5148 	pop	ar6
      001856 D0 07            [24] 5149 	pop	ar7
      001858 7C 00            [12] 5150 	mov	r4,#0x00
      00185A ED               [12] 5151 	mov	a,r5
      00185B 42 07            [12] 5152 	orl	ar7,a
      00185D EC               [12] 5153 	mov	a,r4
      00185E 42 06            [12] 5154 	orl	ar6,a
                                   5155 ;	serialloader.h:99: xram_addr = (__xdata unsigned char*) addr;
      001860 8F 82            [24] 5156 	mov	dpl,r7
      001862 8E 83            [24] 5157 	mov	dph,r6
                                   5158 ;	serialloader.h:101: data = *(xram_addr); //read from xram
      001864 E0               [24] 5159 	movx	a,@dptr
                                   5160 ;	serialloader.h:103: UartWrite(data);
      001865 F5 82            [12] 5161 	mov	dpl,a
                                   5162 ;	serialloader.h:105: }
      001867 02 00 FE         [24] 5163 	ljmp	_UartWrite
                                   5164 ;------------------------------------------------------------
                                   5165 ;Allocation info for local variables in function 'SL_getcmd'
                                   5166 ;------------------------------------------------------------
                                   5167 ;cmd                       Allocated to registers r7 
                                   5168 ;------------------------------------------------------------
                                   5169 ;	serialloader.h:107: void SL_getcmd()
                                   5170 ;	-----------------------------------------
                                   5171 ;	 function SL_getcmd
                                   5172 ;	-----------------------------------------
      00186A                       5173 _SL_getcmd:
                                   5174 ;	serialloader.h:110: while(UartReadReady()) UartRead(); //flush 
      00186A                       5175 00101$:
      00186A 12 00 EA         [24] 5176 	lcall	_UartReadReady
      00186D E5 82            [12] 5177 	mov	a,dpl
      00186F 60 05            [24] 5178 	jz	00104$
      001871 12 00 F5         [24] 5179 	lcall	_UartRead
                                   5180 ;	serialloader.h:112: while(UartReadReady()==0); //wait till we rcv data 
      001874 80 F4            [24] 5181 	sjmp	00101$
      001876                       5182 00104$:
      001876 12 00 EA         [24] 5183 	lcall	_UartReadReady
      001879 E5 82            [12] 5184 	mov	a,dpl
      00187B 60 F9            [24] 5185 	jz	00104$
                                   5186 ;	serialloader.h:115: cmd = UartRead(); //read
      00187D 12 00 F5         [24] 5187 	lcall	_UartRead
      001880 AF 82            [24] 5188 	mov	r7,dpl
                                   5189 ;	serialloader.h:117: switch(cmd)
      001882 BF 44 02         [24] 5190 	cjne	r7,#0x44,00154$
      001885 80 23            [24] 5191 	sjmp	00110$
      001887                       5192 00154$:
      001887 BF 45 02         [24] 5193 	cjne	r7,#0x45,00155$
      00188A 80 21            [24] 5194 	sjmp	00111$
      00188C                       5195 00155$:
      00188C BF 52 02         [24] 5196 	cjne	r7,#0x52,00156$
      00188F 80 13            [24] 5197 	sjmp	00108$
      001891                       5198 00156$:
      001891 BF 56 02         [24] 5199 	cjne	r7,#0x56,00157$
      001894 80 05            [24] 5200 	sjmp	00107$
      001896                       5201 00157$:
                                   5202 ;	serialloader.h:119: case 'V':
      001896 BF 57 17         [24] 5203 	cjne	r7,#0x57,00114$
      001899 80 0C            [24] 5204 	sjmp	00109$
      00189B                       5205 00107$:
                                   5206 ;	serialloader.h:120: UartPrint("ISA_SERIAL_LOADER_V0.1:8052\n");
      00189B 90 1E 67         [24] 5207 	mov	dptr,#___str_9
      00189E 75 F0 80         [24] 5208 	mov	b,#0x80
                                   5209 ;	serialloader.h:121: break;
                                   5210 ;	serialloader.h:122: case 'R':
      0018A1 02 01 84         [24] 5211 	ljmp	_UartPrint
      0018A4                       5212 00108$:
                                   5213 ;	serialloader.h:123: SL_read();
                                   5214 ;	serialloader.h:124: break;
                                   5215 ;	serialloader.h:125: case 'W':
      0018A4 02 18 3D         [24] 5216 	ljmp	_SL_read
      0018A7                       5217 00109$:
                                   5218 ;	serialloader.h:126: SL_write();
                                   5219 ;	serialloader.h:127: break;
                                   5220 ;	serialloader.h:128: case 'D':
      0018A7 02 17 EC         [24] 5221 	ljmp	_SL_write
      0018AA                       5222 00110$:
                                   5223 ;	serialloader.h:129: SL_disable_write_protection();
                                   5224 ;	serialloader.h:130: break;
                                   5225 ;	serialloader.h:131: case 'E':
      0018AA 02 17 BA         [24] 5226 	ljmp	_SL_disable_write_protection
      0018AD                       5227 00111$:
                                   5228 ;	serialloader.h:132: SL_enable_write_protection();
                                   5229 ;	serialloader.h:136: }
                                   5230 ;	serialloader.h:137: }
      0018AD 02 17 E3         [24] 5231 	ljmp	_SL_enable_write_protection
      0018B0                       5232 00114$:
      0018B0 22               [24] 5233 	ret
                                   5234 ;------------------------------------------------------------
                                   5235 ;Allocation info for local variables in function 'delay'
                                   5236 ;------------------------------------------------------------
                                   5237 ;i                         Allocated to registers r7 
                                   5238 ;j                         Allocated to registers r6 
                                   5239 ;------------------------------------------------------------
                                   5240 ;	main.c:20: void delay(void) __reentrant
                                   5241 ;	-----------------------------------------
                                   5242 ;	 function delay
                                   5243 ;	-----------------------------------------
      0018B1                       5244 _delay:
                                   5245 ;	main.c:23: for(i=0;i<127;i++)
      0018B1 7F 00            [12] 5246 	mov	r7,#0x00
      0018B3                       5247 00106$:
                                   5248 ;	main.c:24: for(j=0;j<127;j++);
      0018B3 7E 7F            [12] 5249 	mov	r6,#0x7f
      0018B5                       5250 00105$:
      0018B5 EE               [12] 5251 	mov	a,r6
      0018B6 14               [12] 5252 	dec	a
      0018B7 FE               [12] 5253 	mov	r6,a
      0018B8 70 FB            [24] 5254 	jnz	00105$
                                   5255 ;	main.c:23: for(i=0;i<127;i++)
      0018BA 0F               [12] 5256 	inc	r7
      0018BB BF 7F 00         [24] 5257 	cjne	r7,#0x7f,00124$
      0018BE                       5258 00124$:
      0018BE 40 F3            [24] 5259 	jc	00106$
                                   5260 ;	main.c:25: }
      0018C0 22               [24] 5261 	ret
                                   5262 ;------------------------------------------------------------
                                   5263 ;Allocation info for local variables in function 'SelectFAT16PartitionPrompt'
                                   5264 ;------------------------------------------------------------
                                   5265 ;_resp                     Allocated to registers r6 
                                   5266 ;_temp                     Allocated to registers r5 
                                   5267 ;i                         Allocated to registers r5 
                                   5268 ;i                         Allocated to registers r5 
                                   5269 ;------------------------------------------------------------
                                   5270 ;	main.c:27: void SelectFAT16PartitionPrompt() __reentrant
                                   5271 ;	-----------------------------------------
                                   5272 ;	 function SelectFAT16PartitionPrompt
                                   5273 ;	-----------------------------------------
      0018C1                       5274 _SelectFAT16PartitionPrompt:
                                   5275 ;	main.c:32: if(MBR_CHECK__SIGNATURE())
      0018C1 12 0C 4A         [24] 5276 	lcall	_MBR_CHECK__SIGNATURE
      0018C4 E5 82            [12] 5277 	mov	a,dpl
      0018C6 60 09            [24] 5278 	jz	00102$
                                   5279 ;	main.c:35: UartPrint("ERROR:NO MBR FOUND\n");
      0018C8 90 1E 84         [24] 5280 	mov	dptr,#___str_11
      0018CB 75 F0 80         [24] 5281 	mov	b,#0x80
      0018CE 12 01 84         [24] 5282 	lcall	_UartPrint
      0018D1                       5283 00102$:
                                   5284 ;	main.c:39: _resp=MBR_DETECT_FAT16();
      0018D1 12 0D 28         [24] 5285 	lcall	_MBR_DETECT_FAT16
                                   5286 ;	main.c:40: if(_resp)
      0018D4 E5 82            [12] 5287 	mov	a,dpl
      0018D6 FF               [12] 5288 	mov	r7,a
      0018D7 FE               [12] 5289 	mov	r6,a
      0018D8 70 03            [24] 5290 	jnz	00201$
      0018DA 02 1A 47         [24] 5291 	ljmp	00129$
      0018DD                       5292 00201$:
                                   5293 ;	main.c:44: if( (_resp & (_resp-1)) == 0)
      0018DD 7F 00            [12] 5294 	mov	r7,#0x00
      0018DF EE               [12] 5295 	mov	a,r6
      0018E0 24 FF            [12] 5296 	add	a,#0xff
      0018E2 FC               [12] 5297 	mov	r4,a
      0018E3 EF               [12] 5298 	mov	a,r7
      0018E4 34 FF            [12] 5299 	addc	a,#0xff
      0018E6 FD               [12] 5300 	mov	r5,a
      0018E7 EE               [12] 5301 	mov	a,r6
      0018E8 52 04            [12] 5302 	anl	ar4,a
      0018EA EF               [12] 5303 	mov	a,r7
      0018EB 52 05            [12] 5304 	anl	ar5,a
      0018ED EC               [12] 5305 	mov	a,r4
      0018EE 4D               [12] 5306 	orl	a,r5
                                   5307 ;	main.c:46: for(uint8_t i=0;i<4;i++)
      0018EF 70 68            [24] 5308 	jnz	00149$
      0018F1 FD               [12] 5309 	mov	r5,a
      0018F2 FC               [12] 5310 	mov	r4,a
      0018F3                       5311 00132$:
      0018F3 BC 04 00         [24] 5312 	cjne	r4,#0x04,00203$
      0018F6                       5313 00203$:
      0018F6 40 01            [24] 5314 	jc	00204$
      0018F8 22               [24] 5315 	ret
      0018F9                       5316 00204$:
                                   5317 ;	main.c:48: if(_resp & 1<<i) 
      0018F9 8C F0            [24] 5318 	mov	b,r4
      0018FB 05 F0            [12] 5319 	inc	b
      0018FD 7A 01            [12] 5320 	mov	r2,#0x01
      0018FF 7B 00            [12] 5321 	mov	r3,#0x00
      001901 80 06            [24] 5322 	sjmp	00206$
      001903                       5323 00205$:
      001903 EA               [12] 5324 	mov	a,r2
      001904 2A               [12] 5325 	add	a,r2
      001905 FA               [12] 5326 	mov	r2,a
      001906 EB               [12] 5327 	mov	a,r3
      001907 33               [12] 5328 	rlc	a
      001908 FB               [12] 5329 	mov	r3,a
      001909                       5330 00206$:
      001909 D5 F0 F7         [24] 5331 	djnz	b,00205$
      00190C EE               [12] 5332 	mov	a,r6
      00190D 52 02            [12] 5333 	anl	ar2,a
      00190F EF               [12] 5334 	mov	a,r7
      001910 52 03            [12] 5335 	anl	ar3,a
      001912 EA               [12] 5336 	mov	a,r2
      001913 4B               [12] 5337 	orl	a,r3
      001914 60 3E            [24] 5338 	jz	00133$
                                   5339 ;	main.c:50: VBR_MOUNT_VBR(i);
      001916 8D 82            [24] 5340 	mov	dpl,r5
      001918 C0 05            [24] 5341 	push	ar5
      00191A 12 0E 83         [24] 5342 	lcall	_VBR_MOUNT_VBR
                                   5343 ;	main.c:51: UartPrint("Partition Mounted:");UartWriteNumber(i,HEX);
      00191D 90 1E 98         [24] 5344 	mov	dptr,#___str_12
      001920 75 F0 80         [24] 5345 	mov	b,#0x80
      001923 12 01 84         [24] 5346 	lcall	_UartPrint
      001926 D0 05            [24] 5347 	pop	ar5
      001928 C0 05            [24] 5348 	push	ar5
      00192A E4               [12] 5349 	clr	a
      00192B C0 E0            [24] 5350 	push	acc
      00192D 8D 82            [24] 5351 	mov	dpl,r5
      00192F 12 01 B6         [24] 5352 	lcall	_UartWriteNumber
      001932 15 81            [12] 5353 	dec	sp
      001934 D0 05            [24] 5354 	pop	ar5
                                   5355 ;	main.c:52: if(VBR_FAT16_CHECK_COMPATIBILITY(i))
      001936 8D 82            [24] 5356 	mov	dpl,r5
      001938 12 10 9F         [24] 5357 	lcall	_VBR_FAT16_CHECK_COMPATIBILITY
      00193B E5 82            [12] 5358 	mov	a,dpl
      00193D 70 01            [24] 5359 	jnz	00208$
      00193F 22               [24] 5360 	ret
      001940                       5361 00208$:
                                   5362 ;	main.c:54: UartPrint("Incompatible FAT16\n");
      001940 90 1E AB         [24] 5363 	mov	dptr,#___str_13
      001943 75 F0 80         [24] 5364 	mov	b,#0x80
      001946 12 01 84         [24] 5365 	lcall	_UartPrint
                                   5366 ;	main.c:55: UartPrint(HALTING_MSG); while(1);
      001949 90 1B 11         [24] 5367 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_209
      00194C 75 F0 80         [24] 5368 	mov	b,#0x80
      00194F 12 01 84         [24] 5369 	lcall	_UartPrint
      001952                       5370 00104$:
                                   5371 ;	main.c:57: break; //break from for loop
      001952 80 FE            [24] 5372 	sjmp	00104$
      001954                       5373 00133$:
                                   5374 ;	main.c:46: for(uint8_t i=0;i<4;i++)
      001954 0C               [12] 5375 	inc	r4
      001955 8C 05            [24] 5376 	mov	ar5,r4
                                   5377 ;	main.c:63: for(uint8_t i=0;i<4;i++)
      001957 80 9A            [24] 5378 	sjmp	00132$
      001959                       5379 00149$:
      001959 7D 00            [12] 5380 	mov	r5,#0x00
      00195B                       5381 00135$:
      00195B BD 04 00         [24] 5382 	cjne	r5,#0x04,00209$
      00195E                       5383 00209$:
      00195E 50 75            [24] 5384 	jnc	00114$
                                   5385 ;	main.c:65: UartPrint("Partition-");UartWriteNumber(i,HEX);UartWrite('> ');
      001960 90 1E BF         [24] 5386 	mov	dptr,#___str_14
      001963 75 F0 80         [24] 5387 	mov	b,#0x80
      001966 C0 07            [24] 5388 	push	ar7
      001968 C0 06            [24] 5389 	push	ar6
      00196A C0 05            [24] 5390 	push	ar5
      00196C 12 01 84         [24] 5391 	lcall	_UartPrint
      00196F D0 05            [24] 5392 	pop	ar5
      001971 C0 05            [24] 5393 	push	ar5
      001973 E4               [12] 5394 	clr	a
      001974 C0 E0            [24] 5395 	push	acc
      001976 8D 82            [24] 5396 	mov	dpl,r5
      001978 12 01 B6         [24] 5397 	lcall	_UartWriteNumber
      00197B 15 81            [12] 5398 	dec	sp
      00197D 75 82 3E         [24] 5399 	mov	dpl,#0x3e
      001980 12 00 FE         [24] 5400 	lcall	_UartWrite
      001983 D0 05            [24] 5401 	pop	ar5
      001985 D0 06            [24] 5402 	pop	ar6
      001987 D0 07            [24] 5403 	pop	ar7
                                   5404 ;	main.c:66: if(_resp & 1<<i) UartPrint("FAT16\n");
      001989 8D F0            [24] 5405 	mov	b,r5
      00198B 05 F0            [12] 5406 	inc	b
      00198D 7B 01            [12] 5407 	mov	r3,#0x01
      00198F 7C 00            [12] 5408 	mov	r4,#0x00
      001991 80 06            [24] 5409 	sjmp	00212$
      001993                       5410 00211$:
      001993 EB               [12] 5411 	mov	a,r3
      001994 2B               [12] 5412 	add	a,r3
      001995 FB               [12] 5413 	mov	r3,a
      001996 EC               [12] 5414 	mov	a,r4
      001997 33               [12] 5415 	rlc	a
      001998 FC               [12] 5416 	mov	r4,a
      001999                       5417 00212$:
      001999 D5 F0 F7         [24] 5418 	djnz	b,00211$
      00199C EE               [12] 5419 	mov	a,r6
      00199D 52 03            [12] 5420 	anl	ar3,a
      00199F EF               [12] 5421 	mov	a,r7
      0019A0 52 04            [12] 5422 	anl	ar4,a
      0019A2 EB               [12] 5423 	mov	a,r3
      0019A3 4C               [12] 5424 	orl	a,r4
      0019A4 60 17            [24] 5425 	jz	00112$
      0019A6 90 1E CA         [24] 5426 	mov	dptr,#___str_15
      0019A9 75 F0 80         [24] 5427 	mov	b,#0x80
      0019AC C0 07            [24] 5428 	push	ar7
      0019AE C0 06            [24] 5429 	push	ar6
      0019B0 C0 05            [24] 5430 	push	ar5
      0019B2 12 01 84         [24] 5431 	lcall	_UartPrint
      0019B5 D0 05            [24] 5432 	pop	ar5
      0019B7 D0 06            [24] 5433 	pop	ar6
      0019B9 D0 07            [24] 5434 	pop	ar7
      0019BB 80 15            [24] 5435 	sjmp	00136$
      0019BD                       5436 00112$:
                                   5437 ;	main.c:67: else UartPrint("Unknown\n");
      0019BD 90 1E D1         [24] 5438 	mov	dptr,#___str_16
      0019C0 75 F0 80         [24] 5439 	mov	b,#0x80
      0019C3 C0 07            [24] 5440 	push	ar7
      0019C5 C0 06            [24] 5441 	push	ar6
      0019C7 C0 05            [24] 5442 	push	ar5
      0019C9 12 01 84         [24] 5443 	lcall	_UartPrint
      0019CC D0 05            [24] 5444 	pop	ar5
      0019CE D0 06            [24] 5445 	pop	ar6
      0019D0 D0 07            [24] 5446 	pop	ar7
      0019D2                       5447 00136$:
                                   5448 ;	main.c:63: for(uint8_t i=0;i<4;i++)
      0019D2 0D               [12] 5449 	inc	r5
      0019D3 80 86            [24] 5450 	sjmp	00135$
      0019D5                       5451 00114$:
                                   5452 ;	main.c:70: UartPrint("\nSelect FAT16 Partition->\n");
      0019D5 90 1E DA         [24] 5453 	mov	dptr,#___str_17
      0019D8 75 F0 80         [24] 5454 	mov	b,#0x80
      0019DB C0 07            [24] 5455 	push	ar7
      0019DD C0 06            [24] 5456 	push	ar6
      0019DF 12 01 84         [24] 5457 	lcall	_UartPrint
                                   5458 ;	main.c:71: _temp=UartScanByte();
      0019E2 12 03 C4         [24] 5459 	lcall	_UartScanByte
      0019E5 AD 82            [24] 5460 	mov	r5,dpl
      0019E7 D0 06            [24] 5461 	pop	ar6
      0019E9 D0 07            [24] 5462 	pop	ar7
                                   5463 ;	main.c:72: if( _temp<4 && (_resp & (1<<_temp)) )
      0019EB BD 04 00         [24] 5464 	cjne	r5,#0x04,00214$
      0019EE                       5465 00214$:
      0019EE 50 43            [24] 5466 	jnc	00119$
      0019F0 8D F0            [24] 5467 	mov	b,r5
      0019F2 05 F0            [12] 5468 	inc	b
      0019F4 7B 01            [12] 5469 	mov	r3,#0x01
      0019F6 7C 00            [12] 5470 	mov	r4,#0x00
      0019F8 80 06            [24] 5471 	sjmp	00217$
      0019FA                       5472 00216$:
      0019FA EB               [12] 5473 	mov	a,r3
      0019FB 2B               [12] 5474 	add	a,r3
      0019FC FB               [12] 5475 	mov	r3,a
      0019FD EC               [12] 5476 	mov	a,r4
      0019FE 33               [12] 5477 	rlc	a
      0019FF FC               [12] 5478 	mov	r4,a
      001A00                       5479 00217$:
      001A00 D5 F0 F7         [24] 5480 	djnz	b,00216$
      001A03 EB               [12] 5481 	mov	a,r3
      001A04 52 06            [12] 5482 	anl	ar6,a
      001A06 EC               [12] 5483 	mov	a,r4
      001A07 52 07            [12] 5484 	anl	ar7,a
      001A09 EE               [12] 5485 	mov	a,r6
      001A0A 4F               [12] 5486 	orl	a,r7
      001A0B 60 26            [24] 5487 	jz	00119$
                                   5488 ;	main.c:74: UartPrint("Partition Mounted:");UartWriteNumber(_temp,HEX);
      001A0D 90 1E 98         [24] 5489 	mov	dptr,#___str_12
      001A10 75 F0 80         [24] 5490 	mov	b,#0x80
      001A13 C0 05            [24] 5491 	push	ar5
      001A15 12 01 84         [24] 5492 	lcall	_UartPrint
      001A18 D0 05            [24] 5493 	pop	ar5
      001A1A C0 05            [24] 5494 	push	ar5
      001A1C E4               [12] 5495 	clr	a
      001A1D C0 E0            [24] 5496 	push	acc
      001A1F 8D 82            [24] 5497 	mov	dpl,r5
      001A21 12 01 B6         [24] 5498 	lcall	_UartWriteNumber
      001A24 15 81            [12] 5499 	dec	sp
                                   5500 ;	main.c:75: UartWrite('\n');
      001A26 75 82 0A         [24] 5501 	mov	dpl,#0x0a
      001A29 12 00 FE         [24] 5502 	lcall	_UartWrite
      001A2C D0 05            [24] 5503 	pop	ar5
                                   5504 ;	main.c:76: VBR_MOUNT_VBR(_temp);
      001A2E 8D 82            [24] 5505 	mov	dpl,r5
      001A30 02 0E 83         [24] 5506 	ljmp	_VBR_MOUNT_VBR
      001A33                       5507 00119$:
                                   5508 ;	main.c:80: UartPrint("Invalid selection.\n");
      001A33 90 1E F5         [24] 5509 	mov	dptr,#___str_18
      001A36 75 F0 80         [24] 5510 	mov	b,#0x80
      001A39 12 01 84         [24] 5511 	lcall	_UartPrint
                                   5512 ;	main.c:81: UartPrint(HALTING_MSG); while(1);
      001A3C 90 1B 11         [24] 5513 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_209
      001A3F 75 F0 80         [24] 5514 	mov	b,#0x80
      001A42 12 01 84         [24] 5515 	lcall	_UartPrint
      001A45                       5516 00116$:
      001A45 80 FE            [24] 5517 	sjmp	00116$
      001A47                       5518 00129$:
                                   5519 ;	main.c:89: UartPrint("No FAT16 Partition.\n");
      001A47 90 1F 09         [24] 5520 	mov	dptr,#___str_19
      001A4A 75 F0 80         [24] 5521 	mov	b,#0x80
      001A4D 12 01 84         [24] 5522 	lcall	_UartPrint
                                   5523 ;	main.c:90: UartPrint(HALTING_MSG); while(1);
      001A50 90 1B 11         [24] 5524 	mov	dptr,#_SelectFAT16PartitionPrompt_HALTING_MSG_65536_209
      001A53 75 F0 80         [24] 5525 	mov	b,#0x80
      001A56 12 01 84         [24] 5526 	lcall	_UartPrint
      001A59                       5527 00126$:
                                   5528 ;	main.c:93: }
      001A59 80 FE            [24] 5529 	sjmp	00126$
                                   5530 ;------------------------------------------------------------
                                   5531 ;Allocation info for local variables in function 'SelectFileAndFileOpen'
                                   5532 ;------------------------------------------------------------
                                   5533 ;_result                   Allocated to registers r7 
                                   5534 ;i                         Allocated to registers r7 
                                   5535 ;j                         Allocated to registers r6 
                                   5536 ;------------------------------------------------------------
                                   5537 ;	main.c:95: void SelectFileAndFileOpen() __reentrant
                                   5538 ;	-----------------------------------------
                                   5539 ;	 function SelectFileAndFileOpen
                                   5540 ;	-----------------------------------------
      001A5B                       5541 _SelectFileAndFileOpen:
                                   5542 ;	main.c:98: FAT16_ROOTENTRY_SCAN_RESET();
      001A5B 12 13 1A         [24] 5543 	lcall	_FAT16_ROOTENTRY_SCAN_RESET
                                   5544 ;	main.c:99: UartPrint("ROOTE_INDEX\tFILE\n\n");
      001A5E 90 1F 1E         [24] 5545 	mov	dptr,#___str_20
      001A61 75 F0 80         [24] 5546 	mov	b,#0x80
      001A64 12 01 84         [24] 5547 	lcall	_UartPrint
                                   5548 ;	main.c:102: for(uint8_t i=0;i<255;i++) 
      001A67 7F 00            [12] 5549 	mov	r7,#0x00
      001A69                       5550 00112$:
      001A69 BF FF 00         [24] 5551 	cjne	r7,#0xff,00148$
      001A6C                       5552 00148$:
      001A6C 50 58            [24] 5553 	jnc	00107$
                                   5554 ;	main.c:104: _result = FAT16_ROOTENTRY_SCAN();
      001A6E C0 07            [24] 5555 	push	ar7
      001A70 12 13 2C         [24] 5556 	lcall	_FAT16_ROOTENTRY_SCAN
      001A73 AE 82            [24] 5557 	mov	r6,dpl
      001A75 D0 07            [24] 5558 	pop	ar7
                                   5559 ;	main.c:105: if(_result==0xff) break; //end of scan
      001A77 BE FF 02         [24] 5560 	cjne	r6,#0xff,00150$
      001A7A 80 4A            [24] 5561 	sjmp	00107$
      001A7C                       5562 00150$:
                                   5563 ;	main.c:106: else if (_result==0) //valid file
      001A7C EE               [12] 5564 	mov	a,r6
      001A7D 70 44            [24] 5565 	jnz	00113$
                                   5566 ;	main.c:108: UartWriteNumber(__global_rootEntry.entry_index,DEC); //print root entry index
      001A7F 78 7C            [12] 5567 	mov	r0,#(___global_rootEntry + 0x0012)
      001A81 86 06            [24] 5568 	mov	ar6,@r0
      001A83 C0 07            [24] 5569 	push	ar7
      001A85 74 01            [12] 5570 	mov	a,#0x01
      001A87 C0 E0            [24] 5571 	push	acc
      001A89 8E 82            [24] 5572 	mov	dpl,r6
      001A8B 12 01 B6         [24] 5573 	lcall	_UartWriteNumber
      001A8E 15 81            [12] 5574 	dec	sp
                                   5575 ;	main.c:109: UartWrite('\t');
      001A90 75 82 09         [24] 5576 	mov	dpl,#0x09
      001A93 12 00 FE         [24] 5577 	lcall	_UartWrite
                                   5578 ;	main.c:110: UartWrite('\t');
      001A96 75 82 09         [24] 5579 	mov	dpl,#0x09
      001A99 12 00 FE         [24] 5580 	lcall	_UartWrite
      001A9C D0 07            [24] 5581 	pop	ar7
                                   5582 ;	main.c:111: for(uint8_t j=0;j<11;j++)UartWrite(__global_rootEntry.name[j]); //print name
      001A9E 7E 00            [12] 5583 	mov	r6,#0x00
      001AA0                       5584 00109$:
      001AA0 BE 0B 00         [24] 5585 	cjne	r6,#0x0b,00152$
      001AA3                       5586 00152$:
      001AA3 50 14            [24] 5587 	jnc	00101$
      001AA5 EE               [12] 5588 	mov	a,r6
      001AA6 24 6A            [12] 5589 	add	a,#___global_rootEntry
      001AA8 F9               [12] 5590 	mov	r1,a
      001AA9 87 82            [24] 5591 	mov	dpl,@r1
      001AAB C0 07            [24] 5592 	push	ar7
      001AAD C0 06            [24] 5593 	push	ar6
      001AAF 12 00 FE         [24] 5594 	lcall	_UartWrite
      001AB2 D0 06            [24] 5595 	pop	ar6
      001AB4 D0 07            [24] 5596 	pop	ar7
      001AB6 0E               [12] 5597 	inc	r6
      001AB7 80 E7            [24] 5598 	sjmp	00109$
      001AB9                       5599 00101$:
                                   5600 ;	main.c:112: UartWrite('\n');
      001AB9 75 82 0A         [24] 5601 	mov	dpl,#0x0a
      001ABC C0 07            [24] 5602 	push	ar7
      001ABE 12 00 FE         [24] 5603 	lcall	_UartWrite
      001AC1 D0 07            [24] 5604 	pop	ar7
      001AC3                       5605 00113$:
                                   5606 ;	main.c:102: for(uint8_t i=0;i<255;i++) 
      001AC3 0F               [12] 5607 	inc	r7
      001AC4 80 A3            [24] 5608 	sjmp	00112$
      001AC6                       5609 00107$:
                                   5610 ;	main.c:116: UartPrint("Select ROOTE Index >\n");
      001AC6 90 1F 31         [24] 5611 	mov	dptr,#___str_21
      001AC9 75 F0 80         [24] 5612 	mov	b,#0x80
      001ACC 12 01 84         [24] 5613 	lcall	_UartPrint
                                   5614 ;	main.c:117: _result=UartScanByte();
      001ACF 12 03 C4         [24] 5615 	lcall	_UartScanByte
                                   5616 ;	main.c:118: FAT16_ROOTENTRY_READ(_result); //load the selected
      001AD2 7E 00            [12] 5617 	mov	r6,#0x00
      001AD4 8E 83            [24] 5618 	mov	dph,r6
                                   5619 ;	main.c:119: }
      001AD6 02 12 F9         [24] 5620 	ljmp	_FAT16_ROOTENTRY_READ
                                   5621 ;------------------------------------------------------------
                                   5622 ;Allocation info for local variables in function 'setup'
                                   5623 ;------------------------------------------------------------
                                   5624 ;	main.c:126: void setup()
                                   5625 ;	-----------------------------------------
                                   5626 ;	 function setup
                                   5627 ;	-----------------------------------------
      001AD9                       5628 _setup:
                                   5629 ;	main.c:128: UartBegin();
      001AD9 12 00 DB         [24] 5630 	lcall	_UartBegin
                                   5631 ;	main.c:129: spi_init(); 
      001ADC 12 04 BD         [24] 5632 	lcall	_spi_init
                                   5633 ;	main.c:130: SDinit();
                                   5634 ;	main.c:131: }
      001ADF 02 06 F6         [24] 5635 	ljmp	_SDinit
                                   5636 ;------------------------------------------------------------
                                   5637 ;Allocation info for local variables in function 'main'
                                   5638 ;------------------------------------------------------------
                                   5639 ;buff                      Allocated with name '_main_buff_65536_230'
                                   5640 ;_resp                     Allocated to registers 
                                   5641 ;_cmd                      Allocated to registers 
                                   5642 ;xram_addr                 Allocated to registers 
                                   5643 ;i                         Allocated to registers 
                                   5644 ;------------------------------------------------------------
                                   5645 ;	main.c:137: void main(void)
                                   5646 ;	-----------------------------------------
                                   5647 ;	 function main
                                   5648 ;	-----------------------------------------
      001AE2                       5649 _main:
                                   5650 ;	main.c:148: setup(); //setup peripherals
      001AE2 12 1A D9         [24] 5651 	lcall	_setup
                                   5652 ;	main.c:149: while(UartReadReady())UartRead(); //flush
      001AE5                       5653 00101$:
      001AE5 12 00 EA         [24] 5654 	lcall	_UartReadReady
      001AE8 E5 82            [12] 5655 	mov	a,dpl
      001AEA 60 05            [24] 5656 	jz	00113$
      001AEC 12 00 F5         [24] 5657 	lcall	_UartRead
                                   5658 ;	main.c:151: while(1)
      001AEF 80 F4            [24] 5659 	sjmp	00101$
      001AF1                       5660 00113$:
                                   5661 ;	main.c:153: _cmd=UartRead();
      001AF1 12 00 F5         [24] 5662 	lcall	_UartRead
                                   5663 ;	main.c:154: switch (_resp)
                                   5664 ;	main.c:209: while(1);        
                                   5665 ;	main.c:212: }
      001AF4 80 FB            [24] 5666 	sjmp	00113$
                                   5667 	.area CSEG    (CODE)
                                   5668 	.area CONST   (CODE)
                                   5669 	.area CONST   (CODE)
      001DAE                       5670 ___str_0:
      001DAE 4E 75 6D 62 65 72 28  5671 	.ascii "Number(HEX, eg FE for 254): "
             48 45 58 2C 20 65 67
             20 46 45 20 66 6F 72
             20 32 35 34 29 3A 20
      001DCA 00                    5672 	.db 0x00
                                   5673 	.area CSEG    (CODE)
                                   5674 	.area CONST   (CODE)
      001DCB                       5675 ___str_1:
      001DCB 56 42 52 3A 20 73 74  5676 	.ascii "VBR: start,bps,spc,reservedSectors,nfat,nroote,spf,fat_start"
             61 72 74 2C 62 70 73
             2C 73 70 63 2C 72 65
             73 65 72 76 65 64 53
             65 63 74 6F 72 73 2C
             6E 66 61 74 2C 6E 72
             6F 6F 74 65 2C 73 70
             66 2C 66 61 74 5F 73
             74 61 72 74
      001E07 2C 72 6F 6F 74 65 5F  5677 	.ascii ",roote_start,data_start"
             73 74 61 72 74 2C 64
             61 74 61 5F 73 74 61
             72 74
      001E1E 0A                    5678 	.db 0x0a
      001E1F 00                    5679 	.db 0x00
                                   5680 	.area CSEG    (CODE)
                                   5681 	.area CONST   (CODE)
      001E20                       5682 ___str_2:
      001E20 0A                    5683 	.db 0x0a
      001E21 52 4F 4F 54 5F 45 4E  5684 	.ascii "ROOT_ENTRY_INDEX:"
             54 52 59 5F 49 4E 44
             45 58 3A
      001E32 00                    5685 	.db 0x00
                                   5686 	.area CSEG    (CODE)
                                   5687 	.area CONST   (CODE)
      001E33                       5688 ___str_3:
      001E33 0A                    5689 	.db 0x0a
      001E34 46 49 4C 45 3A 20     5690 	.ascii "FILE: "
      001E3A 00                    5691 	.db 0x00
                                   5692 	.area CSEG    (CODE)
                                   5693 	.area CONST   (CODE)
      001E3B                       5694 ___str_4:
      001E3B 0A                    5695 	.db 0x0a
      001E3C 53 54 41 52 54 3A 20  5696 	.ascii "START: "
      001E43 00                    5697 	.db 0x00
                                   5698 	.area CSEG    (CODE)
                                   5699 	.area CONST   (CODE)
      001E44                       5700 ___str_5:
      001E44 0A                    5701 	.db 0x0a
      001E45 53 49 5A 45 3A 20     5702 	.ascii "SIZE: "
      001E4B 00                    5703 	.db 0x00
                                   5704 	.area CSEG    (CODE)
                                   5705 	.area CONST   (CODE)
      001E4C                       5706 ___str_6:
      001E4C 0A                    5707 	.db 0x0a
      001E4D 41 54 54 52 3A 20 30  5708 	.ascii "ATTR: 0x"
             78
      001E55 00                    5709 	.db 0x00
                                   5710 	.area CSEG    (CODE)
      001AF6                       5711 _FAT16_FILE_READ_power2error_65536_182:
      001AF6 6E 62 79 74 65 73 20  5712 	.ascii "nbytes must be power of 2"
             6D 75 73 74 20 62 65
             20 70 6F 77 65 72 20
             6F 66 20 32
      001B0F 0A                    5713 	.db 0x0a
      001B10 00                    5714 	.db 0x00
                                   5715 	.area CONST   (CODE)
      001E56                       5716 ___str_8:
      001E56 46 49 4C 45 20 4E 4F  5717 	.ascii "FILE NOT FOUND"
             54 20 46 4F 55 4E 44
      001E64 0A                    5718 	.db 0x0a
      001E65 2E                    5719 	.ascii "."
      001E66 00                    5720 	.db 0x00
                                   5721 	.area CSEG    (CODE)
                                   5722 	.area CONST   (CODE)
      001E67                       5723 ___str_9:
      001E67 49 53 41 5F 53 45 52  5724 	.ascii "ISA_SERIAL_LOADER_V0.1:8052"
             49 41 4C 5F 4C 4F 41
             44 45 52 5F 56 30 2E
             31 3A 38 30 35 32
      001E82 0A                    5725 	.db 0x0a
      001E83 00                    5726 	.db 0x00
                                   5727 	.area CSEG    (CODE)
      001B11                       5728 _SelectFAT16PartitionPrompt_HALTING_MSG_65536_209:
      001B11 48 41 4C 54 49 4E 47  5729 	.ascii "HALTING..."
             2E 2E 2E
      001B1B 00                    5730 	.db 0x00
                                   5731 	.area CONST   (CODE)
      001E84                       5732 ___str_11:
      001E84 45 52 52 4F 52 3A 4E  5733 	.ascii "ERROR:NO MBR FOUND"
             4F 20 4D 42 52 20 46
             4F 55 4E 44
      001E96 0A                    5734 	.db 0x0a
      001E97 00                    5735 	.db 0x00
                                   5736 	.area CSEG    (CODE)
                                   5737 	.area CONST   (CODE)
      001E98                       5738 ___str_12:
      001E98 50 61 72 74 69 74 69  5739 	.ascii "Partition Mounted:"
             6F 6E 20 4D 6F 75 6E
             74 65 64 3A
      001EAA 00                    5740 	.db 0x00
                                   5741 	.area CSEG    (CODE)
                                   5742 	.area CONST   (CODE)
      001EAB                       5743 ___str_13:
      001EAB 49 6E 63 6F 6D 70 61  5744 	.ascii "Incompatible FAT16"
             74 69 62 6C 65 20 46
             41 54 31 36
      001EBD 0A                    5745 	.db 0x0a
      001EBE 00                    5746 	.db 0x00
                                   5747 	.area CSEG    (CODE)
                                   5748 	.area CONST   (CODE)
      001EBF                       5749 ___str_14:
      001EBF 50 61 72 74 69 74 69  5750 	.ascii "Partition-"
             6F 6E 2D
      001EC9 00                    5751 	.db 0x00
                                   5752 	.area CSEG    (CODE)
                                   5753 	.area CONST   (CODE)
      001ECA                       5754 ___str_15:
      001ECA 46 41 54 31 36        5755 	.ascii "FAT16"
      001ECF 0A                    5756 	.db 0x0a
      001ED0 00                    5757 	.db 0x00
                                   5758 	.area CSEG    (CODE)
                                   5759 	.area CONST   (CODE)
      001ED1                       5760 ___str_16:
      001ED1 55 6E 6B 6E 6F 77 6E  5761 	.ascii "Unknown"
      001ED8 0A                    5762 	.db 0x0a
      001ED9 00                    5763 	.db 0x00
                                   5764 	.area CSEG    (CODE)
                                   5765 	.area CONST   (CODE)
      001EDA                       5766 ___str_17:
      001EDA 0A                    5767 	.db 0x0a
      001EDB 53 65 6C 65 63 74 20  5768 	.ascii "Select FAT16 Partition->"
             46 41 54 31 36 20 50
             61 72 74 69 74 69 6F
             6E 2D 3E
      001EF3 0A                    5769 	.db 0x0a
      001EF4 00                    5770 	.db 0x00
                                   5771 	.area CSEG    (CODE)
                                   5772 	.area CONST   (CODE)
      001EF5                       5773 ___str_18:
      001EF5 49 6E 76 61 6C 69 64  5774 	.ascii "Invalid selection."
             20 73 65 6C 65 63 74
             69 6F 6E 2E
      001F07 0A                    5775 	.db 0x0a
      001F08 00                    5776 	.db 0x00
                                   5777 	.area CSEG    (CODE)
                                   5778 	.area CONST   (CODE)
      001F09                       5779 ___str_19:
      001F09 4E 6F 20 46 41 54 31  5780 	.ascii "No FAT16 Partition."
             36 20 50 61 72 74 69
             74 69 6F 6E 2E
      001F1C 0A                    5781 	.db 0x0a
      001F1D 00                    5782 	.db 0x00
                                   5783 	.area CSEG    (CODE)
                                   5784 	.area CONST   (CODE)
      001F1E                       5785 ___str_20:
      001F1E 52 4F 4F 54 45 5F 49  5786 	.ascii "ROOTE_INDEX"
             4E 44 45 58
      001F29 09                    5787 	.db 0x09
      001F2A 46 49 4C 45           5788 	.ascii "FILE"
      001F2E 0A                    5789 	.db 0x0a
      001F2F 0A                    5790 	.db 0x0a
      001F30 00                    5791 	.db 0x00
                                   5792 	.area CSEG    (CODE)
                                   5793 	.area CONST   (CODE)
      001F31                       5794 ___str_21:
      001F31 53 65 6C 65 63 74 20  5795 	.ascii "Select ROOTE Index >"
             52 4F 4F 54 45 20 49
             6E 64 65 78 20 3E
      001F45 0A                    5796 	.db 0x0a
      001F46 00                    5797 	.db 0x00
                                   5798 	.area CSEG    (CODE)
                                   5799 	.area CONST   (CODE)
      001F47                       5800 ___str_22:
      001F47 49 53 41 2D 46 41 54  5801 	.ascii "ISA-FAT16+SERIAL-LOADER: V1.0"
             31 36 2B 53 45 52 49
             41 4C 2D 4C 4F 41 44
             45 52 3A 20 56 31 2E
             30
      001F64 0A                    5802 	.db 0x0a
      001F65 00                    5803 	.db 0x00
                                   5804 	.area CSEG    (CODE)
                                   5805 	.area CONST   (CODE)
      001F66                       5806 ___str_23:
      001F66 0D                    5807 	.db 0x0d
      001F67 00                    5808 	.db 0x00
                                   5809 	.area CSEG    (CODE)
                                   5810 	.area XINIT   (CODE)
                                   5811 	.area CABS    (ABS,CODE)
