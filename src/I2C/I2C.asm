;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module I2C
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _reset_timer
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
	.globl _I2C_poll
	.globl _next_handle
	.globl _stcon_Handler
	.globl _dout_Handler
	.globl _stpcon_Handler
	.globl _read_Handler
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
_I2C_STATE:
	.ds 14
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;	.\I2C.c:12: static I2C I2C_STATE = {0, 0x40, 0x41, 0, 0x00, 0x00, 1};
	clr	a
	mov	(_I2C_STATE + 0),a
	mov	(_I2C_STATE + 1),a
	mov	((_I2C_STATE + 0x0002) + 0),#0x40
	mov	((_I2C_STATE + 0x0002) + 1),a
	mov	((_I2C_STATE + 0x0004) + 0),#0x41
	mov	((_I2C_STATE + 0x0004) + 1),a
	mov	((_I2C_STATE + 0x0006) + 0),a
	mov	((_I2C_STATE + 0x0006) + 1),a
	mov	((_I2C_STATE + 0x0008) + 0),a
	mov	((_I2C_STATE + 0x0008) + 1),a
	mov	((_I2C_STATE + 0x000a) + 0),a
	mov	((_I2C_STATE + 0x000a) + 1),a
	mov	((_I2C_STATE + 0x000c) + 0),#0x01
	mov	((_I2C_STATE + 0x000c) + 1),a
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
;Allocation info for local variables in function 'I2C_poll'
;------------------------------------------------------------
;	.\I2C.c:14: void I2C_poll(void){
;	-----------------------------------------
;	 function I2C_poll
;	-----------------------------------------
_I2C_poll:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	.\I2C.c:15: switch(I2C_STATE.POLLING_MODE){
	mov	r6,(_I2C_STATE + 0)
	mov	r7,(_I2C_STATE + 1)
	cjne	r6,#0x00,00149$
	cjne	r7,#0x00,00149$
	sjmp	00101$
00149$:
	cjne	r6,#0x01,00150$
	cjne	r7,#0x00,00150$
	sjmp	00104$
00150$:
	cjne	r6,#0x02,00151$
	cjne	r7,#0x00,00151$
	sjmp	00105$
00151$:
;	.\I2C.c:17: case 0: 
	cjne	r6,#0x03,00108$
	cjne	r7,#0x00,00108$
	sjmp	00106$
00101$:
;	.\I2C.c:18: if(TF0 == 1){
	jnb	_TF0,00108$
;	.\I2C.c:19: reset_timer();
	lcall	_reset_timer
;	.\I2C.c:20: stcon_Handler();
	lcall	_stcon_Handler
;	.\I2C.c:21: next_handle(I2C_STATE.POLLING_MODE);
	mov	dpl,(_I2C_STATE + 0)
	mov	dph,(_I2C_STATE + 1)
;	.\I2C.c:22: return;
;	.\I2C.c:26: case 1:
	ljmp	_next_handle
00104$:
;	.\I2C.c:27: dout_Handler();
	lcall	_dout_Handler
;	.\I2C.c:28: break;
;	.\I2C.c:30: case 2: 
	sjmp	00108$
00105$:
;	.\I2C.c:31: stpcon_Handler();
	lcall	_stpcon_Handler
;	.\I2C.c:32: break;
;	.\I2C.c:33: case 3: 
	sjmp	00108$
00106$:
;	.\I2C.c:34: read_Handler();
	lcall	_read_Handler
;	.\I2C.c:38: }
00108$:
;	.\I2C.c:39: if(I2C_STATE.POLLING_MODE != 0){
	mov	r6,(_I2C_STATE + 0)
	mov	r7,(_I2C_STATE + 1)
	mov	a,r6
	orl	a,r7
	jz	00111$
;	.\I2C.c:40: next_handle(I2C_STATE.POLLING_MODE);
	mov	dpl, r6
	mov	dph, r7
;	.\I2C.c:42: }
	ljmp	_next_handle
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'next_handle'
;------------------------------------------------------------
;current_step              Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\I2C.c:44: void next_handle(int current_step){
;	-----------------------------------------
;	 function next_handle
;	-----------------------------------------
_next_handle:
	mov	r6, dpl
	mov	r7, dph
;	.\I2C.c:45: switch (current_step)
	cjne	r6,#0x00,00174$
	cjne	r7,#0x00,00174$
	sjmp	00101$
00174$:
	cjne	r6,#0x01,00175$
	cjne	r7,#0x00,00175$
	sjmp	00105$
00175$:
	cjne	r6,#0x02,00176$
	cjne	r7,#0x00,00176$
	ljmp	00114$
00176$:
	cjne	r6,#0x03,00177$
	cjne	r7,#0x00,00177$
	ljmp	00115$
00177$:
	ret
;	.\I2C.c:48: case 0:
00101$:
;	.\I2C.c:49: I2C_STATE.POLLING_MODE = 1;
	mov	(_I2C_STATE + 0),#0x01
;	.\I2C.c:50: I2C_STATE.ADR_SENT = 0;
	clr	a
	mov	(_I2C_STATE + 1),a
	mov	((_I2C_STATE + 0x0006) + 0),a
	mov	((_I2C_STATE + 0x0006) + 1),a
;	.\I2C.c:51: if(I2C_STATE.WRITE_AVAIL == 0){
	mov	a,(_I2C_STATE + 0x000c)
	orl	a,((_I2C_STATE + 0x000c) + 1)
	jnz	00103$
;	.\I2C.c:52: I2C_STATE.SHIFT_OUT_DATA = I2C_STATE.READ_ADR;
	mov	r6,((_I2C_STATE + 0x0004) + 0)
	mov	r7,((_I2C_STATE + 0x0004) + 1)
	mov	((_I2C_STATE + 0x000a) + 0),r6
	mov	((_I2C_STATE + 0x000a) + 1),r7
	ret
00103$:
;	.\I2C.c:54: I2C_STATE.SHIFT_OUT_DATA = I2C_STATE.WRITE_ADR;
	mov	r6,((_I2C_STATE + 0x0002) + 0)
	mov	r7,((_I2C_STATE + 0x0002) + 1)
	mov	((_I2C_STATE + 0x000a) + 0),r6
	mov	((_I2C_STATE + 0x000a) + 1),r7
;	.\I2C.c:56: break;
;	.\I2C.c:58: case 1:
	ret
00105$:
;	.\I2C.c:59: if(I2C_STATE.ADR_SENT == 0 && I2C_STATE.WRITE_AVAIL == 0){
	mov	r6,((_I2C_STATE + 0x0006) + 0)
	mov	r7,((_I2C_STATE + 0x0006) + 1)
	mov	a,r6
	orl	a,r7
	jnz	00111$
	mov	a,(_I2C_STATE + 0x000c)
	orl	a,((_I2C_STATE + 0x000c) + 1)
;	.\I2C.c:60: I2C_STATE.ADR_SENT = 1;
;	.\I2C.c:61: I2C_STATE.POLLING_MODE = 3;
	jnz	00111$
	mov	((_I2C_STATE + 0x0006) + 0),#0x01
	mov	((_I2C_STATE + 0x0006) + 1),a
	mov	(_I2C_STATE + 0),#0x03
	mov	(_I2C_STATE + 1),a
	ret
00111$:
;	.\I2C.c:63: } else if (I2C_STATE.ADR_SENT == 0 && I2C_STATE.WRITE_AVAIL == 1){
	mov	a,r6
	orl	a,r7
	jnz	00107$
	mov	a,#0x01
	cjne	a,(_I2C_STATE + 0x000c),00182$
	dec	a
	cjne	a,((_I2C_STATE + 0x000c) + 1),00182$
	sjmp	00183$
00182$:
	sjmp	00107$
00183$:
;	.\I2C.c:64: I2C_STATE.ADR_SENT = 1;
	mov	((_I2C_STATE + 0x0006) + 0),#0x01
;	.\I2C.c:65: I2C_STATE.WRITE_AVAIL = 0;
	clr	a
	mov	((_I2C_STATE + 0x0006) + 1),a
	mov	((_I2C_STATE + 0x000c) + 0),a
	mov	((_I2C_STATE + 0x000c) + 1),a
;	.\I2C.c:66: I2C_STATE.SHIFT_OUT_DATA = (~I2C_STATE.READ_DATA & 0xF0);
	mov	a,(_I2C_STATE + 0x0008)
	cpl	a
	mov	r6,a
	mov	a,((_I2C_STATE + 0x0008) + 1)
	cpl	a
	anl	ar6,#0xf0
	mov	r7,#0x00
	mov	((_I2C_STATE + 0x000a) + 0),r6
	mov	((_I2C_STATE + 0x000a) + 1),r7
;	.\I2C.c:67: I2C_STATE.POLLING_MODE = 1;
	mov	(_I2C_STATE + 0),#0x01
	mov	(_I2C_STATE + 1),r7
	ret
00107$:
;	.\I2C.c:70: I2C_STATE.POLLING_MODE = 2;
	mov	(_I2C_STATE + 0),#0x02
	mov	(_I2C_STATE + 1),#0x00
;	.\I2C.c:72: break;
;	.\I2C.c:74: case 2: 
	ret
00114$:
;	.\I2C.c:75: I2C_STATE.POLLING_MODE = 0;
	clr	a
	mov	(_I2C_STATE + 0),a
	mov	(_I2C_STATE + 1),a
;	.\I2C.c:76: break;
;	.\I2C.c:77: case 3: 
	ret
00115$:
;	.\I2C.c:78: I2C_STATE.POLLING_MODE = 2;
	mov	(_I2C_STATE + 0),#0x02
	mov	(_I2C_STATE + 1),#0x00
;	.\I2C.c:82: }
;	.\I2C.c:83: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stcon_Handler'
;------------------------------------------------------------
;	.\I2C.c:85: void stcon_Handler(void){
;	-----------------------------------------
;	 function stcon_Handler
;	-----------------------------------------
_stcon_Handler:
;	.\I2C.c:86: P2_6 = 1; 
;	assignBit
	setb	_P2_6
;	.\I2C.c:87: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\I2C.c:88: P2_6 = 0;
;	assignBit
	clr	_P2_6
;	.\I2C.c:89: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\I2C.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dout_Handler'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	.\I2C.c:93: void dout_Handler(void){
;	-----------------------------------------
;	 function dout_Handler
;	-----------------------------------------
_dout_Handler:
;	.\I2C.c:94: for(int i = 0; i < 8; i++){
	mov	r7,#0x00
00103$:
	cjne	r7,#0x08,00120$
00120$:
	jnc	00101$
;	.\I2C.c:95: P2_6 = (I2C_STATE.SHIFT_OUT_DATA & 0x80) ? 1 : 0;
	mov	a,#0x80
	anl	a,(_I2C_STATE + 0x000a)
;	assignBit
	mov	r6,#0x00
	orl	a,r6
	add	a,#0xff
	mov	_P2_6,c
;	.\I2C.c:96: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\I2C.c:97: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\I2C.c:98: I2C_STATE.SHIFT_OUT_DATA <<= 1;
	mov	a,(_I2C_STATE + 0x000a)
	add	a,acc
	mov	r5,a
	mov	a,((_I2C_STATE + 0x000a) + 1)
	rlc	a
	mov	r6,a
	mov	((_I2C_STATE + 0x000a) + 0),r5
	mov	((_I2C_STATE + 0x000a) + 1),r6
;	.\I2C.c:94: for(int i = 0; i < 8; i++){
	inc	r7
	sjmp	00103$
00101$:
;	.\I2C.c:101: P2_6 = 1;
;	assignBit
	setb	_P2_6
;	.\I2C.c:102: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\I2C.c:103: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\I2C.c:104: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stpcon_Handler'
;------------------------------------------------------------
;	.\I2C.c:106: void stpcon_Handler(void){
;	-----------------------------------------
;	 function stpcon_Handler
;	-----------------------------------------
_stpcon_Handler:
;	.\I2C.c:107: P2_6 = 0;
;	assignBit
	clr	_P2_6
;	.\I2C.c:108: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\I2C.c:109: P2_6 = 1;
;	assignBit
	setb	_P2_6
;	.\I2C.c:110: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\I2C.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_Handler'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	.\I2C.c:115: void read_Handler(void){
;	-----------------------------------------
;	 function read_Handler
;	-----------------------------------------
_read_Handler:
;	.\I2C.c:116: for(int i = 0; i < 8; i++){
	mov	r7,#0x00
00105$:
	cjne	r7,#0x08,00128$
00128$:
	jnc	00103$
;	.\I2C.c:117: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\I2C.c:118: I2C_STATE.READ_DATA <<= 1;
	mov	a,(_I2C_STATE + 0x0008)
	add	a,acc
	mov	r5,a
	mov	a,((_I2C_STATE + 0x0008) + 1)
	rlc	a
	mov	r6,a
	mov	((_I2C_STATE + 0x0008) + 0),r5
	mov	((_I2C_STATE + 0x0008) + 1),r6
;	.\I2C.c:119: if(P2_6){
	jnb	_P2_6,00102$
;	.\I2C.c:120: I2C_STATE.READ_DATA |= 0x01;
	mov	a,#0x01
	orl	a,(_I2C_STATE + 0x0008)
	mov	r5,a
	mov	r6,((_I2C_STATE + 0x0008) + 1)
	mov	((_I2C_STATE + 0x0008) + 0),r5
	mov	((_I2C_STATE + 0x0008) + 1),r6
00102$:
;	.\I2C.c:122: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\I2C.c:116: for(int i = 0; i < 8; i++){
	inc	r7
	sjmp	00105$
00103$:
;	.\I2C.c:126: P2_6 = 1;
;	assignBit
	setb	_P2_6
;	.\I2C.c:127: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\I2C.c:128: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\I2C.c:131: I2C_STATE.READ_DATA <<= 4;
	mov	r6,(_I2C_STATE + 0x0008)
	mov	a,((_I2C_STATE + 0x0008) + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	((_I2C_STATE + 0x0008) + 0),r6
	mov	((_I2C_STATE + 0x0008) + 1),r7
;	.\I2C.c:132: I2C_STATE.WRITE_AVAIL = 1;
	mov	((_I2C_STATE + 0x000c) + 0),#0x01
	mov	((_I2C_STATE + 0x000c) + 1),#0x00
;	.\I2C.c:133: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
