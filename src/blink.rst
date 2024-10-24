                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module blink
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
                                    107 	.globl _blink
                                    108 ;--------------------------------------------------------
                                    109 ; special function registers
                                    110 ;--------------------------------------------------------
                                    111 	.area RSEG    (ABS,DATA)
      000000                        112 	.org 0x0000
                           000080   113 _P0	=	0x0080
                           000081   114 _SP	=	0x0081
                           000082   115 _DPL	=	0x0082
                           000083   116 _DPH	=	0x0083
                           000087   117 _PCON	=	0x0087
                           000088   118 _TCON	=	0x0088
                           000089   119 _TMOD	=	0x0089
                           00008A   120 _TL0	=	0x008a
                           00008B   121 _TL1	=	0x008b
                           00008C   122 _TH0	=	0x008c
                           00008D   123 _TH1	=	0x008d
                           000090   124 _P1	=	0x0090
                           000098   125 _SCON	=	0x0098
                           000099   126 _SBUF	=	0x0099
                           0000A0   127 _P2	=	0x00a0
                           0000A8   128 _IE	=	0x00a8
                           0000B0   129 _P3	=	0x00b0
                           0000B8   130 _IP	=	0x00b8
                           0000D0   131 _PSW	=	0x00d0
                           0000E0   132 _ACC	=	0x00e0
                           0000F0   133 _B	=	0x00f0
                                    134 ;--------------------------------------------------------
                                    135 ; special function bits
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0_0	=	0x0080
                           000081   140 _P0_1	=	0x0081
                           000082   141 _P0_2	=	0x0082
                           000083   142 _P0_3	=	0x0083
                           000084   143 _P0_4	=	0x0084
                           000085   144 _P0_5	=	0x0085
                           000086   145 _P0_6	=	0x0086
                           000087   146 _P0_7	=	0x0087
                           000088   147 _IT0	=	0x0088
                           000089   148 _IE0	=	0x0089
                           00008A   149 _IT1	=	0x008a
                           00008B   150 _IE1	=	0x008b
                           00008C   151 _TR0	=	0x008c
                           00008D   152 _TF0	=	0x008d
                           00008E   153 _TR1	=	0x008e
                           00008F   154 _TF1	=	0x008f
                           000090   155 _P1_0	=	0x0090
                           000091   156 _P1_1	=	0x0091
                           000092   157 _P1_2	=	0x0092
                           000093   158 _P1_3	=	0x0093
                           000094   159 _P1_4	=	0x0094
                           000095   160 _P1_5	=	0x0095
                           000096   161 _P1_6	=	0x0096
                           000097   162 _P1_7	=	0x0097
                           000098   163 _RI	=	0x0098
                           000099   164 _TI	=	0x0099
                           00009A   165 _RB8	=	0x009a
                           00009B   166 _TB8	=	0x009b
                           00009C   167 _REN	=	0x009c
                           00009D   168 _SM2	=	0x009d
                           00009E   169 _SM1	=	0x009e
                           00009F   170 _SM0	=	0x009f
                           0000A0   171 _P2_0	=	0x00a0
                           0000A1   172 _P2_1	=	0x00a1
                           0000A2   173 _P2_2	=	0x00a2
                           0000A3   174 _P2_3	=	0x00a3
                           0000A4   175 _P2_4	=	0x00a4
                           0000A5   176 _P2_5	=	0x00a5
                           0000A6   177 _P2_6	=	0x00a6
                           0000A7   178 _P2_7	=	0x00a7
                           0000A8   179 _EX0	=	0x00a8
                           0000A9   180 _ET0	=	0x00a9
                           0000AA   181 _EX1	=	0x00aa
                           0000AB   182 _ET1	=	0x00ab
                           0000AC   183 _ES	=	0x00ac
                           0000AF   184 _EA	=	0x00af
                           0000B0   185 _P3_0	=	0x00b0
                           0000B1   186 _P3_1	=	0x00b1
                           0000B2   187 _P3_2	=	0x00b2
                           0000B3   188 _P3_3	=	0x00b3
                           0000B4   189 _P3_4	=	0x00b4
                           0000B5   190 _P3_5	=	0x00b5
                           0000B6   191 _P3_6	=	0x00b6
                           0000B7   192 _P3_7	=	0x00b7
                           0000B0   193 _RXD	=	0x00b0
                           0000B1   194 _TXD	=	0x00b1
                           0000B2   195 _INT0	=	0x00b2
                           0000B3   196 _INT1	=	0x00b3
                           0000B4   197 _T0	=	0x00b4
                           0000B5   198 _T1	=	0x00b5
                           0000B6   199 _WR	=	0x00b6
                           0000B7   200 _RD	=	0x00b7
                           0000B8   201 _PX0	=	0x00b8
                           0000B9   202 _PT0	=	0x00b9
                           0000BA   203 _PX1	=	0x00ba
                           0000BB   204 _PT1	=	0x00bb
                           0000BC   205 _PS	=	0x00bc
                           0000D0   206 _P	=	0x00d0
                           0000D1   207 _F1	=	0x00d1
                           0000D2   208 _OV	=	0x00d2
                           0000D3   209 _RS0	=	0x00d3
                           0000D4   210 _RS1	=	0x00d4
                           0000D5   211 _F0	=	0x00d5
                           0000D6   212 _AC	=	0x00d6
                           0000D7   213 _CY	=	0x00d7
                                    214 ;--------------------------------------------------------
                                    215 ; overlayable register banks
                                    216 ;--------------------------------------------------------
                                    217 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        218 	.ds 8
                                    219 ;--------------------------------------------------------
                                    220 ; internal ram data
                                    221 ;--------------------------------------------------------
                                    222 	.area DSEG    (DATA)
      000032                        223 _binary_num:
      000032                        224 	.ds 2
      000034                        225 _cyclone:
      000034                        226 	.ds 2
      000036                        227 _direction:
      000036                        228 	.ds 2
      000038                        229 _counter:
      000038                        230 	.ds 2
      00003A                        231 _dual_cyclone:
      00003A                        232 	.ds 2
      00003C                        233 _reverse_cyclone:
      00003C                        234 	.ds 2
      00003E                        235 _dual_direction:
      00003E                        236 	.ds 2
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram
                                    239 ;--------------------------------------------------------
                                    240 ;--------------------------------------------------------
                                    241 ; indirectly addressable internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area ISEG    (DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; absolute internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area IABS    (ABS,DATA)
                                    248 	.area IABS    (ABS,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; bit data
                                    251 ;--------------------------------------------------------
                                    252 	.area BSEG    (BIT)
                                    253 ;--------------------------------------------------------
                                    254 ; paged external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area PSEG    (PAG,XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; uninitialized external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XSEG    (XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; initialized external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; global & static initialisations
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 ;	blink.c:10: static int cyclone = 1;
      0000B9 75 34 01         [24]  287 	mov	_cyclone,#0x01
      0000BC 75 35 00         [24]  288 	mov	(_cyclone + 1),#0x00
                                    289 ;	blink.c:11: static int direction = 0;
      0000BF E4               [12]  290 	clr	a
      0000C0 F5 36            [12]  291 	mov	_direction,a
      0000C2 F5 37            [12]  292 	mov	(_direction + 1),a
                                    293 ;	blink.c:14: static int dual_cyclone = 1;
      0000C4 75 3A 01         [24]  294 	mov	_dual_cyclone,#0x01
      0000C7 F5 3B            [12]  295 	mov	(_dual_cyclone + 1),a
                                    296 ;	blink.c:15: static int reverse_cyclone = 0b10000000;
      0000C9 75 3C 80         [24]  297 	mov	_reverse_cyclone,#0x80
      0000CC F5 3D            [12]  298 	mov	(_reverse_cyclone + 1),a
                                    299 ;	blink.c:16: static int dual_direction = 0;
      0000CE F5 3E            [12]  300 	mov	_dual_direction,a
      0000D0 F5 3F            [12]  301 	mov	(_dual_direction + 1),a
                                    302 ;--------------------------------------------------------
                                    303 ; Home
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
                                    306 	.area HOME    (CODE)
                                    307 ;--------------------------------------------------------
                                    308 ; code
                                    309 ;--------------------------------------------------------
                                    310 	.area CSEG    (CODE)
                                    311 ;------------------------------------------------------------
                                    312 ;Allocation info for local variables in function 'blink'
                                    313 ;------------------------------------------------------------
                                    314 ;mode                      Allocated to registers r6 r7 
                                    315 ;------------------------------------------------------------
                                    316 ;	blink.c:18: void blink(void){
                                    317 ;	-----------------------------------------
                                    318 ;	 function blink
                                    319 ;	-----------------------------------------
      00043D                        320 _blink:
                           000007   321 	ar7 = 0x07
                           000006   322 	ar6 = 0x06
                           000005   323 	ar5 = 0x05
                           000004   324 	ar4 = 0x04
                           000003   325 	ar3 = 0x03
                           000002   326 	ar2 = 0x02
                           000001   327 	ar1 = 0x01
                           000000   328 	ar0 = 0x00
                                    329 ;	blink.c:19: if(counter < 50){
      00043D C3               [12]  330 	clr	c
      00043E E5 38            [12]  331 	mov	a,_counter
      000440 94 32            [12]  332 	subb	a,#0x32
      000442 E5 39            [12]  333 	mov	a,(_counter + 1)
      000444 64 80            [12]  334 	xrl	a,#0x80
      000446 94 80            [12]  335 	subb	a,#0x80
      000448 50 09            [24]  336 	jnc	00102$
                                    337 ;	blink.c:20: counter++;
      00044A 05 38            [12]  338 	inc	_counter
      00044C E4               [12]  339 	clr	a
      00044D B5 38 02         [24]  340 	cjne	a,_counter,00215$
      000450 05 39            [12]  341 	inc	(_counter + 1)
      000452                        342 00215$:
                                    343 ;	blink.c:21: return;
      000452 22               [24]  344 	ret
      000453                        345 00102$:
                                    346 ;	blink.c:23: int mode = BLINK_MODE;
      000453 AE 30            [24]  347 	mov	r6,_BLINK_MODE
      000455 AF 31            [24]  348 	mov	r7,(_BLINK_MODE + 1)
                                    349 ;	blink.c:24: switch(mode){
      000457 BE 00 05         [24]  350 	cjne	r6,#0x00,00216$
      00045A BF 00 02         [24]  351 	cjne	r7,#0x00,00216$
      00045D 80 14            [24]  352 	sjmp	00103$
      00045F                        353 00216$:
      00045F BE 01 05         [24]  354 	cjne	r6,#0x01,00217$
      000462 BF 00 02         [24]  355 	cjne	r7,#0x00,00217$
      000465 80 2D            [24]  356 	sjmp	00104$
      000467                        357 00217$:
      000467 BE 02 06         [24]  358 	cjne	r6,#0x02,00218$
      00046A BF 00 03         [24]  359 	cjne	r7,#0x00,00218$
      00046D 02 04 F7         [24]  360 	ljmp	00115$
      000470                        361 00218$:
      000470 02 05 76         [24]  362 	ljmp	00126$
                                    363 ;	blink.c:25: case 0:
      000473                        364 00103$:
                                    365 ;	blink.c:26: P1 = ~(binary_num);
      000473 E5 32            [12]  366 	mov	a,_binary_num
      000475 F4               [12]  367 	cpl	a
      000476 F5 90            [12]  368 	mov	_P1,a
                                    369 ;	blink.c:27: binary_num = (binary_num + 1) % 256;
      000478 85 32 82         [24]  370 	mov	dpl,_binary_num
      00047B 85 33 83         [24]  371 	mov	dph,(_binary_num + 1)
      00047E A3               [24]  372 	inc	dptr
      00047F 75 55 00         [24]  373 	mov	__modsint_PARM_2,#0x00
      000482 75 56 01         [24]  374 	mov	(__modsint_PARM_2 + 1),#0x01
      000485 12 09 A5         [24]  375 	lcall	__modsint
      000488 85 82 32         [24]  376 	mov	_binary_num,dpl
      00048B 85 83 33         [24]  377 	mov	(_binary_num + 1),dph
                                    378 ;	blink.c:28: counter = 0;
      00048E E4               [12]  379 	clr	a
      00048F F5 38            [12]  380 	mov	_counter,a
      000491 F5 39            [12]  381 	mov	(_counter + 1),a
                                    382 ;	blink.c:29: break;
      000493 22               [24]  383 	ret
                                    384 ;	blink.c:30: case 1:
      000494                        385 00104$:
                                    386 ;	blink.c:31: P1 = ~(cyclone);
      000494 E5 34            [12]  387 	mov	a,_cyclone
      000496 F4               [12]  388 	cpl	a
      000497 F5 90            [12]  389 	mov	_P1,a
                                    390 ;	blink.c:32: if(cyclone == 0b10000000 && direction == 0){
      000499 74 80            [12]  391 	mov	a,#0x80
      00049B B5 34 06         [24]  392 	cjne	a,_cyclone,00219$
      00049E E4               [12]  393 	clr	a
      00049F B5 35 02         [24]  394 	cjne	a,(_cyclone + 1),00219$
      0004A2 80 02            [24]  395 	sjmp	00220$
      0004A4                        396 00219$:
      0004A4 80 0D            [24]  397 	sjmp	00109$
      0004A6                        398 00220$:
      0004A6 E5 36            [12]  399 	mov	a,_direction
      0004A8 45 37            [12]  400 	orl	a,(_direction + 1)
                                    401 ;	blink.c:33: direction = 1;
      0004AA 70 07            [24]  402 	jnz	00109$
      0004AC 75 36 01         [24]  403 	mov	_direction,#0x01
      0004AF F5 37            [12]  404 	mov	(_direction + 1),a
      0004B1 80 1F            [24]  405 	sjmp	00110$
      0004B3                        406 00109$:
                                    407 ;	blink.c:34: } else if (cyclone == 1 && direction == 1){
      0004B3 74 01            [12]  408 	mov	a,#0x01
      0004B5 B5 34 06         [24]  409 	cjne	a,_cyclone,00222$
      0004B8 14               [12]  410 	dec	a
      0004B9 B5 35 02         [24]  411 	cjne	a,(_cyclone + 1),00222$
      0004BC 80 02            [24]  412 	sjmp	00223$
      0004BE                        413 00222$:
      0004BE 80 12            [24]  414 	sjmp	00110$
      0004C0                        415 00223$:
      0004C0 74 01            [12]  416 	mov	a,#0x01
      0004C2 B5 36 06         [24]  417 	cjne	a,_direction,00224$
      0004C5 14               [12]  418 	dec	a
      0004C6 B5 37 02         [24]  419 	cjne	a,(_direction + 1),00224$
      0004C9 80 02            [24]  420 	sjmp	00225$
      0004CB                        421 00224$:
      0004CB 80 05            [24]  422 	sjmp	00110$
      0004CD                        423 00225$:
                                    424 ;	blink.c:35: direction = 0;
      0004CD E4               [12]  425 	clr	a
      0004CE F5 36            [12]  426 	mov	_direction,a
      0004D0 F5 37            [12]  427 	mov	(_direction + 1),a
      0004D2                        428 00110$:
                                    429 ;	blink.c:38: if(direction == 0){
      0004D2 E5 36            [12]  430 	mov	a,_direction
      0004D4 45 37            [12]  431 	orl	a,(_direction + 1)
      0004D6 70 0D            [24]  432 	jnz	00113$
                                    433 ;	blink.c:39: cyclone <<= 1;
      0004D8 E5 34            [12]  434 	mov	a,_cyclone
      0004DA 25 34            [12]  435 	add	a,_cyclone
      0004DC F5 34            [12]  436 	mov	_cyclone,a
      0004DE E5 35            [12]  437 	mov	a,(_cyclone + 1)
      0004E0 33               [12]  438 	rlc	a
      0004E1 F5 35            [12]  439 	mov	(_cyclone + 1),a
      0004E3 80 0C            [24]  440 	sjmp	00114$
      0004E5                        441 00113$:
                                    442 ;	blink.c:41: cyclone >>= 1;
      0004E5 E5 35            [12]  443 	mov	a,(_cyclone + 1)
      0004E7 A2 E7            [12]  444 	mov	c,acc.7
      0004E9 13               [12]  445 	rrc	a
      0004EA C5 34            [12]  446 	xch	a,_cyclone
      0004EC 13               [12]  447 	rrc	a
      0004ED C5 34            [12]  448 	xch	a,_cyclone
      0004EF F5 35            [12]  449 	mov	(_cyclone + 1),a
      0004F1                        450 00114$:
                                    451 ;	blink.c:43: counter = 0;
      0004F1 E4               [12]  452 	clr	a
      0004F2 F5 38            [12]  453 	mov	_counter,a
      0004F4 F5 39            [12]  454 	mov	(_counter + 1),a
                                    455 ;	blink.c:44: break;
      0004F6 22               [24]  456 	ret
                                    457 ;	blink.c:45: case 2:
      0004F7                        458 00115$:
                                    459 ;	blink.c:46: P1 = ~(dual_cyclone | reverse_cyclone);
      0004F7 AF 3A            [24]  460 	mov	r7,_dual_cyclone
      0004F9 E5 3C            [12]  461 	mov	a,_reverse_cyclone
      0004FB 42 07            [12]  462 	orl	ar7,a
      0004FD EF               [12]  463 	mov	a,r7
      0004FE F4               [12]  464 	cpl	a
      0004FF F5 90            [12]  465 	mov	_P1,a
                                    466 ;	blink.c:47: if(reverse_cyclone == 1 && dual_direction == 0){
      000501 74 01            [12]  467 	mov	a,#0x01
      000503 B5 3C 06         [24]  468 	cjne	a,_reverse_cyclone,00227$
      000506 14               [12]  469 	dec	a
      000507 B5 3D 02         [24]  470 	cjne	a,(_reverse_cyclone + 1),00227$
      00050A 80 02            [24]  471 	sjmp	00228$
      00050C                        472 00227$:
      00050C 80 0D            [24]  473 	sjmp	00120$
      00050E                        474 00228$:
      00050E E5 3E            [12]  475 	mov	a,_dual_direction
      000510 45 3F            [12]  476 	orl	a,(_dual_direction + 1)
                                    477 ;	blink.c:48: dual_direction = 1;
      000512 70 07            [24]  478 	jnz	00120$
      000514 75 3E 01         [24]  479 	mov	_dual_direction,#0x01
      000517 F5 3F            [12]  480 	mov	(_dual_direction + 1),a
      000519 80 1F            [24]  481 	sjmp	00121$
      00051B                        482 00120$:
                                    483 ;	blink.c:49: } else if (dual_cyclone == 1 && dual_direction == 1){
      00051B 74 01            [12]  484 	mov	a,#0x01
      00051D B5 3A 06         [24]  485 	cjne	a,_dual_cyclone,00230$
      000520 14               [12]  486 	dec	a
      000521 B5 3B 02         [24]  487 	cjne	a,(_dual_cyclone + 1),00230$
      000524 80 02            [24]  488 	sjmp	00231$
      000526                        489 00230$:
      000526 80 12            [24]  490 	sjmp	00121$
      000528                        491 00231$:
      000528 74 01            [12]  492 	mov	a,#0x01
      00052A B5 3E 06         [24]  493 	cjne	a,_dual_direction,00232$
      00052D 14               [12]  494 	dec	a
      00052E B5 3F 02         [24]  495 	cjne	a,(_dual_direction + 1),00232$
      000531 80 02            [24]  496 	sjmp	00233$
      000533                        497 00232$:
      000533 80 05            [24]  498 	sjmp	00121$
      000535                        499 00233$:
                                    500 ;	blink.c:50: dual_direction = 0;
      000535 E4               [12]  501 	clr	a
      000536 F5 3E            [12]  502 	mov	_dual_direction,a
      000538 F5 3F            [12]  503 	mov	(_dual_direction + 1),a
      00053A                        504 00121$:
                                    505 ;	blink.c:53: if(dual_direction == 0){
      00053A E5 3E            [12]  506 	mov	a,_dual_direction
      00053C 45 3F            [12]  507 	orl	a,(_dual_direction + 1)
      00053E 70 19            [24]  508 	jnz	00124$
                                    509 ;	blink.c:54: dual_cyclone <<= 1;
      000540 E5 3A            [12]  510 	mov	a,_dual_cyclone
      000542 25 3A            [12]  511 	add	a,_dual_cyclone
      000544 F5 3A            [12]  512 	mov	_dual_cyclone,a
      000546 E5 3B            [12]  513 	mov	a,(_dual_cyclone + 1)
      000548 33               [12]  514 	rlc	a
      000549 F5 3B            [12]  515 	mov	(_dual_cyclone + 1),a
                                    516 ;	blink.c:55: reverse_cyclone >>= 1;
      00054B E5 3D            [12]  517 	mov	a,(_reverse_cyclone + 1)
      00054D A2 E7            [12]  518 	mov	c,acc.7
      00054F 13               [12]  519 	rrc	a
      000550 C5 3C            [12]  520 	xch	a,_reverse_cyclone
      000552 13               [12]  521 	rrc	a
      000553 C5 3C            [12]  522 	xch	a,_reverse_cyclone
      000555 F5 3D            [12]  523 	mov	(_reverse_cyclone + 1),a
      000557 80 17            [24]  524 	sjmp	00125$
      000559                        525 00124$:
                                    526 ;	blink.c:57: dual_cyclone >>= 1;
      000559 E5 3B            [12]  527 	mov	a,(_dual_cyclone + 1)
      00055B A2 E7            [12]  528 	mov	c,acc.7
      00055D 13               [12]  529 	rrc	a
      00055E C5 3A            [12]  530 	xch	a,_dual_cyclone
      000560 13               [12]  531 	rrc	a
      000561 C5 3A            [12]  532 	xch	a,_dual_cyclone
      000563 F5 3B            [12]  533 	mov	(_dual_cyclone + 1),a
                                    534 ;	blink.c:58: reverse_cyclone <<= 1;
      000565 E5 3C            [12]  535 	mov	a,_reverse_cyclone
      000567 25 3C            [12]  536 	add	a,_reverse_cyclone
      000569 F5 3C            [12]  537 	mov	_reverse_cyclone,a
      00056B E5 3D            [12]  538 	mov	a,(_reverse_cyclone + 1)
      00056D 33               [12]  539 	rlc	a
      00056E F5 3D            [12]  540 	mov	(_reverse_cyclone + 1),a
      000570                        541 00125$:
                                    542 ;	blink.c:60: counter = 0;
      000570 E4               [12]  543 	clr	a
      000571 F5 38            [12]  544 	mov	_counter,a
      000573 F5 39            [12]  545 	mov	(_counter + 1),a
                                    546 ;	blink.c:61: break;
                                    547 ;	blink.c:62: default:
      000575 22               [24]  548 	ret
      000576                        549 00126$:
                                    550 ;	blink.c:63: counter = 0;
      000576 E4               [12]  551 	clr	a
      000577 F5 38            [12]  552 	mov	_counter,a
      000579 F5 39            [12]  553 	mov	(_counter + 1),a
                                    554 ;	blink.c:65: }
                                    555 ;	blink.c:66: }
      00057B 22               [24]  556 	ret
                                    557 	.area CSEG    (CODE)
                                    558 	.area CONST   (CODE)
                                    559 	.area XINIT   (CODE)
                                    560 	.area CABS    (ABS,CODE)
