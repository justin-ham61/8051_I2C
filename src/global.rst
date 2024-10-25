                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module global
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
                                    107 	.globl _BLINK_COUNTER
                                    108 	.globl _BLINK_MODE
                                    109 	.globl _SCREEN_FLAG
                                    110 	.globl _reset_timer
                                    111 	.globl _delay
                                    112 ;--------------------------------------------------------
                                    113 ; special function registers
                                    114 ;--------------------------------------------------------
                                    115 	.area RSEG    (ABS,DATA)
      000000                        116 	.org 0x0000
                           000080   117 _P0	=	0x0080
                           000081   118 _SP	=	0x0081
                           000082   119 _DPL	=	0x0082
                           000083   120 _DPH	=	0x0083
                           000087   121 _PCON	=	0x0087
                           000088   122 _TCON	=	0x0088
                           000089   123 _TMOD	=	0x0089
                           00008A   124 _TL0	=	0x008a
                           00008B   125 _TL1	=	0x008b
                           00008C   126 _TH0	=	0x008c
                           00008D   127 _TH1	=	0x008d
                           000090   128 _P1	=	0x0090
                           000098   129 _SCON	=	0x0098
                           000099   130 _SBUF	=	0x0099
                           0000A0   131 _P2	=	0x00a0
                           0000A8   132 _IE	=	0x00a8
                           0000B0   133 _P3	=	0x00b0
                           0000B8   134 _IP	=	0x00b8
                           0000D0   135 _PSW	=	0x00d0
                           0000E0   136 _ACC	=	0x00e0
                           0000F0   137 _B	=	0x00f0
                                    138 ;--------------------------------------------------------
                                    139 ; special function bits
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0_0	=	0x0080
                           000081   144 _P0_1	=	0x0081
                           000082   145 _P0_2	=	0x0082
                           000083   146 _P0_3	=	0x0083
                           000084   147 _P0_4	=	0x0084
                           000085   148 _P0_5	=	0x0085
                           000086   149 _P0_6	=	0x0086
                           000087   150 _P0_7	=	0x0087
                           000088   151 _IT0	=	0x0088
                           000089   152 _IE0	=	0x0089
                           00008A   153 _IT1	=	0x008a
                           00008B   154 _IE1	=	0x008b
                           00008C   155 _TR0	=	0x008c
                           00008D   156 _TF0	=	0x008d
                           00008E   157 _TR1	=	0x008e
                           00008F   158 _TF1	=	0x008f
                           000090   159 _P1_0	=	0x0090
                           000091   160 _P1_1	=	0x0091
                           000092   161 _P1_2	=	0x0092
                           000093   162 _P1_3	=	0x0093
                           000094   163 _P1_4	=	0x0094
                           000095   164 _P1_5	=	0x0095
                           000096   165 _P1_6	=	0x0096
                           000097   166 _P1_7	=	0x0097
                           000098   167 _RI	=	0x0098
                           000099   168 _TI	=	0x0099
                           00009A   169 _RB8	=	0x009a
                           00009B   170 _TB8	=	0x009b
                           00009C   171 _REN	=	0x009c
                           00009D   172 _SM2	=	0x009d
                           00009E   173 _SM1	=	0x009e
                           00009F   174 _SM0	=	0x009f
                           0000A0   175 _P2_0	=	0x00a0
                           0000A1   176 _P2_1	=	0x00a1
                           0000A2   177 _P2_2	=	0x00a2
                           0000A3   178 _P2_3	=	0x00a3
                           0000A4   179 _P2_4	=	0x00a4
                           0000A5   180 _P2_5	=	0x00a5
                           0000A6   181 _P2_6	=	0x00a6
                           0000A7   182 _P2_7	=	0x00a7
                           0000A8   183 _EX0	=	0x00a8
                           0000A9   184 _ET0	=	0x00a9
                           0000AA   185 _EX1	=	0x00aa
                           0000AB   186 _ET1	=	0x00ab
                           0000AC   187 _ES	=	0x00ac
                           0000AF   188 _EA	=	0x00af
                           0000B0   189 _P3_0	=	0x00b0
                           0000B1   190 _P3_1	=	0x00b1
                           0000B2   191 _P3_2	=	0x00b2
                           0000B3   192 _P3_3	=	0x00b3
                           0000B4   193 _P3_4	=	0x00b4
                           0000B5   194 _P3_5	=	0x00b5
                           0000B6   195 _P3_6	=	0x00b6
                           0000B7   196 _P3_7	=	0x00b7
                           0000B0   197 _RXD	=	0x00b0
                           0000B1   198 _TXD	=	0x00b1
                           0000B2   199 _INT0	=	0x00b2
                           0000B3   200 _INT1	=	0x00b3
                           0000B4   201 _T0	=	0x00b4
                           0000B5   202 _T1	=	0x00b5
                           0000B6   203 _WR	=	0x00b6
                           0000B7   204 _RD	=	0x00b7
                           0000B8   205 _PX0	=	0x00b8
                           0000B9   206 _PT0	=	0x00b9
                           0000BA   207 _PX1	=	0x00ba
                           0000BB   208 _PT1	=	0x00bb
                           0000BC   209 _PS	=	0x00bc
                           0000D0   210 _P	=	0x00d0
                           0000D1   211 _F1	=	0x00d1
                           0000D2   212 _OV	=	0x00d2
                           0000D3   213 _RS0	=	0x00d3
                           0000D4   214 _RS1	=	0x00d4
                           0000D5   215 _F0	=	0x00d5
                           0000D6   216 _AC	=	0x00d6
                           0000D7   217 _CY	=	0x00d7
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
      00002E                        227 _SCREEN_FLAG::
      00002E                        228 	.ds 2
      000030                        229 _BLINK_MODE::
      000030                        230 	.ds 2
      000032                        231 _BLINK_COUNTER::
      000032                        232 	.ds 2
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram
                                    235 ;--------------------------------------------------------
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
                                    283 ;	.\global.c:4: int SCREEN_FLAG = 0x00;
      0000CB E4               [12]  284 	clr	a
      0000CC F5 2E            [12]  285 	mov	_SCREEN_FLAG,a
      0000CE F5 2F            [12]  286 	mov	(_SCREEN_FLAG + 1),a
                                    287 ;	.\global.c:5: int BLINK_MODE = 0;
      0000D0 F5 30            [12]  288 	mov	_BLINK_MODE,a
      0000D2 F5 31            [12]  289 	mov	(_BLINK_MODE + 1),a
                                    290 ;	.\global.c:6: volatile int BLINK_COUNTER = 0;
      0000D4 F5 32            [12]  291 	mov	_BLINK_COUNTER,a
      0000D6 F5 33            [12]  292 	mov	(_BLINK_COUNTER + 1),a
                                    293 ;--------------------------------------------------------
                                    294 ; Home
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area HOME    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; code
                                    300 ;--------------------------------------------------------
                                    301 	.area CSEG    (CODE)
                                    302 ;------------------------------------------------------------
                                    303 ;Allocation info for local variables in function 'reset_timer'
                                    304 ;------------------------------------------------------------
                                    305 ;	.\global.c:8: void reset_timer(void){
                                    306 ;	-----------------------------------------
                                    307 ;	 function reset_timer
                                    308 ;	-----------------------------------------
      000459                        309 _reset_timer:
                           000007   310 	ar7 = 0x07
                           000006   311 	ar6 = 0x06
                           000005   312 	ar5 = 0x05
                           000004   313 	ar4 = 0x04
                           000003   314 	ar3 = 0x03
                           000002   315 	ar2 = 0x02
                           000001   316 	ar1 = 0x01
                           000000   317 	ar0 = 0x00
                                    318 ;	.\global.c:9: TR0 = 0;
                                    319 ;	assignBit
      000459 C2 8C            [12]  320 	clr	_TR0
                                    321 ;	.\global.c:10: TH0 = 0x00;
      00045B 75 8C 00         [24]  322 	mov	_TH0,#0x00
                                    323 ;	.\global.c:11: TL0 = 0x00;
      00045E 75 8A 00         [24]  324 	mov	_TL0,#0x00
                                    325 ;	.\global.c:12: TF0 = 0;
                                    326 ;	assignBit
      000461 C2 8D            [12]  327 	clr	_TF0
                                    328 ;	.\global.c:13: TR0 = 1;
                                    329 ;	assignBit
      000463 D2 8C            [12]  330 	setb	_TR0
                                    331 ;	.\global.c:14: }
      000465 22               [24]  332 	ret
                                    333 ;------------------------------------------------------------
                                    334 ;Allocation info for local variables in function 'delay'
                                    335 ;------------------------------------------------------------
                                    336 ;i                         Allocated to registers 
                                    337 ;j                         Allocated to registers r6 r7 
                                    338 ;k                         Allocated to registers r4 r5 
                                    339 ;------------------------------------------------------------
                                    340 ;	.\global.c:16: void delay(int i){
                                    341 ;	-----------------------------------------
                                    342 ;	 function delay
                                    343 ;	-----------------------------------------
      000466                        344 _delay:
      000466 AE 82            [24]  345 	mov	r6, dpl
      000468 AF 83            [24]  346 	mov	r7, dph
                                    347 ;	.\global.c:18: for (j = i; j > 0; j--)
      00046A                        348 00106$:
      00046A C3               [12]  349 	clr	c
      00046B E4               [12]  350 	clr	a
      00046C 9E               [12]  351 	subb	a,r6
      00046D 74 80            [12]  352 	mov	a,#(0x00 ^ 0x80)
      00046F 8F F0            [24]  353 	mov	b,r7
      000471 63 F0 80         [24]  354 	xrl	b,#0x80
      000474 95 F0            [12]  355 	subb	a,b
      000476 50 1E            [24]  356 	jnc	00108$
                                    357 ;	.\global.c:19: for (k = 125; k > 0; k--);
      000478 7C 7D            [12]  358 	mov	r4,#0x7d
      00047A 7D 00            [12]  359 	mov	r5,#0x00
      00047C                        360 00104$:
      00047C 1C               [12]  361 	dec	r4
      00047D BC FF 01         [24]  362 	cjne	r4,#0xff,00137$
      000480 1D               [12]  363 	dec	r5
      000481                        364 00137$:
      000481 C3               [12]  365 	clr	c
      000482 E4               [12]  366 	clr	a
      000483 9C               [12]  367 	subb	a,r4
      000484 74 80            [12]  368 	mov	a,#(0x00 ^ 0x80)
      000486 8D F0            [24]  369 	mov	b,r5
      000488 63 F0 80         [24]  370 	xrl	b,#0x80
      00048B 95 F0            [12]  371 	subb	a,b
      00048D 40 ED            [24]  372 	jc	00104$
                                    373 ;	.\global.c:18: for (j = i; j > 0; j--)
      00048F 1E               [12]  374 	dec	r6
      000490 BE FF 01         [24]  375 	cjne	r6,#0xff,00139$
      000493 1F               [12]  376 	dec	r7
      000494                        377 00139$:
      000494 80 D4            [24]  378 	sjmp	00106$
      000496                        379 00108$:
                                    380 ;	.\global.c:20: }
      000496 22               [24]  381 	ret
                                    382 	.area CSEG    (CODE)
                                    383 	.area CONST   (CODE)
                                    384 	.area XINIT   (CODE)
                                    385 	.area CABS    (ABS,CODE)
