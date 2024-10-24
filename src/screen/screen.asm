;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module screen
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _current_val
	.globl _vals
	.globl _table
	.globl _display_poll
	.globl _display
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_table::
	.ds 20
_vals::
	.ds 8
_current_val::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_display_poll_i_50000_10:
	.ds 2
_display_poll_i_50000_17:
	.ds 2
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	screen.c:8: int table[10] = { 
	mov	(_table + 0),#0xc0
	mov	(_table + 1),#0x00
	mov	((_table + 0x0002) + 0),#0xf9
	mov	((_table + 0x0002) + 1),#0x00
	mov	((_table + 0x0004) + 0),#0xa4
	mov	((_table + 0x0004) + 1),#0x00
	mov	((_table + 0x0006) + 0),#0xb0
	mov	((_table + 0x0006) + 1),#0x00
	mov	((_table + 0x0008) + 0),#0x99
	mov	((_table + 0x0008) + 1),#0x00
	mov	((_table + 0x000a) + 0),#0x92
	mov	((_table + 0x000a) + 1),#0x00
	mov	((_table + 0x000c) + 0),#0x82
	mov	((_table + 0x000c) + 1),#0x00
	mov	((_table + 0x000e) + 0),#0xf8
	mov	((_table + 0x000e) + 1),#0x00
	mov	((_table + 0x0010) + 0),#0x80
	mov	((_table + 0x0010) + 1),#0x00
	mov	((_table + 0x0012) + 0),#0x90
	mov	((_table + 0x0012) + 1),#0x00
;	screen.c:16: int vals[4] = {0, 0, 0, 0};
	clr	a
	mov	(_vals + 0),a
	mov	(_vals + 1),a
	mov	((_vals + 0x0002) + 0),a
	mov	((_vals + 0x0002) + 1),a
	mov	((_vals + 0x0004) + 0),a
	mov	((_vals + 0x0004) + 1),a
	mov	((_vals + 0x0006) + 0),a
	mov	((_vals + 0x0006) + 1),a
;	screen.c:17: int current_val = 0; 
	mov	_current_val,a
	mov	(_current_val + 1),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'display_poll'
;------------------------------------------------------------
;carry                     Allocated to registers r6 r7 
;idx                       Allocated to registers r4 r5 
;i                         Allocated with name '_display_poll_i_50000_10'
;minus_carry               Allocated to registers r6 r7 
;idx                       Allocated to registers r4 r5 
;i                         Allocated with name '_display_poll_i_50000_17'
;------------------------------------------------------------
;	screen.c:19: void display_poll(void)
;	-----------------------------------------
;	 function display_poll
;	-----------------------------------------
_display_poll:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	screen.c:22: if((SCREEN_FLAG & 0xF0) == 0xF0){
	mov	a,#0xf0
	anl	a,_SCREEN_FLAG
	mov	r6,a
	mov	r7,#0x00
	cjne	r6,#0xf0,00231$
	cjne	r7,#0x00,00231$
	sjmp	00232$
00231$:
	ljmp	00112$
00232$:
;	screen.c:23: int carry = 1;
	mov	r6,#0x01
	mov	r7,#0x00
;	screen.c:25: while(carry == 1 && current_val < 9999){
	mov	r4,#0x00
	mov	r5,#0x00
00108$:
	cjne	r6,#0x01,00233$
	cjne	r7,#0x00,00233$
	sjmp	00234$
00233$:
	ljmp	00112$
00234$:
	clr	c
	mov	a,_current_val
	subb	a,#0x0f
	mov	a,(_current_val + 1)
	xrl	a,#0x80
	subb	a,#0xa7
	jc	00235$
	ljmp	00112$
00235$:
;	screen.c:26: if(idx > 4){
	clr	c
	mov	a,#0x04
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	screen.c:27: for(int i = 0; i < 4; i++){
	clr	a
	mov	_display_poll_i_50000_10,a
	mov	(_display_poll_i_50000_10 + 1),a
00126$:
	clr	c
	mov	a,_display_poll_i_50000_10
	subb	a,#0x04
	mov	a,(_display_poll_i_50000_10 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
;	screen.c:28: vals[i] = 0;
	mov	a,_display_poll_i_50000_10
	add	a,_display_poll_i_50000_10
	mov	r2,a
	mov	a,(_display_poll_i_50000_10 + 1)
	rlc	a
	mov	a,r2
	add	a, #_vals
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	screen.c:27: for(int i = 0; i < 4; i++){
	inc	_display_poll_i_50000_10
	clr	a
	cjne	a,_display_poll_i_50000_10,00126$
	inc	(_display_poll_i_50000_10 + 1)
	sjmp	00126$
00101$:
;	screen.c:30: current_val = 0;
	clr	a
	mov	_current_val,a
	mov	(_current_val + 1),a
;	screen.c:31: break;
	sjmp	00112$
00103$:
;	screen.c:33: if(vals[idx] == 9){
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	a,r2
	add	a, #_vals
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	cjne	r2,#0x09,00105$
	cjne	r3,#0x00,00105$
;	screen.c:34: vals[idx] = 0;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	screen.c:35: idx++;
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00105$:
;	screen.c:37: vals[idx] += carry;
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	a,r6
	add	a, r2
	mov	r2,a
	mov	a,r7
	addc	a, r3
	mov	r3,a
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	dec	r1
;	screen.c:38: carry = 0;
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
;	screen.c:40: current_val++;
	inc	_current_val
	clr	a
	cjne	a,_current_val,00242$
	inc	(_current_val + 1)
00242$:
	ljmp	00108$
00112$:
;	screen.c:43: if((SCREEN_FLAG & 0x0F) == 0x0F){
	mov	a,#0x0f
	anl	a,_SCREEN_FLAG
	mov	r6,a
	mov	r7,#0x00
	cjne	r6,#0x0f,00243$
	cjne	r7,#0x00,00243$
	sjmp	00244$
00243$:
	ljmp	00124$
00244$:
;	screen.c:44: int minus_carry = 1;
	mov	r6,#0x01
	mov	r7,#0x00
;	screen.c:46: while(minus_carry == 1 && current_val > 0){
	mov	r4,#0x00
	mov	r5,#0x00
00120$:
	cjne	r6,#0x01,00245$
	cjne	r7,#0x00,00245$
	sjmp	00246$
00245$:
	ljmp	00124$
00246$:
	clr	c
	clr	a
	subb	a,_current_val
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_current_val + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00247$
	ljmp	00124$
00247$:
;	screen.c:47: if(idx > 4){
	clr	c
	mov	a,#0x04
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00115$
;	screen.c:48: for(int i = 0; i < 4; i++){
	clr	a
	mov	_display_poll_i_50000_17,a
	mov	(_display_poll_i_50000_17 + 1),a
00129$:
	clr	c
	mov	a,_display_poll_i_50000_17
	subb	a,#0x04
	mov	a,(_display_poll_i_50000_17 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00113$
;	screen.c:49: vals[i] = 0;
	mov	a,_display_poll_i_50000_17
	add	a,_display_poll_i_50000_17
	mov	r2,a
	mov	a,(_display_poll_i_50000_17 + 1)
	rlc	a
	mov	a,r2
	add	a, #_vals
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	screen.c:48: for(int i = 0; i < 4; i++){
	inc	_display_poll_i_50000_17
	clr	a
	cjne	a,_display_poll_i_50000_17,00129$
	inc	(_display_poll_i_50000_17 + 1)
	sjmp	00129$
00113$:
;	screen.c:51: current_val = 0;
	clr	a
	mov	_current_val,a
	mov	(_current_val + 1),a
;	screen.c:52: break;
	sjmp	00124$
00115$:
;	screen.c:54: if(vals[idx] == 0){
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	a,r2
	add	a, #_vals
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	a,r2
	orl	a,r3
	jnz	00117$
;	screen.c:55: vals[idx] = 9;
	mov	@r1,#0x09
	inc	r1
	mov	@r1,#0x00
	dec	r1
;	screen.c:56: idx++;
	inc	r4
	cjne	r4,#0x00,00118$
	inc	r5
	sjmp	00118$
00117$:
;	screen.c:58: vals[idx] -= minus_carry;
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r2,a
	mov	a,r3
	subb	a,r7
	mov	r3,a
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	dec	r1
;	screen.c:59: minus_carry = 0;
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
;	screen.c:61: current_val--;
	dec	_current_val
	mov	a,#0xff
	cjne	a,_current_val,00253$
	dec	(_current_val + 1)
00253$:
	ljmp	00120$
00124$:
;	screen.c:64: SCREEN_FLAG = 0x00;
	clr	a
	mov	_SCREEN_FLAG,a
	mov	(_SCREEN_FLAG + 1),a
;	screen.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;	screen.c:68: void display(void)
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
;	screen.c:73: P0 = table[vals[0]];
	mov	a,_vals
	add	a,_vals
	mov	r6,a
	mov	a,(_vals + 1)
	rlc	a
	mov	a,r6
	add	a, #_table
	mov	r1,a
	mov	_P0,@r1
;	screen.c:74: P2_3 = 0;
;	assignBit
	clr	_P2_3
;	screen.c:75: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	screen.c:76: P2_3 = 1;
;	assignBit
	setb	_P2_3
;	screen.c:78: P0 = table[vals[1]];
	mov	a,(_vals + 0x0002)
	add	a,acc
	mov	r6,a
	mov	a,((_vals + 0x0002) + 1)
	rlc	a
	mov	a,r6
	add	a, #_table
	mov	r1,a
	mov	_P0,@r1
;	screen.c:79: P2_2 = 0;
;	assignBit
	clr	_P2_2
;	screen.c:80: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	screen.c:81: P2_2 = 1;
;	assignBit
	setb	_P2_2
;	screen.c:83: P0 = table[vals[2]];
	mov	a,(_vals + 0x0004)
	add	a,acc
	mov	r6,a
	mov	a,((_vals + 0x0004) + 1)
	rlc	a
	mov	a,r6
	add	a, #_table
	mov	r1,a
	mov	_P0,@r1
;	screen.c:84: P2_1 = 0;
;	assignBit
	clr	_P2_1
;	screen.c:85: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	screen.c:86: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	screen.c:88: P0 = table[vals[3]];
	mov	a,(_vals + 0x0006)
	add	a,acc
	mov	r6,a
	mov	a,((_vals + 0x0006) + 1)
	rlc	a
	mov	a,r6
	add	a, #_table
	mov	r1,a
	mov	_P0,@r1
;	screen.c:89: P2_0 = 0;
;	assignBit
	clr	_P2_0
;	screen.c:90: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
;	screen.c:91: P2_0 = 1;
;	assignBit
	setb	_P2_0
;	screen.c:92: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
