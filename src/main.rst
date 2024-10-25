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
                                     11 	.globl _Timer1_ISR
                                     12 	.globl _main
                                     13 	.globl _display_2
                                     14 	.globl _init_display
                                     15 	.globl _I2C_poll
                                     16 	.globl _blink
                                     17 	.globl _button_poll
                                     18 	.globl _display
                                     19 	.globl _display_poll
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _init_debounce_timer
                                    117 	.globl _init_blink_timer
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
      000000 02 00 21         [24]  287 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  288 	reti
      000004                        289 	.ds	7
      00000B 32               [24]  290 	reti
      00000C                        291 	.ds	7
      000013 32               [24]  292 	reti
      000014                        293 	.ds	7
      00001B 02 01 63         [24]  294 	ljmp	_Timer1_ISR
                                    295 ;--------------------------------------------------------
                                    296 ; global & static initialisations
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.globl __sdcc_gsinit_startup
                                    303 	.globl __sdcc_program_startup
                                    304 	.globl __start__stack
                                    305 	.globl __mcs51_genXINIT
                                    306 	.globl __mcs51_genXRAMCLEAR
                                    307 	.globl __mcs51_genRAMCLEAR
                                    308 	.area GSFINAL (CODE)
      000111 02 00 1E         [24]  309 	ljmp	__sdcc_program_startup
                                    310 ;--------------------------------------------------------
                                    311 ; Home
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area HOME    (CODE)
      00001E                        315 __sdcc_program_startup:
      00001E 02 01 14         [24]  316 	ljmp	_main
                                    317 ;	return from main will return to caller
                                    318 ;--------------------------------------------------------
                                    319 ; code
                                    320 ;--------------------------------------------------------
                                    321 	.area CSEG    (CODE)
                                    322 ;------------------------------------------------------------
                                    323 ;Allocation info for local variables in function 'main'
                                    324 ;------------------------------------------------------------
                                    325 ;	main.c:13: void main(void){
                                    326 ;	-----------------------------------------
                                    327 ;	 function main
                                    328 ;	-----------------------------------------
      000114                        329 _main:
                           000007   330 	ar7 = 0x07
                           000006   331 	ar6 = 0x06
                           000005   332 	ar5 = 0x05
                           000004   333 	ar4 = 0x04
                           000003   334 	ar3 = 0x03
                           000002   335 	ar2 = 0x02
                           000001   336 	ar1 = 0x01
                           000000   337 	ar0 = 0x00
                                    338 ;	main.c:14: TMOD = 0x01;
      000114 75 89 01         [24]  339 	mov	_TMOD,#0x01
                                    340 ;	main.c:15: init_display();
      000117 12 07 9B         [24]  341 	lcall	_init_display
                                    342 ;	main.c:16: init_debounce_timer();
      00011A 12 01 4D         [24]  343 	lcall	_init_debounce_timer
                                    344 ;	main.c:17: init_blink_timer();
      00011D 12 01 56         [24]  345 	lcall	_init_blink_timer
                                    346 ;	main.c:20: display_2("Hello World", "Bob is Great!", 0,3);
      000120 75 50 27         [24]  347 	mov	_display_2_PARM_2,#___str_1
      000123 75 51 0A         [24]  348 	mov	(_display_2_PARM_2 + 1),#(___str_1 >> 8)
      000126 75 52 80         [24]  349 	mov	(_display_2_PARM_2 + 2),#0x80
      000129 E4               [12]  350 	clr	a
      00012A F5 53            [12]  351 	mov	_display_2_PARM_3,a
      00012C F5 54            [12]  352 	mov	(_display_2_PARM_3 + 1),a
      00012E 75 55 03         [24]  353 	mov	_display_2_PARM_4,#0x03
      000131 F5 56            [12]  354 	mov	(_display_2_PARM_4 + 1),a
      000133 90 0A 1B         [24]  355 	mov	dptr,#___str_0
      000136 75 F0 80         [24]  356 	mov	b, #0x80
      000139 12 07 5C         [24]  357 	lcall	_display_2
                                    358 ;	main.c:22: while(1){
      00013C                        359 00102$:
                                    360 ;	main.c:23: display_poll();
      00013C 12 01 8E         [24]  361 	lcall	_display_poll
                                    362 ;	main.c:24: button_poll();
      00013F 12 03 6E         [24]  363 	lcall	_button_poll
                                    364 ;	main.c:25: display();
      000142 12 03 0D         [24]  365 	lcall	_display
                                    366 ;	main.c:26: blink();
      000145 12 04 97         [24]  367 	lcall	_blink
                                    368 ;	main.c:27: I2C_poll();
      000148 12 05 D8         [24]  369 	lcall	_I2C_poll
                                    370 ;	main.c:29: }
      00014B 80 EF            [24]  371 	sjmp	00102$
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'init_debounce_timer'
                                    374 ;------------------------------------------------------------
                                    375 ;	main.c:31: void init_debounce_timer(void){
                                    376 ;	-----------------------------------------
                                    377 ;	 function init_debounce_timer
                                    378 ;	-----------------------------------------
      00014D                        379 _init_debounce_timer:
                                    380 ;	main.c:32: TH0 = 0x00;
      00014D 75 8C 00         [24]  381 	mov	_TH0,#0x00
                                    382 ;	main.c:33: TL0 = 0x00;
      000150 75 8A 00         [24]  383 	mov	_TL0,#0x00
                                    384 ;	main.c:34: TR0 = 1;
                                    385 ;	assignBit
      000153 D2 8C            [12]  386 	setb	_TR0
                                    387 ;	main.c:35: }
      000155 22               [24]  388 	ret
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'init_blink_timer'
                                    391 ;------------------------------------------------------------
                                    392 ;	main.c:37: void init_blink_timer(void){
                                    393 ;	-----------------------------------------
                                    394 ;	 function init_blink_timer
                                    395 ;	-----------------------------------------
      000156                        396 _init_blink_timer:
                                    397 ;	main.c:38: TH1 = 0x00;
      000156 75 8D 00         [24]  398 	mov	_TH1,#0x00
                                    399 ;	main.c:39: TL1 = 0x00;
      000159 75 8B 00         [24]  400 	mov	_TL1,#0x00
                                    401 ;	main.c:40: TR1 = 1;
                                    402 ;	assignBit
      00015C D2 8E            [12]  403 	setb	_TR1
                                    404 ;	main.c:41: ET1 = 1;
                                    405 ;	assignBit
      00015E D2 AB            [12]  406 	setb	_ET1
                                    407 ;	main.c:42: EA = 1;
                                    408 ;	assignBit
      000160 D2 AF            [12]  409 	setb	_EA
                                    410 ;	main.c:43: }
      000162 22               [24]  411 	ret
                                    412 ;------------------------------------------------------------
                                    413 ;Allocation info for local variables in function 'Timer1_ISR'
                                    414 ;------------------------------------------------------------
                                    415 ;	main.c:45: void Timer1_ISR(void) __interrupt (3) {
                                    416 ;	-----------------------------------------
                                    417 ;	 function Timer1_ISR
                                    418 ;	-----------------------------------------
      000163                        419 _Timer1_ISR:
      000163 C0 E0            [24]  420 	push	acc
      000165 C0 07            [24]  421 	push	ar7
      000167 C0 06            [24]  422 	push	ar6
      000169 C0 D0            [24]  423 	push	psw
      00016B 75 D0 00         [24]  424 	mov	psw,#0x00
                                    425 ;	main.c:46: TF1 = 0;
                                    426 ;	assignBit
      00016E C2 8F            [12]  427 	clr	_TF1
                                    428 ;	main.c:47: TH1 = 0;
      000170 75 8D 00         [24]  429 	mov	_TH1,#0x00
                                    430 ;	main.c:48: TL1 = 0;
      000173 75 8B 00         [24]  431 	mov	_TL1,#0x00
                                    432 ;	main.c:49: TR1 = 1;
                                    433 ;	assignBit
      000176 D2 8E            [12]  434 	setb	_TR1
                                    435 ;	main.c:50: BLINK_COUNTER++;
      000178 AE 32            [24]  436 	mov	r6,_BLINK_COUNTER
      00017A AF 33            [24]  437 	mov	r7,(_BLINK_COUNTER + 1)
      00017C 74 01            [12]  438 	mov	a,#0x01
      00017E 2E               [12]  439 	add	a, r6
      00017F F5 32            [12]  440 	mov	_BLINK_COUNTER,a
      000181 E4               [12]  441 	clr	a
      000182 3F               [12]  442 	addc	a, r7
      000183 F5 33            [12]  443 	mov	(_BLINK_COUNTER + 1),a
                                    444 ;	main.c:51: }
      000185 D0 D0            [24]  445 	pop	psw
      000187 D0 06            [24]  446 	pop	ar6
      000189 D0 07            [24]  447 	pop	ar7
      00018B D0 E0            [24]  448 	pop	acc
      00018D 32               [24]  449 	reti
                                    450 ;	eliminated unneeded push/pop dpl
                                    451 ;	eliminated unneeded push/pop dph
                                    452 ;	eliminated unneeded push/pop b
                                    453 	.area CSEG    (CODE)
                                    454 	.area CONST   (CODE)
                                    455 	.area CONST   (CODE)
      000A1B                        456 ___str_0:
      000A1B 48 65 6C 6C 6F 20 57   457 	.ascii "Hello World"
             6F 72 6C 64
      000A26 00                     458 	.db 0x00
                                    459 	.area CSEG    (CODE)
                                    460 	.area CONST   (CODE)
      000A27                        461 ___str_1:
      000A27 42 6F 62 20 69 73 20   462 	.ascii "Bob is Great!"
             47 72 65 61 74 21
      000A34 00                     463 	.db 0x00
                                    464 	.area CSEG    (CODE)
                                    465 	.area XINIT   (CODE)
                                    466 	.area CABS    (ABS,CODE)
