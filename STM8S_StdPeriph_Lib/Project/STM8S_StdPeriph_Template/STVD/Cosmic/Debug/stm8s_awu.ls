   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  21                     .const:	section	.text
  22  0000               _APR_Array:
  23  0000 00            	dc.b	0
  24  0001 1e            	dc.b	30
  25  0002 1e            	dc.b	30
  26  0003 1e            	dc.b	30
  27  0004 1e            	dc.b	30
  28  0005 1e            	dc.b	30
  29  0006 1e            	dc.b	30
  30  0007 1e            	dc.b	30
  31  0008 1e            	dc.b	30
  32  0009 1e            	dc.b	30
  33  000a 1e            	dc.b	30
  34  000b 1e            	dc.b	30
  35  000c 1e            	dc.b	30
  36  000d 3d            	dc.b	61
  37  000e 17            	dc.b	23
  38  000f 17            	dc.b	23
  39  0010 3e            	dc.b	62
  40  0011               _TBR_Array:
  41  0011 00            	dc.b	0
  42  0012 01            	dc.b	1
  43  0013 02            	dc.b	2
  44  0014 03            	dc.b	3
  45  0015 04            	dc.b	4
  46  0016 05            	dc.b	5
  47  0017 06            	dc.b	6
  48  0018 07            	dc.b	7
  49  0019 08            	dc.b	8
  50  001a 09            	dc.b	9
  51  001b 0a            	dc.b	10
  52  001c 0b            	dc.b	11
  53  001d 0c            	dc.b	12
  54  001e 0c            	dc.b	12
  55  001f 0e            	dc.b	14
  56  0020 0f            	dc.b	15
  57  0021 0f            	dc.b	15
  86                     ; 73 void AWU_DeInit(void)
  86                     ; 74 {
  87                     .text:	section	.text,new
  88  0000               f_AWU_DeInit:
  92                     ; 75   AWU->CSR = AWU_CSR_RESET_VALUE;
  94  0000 725f50f0      	clr	20720
  95                     ; 76   AWU->APR = AWU_APR_RESET_VALUE;
  97  0004 353f50f1      	mov	20721,#63
  98                     ; 77   AWU->TBR = AWU_TBR_RESET_VALUE;
 100  0008 725f50f2      	clr	20722
 101                     ; 78 }
 104  000c 87            	retf	
 266                     ; 88 void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
 266                     ; 89 {
 267                     .text:	section	.text,new
 268  0000               f_AWU_Init:
 270  0000 88            	push	a
 271       00000000      OFST:	set	0
 274                     ; 91   assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
 276  0001 4d            	tnz	a
 277  0002 274f          	jreq	L41
 278  0004 a101          	cp	a,#1
 279  0006 274b          	jreq	L41
 280  0008 a102          	cp	a,#2
 281  000a 2747          	jreq	L41
 282  000c a103          	cp	a,#3
 283  000e 2743          	jreq	L41
 284  0010 a104          	cp	a,#4
 285  0012 273f          	jreq	L41
 286  0014 a105          	cp	a,#5
 287  0016 273b          	jreq	L41
 288  0018 a106          	cp	a,#6
 289  001a 2737          	jreq	L41
 290  001c a107          	cp	a,#7
 291  001e 2733          	jreq	L41
 292  0020 a108          	cp	a,#8
 293  0022 272f          	jreq	L41
 294  0024 a109          	cp	a,#9
 295  0026 272b          	jreq	L41
 296  0028 a10a          	cp	a,#10
 297  002a 2727          	jreq	L41
 298  002c a10b          	cp	a,#11
 299  002e 2723          	jreq	L41
 300  0030 a10c          	cp	a,#12
 301  0032 271f          	jreq	L41
 302  0034 a10d          	cp	a,#13
 303  0036 271b          	jreq	L41
 304  0038 a10e          	cp	a,#14
 305  003a 2717          	jreq	L41
 306  003c a10f          	cp	a,#15
 307  003e 2713          	jreq	L41
 308  0040 a110          	cp	a,#16
 309  0042 270f          	jreq	L41
 310  0044 ae005b        	ldw	x,#91
 311  0047 89            	pushw	x
 312  0048 5f            	clrw	x
 313  0049 89            	pushw	x
 314  004a ae002e        	ldw	x,#L501
 315  004d 8d000000      	callf	f_assert_failed
 317  0051 5b04          	addw	sp,#4
 318  0053               L41:
 319                     ; 94   AWU->CSR |= AWU_CSR_AWUEN;
 321  0053 721850f0      	bset	20720,#4
 322                     ; 97   AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
 324  0057 c650f2        	ld	a,20722
 325  005a a4f0          	and	a,#240
 326  005c c750f2        	ld	20722,a
 327                     ; 98   AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
 329  005f 7b01          	ld	a,(OFST+1,sp)
 330  0061 5f            	clrw	x
 331  0062 97            	ld	xl,a
 332  0063 c650f2        	ld	a,20722
 333  0066 da0011        	or	a,(_TBR_Array,x)
 334  0069 c750f2        	ld	20722,a
 335                     ; 101   AWU->APR &= (uint8_t)(~AWU_APR_APR);
 337  006c c650f1        	ld	a,20721
 338  006f a4c0          	and	a,#192
 339  0071 c750f1        	ld	20721,a
 340                     ; 102   AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
 342  0074 7b01          	ld	a,(OFST+1,sp)
 343  0076 5f            	clrw	x
 344  0077 97            	ld	xl,a
 345  0078 c650f1        	ld	a,20721
 346  007b da0000        	or	a,(_APR_Array,x)
 347  007e c750f1        	ld	20721,a
 348                     ; 103 }
 351  0081 84            	pop	a
 352  0082 87            	retf	
 406                     ; 112 void AWU_Cmd(FunctionalState NewState)
 406                     ; 113 {
 407                     .text:	section	.text,new
 408  0000               f_AWU_Cmd:
 412                     ; 114   if (NewState != DISABLE)
 414  0000 4d            	tnz	a
 415  0001 2705          	jreq	L531
 416                     ; 117     AWU->CSR |= AWU_CSR_AWUEN;
 418  0003 721850f0      	bset	20720,#4
 421  0007 87            	retf	
 422  0008               L531:
 423                     ; 122     AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 425  0008 721950f0      	bres	20720,#4
 426                     ; 124 }
 429  000c 87            	retf	
 482                     	switch	.const
 483  0022               L62:
 484  0022 0001adb0      	dc.l	110000
 485  0026               L03:
 486  0026 000249f1      	dc.l	150001
 487  002a               L63:
 488  002a 000003e8      	dc.l	1000
 489                     ; 139 void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
 489                     ; 140 {
 490                     .text:	section	.text,new
 491  0000               f_AWU_LSICalibrationConfig:
 493  0000 5206          	subw	sp,#6
 494       00000006      OFST:	set	6
 497                     ; 141   uint16_t lsifreqkhz = 0x0;
 499                     ; 142   uint16_t A = 0x0;
 501                     ; 145   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 503  0002 96            	ldw	x,sp
 504  0003 1c000a        	addw	x,#OFST+4
 505  0006 8d000000      	callf	d_ltor
 507  000a ae0022        	ldw	x,#L62
 508  000d 8d000000      	callf	d_lcmp
 510  0011 2511          	jrult	L42
 511  0013 96            	ldw	x,sp
 512  0014 1c000a        	addw	x,#OFST+4
 513  0017 8d000000      	callf	d_ltor
 515  001b ae0026        	ldw	x,#L03
 516  001e 8d000000      	callf	d_lcmp
 518  0022 250f          	jrult	L23
 519  0024               L42:
 520  0024 ae0091        	ldw	x,#145
 521  0027 89            	pushw	x
 522  0028 5f            	clrw	x
 523  0029 89            	pushw	x
 524  002a ae002e        	ldw	x,#L501
 525  002d 8d000000      	callf	f_assert_failed
 527  0031 5b04          	addw	sp,#4
 528  0033               L23:
 529                     ; 147   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 531  0033 96            	ldw	x,sp
 532  0034 1c000a        	addw	x,#OFST+4
 533  0037 8d000000      	callf	d_ltor
 535  003b ae002a        	ldw	x,#L63
 536  003e 8d000000      	callf	d_ludv
 538  0042 be02          	ldw	x,c_lreg+2
 539  0044 1f03          	ldw	(OFST-3,sp),x
 541                     ; 151   A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
 543  0046 54            	srlw	x
 544  0047 54            	srlw	x
 545  0048 1f05          	ldw	(OFST-1,sp),x
 547                     ; 153   if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
 549  004a 58            	sllw	x
 550  004b 58            	sllw	x
 551  004c 1f01          	ldw	(OFST-5,sp),x
 553  004e 1e03          	ldw	x,(OFST-3,sp)
 554  0050 72f001        	subw	x,(OFST-5,sp)
 555  0053 1605          	ldw	y,(OFST-1,sp)
 556  0055 9058          	sllw	y
 557  0057 905c          	incw	y
 558  0059 8d000000      	callf	d_imul
 560  005d 1605          	ldw	y,(OFST-1,sp)
 561  005f 9058          	sllw	y
 562  0061 bf00          	ldw	c_x,x
 563  0063 9058          	sllw	y
 564  0065 90b300        	cpw	y,c_x
 565  0068 7b06          	ld	a,(OFST+0,sp)
 566  006a 2504          	jrult	L761
 567                     ; 155     AWU->APR = (uint8_t)(A - 2U);
 569  006c a002          	sub	a,#2
 571  006e 2001          	jra	L171
 572  0070               L761:
 573                     ; 159     AWU->APR = (uint8_t)(A - 1U);
 575  0070 4a            	dec	a
 576  0071               L171:
 577  0071 c750f1        	ld	20721,a
 578                     ; 161 }
 581  0074 5b06          	addw	sp,#6
 582  0076 87            	retf	
 604                     ; 168 void AWU_IdleModeEnable(void)
 604                     ; 169 {
 605                     .text:	section	.text,new
 606  0000               f_AWU_IdleModeEnable:
 610                     ; 171   AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 612  0000 721950f0      	bres	20720,#4
 613                     ; 174   AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
 615  0004 35f050f2      	mov	20722,#240
 616                     ; 175 }
 619  0008 87            	retf	
 662                     ; 183 FlagStatus AWU_GetFlagStatus(void)
 662                     ; 184 {
 663                     .text:	section	.text,new
 664  0000               f_AWU_GetFlagStatus:
 668                     ; 185   return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
 670  0000 720a50f002    	btjt	20720,#5,L44
 671  0005 4f            	clr	a
 673  0006 87            	retf	
 674  0007               L44:
 675  0007 a601          	ld	a,#1
 678  0009 87            	retf	
 712                     	xdef	_TBR_Array
 713                     	xdef	_APR_Array
 714                     	xdef	f_AWU_GetFlagStatus
 715                     	xdef	f_AWU_IdleModeEnable
 716                     	xdef	f_AWU_LSICalibrationConfig
 717                     	xdef	f_AWU_Cmd
 718                     	xdef	f_AWU_Init
 719                     	xdef	f_AWU_DeInit
 720                     	xref	f_assert_failed
 721                     	switch	.const
 722  002e               L501:
 723  002e 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 724  0040 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 725  0052 685f64726976  	dc.b	"h_driver\src\stm8s"
 726  0064 5f6177752e63  	dc.b	"_awu.c",0
 727                     	xref.b	c_lreg
 728                     	xref.b	c_x
 748                     	xref	d_imul
 749                     	xref	d_ludv
 750                     	xref	d_lcmp
 751                     	xref	d_ltor
 752                     	end
