;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module lcd
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
	.globl _display_2_PARM_4
	.globl _display_2_PARM_3
	.globl _display_2_PARM_2
	.globl _display_2
	.globl _init_display
	.globl _start_con
	.globl _stop_con
	.globl _send_command
	.globl _send_data
	.globl _send_str
	.globl _write
	.globl _ack
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
_display_2_PARM_2:
	.ds 3
_display_2_PARM_3:
	.ds 2
_display_2_PARM_4:
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
;Allocation info for local variables in function 'display_2'
;------------------------------------------------------------
;p2                        Allocated with name '_display_2_PARM_2'
;adr1                      Allocated with name '_display_2_PARM_3'
;adr2                      Allocated with name '_display_2_PARM_4'
;p1                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	.\lcd.c:16: void display_2(char *p1, char*p2, int adr1, int adr2){
;	-----------------------------------------
;	 function display_2
;	-----------------------------------------
_display_2:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	.\lcd.c:17: send_command(0x80 | adr1);
	mov	a,#0x80
	orl	a,_display_2_PARM_3
	mov	dpl,a
	mov	dph,(_display_2_PARM_3 + 1)
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_command
	pop	ar5
	pop	ar6
	pop	ar7
;	.\lcd.c:18: send_str(p1);
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	lcall	_send_str
;	.\lcd.c:19: send_command(0xC0 | adr2);
	mov	a,#0xc0
	orl	a,_display_2_PARM_4
	mov	dpl,a
	mov	dph,(_display_2_PARM_4 + 1)
	lcall	_send_command
;	.\lcd.c:20: send_str(p2);
	mov	dpl, _display_2_PARM_2
	mov	dph, (_display_2_PARM_2 + 1)
	mov	b, (_display_2_PARM_2 + 2)
;	.\lcd.c:21: }
	ljmp	_send_str
;------------------------------------------------------------
;Allocation info for local variables in function 'init_display'
;------------------------------------------------------------
;	.\lcd.c:23: void init_display(void){
;	-----------------------------------------
;	 function init_display
;	-----------------------------------------
_init_display:
;	.\lcd.c:24: send_command(0x02);
	mov	dptr,#0x0002
	lcall	_send_command
;	.\lcd.c:25: send_command(0x28);
	mov	dptr,#0x0028
	lcall	_send_command
;	.\lcd.c:26: send_command(0x0C);
	mov	dptr,#0x000c
	lcall	_send_command
;	.\lcd.c:27: send_command(0x06);
	mov	dptr,#0x0006
	lcall	_send_command
;	.\lcd.c:28: send_command(0x01);
	mov	dptr,#0x0001
;	.\lcd.c:29: }
	ljmp	_send_command
