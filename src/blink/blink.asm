;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module blink
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
	.globl _blink
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
_binary_num:
	.ds 2
_cyclone:
	.ds 2
_direction:
	.ds 2
_counter:
	.ds 2
_dual_cyclone:
	.ds 2
_reverse_cyclone:
	.ds 2
_dual_direction:
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
;	blink.c:10: static int cyclone = 1;
	mov	_cyclone,#0x01
	mov	(_cyclone + 1),#0x00
;	blink.c:11: static int direction = 0;
	clr	a
	mov	_direction,a
	mov	(_direction + 1),a
;	blink.c:14: static int dual_cyclone = 1;
	mov	_dual_cyclone,#0x01
	mov	(_dual_cyclone + 1),a
;	blink.c:15: static int reverse_cyclone = 0b10000000;
	mov	_reverse_cyclone,#0x80
	mov	(_reverse_cyclone + 1),a
;	blink.c:16: static int dual_direction = 0;
	mov	_dual_direction,a
	mov	(_dual_direction + 1),a
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
;Allocation info for local variables in function 'blink'
;------------------------------------------------------------
;mode                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	blink.c:18: void blink(void){
;	-----------------------------------------
;	 function blink
;	-----------------------------------------
_blink:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	blink.c:19: if(counter < 50){
	clr	c
	mov	a,_counter
	subb	a,#0x32
	mov	a,(_counter + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	blink.c:20: counter++;
	inc	_counter
	clr	a
	cjne	a,_counter,00215$
	inc	(_counter + 1)
00215$:
;	blink.c:21: return;
	ret
00102$:
;	blink.c:23: int mode = BLINK_MODE;
	mov	r6,_BLINK_MODE
	mov	r7,(_BLINK_MODE + 1)
;	blink.c:24: switch(mode){
	cjne	r6,#0x00,00216$
	cjne	r7,#0x00,00216$
	sjmp	00103$
00216$:
	cjne	r6,#0x01,00217$
	cjne	r7,#0x00,00217$
	sjmp	00104$
00217$:
	cjne	r6,#0x02,00218$
	cjne	r7,#0x00,00218$
	ljmp	00115$
00218$:
	ljmp	00126$
;	blink.c:25: case 0:
00103$:
;	blink.c:26: P1 = ~(binary_num);
	mov	a,_binary_num
	cpl	a
	mov	_P1,a
;	blink.c:27: binary_num = (binary_num + 1) % 256;
	mov	dpl,_binary_num
	mov	dph,(_binary_num + 1)
	inc	dptr
	mov	__modsint_PARM_2,#0x00
	mov	(__modsint_PARM_2 + 1),#0x01
	lcall	__modsint
	mov	_binary_num,dpl
	mov	(_binary_num + 1),dph
;	blink.c:28: counter = 0;
	clr	a
	mov	_counter,a
	mov	(_counter + 1),a
;	blink.c:29: break;
	ret
;	blink.c:30: case 1:
00104$:
;	blink.c:31: P1 = ~(cyclone);
	mov	a,_cyclone
	cpl	a
	mov	_P1,a
;	blink.c:32: if(cyclone == 0b10000000 && direction == 0){
	mov	a,#0x80
	cjne	a,_cyclone,00219$
	clr	a
	cjne	a,(_cyclone + 1),00219$
	sjmp	00220$
00219$:
	sjmp	00109$
00220$:
	mov	a,_direction
	orl	a,(_direction + 1)
;	blink.c:33: direction = 1;
	jnz	00109$
	mov	_direction,#0x01
	mov	(_direction + 1),a
	sjmp	00110$
00109$:
;	blink.c:34: } else if (cyclone == 1 && direction == 1){
	mov	a,#0x01
	cjne	a,_cyclone,00222$
	dec	a
	cjne	a,(_cyclone + 1),00222$
	sjmp	00223$
00222$:
	sjmp	00110$
00223$:
	mov	a,#0x01
	cjne	a,_direction,00224$
	dec	a
	cjne	a,(_direction + 1),00224$
	sjmp	00225$
00224$:
	sjmp	00110$
00225$:
;	blink.c:35: direction = 0;
	clr	a
	mov	_direction,a
	mov	(_direction + 1),a
00110$:
;	blink.c:38: if(direction == 0){
	mov	a,_direction
	orl	a,(_direction + 1)
	jnz	00113$
;	blink.c:39: cyclone <<= 1;
	mov	a,_cyclone
	add	a,_cyclone
	mov	_cyclone,a
	mov	a,(_cyclone + 1)
	rlc	a
	mov	(_cyclone + 1),a
	sjmp	00114$
00113$:
;	blink.c:41: cyclone >>= 1;
	mov	a,(_cyclone + 1)
	mov	c,acc.7
	rrc	a
	xch	a,_cyclone
	rrc	a
	xch	a,_cyclone
	mov	(_cyclone + 1),a
00114$:
;	blink.c:43: counter = 0;
	clr	a
	mov	_counter,a
	mov	(_counter + 1),a
;	blink.c:44: break;
	ret
;	blink.c:45: case 2:
00115$:
;	blink.c:46: P1 = ~(dual_cyclone | reverse_cyclone);
	mov	r7,_dual_cyclone
	mov	a,_reverse_cyclone
	orl	ar7,a
	mov	a,r7
	cpl	a
	mov	_P1,a
;	blink.c:47: if(reverse_cyclone == 1 && dual_direction == 0){
	mov	a,#0x01
	cjne	a,_reverse_cyclone,00227$
	dec	a
	cjne	a,(_reverse_cyclone + 1),00227$
	sjmp	00228$
00227$:
	sjmp	00120$
00228$:
	mov	a,_dual_direction
	orl	a,(_dual_direction + 1)
;	blink.c:48: dual_direction = 1;
	jnz	00120$
	mov	_dual_direction,#0x01
	mov	(_dual_direction + 1),a
	sjmp	00121$
00120$:
;	blink.c:49: } else if (dual_cyclone == 1 && dual_direction == 1){
	mov	a,#0x01
	cjne	a,_dual_cyclone,00230$
	dec	a
	cjne	a,(_dual_cyclone + 1),00230$
	sjmp	00231$
00230$:
	sjmp	00121$
00231$:
	mov	a,#0x01
	cjne	a,_dual_direction,00232$
	dec	a
	cjne	a,(_dual_direction + 1),00232$
	sjmp	00233$
00232$:
	sjmp	00121$
00233$:
;	blink.c:50: dual_direction = 0;
	clr	a
	mov	_dual_direction,a
	mov	(_dual_direction + 1),a
00121$:
;	blink.c:53: if(dual_direction == 0){
	mov	a,_dual_direction
	orl	a,(_dual_direction + 1)
	jnz	00124$
;	blink.c:54: dual_cyclone <<= 1;
	mov	a,_dual_cyclone
	add	a,_dual_cyclone
	mov	_dual_cyclone,a
	mov	a,(_dual_cyclone + 1)
	rlc	a
	mov	(_dual_cyclone + 1),a
;	blink.c:55: reverse_cyclone >>= 1;
	mov	a,(_reverse_cyclone + 1)
	mov	c,acc.7
	rrc	a
	xch	a,_reverse_cyclone
	rrc	a
	xch	a,_reverse_cyclone
	mov	(_reverse_cyclone + 1),a
	sjmp	00125$
00124$:
;	blink.c:57: dual_cyclone >>= 1;
	mov	a,(_dual_cyclone + 1)
	mov	c,acc.7
	rrc	a
	xch	a,_dual_cyclone
	rrc	a
	xch	a,_dual_cyclone
	mov	(_dual_cyclone + 1),a
;	blink.c:58: reverse_cyclone <<= 1;
	mov	a,_reverse_cyclone
	add	a,_reverse_cyclone
	mov	_reverse_cyclone,a
	mov	a,(_reverse_cyclone + 1)
	rlc	a
	mov	(_reverse_cyclone + 1),a
00125$:
;	blink.c:60: counter = 0;
	clr	a
	mov	_counter,a
	mov	(_counter + 1),a
;	blink.c:61: break;
;	blink.c:62: default:
	ret
00126$:
;	blink.c:63: counter = 0;
	clr	a
	mov	_counter,a
	mov	(_counter + 1),a
;	blink.c:65: }
;	blink.c:66: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
