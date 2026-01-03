   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
 124                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 124                     ; 55 {
 125                     .text:	section	.text,new
 126  0000               f_RST_GetFlagStatus:
 128  0000 88            	push	a
 129       00000000      OFST:	set	0
 132                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 134  0001 a110          	cp	a,#16
 135  0003 271e          	jreq	L21
 136  0005 a108          	cp	a,#8
 137  0007 271a          	jreq	L21
 138  0009 a104          	cp	a,#4
 139  000b 2716          	jreq	L21
 140  000d a102          	cp	a,#2
 141  000f 2712          	jreq	L21
 142  0011 4a            	dec	a
 143  0012 270f          	jreq	L21
 144  0014 ae0039        	ldw	x,#57
 145  0017 89            	pushw	x
 146  0018 5f            	clrw	x
 147  0019 89            	pushw	x
 148  001a ae0000        	ldw	x,#L55
 149  001d 8d000000      	callf	f_assert_failed
 151  0021 5b04          	addw	sp,#4
 152  0023               L21:
 153                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 155  0023 c650b3        	ld	a,20659
 156  0026 1501          	bcp	a,(OFST+1,sp)
 157  0028 2603          	jrne	L61
 158  002a 4f            	clr	a
 159  002b 2002          	jra	L02
 160  002d               L61:
 161  002d a601          	ld	a,#1
 162  002f               L02:
 165  002f 5b01          	addw	sp,#1
 166  0031 87            	retf	
 201                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 201                     ; 70 {
 202                     .text:	section	.text,new
 203  0000               f_RST_ClearFlag:
 205  0000 88            	push	a
 206       00000000      OFST:	set	0
 209                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 211  0001 a110          	cp	a,#16
 212  0003 271e          	jreq	L03
 213  0005 a108          	cp	a,#8
 214  0007 271a          	jreq	L03
 215  0009 a104          	cp	a,#4
 216  000b 2716          	jreq	L03
 217  000d a102          	cp	a,#2
 218  000f 2712          	jreq	L03
 219  0011 4a            	dec	a
 220  0012 270f          	jreq	L03
 221  0014 ae0048        	ldw	x,#72
 222  0017 89            	pushw	x
 223  0018 5f            	clrw	x
 224  0019 89            	pushw	x
 225  001a ae0000        	ldw	x,#L55
 226  001d 8d000000      	callf	f_assert_failed
 228  0021 5b04          	addw	sp,#4
 229  0023               L03:
 230                     ; 74   RST->SR = (uint8_t)RST_Flag;
 232  0023 7b01          	ld	a,(OFST+1,sp)
 233  0025 c750b3        	ld	20659,a
 234                     ; 75 }
 237  0028 84            	pop	a
 238  0029 87            	retf	
 250                     	xdef	f_RST_ClearFlag
 251                     	xdef	f_RST_GetFlagStatus
 252                     	xref	f_assert_failed
 253                     .const:	section	.text
 254  0000               L55:
 255  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 256  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 257  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 258  0036 5f7273742e63  	dc.b	"_rst.c",0
 278                     	end
