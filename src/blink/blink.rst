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
      000034                        223 _binary_num:
      000034                        224 	.ds 2
      000036                        225 _cyclone:
      000036                        226 	.ds 2
      000038                        227 _direction:
      000038                        228 	.ds 2
      00003A                        229 _counter:
      00003A                        230 	.ds 2
      00003C                        231 _dual_cyclone:
      00003C                        232 	.ds 2
      00003E                        233 _reverse_cyclone:
      00003E                        234 	.ds 2
      000040                        235 _dual_direction:
      000040                        236 	.ds 2
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
                                    286 ;	.\blink.c:10: static int cyclone = 1;
      0000D8 75 36 01         [24]  287 	mov	_cyclone,#0x01
      0000DB 75 37 00         [24]  288 	mov	(_cyclone + 1),#0x00
                                    289 ;	.\blink.c:11: static int direction = 0;
      0000DE E4               [12]  290 	clr	a
      0000DF F5 38            [12]  291 	mov	_direction,a
      0000E1 F5 39            [12]  292 	mov	(_direction + 1),a
                                    293 ;	.\blink.c:14: static int dual_cyclone = 1;
      0000E3 75 3C 01         [24]  294 	mov	_dual_cyclone,#0x01
      0000E6 F5 3D            [12]  295 	mov	(_dual_cyclone + 1),a
                                    296 ;	.\blink.c:15: static int reverse_cyclone = 0b10000000;
      0000E8 75 3E 80         [24]  297 	mov	_reverse_cyclone,#0x80
      0000EB F5 3F            [12]  298 	mov	(_reverse_cyclone + 1),a
                                    299 ;	.\blink.c:16: static int dual_direction = 0;
      0000ED F5 40            [12]  300 	mov	_dual_direction,a
      0000EF F5 41            [12]  301 	mov	(_dual_direction + 1),a
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
                                    316 ;	.\blink.c:18: void blink(void){
                                    317 ;	-----------------------------------------
                                    318 ;	 function blink
                                    319 ;	-----------------------------------------
      000497                        320 _blink:
                           000007   321 	ar7 = 0x07
                           000006   322 	ar6 = 0x06
                           000005   323 	ar5 = 0x05
                           000004   324 	ar4 = 0x04
                           000003   325 	ar3 = 0x03
                           000002   326 	ar2 = 0x02
                           000001   327 	ar1 = 0x01
                           000000   328 	ar0 = 0x00
                                    329 ;	.\blink.c:19: if(BLINK_COUNTER < 50){
      000497 C3               [12]  330 	clr	c
      000498 E5 32            [12]  331 	mov	a,_BLINK_COUNTER
      00049A 94 32            [12]  332 	subb	a,#0x32
      00049C E5 33            [12]  333 	mov	a,(_BLINK_COUNTER + 1)
      00049E 64 80            [12]  334 	xrl	a,#0x80
      0004A0 94 80            [12]  335 	subb	a,#0x80
      0004A2 50 01            [24]  336 	jnc	00102$
                                    337 ;	.\blink.c:20: return;
      0004A4 22               [24]  338 	ret
      0004A5                        339 00102$:
                                    340 ;	.\blink.c:22: int mode = BLINK_MODE;
      0004A5 AE 30            [24]  341 	mov	r6,_BLINK_MODE
      0004A7 AF 31            [24]  342 	mov	r7,(_BLINK_MODE + 1)
                                    343 ;	.\blink.c:23: switch(mode){
      0004A9 BE 00 05         [24]  344 	cjne	r6,#0x00,00215$
      0004AC BF 00 02         [24]  345 	cjne	r7,#0x00,00215$
      0004AF 80 14            [24]  346 	sjmp	00103$
      0004B1                        347 00215$:
      0004B1 BE 01 05         [24]  348 	cjne	r6,#0x01,00216$
      0004B4 BF 00 02         [24]  349 	cjne	r7,#0x00,00216$
      0004B7 80 2F            [24]  350 	sjmp	00104$
      0004B9                        351 00216$:
      0004B9 BE 02 06         [24]  352 	cjne	r6,#0x02,00217$
      0004BC BF 00 03         [24]  353 	cjne	r7,#0x00,00217$
      0004BF 02 05 4D         [24]  354 	ljmp	00115$
      0004C2                        355 00217$:
      0004C2 02 05 CD         [24]  356 	ljmp	00126$
                                    357 ;	.\blink.c:24: case 0:
      0004C5                        358 00103$:
                                    359 ;	.\blink.c:25: P1 = ~(binary_num);
      0004C5 E5 34            [12]  360 	mov	a,_binary_num
      0004C7 F4               [12]  361 	cpl	a
      0004C8 F5 90            [12]  362 	mov	_P1,a
                                    363 ;	.\blink.c:26: binary_num = (binary_num + 1) % 256;
      0004CA 85 34 82         [24]  364 	mov	dpl,_binary_num
      0004CD 85 35 83         [24]  365 	mov	dph,(_binary_num + 1)
      0004D0 A3               [24]  366 	inc	dptr
      0004D1 75 57 00         [24]  367 	mov	__modsint_PARM_2,#0x00
      0004D4 75 58 01         [24]  368 	mov	(__modsint_PARM_2 + 1),#0x01
      0004D7 12 09 E1         [24]  369 	lcall	__modsint
      0004DA 85 82 34         [24]  370 	mov	_binary_num,dpl
      0004DD 85 83 35         [24]  371 	mov	(_binary_num + 1),dph
                                    372 ;	.\blink.c:27: counter = 0;
      0004E0 E4               [12]  373 	clr	a
      0004E1 F5 3A            [12]  374 	mov	_counter,a
      0004E3 F5 3B            [12]  375 	mov	(_counter + 1),a
                                    376 ;	.\blink.c:28: break;
      0004E5 02 05 D2         [24]  377 	ljmp	00127$
                                    378 ;	.\blink.c:29: case 1:
      0004E8                        379 00104$:
                                    380 ;	.\blink.c:30: P1 = ~(cyclone);
      0004E8 E5 36            [12]  381 	mov	a,_cyclone
      0004EA F4               [12]  382 	cpl	a
      0004EB F5 90            [12]  383 	mov	_P1,a
                                    384 ;	.\blink.c:31: if(cyclone == 0b10000000 && direction == 0){
      0004ED 74 80            [12]  385 	mov	a,#0x80
      0004EF B5 36 06         [24]  386 	cjne	a,_cyclone,00218$
      0004F2 E4               [12]  387 	clr	a
      0004F3 B5 37 02         [24]  388 	cjne	a,(_cyclone + 1),00218$
      0004F6 80 02            [24]  389 	sjmp	00219$
      0004F8                        390 00218$:
      0004F8 80 0D            [24]  391 	sjmp	00109$
      0004FA                        392 00219$:
      0004FA E5 38            [12]  393 	mov	a,_direction
      0004FC 45 39            [12]  394 	orl	a,(_direction + 1)
                                    395 ;	.\blink.c:32: direction = 1;
      0004FE 70 07            [24]  396 	jnz	00109$
      000500 75 38 01         [24]  397 	mov	_direction,#0x01
      000503 F5 39            [12]  398 	mov	(_direction + 1),a
      000505 80 1F            [24]  399 	sjmp	00110$
      000507                        400 00109$:
                                    401 ;	.\blink.c:33: } else if (cyclone == 1 && direction == 1){
      000507 74 01            [12]  402 	mov	a,#0x01
      000509 B5 36 06         [24]  403 	cjne	a,_cyclone,00221$
      00050C 14               [12]  404 	dec	a
      00050D B5 37 02         [24]  405 	cjne	a,(_cyclone + 1),00221$
      000510 80 02            [24]  406 	sjmp	00222$
      000512                        407 00221$:
      000512 80 12            [24]  408 	sjmp	00110$
      000514                        409 00222$:
      000514 74 01            [12]  410 	mov	a,#0x01
      000516 B5 38 06         [24]  411 	cjne	a,_direction,00223$
      000519 14               [12]  412 	dec	a
      00051A B5 39 02         [24]  413 	cjne	a,(_direction + 1),00223$
      00051D 80 02            [24]  414 	sjmp	00224$
      00051F                        415 00223$:
      00051F 80 05            [24]  416 	sjmp	00110$
      000521                        417 00224$:
                                    418 ;	.\blink.c:34: direction = 0;
      000521 E4               [12]  419 	clr	a
      000522 F5 38            [12]  420 	mov	_direction,a
      000524 F5 39            [12]  421 	mov	(_direction + 1),a
      000526                        422 00110$:
                                    423 ;	.\blink.c:37: if(direction == 0){
      000526 E5 38            [12]  424 	mov	a,_direction
      000528 45 39            [12]  425 	orl	a,(_direction + 1)
      00052A 70 0D            [24]  426 	jnz	00113$
                                    427 ;	.\blink.c:38: cyclone <<= 1;
      00052C E5 36            [12]  428 	mov	a,_cyclone
      00052E 25 36            [12]  429 	add	a,_cyclone
      000530 F5 36            [12]  430 	mov	_cyclone,a
      000532 E5 37            [12]  431 	mov	a,(_cyclone + 1)
      000534 33               [12]  432 	rlc	a
      000535 F5 37            [12]  433 	mov	(_cyclone + 1),a
      000537 80 0C            [24]  434 	sjmp	00114$
      000539                        435 00113$:
                                    436 ;	.\blink.c:40: cyclone >>= 1;
      000539 E5 37            [12]  437 	mov	a,(_cyclone + 1)
      00053B A2 E7            [12]  438 	mov	c,acc.7
      00053D 13               [12]  439 	rrc	a
      00053E C5 36            [12]  440 	xch	a,_cyclone
      000540 13               [12]  441 	rrc	a
      000541 C5 36            [12]  442 	xch	a,_cyclone
      000543 F5 37            [12]  443 	mov	(_cyclone + 1),a
      000545                        444 00114$:
                                    445 ;	.\blink.c:42: counter = 0;
      000545 E4               [12]  446 	clr	a
      000546 F5 3A            [12]  447 	mov	_counter,a
      000548 F5 3B            [12]  448 	mov	(_counter + 1),a
                                    449 ;	.\blink.c:43: break;
      00054A 02 05 D2         [24]  450 	ljmp	00127$
                                    451 ;	.\blink.c:44: case 2:
      00054D                        452 00115$:
                                    453 ;	.\blink.c:45: P1 = ~(dual_cyclone | reverse_cyclone);
      00054D AF 3C            [24]  454 	mov	r7,_dual_cyclone
      00054F E5 3E            [12]  455 	mov	a,_reverse_cyclone
      000551 42 07            [12]  456 	orl	ar7,a
      000553 EF               [12]  457 	mov	a,r7
      000554 F4               [12]  458 	cpl	a
      000555 F5 90            [12]  459 	mov	_P1,a
                                    460 ;	.\blink.c:46: if(reverse_cyclone == 1 && dual_direction == 0){
      000557 74 01            [12]  461 	mov	a,#0x01
      000559 B5 3E 06         [24]  462 	cjne	a,_reverse_cyclone,00226$
      00055C 14               [12]  463 	dec	a
      00055D B5 3F 02         [24]  464 	cjne	a,(_reverse_cyclone + 1),00226$
      000560 80 02            [24]  465 	sjmp	00227$
      000562                        466 00226$:
      000562 80 0D            [24]  467 	sjmp	00120$
      000564                        468 00227$:
      000564 E5 40            [12]  469 	mov	a,_dual_direction
      000566 45 41            [12]  470 	orl	a,(_dual_direction + 1)
                                    471 ;	.\blink.c:47: dual_direction = 1;
      000568 70 07            [24]  472 	jnz	00120$
      00056A 75 40 01         [24]  473 	mov	_dual_direction,#0x01
      00056D F5 41            [12]  474 	mov	(_dual_direction + 1),a
      00056F 80 1F            [24]  475 	sjmp	00121$
      000571                        476 00120$:
                                    477 ;	.\blink.c:48: } else if (dual_cyclone == 1 && dual_direction == 1){
      000571 74 01            [12]  478 	mov	a,#0x01
      000573 B5 3C 06         [24]  479 	cjne	a,_dual_cyclone,00229$
      000576 14               [12]  480 	dec	a
      000577 B5 3D 02         [24]  481 	cjne	a,(_dual_cyclone + 1),00229$
      00057A 80 02            [24]  482 	sjmp	00230$
      00057C                        483 00229$:
      00057C 80 12            [24]  484 	sjmp	00121$
      00057E                        485 00230$:
      00057E 74 01            [12]  486 	mov	a,#0x01
      000580 B5 40 06         [24]  487 	cjne	a,_dual_direction,00231$
      000583 14               [12]  488 	dec	a
      000584 B5 41 02         [24]  489 	cjne	a,(_dual_direction + 1),00231$
      000587 80 02            [24]  490 	sjmp	00232$
      000589                        491 00231$:
      000589 80 05            [24]  492 	sjmp	00121$
      00058B                        493 00232$:
                                    494 ;	.\blink.c:49: dual_direction = 0;
      00058B E4               [12]  495 	clr	a
      00058C F5 40            [12]  496 	mov	_dual_direction,a
      00058E F5 41            [12]  497 	mov	(_dual_direction + 1),a
      000590                        498 00121$:
                                    499 ;	.\blink.c:52: if(dual_direction == 0){
      000590 E5 40            [12]  500 	mov	a,_dual_direction
      000592 45 41            [12]  501 	orl	a,(_dual_direction + 1)
      000594 70 19            [24]  502 	jnz	00124$
                                    503 ;	.\blink.c:53: dual_cyclone <<= 1;
      000596 E5 3C            [12]  504 	mov	a,_dual_cyclone
      000598 25 3C            [12]  505 	add	a,_dual_cyclone
      00059A F5 3C            [12]  506 	mov	_dual_cyclone,a
      00059C E5 3D            [12]  507 	mov	a,(_dual_cyclone + 1)
      00059E 33               [12]  508 	rlc	a
      00059F F5 3D            [12]  509 	mov	(_dual_cyclone + 1),a
                                    510 ;	.\blink.c:54: reverse_cyclone >>= 1;
      0005A1 E5 3F            [12]  511 	mov	a,(_reverse_cyclone + 1)
      0005A3 A2 E7            [12]  512 	mov	c,acc.7
      0005A5 13               [12]  513 	rrc	a
      0005A6 C5 3E            [12]  514 	xch	a,_reverse_cyclone
      0005A8 13               [12]  515 	rrc	a
      0005A9 C5 3E            [12]  516 	xch	a,_reverse_cyclone
      0005AB F5 3F            [12]  517 	mov	(_reverse_cyclone + 1),a
      0005AD 80 17            [24]  518 	sjmp	00125$
      0005AF                        519 00124$:
                                    520 ;	.\blink.c:56: dual_cyclone >>= 1;
      0005AF E5 3D            [12]  521 	mov	a,(_dual_cyclone + 1)
      0005B1 A2 E7            [12]  522 	mov	c,acc.7
      0005B3 13               [12]  523 	rrc	a
      0005B4 C5 3C            [12]  524 	xch	a,_dual_cyclone
      0005B6 13               [12]  525 	rrc	a
      0005B7 C5 3C            [12]  526 	xch	a,_dual_cyclone
      0005B9 F5 3D            [12]  527 	mov	(_dual_cyclone + 1),a
                                    528 ;	.\blink.c:57: reverse_cyclone <<= 1;
      0005BB E5 3E            [12]  529 	mov	a,_reverse_cyclone
      0005BD 25 3E            [12]  530 	add	a,_reverse_cyclone
      0005BF F5 3E            [12]  531 	mov	_reverse_cyclone,a
      0005C1 E5 3F            [12]  532 	mov	a,(_reverse_cyclone + 1)
      0005C3 33               [12]  533 	rlc	a
      0005C4 F5 3F            [12]  534 	mov	(_reverse_cyclone + 1),a
      0005C6                        535 00125$:
                                    536 ;	.\blink.c:59: counter = 0;
      0005C6 E4               [12]  537 	clr	a
      0005C7 F5 3A            [12]  538 	mov	_counter,a
      0005C9 F5 3B            [12]  539 	mov	(_counter + 1),a
                                    540 ;	.\blink.c:60: break;
                                    541 ;	.\blink.c:61: default:
      0005CB 80 05            [24]  542 	sjmp	00127$
      0005CD                        543 00126$:
                                    544 ;	.\blink.c:62: counter = 0;
      0005CD E4               [12]  545 	clr	a
      0005CE F5 3A            [12]  546 	mov	_counter,a
      0005D0 F5 3B            [12]  547 	mov	(_counter + 1),a
                                    548 ;	.\blink.c:64: }
      0005D2                        549 00127$:
                                    550 ;	.\blink.c:65: BLINK_COUNTER = 0;
      0005D2 E4               [12]  551 	clr	a
      0005D3 F5 32            [12]  552 	mov	_BLINK_COUNTER,a
      0005D5 F5 33            [12]  553 	mov	(_BLINK_COUNTER + 1),a
                                    554 ;	.\blink.c:66: }
      0005D7 22               [24]  555 	ret
                                    556 	.area CSEG    (CODE)
                                    557 	.area CONST   (CODE)
                                    558 	.area XINIT   (CODE)
                                    559 	.area CABS    (ABS,CODE)
