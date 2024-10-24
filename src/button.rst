                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module button
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _button_poll
                                    108 	.globl _button_handle
                                    109 ;--------------------------------------------------------
                                    110 ; special function registers
                                    111 ;--------------------------------------------------------
                                    112 	.area RSEG    (ABS,DATA)
      000000                        113 	.org 0x0000
                           000080   114 _P0	=	0x0080
                           000081   115 _SP	=	0x0081
                           000082   116 _DPL	=	0x0082
                           000083   117 _DPH	=	0x0083
                           000087   118 _PCON	=	0x0087
                           000088   119 _TCON	=	0x0088
                           000089   120 _TMOD	=	0x0089
                           00008A   121 _TL0	=	0x008a
                           00008B   122 _TL1	=	0x008b
                           00008C   123 _TH0	=	0x008c
                           00008D   124 _TH1	=	0x008d
                           000090   125 _P1	=	0x0090
                           000098   126 _SCON	=	0x0098
                           000099   127 _SBUF	=	0x0099
                           0000A0   128 _P2	=	0x00a0
                           0000A8   129 _IE	=	0x00a8
                           0000B0   130 _P3	=	0x00b0
                           0000B8   131 _IP	=	0x00b8
                           0000D0   132 _PSW	=	0x00d0
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                                    135 ;--------------------------------------------------------
                                    136 ; special function bits
                                    137 ;--------------------------------------------------------
                                    138 	.area RSEG    (ABS,DATA)
      000000                        139 	.org 0x0000
                           000080   140 _P0_0	=	0x0080
                           000081   141 _P0_1	=	0x0081
                           000082   142 _P0_2	=	0x0082
                           000083   143 _P0_3	=	0x0083
                           000084   144 _P0_4	=	0x0084
                           000085   145 _P0_5	=	0x0085
                           000086   146 _P0_6	=	0x0086
                           000087   147 _P0_7	=	0x0087
                           000088   148 _IT0	=	0x0088
                           000089   149 _IE0	=	0x0089
                           00008A   150 _IT1	=	0x008a
                           00008B   151 _IE1	=	0x008b
                           00008C   152 _TR0	=	0x008c
                           00008D   153 _TF0	=	0x008d
                           00008E   154 _TR1	=	0x008e
                           00008F   155 _TF1	=	0x008f
                           000090   156 _P1_0	=	0x0090
                           000091   157 _P1_1	=	0x0091
                           000092   158 _P1_2	=	0x0092
                           000093   159 _P1_3	=	0x0093
                           000094   160 _P1_4	=	0x0094
                           000095   161 _P1_5	=	0x0095
                           000096   162 _P1_6	=	0x0096
                           000097   163 _P1_7	=	0x0097
                           000098   164 _RI	=	0x0098
                           000099   165 _TI	=	0x0099
                           00009A   166 _RB8	=	0x009a
                           00009B   167 _TB8	=	0x009b
                           00009C   168 _REN	=	0x009c
                           00009D   169 _SM2	=	0x009d
                           00009E   170 _SM1	=	0x009e
                           00009F   171 _SM0	=	0x009f
                           0000A0   172 _P2_0	=	0x00a0
                           0000A1   173 _P2_1	=	0x00a1
                           0000A2   174 _P2_2	=	0x00a2
                           0000A3   175 _P2_3	=	0x00a3
                           0000A4   176 _P2_4	=	0x00a4
                           0000A5   177 _P2_5	=	0x00a5
                           0000A6   178 _P2_6	=	0x00a6
                           0000A7   179 _P2_7	=	0x00a7
                           0000A8   180 _EX0	=	0x00a8
                           0000A9   181 _ET0	=	0x00a9
                           0000AA   182 _EX1	=	0x00aa
                           0000AB   183 _ET1	=	0x00ab
                           0000AC   184 _ES	=	0x00ac
                           0000AF   185 _EA	=	0x00af
                           0000B0   186 _P3_0	=	0x00b0
                           0000B1   187 _P3_1	=	0x00b1
                           0000B2   188 _P3_2	=	0x00b2
                           0000B3   189 _P3_3	=	0x00b3
                           0000B4   190 _P3_4	=	0x00b4
                           0000B5   191 _P3_5	=	0x00b5
                           0000B6   192 _P3_6	=	0x00b6
                           0000B7   193 _P3_7	=	0x00b7
                           0000B0   194 _RXD	=	0x00b0
                           0000B1   195 _TXD	=	0x00b1
                           0000B2   196 _INT0	=	0x00b2
                           0000B3   197 _INT1	=	0x00b3
                           0000B4   198 _T0	=	0x00b4
                           0000B5   199 _T1	=	0x00b5
                           0000B6   200 _WR	=	0x00b6
                           0000B7   201 _RD	=	0x00b7
                           0000B8   202 _PX0	=	0x00b8
                           0000B9   203 _PT0	=	0x00b9
                           0000BA   204 _PX1	=	0x00ba
                           0000BB   205 _PT1	=	0x00bb
                           0000BC   206 _PS	=	0x00bc
                           0000D0   207 _P	=	0x00d0
                           0000D1   208 _F1	=	0x00d1
                           0000D2   209 _OV	=	0x00d2
                           0000D3   210 _RS0	=	0x00d3
                           0000D4   211 _RS1	=	0x00d4
                           0000D5   212 _F0	=	0x00d5
                           0000D6   213 _AC	=	0x00d6
                           0000D7   214 _CY	=	0x00d7
                                    215 ;--------------------------------------------------------
                                    216 ; overlayable register banks
                                    217 ;--------------------------------------------------------
                                    218 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        219 	.ds 8
                                    220 ;--------------------------------------------------------
                                    221 ; internal ram data
                                    222 ;--------------------------------------------------------
                                    223 	.area DSEG    (DATA)
      000026                        224 _S1_COUNT:
      000026                        225 	.ds 2
      000028                        226 _S2_COUNT:
      000028                        227 	.ds 2
      00002A                        228 _S3_COUNT:
      00002A                        229 	.ds 2
      00002C                        230 _S4_COUNT:
      00002C                        231 	.ds 2
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram
                                    234 ;--------------------------------------------------------
                                    235 ;--------------------------------------------------------
                                    236 ; indirectly addressable internal ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area ISEG    (DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; absolute internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area IABS    (ABS,DATA)
                                    243 	.area IABS    (ABS,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; bit data
                                    246 ;--------------------------------------------------------
                                    247 	.area BSEG    (BIT)
                                    248 ;--------------------------------------------------------
                                    249 ; paged external ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area PSEG    (PAG,XDATA)
                                    252 ;--------------------------------------------------------
                                    253 ; uninitialized external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XSEG    (XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XABS    (ABS,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; initialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XISEG   (XDATA)
                                    264 	.area HOME    (CODE)
                                    265 	.area GSINIT0 (CODE)
                                    266 	.area GSINIT1 (CODE)
                                    267 	.area GSINIT2 (CODE)
                                    268 	.area GSINIT3 (CODE)
                                    269 	.area GSINIT4 (CODE)
                                    270 	.area GSINIT5 (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area CSEG    (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; global & static initialisations
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; Home
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area HOME    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; code
                                    288 ;--------------------------------------------------------
                                    289 	.area CSEG    (CODE)
                                    290 ;------------------------------------------------------------
                                    291 ;Allocation info for local variables in function 'button_poll'
                                    292 ;------------------------------------------------------------
                                    293 ;button_press              Allocated to registers r6 r7 
                                    294 ;pressed                   Allocated to registers 
                                    295 ;------------------------------------------------------------
                                    296 ;	button.c:14: void button_poll(void){
                                    297 ;	-----------------------------------------
                                    298 ;	 function button_poll
                                    299 ;	-----------------------------------------
      000314                        300 _button_poll:
                           000007   301 	ar7 = 0x07
                           000006   302 	ar6 = 0x06
                           000005   303 	ar5 = 0x05
                           000004   304 	ar4 = 0x04
                           000003   305 	ar3 = 0x03
                           000002   306 	ar2 = 0x02
                           000001   307 	ar1 = 0x01
                           000000   308 	ar0 = 0x00
                                    309 ;	button.c:15: int button_press = 0x00;
      000314 7E 00            [12]  310 	mov	r6,#0x00
      000316 7F 00            [12]  311 	mov	r7,#0x00
                                    312 ;	button.c:18: if(P3_5 == 0){
      000318 20 B5 0A         [24]  313 	jb	_P3_5,00104$
                                    314 ;	button.c:19: S1_COUNT++;
      00031B 05 26            [12]  315 	inc	_S1_COUNT
      00031D E4               [12]  316 	clr	a
      00031E B5 26 1D         [24]  317 	cjne	a,_S1_COUNT,00105$
      000321 05 27            [12]  318 	inc	(_S1_COUNT + 1)
      000323 80 19            [24]  319 	sjmp	00105$
      000325                        320 00104$:
                                    321 ;	button.c:20: } else if (S1_COUNT > 4){
      000325 C3               [12]  322 	clr	c
      000326 74 04            [12]  323 	mov	a,#0x04
      000328 95 26            [12]  324 	subb	a,_S1_COUNT
      00032A 74 80            [12]  325 	mov	a,#(0x00 ^ 0x80)
      00032C 85 27 F0         [24]  326 	mov	b,(_S1_COUNT + 1)
      00032F 63 F0 80         [24]  327 	xrl	b,#0x80
      000332 95 F0            [12]  328 	subb	a,b
      000334 50 08            [24]  329 	jnc	00105$
                                    330 ;	button.c:21: button_press |= 0x08;
      000336 7E 08            [12]  331 	mov	r6,#0x08
                                    332 ;	button.c:22: S1_COUNT = 0;
      000338 E4               [12]  333 	clr	a
      000339 FF               [12]  334 	mov	r7,a
      00033A F5 26            [12]  335 	mov	_S1_COUNT,a
      00033C F5 27            [12]  336 	mov	(_S1_COUNT + 1),a
      00033E                        337 00105$:
                                    338 ;	button.c:26: if(P3_4 == 0){
      00033E 20 B4 0A         [24]  339 	jb	_P3_4,00109$
                                    340 ;	button.c:27: S2_COUNT++;
      000341 05 28            [12]  341 	inc	_S2_COUNT
      000343 E4               [12]  342 	clr	a
      000344 B5 28 1D         [24]  343 	cjne	a,_S2_COUNT,00110$
      000347 05 29            [12]  344 	inc	(_S2_COUNT + 1)
      000349 80 19            [24]  345 	sjmp	00110$
      00034B                        346 00109$:
                                    347 ;	button.c:28: } else if (S2_COUNT > 4){
      00034B C3               [12]  348 	clr	c
      00034C 74 04            [12]  349 	mov	a,#0x04
      00034E 95 28            [12]  350 	subb	a,_S2_COUNT
      000350 74 80            [12]  351 	mov	a,#(0x00 ^ 0x80)
      000352 85 29 F0         [24]  352 	mov	b,(_S2_COUNT + 1)
      000355 63 F0 80         [24]  353 	xrl	b,#0x80
      000358 95 F0            [12]  354 	subb	a,b
      00035A 50 08            [24]  355 	jnc	00110$
                                    356 ;	button.c:29: button_press |= 0x04;
      00035C 43 06 04         [24]  357 	orl	ar6,#0x04
                                    358 ;	button.c:30: S2_COUNT = 0;
      00035F E4               [12]  359 	clr	a
      000360 F5 28            [12]  360 	mov	_S2_COUNT,a
      000362 F5 29            [12]  361 	mov	(_S2_COUNT + 1),a
      000364                        362 00110$:
                                    363 ;	button.c:35: if(P3_3 == 0){
      000364 20 B3 0A         [24]  364 	jb	_P3_3,00114$
                                    365 ;	button.c:36: S3_COUNT++;
      000367 05 2A            [12]  366 	inc	_S3_COUNT
      000369 E4               [12]  367 	clr	a
      00036A B5 2A 1D         [24]  368 	cjne	a,_S3_COUNT,00115$
      00036D 05 2B            [12]  369 	inc	(_S3_COUNT + 1)
      00036F 80 19            [24]  370 	sjmp	00115$
      000371                        371 00114$:
                                    372 ;	button.c:37: } else if (S3_COUNT > 4){
      000371 C3               [12]  373 	clr	c
      000372 74 04            [12]  374 	mov	a,#0x04
      000374 95 2A            [12]  375 	subb	a,_S3_COUNT
      000376 74 80            [12]  376 	mov	a,#(0x00 ^ 0x80)
      000378 85 2B F0         [24]  377 	mov	b,(_S3_COUNT + 1)
      00037B 63 F0 80         [24]  378 	xrl	b,#0x80
      00037E 95 F0            [12]  379 	subb	a,b
      000380 50 08            [24]  380 	jnc	00115$
                                    381 ;	button.c:38: button_press |= 0x02;
      000382 43 06 02         [24]  382 	orl	ar6,#0x02
                                    383 ;	button.c:39: S3_COUNT = 0;
      000385 E4               [12]  384 	clr	a
      000386 F5 2A            [12]  385 	mov	_S3_COUNT,a
      000388 F5 2B            [12]  386 	mov	(_S3_COUNT + 1),a
      00038A                        387 00115$:
                                    388 ;	button.c:44: if(P3_2 == 0){
      00038A 20 B2 0A         [24]  389 	jb	_P3_2,00119$
                                    390 ;	button.c:45: S4_COUNT++;
      00038D 05 2C            [12]  391 	inc	_S4_COUNT
      00038F E4               [12]  392 	clr	a
      000390 B5 2C 1D         [24]  393 	cjne	a,_S4_COUNT,00120$
      000393 05 2D            [12]  394 	inc	(_S4_COUNT + 1)
      000395 80 19            [24]  395 	sjmp	00120$
      000397                        396 00119$:
                                    397 ;	button.c:46: } else if (S4_COUNT > 4){
      000397 C3               [12]  398 	clr	c
      000398 74 04            [12]  399 	mov	a,#0x04
      00039A 95 2C            [12]  400 	subb	a,_S4_COUNT
      00039C 74 80            [12]  401 	mov	a,#(0x00 ^ 0x80)
      00039E 85 2D F0         [24]  402 	mov	b,(_S4_COUNT + 1)
      0003A1 63 F0 80         [24]  403 	xrl	b,#0x80
      0003A4 95 F0            [12]  404 	subb	a,b
      0003A6 50 08            [24]  405 	jnc	00120$
                                    406 ;	button.c:47: button_press |= 0x01;
      0003A8 43 06 01         [24]  407 	orl	ar6,#0x01
                                    408 ;	button.c:48: S4_COUNT = 0;
      0003AB E4               [12]  409 	clr	a
      0003AC F5 2C            [12]  410 	mov	_S4_COUNT,a
      0003AE F5 2D            [12]  411 	mov	(_S4_COUNT + 1),a
      0003B0                        412 00120$:
                                    413 ;	button.c:50: button_handle(button_press);
      0003B0 8E 82            [24]  414 	mov	dpl, r6
      0003B2 8F 83            [24]  415 	mov	dph, r7
                                    416 ;	button.c:51: }
      0003B4 02 03 B7         [24]  417 	ljmp	_button_handle
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'button_handle'
                                    420 ;------------------------------------------------------------
                                    421 ;button_press              Allocated to registers r6 r7 
                                    422 ;------------------------------------------------------------
                                    423 ;	button.c:54: void button_handle(int button_press){
                                    424 ;	-----------------------------------------
                                    425 ;	 function button_handle
                                    426 ;	-----------------------------------------
      0003B7                        427 _button_handle:
      0003B7 AE 82            [24]  428 	mov	r6, dpl
      0003B9 AF 83            [24]  429 	mov	r7, dph
                                    430 ;	button.c:61: if(button_press & 1){
      0003BB EE               [12]  431 	mov	a,r6
      0003BC 30 E0 06         [24]  432 	jnb	acc.0,00102$
                                    433 ;	button.c:62: SCREEN_FLAG = 0x0F;
      0003BF 75 2E 0F         [24]  434 	mov	_SCREEN_FLAG,#0x0f
      0003C2 75 2F 00         [24]  435 	mov	(_SCREEN_FLAG + 1),#0x00
      0003C5                        436 00102$:
                                    437 ;	button.c:66: button_press >>= 1;
      0003C5 EF               [12]  438 	mov	a,r7
      0003C6 A2 E7            [12]  439 	mov	c,acc.7
      0003C8 13               [12]  440 	rrc	a
      0003C9 CE               [12]  441 	xch	a,r6
      0003CA 13               [12]  442 	rrc	a
      0003CB CE               [12]  443 	xch	a,r6
      0003CC FF               [12]  444 	mov	r7,a
                                    445 ;	button.c:68: if(button_press & 1){
      0003CD EE               [12]  446 	mov	a,r6
      0003CE 30 E0 06         [24]  447 	jnb	acc.0,00104$
                                    448 ;	button.c:69: SCREEN_FLAG = 0xF0;
      0003D1 75 2E F0         [24]  449 	mov	_SCREEN_FLAG,#0xf0
      0003D4 75 2F 00         [24]  450 	mov	(_SCREEN_FLAG + 1),#0x00
      0003D7                        451 00104$:
                                    452 ;	button.c:73: button_press >>= 1; 
      0003D7 EF               [12]  453 	mov	a,r7
      0003D8 A2 E7            [12]  454 	mov	c,acc.7
      0003DA 13               [12]  455 	rrc	a
      0003DB CE               [12]  456 	xch	a,r6
      0003DC 13               [12]  457 	rrc	a
      0003DD CE               [12]  458 	xch	a,r6
                                    459 ;	button.c:79: button_press >>= 1; 
      0003DE A2 E7            [12]  460 	mov	c,acc.7
      0003E0 13               [12]  461 	rrc	a
      0003E1 CE               [12]  462 	xch	a,r6
      0003E2 13               [12]  463 	rrc	a
      0003E3 CE               [12]  464 	xch	a,r6
                                    465 ;	button.c:81: if(button_press & 1){
      0003E4 EE               [12]  466 	mov	a,r6
      0003E5 30 E0 16         [24]  467 	jnb	acc.0,00107$
                                    468 ;	button.c:83: BLINK_MODE = (BLINK_MODE + 1) % 3;
      0003E8 85 30 82         [24]  469 	mov	dpl,_BLINK_MODE
      0003EB 85 31 83         [24]  470 	mov	dph,(_BLINK_MODE + 1)
      0003EE A3               [24]  471 	inc	dptr
      0003EF 75 55 03         [24]  472 	mov	__modsint_PARM_2,#0x03
      0003F2 75 56 00         [24]  473 	mov	(__modsint_PARM_2 + 1),#0x00
      0003F5 12 09 A5         [24]  474 	lcall	__modsint
      0003F8 85 82 30         [24]  475 	mov	_BLINK_MODE,dpl
      0003FB 85 83 31         [24]  476 	mov	(_BLINK_MODE + 1),dph
      0003FE                        477 00107$:
                                    478 ;	button.c:87: }
      0003FE 22               [24]  479 	ret
                                    480 	.area CSEG    (CODE)
                                    481 	.area CONST   (CODE)
                                    482 	.area XINIT   (CODE)
                                    483 	.area CABS    (ABS,CODE)
