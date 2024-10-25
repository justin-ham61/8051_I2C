                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _display_2
                                     13 	.globl _init_display
                                     14 	.globl _I2C_poll
                                     15 	.globl _blink
                                     16 	.globl _button_poll
                                     17 	.globl _display
                                     18 	.globl _display_poll
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _B
                                     95 	.globl _ACC
                                     96 	.globl _PSW
                                     97 	.globl _IP
                                     98 	.globl _P3
                                     99 	.globl _IE
                                    100 	.globl _P2
                                    101 	.globl _SBUF
                                    102 	.globl _SCON
                                    103 	.globl _P1
                                    104 	.globl _TH1
                                    105 	.globl _TH0
                                    106 	.globl _TL1
                                    107 	.globl _TL0
                                    108 	.globl _TMOD
                                    109 	.globl _TCON
                                    110 	.globl _PCON
                                    111 	.globl _DPH
                                    112 	.globl _DPL
                                    113 	.globl _SP
                                    114 	.globl _P0
                                    115 	.globl _init_debounce_timer
                                    116 	.globl _init_blink_timer
                                    117 	.globl _blink_timer
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram
                                    235 ;--------------------------------------------------------
                                    236 ;--------------------------------------------------------
                                    237 ; Stack segment in internal ram
                                    238 ;--------------------------------------------------------
                                    239 	.area SSEG
      00005B                        240 __start__stack:
      00005B                        241 	.ds	1
                                    242 
                                    243 ;--------------------------------------------------------
                                    244 ; indirectly addressable internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area ISEG    (DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area IABS    (ABS,DATA)
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
                                    256 ;--------------------------------------------------------
                                    257 ; paged external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area PSEG    (PAG,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; uninitialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; initialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XISEG   (XDATA)
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT0 (CODE)
                                    274 	.area GSINIT1 (CODE)
                                    275 	.area GSINIT2 (CODE)
                                    276 	.area GSINIT3 (CODE)
                                    277 	.area GSINIT4 (CODE)
                                    278 	.area GSINIT5 (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area CSEG    (CODE)
                                    282 ;--------------------------------------------------------
                                    283 ; interrupt vector
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
      000000                        286 __interrupt_vect:
      000000 02 00 06         [24]  287 	ljmp	__sdcc_gsinit_startup
                                    288 ;--------------------------------------------------------
                                    289 ; global & static initialisations
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.globl __sdcc_gsinit_startup
                                    296 	.globl __sdcc_program_startup
                                    297 	.globl __start__stack
                                    298 	.globl __mcs51_genXINIT
                                    299 	.globl __mcs51_genXRAMCLEAR
                                    300 	.globl __mcs51_genRAMCLEAR
                                    301 	.area GSFINAL (CODE)
      0000F6 02 00 03         [24]  302 	ljmp	__sdcc_program_startup
                                    303 ;--------------------------------------------------------
                                    304 ; Home
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area HOME    (CODE)
      000003                        308 __sdcc_program_startup:
      000003 02 00 F9         [24]  309 	ljmp	_main
                                    310 ;	return from main will return to caller
                                    311 ;--------------------------------------------------------
                                    312 ; code
                                    313 ;--------------------------------------------------------
                                    314 	.area CSEG    (CODE)
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'main'
                                    317 ;------------------------------------------------------------
                                    318 ;	main.c:14: void main(void){
                                    319 ;	-----------------------------------------
                                    320 ;	 function main
                                    321 ;	-----------------------------------------
      0000F9                        322 _main:
                           000007   323 	ar7 = 0x07
                           000006   324 	ar6 = 0x06
                           000005   325 	ar5 = 0x05
                           000004   326 	ar4 = 0x04
                           000003   327 	ar3 = 0x03
                           000002   328 	ar2 = 0x02
                           000001   329 	ar1 = 0x01
                           000000   330 	ar0 = 0x00
                                    331 ;	main.c:15: TMOD = 0x01;
      0000F9 75 89 01         [24]  332 	mov	_TMOD,#0x01
                                    333 ;	main.c:16: init_display();
      0000FC 12 07 6C         [24]  334 	lcall	_init_display
                                    335 ;	main.c:17: init_debounce_timer();
      0000FF 12 01 35         [24]  336 	lcall	_init_debounce_timer
                                    337 ;	main.c:18: init_blink_timer();
      000102 12 01 3E         [24]  338 	lcall	_init_blink_timer
                                    339 ;	main.c:21: display_2("Hello World", "Bob is Great!", 0,3);
      000105 75 50 F8         [24]  340 	mov	_display_2_PARM_2,#___str_1
      000108 75 51 09         [24]  341 	mov	(_display_2_PARM_2 + 1),#(___str_1 >> 8)
      00010B 75 52 80         [24]  342 	mov	(_display_2_PARM_2 + 2),#0x80
      00010E E4               [12]  343 	clr	a
      00010F F5 53            [12]  344 	mov	_display_2_PARM_3,a
      000111 F5 54            [12]  345 	mov	(_display_2_PARM_3 + 1),a
      000113 75 55 03         [24]  346 	mov	_display_2_PARM_4,#0x03
      000116 F5 56            [12]  347 	mov	(_display_2_PARM_4 + 1),a
      000118 90 09 EC         [24]  348 	mov	dptr,#___str_0
      00011B 75 F0 80         [24]  349 	mov	b, #0x80
      00011E 12 07 2D         [24]  350 	lcall	_display_2
                                    351 ;	main.c:23: while(1){
      000121                        352 00102$:
                                    353 ;	main.c:24: display_poll();
      000121 12 01 5F         [24]  354 	lcall	_display_poll
                                    355 ;	main.c:25: button_poll();
      000124 12 03 3F         [24]  356 	lcall	_button_poll
                                    357 ;	main.c:26: display();
      000127 12 02 DE         [24]  358 	lcall	_display
                                    359 ;	main.c:27: blink();
      00012A 12 04 68         [24]  360 	lcall	_blink
                                    361 ;	main.c:28: I2C_poll();
      00012D 12 05 A9         [24]  362 	lcall	_I2C_poll
                                    363 ;	main.c:29: blink_timer();
      000130 12 01 47         [24]  364 	lcall	_blink_timer
                                    365 ;	main.c:31: }
      000133 80 EC            [24]  366 	sjmp	00102$
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'init_debounce_timer'
                                    369 ;------------------------------------------------------------
                                    370 ;	main.c:33: void init_debounce_timer(void){
                                    371 ;	-----------------------------------------
                                    372 ;	 function init_debounce_timer
                                    373 ;	-----------------------------------------
      000135                        374 _init_debounce_timer:
                                    375 ;	main.c:34: TH0 = 0x00;
      000135 75 8C 00         [24]  376 	mov	_TH0,#0x00
                                    377 ;	main.c:35: TL0 = 0x00;
      000138 75 8A 00         [24]  378 	mov	_TL0,#0x00
                                    379 ;	main.c:36: TR0 = 1;
                                    380 ;	assignBit
      00013B D2 8C            [12]  381 	setb	_TR0
                                    382 ;	main.c:37: }
      00013D 22               [24]  383 	ret
                                    384 ;------------------------------------------------------------
                                    385 ;Allocation info for local variables in function 'init_blink_timer'
                                    386 ;------------------------------------------------------------
                                    387 ;	main.c:39: void init_blink_timer(void){
                                    388 ;	-----------------------------------------
                                    389 ;	 function init_blink_timer
                                    390 ;	-----------------------------------------
      00013E                        391 _init_blink_timer:
                                    392 ;	main.c:40: TH1 = 0x00;
      00013E 75 8D 00         [24]  393 	mov	_TH1,#0x00
                                    394 ;	main.c:41: TL1 = 0x00;
      000141 75 8B 00         [24]  395 	mov	_TL1,#0x00
                                    396 ;	main.c:42: TR1 = 1;
                                    397 ;	assignBit
      000144 D2 8E            [12]  398 	setb	_TR1
                                    399 ;	main.c:43: }
      000146 22               [24]  400 	ret
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'blink_timer'
                                    403 ;------------------------------------------------------------
                                    404 ;	main.c:45: void blink_timer(void){
                                    405 ;	-----------------------------------------
                                    406 ;	 function blink_timer
                                    407 ;	-----------------------------------------
      000147                        408 _blink_timer:
                                    409 ;	main.c:46: if(TF1 == 1){
      000147 30 8F 14         [24]  410 	jnb	_TF1,00103$
                                    411 ;	main.c:47: TR1 = 0;
                                    412 ;	assignBit
      00014A C2 8E            [12]  413 	clr	_TR1
                                    414 ;	main.c:48: BLINK_COUNTER++;
      00014C 05 32            [12]  415 	inc	_BLINK_COUNTER
      00014E E4               [12]  416 	clr	a
      00014F B5 32 02         [24]  417 	cjne	a,_BLINK_COUNTER,00112$
      000152 05 33            [12]  418 	inc	(_BLINK_COUNTER + 1)
      000154                        419 00112$:
                                    420 ;	main.c:49: TH1 = 0;
      000154 75 8D 00         [24]  421 	mov	_TH1,#0x00
                                    422 ;	main.c:50: TL1 = 0;
      000157 75 8B 00         [24]  423 	mov	_TL1,#0x00
                                    424 ;	main.c:51: TF1 = 0;
                                    425 ;	assignBit
      00015A C2 8F            [12]  426 	clr	_TF1
                                    427 ;	main.c:52: TR1 = 1;
                                    428 ;	assignBit
      00015C D2 8E            [12]  429 	setb	_TR1
      00015E                        430 00103$:
                                    431 ;	main.c:54: }
      00015E 22               [24]  432 	ret
                                    433 	.area CSEG    (CODE)
                                    434 	.area CONST   (CODE)
                                    435 	.area CONST   (CODE)
      0009EC                        436 ___str_0:
      0009EC 48 65 6C 6C 6F 20 57   437 	.ascii "Hello World"
             6F 72 6C 64
      0009F7 00                     438 	.db 0x00
                                    439 	.area CSEG    (CODE)
                                    440 	.area CONST   (CODE)
      0009F8                        441 ___str_1:
      0009F8 42 6F 62 20 69 73 20   442 	.ascii "Bob is Great!"
             47 72 65 61 74 21
      000A05 00                     443 	.db 0x00
                                    444 	.area CSEG    (CODE)
                                    445 	.area XINIT   (CODE)
                                    446 	.area CABS    (ABS,CODE)
