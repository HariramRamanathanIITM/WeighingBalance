   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 67 void I2C_DeInit(void)
  49                     ; 68 {
  50                     .text:	section	.text,new
  51  0000               f_I2C_DeInit:
  55                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  57  0000 725f5210      	clr	21008
  58                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  60  0004 725f5211      	clr	21009
  61                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  63  0008 725f5212      	clr	21010
  64                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  66  000c 725f5213      	clr	21011
  67                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  69  0010 725f5214      	clr	21012
  70                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  72  0014 725f521a      	clr	21018
  73                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  75  0018 725f521b      	clr	21019
  76                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  78  001c 725f521c      	clr	21020
  79                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  81  0020 3502521d      	mov	21021,#2
  82                     ; 78 }
  85  0024 87            	retf	
 264                     .const:	section	.text
 265  0000               L65:
 266  0000 00061a81      	dc.l	400001
 267  0004               L46:
 268  0004 000186a1      	dc.l	100001
 269  0008               L66:
 270  0008 000f4240      	dc.l	1000000
 271                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 271                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 271                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 271                     ; 99 {
 272                     .text:	section	.text,new
 273  0000               f_I2C_Init:
 275  0000 5209          	subw	sp,#9
 276       00000009      OFST:	set	9
 279                     ; 100   uint16_t result = 0x0004;
 281                     ; 101   uint16_t tmpval = 0;
 283                     ; 102   uint8_t tmpccrh = 0;
 285  0002 0f07          	clr	(OFST-2,sp)
 287                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 289  0004 7b14          	ld	a,(OFST+11,sp)
 290  0006 270f          	jreq	L41
 291  0008 a101          	cp	a,#1
 292  000a 270b          	jreq	L41
 293  000c a102          	cp	a,#2
 294  000e 2707          	jreq	L41
 295  0010 ae0069        	ldw	x,#105
 296  0013 8d750175      	callf	LC001
 297  0017               L41:
 298                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 300  0017 7b15          	ld	a,(OFST+12,sp)
 301  0019 270b          	jreq	L42
 302  001b a180          	cp	a,#128
 303  001d 2707          	jreq	L42
 304  001f ae006a        	ldw	x,#106
 305  0022 8d750175      	callf	LC001
 306  0026               L42:
 307                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 309  0026 1e11          	ldw	x,(OFST+8,sp)
 310  0028 a30400        	cpw	x,#1024
 311  002b 2507          	jrult	L23
 312  002d ae006b        	ldw	x,#107
 313  0030 8d750175      	callf	LC001
 314  0034               L23:
 315                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 317  0034 7b13          	ld	a,(OFST+10,sp)
 318  0036 270b          	jreq	L24
 319  0038 a140          	cp	a,#64
 320  003a 2707          	jreq	L24
 321  003c ae006c        	ldw	x,#108
 322  003f 8d750175      	callf	LC001
 323  0043               L24:
 324                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 326  0043 7b16          	ld	a,(OFST+13,sp)
 327  0045 2704          	jreq	L64
 328  0047 a111          	cp	a,#17
 329  0049 2507          	jrult	L05
 330  004b               L64:
 331  004b ae006d        	ldw	x,#109
 332  004e 8d750175      	callf	LC001
 333  0052               L05:
 334                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 336  0052 96            	ldw	x,sp
 337  0053 1c000d        	addw	x,#OFST+4
 338  0056 8d000000      	callf	d_lzmp
 340  005a 2711          	jreq	L45
 341  005c 96            	ldw	x,sp
 342  005d 1c000d        	addw	x,#OFST+4
 343  0060 8d000000      	callf	d_ltor
 345  0064 ae0000        	ldw	x,#L65
 346  0067 8d000000      	callf	d_lcmp
 348  006b 2507          	jrult	L06
 349  006d               L45:
 350  006d ae006e        	ldw	x,#110
 351  0070 8d750175      	callf	LC001
 352  0074               L06:
 353                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 355  0074 c65212        	ld	a,21010
 356  0077 a4c0          	and	a,#192
 357  0079 c75212        	ld	21010,a
 358                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 360  007c c65212        	ld	a,21010
 361  007f 1a16          	or	a,(OFST+13,sp)
 362  0081 c75212        	ld	21010,a
 363                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 365  0084 72115210      	bres	21008,#0
 366                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 368  0088 c6521c        	ld	a,21020
 369  008b a430          	and	a,#48
 370  008d c7521c        	ld	21020,a
 371                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 373  0090 725f521b      	clr	21019
 374                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 376  0094 96            	ldw	x,sp
 377  0095 1c000d        	addw	x,#OFST+4
 378  0098 8d000000      	callf	d_ltor
 380  009c ae0004        	ldw	x,#L46
 381  009f 8d000000      	callf	d_lcmp
 383  00a3 256b          	jrult	L331
 384                     ; 131     tmpccrh = I2C_CCRH_FS;
 386  00a5 a680          	ld	a,#128
 387  00a7 6b07          	ld	(OFST-2,sp),a
 389                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 391  00a9 96            	ldw	x,sp
 392  00aa 0d13          	tnz	(OFST+10,sp)
 393  00ac 2622          	jrne	L531
 394                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 396  00ae 1c000d        	addw	x,#OFST+4
 397  00b1 8d000000      	callf	d_ltor
 399  00b5 a603          	ld	a,#3
 400  00b7 8d000000      	callf	d_smul
 402  00bb 96            	ldw	x,sp
 403  00bc 5c            	incw	x
 404  00bd 8d000000      	callf	d_rtol
 407  00c1 7b16          	ld	a,(OFST+13,sp)
 408  00c3 8d820182      	callf	LC002
 410  00c7 96            	ldw	x,sp
 411  00c8 8d910191      	callf	LC003
 412  00cc 1f08          	ldw	(OFST-1,sp),x
 415  00ce 2026          	jra	L731
 416  00d0               L531:
 417                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 419  00d0 1c000d        	addw	x,#OFST+4
 420  00d3 8d000000      	callf	d_ltor
 422  00d7 a619          	ld	a,#25
 423  00d9 8d000000      	callf	d_smul
 425  00dd 96            	ldw	x,sp
 426  00de 5c            	incw	x
 427  00df 8d000000      	callf	d_rtol
 430  00e3 7b16          	ld	a,(OFST+13,sp)
 431  00e5 8d820182      	callf	LC002
 433  00e9 96            	ldw	x,sp
 434  00ea 8d910191      	callf	LC003
 435  00ee 1f08          	ldw	(OFST-1,sp),x
 437                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 439  00f0 7b07          	ld	a,(OFST-2,sp)
 440  00f2 aa40          	or	a,#64
 441  00f4 6b07          	ld	(OFST-2,sp),a
 443  00f6               L731:
 444                     ; 147     if (result < (uint16_t)0x01)
 446  00f6 1e08          	ldw	x,(OFST-1,sp)
 447  00f8 2603          	jrne	L141
 448                     ; 150       result = (uint16_t)0x0001;
 450  00fa 5c            	incw	x
 451  00fb 1f08          	ldw	(OFST-1,sp),x
 453  00fd               L141:
 454                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 456  00fd 7b16          	ld	a,(OFST+13,sp)
 457  00ff 97            	ld	xl,a
 458  0100 a603          	ld	a,#3
 459  0102 42            	mul	x,a
 460  0103 a60a          	ld	a,#10
 461  0105 8d000000      	callf	d_sdivx
 463  0109 5c            	incw	x
 464  010a 1f05          	ldw	(OFST-4,sp),x
 466                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 468  010c 7b06          	ld	a,(OFST-3,sp)
 470  010e 202e          	jra	L341
 471  0110               L331:
 472                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 474  0110 96            	ldw	x,sp
 475  0111 1c000d        	addw	x,#OFST+4
 476  0114 8d000000      	callf	d_ltor
 478  0118 3803          	sll	c_lreg+3
 479  011a 3902          	rlc	c_lreg+2
 480  011c 3901          	rlc	c_lreg+1
 481  011e 96            	ldw	x,sp
 482  011f 3900          	rlc	c_lreg
 483  0121 5c            	incw	x
 484  0122 8d000000      	callf	d_rtol
 487  0126 7b16          	ld	a,(OFST+13,sp)
 488  0128 8d820182      	callf	LC002
 490  012c 96            	ldw	x,sp
 491  012d 8d910191      	callf	LC003
 493                     ; 167     if (result < (uint16_t)0x0004)
 495  0131 a30004        	cpw	x,#4
 496  0134 2403          	jruge	L541
 497                     ; 170       result = (uint16_t)0x0004;
 499  0136 ae0004        	ldw	x,#4
 501  0139               L541:
 502  0139 1f08          	ldw	(OFST-1,sp),x
 503                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 505  013b 7b16          	ld	a,(OFST+13,sp)
 506  013d 4c            	inc	a
 507  013e               L341:
 508  013e c7521d        	ld	21021,a
 509                     ; 181   I2C->CCRL = (uint8_t)result;
 511  0141 7b09          	ld	a,(OFST+0,sp)
 512  0143 c7521b        	ld	21019,a
 513                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 515  0146 7b08          	ld	a,(OFST-1,sp)
 516  0148 a40f          	and	a,#15
 517  014a 1a07          	or	a,(OFST-2,sp)
 518  014c c7521c        	ld	21020,a
 519                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 521  014f 72105210      	bset	21008,#0
 522                     ; 188   I2C_AcknowledgeConfig(Ack);
 524  0153 7b14          	ld	a,(OFST+11,sp)
 525  0155 8d000000      	callf	f_I2C_AcknowledgeConfig
 527                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 529  0159 7b12          	ld	a,(OFST+9,sp)
 530  015b c75213        	ld	21011,a
 531                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 531                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 533  015e 1e11          	ldw	x,(OFST+8,sp)
 534  0160 4f            	clr	a
 535  0161 01            	rrwa	x,a
 536  0162 48            	sll	a
 537  0163 01            	rrwa	x,a
 538  0164 49            	rlc	a
 539  0165 a406          	and	a,#6
 540  0167 6b04          	ld	(OFST-5,sp),a
 542  0169 7b15          	ld	a,(OFST+12,sp)
 543  016b aa40          	or	a,#64
 544  016d 1a04          	or	a,(OFST-5,sp)
 545  016f c75214        	ld	21012,a
 546                     ; 194 }
 549  0172 5b09          	addw	sp,#9
 550  0174 87            	retf	
 551  0175               LC001:
 552  0175 89            	pushw	x
 553  0176 5f            	clrw	x
 554  0177 89            	pushw	x
 555  0178 ae000c        	ldw	x,#L131
 556  017b 8d000000      	callf	f_assert_failed
 558  017f 5b04          	addw	sp,#4
 559  0181 87            	retf	
 560  0182               LC002:
 561  0182 b703          	ld	c_lreg+3,a
 562  0184 3f02          	clr	c_lreg+2
 563  0186 3f01          	clr	c_lreg+1
 564  0188 3f00          	clr	c_lreg
 565  018a ae0008        	ldw	x,#L66
 566  018d ac000000      	jpf	d_lmul
 567  0191               LC003:
 568  0191 5c            	incw	x
 569  0192 8d000000      	callf	d_ludv
 571  0196 be02          	ldw	x,c_lreg+2
 572  0198 87            	retf	
 627                     ; 202 void I2C_Cmd(FunctionalState NewState)
 627                     ; 203 {
 628                     .text:	section	.text,new
 629  0000               f_I2C_Cmd:
 631  0000 88            	push	a
 632       00000000      OFST:	set	0
 635                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 637  0001 4d            	tnz	a
 638  0002 2712          	jreq	L001
 639  0004 4a            	dec	a
 640  0005 270f          	jreq	L001
 641  0007 ae00cd        	ldw	x,#205
 642  000a 89            	pushw	x
 643  000b 5f            	clrw	x
 644  000c 89            	pushw	x
 645  000d ae000c        	ldw	x,#L131
 646  0010 8d000000      	callf	f_assert_failed
 648  0014 5b04          	addw	sp,#4
 649  0016               L001:
 650                     ; 207   if (NewState != DISABLE)
 652  0016 7b01          	ld	a,(OFST+1,sp)
 653  0018 2706          	jreq	L571
 654                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 656  001a 72105210      	bset	21008,#0
 658  001e 2004          	jra	L771
 659  0020               L571:
 660                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 662  0020 72115210      	bres	21008,#0
 663  0024               L771:
 664                     ; 217 }
 667  0024 84            	pop	a
 668  0025 87            	retf	
 703                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 703                     ; 226 {
 704                     .text:	section	.text,new
 705  0000               f_I2C_GeneralCallCmd:
 707  0000 88            	push	a
 708       00000000      OFST:	set	0
 711                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 713  0001 4d            	tnz	a
 714  0002 2712          	jreq	L211
 715  0004 4a            	dec	a
 716  0005 270f          	jreq	L211
 717  0007 ae00e4        	ldw	x,#228
 718  000a 89            	pushw	x
 719  000b 5f            	clrw	x
 720  000c 89            	pushw	x
 721  000d ae000c        	ldw	x,#L131
 722  0010 8d000000      	callf	f_assert_failed
 724  0014 5b04          	addw	sp,#4
 725  0016               L211:
 726                     ; 230   if (NewState != DISABLE)
 728  0016 7b01          	ld	a,(OFST+1,sp)
 729  0018 2706          	jreq	L712
 730                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 732  001a 721c5210      	bset	21008,#6
 734  001e 2004          	jra	L122
 735  0020               L712:
 736                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 738  0020 721d5210      	bres	21008,#6
 739  0024               L122:
 740                     ; 240 }
 743  0024 84            	pop	a
 744  0025 87            	retf	
 779                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 779                     ; 251 {
 780                     .text:	section	.text,new
 781  0000               f_I2C_GenerateSTART:
 783  0000 88            	push	a
 784       00000000      OFST:	set	0
 787                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 789  0001 4d            	tnz	a
 790  0002 2712          	jreq	L421
 791  0004 4a            	dec	a
 792  0005 270f          	jreq	L421
 793  0007 ae00fd        	ldw	x,#253
 794  000a 89            	pushw	x
 795  000b 5f            	clrw	x
 796  000c 89            	pushw	x
 797  000d ae000c        	ldw	x,#L131
 798  0010 8d000000      	callf	f_assert_failed
 800  0014 5b04          	addw	sp,#4
 801  0016               L421:
 802                     ; 255   if (NewState != DISABLE)
 804  0016 7b01          	ld	a,(OFST+1,sp)
 805  0018 2706          	jreq	L142
 806                     ; 258     I2C->CR2 |= I2C_CR2_START;
 808  001a 72105211      	bset	21009,#0
 810  001e 2004          	jra	L342
 811  0020               L142:
 812                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 814  0020 72115211      	bres	21009,#0
 815  0024               L342:
 816                     ; 265 }
 819  0024 84            	pop	a
 820  0025 87            	retf	
 855                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 855                     ; 274 {
 856                     .text:	section	.text,new
 857  0000               f_I2C_GenerateSTOP:
 859  0000 88            	push	a
 860       00000000      OFST:	set	0
 863                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 865  0001 4d            	tnz	a
 866  0002 2712          	jreq	L631
 867  0004 4a            	dec	a
 868  0005 270f          	jreq	L631
 869  0007 ae0114        	ldw	x,#276
 870  000a 89            	pushw	x
 871  000b 5f            	clrw	x
 872  000c 89            	pushw	x
 873  000d ae000c        	ldw	x,#L131
 874  0010 8d000000      	callf	f_assert_failed
 876  0014 5b04          	addw	sp,#4
 877  0016               L631:
 878                     ; 278   if (NewState != DISABLE)
 880  0016 7b01          	ld	a,(OFST+1,sp)
 881  0018 2706          	jreq	L362
 882                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 884  001a 72125211      	bset	21009,#1
 886  001e 2004          	jra	L562
 887  0020               L362:
 888                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 890  0020 72135211      	bres	21009,#1
 891  0024               L562:
 892                     ; 288 }
 895  0024 84            	pop	a
 896  0025 87            	retf	
 932                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
 932                     ; 297 {
 933                     .text:	section	.text,new
 934  0000               f_I2C_SoftwareResetCmd:
 936  0000 88            	push	a
 937       00000000      OFST:	set	0
 940                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 942  0001 4d            	tnz	a
 943  0002 2712          	jreq	L051
 944  0004 4a            	dec	a
 945  0005 270f          	jreq	L051
 946  0007 ae012b        	ldw	x,#299
 947  000a 89            	pushw	x
 948  000b 5f            	clrw	x
 949  000c 89            	pushw	x
 950  000d ae000c        	ldw	x,#L131
 951  0010 8d000000      	callf	f_assert_failed
 953  0014 5b04          	addw	sp,#4
 954  0016               L051:
 955                     ; 301   if (NewState != DISABLE)
 957  0016 7b01          	ld	a,(OFST+1,sp)
 958  0018 2706          	jreq	L503
 959                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
 961  001a 721e5211      	bset	21009,#7
 963  001e 2004          	jra	L703
 964  0020               L503:
 965                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 967  0020 721f5211      	bres	21009,#7
 968  0024               L703:
 969                     ; 311 }
 972  0024 84            	pop	a
 973  0025 87            	retf	
