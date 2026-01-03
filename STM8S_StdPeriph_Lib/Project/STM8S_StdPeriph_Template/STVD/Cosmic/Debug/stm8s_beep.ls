   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 54 void BEEP_DeInit(void)
  49                     ; 55 {
  50                     .text:	section	.text,new
  51  0000               f_BEEP_DeInit:
  55                     ; 56   BEEP->CSR = BEEP_CSR_RESET_VALUE;
  57  0000 351f50f3      	mov	20723,#31
  58                     ; 57 }
  61  0004 87            	retf	
 126                     ; 67 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 126                     ; 68 {
 127                     .text:	section	.text,new
 128  0000               f_BEEP_Init:
 130  0000 88            	push	a
 131       00000000      OFST:	set	0
 134                     ; 70   assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 136  0001 4d            	tnz	a
 137  0002 2717          	jreq	L41
 138  0004 a140          	cp	a,#64
 139  0006 2713          	jreq	L41
 140  0008 a180          	cp	a,#128
 141  000a 270f          	jreq	L41
 142  000c ae0046        	ldw	x,#70
 143  000f 89            	pushw	x
 144  0010 5f            	clrw	x
 145  0011 89            	pushw	x
 146  0012 ae000c        	ldw	x,#L15
 147  0015 8d000000      	callf	f_assert_failed
 149  0019 5b04          	addw	sp,#4
 150  001b               L41:
 151                     ; 73   if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 153  001b c650f3        	ld	a,20723
 154  001e a41f          	and	a,#31
 155  0020 a11f          	cp	a,#31
 156  0022 2610          	jrne	L35
 157                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 159  0024 c650f3        	ld	a,20723
 160  0027 a4e0          	and	a,#224
 161  0029 c750f3        	ld	20723,a
 162                     ; 76     BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 164  002c c650f3        	ld	a,20723
 165  002f aa0b          	or	a,#11
 166  0031 c750f3        	ld	20723,a
 167  0034               L35:
 168                     ; 80   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 170  0034 c650f3        	ld	a,20723
 171  0037 a43f          	and	a,#63
 172  0039 c750f3        	ld	20723,a
 173                     ; 81   BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 175  003c c650f3        	ld	a,20723
 176  003f 1a01          	or	a,(OFST+1,sp)
 177  0041 c750f3        	ld	20723,a
 178                     ; 82 }
 181  0044 84            	pop	a
 182  0045 87            	retf	
 236                     ; 91 void BEEP_Cmd(FunctionalState NewState)
 236                     ; 92 {
 237                     .text:	section	.text,new
 238  0000               f_BEEP_Cmd:
 242                     ; 93   if (NewState != DISABLE)
 244  0000 4d            	tnz	a
 245  0001 2705          	jreq	L301
 246                     ; 96     BEEP->CSR |= BEEP_CSR_BEEPEN;
 248  0003 721a50f3      	bset	20723,#5
 251  0007 87            	retf	
 252  0008               L301:
 253                     ; 101     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 255  0008 721b50f3      	bres	20723,#5
 256                     ; 103 }
 259  000c 87            	retf	
 312                     .const:	section	.text
 313  0000               L62:
 314  0000 0001adb0      	dc.l	110000
 315  0004               L03:
 316  0004 000249f1      	dc.l	150001
 317  0008               L63:
 318  0008 000003e8      	dc.l	1000
 319                     ; 118 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 319                     ; 119 {
 320                     .text:	section	.text,new
 321  0000               f_BEEP_LSICalibrationConfig:
 323  0000 5206          	subw	sp,#6
 324       00000006      OFST:	set	6
 327                     ; 124   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 329  0002 96            	ldw	x,sp
 330  0003 1c000a        	addw	x,#OFST+4
 331  0006 8d000000      	callf	d_ltor
 333  000a ae0000        	ldw	x,#L62
 334  000d 8d000000      	callf	d_lcmp
 336  0011 2511          	jrult	L42
 337  0013 96            	ldw	x,sp
 338  0014 1c000a        	addw	x,#OFST+4
 339  0017 8d000000      	callf	d_ltor
 341  001b ae0004        	ldw	x,#L03
 342  001e 8d000000      	callf	d_lcmp
 344  0022 250f          	jrult	L23
 345  0024               L42:
 346  0024 ae007c        	ldw	x,#124
 347  0027 89            	pushw	x
 348  0028 5f            	clrw	x
 349  0029 89            	pushw	x
 350  002a ae000c        	ldw	x,#L15
 351  002d 8d000000      	callf	f_assert_failed
 353  0031 5b04          	addw	sp,#4
 354  0033               L23:
 355                     ; 126   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 357  0033 96            	ldw	x,sp
 358  0034 1c000a        	addw	x,#OFST+4
 359  0037 8d000000      	callf	d_ltor
 361  003b ae0008        	ldw	x,#L63
 362  003e 8d000000      	callf	d_ludv
 364  0042 be02          	ldw	x,c_lreg+2
 365  0044 1f03          	ldw	(OFST-3,sp),x
 367                     ; 130   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 369  0046 c650f3        	ld	a,20723
 370  0049 a4e0          	and	a,#224
 371  004b c750f3        	ld	20723,a
 372                     ; 132   A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 374  004e 54            	srlw	x
 375  004f 54            	srlw	x
 376  0050 54            	srlw	x
 377  0051 1f05          	ldw	(OFST-1,sp),x
 379                     ; 134   if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 381  0053 58            	sllw	x
 382  0054 58            	sllw	x
 383  0055 58            	sllw	x
 384  0056 1f01          	ldw	(OFST-5,sp),x
 386  0058 1e03          	ldw	x,(OFST-3,sp)
 387  005a 72f001        	subw	x,(OFST-5,sp)
 388  005d 1605          	ldw	y,(OFST-1,sp)
 389  005f 9058          	sllw	y
 390  0061 905c          	incw	y
 391  0063 8d000000      	callf	d_imul
 393  0067 1605          	ldw	y,(OFST-1,sp)
 394  0069 9058          	sllw	y
 395  006b 9058          	sllw	y
 396  006d bf00          	ldw	c_x,x
 397  006f 9058          	sllw	y
 398  0071 90b300        	cpw	y,c_x
 399  0074 7b06          	ld	a,(OFST+0,sp)
 400  0076 2504          	jrult	L531
 401                     ; 136     BEEP->CSR |= (uint8_t)(A - 2U);
 403  0078 a002          	sub	a,#2
 405  007a 2001          	jra	L731
 406  007c               L531:
 407                     ; 140     BEEP->CSR |= (uint8_t)(A - 1U);
 409  007c 4a            	dec	a
 410  007d               L731:
 411  007d ca50f3        	or	a,20723
 412  0080 c750f3        	ld	20723,a
 413                     ; 142 }
 416  0083 5b06          	addw	sp,#6
 417  0085 87            	retf	
 429                     	xdef	f_BEEP_LSICalibrationConfig
 430                     	xdef	f_BEEP_Cmd
 431                     	xdef	f_BEEP_Init
 432                     	xdef	f_BEEP_DeInit
 433                     	xref	f_assert_failed
 434                     	switch	.const
 435  000c               L15:
 436  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 437  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 438  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
 439  0042 5f626565702e  	dc.b	"_beep.c",0
 440                     	xref.b	c_lreg
 441                     	xref.b	c_x
 461                     	xref	d_imul
 462                     	xref	d_ludv
 463                     	xref	d_lcmp
 464                     	xref	d_ltor
 465                     	end
