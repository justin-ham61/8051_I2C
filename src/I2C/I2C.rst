                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module I2C
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _reset_timer
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _I2C_poll
                                    109 	.globl _next_handle
                                    110 	.globl _stcon_Handler
                                    111 	.globl _dout_Handler
                                    112 	.globl _stpcon_Handler
                                    113 	.globl _read_Handler
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
      000042                        229 _I2C_STATE:
      000042                        230 	.ds 14
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable items in internal ram
                                    233 ;--------------------------------------------------------
                                    234 	.area	OSEG    (OVR,DATA)
                                    235 	.area	OSEG    (OVR,DATA)
                                    236 	.area	OSEG    (OVR,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
                                    245 	.area IABS    (ABS,DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; bit data
                                    248 ;--------------------------------------------------------
                                    249 	.area BSEG    (BIT)
                                    250 ;--------------------------------------------------------
                                    251 ; paged external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area PSEG    (PAG,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; uninitialized external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XSEG    (XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XABS    (ABS,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; initialized external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XISEG   (XDATA)
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; global & static initialisations
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 ;	.\I2C.c:12: static I2C I2C_STATE = {0, 0x40, 0x41, 0, 0x00, 0x00, 1};
      0000F1 E4               [12]  284 	clr	a
      0000F2 F5 42            [12]  285 	mov	(_I2C_STATE + 0),a
      0000F4 F5 43            [12]  286 	mov	(_I2C_STATE + 1),a
      0000F6 75 44 40         [24]  287 	mov	((_I2C_STATE + 0x0002) + 0),#0x40
      0000F9 F5 45            [12]  288 	mov	((_I2C_STATE + 0x0002) + 1),a
      0000FB 75 46 41         [24]  289 	mov	((_I2C_STATE + 0x0004) + 0),#0x41
      0000FE F5 47            [12]  290 	mov	((_I2C_STATE + 0x0004) + 1),a
      000100 F5 48            [12]  291 	mov	((_I2C_STATE + 0x0006) + 0),a
      000102 F5 49            [12]  292 	mov	((_I2C_STATE + 0x0006) + 1),a
      000104 F5 4A            [12]  293 	mov	((_I2C_STATE + 0x0008) + 0),a
      000106 F5 4B            [12]  294 	mov	((_I2C_STATE + 0x0008) + 1),a
      000108 F5 4C            [12]  295 	mov	((_I2C_STATE + 0x000a) + 0),a
      00010A F5 4D            [12]  296 	mov	((_I2C_STATE + 0x000a) + 1),a
      00010C 75 4E 01         [24]  297 	mov	((_I2C_STATE + 0x000c) + 0),#0x01
      00010F F5 4F            [12]  298 	mov	((_I2C_STATE + 0x000c) + 1),a
                                    299 ;--------------------------------------------------------
                                    300 ; Home
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
                                    303 	.area HOME    (CODE)
                                    304 ;--------------------------------------------------------
                                    305 ; code
                                    306 ;--------------------------------------------------------
                                    307 	.area CSEG    (CODE)
                                    308 ;------------------------------------------------------------
                                    309 ;Allocation info for local variables in function 'I2C_poll'
                                    310 ;------------------------------------------------------------
                                    311 ;	.\I2C.c:14: void I2C_poll(void){
                                    312 ;	-----------------------------------------
                                    313 ;	 function I2C_poll
                                    314 ;	-----------------------------------------
      0005D8                        315 _I2C_poll:
                           000007   316 	ar7 = 0x07
                           000006   317 	ar6 = 0x06
                           000005   318 	ar5 = 0x05
                           000004   319 	ar4 = 0x04
                           000003   320 	ar3 = 0x03
                           000002   321 	ar2 = 0x02
                           000001   322 	ar1 = 0x01
                           000000   323 	ar0 = 0x00
                                    324 ;	.\I2C.c:15: switch(I2C_STATE.POLLING_MODE){
      0005D8 AE 42            [24]  325 	mov	r6,(_I2C_STATE + 0)
      0005DA AF 43            [24]  326 	mov	r7,(_I2C_STATE + 1)
      0005DC BE 00 05         [24]  327 	cjne	r6,#0x00,00149$
      0005DF BF 00 02         [24]  328 	cjne	r7,#0x00,00149$
      0005E2 80 18            [24]  329 	sjmp	00101$
      0005E4                        330 00149$:
      0005E4 BE 01 05         [24]  331 	cjne	r6,#0x01,00150$
      0005E7 BF 00 02         [24]  332 	cjne	r7,#0x00,00150$
      0005EA 80 22            [24]  333 	sjmp	00104$
      0005EC                        334 00150$:
      0005EC BE 02 05         [24]  335 	cjne	r6,#0x02,00151$
      0005EF BF 00 02         [24]  336 	cjne	r7,#0x00,00151$
      0005F2 80 1F            [24]  337 	sjmp	00105$
      0005F4                        338 00151$:
                                    339 ;	.\I2C.c:17: case 0: 
      0005F4 BE 03 24         [24]  340 	cjne	r6,#0x03,00108$
      0005F7 BF 00 21         [24]  341 	cjne	r7,#0x00,00108$
      0005FA 80 1C            [24]  342 	sjmp	00106$
      0005FC                        343 00101$:
                                    344 ;	.\I2C.c:18: if(TF0 == 1){
      0005FC 30 8D 1C         [24]  345 	jnb	_TF0,00108$
                                    346 ;	.\I2C.c:19: reset_timer();
      0005FF 12 04 59         [24]  347 	lcall	_reset_timer
                                    348 ;	.\I2C.c:20: stcon_Handler();
      000602 12 06 D2         [24]  349 	lcall	_stcon_Handler
                                    350 ;	.\I2C.c:21: next_handle(I2C_STATE.POLLING_MODE);
      000605 85 42 82         [24]  351 	mov	dpl,(_I2C_STATE + 0)
      000608 85 43 83         [24]  352 	mov	dph,(_I2C_STATE + 1)
                                    353 ;	.\I2C.c:22: return;
                                    354 ;	.\I2C.c:26: case 1:
      00060B 02 06 2B         [24]  355 	ljmp	_next_handle
      00060E                        356 00104$:
                                    357 ;	.\I2C.c:27: dout_Handler();
      00060E 12 06 DB         [24]  358 	lcall	_dout_Handler
                                    359 ;	.\I2C.c:28: break;
                                    360 ;	.\I2C.c:30: case 2: 
      000611 80 08            [24]  361 	sjmp	00108$
      000613                        362 00105$:
                                    363 ;	.\I2C.c:31: stpcon_Handler();
      000613 12 07 08         [24]  364 	lcall	_stpcon_Handler
                                    365 ;	.\I2C.c:32: break;
                                    366 ;	.\I2C.c:33: case 3: 
      000616 80 03            [24]  367 	sjmp	00108$
      000618                        368 00106$:
                                    369 ;	.\I2C.c:34: read_Handler();
      000618 12 07 11         [24]  370 	lcall	_read_Handler
                                    371 ;	.\I2C.c:38: }
      00061B                        372 00108$:
                                    373 ;	.\I2C.c:39: if(I2C_STATE.POLLING_MODE != 0){
      00061B AE 42            [24]  374 	mov	r6,(_I2C_STATE + 0)
      00061D AF 43            [24]  375 	mov	r7,(_I2C_STATE + 1)
      00061F EE               [12]  376 	mov	a,r6
      000620 4F               [12]  377 	orl	a,r7
      000621 60 07            [24]  378 	jz	00111$
                                    379 ;	.\I2C.c:40: next_handle(I2C_STATE.POLLING_MODE);
      000623 8E 82            [24]  380 	mov	dpl, r6
      000625 8F 83            [24]  381 	mov	dph, r7
                                    382 ;	.\I2C.c:42: }
      000627 02 06 2B         [24]  383 	ljmp	_next_handle
      00062A                        384 00111$:
      00062A 22               [24]  385 	ret
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'next_handle'
                                    388 ;------------------------------------------------------------
                                    389 ;current_step              Allocated to registers r6 r7 
                                    390 ;------------------------------------------------------------
                                    391 ;	.\I2C.c:44: void next_handle(int current_step){
                                    392 ;	-----------------------------------------
                                    393 ;	 function next_handle
                                    394 ;	-----------------------------------------
      00062B                        395 _next_handle:
      00062B AE 82            [24]  396 	mov	r6, dpl
      00062D AF 83            [24]  397 	mov	r7, dph
                                    398 ;	.\I2C.c:45: switch (current_step)
      00062F BE 00 05         [24]  399 	cjne	r6,#0x00,00174$
      000632 BF 00 02         [24]  400 	cjne	r7,#0x00,00174$
      000635 80 1B            [24]  401 	sjmp	00101$
      000637                        402 00174$:
      000637 BE 01 05         [24]  403 	cjne	r6,#0x01,00175$
      00063A BF 00 02         [24]  404 	cjne	r7,#0x00,00175$
      00063D 80 35            [24]  405 	sjmp	00105$
      00063F                        406 00175$:
      00063F BE 02 06         [24]  407 	cjne	r6,#0x02,00176$
      000642 BF 00 03         [24]  408 	cjne	r7,#0x00,00176$
      000645 02 06 C5         [24]  409 	ljmp	00114$
      000648                        410 00176$:
      000648 BE 03 06         [24]  411 	cjne	r6,#0x03,00177$
      00064B BF 00 03         [24]  412 	cjne	r7,#0x00,00177$
      00064E 02 06 CB         [24]  413 	ljmp	00115$
      000651                        414 00177$:
      000651 22               [24]  415 	ret
                                    416 ;	.\I2C.c:48: case 0:
      000652                        417 00101$:
                                    418 ;	.\I2C.c:49: I2C_STATE.POLLING_MODE = 1;
      000652 75 42 01         [24]  419 	mov	(_I2C_STATE + 0),#0x01
                                    420 ;	.\I2C.c:50: I2C_STATE.ADR_SENT = 0;
      000655 E4               [12]  421 	clr	a
      000656 F5 43            [12]  422 	mov	(_I2C_STATE + 1),a
      000658 F5 48            [12]  423 	mov	((_I2C_STATE + 0x0006) + 0),a
      00065A F5 49            [12]  424 	mov	((_I2C_STATE + 0x0006) + 1),a
                                    425 ;	.\I2C.c:51: if(I2C_STATE.WRITE_AVAIL == 0){
      00065C E5 4E            [12]  426 	mov	a,(_I2C_STATE + 0x000c)
      00065E 45 4F            [12]  427 	orl	a,((_I2C_STATE + 0x000c) + 1)
      000660 70 09            [24]  428 	jnz	00103$
                                    429 ;	.\I2C.c:52: I2C_STATE.SHIFT_OUT_DATA = I2C_STATE.READ_ADR;
      000662 AE 46            [24]  430 	mov	r6,((_I2C_STATE + 0x0004) + 0)
      000664 AF 47            [24]  431 	mov	r7,((_I2C_STATE + 0x0004) + 1)
      000666 8E 4C            [24]  432 	mov	((_I2C_STATE + 0x000a) + 0),r6
      000668 8F 4D            [24]  433 	mov	((_I2C_STATE + 0x000a) + 1),r7
      00066A 22               [24]  434 	ret
      00066B                        435 00103$:
                                    436 ;	.\I2C.c:54: I2C_STATE.SHIFT_OUT_DATA = I2C_STATE.WRITE_ADR;
      00066B AE 44            [24]  437 	mov	r6,((_I2C_STATE + 0x0002) + 0)
      00066D AF 45            [24]  438 	mov	r7,((_I2C_STATE + 0x0002) + 1)
      00066F 8E 4C            [24]  439 	mov	((_I2C_STATE + 0x000a) + 0),r6
      000671 8F 4D            [24]  440 	mov	((_I2C_STATE + 0x000a) + 1),r7
                                    441 ;	.\I2C.c:56: break;
                                    442 ;	.\I2C.c:58: case 1:
      000673 22               [24]  443 	ret
      000674                        444 00105$:
                                    445 ;	.\I2C.c:59: if(I2C_STATE.ADR_SENT == 0 && I2C_STATE.WRITE_AVAIL == 0){
      000674 AE 48            [24]  446 	mov	r6,((_I2C_STATE + 0x0006) + 0)
      000676 AF 49            [24]  447 	mov	r7,((_I2C_STATE + 0x0006) + 1)
      000678 EE               [12]  448 	mov	a,r6
      000679 4F               [12]  449 	orl	a,r7
      00067A 70 11            [24]  450 	jnz	00111$
      00067C E5 4E            [12]  451 	mov	a,(_I2C_STATE + 0x000c)
      00067E 45 4F            [12]  452 	orl	a,((_I2C_STATE + 0x000c) + 1)
                                    453 ;	.\I2C.c:60: I2C_STATE.ADR_SENT = 1;
                                    454 ;	.\I2C.c:61: I2C_STATE.POLLING_MODE = 3;
      000680 70 0B            [24]  455 	jnz	00111$
      000682 75 48 01         [24]  456 	mov	((_I2C_STATE + 0x0006) + 0),#0x01
      000685 F5 49            [12]  457 	mov	((_I2C_STATE + 0x0006) + 1),a
      000687 75 42 03         [24]  458 	mov	(_I2C_STATE + 0),#0x03
      00068A F5 43            [12]  459 	mov	(_I2C_STATE + 1),a
      00068C 22               [24]  460 	ret
      00068D                        461 00111$:
                                    462 ;	.\I2C.c:63: } else if (I2C_STATE.ADR_SENT == 0 && I2C_STATE.WRITE_AVAIL == 1){
      00068D EE               [12]  463 	mov	a,r6
      00068E 4F               [12]  464 	orl	a,r7
      00068F 70 2D            [24]  465 	jnz	00107$
      000691 74 01            [12]  466 	mov	a,#0x01
      000693 B5 4E 06         [24]  467 	cjne	a,(_I2C_STATE + 0x000c),00182$
      000696 14               [12]  468 	dec	a
      000697 B5 4F 02         [24]  469 	cjne	a,((_I2C_STATE + 0x000c) + 1),00182$
      00069A 80 02            [24]  470 	sjmp	00183$
      00069C                        471 00182$:
      00069C 80 20            [24]  472 	sjmp	00107$
      00069E                        473 00183$:
                                    474 ;	.\I2C.c:64: I2C_STATE.ADR_SENT = 1;
      00069E 75 48 01         [24]  475 	mov	((_I2C_STATE + 0x0006) + 0),#0x01
                                    476 ;	.\I2C.c:65: I2C_STATE.WRITE_AVAIL = 0;
      0006A1 E4               [12]  477 	clr	a
      0006A2 F5 49            [12]  478 	mov	((_I2C_STATE + 0x0006) + 1),a
      0006A4 F5 4E            [12]  479 	mov	((_I2C_STATE + 0x000c) + 0),a
      0006A6 F5 4F            [12]  480 	mov	((_I2C_STATE + 0x000c) + 1),a
                                    481 ;	.\I2C.c:66: I2C_STATE.SHIFT_OUT_DATA = (~I2C_STATE.READ_DATA & 0xF0);
      0006A8 E5 4A            [12]  482 	mov	a,(_I2C_STATE + 0x0008)
      0006AA F4               [12]  483 	cpl	a
      0006AB FE               [12]  484 	mov	r6,a
      0006AC E5 4B            [12]  485 	mov	a,((_I2C_STATE + 0x0008) + 1)
      0006AE F4               [12]  486 	cpl	a
      0006AF 53 06 F0         [24]  487 	anl	ar6,#0xf0
      0006B2 7F 00            [12]  488 	mov	r7,#0x00
      0006B4 8E 4C            [24]  489 	mov	((_I2C_STATE + 0x000a) + 0),r6
      0006B6 8F 4D            [24]  490 	mov	((_I2C_STATE + 0x000a) + 1),r7
                                    491 ;	.\I2C.c:67: I2C_STATE.POLLING_MODE = 1;
      0006B8 75 42 01         [24]  492 	mov	(_I2C_STATE + 0),#0x01
      0006BB 8F 43            [24]  493 	mov	(_I2C_STATE + 1),r7
      0006BD 22               [24]  494 	ret
      0006BE                        495 00107$:
                                    496 ;	.\I2C.c:70: I2C_STATE.POLLING_MODE = 2;
      0006BE 75 42 02         [24]  497 	mov	(_I2C_STATE + 0),#0x02
      0006C1 75 43 00         [24]  498 	mov	(_I2C_STATE + 1),#0x00
                                    499 ;	.\I2C.c:72: break;
                                    500 ;	.\I2C.c:74: case 2: 
      0006C4 22               [24]  501 	ret
      0006C5                        502 00114$:
                                    503 ;	.\I2C.c:75: I2C_STATE.POLLING_MODE = 0;
      0006C5 E4               [12]  504 	clr	a
      0006C6 F5 42            [12]  505 	mov	(_I2C_STATE + 0),a
      0006C8 F5 43            [12]  506 	mov	(_I2C_STATE + 1),a
                                    507 ;	.\I2C.c:76: break;
                                    508 ;	.\I2C.c:77: case 3: 
      0006CA 22               [24]  509 	ret
      0006CB                        510 00115$:
                                    511 ;	.\I2C.c:78: I2C_STATE.POLLING_MODE = 2;
      0006CB 75 42 02         [24]  512 	mov	(_I2C_STATE + 0),#0x02
      0006CE 75 43 00         [24]  513 	mov	(_I2C_STATE + 1),#0x00
                                    514 ;	.\I2C.c:82: }
                                    515 ;	.\I2C.c:83: }
      0006D1 22               [24]  516 	ret
                                    517 ;------------------------------------------------------------
                                    518 ;Allocation info for local variables in function 'stcon_Handler'
                                    519 ;------------------------------------------------------------
                                    520 ;	.\I2C.c:85: void stcon_Handler(void){
                                    521 ;	-----------------------------------------
                                    522 ;	 function stcon_Handler
                                    523 ;	-----------------------------------------
      0006D2                        524 _stcon_Handler:
                                    525 ;	.\I2C.c:86: P2_6 = 1; 
                                    526 ;	assignBit
      0006D2 D2 A6            [12]  527 	setb	_P2_6
                                    528 ;	.\I2C.c:87: P2_7 = 1;
                                    529 ;	assignBit
      0006D4 D2 A7            [12]  530 	setb	_P2_7
                                    531 ;	.\I2C.c:88: P2_6 = 0;
                                    532 ;	assignBit
      0006D6 C2 A6            [12]  533 	clr	_P2_6
                                    534 ;	.\I2C.c:89: P2_7 = 0;
                                    535 ;	assignBit
      0006D8 C2 A7            [12]  536 	clr	_P2_7
                                    537 ;	.\I2C.c:90: }
      0006DA 22               [24]  538 	ret
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'dout_Handler'
                                    541 ;------------------------------------------------------------
                                    542 ;i                         Allocated to registers r7 
                                    543 ;------------------------------------------------------------
                                    544 ;	.\I2C.c:93: void dout_Handler(void){
                                    545 ;	-----------------------------------------
                                    546 ;	 function dout_Handler
                                    547 ;	-----------------------------------------
      0006DB                        548 _dout_Handler:
                                    549 ;	.\I2C.c:94: for(int i = 0; i < 8; i++){
      0006DB 7F 00            [12]  550 	mov	r7,#0x00
      0006DD                        551 00103$:
      0006DD BF 08 00         [24]  552 	cjne	r7,#0x08,00120$
      0006E0                        553 00120$:
      0006E0 50 1F            [24]  554 	jnc	00101$
                                    555 ;	.\I2C.c:95: P2_6 = (I2C_STATE.SHIFT_OUT_DATA & 0x80) ? 1 : 0;
      0006E2 74 80            [12]  556 	mov	a,#0x80
      0006E4 55 4C            [12]  557 	anl	a,(_I2C_STATE + 0x000a)
                                    558 ;	assignBit
      0006E6 7E 00            [12]  559 	mov	r6,#0x00
      0006E8 4E               [12]  560 	orl	a,r6
      0006E9 24 FF            [12]  561 	add	a,#0xff
      0006EB 92 A6            [24]  562 	mov	_P2_6,c
                                    563 ;	.\I2C.c:96: P2_7 = 1;
                                    564 ;	assignBit
      0006ED D2 A7            [12]  565 	setb	_P2_7
                                    566 ;	.\I2C.c:97: P2_7 = 0;
                                    567 ;	assignBit
      0006EF C2 A7            [12]  568 	clr	_P2_7
                                    569 ;	.\I2C.c:98: I2C_STATE.SHIFT_OUT_DATA <<= 1;
      0006F1 E5 4C            [12]  570 	mov	a,(_I2C_STATE + 0x000a)
      0006F3 25 E0            [12]  571 	add	a,acc
      0006F5 FD               [12]  572 	mov	r5,a
      0006F6 E5 4D            [12]  573 	mov	a,((_I2C_STATE + 0x000a) + 1)
      0006F8 33               [12]  574 	rlc	a
      0006F9 FE               [12]  575 	mov	r6,a
      0006FA 8D 4C            [24]  576 	mov	((_I2C_STATE + 0x000a) + 0),r5
      0006FC 8E 4D            [24]  577 	mov	((_I2C_STATE + 0x000a) + 1),r6
                                    578 ;	.\I2C.c:94: for(int i = 0; i < 8; i++){
      0006FE 0F               [12]  579 	inc	r7
      0006FF 80 DC            [24]  580 	sjmp	00103$
      000701                        581 00101$:
                                    582 ;	.\I2C.c:101: P2_6 = 1;
                                    583 ;	assignBit
      000701 D2 A6            [12]  584 	setb	_P2_6
                                    585 ;	.\I2C.c:102: P2_7 = 1;
                                    586 ;	assignBit
      000703 D2 A7            [12]  587 	setb	_P2_7
                                    588 ;	.\I2C.c:103: P2_7 = 0;
                                    589 ;	assignBit
      000705 C2 A7            [12]  590 	clr	_P2_7
                                    591 ;	.\I2C.c:104: }
      000707 22               [24]  592 	ret
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'stpcon_Handler'
                                    595 ;------------------------------------------------------------
                                    596 ;	.\I2C.c:106: void stpcon_Handler(void){
                                    597 ;	-----------------------------------------
                                    598 ;	 function stpcon_Handler
                                    599 ;	-----------------------------------------
      000708                        600 _stpcon_Handler:
                                    601 ;	.\I2C.c:107: P2_6 = 0;
                                    602 ;	assignBit
      000708 C2 A6            [12]  603 	clr	_P2_6
                                    604 ;	.\I2C.c:108: P2_7 = 1;
                                    605 ;	assignBit
      00070A D2 A7            [12]  606 	setb	_P2_7
                                    607 ;	.\I2C.c:109: P2_6 = 1;
                                    608 ;	assignBit
      00070C D2 A6            [12]  609 	setb	_P2_6
                                    610 ;	.\I2C.c:110: P2_7 = 0;
                                    611 ;	assignBit
      00070E C2 A7            [12]  612 	clr	_P2_7
                                    613 ;	.\I2C.c:111: }
      000710 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'read_Handler'
                                    617 ;------------------------------------------------------------
                                    618 ;i                         Allocated to registers r7 
                                    619 ;------------------------------------------------------------
                                    620 ;	.\I2C.c:115: void read_Handler(void){
                                    621 ;	-----------------------------------------
                                    622 ;	 function read_Handler
                                    623 ;	-----------------------------------------
      000711                        624 _read_Handler:
                                    625 ;	.\I2C.c:116: for(int i = 0; i < 8; i++){
      000711 7F 00            [12]  626 	mov	r7,#0x00
      000713                        627 00105$:
      000713 BF 08 00         [24]  628 	cjne	r7,#0x08,00128$
      000716                        629 00128$:
      000716 50 22            [24]  630 	jnc	00103$
                                    631 ;	.\I2C.c:117: P2_7 = 1;
                                    632 ;	assignBit
      000718 D2 A7            [12]  633 	setb	_P2_7
                                    634 ;	.\I2C.c:118: I2C_STATE.READ_DATA <<= 1;
      00071A E5 4A            [12]  635 	mov	a,(_I2C_STATE + 0x0008)
      00071C 25 E0            [12]  636 	add	a,acc
      00071E FD               [12]  637 	mov	r5,a
      00071F E5 4B            [12]  638 	mov	a,((_I2C_STATE + 0x0008) + 1)
      000721 33               [12]  639 	rlc	a
      000722 FE               [12]  640 	mov	r6,a
      000723 8D 4A            [24]  641 	mov	((_I2C_STATE + 0x0008) + 0),r5
      000725 8E 4B            [24]  642 	mov	((_I2C_STATE + 0x0008) + 1),r6
                                    643 ;	.\I2C.c:119: if(P2_6){
      000727 30 A6 0B         [24]  644 	jnb	_P2_6,00102$
                                    645 ;	.\I2C.c:120: I2C_STATE.READ_DATA |= 0x01;
      00072A 74 01            [12]  646 	mov	a,#0x01
      00072C 45 4A            [12]  647 	orl	a,(_I2C_STATE + 0x0008)
      00072E FD               [12]  648 	mov	r5,a
      00072F AE 4B            [24]  649 	mov	r6,((_I2C_STATE + 0x0008) + 1)
      000731 8D 4A            [24]  650 	mov	((_I2C_STATE + 0x0008) + 0),r5
      000733 8E 4B            [24]  651 	mov	((_I2C_STATE + 0x0008) + 1),r6
      000735                        652 00102$:
                                    653 ;	.\I2C.c:122: P2_7 = 0;
                                    654 ;	assignBit
      000735 C2 A7            [12]  655 	clr	_P2_7
                                    656 ;	.\I2C.c:116: for(int i = 0; i < 8; i++){
      000737 0F               [12]  657 	inc	r7
      000738 80 D9            [24]  658 	sjmp	00105$
      00073A                        659 00103$:
                                    660 ;	.\I2C.c:126: P2_6 = 1;
                                    661 ;	assignBit
      00073A D2 A6            [12]  662 	setb	_P2_6
                                    663 ;	.\I2C.c:127: P2_7 = 1;
                                    664 ;	assignBit
      00073C D2 A7            [12]  665 	setb	_P2_7
                                    666 ;	.\I2C.c:128: P2_7 = 0;
                                    667 ;	assignBit
      00073E C2 A7            [12]  668 	clr	_P2_7
                                    669 ;	.\I2C.c:131: I2C_STATE.READ_DATA <<= 4;
      000740 AE 4A            [24]  670 	mov	r6,(_I2C_STATE + 0x0008)
      000742 E5 4B            [12]  671 	mov	a,((_I2C_STATE + 0x0008) + 1)
      000744 C4               [12]  672 	swap	a
      000745 54 F0            [12]  673 	anl	a,#0xf0
      000747 CE               [12]  674 	xch	a,r6
      000748 C4               [12]  675 	swap	a
      000749 CE               [12]  676 	xch	a,r6
      00074A 6E               [12]  677 	xrl	a,r6
      00074B CE               [12]  678 	xch	a,r6
      00074C 54 F0            [12]  679 	anl	a,#0xf0
      00074E CE               [12]  680 	xch	a,r6
      00074F 6E               [12]  681 	xrl	a,r6
      000750 FF               [12]  682 	mov	r7,a
      000751 8E 4A            [24]  683 	mov	((_I2C_STATE + 0x0008) + 0),r6
      000753 8F 4B            [24]  684 	mov	((_I2C_STATE + 0x0008) + 1),r7
                                    685 ;	.\I2C.c:132: I2C_STATE.WRITE_AVAIL = 1;
      000755 75 4E 01         [24]  686 	mov	((_I2C_STATE + 0x000c) + 0),#0x01
      000758 75 4F 00         [24]  687 	mov	((_I2C_STATE + 0x000c) + 1),#0x00
                                    688 ;	.\I2C.c:133: }
      00075B 22               [24]  689 	ret
                                    690 	.area CSEG    (CODE)
                                    691 	.area CONST   (CODE)
                                    692 	.area XINIT   (CODE)
                                    693 	.area CABS    (ABS,CODE)