1009                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1009                     ; 321 {
1010                     .text:	section	.text,new
1011  0000               f_I2C_StretchClockCmd:
1013  0000 88            	push	a
1014       00000000      OFST:	set	0
1017                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1019  0001 4d            	tnz	a
1020  0002 2712          	jreq	L261
1021  0004 4a            	dec	a
1022  0005 270f          	jreq	L261
1023  0007 ae0143        	ldw	x,#323
1024  000a 89            	pushw	x
1025  000b 5f            	clrw	x
1026  000c 89            	pushw	x
1027  000d ae000c        	ldw	x,#L131
1028  0010 8d000000      	callf	f_assert_failed
1030  0014 5b04          	addw	sp,#4
1031  0016               L261:
1032                     ; 325   if (NewState != DISABLE)
1034  0016 7b01          	ld	a,(OFST+1,sp)
1035  0018 2706          	jreq	L723
1036                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1038  001a 721f5210      	bres	21008,#7
1040  001e 2004          	jra	L133
1041  0020               L723:
1042                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1044  0020 721e5210      	bset	21008,#7
1045  0024               L133:
1046                     ; 336 }
1049  0024 84            	pop	a
1050  0025 87            	retf	
1086                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1086                     ; 346 {
1087                     .text:	section	.text,new
1088  0000               f_I2C_AcknowledgeConfig:
1090  0000 88            	push	a
1091       00000000      OFST:	set	0
1094                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1096  0001 4d            	tnz	a
1097  0002 2717          	jreq	L471
1098  0004 a101          	cp	a,#1
1099  0006 2713          	jreq	L471
1100  0008 a102          	cp	a,#2
1101  000a 270f          	jreq	L471
1102  000c ae015c        	ldw	x,#348
1103  000f 89            	pushw	x
1104  0010 5f            	clrw	x
1105  0011 89            	pushw	x
1106  0012 ae000c        	ldw	x,#L131
1107  0015 8d000000      	callf	f_assert_failed
1109  0019 5b04          	addw	sp,#4
1110  001b               L471:
1111                     ; 350   if (Ack == I2C_ACK_NONE)
1113  001b 7b01          	ld	a,(OFST+1,sp)
1114  001d 2606          	jrne	L153
1115                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1117  001f 72155211      	bres	21009,#2
1119  0023 2011          	jra	L353
1120  0025               L153:
1121                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1123  0025 72145211      	bset	21009,#2
1124                     ; 360     if (Ack == I2C_ACK_CURR)
1126  0029 4a            	dec	a
1127  002a 2606          	jrne	L553
1128                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1130  002c 72175211      	bres	21009,#3
1132  0030 2004          	jra	L353
1133  0032               L553:
1134                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1136  0032 72165211      	bset	21009,#3
1137  0036               L353:
1138                     ; 371 }
1141  0036 84            	pop	a
1142  0037 87            	retf	
1214                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1214                     ; 382 {
1215                     .text:	section	.text,new
1216  0000               f_I2C_ITConfig:
1218  0000 89            	pushw	x
1219       00000000      OFST:	set	0
1222                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1224  0001 9e            	ld	a,xh
1225  0002 4a            	dec	a
1226  0003 2725          	jreq	L602
1227  0005 9e            	ld	a,xh
1228  0006 a102          	cp	a,#2
1229  0008 2720          	jreq	L602
1230  000a 9e            	ld	a,xh
1231  000b a104          	cp	a,#4
1232  000d 271b          	jreq	L602
1233  000f 9e            	ld	a,xh
1234  0010 a103          	cp	a,#3
1235  0012 2716          	jreq	L602
1236  0014 9e            	ld	a,xh
1237  0015 a105          	cp	a,#5
1238  0017 2711          	jreq	L602
1239  0019 9e            	ld	a,xh
1240  001a a106          	cp	a,#6
1241  001c 270c          	jreq	L602
1242  001e 9e            	ld	a,xh
1243  001f a107          	cp	a,#7
1244  0021 2707          	jreq	L602
1245  0023 ae0180        	ldw	x,#384
1246  0026 8d4e004e      	callf	LC004
1247  002a               L602:
1248                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1250  002a 7b02          	ld	a,(OFST+2,sp)
1251  002c 270a          	jreq	L612
1252  002e 4a            	dec	a
1253  002f 2707          	jreq	L612
1254  0031 ae0181        	ldw	x,#385
1255  0034 8d4e004e      	callf	LC004
1256  0038               L612:
1257                     ; 387   if (NewState != DISABLE)
1259  0038 7b02          	ld	a,(OFST+2,sp)
1260  003a 2707          	jreq	L514
1261                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1263  003c c6521a        	ld	a,21018
1264  003f 1a01          	or	a,(OFST+1,sp)
1266  0041 2006          	jra	L714
1267  0043               L514:
1268                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1270  0043 7b01          	ld	a,(OFST+1,sp)
1271  0045 43            	cpl	a
1272  0046 c4521a        	and	a,21018
1273  0049               L714:
1274  0049 c7521a        	ld	21018,a
1275                     ; 397 }
1278  004c 85            	popw	x
1279  004d 87            	retf	
1280  004e               LC004:
1281  004e 89            	pushw	x
1282  004f 5f            	clrw	x
1283  0050 89            	pushw	x
1284  0051 ae000c        	ldw	x,#L131
1285  0054 8d000000      	callf	f_assert_failed
1287  0058 5b04          	addw	sp,#4
1288  005a 87            	retf	
1324                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1324                     ; 406 {
1325                     .text:	section	.text,new
1326  0000               f_I2C_FastModeDutyCycleConfig:
1328  0000 88            	push	a
1329       00000000      OFST:	set	0
1332                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1334  0001 4d            	tnz	a
1335  0002 2713          	jreq	L032
1336  0004 a140          	cp	a,#64
1337  0006 270f          	jreq	L032
1338  0008 ae0198        	ldw	x,#408
1339  000b 89            	pushw	x
1340  000c 5f            	clrw	x
1341  000d 89            	pushw	x
1342  000e ae000c        	ldw	x,#L131
1343  0011 8d000000      	callf	f_assert_failed
1345  0015 5b04          	addw	sp,#4
1346  0017               L032:
1347                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1349  0017 7b01          	ld	a,(OFST+1,sp)
1350  0019 a140          	cp	a,#64
1351  001b 2606          	jrne	L734
1352                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1354  001d 721c521c      	bset	21020,#6
1356  0021 2004          	jra	L144
1357  0023               L734:
1358                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1360  0023 721d521c      	bres	21020,#6
1361  0027               L144:
1362                     ; 420 }
1365  0027 84            	pop	a
1366  0028 87            	retf	
1388                     ; 427 uint8_t I2C_ReceiveData(void)
1388                     ; 428 {
1389                     .text:	section	.text,new
1390  0000               f_I2C_ReceiveData:
1394                     ; 430   return ((uint8_t)I2C->DR);
1396  0000 c65216        	ld	a,21014
1399  0003 87            	retf	
1464                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1464                     ; 441 {
1465                     .text:	section	.text,new
1466  0000               f_I2C_Send7bitAddress:
1468  0000 89            	pushw	x
1469       00000000      OFST:	set	0
1472                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1474  0001 9e            	ld	a,xh
1475  0002 a501          	bcp	a,#1
1476  0004 2707          	jreq	L242
1477  0006 ae01bb        	ldw	x,#443
1478  0009 8d280028      	callf	LC005
1479  000d               L242:
1480                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1482  000d 7b02          	ld	a,(OFST+2,sp)
1483  000f 270a          	jreq	L252
1484  0011 4a            	dec	a
1485  0012 2707          	jreq	L252
1486  0014 ae01bc        	ldw	x,#444
1487  0017 8d280028      	callf	LC005
1488  001b               L252:
1489                     ; 447   Address &= (uint8_t)0xFE;
1491  001b 7b01          	ld	a,(OFST+1,sp)
1492  001d a4fe          	and	a,#254
1493  001f 6b01          	ld	(OFST+1,sp),a
1494                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1496  0021 1a02          	or	a,(OFST+2,sp)
1497  0023 c75216        	ld	21014,a
1498                     ; 451 }
1501  0026 85            	popw	x
1502  0027 87            	retf	
1503  0028               LC005:
1504  0028 89            	pushw	x
1505  0029 5f            	clrw	x
1506  002a 89            	pushw	x
1507  002b ae000c        	ldw	x,#L131
1508  002e 8d000000      	callf	f_assert_failed
1510  0032 5b04          	addw	sp,#4
1511  0034 87            	retf	
1544                     ; 458 void I2C_SendData(uint8_t Data)
1544                     ; 459 {
1545                     .text:	section	.text,new
1546  0000               f_I2C_SendData:
1550                     ; 461   I2C->DR = Data;
1552  0000 c75216        	ld	21014,a
1553                     ; 462 }
1556  0003 87            	retf	
1780                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1780                     ; 579 {
1781                     .text:	section	.text,new
1782  0000               f_I2C_CheckEvent:
1784  0000 89            	pushw	x
1785  0001 5206          	subw	sp,#6
1786       00000006      OFST:	set	6
1789                     ; 580   __IO uint16_t lastevent = 0x00;
1791  0003 5f            	clrw	x
1792  0004 1f04          	ldw	(OFST-2,sp),x
1794                     ; 581   uint8_t flag1 = 0x00 ;
1796                     ; 582   uint8_t flag2 = 0x00;
1798                     ; 583   ErrorStatus status = ERROR;
1800                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1802  0006 1e07          	ldw	x,(OFST+1,sp)
1803  0008 a30682        	cpw	x,#1666
1804  000b 275c          	jreq	L662
1805  000d a30202        	cpw	x,#514
1806  0010 2757          	jreq	L662
1807  0012 a31200        	cpw	x,#4608
1808  0015 2752          	jreq	L662
1809  0017 a30240        	cpw	x,#576
1810  001a 274d          	jreq	L662
1811  001c a30350        	cpw	x,#848
1812  001f 2748          	jreq	L662
1813  0021 a30684        	cpw	x,#1668
1814  0024 2743          	jreq	L662
1815  0026 a30794        	cpw	x,#1940
1816  0029 273e          	jreq	L662
1817  002b a30004        	cpw	x,#4
1818  002e 2739          	jreq	L662
1819  0030 a30010        	cpw	x,#16
1820  0033 2734          	jreq	L662
1821  0035 a30301        	cpw	x,#769
1822  0038 272f          	jreq	L662
1823  003a a30782        	cpw	x,#1922
1824  003d 272a          	jreq	L662
1825  003f a30302        	cpw	x,#770
1826  0042 2725          	jreq	L662
1827  0044 a30340        	cpw	x,#832
1828  0047 2720          	jreq	L662
1829  0049 a30784        	cpw	x,#1924
1830  004c 271b          	jreq	L662
1831  004e a30780        	cpw	x,#1920
1832  0051 2716          	jreq	L662
1833  0053 a30308        	cpw	x,#776
1834  0056 2711          	jreq	L662
1835  0058 ae024a        	ldw	x,#586
1836  005b 89            	pushw	x
1837  005c 5f            	clrw	x
1838  005d 89            	pushw	x
1839  005e ae000c        	ldw	x,#L131
1840  0061 8d000000      	callf	f_assert_failed
1842  0065 5b04          	addw	sp,#4
1843  0067 1e07          	ldw	x,(OFST+1,sp)
1844  0069               L662:
1845                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1847  0069 a30004        	cpw	x,#4
1848  006c 2609          	jrne	L336
1849                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
1851  006e c65218        	ld	a,21016
1852  0071 a404          	and	a,#4
1853  0073 5f            	clrw	x
1854  0074 97            	ld	xl,a
1856  0075 201a          	jra	L536
1857  0077               L336:
1858                     ; 594     flag1 = I2C->SR1;
1860  0077 c65217        	ld	a,21015
1861  007a 6b03          	ld	(OFST-3,sp),a
1863                     ; 595     flag2 = I2C->SR3;
1865  007c c65219        	ld	a,21017
1866  007f 6b06          	ld	(OFST+0,sp),a
1868                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1870  0081 5f            	clrw	x
1871  0082 7b03          	ld	a,(OFST-3,sp)
1872  0084 97            	ld	xl,a
1873  0085 1f01          	ldw	(OFST-5,sp),x
1875  0087 5f            	clrw	x
1876  0088 7b06          	ld	a,(OFST+0,sp)
1877  008a 97            	ld	xl,a
1878  008b 7b02          	ld	a,(OFST-4,sp)
1879  008d 01            	rrwa	x,a
1880  008e 1a01          	or	a,(OFST-5,sp)
1881  0090 01            	rrwa	x,a
1882  0091               L536:
1883  0091 1f04          	ldw	(OFST-2,sp),x
1885                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1887  0093 1e04          	ldw	x,(OFST-2,sp)
1888  0095 01            	rrwa	x,a
1889  0096 1408          	and	a,(OFST+2,sp)
1890  0098 01            	rrwa	x,a
1891  0099 1407          	and	a,(OFST+1,sp)
1892  009b 01            	rrwa	x,a
1893  009c 1307          	cpw	x,(OFST+1,sp)
1894  009e 2604          	jrne	L736
1895                     ; 602     status = SUCCESS;
1897  00a0 a601          	ld	a,#1
1900  00a2 2001          	jra	L146
1901  00a4               L736:
1902                     ; 607     status = ERROR;
1904  00a4 4f            	clr	a
1906  00a5               L146:
1907                     ; 611   return status;
1911  00a5 5b08          	addw	sp,#8
1912  00a7 87            	retf	
1964                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
1964                     ; 629 {
1965                     .text:	section	.text,new
1966  0000               f_I2C_GetLastEvent:
1968  0000 5206          	subw	sp,#6
1969       00000006      OFST:	set	6
1972                     ; 630   __IO uint16_t lastevent = 0;
1974  0002 5f            	clrw	x
1975  0003 1f05          	ldw	(OFST-1,sp),x
1977                     ; 631   uint16_t flag1 = 0;
1979                     ; 632   uint16_t flag2 = 0;
1981                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1983  0005 7205521805    	btjf	21016,#2,L176
1984                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1986  000a ae0004        	ldw	x,#4
1988  000d 2013          	jra	L376
1989  000f               L176:
1990                     ; 641     flag1 = I2C->SR1;
1992  000f c65217        	ld	a,21015
1993  0012 97            	ld	xl,a
1994  0013 1f01          	ldw	(OFST-5,sp),x
1996                     ; 642     flag2 = I2C->SR3;
1998  0015 c65219        	ld	a,21017
1999  0018 5f            	clrw	x
2000  0019 97            	ld	xl,a
2001  001a 1f03          	ldw	(OFST-3,sp),x
2003                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2005  001c 7b02          	ld	a,(OFST-4,sp)
2006  001e 01            	rrwa	x,a
2007  001f 1a01          	or	a,(OFST-5,sp)
2008  0021 01            	rrwa	x,a
2009  0022               L376:
2010  0022 1f05          	ldw	(OFST-1,sp),x
2012                     ; 648   return (I2C_Event_TypeDef)lastevent;
2014  0024 1e05          	ldw	x,(OFST-1,sp)
2017  0026 5b06          	addw	sp,#6
2018  0028 87            	retf	
2233                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2233                     ; 680 {
2234                     .text:	section	.text,new
2235  0000               f_I2C_GetFlagStatus:
2237  0000 89            	pushw	x
2238  0001 89            	pushw	x
2239       00000002      OFST:	set	2
2242                     ; 681   uint8_t tempreg = 0;
2244  0002 0f02          	clr	(OFST+0,sp)
2246                     ; 682   uint8_t regindex = 0;
2248                     ; 683   FlagStatus bitstatus = RESET;
2250                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2252  0004 a30180        	cpw	x,#384
2253  0007 275a          	jreq	L203
2254  0009 a30140        	cpw	x,#320
2255  000c 2755          	jreq	L203
2256  000e a30110        	cpw	x,#272
2257  0011 2750          	jreq	L203
2258  0013 a30108        	cpw	x,#264
2259  0016 274b          	jreq	L203
2260  0018 a30104        	cpw	x,#260
2261  001b 2746          	jreq	L203
2262  001d a30102        	cpw	x,#258
2263  0020 2741          	jreq	L203
2264  0022 a30101        	cpw	x,#257
2265  0025 273c          	jreq	L203
2266  0027 a30220        	cpw	x,#544
2267  002a 2737          	jreq	L203
2268  002c a30208        	cpw	x,#520
2269  002f 2732          	jreq	L203
2270  0031 a30204        	cpw	x,#516
2271  0034 272d          	jreq	L203
2272  0036 a30202        	cpw	x,#514
2273  0039 2728          	jreq	L203
2274  003b a30201        	cpw	x,#513
2275  003e 2723          	jreq	L203
2276  0040 a30310        	cpw	x,#784
2277  0043 271e          	jreq	L203
2278  0045 a30304        	cpw	x,#772
2279  0048 2719          	jreq	L203
2280  004a a30302        	cpw	x,#770
2281  004d 2714          	jreq	L203
2282  004f a30301        	cpw	x,#769
2283  0052 270f          	jreq	L203
2284  0054 ae02ae        	ldw	x,#686
2285  0057 89            	pushw	x
2286  0058 5f            	clrw	x
2287  0059 89            	pushw	x
2288  005a ae000c        	ldw	x,#L131
2289  005d 8d000000      	callf	f_assert_failed
2291  0061 5b04          	addw	sp,#4
2292  0063               L203:
2293                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2295  0063 7b03          	ld	a,(OFST+1,sp)
2296  0065 6b01          	ld	(OFST-1,sp),a
2298                     ; 691   switch (regindex)
2301                     ; 708     default:
2301                     ; 709       break;
2302  0067 4a            	dec	a
2303  0068 2708          	jreq	L576
2304  006a 4a            	dec	a
2305  006b 270a          	jreq	L776
2306  006d 4a            	dec	a
2307  006e 270c          	jreq	L107
2308  0070 200f          	jra	L5101
2309  0072               L576:
2310                     ; 694     case 0x01:
2310                     ; 695       tempreg = (uint8_t)I2C->SR1;
2312  0072 c65217        	ld	a,21015
2313                     ; 696       break;
2315  0075 2008          	jpf	LC006
2316  0077               L776:
2317                     ; 699     case 0x02:
2317                     ; 700       tempreg = (uint8_t)I2C->SR2;
2319  0077 c65218        	ld	a,21016
2320                     ; 701       break;
2322  007a 2003          	jpf	LC006
2323  007c               L107:
2324                     ; 704     case 0x03:
2324                     ; 705       tempreg = (uint8_t)I2C->SR3;
2326  007c c65219        	ld	a,21017
2327  007f               LC006:
2328  007f 6b02          	ld	(OFST+0,sp),a
2330                     ; 706       break;
2332                     ; 708     default:
2332                     ; 709       break;
2334  0081               L5101:
2335                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2337  0081 7b04          	ld	a,(OFST+2,sp)
2338  0083 1502          	bcp	a,(OFST+0,sp)
2339  0085 2704          	jreq	L7101
2340                     ; 716     bitstatus = SET;
2342  0087 a601          	ld	a,#1
2345  0089 2001          	jra	L1201
2346  008b               L7101:
2347                     ; 721     bitstatus = RESET;
2349  008b 4f            	clr	a
2351  008c               L1201:
2352                     ; 724   return bitstatus;
2356  008c 5b04          	addw	sp,#4
2357  008e 87            	retf	
2401                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2401                     ; 760 {
2402                     .text:	section	.text,new
2403  0000               f_I2C_ClearFlag:
2405  0000 89            	pushw	x
2406  0001 89            	pushw	x
2407       00000002      OFST:	set	2
2410                     ; 761   uint16_t flagpos = 0;
2412                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2414  0002 01            	rrwa	x,a
2415  0003 9f            	ld	a,xl
2416  0004 a4fd          	and	a,#253
2417  0006 97            	ld	xl,a
2418  0007 4f            	clr	a
2419  0008 02            	rlwa	x,a
2420  0009 5d            	tnzw	x
2421  000a 2604          	jrne	L013
2422  000c 1e03          	ldw	x,(OFST+1,sp)
2423  000e 260f          	jrne	L213
2424  0010               L013:
2425  0010 ae02fb        	ldw	x,#763
2426  0013 89            	pushw	x
2427  0014 5f            	clrw	x
2428  0015 89            	pushw	x
2429  0016 ae000c        	ldw	x,#L131
2430  0019 8d000000      	callf	f_assert_failed
2432  001d 5b04          	addw	sp,#4
2433  001f               L213:
2434                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2436  001f 7b04          	ld	a,(OFST+2,sp)
2437  0021 5f            	clrw	x
2438  0022 02            	rlwa	x,a
2439  0023 1f01          	ldw	(OFST-1,sp),x
2441                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2443  0025 7b02          	ld	a,(OFST+0,sp)
2444  0027 43            	cpl	a
2445  0028 c75218        	ld	21016,a
2446                     ; 769 }
2449  002b 5b04          	addw	sp,#4
2450  002d 87            	retf	
2616                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2616                     ; 792 {
2617                     .text:	section	.text,new
2618  0000               f_I2C_GetITStatus:
2620  0000 89            	pushw	x
2621  0001 5204          	subw	sp,#4
2622       00000004      OFST:	set	4
2625                     ; 793   ITStatus bitstatus = RESET;
2627                     ; 794   __IO uint8_t enablestatus = 0;
2629  0003 0f03          	clr	(OFST-1,sp)
2631                     ; 795   uint16_t tempregister = 0;
2633                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2635  0005 a31680        	cpw	x,#5760
2636  0008 2746          	jreq	L423
2637  000a a31640        	cpw	x,#5696
2638  000d 2741          	jreq	L423
2639  000f a31210        	cpw	x,#4624
2640  0012 273c          	jreq	L423
2641  0014 a31208        	cpw	x,#4616
2642  0017 2737          	jreq	L423
2643  0019 a31204        	cpw	x,#4612
2644  001c 2732          	jreq	L423
2645  001e a31202        	cpw	x,#4610
2646  0021 272d          	jreq	L423
2647  0023 a31201        	cpw	x,#4609
2648  0026 2728          	jreq	L423
2649  0028 a32220        	cpw	x,#8736
2650  002b 2723          	jreq	L423
2651  002d a32108        	cpw	x,#8456
2652  0030 271e          	jreq	L423
2653  0032 a32104        	cpw	x,#8452
2654  0035 2719          	jreq	L423
2655  0037 a32102        	cpw	x,#8450
2656  003a 2714          	jreq	L423
2657  003c a32101        	cpw	x,#8449
2658  003f 270f          	jreq	L423
2659  0041 ae031e        	ldw	x,#798
2660  0044 89            	pushw	x
2661  0045 5f            	clrw	x
2662  0046 89            	pushw	x
2663  0047 ae000c        	ldw	x,#L131
2664  004a 8d000000      	callf	f_assert_failed
2666  004e 5b04          	addw	sp,#4
2667  0050               L423:
2668                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2670  0050 7b05          	ld	a,(OFST+1,sp)
2671  0052 a407          	and	a,#7
2672  0054 5f            	clrw	x
2673  0055 97            	ld	xl,a
2674  0056 1f01          	ldw	(OFST-3,sp),x
2676                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2678  0058 c6521a        	ld	a,21018
2679  005b 1402          	and	a,(OFST-2,sp)
2680  005d 6b03          	ld	(OFST-1,sp),a
2682                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2684  005f 7b05          	ld	a,(OFST+1,sp)
2685  0061 a430          	and	a,#48
2686  0063 97            	ld	xl,a
2687  0064 4f            	clr	a
2688  0065 02            	rlwa	x,a
2689  0066 a30100        	cpw	x,#256
2690  0069 260d          	jrne	L3311
2691                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2693  006b c65217        	ld	a,21015
2694  006e 1506          	bcp	a,(OFST+2,sp)
2695  0070 2715          	jreq	L3411
2697  0072 0d03          	tnz	(OFST-1,sp)
2698  0074 2711          	jreq	L3411
2699                     ; 811       bitstatus = SET;
2701  0076 200b          	jpf	LC008
2702                     ; 816       bitstatus = RESET;
2703  0078               L3311:
2704                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2706  0078 c65218        	ld	a,21016
2707  007b 1506          	bcp	a,(OFST+2,sp)
2708  007d 2708          	jreq	L3411
2710  007f 0d03          	tnz	(OFST-1,sp)
2711  0081 2704          	jreq	L3411
2712                     ; 825       bitstatus = SET;
2714  0083               LC008:
2716  0083 a601          	ld	a,#1
2719  0085 2001          	jra	L1411
2720  0087               L3411:
2721                     ; 830       bitstatus = RESET;
2724  0087 4f            	clr	a
2726  0088               L1411:
2727                     ; 834   return  bitstatus;
2731  0088 5b06          	addw	sp,#6
2732  008a 87            	retf	
2777                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2777                     ; 872 {
2778                     .text:	section	.text,new
2779  0000               f_I2C_ClearITPendingBit:
2781  0000 89            	pushw	x
2782  0001 89            	pushw	x
2783       00000002      OFST:	set	2
2786                     ; 873   uint16_t flagpos = 0;
2788                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2790  0002 a32220        	cpw	x,#8736
2791  0005 2723          	jreq	L633
2792  0007 a32108        	cpw	x,#8456
2793  000a 271e          	jreq	L633
2794  000c a32104        	cpw	x,#8452
2795  000f 2719          	jreq	L633
2796  0011 a32102        	cpw	x,#8450
2797  0014 2714          	jreq	L633
2798  0016 a32101        	cpw	x,#8449
2799  0019 270f          	jreq	L633
2800  001b ae036c        	ldw	x,#876
2801  001e 89            	pushw	x
2802  001f 5f            	clrw	x
2803  0020 89            	pushw	x
2804  0021 ae000c        	ldw	x,#L131
2805  0024 8d000000      	callf	f_assert_failed
2807  0028 5b04          	addw	sp,#4
2808  002a               L633:
2809                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2811  002a 7b04          	ld	a,(OFST+2,sp)
2812  002c 5f            	clrw	x
2813  002d 02            	rlwa	x,a
2814  002e 1f01          	ldw	(OFST-1,sp),x
2816                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2818  0030 7b02          	ld	a,(OFST+0,sp)
2819  0032 43            	cpl	a
2820  0033 c75218        	ld	21016,a
2821                     ; 883 }
2824  0036 5b04          	addw	sp,#4
2825  0038 87            	retf	
2837                     	xdef	f_I2C_ClearITPendingBit
2838                     	xdef	f_I2C_GetITStatus
2839                     	xdef	f_I2C_ClearFlag
2840                     	xdef	f_I2C_GetFlagStatus
2841                     	xdef	f_I2C_GetLastEvent
2842                     	xdef	f_I2C_CheckEvent
2843                     	xdef	f_I2C_SendData
2844                     	xdef	f_I2C_Send7bitAddress
2845                     	xdef	f_I2C_ReceiveData
2846                     	xdef	f_I2C_ITConfig
2847                     	xdef	f_I2C_FastModeDutyCycleConfig
2848                     	xdef	f_I2C_AcknowledgeConfig
2849                     	xdef	f_I2C_StretchClockCmd
2850                     	xdef	f_I2C_SoftwareResetCmd
2851                     	xdef	f_I2C_GenerateSTOP
2852                     	xdef	f_I2C_GenerateSTART
2853                     	xdef	f_I2C_GeneralCallCmd
2854                     	xdef	f_I2C_Cmd
2855                     	xdef	f_I2C_Init
2856                     	xdef	f_I2C_DeInit
2857                     	xref	f_assert_failed
2858                     	switch	.const
2859  000c               L131:
2860  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2861  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2862  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
2863  0042 5f6932632e63  	dc.b	"_i2c.c",0
2864                     	xref.b	c_lreg
2865                     	xref.b	c_x
2885                     	xref	d_sdivx
2886                     	xref	d_ludv
2887                     	xref	d_rtol
2888                     	xref	d_smul
2889                     	xref	d_lmul
2890                     	xref	d_lcmp
2891                     	xref	d_ltor
2892                     	xref	d_lzmp
2893                     	end
