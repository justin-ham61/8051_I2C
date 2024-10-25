                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module screen
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
                                    108 	.globl _current_val
                                    109 	.globl _vals
                                    110 	.globl _table
                                    111 	.globl _display_poll
                                    112 	.globl _display
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
      000008                        228 _table::
      000008                        229 	.ds 20
      00001C                        230 _vals::
      00001C                        231 	.ds 8
      000024                        232 _current_val::
      000024                        233 	.ds 2
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram
                                    236 ;--------------------------------------------------------
                                    237 	.area	OSEG    (OVR,DATA)
      000057                        238 _display_poll_i_50000_11:
      000057                        239 	.ds 2
      000059                        240 _display_poll_i_50000_18:
      000059                        241 	.ds 2
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; uninitialized external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; initialized external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; global & static initialisations
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 ;	.\screen.c:8: int table[10] = { 
      00007A 75 08 C0         [24]  289 	mov	(_table + 0),#0xc0
      00007D 75 09 00         [24]  290 	mov	(_table + 1),#0x00
      000080 75 0A F9         [24]  291 	mov	((_table + 0x0002) + 0),#0xf9
      000083 75 0B 00         [24]  292 	mov	((_table + 0x0002) + 1),#0x00
      000086 75 0C A4         [24]  293 	mov	((_table + 0x0004) + 0),#0xa4
      000089 75 0D 00         [24]  294 	mov	((_table + 0x0004) + 1),#0x00
      00008C 75 0E B0         [24]  295 	mov	((_table + 0x0006) + 0),#0xb0
      00008F 75 0F 00         [24]  296 	mov	((_table + 0x0006) + 1),#0x00
      000092 75 10 99         [24]  297 	mov	((_table + 0x0008) + 0),#0x99
      000095 75 11 00         [24]  298 	mov	((_table + 0x0008) + 1),#0x00
      000098 75 12 92         [24]  299 	mov	((_table + 0x000a) + 0),#0x92
      00009B 75 13 00         [24]  300 	mov	((_table + 0x000a) + 1),#0x00
      00009E 75 14 82         [24]  301 	mov	((_table + 0x000c) + 0),#0x82
      0000A1 75 15 00         [24]  302 	mov	((_table + 0x000c) + 1),#0x00
      0000A4 75 16 F8         [24]  303 	mov	((_table + 0x000e) + 0),#0xf8
      0000A7 75 17 00         [24]  304 	mov	((_table + 0x000e) + 1),#0x00
      0000AA 75 18 80         [24]  305 	mov	((_table + 0x0010) + 0),#0x80
      0000AD 75 19 00         [24]  306 	mov	((_table + 0x0010) + 1),#0x00
      0000B0 75 1A 90         [24]  307 	mov	((_table + 0x0012) + 0),#0x90
      0000B3 75 1B 00         [24]  308 	mov	((_table + 0x0012) + 1),#0x00
                                    309 ;	.\screen.c:16: int vals[4] = {0, 0, 0, 0};
      0000B6 E4               [12]  310 	clr	a
      0000B7 F5 1C            [12]  311 	mov	(_vals + 0),a
      0000B9 F5 1D            [12]  312 	mov	(_vals + 1),a
      0000BB F5 1E            [12]  313 	mov	((_vals + 0x0002) + 0),a
      0000BD F5 1F            [12]  314 	mov	((_vals + 0x0002) + 1),a
      0000BF F5 20            [12]  315 	mov	((_vals + 0x0004) + 0),a
      0000C1 F5 21            [12]  316 	mov	((_vals + 0x0004) + 1),a
      0000C3 F5 22            [12]  317 	mov	((_vals + 0x0006) + 0),a
      0000C5 F5 23            [12]  318 	mov	((_vals + 0x0006) + 1),a
                                    319 ;	.\screen.c:17: int current_val = 0; 
      0000C7 F5 24            [12]  320 	mov	_current_val,a
      0000C9 F5 25            [12]  321 	mov	(_current_val + 1),a
                                    322 ;--------------------------------------------------------
                                    323 ; Home
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area HOME    (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; code
                                    329 ;--------------------------------------------------------
                                    330 	.area CSEG    (CODE)
                                    331 ;------------------------------------------------------------
                                    332 ;Allocation info for local variables in function 'display_poll'
                                    333 ;------------------------------------------------------------
                                    334 ;carry                     Allocated to registers r6 r7 
                                    335 ;idx                       Allocated to registers r4 r5 
                                    336 ;i                         Allocated with name '_display_poll_i_50000_11'
                                    337 ;minus_carry               Allocated to registers r6 r7 
                                    338 ;idx                       Allocated to registers r4 r5 
                                    339 ;i                         Allocated with name '_display_poll_i_50000_18'
                                    340 ;------------------------------------------------------------
                                    341 ;	.\screen.c:19: void display_poll(void)
                                    342 ;	-----------------------------------------
                                    343 ;	 function display_poll
                                    344 ;	-----------------------------------------
      00018E                        345 _display_poll:
                           000007   346 	ar7 = 0x07
                           000006   347 	ar6 = 0x06
                           000005   348 	ar5 = 0x05
                           000004   349 	ar4 = 0x04
                           000003   350 	ar3 = 0x03
                           000002   351 	ar2 = 0x02
                           000001   352 	ar1 = 0x01
                           000000   353 	ar0 = 0x00
                                    354 ;	.\screen.c:22: if((SCREEN_FLAG & 0xF0) == 0xF0){
      00018E 74 F0            [12]  355 	mov	a,#0xf0
      000190 55 2E            [12]  356 	anl	a,_SCREEN_FLAG
      000192 FE               [12]  357 	mov	r6,a
      000193 7F 00            [12]  358 	mov	r7,#0x00
      000195 BE F0 05         [24]  359 	cjne	r6,#0xf0,00231$
      000198 BF 00 02         [24]  360 	cjne	r7,#0x00,00231$
      00019B 80 03            [24]  361 	sjmp	00232$
      00019D                        362 00231$:
      00019D 02 02 49         [24]  363 	ljmp	00112$
      0001A0                        364 00232$:
                                    365 ;	.\screen.c:23: int carry = 1;
      0001A0 7E 01            [12]  366 	mov	r6,#0x01
      0001A2 7F 00            [12]  367 	mov	r7,#0x00
                                    368 ;	.\screen.c:25: while(carry == 1 && current_val < 9999){
      0001A4 7C 00            [12]  369 	mov	r4,#0x00
      0001A6 7D 00            [12]  370 	mov	r5,#0x00
      0001A8                        371 00108$:
      0001A8 BE 01 05         [24]  372 	cjne	r6,#0x01,00233$
      0001AB BF 00 02         [24]  373 	cjne	r7,#0x00,00233$
      0001AE 80 03            [24]  374 	sjmp	00234$
      0001B0                        375 00233$:
      0001B0 02 02 49         [24]  376 	ljmp	00112$
      0001B3                        377 00234$:
      0001B3 C3               [12]  378 	clr	c
      0001B4 E5 24            [12]  379 	mov	a,_current_val
      0001B6 94 0F            [12]  380 	subb	a,#0x0f
      0001B8 E5 25            [12]  381 	mov	a,(_current_val + 1)
      0001BA 64 80            [12]  382 	xrl	a,#0x80
      0001BC 94 A7            [12]  383 	subb	a,#0xa7
      0001BE 40 03            [24]  384 	jc	00235$
      0001C0 02 02 49         [24]  385 	ljmp	00112$
      0001C3                        386 00235$:
                                    387 ;	.\screen.c:26: if(idx > 4){
      0001C3 C3               [12]  388 	clr	c
      0001C4 74 04            [12]  389 	mov	a,#0x04
      0001C6 9C               [12]  390 	subb	a,r4
      0001C7 74 80            [12]  391 	mov	a,#(0x00 ^ 0x80)
      0001C9 8D F0            [24]  392 	mov	b,r5
      0001CB 63 F0 80         [24]  393 	xrl	b,#0x80
      0001CE 95 F0            [12]  394 	subb	a,b
      0001D0 50 34            [24]  395 	jnc	00103$
                                    396 ;	.\screen.c:27: for(int i = 0; i < 4; i++){
      0001D2 E4               [12]  397 	clr	a
      0001D3 F5 57            [12]  398 	mov	_display_poll_i_50000_11,a
      0001D5 F5 58            [12]  399 	mov	(_display_poll_i_50000_11 + 1),a
      0001D7                        400 00126$:
      0001D7 C3               [12]  401 	clr	c
      0001D8 E5 57            [12]  402 	mov	a,_display_poll_i_50000_11
      0001DA 94 04            [12]  403 	subb	a,#0x04
      0001DC E5 58            [12]  404 	mov	a,(_display_poll_i_50000_11 + 1)
      0001DE 64 80            [12]  405 	xrl	a,#0x80
      0001E0 94 80            [12]  406 	subb	a,#0x80
      0001E2 50 1B            [24]  407 	jnc	00101$
                                    408 ;	.\screen.c:28: vals[i] = 0;
      0001E4 E5 57            [12]  409 	mov	a,_display_poll_i_50000_11
      0001E6 25 57            [12]  410 	add	a,_display_poll_i_50000_11
      0001E8 FA               [12]  411 	mov	r2,a
      0001E9 E5 58            [12]  412 	mov	a,(_display_poll_i_50000_11 + 1)
      0001EB 33               [12]  413 	rlc	a
      0001EC EA               [12]  414 	mov	a,r2
      0001ED 24 1C            [12]  415 	add	a, #_vals
      0001EF F8               [12]  416 	mov	r0,a
      0001F0 76 00            [12]  417 	mov	@r0,#0x00
      0001F2 08               [12]  418 	inc	r0
      0001F3 76 00            [12]  419 	mov	@r0,#0x00
                                    420 ;	.\screen.c:27: for(int i = 0; i < 4; i++){
      0001F5 05 57            [12]  421 	inc	_display_poll_i_50000_11
      0001F7 E4               [12]  422 	clr	a
      0001F8 B5 57 DC         [24]  423 	cjne	a,_display_poll_i_50000_11,00126$
      0001FB 05 58            [12]  424 	inc	(_display_poll_i_50000_11 + 1)
      0001FD 80 D8            [24]  425 	sjmp	00126$
      0001FF                        426 00101$:
                                    427 ;	.\screen.c:30: current_val = 0;
      0001FF E4               [12]  428 	clr	a
      000200 F5 24            [12]  429 	mov	_current_val,a
      000202 F5 25            [12]  430 	mov	(_current_val + 1),a
                                    431 ;	.\screen.c:31: break;
      000204 80 43            [24]  432 	sjmp	00112$
      000206                        433 00103$:
                                    434 ;	.\screen.c:33: if(vals[idx] == 9){
      000206 EC               [12]  435 	mov	a,r4
      000207 2C               [12]  436 	add	a,r4
      000208 FA               [12]  437 	mov	r2,a
      000209 ED               [12]  438 	mov	a,r5
      00020A 33               [12]  439 	rlc	a
      00020B EA               [12]  440 	mov	a,r2
      00020C 24 1C            [12]  441 	add	a, #_vals
      00020E F9               [12]  442 	mov	r1,a
      00020F 87 02            [24]  443 	mov	ar2,@r1
      000211 09               [12]  444 	inc	r1
      000212 87 03            [24]  445 	mov	ar3,@r1
      000214 19               [12]  446 	dec	r1
      000215 BA 09 10         [24]  447 	cjne	r2,#0x09,00105$
      000218 BB 00 0D         [24]  448 	cjne	r3,#0x00,00105$
                                    449 ;	.\screen.c:34: vals[idx] = 0;
      00021B 77 00            [12]  450 	mov	@r1,#0x00
      00021D 09               [12]  451 	inc	r1
      00021E 77 00            [12]  452 	mov	@r1,#0x00
      000220 19               [12]  453 	dec	r1
                                    454 ;	.\screen.c:35: idx++;
      000221 0C               [12]  455 	inc	r4
      000222 BC 00 19         [24]  456 	cjne	r4,#0x00,00106$
      000225 0D               [12]  457 	inc	r5
      000226 80 16            [24]  458 	sjmp	00106$
      000228                        459 00105$:
                                    460 ;	.\screen.c:37: vals[idx] += carry;
      000228 87 02            [24]  461 	mov	ar2,@r1
      00022A 09               [12]  462 	inc	r1
      00022B 87 03            [24]  463 	mov	ar3,@r1
      00022D 19               [12]  464 	dec	r1
      00022E EE               [12]  465 	mov	a,r6
      00022F 2A               [12]  466 	add	a, r2
      000230 FA               [12]  467 	mov	r2,a
      000231 EF               [12]  468 	mov	a,r7
      000232 3B               [12]  469 	addc	a, r3
      000233 FB               [12]  470 	mov	r3,a
      000234 A7 02            [24]  471 	mov	@r1,ar2
      000236 09               [12]  472 	inc	r1
      000237 A7 03            [24]  473 	mov	@r1,ar3
      000239 19               [12]  474 	dec	r1
                                    475 ;	.\screen.c:38: carry = 0;
      00023A 7E 00            [12]  476 	mov	r6,#0x00
      00023C 7F 00            [12]  477 	mov	r7,#0x00
      00023E                        478 00106$:
                                    479 ;	.\screen.c:40: current_val++;
      00023E 05 24            [12]  480 	inc	_current_val
      000240 E4               [12]  481 	clr	a
      000241 B5 24 02         [24]  482 	cjne	a,_current_val,00242$
      000244 05 25            [12]  483 	inc	(_current_val + 1)
      000246                        484 00242$:
      000246 02 01 A8         [24]  485 	ljmp	00108$
      000249                        486 00112$:
                                    487 ;	.\screen.c:43: if((SCREEN_FLAG & 0x0F) == 0x0F){
      000249 74 0F            [12]  488 	mov	a,#0x0f
      00024B 55 2E            [12]  489 	anl	a,_SCREEN_FLAG
      00024D FE               [12]  490 	mov	r6,a
      00024E 7F 00            [12]  491 	mov	r7,#0x00
      000250 BE 0F 05         [24]  492 	cjne	r6,#0x0f,00243$
      000253 BF 00 02         [24]  493 	cjne	r7,#0x00,00243$
      000256 80 03            [24]  494 	sjmp	00244$
      000258                        495 00243$:
      000258 02 03 07         [24]  496 	ljmp	00124$
      00025B                        497 00244$:
                                    498 ;	.\screen.c:44: int minus_carry = 1;
      00025B 7E 01            [12]  499 	mov	r6,#0x01
      00025D 7F 00            [12]  500 	mov	r7,#0x00
                                    501 ;	.\screen.c:46: while(minus_carry == 1 && current_val > 0){
      00025F 7C 00            [12]  502 	mov	r4,#0x00
      000261 7D 00            [12]  503 	mov	r5,#0x00
      000263                        504 00120$:
      000263 BE 01 05         [24]  505 	cjne	r6,#0x01,00245$
      000266 BF 00 02         [24]  506 	cjne	r7,#0x00,00245$
      000269 80 03            [24]  507 	sjmp	00246$
      00026B                        508 00245$:
      00026B 02 03 07         [24]  509 	ljmp	00124$
      00026E                        510 00246$:
      00026E C3               [12]  511 	clr	c
      00026F E4               [12]  512 	clr	a
      000270 95 24            [12]  513 	subb	a,_current_val
      000272 74 80            [12]  514 	mov	a,#(0x00 ^ 0x80)
      000274 85 25 F0         [24]  515 	mov	b,(_current_val + 1)
      000277 63 F0 80         [24]  516 	xrl	b,#0x80
      00027A 95 F0            [12]  517 	subb	a,b
      00027C 40 03            [24]  518 	jc	00247$
      00027E 02 03 07         [24]  519 	ljmp	00124$
      000281                        520 00247$:
                                    521 ;	.\screen.c:47: if(idx > 4){
      000281 C3               [12]  522 	clr	c
      000282 74 04            [12]  523 	mov	a,#0x04
      000284 9C               [12]  524 	subb	a,r4
      000285 74 80            [12]  525 	mov	a,#(0x00 ^ 0x80)
      000287 8D F0            [24]  526 	mov	b,r5
      000289 63 F0 80         [24]  527 	xrl	b,#0x80
      00028C 95 F0            [12]  528 	subb	a,b
      00028E 50 34            [24]  529 	jnc	00115$
                                    530 ;	.\screen.c:48: for(int i = 0; i < 4; i++){
      000290 E4               [12]  531 	clr	a
      000291 F5 59            [12]  532 	mov	_display_poll_i_50000_18,a
      000293 F5 5A            [12]  533 	mov	(_display_poll_i_50000_18 + 1),a
      000295                        534 00129$:
      000295 C3               [12]  535 	clr	c
      000296 E5 59            [12]  536 	mov	a,_display_poll_i_50000_18
      000298 94 04            [12]  537 	subb	a,#0x04
      00029A E5 5A            [12]  538 	mov	a,(_display_poll_i_50000_18 + 1)
      00029C 64 80            [12]  539 	xrl	a,#0x80
      00029E 94 80            [12]  540 	subb	a,#0x80
      0002A0 50 1B            [24]  541 	jnc	00113$
                                    542 ;	.\screen.c:49: vals[i] = 0;
      0002A2 E5 59            [12]  543 	mov	a,_display_poll_i_50000_18
      0002A4 25 59            [12]  544 	add	a,_display_poll_i_50000_18
      0002A6 FA               [12]  545 	mov	r2,a
      0002A7 E5 5A            [12]  546 	mov	a,(_display_poll_i_50000_18 + 1)
      0002A9 33               [12]  547 	rlc	a
      0002AA EA               [12]  548 	mov	a,r2
      0002AB 24 1C            [12]  549 	add	a, #_vals
      0002AD F8               [12]  550 	mov	r0,a
      0002AE 76 00            [12]  551 	mov	@r0,#0x00
      0002B0 08               [12]  552 	inc	r0
      0002B1 76 00            [12]  553 	mov	@r0,#0x00
                                    554 ;	.\screen.c:48: for(int i = 0; i < 4; i++){
      0002B3 05 59            [12]  555 	inc	_display_poll_i_50000_18
      0002B5 E4               [12]  556 	clr	a
      0002B6 B5 59 DC         [24]  557 	cjne	a,_display_poll_i_50000_18,00129$
      0002B9 05 5A            [12]  558 	inc	(_display_poll_i_50000_18 + 1)
      0002BB 80 D8            [24]  559 	sjmp	00129$
      0002BD                        560 00113$:
                                    561 ;	.\screen.c:51: current_val = 0;
      0002BD E4               [12]  562 	clr	a
      0002BE F5 24            [12]  563 	mov	_current_val,a
      0002C0 F5 25            [12]  564 	mov	(_current_val + 1),a
                                    565 ;	.\screen.c:52: break;
      0002C2 80 43            [24]  566 	sjmp	00124$
      0002C4                        567 00115$:
                                    568 ;	.\screen.c:54: if(vals[idx] == 0){
      0002C4 EC               [12]  569 	mov	a,r4
      0002C5 2C               [12]  570 	add	a,r4
      0002C6 FA               [12]  571 	mov	r2,a
      0002C7 ED               [12]  572 	mov	a,r5
      0002C8 33               [12]  573 	rlc	a
      0002C9 EA               [12]  574 	mov	a,r2
      0002CA 24 1C            [12]  575 	add	a, #_vals
      0002CC F9               [12]  576 	mov	r1,a
      0002CD 87 02            [24]  577 	mov	ar2,@r1
      0002CF 09               [12]  578 	inc	r1
      0002D0 87 03            [24]  579 	mov	ar3,@r1
      0002D2 19               [12]  580 	dec	r1
      0002D3 EA               [12]  581 	mov	a,r2
      0002D4 4B               [12]  582 	orl	a,r3
      0002D5 70 0D            [24]  583 	jnz	00117$
                                    584 ;	.\screen.c:55: vals[idx] = 9;
      0002D7 77 09            [12]  585 	mov	@r1,#0x09
      0002D9 09               [12]  586 	inc	r1
      0002DA 77 00            [12]  587 	mov	@r1,#0x00
      0002DC 19               [12]  588 	dec	r1
                                    589 ;	.\screen.c:56: idx++;
      0002DD 0C               [12]  590 	inc	r4
      0002DE BC 00 1A         [24]  591 	cjne	r4,#0x00,00118$
      0002E1 0D               [12]  592 	inc	r5
      0002E2 80 17            [24]  593 	sjmp	00118$
      0002E4                        594 00117$:
                                    595 ;	.\screen.c:58: vals[idx] -= minus_carry;
      0002E4 87 02            [24]  596 	mov	ar2,@r1
      0002E6 09               [12]  597 	inc	r1
      0002E7 87 03            [24]  598 	mov	ar3,@r1
      0002E9 19               [12]  599 	dec	r1
      0002EA EA               [12]  600 	mov	a,r2
      0002EB C3               [12]  601 	clr	c
      0002EC 9E               [12]  602 	subb	a,r6
      0002ED FA               [12]  603 	mov	r2,a
      0002EE EB               [12]  604 	mov	a,r3
      0002EF 9F               [12]  605 	subb	a,r7
      0002F0 FB               [12]  606 	mov	r3,a
      0002F1 A7 02            [24]  607 	mov	@r1,ar2
      0002F3 09               [12]  608 	inc	r1
      0002F4 A7 03            [24]  609 	mov	@r1,ar3
      0002F6 19               [12]  610 	dec	r1
                                    611 ;	.\screen.c:59: minus_carry = 0;
      0002F7 7E 00            [12]  612 	mov	r6,#0x00
      0002F9 7F 00            [12]  613 	mov	r7,#0x00
      0002FB                        614 00118$:
                                    615 ;	.\screen.c:61: current_val--;
      0002FB 15 24            [12]  616 	dec	_current_val
      0002FD 74 FF            [12]  617 	mov	a,#0xff
      0002FF B5 24 02         [24]  618 	cjne	a,_current_val,00253$
      000302 15 25            [12]  619 	dec	(_current_val + 1)
      000304                        620 00253$:
      000304 02 02 63         [24]  621 	ljmp	00120$
      000307                        622 00124$:
                                    623 ;	.\screen.c:64: SCREEN_FLAG = 0x00;
      000307 E4               [12]  624 	clr	a
      000308 F5 2E            [12]  625 	mov	_SCREEN_FLAG,a
      00030A F5 2F            [12]  626 	mov	(_SCREEN_FLAG + 1),a
                                    627 ;	.\screen.c:65: }
      00030C 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'display'
                                    631 ;------------------------------------------------------------
                                    632 ;	.\screen.c:68: void display(void)
                                    633 ;	-----------------------------------------
                                    634 ;	 function display
                                    635 ;	-----------------------------------------
      00030D                        636 _display:
                                    637 ;	.\screen.c:73: P0 = table[vals[0]];
      00030D E5 1C            [12]  638 	mov	a,_vals
      00030F 25 1C            [12]  639 	add	a,_vals
      000311 FE               [12]  640 	mov	r6,a
      000312 E5 1D            [12]  641 	mov	a,(_vals + 1)
      000314 33               [12]  642 	rlc	a
      000315 EE               [12]  643 	mov	a,r6
      000316 24 08            [12]  644 	add	a, #_table
      000318 F9               [12]  645 	mov	r1,a
      000319 87 80            [24]  646 	mov	_P0,@r1
                                    647 ;	.\screen.c:74: P2_3 = 0;
                                    648 ;	assignBit
      00031B C2 A3            [12]  649 	clr	_P2_3
                                    650 ;	.\screen.c:75: delay(1);
      00031D 90 00 01         [24]  651 	mov	dptr,#0x0001
      000320 12 04 66         [24]  652 	lcall	_delay
                                    653 ;	.\screen.c:76: P2_3 = 1;
                                    654 ;	assignBit
      000323 D2 A3            [12]  655 	setb	_P2_3
                                    656 ;	.\screen.c:78: P0 = table[vals[1]];
      000325 E5 1E            [12]  657 	mov	a,(_vals + 0x0002)
      000327 25 E0            [12]  658 	add	a,acc
      000329 FE               [12]  659 	mov	r6,a
      00032A E5 1F            [12]  660 	mov	a,((_vals + 0x0002) + 1)
      00032C 33               [12]  661 	rlc	a
      00032D EE               [12]  662 	mov	a,r6
      00032E 24 08            [12]  663 	add	a, #_table
      000330 F9               [12]  664 	mov	r1,a
      000331 87 80            [24]  665 	mov	_P0,@r1
                                    666 ;	.\screen.c:79: P2_2 = 0;
                                    667 ;	assignBit
      000333 C2 A2            [12]  668 	clr	_P2_2
                                    669 ;	.\screen.c:80: delay(1);
      000335 90 00 01         [24]  670 	mov	dptr,#0x0001
      000338 12 04 66         [24]  671 	lcall	_delay
                                    672 ;	.\screen.c:81: P2_2 = 1;
                                    673 ;	assignBit
      00033B D2 A2            [12]  674 	setb	_P2_2
                                    675 ;	.\screen.c:83: P0 = table[vals[2]];
      00033D E5 20            [12]  676 	mov	a,(_vals + 0x0004)
      00033F 25 E0            [12]  677 	add	a,acc
      000341 FE               [12]  678 	mov	r6,a
      000342 E5 21            [12]  679 	mov	a,((_vals + 0x0004) + 1)
      000344 33               [12]  680 	rlc	a
      000345 EE               [12]  681 	mov	a,r6
      000346 24 08            [12]  682 	add	a, #_table
      000348 F9               [12]  683 	mov	r1,a
      000349 87 80            [24]  684 	mov	_P0,@r1
                                    685 ;	.\screen.c:84: P2_1 = 0;
                                    686 ;	assignBit
      00034B C2 A1            [12]  687 	clr	_P2_1
                                    688 ;	.\screen.c:85: delay(1);
      00034D 90 00 01         [24]  689 	mov	dptr,#0x0001
      000350 12 04 66         [24]  690 	lcall	_delay
                                    691 ;	.\screen.c:86: P2_1 = 1;
                                    692 ;	assignBit
      000353 D2 A1            [12]  693 	setb	_P2_1
                                    694 ;	.\screen.c:88: P0 = table[vals[3]];
      000355 E5 22            [12]  695 	mov	a,(_vals + 0x0006)
      000357 25 E0            [12]  696 	add	a,acc
      000359 FE               [12]  697 	mov	r6,a
      00035A E5 23            [12]  698 	mov	a,((_vals + 0x0006) + 1)
      00035C 33               [12]  699 	rlc	a
      00035D EE               [12]  700 	mov	a,r6
      00035E 24 08            [12]  701 	add	a, #_table
      000360 F9               [12]  702 	mov	r1,a
      000361 87 80            [24]  703 	mov	_P0,@r1
                                    704 ;	.\screen.c:89: P2_0 = 0;
                                    705 ;	assignBit
      000363 C2 A0            [12]  706 	clr	_P2_0
                                    707 ;	.\screen.c:90: delay(1);
      000365 90 00 01         [24]  708 	mov	dptr,#0x0001
      000368 12 04 66         [24]  709 	lcall	_delay
                                    710 ;	.\screen.c:91: P2_0 = 1;
                                    711 ;	assignBit
      00036B D2 A0            [12]  712 	setb	_P2_0
                                    713 ;	.\screen.c:92: }
      00036D 22               [24]  714 	ret
                                    715 	.area CSEG    (CODE)
                                    716 	.area CONST   (CODE)
                                    717 	.area XINIT   (CODE)
                                    718 	.area CABS    (ABS,CODE)
