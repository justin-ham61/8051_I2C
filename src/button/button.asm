;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module button
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _button_poll
	.globl _button_handle
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
_S1_COUNT:
	.ds 2
_S2_COUNT:
	.ds 2
_S3_COUNT:
	.ds 2
_S4_COUNT:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;Allocation info for local variables in function 'button_poll'
;------------------------------------------------------------
;button_press              Allocated to registers r6 r7 
;pressed                   Allocated to registers 
;------------------------------------------------------------
;	button.c:14: void button_poll(void){
;	-----------------------------------------
;	 function button_poll
;	-----------------------------------------
_button_poll:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	button.c:15: int button_press = 0x00;
	mov	r6,#0x00
	mov	r7,#0x00
;	button.c:18: if(P3_5 == 0){
	jb	_P3_5,00104$
;	button.c:19: S1_COUNT++;
	inc	_S1_COUNT
	clr	a
	cjne	a,_S1_COUNT,00105$
	inc	(_S1_COUNT + 1)
	sjmp	00105$
00104$:
;	button.c:20: } else if (S1_COUNT > 4){
	clr	c
	mov	a,#0x04
	subb	a,_S1_COUNT
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_S1_COUNT + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	button.c:21: button_press |= 0x08;
	mov	r6,#0x08
;	button.c:22: S1_COUNT = 0;
	clr	a
	mov	r7,a
	mov	_S1_COUNT,a
	mov	(_S1_COUNT + 1),a
00105$:
;	button.c:26: if(P3_4 == 0){
	jb	_P3_4,00109$
;	button.c:27: S2_COUNT++;
	inc	_S2_COUNT
	clr	a
	cjne	a,_S2_COUNT,00110$
	inc	(_S2_COUNT + 1)
	sjmp	00110$
00109$:
;	button.c:28: } else if (S2_COUNT > 4){
	clr	c
	mov	a,#0x04
	subb	a,_S2_COUNT
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_S2_COUNT + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	button.c:29: button_press |= 0x04;
	orl	ar6,#0x04
;	button.c:30: S2_COUNT = 0;
	clr	a
	mov	_S2_COUNT,a
	mov	(_S2_COUNT + 1),a
00110$:
;	button.c:35: if(P3_3 == 0){
	jb	_P3_3,00114$
;	button.c:36: S3_COUNT++;
	inc	_S3_COUNT
	clr	a
	cjne	a,_S3_COUNT,00115$
	inc	(_S3_COUNT + 1)
	sjmp	00115$
00114$:
;	button.c:37: } else if (S3_COUNT > 4){
	clr	c
	mov	a,#0x04
	subb	a,_S3_COUNT
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_S3_COUNT + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00115$
;	button.c:38: button_press |= 0x02;
	orl	ar6,#0x02
;	button.c:39: S3_COUNT = 0;
	clr	a
	mov	_S3_COUNT,a
	mov	(_S3_COUNT + 1),a
00115$:
;	button.c:44: if(P3_2 == 0){
	jb	_P3_2,00119$
;	button.c:45: S4_COUNT++;
	inc	_S4_COUNT
	clr	a
	cjne	a,_S4_COUNT,00120$
	inc	(_S4_COUNT + 1)
	sjmp	00120$
00119$:
;	button.c:46: } else if (S4_COUNT > 4){
	clr	c
	mov	a,#0x04
	subb	a,_S4_COUNT
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_S4_COUNT + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00120$
;	button.c:47: button_press |= 0x01;
	orl	ar6,#0x01
;	button.c:48: S4_COUNT = 0;
	clr	a
	mov	_S4_COUNT,a
	mov	(_S4_COUNT + 1),a
00120$:
;	button.c:50: button_handle(button_press);
	mov	dpl, r6
	mov	dph, r7
;	button.c:51: }
	ljmp	_button_handle
;------------------------------------------------------------
;Allocation info for local variables in function 'button_handle'
;------------------------------------------------------------
;button_press              Allocated to registers r6 r7 
;------------------------------------------------------------
;	button.c:54: void button_handle(int button_press){
;	-----------------------------------------
;	 function button_handle
;	-----------------------------------------
_button_handle:
	mov	r6, dpl
	mov	r7, dph
;	button.c:61: if(button_press & 1){
	mov	a,r6
	jnb	acc.0,00102$
;	button.c:62: SCREEN_FLAG = 0x0F;
	mov	_SCREEN_FLAG,#0x0f
	mov	(_SCREEN_FLAG + 1),#0x00
00102$:
;	button.c:66: button_press >>= 1;
	mov	a,r7
	mov	c,acc.7
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	button.c:68: if(button_press & 1){
	mov	a,r6
	jnb	acc.0,00104$
;	button.c:69: SCREEN_FLAG = 0xF0;
	mov	_SCREEN_FLAG,#0xf0
	mov	(_SCREEN_FLAG + 1),#0x00
00104$:
;	button.c:73: button_press >>= 1; 
	mov	a,r7
	mov	c,acc.7
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
;	button.c:79: button_press >>= 1; 
	mov	c,acc.7
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
;	button.c:81: if(button_press & 1){
	mov	a,r6
	jnb	acc.0,00107$
;	button.c:83: BLINK_MODE = (BLINK_MODE + 1) % 3;
	mov	dpl,_BLINK_MODE
	mov	dph,(_BLINK_MODE + 1)
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	_BLINK_MODE,dpl
	mov	(_BLINK_MODE + 1),dph
00107$:
;	button.c:87: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