;------------------------------------------------------------
;Allocation info for local variables in function 'start_con'
;------------------------------------------------------------
;	.\lcd.c:31: void start_con(void){
;	-----------------------------------------
;	 function start_con
;	-----------------------------------------
_start_con:
;	.\lcd.c:32: P2_6 = 1; 
;	assignBit
	setb	_P2_6
;	.\lcd.c:33: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\lcd.c:34: P2_6 = 0;
;	assignBit
	clr	_P2_6
;	.\lcd.c:35: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\lcd.c:36: delay(1);
	mov	dptr,#0x0001
;	.\lcd.c:37: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_con'
;------------------------------------------------------------
;	.\lcd.c:39: void stop_con(void){
;	-----------------------------------------
;	 function stop_con
;	-----------------------------------------
_stop_con:
;	.\lcd.c:40: P2_6 = 0;
;	assignBit
	clr	_P2_6
;	.\lcd.c:41: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\lcd.c:42: P2_6 = 1;
;	assignBit
	setb	_P2_6
;	.\lcd.c:43: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\lcd.c:44: delay(1);
	mov	dptr,#0x0001
;	.\lcd.c:45: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'send_command'
;------------------------------------------------------------
;cmd                       Allocated to registers r6 r7 
;lower                     Allocated to registers r4 r5 
;upper                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\lcd.c:47: void send_command(int cmd){
;	-----------------------------------------
;	 function send_command
;	-----------------------------------------
_send_command:
	mov	r6, dpl
	mov	r7, dph
;	.\lcd.c:52: lower = (cmd<<4) & 0xF0;
	mov	ar4,r6
	mov	a,r7
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	anl	ar4,#0xf0
	mov	r5,#0x00
;	.\lcd.c:55: upper = (cmd & 0xF0);
	anl	ar6,#0xf0
	mov	r7,#0x00
;	.\lcd.c:57: start_con();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_start_con
;	.\lcd.c:58: write(0x4E);
	mov	dptr,#0x004e
	lcall	_write
;	.\lcd.c:59: ack();
	lcall	_ack
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\lcd.c:60: write(upper|0x0C);
	mov	a,#0x0c
	orl	a,r6
	mov	dpl,a
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_write
;	.\lcd.c:61: ack();
	lcall	_ack
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\lcd.c:62: write(upper|0x08);
	mov	a,#0x08
	orl	a,r6
	mov	dpl,a
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	_write
;	.\lcd.c:63: ack();
	lcall	_ack
	pop	ar4
	pop	ar5
;	.\lcd.c:64: write(lower|0x0C);
	mov	a,#0x0c
	orl	a,r4
	mov	dpl,a
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_write
;	.\lcd.c:65: ack();
	lcall	_ack
	pop	ar4
	pop	ar5
;	.\lcd.c:66: write(lower|0x08);
	mov	a,#0x08
	orl	a,r4
	mov	dpl,a
	mov	dph,r5
	lcall	_write
;	.\lcd.c:67: ack();
	lcall	_ack
;	.\lcd.c:68: stop_con();
;	.\lcd.c:69: }
	ljmp	_stop_con
;------------------------------------------------------------
;Allocation info for local variables in function 'send_data'
;------------------------------------------------------------
;dt                        Allocated to registers r6 r7 
;lower                     Allocated to registers r4 r5 
;upper                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	.\lcd.c:71: void send_data(int dt){
;	-----------------------------------------
;	 function send_data
;	-----------------------------------------
_send_data:
	mov	r6, dpl
	mov	r7, dph
;	.\lcd.c:75: lower = (dt<<4) & 0xF0;
	mov	ar4,r6
	mov	a,r7
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	anl	ar4,#0xf0
	mov	r5,#0x00
;	.\lcd.c:77: upper = (dt & 0xF0);
	anl	ar6,#0xf0
	mov	r7,#0x00
;	.\lcd.c:79: start_con();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_start_con
;	.\lcd.c:80: write(0x4E);
	mov	dptr,#0x004e
	lcall	_write
;	.\lcd.c:81: ack();
	lcall	_ack
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\lcd.c:82: write(upper|0x0D);
	mov	a,#0x0d
	orl	a,r6
	mov	dpl,a
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_write
;	.\lcd.c:83: ack();
	lcall	_ack
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\lcd.c:84: write(upper|0x09);
	mov	a,#0x09
	orl	a,r6
	mov	dpl,a
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	_write
;	.\lcd.c:85: ack();
	lcall	_ack
	pop	ar4
	pop	ar5
;	.\lcd.c:86: write(lower|0x0D);
	mov	a,#0x0d
	orl	a,r4
	mov	dpl,a
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_write
;	.\lcd.c:87: ack();
	lcall	_ack
	pop	ar4
	pop	ar5
;	.\lcd.c:88: write(lower|0x09);
	mov	a,#0x09
	orl	a,r4
	mov	dpl,a
	mov	dph,r5
	lcall	_write
;	.\lcd.c:89: ack();
	lcall	_ack
;	.\lcd.c:90: stop_con();
;	.\lcd.c:91: }
	ljmp	_stop_con
;------------------------------------------------------------
;Allocation info for local variables in function 'send_str'
;------------------------------------------------------------
;p                         Allocated to registers 
;counter                   Allocated to registers r4 
;------------------------------------------------------------
;	.\lcd.c:93: void send_str(char *p){
;	-----------------------------------------
;	 function send_str
;	-----------------------------------------
_send_str:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	.\lcd.c:95: while(*p != '\0'){
	mov	r4,#0x00
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	jz	00106$
;	.\lcd.c:96: if(counter > 16){
	mov	a,r4
	add	a,#0xff - 0x10
	jc	00106$
;	.\lcd.c:99: send_data(*p++);
	inc	r5
	cjne	r5,#0x00,00129$
	inc	r6
00129$:
	mov	r2,#0x00
	mov	dpl, r3
	mov	dph, r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_send_data
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	.\lcd.c:100: counter++;
	inc	r4
	sjmp	00103$
00106$:
;	.\lcd.c:102: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write'
;------------------------------------------------------------
;dt                        Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	.\lcd.c:104: void write(int dt){
;	-----------------------------------------
;	 function write
;	-----------------------------------------
_write:
	mov	r6, dpl
	mov	r7, dph
;	.\lcd.c:117: for(int i = 0; i < 8; i++){
	mov	r5,#0x00
00103$:
	cjne	r5,#0x08,00120$
00120$:
	jnc	00101$
;	.\lcd.c:118: P2_6 = (dt & (0x80 >> i)) ? 1 : 0;
	mov	b,r5
	inc	b
	mov	r3,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00123$
00122$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
00123$:
	djnz	b,00122$
	mov	a,r6
	anl	ar3,a
	mov	a,r7
	anl	ar4,a
;	assignBit
	mov	a,r3
	orl	a,r4
	add	a,#0xff
	mov	_P2_6,c
;	.\lcd.c:119: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\lcd.c:120: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\lcd.c:117: for(int i = 0; i < 8; i++){
	inc	r5
	sjmp	00103$
00101$:
;	.\lcd.c:122: delay(1);
	mov	dptr,#0x0001
;	.\lcd.c:123: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'ack'
;------------------------------------------------------------
;	.\lcd.c:125: void ack(void){
;	-----------------------------------------
;	 function ack
;	-----------------------------------------
_ack:
;	.\lcd.c:126: P2_6 = 1;
;	assignBit
	setb	_P2_6
;	.\lcd.c:127: P2_7 = 1;
;	assignBit
	setb	_P2_7
;	.\lcd.c:128: P2_7 = 0;
;	assignBit
	clr	_P2_7
;	.\lcd.c:129: delay(1);
	mov	dptr,#0x0001
;	.\lcd.c:130: }
	ljmp	_delay
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
