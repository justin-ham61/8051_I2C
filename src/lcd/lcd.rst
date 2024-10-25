                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay
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
                                    108 	.globl _display_2_PARM_4
                                    109 	.globl _display_2_PARM_3
                                    110 	.globl _display_2_PARM_2
                                    111 	.globl _display_2
                                    112 	.globl _init_display
                                    113 	.globl _start_con
                                    114 	.globl _stop_con
                                    115 	.globl _send_command
                                    116 	.globl _send_data
                                    117 	.globl _send_str
                                    118 	.globl _write
                                    119 	.globl _ack
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000050                        235 _display_2_PARM_2:
      000050                        236 	.ds 3
      000053                        237 _display_2_PARM_3:
      000053                        238 	.ds 2
      000055                        239 _display_2_PARM_4:
      000055                        240 	.ds 2
                                    241 ;--------------------------------------------------------
                                    242 ; overlayable items in internal ram
                                    243 ;--------------------------------------------------------
                                    244 ;--------------------------------------------------------
                                    245 ; indirectly addressable internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area ISEG    (DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area IABS    (ABS,DATA)
                                    252 	.area IABS    (ABS,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; bit data
                                    255 ;--------------------------------------------------------
                                    256 	.area BSEG    (BIT)
                                    257 ;--------------------------------------------------------
                                    258 ; paged external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area PSEG    (PAG,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; uninitialized external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XABS    (ABS,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; initialized external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XISEG   (XDATA)
                                    273 	.area HOME    (CODE)
                                    274 	.area GSINIT0 (CODE)
                                    275 	.area GSINIT1 (CODE)
                                    276 	.area GSINIT2 (CODE)
                                    277 	.area GSINIT3 (CODE)
                                    278 	.area GSINIT4 (CODE)
                                    279 	.area GSINIT5 (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area CSEG    (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; global & static initialisations
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; Home
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area HOME    (CODE)
                                    295 ;--------------------------------------------------------
                                    296 ; code
                                    297 ;--------------------------------------------------------
                                    298 	.area CSEG    (CODE)
                                    299 ;------------------------------------------------------------
                                    300 ;Allocation info for local variables in function 'display_2'
                                    301 ;------------------------------------------------------------
                                    302 ;p2                        Allocated with name '_display_2_PARM_2'
                                    303 ;adr1                      Allocated with name '_display_2_PARM_3'
                                    304 ;adr2                      Allocated with name '_display_2_PARM_4'
                                    305 ;p1                        Allocated to registers r5 r6 r7 
                                    306 ;------------------------------------------------------------
                                    307 ;	.\lcd.c:16: void display_2(char *p1, char*p2, int adr1, int adr2){
                                    308 ;	-----------------------------------------
                                    309 ;	 function display_2
                                    310 ;	-----------------------------------------
      00075C                        311 _display_2:
                           000007   312 	ar7 = 0x07
                           000006   313 	ar6 = 0x06
                           000005   314 	ar5 = 0x05
                           000004   315 	ar4 = 0x04
                           000003   316 	ar3 = 0x03
                           000002   317 	ar2 = 0x02
                           000001   318 	ar1 = 0x01
                           000000   319 	ar0 = 0x00
      00075C AD 82            [24]  320 	mov	r5, dpl
      00075E AE 83            [24]  321 	mov	r6, dph
      000760 AF F0            [24]  322 	mov	r7, b
                                    323 ;	.\lcd.c:17: send_command(0x80 | adr1);
      000762 74 80            [12]  324 	mov	a,#0x80
      000764 45 53            [12]  325 	orl	a,_display_2_PARM_3
      000766 F5 82            [12]  326 	mov	dpl,a
      000768 85 54 83         [24]  327 	mov	dph,(_display_2_PARM_3 + 1)
      00076B C0 07            [24]  328 	push	ar7
      00076D C0 06            [24]  329 	push	ar6
      00076F C0 05            [24]  330 	push	ar5
      000771 12 07 D5         [24]  331 	lcall	_send_command
      000774 D0 05            [24]  332 	pop	ar5
      000776 D0 06            [24]  333 	pop	ar6
      000778 D0 07            [24]  334 	pop	ar7
                                    335 ;	.\lcd.c:18: send_str(p1);
      00077A 8D 82            [24]  336 	mov	dpl, r5
      00077C 8E 83            [24]  337 	mov	dph, r6
      00077E 8F F0            [24]  338 	mov	b, r7
      000780 12 08 F5         [24]  339 	lcall	_send_str
                                    340 ;	.\lcd.c:19: send_command(0xC0 | adr2);
      000783 74 C0            [12]  341 	mov	a,#0xc0
      000785 45 55            [12]  342 	orl	a,_display_2_PARM_4
      000787 F5 82            [12]  343 	mov	dpl,a
      000789 85 56 83         [24]  344 	mov	dph,(_display_2_PARM_4 + 1)
      00078C 12 07 D5         [24]  345 	lcall	_send_command
                                    346 ;	.\lcd.c:20: send_str(p2);
      00078F 85 50 82         [24]  347 	mov	dpl, _display_2_PARM_2
      000792 85 51 83         [24]  348 	mov	dph, (_display_2_PARM_2 + 1)
      000795 85 52 F0         [24]  349 	mov	b, (_display_2_PARM_2 + 2)
                                    350 ;	.\lcd.c:21: }
      000798 02 08 F5         [24]  351 	ljmp	_send_str
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'init_display'
                                    354 ;------------------------------------------------------------
                                    355 ;	.\lcd.c:23: void init_display(void){
                                    356 ;	-----------------------------------------
                                    357 ;	 function init_display
                                    358 ;	-----------------------------------------
      00079B                        359 _init_display:
                                    360 ;	.\lcd.c:24: send_command(0x02);
      00079B 90 00 02         [24]  361 	mov	dptr,#0x0002
      00079E 12 07 D5         [24]  362 	lcall	_send_command
                                    363 ;	.\lcd.c:25: send_command(0x28);
      0007A1 90 00 28         [24]  364 	mov	dptr,#0x0028
      0007A4 12 07 D5         [24]  365 	lcall	_send_command
                                    366 ;	.\lcd.c:26: send_command(0x0C);
      0007A7 90 00 0C         [24]  367 	mov	dptr,#0x000c
      0007AA 12 07 D5         [24]  368 	lcall	_send_command
                                    369 ;	.\lcd.c:27: send_command(0x06);
      0007AD 90 00 06         [24]  370 	mov	dptr,#0x0006
      0007B0 12 07 D5         [24]  371 	lcall	_send_command
                                    372 ;	.\lcd.c:28: send_command(0x01);
      0007B3 90 00 01         [24]  373 	mov	dptr,#0x0001
                                    374 ;	.\lcd.c:29: }
      0007B6 02 07 D5         [24]  375 	ljmp	_send_command
                                    376 ;------------------------------------------------------------
                                    377 ;Allocation info for local variables in function 'start_con'
                                    378 ;------------------------------------------------------------
                                    379 ;	.\lcd.c:31: void start_con(void){
                                    380 ;	-----------------------------------------
                                    381 ;	 function start_con
                                    382 ;	-----------------------------------------
      0007B9                        383 _start_con:
                                    384 ;	.\lcd.c:32: P2_6 = 1; 
                                    385 ;	assignBit
      0007B9 D2 A6            [12]  386 	setb	_P2_6
                                    387 ;	.\lcd.c:33: P2_7 = 1;
                                    388 ;	assignBit
      0007BB D2 A7            [12]  389 	setb	_P2_7
                                    390 ;	.\lcd.c:34: P2_6 = 0;
                                    391 ;	assignBit
      0007BD C2 A6            [12]  392 	clr	_P2_6
                                    393 ;	.\lcd.c:35: P2_7 = 0;
                                    394 ;	assignBit
      0007BF C2 A7            [12]  395 	clr	_P2_7
                                    396 ;	.\lcd.c:36: delay(1);
      0007C1 90 00 01         [24]  397 	mov	dptr,#0x0001
                                    398 ;	.\lcd.c:37: }
      0007C4 02 04 66         [24]  399 	ljmp	_delay
                                    400 ;------------------------------------------------------------
                                    401 ;Allocation info for local variables in function 'stop_con'
                                    402 ;------------------------------------------------------------
                                    403 ;	.\lcd.c:39: void stop_con(void){
                                    404 ;	-----------------------------------------
                                    405 ;	 function stop_con
                                    406 ;	-----------------------------------------
      0007C7                        407 _stop_con:
                                    408 ;	.\lcd.c:40: P2_6 = 0;
                                    409 ;	assignBit
      0007C7 C2 A6            [12]  410 	clr	_P2_6
                                    411 ;	.\lcd.c:41: P2_7 = 1;
                                    412 ;	assignBit
      0007C9 D2 A7            [12]  413 	setb	_P2_7
                                    414 ;	.\lcd.c:42: P2_6 = 1;
                                    415 ;	assignBit
      0007CB D2 A6            [12]  416 	setb	_P2_6
                                    417 ;	.\lcd.c:43: P2_7 = 0;
                                    418 ;	assignBit
      0007CD C2 A7            [12]  419 	clr	_P2_7
                                    420 ;	.\lcd.c:44: delay(1);
      0007CF 90 00 01         [24]  421 	mov	dptr,#0x0001
                                    422 ;	.\lcd.c:45: }
      0007D2 02 04 66         [24]  423 	ljmp	_delay
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function 'send_command'
                                    426 ;------------------------------------------------------------
                                    427 ;cmd                       Allocated to registers r6 r7 
                                    428 ;lower                     Allocated to registers r4 r5 
                                    429 ;upper                     Allocated to registers r6 r7 
                                    430 ;------------------------------------------------------------
                                    431 ;	.\lcd.c:47: void send_command(int cmd){
                                    432 ;	-----------------------------------------
                                    433 ;	 function send_command
                                    434 ;	-----------------------------------------
      0007D5                        435 _send_command:
      0007D5 AE 82            [24]  436 	mov	r6, dpl
      0007D7 AF 83            [24]  437 	mov	r7, dph
                                    438 ;	.\lcd.c:52: lower = (cmd<<4) & 0xF0;
      0007D9 8E 04            [24]  439 	mov	ar4,r6
      0007DB EF               [12]  440 	mov	a,r7
      0007DC C4               [12]  441 	swap	a
      0007DD 54 F0            [12]  442 	anl	a,#0xf0
      0007DF CC               [12]  443 	xch	a,r4
      0007E0 C4               [12]  444 	swap	a
      0007E1 CC               [12]  445 	xch	a,r4
      0007E2 6C               [12]  446 	xrl	a,r4
      0007E3 CC               [12]  447 	xch	a,r4
      0007E4 54 F0            [12]  448 	anl	a,#0xf0
      0007E6 CC               [12]  449 	xch	a,r4
      0007E7 6C               [12]  450 	xrl	a,r4
      0007E8 53 04 F0         [24]  451 	anl	ar4,#0xf0
      0007EB 7D 00            [12]  452 	mov	r5,#0x00
                                    453 ;	.\lcd.c:55: upper = (cmd & 0xF0);
      0007ED 53 06 F0         [24]  454 	anl	ar6,#0xf0
      0007F0 7F 00            [12]  455 	mov	r7,#0x00
                                    456 ;	.\lcd.c:57: start_con();
      0007F2 C0 07            [24]  457 	push	ar7
      0007F4 C0 06            [24]  458 	push	ar6
      0007F6 C0 05            [24]  459 	push	ar5
      0007F8 C0 04            [24]  460 	push	ar4
      0007FA 12 07 B9         [24]  461 	lcall	_start_con
                                    462 ;	.\lcd.c:58: write(0x4E);
      0007FD 90 00 4E         [24]  463 	mov	dptr,#0x004e
      000800 12 09 30         [24]  464 	lcall	_write
                                    465 ;	.\lcd.c:59: ack();
      000803 12 09 6C         [24]  466 	lcall	_ack
      000806 D0 04            [24]  467 	pop	ar4
      000808 D0 05            [24]  468 	pop	ar5
      00080A D0 06            [24]  469 	pop	ar6
      00080C D0 07            [24]  470 	pop	ar7
                                    471 ;	.\lcd.c:60: write(upper|0x0C);
      00080E 74 0C            [12]  472 	mov	a,#0x0c
      000810 4E               [12]  473 	orl	a,r6
      000811 F5 82            [12]  474 	mov	dpl,a
      000813 8F 83            [24]  475 	mov	dph,r7
      000815 C0 07            [24]  476 	push	ar7
      000817 C0 06            [24]  477 	push	ar6
      000819 C0 05            [24]  478 	push	ar5
      00081B C0 04            [24]  479 	push	ar4
      00081D 12 09 30         [24]  480 	lcall	_write
                                    481 ;	.\lcd.c:61: ack();
      000820 12 09 6C         [24]  482 	lcall	_ack
      000823 D0 04            [24]  483 	pop	ar4
      000825 D0 05            [24]  484 	pop	ar5
      000827 D0 06            [24]  485 	pop	ar6
      000829 D0 07            [24]  486 	pop	ar7
                                    487 ;	.\lcd.c:62: write(upper|0x08);
      00082B 74 08            [12]  488 	mov	a,#0x08
      00082D 4E               [12]  489 	orl	a,r6
      00082E F5 82            [12]  490 	mov	dpl,a
      000830 8F 83            [24]  491 	mov	dph,r7
      000832 C0 05            [24]  492 	push	ar5
      000834 C0 04            [24]  493 	push	ar4
      000836 12 09 30         [24]  494 	lcall	_write
                                    495 ;	.\lcd.c:63: ack();
      000839 12 09 6C         [24]  496 	lcall	_ack
      00083C D0 04            [24]  497 	pop	ar4
      00083E D0 05            [24]  498 	pop	ar5
                                    499 ;	.\lcd.c:64: write(lower|0x0C);
      000840 74 0C            [12]  500 	mov	a,#0x0c
      000842 4C               [12]  501 	orl	a,r4
      000843 F5 82            [12]  502 	mov	dpl,a
      000845 8D 83            [24]  503 	mov	dph,r5
      000847 C0 05            [24]  504 	push	ar5
      000849 C0 04            [24]  505 	push	ar4
      00084B 12 09 30         [24]  506 	lcall	_write
                                    507 ;	.\lcd.c:65: ack();
      00084E 12 09 6C         [24]  508 	lcall	_ack
      000851 D0 04            [24]  509 	pop	ar4
      000853 D0 05            [24]  510 	pop	ar5
                                    511 ;	.\lcd.c:66: write(lower|0x08);
      000855 74 08            [12]  512 	mov	a,#0x08
      000857 4C               [12]  513 	orl	a,r4
      000858 F5 82            [12]  514 	mov	dpl,a
      00085A 8D 83            [24]  515 	mov	dph,r5
      00085C 12 09 30         [24]  516 	lcall	_write
                                    517 ;	.\lcd.c:67: ack();
      00085F 12 09 6C         [24]  518 	lcall	_ack
                                    519 ;	.\lcd.c:68: stop_con();
                                    520 ;	.\lcd.c:69: }
      000862 02 07 C7         [24]  521 	ljmp	_stop_con
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'send_data'
                                    524 ;------------------------------------------------------------
                                    525 ;dt                        Allocated to registers r6 r7 
                                    526 ;lower                     Allocated to registers r4 r5 
                                    527 ;upper                     Allocated to registers r6 r7 
                                    528 ;------------------------------------------------------------
                                    529 ;	.\lcd.c:71: void send_data(int dt){
                                    530 ;	-----------------------------------------
                                    531 ;	 function send_data
                                    532 ;	-----------------------------------------
      000865                        533 _send_data:
      000865 AE 82            [24]  534 	mov	r6, dpl
      000867 AF 83            [24]  535 	mov	r7, dph
                                    536 ;	.\lcd.c:75: lower = (dt<<4) & 0xF0;
      000869 8E 04            [24]  537 	mov	ar4,r6
      00086B EF               [12]  538 	mov	a,r7
      00086C C4               [12]  539 	swap	a
      00086D 54 F0            [12]  540 	anl	a,#0xf0
      00086F CC               [12]  541 	xch	a,r4
      000870 C4               [12]  542 	swap	a
      000871 CC               [12]  543 	xch	a,r4
      000872 6C               [12]  544 	xrl	a,r4
      000873 CC               [12]  545 	xch	a,r4
      000874 54 F0            [12]  546 	anl	a,#0xf0
      000876 CC               [12]  547 	xch	a,r4
      000877 6C               [12]  548 	xrl	a,r4
      000878 53 04 F0         [24]  549 	anl	ar4,#0xf0
      00087B 7D 00            [12]  550 	mov	r5,#0x00
                                    551 ;	.\lcd.c:77: upper = (dt & 0xF0);
      00087D 53 06 F0         [24]  552 	anl	ar6,#0xf0
      000880 7F 00            [12]  553 	mov	r7,#0x00
                                    554 ;	.\lcd.c:79: start_con();
      000882 C0 07            [24]  555 	push	ar7
      000884 C0 06            [24]  556 	push	ar6
      000886 C0 05            [24]  557 	push	ar5
      000888 C0 04            [24]  558 	push	ar4
      00088A 12 07 B9         [24]  559 	lcall	_start_con
                                    560 ;	.\lcd.c:80: write(0x4E);
      00088D 90 00 4E         [24]  561 	mov	dptr,#0x004e
      000890 12 09 30         [24]  562 	lcall	_write
                                    563 ;	.\lcd.c:81: ack();
      000893 12 09 6C         [24]  564 	lcall	_ack
      000896 D0 04            [24]  565 	pop	ar4
      000898 D0 05            [24]  566 	pop	ar5
      00089A D0 06            [24]  567 	pop	ar6
      00089C D0 07            [24]  568 	pop	ar7
                                    569 ;	.\lcd.c:82: write(upper|0x0D);
      00089E 74 0D            [12]  570 	mov	a,#0x0d
      0008A0 4E               [12]  571 	orl	a,r6
      0008A1 F5 82            [12]  572 	mov	dpl,a
      0008A3 8F 83            [24]  573 	mov	dph,r7
      0008A5 C0 07            [24]  574 	push	ar7
      0008A7 C0 06            [24]  575 	push	ar6
      0008A9 C0 05            [24]  576 	push	ar5
      0008AB C0 04            [24]  577 	push	ar4
      0008AD 12 09 30         [24]  578 	lcall	_write
                                    579 ;	.\lcd.c:83: ack();
      0008B0 12 09 6C         [24]  580 	lcall	_ack
      0008B3 D0 04            [24]  581 	pop	ar4
      0008B5 D0 05            [24]  582 	pop	ar5
      0008B7 D0 06            [24]  583 	pop	ar6
      0008B9 D0 07            [24]  584 	pop	ar7
                                    585 ;	.\lcd.c:84: write(upper|0x09);
      0008BB 74 09            [12]  586 	mov	a,#0x09
      0008BD 4E               [12]  587 	orl	a,r6
      0008BE F5 82            [12]  588 	mov	dpl,a
      0008C0 8F 83            [24]  589 	mov	dph,r7
      0008C2 C0 05            [24]  590 	push	ar5
      0008C4 C0 04            [24]  591 	push	ar4
      0008C6 12 09 30         [24]  592 	lcall	_write
                                    593 ;	.\lcd.c:85: ack();
      0008C9 12 09 6C         [24]  594 	lcall	_ack
      0008CC D0 04            [24]  595 	pop	ar4
      0008CE D0 05            [24]  596 	pop	ar5
                                    597 ;	.\lcd.c:86: write(lower|0x0D);
      0008D0 74 0D            [12]  598 	mov	a,#0x0d
      0008D2 4C               [12]  599 	orl	a,r4
      0008D3 F5 82            [12]  600 	mov	dpl,a
      0008D5 8D 83            [24]  601 	mov	dph,r5
      0008D7 C0 05            [24]  602 	push	ar5
      0008D9 C0 04            [24]  603 	push	ar4
      0008DB 12 09 30         [24]  604 	lcall	_write
                                    605 ;	.\lcd.c:87: ack();
      0008DE 12 09 6C         [24]  606 	lcall	_ack
      0008E1 D0 04            [24]  607 	pop	ar4
      0008E3 D0 05            [24]  608 	pop	ar5
                                    609 ;	.\lcd.c:88: write(lower|0x09);
      0008E5 74 09            [12]  610 	mov	a,#0x09
      0008E7 4C               [12]  611 	orl	a,r4
      0008E8 F5 82            [12]  612 	mov	dpl,a
      0008EA 8D 83            [24]  613 	mov	dph,r5
      0008EC 12 09 30         [24]  614 	lcall	_write
                                    615 ;	.\lcd.c:89: ack();
      0008EF 12 09 6C         [24]  616 	lcall	_ack
                                    617 ;	.\lcd.c:90: stop_con();
                                    618 ;	.\lcd.c:91: }
      0008F2 02 07 C7         [24]  619 	ljmp	_stop_con
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'send_str'
                                    622 ;------------------------------------------------------------
                                    623 ;p                         Allocated to registers 
                                    624 ;counter                   Allocated to registers r4 
                                    625 ;------------------------------------------------------------
                                    626 ;	.\lcd.c:93: void send_str(char *p){
                                    627 ;	-----------------------------------------
                                    628 ;	 function send_str
                                    629 ;	-----------------------------------------
      0008F5                        630 _send_str:
      0008F5 AD 82            [24]  631 	mov	r5, dpl
      0008F7 AE 83            [24]  632 	mov	r6, dph
      0008F9 AF F0            [24]  633 	mov	r7, b
                                    634 ;	.\lcd.c:95: while(*p != '\0'){
      0008FB 7C 00            [12]  635 	mov	r4,#0x00
      0008FD                        636 00103$:
      0008FD 8D 82            [24]  637 	mov	dpl,r5
      0008FF 8E 83            [24]  638 	mov	dph,r6
      000901 8F F0            [24]  639 	mov	b,r7
      000903 12 09 C5         [24]  640 	lcall	__gptrget
      000906 FB               [12]  641 	mov	r3,a
      000907 60 26            [24]  642 	jz	00106$
                                    643 ;	.\lcd.c:96: if(counter > 16){
      000909 EC               [12]  644 	mov	a,r4
      00090A 24 EF            [12]  645 	add	a,#0xff - 0x10
      00090C 40 21            [24]  646 	jc	00106$
                                    647 ;	.\lcd.c:99: send_data(*p++);
      00090E 0D               [12]  648 	inc	r5
      00090F BD 00 01         [24]  649 	cjne	r5,#0x00,00129$
      000912 0E               [12]  650 	inc	r6
      000913                        651 00129$:
      000913 7A 00            [12]  652 	mov	r2,#0x00
      000915 8B 82            [24]  653 	mov	dpl, r3
      000917 8A 83            [24]  654 	mov	dph, r2
      000919 C0 07            [24]  655 	push	ar7
      00091B C0 06            [24]  656 	push	ar6
      00091D C0 05            [24]  657 	push	ar5
      00091F C0 04            [24]  658 	push	ar4
      000921 12 08 65         [24]  659 	lcall	_send_data
      000924 D0 04            [24]  660 	pop	ar4
      000926 D0 05            [24]  661 	pop	ar5
      000928 D0 06            [24]  662 	pop	ar6
      00092A D0 07            [24]  663 	pop	ar7
                                    664 ;	.\lcd.c:100: counter++;
      00092C 0C               [12]  665 	inc	r4
      00092D 80 CE            [24]  666 	sjmp	00103$
      00092F                        667 00106$:
                                    668 ;	.\lcd.c:102: }
      00092F 22               [24]  669 	ret
                                    670 ;------------------------------------------------------------
                                    671 ;Allocation info for local variables in function 'write'
                                    672 ;------------------------------------------------------------
                                    673 ;dt                        Allocated to registers r6 r7 
                                    674 ;i                         Allocated to registers r5 
                                    675 ;------------------------------------------------------------
                                    676 ;	.\lcd.c:104: void write(int dt){
                                    677 ;	-----------------------------------------
                                    678 ;	 function write
                                    679 ;	-----------------------------------------
      000930                        680 _write:
      000930 AE 82            [24]  681 	mov	r6, dpl
      000932 AF 83            [24]  682 	mov	r7, dph
                                    683 ;	.\lcd.c:111: for(int i = 0; i < 8; i++){
      000934 7D 00            [12]  684 	mov	r5,#0x00
      000936                        685 00103$:
      000936 BD 08 00         [24]  686 	cjne	r5,#0x08,00120$
      000939                        687 00120$:
      000939 50 2B            [24]  688 	jnc	00101$
                                    689 ;	.\lcd.c:112: P2_6 = (dt & (0x80 >> i)) ? 1 : 0;
      00093B 8D F0            [24]  690 	mov	b,r5
      00093D 05 F0            [12]  691 	inc	b
      00093F 7B 80            [12]  692 	mov	r3,#0x80
      000941 E4               [12]  693 	clr	a
      000942 FC               [12]  694 	mov	r4,a
      000943 33               [12]  695 	rlc	a
      000944 92 D2            [24]  696 	mov	ov,c
      000946 80 08            [24]  697 	sjmp	00123$
      000948                        698 00122$:
      000948 A2 D2            [12]  699 	mov	c,ov
      00094A EC               [12]  700 	mov	a,r4
      00094B 13               [12]  701 	rrc	a
      00094C FC               [12]  702 	mov	r4,a
      00094D EB               [12]  703 	mov	a,r3
      00094E 13               [12]  704 	rrc	a
      00094F FB               [12]  705 	mov	r3,a
      000950                        706 00123$:
      000950 D5 F0 F5         [24]  707 	djnz	b,00122$
      000953 EE               [12]  708 	mov	a,r6
      000954 52 03            [12]  709 	anl	ar3,a
      000956 EF               [12]  710 	mov	a,r7
      000957 52 04            [12]  711 	anl	ar4,a
                                    712 ;	assignBit
      000959 EB               [12]  713 	mov	a,r3
      00095A 4C               [12]  714 	orl	a,r4
      00095B 24 FF            [12]  715 	add	a,#0xff
      00095D 92 A6            [24]  716 	mov	_P2_6,c
                                    717 ;	.\lcd.c:113: P2_7 = 1;
                                    718 ;	assignBit
      00095F D2 A7            [12]  719 	setb	_P2_7
                                    720 ;	.\lcd.c:114: P2_7 = 0;
                                    721 ;	assignBit
      000961 C2 A7            [12]  722 	clr	_P2_7
                                    723 ;	.\lcd.c:111: for(int i = 0; i < 8; i++){
      000963 0D               [12]  724 	inc	r5
      000964 80 D0            [24]  725 	sjmp	00103$
      000966                        726 00101$:
                                    727 ;	.\lcd.c:116: delay(1);
      000966 90 00 01         [24]  728 	mov	dptr,#0x0001
                                    729 ;	.\lcd.c:117: }
      000969 02 04 66         [24]  730 	ljmp	_delay
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'ack'
                                    733 ;------------------------------------------------------------
                                    734 ;	.\lcd.c:119: void ack(void){
                                    735 ;	-----------------------------------------
                                    736 ;	 function ack
                                    737 ;	-----------------------------------------
      00096C                        738 _ack:
                                    739 ;	.\lcd.c:120: P2_6 = 1;
                                    740 ;	assignBit
      00096C D2 A6            [12]  741 	setb	_P2_6
                                    742 ;	.\lcd.c:121: P2_7 = 1;
                                    743 ;	assignBit
      00096E D2 A7            [12]  744 	setb	_P2_7
                                    745 ;	.\lcd.c:122: P2_7 = 0;
                                    746 ;	assignBit
      000970 C2 A7            [12]  747 	clr	_P2_7
                                    748 ;	.\lcd.c:123: delay(1);
      000972 90 00 01         [24]  749 	mov	dptr,#0x0001
                                    750 ;	.\lcd.c:124: }
      000975 02 04 66         [24]  751 	ljmp	_delay
                                    752 	.area CSEG    (CODE)
                                    753 	.area CONST   (CODE)
                                    754 	.area XINIT   (CODE)
                                    755 	.area CABS    (ABS,CODE)
