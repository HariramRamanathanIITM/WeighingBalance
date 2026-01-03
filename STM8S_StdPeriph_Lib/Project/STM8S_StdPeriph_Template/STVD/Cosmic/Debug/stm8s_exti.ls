   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 53 void EXTI_DeInit(void)
  49                     ; 54 {
  50                     .text:	section	.text,new
  51  0000               f_EXTI_DeInit:
  55                     ; 55   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  57  0000 725f50a0      	clr	20640
  58                     ; 56   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  60  0004 725f50a1      	clr	20641
  61                     ; 57 }
  64  0008 87            	retf	
 189                     ; 70 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 189                     ; 71 {
 190                     .text:	section	.text,new
 191  0000               f_EXTI_SetExtIntSensitivity:
 193  0000 89            	pushw	x
 194       00000000      OFST:	set	0
 197                     ; 73   assert_param(IS_EXTI_PORT_OK(Port));
 199  0001 9e            	ld	a,xh
 200  0002 4d            	tnz	a
 201  0003 271a          	jreq	L41
 202  0005 9e            	ld	a,xh
 203  0006 4a            	dec	a
 204  0007 2716          	jreq	L41
 205  0009 9e            	ld	a,xh
 206  000a a102          	cp	a,#2
 207  000c 2711          	jreq	L41
 208  000e 9e            	ld	a,xh
 209  000f a103          	cp	a,#3
 210  0011 270c          	jreq	L41
 211  0013 9e            	ld	a,xh
 212  0014 a104          	cp	a,#4
 213  0016 2707          	jreq	L41
 214  0018 ae0049        	ldw	x,#73
 215  001b 8d9d009d      	callf	LC004
 216  001f               L41:
 217                     ; 74   assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 219  001f 7b02          	ld	a,(OFST+2,sp)
 220  0021 2713          	jreq	L42
 221  0023 a101          	cp	a,#1
 222  0025 270f          	jreq	L42
 223  0027 a102          	cp	a,#2
 224  0029 270b          	jreq	L42
 225  002b a103          	cp	a,#3
 226  002d 2707          	jreq	L42
 227  002f ae004a        	ldw	x,#74
 228  0032 8d9d009d      	callf	LC004
 229  0036               L42:
 230                     ; 77   switch (Port)
 232  0036 7b01          	ld	a,(OFST+1,sp)
 234                     ; 99   default:
 234                     ; 100     break;
 235  0038 270e          	jreq	L12
 236  003a 4a            	dec	a
 237  003b 271a          	jreq	L32
 238  003d 4a            	dec	a
 239  003e 2725          	jreq	L52
 240  0040 4a            	dec	a
 241  0041 2731          	jreq	L72
 242  0043 4a            	dec	a
 243  0044 2745          	jreq	L13
 244  0046 2053          	jra	L511
 245  0048               L12:
 246                     ; 79   case EXTI_PORT_GPIOA:
 246                     ; 80     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 248  0048 c650a0        	ld	a,20640
 249  004b a4fc          	and	a,#252
 250  004d c750a0        	ld	20640,a
 251                     ; 81     EXTI->CR1 |= (uint8_t)(SensitivityValue);
 253  0050 c650a0        	ld	a,20640
 254  0053 1a02          	or	a,(OFST+2,sp)
 255                     ; 82     break;
 257  0055 202f          	jpf	LC001
 258  0057               L32:
 259                     ; 83   case EXTI_PORT_GPIOB:
 259                     ; 84     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 261  0057 c650a0        	ld	a,20640
 262  005a a4f3          	and	a,#243
 263  005c c750a0        	ld	20640,a
 264                     ; 85     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 266  005f 7b02          	ld	a,(OFST+2,sp)
 267  0061 48            	sll	a
 268  0062 48            	sll	a
 269                     ; 86     break;
 271  0063 201e          	jpf	LC002
 272  0065               L52:
 273                     ; 87   case EXTI_PORT_GPIOC:
 273                     ; 88     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 275  0065 c650a0        	ld	a,20640
 276  0068 a4cf          	and	a,#207
 277  006a c750a0        	ld	20640,a
 278                     ; 89     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 280  006d 7b02          	ld	a,(OFST+2,sp)
 281  006f 97            	ld	xl,a
 282  0070 a610          	ld	a,#16
 283                     ; 90     break;
 285  0072 200d          	jpf	LC003
 286  0074               L72:
 287                     ; 91   case EXTI_PORT_GPIOD:
 287                     ; 92     EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 289  0074 c650a0        	ld	a,20640
 290  0077 a43f          	and	a,#63
 291  0079 c750a0        	ld	20640,a
 292                     ; 93     EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 294  007c 7b02          	ld	a,(OFST+2,sp)
 295  007e 97            	ld	xl,a
 296  007f a640          	ld	a,#64
 297  0081               LC003:
 298  0081 42            	mul	x,a
 299  0082 9f            	ld	a,xl
 300  0083               LC002:
 301  0083 ca50a0        	or	a,20640
 302  0086               LC001:
 303  0086 c750a0        	ld	20640,a
 304                     ; 94     break;
 306  0089 2010          	jra	L511
 307  008b               L13:
 308                     ; 95   case EXTI_PORT_GPIOE:
 308                     ; 96     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 310  008b c650a1        	ld	a,20641
 311  008e a4fc          	and	a,#252
 312  0090 c750a1        	ld	20641,a
 313                     ; 97     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 315  0093 c650a1        	ld	a,20641
 316  0096 1a02          	or	a,(OFST+2,sp)
 317  0098 c750a1        	ld	20641,a
 318                     ; 98     break;
 320                     ; 99   default:
 320                     ; 100     break;
 322  009b               L511:
 323                     ; 102 }
 326  009b 85            	popw	x
 327  009c 87            	retf	
 328  009d               LC004:
 329  009d 89            	pushw	x
 330  009e 5f            	clrw	x
 331  009f 89            	pushw	x
 332  00a0 ae0000        	ldw	x,#L111
 333  00a3 8d000000      	callf	f_assert_failed
 335  00a7 5b04          	addw	sp,#4
 336  00a9 87            	retf	
 394                     ; 111 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 394                     ; 112 {
 395                     .text:	section	.text,new
 396  0000               f_EXTI_SetTLISensitivity:
 398  0000 88            	push	a
 399       00000000      OFST:	set	0
 402                     ; 114   assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 404  0001 4d            	tnz	a
 405  0002 2713          	jreq	L63
 406  0004 a104          	cp	a,#4
 407  0006 270f          	jreq	L63
 408  0008 ae0072        	ldw	x,#114
 409  000b 89            	pushw	x
 410  000c 5f            	clrw	x
 411  000d 89            	pushw	x
 412  000e ae0000        	ldw	x,#L111
 413  0011 8d000000      	callf	f_assert_failed
 415  0015 5b04          	addw	sp,#4
 416  0017               L63:
 417                     ; 117   EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 419  0017 721550a1      	bres	20641,#2
 420                     ; 118   EXTI->CR2 |= (uint8_t)(SensitivityValue);
 422  001b c650a1        	ld	a,20641
 423  001e 1a01          	or	a,(OFST+1,sp)
 424  0020 c750a1        	ld	20641,a
 425                     ; 119 }
 428  0023 84            	pop	a
 429  0024 87            	retf	
 475                     ; 126 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 475                     ; 127 {
 476                     .text:	section	.text,new
 477  0000               f_EXTI_GetExtIntSensitivity:
 479  0000 88            	push	a
 480  0001 88            	push	a
 481       00000001      OFST:	set	1
 484                     ; 128   uint8_t value = 0;
 486  0002 0f01          	clr	(OFST+0,sp)
 488                     ; 131   assert_param(IS_EXTI_PORT_OK(Port));
 490  0004 4d            	tnz	a
 491  0005 271f          	jreq	L05
 492  0007 a101          	cp	a,#1
 493  0009 271b          	jreq	L05
 494  000b a102          	cp	a,#2
 495  000d 2717          	jreq	L05
 496  000f a103          	cp	a,#3
 497  0011 2713          	jreq	L05
 498  0013 a104          	cp	a,#4
 499  0015 270f          	jreq	L05
 500  0017 ae0083        	ldw	x,#131
 501  001a 89            	pushw	x
 502  001b 5f            	clrw	x
 503  001c 89            	pushw	x
 504  001d ae0000        	ldw	x,#L111
 505  0020 8d000000      	callf	f_assert_failed
 507  0024 5b04          	addw	sp,#4
 508  0026               L05:
 509                     ; 133   switch (Port)
 511  0026 7b02          	ld	a,(OFST+1,sp)
 513                     ; 150   default:
 513                     ; 151     break;
 514  0028 2710          	jreq	L541
 515  002a 4a            	dec	a
 516  002b 2712          	jreq	L741
 517  002d 4a            	dec	a
 518  002e 2718          	jreq	L151
 519  0030 4a            	dec	a
 520  0031 271b          	jreq	L351
 521  0033 4a            	dec	a
 522  0034 2722          	jreq	L551
 523  0036 7b01          	ld	a,(OFST+0,sp)
 524  0038 2023          	jra	LC005
 525  003a               L541:
 526                     ; 135   case EXTI_PORT_GPIOA:
 526                     ; 136     value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 528  003a c650a0        	ld	a,20640
 529                     ; 137     break;
 531  003d 201c          	jpf	LC006
 532  003f               L741:
 533                     ; 138   case EXTI_PORT_GPIOB:
 533                     ; 139     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 535  003f c650a0        	ld	a,20640
 536  0042 a40c          	and	a,#12
 537  0044 44            	srl	a
 538  0045 44            	srl	a
 539                     ; 140     break;
 541  0046 2015          	jpf	LC005
 542  0048               L151:
 543                     ; 141   case EXTI_PORT_GPIOC:
 543                     ; 142     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 545  0048 c650a0        	ld	a,20640
 546  004b 4e            	swap	a
 547                     ; 143     break;
 549  004c 200d          	jpf	LC006
 550  004e               L351:
 551                     ; 144   case EXTI_PORT_GPIOD:
 551                     ; 145     value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 553  004e c650a0        	ld	a,20640
 554  0051 4e            	swap	a
 555  0052 a40c          	and	a,#12
 556  0054 44            	srl	a
 557  0055 44            	srl	a
 558                     ; 146     break;
 560  0056 2003          	jpf	LC006
 561  0058               L551:
 562                     ; 147   case EXTI_PORT_GPIOE:
 562                     ; 148     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 564  0058 c650a1        	ld	a,20641
 565  005b               LC006:
 566  005b a403          	and	a,#3
 567  005d               LC005:
 569                     ; 149     break;
 571                     ; 150   default:
 571                     ; 151     break;
 573                     ; 154   return((EXTI_Sensitivity_TypeDef)value);
 577  005d 85            	popw	x
 578  005e 87            	retf	
 613                     ; 162 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 613                     ; 163 {
 614                     .text:	section	.text,new
 615  0000               f_EXTI_GetTLISensitivity:
 617       00000001      OFST:	set	1
 620                     ; 164   uint8_t value = 0;
 622                     ; 167   value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 624  0000 c650a1        	ld	a,20641
 625  0003 a404          	and	a,#4
 627                     ; 169   return((EXTI_TLISensitivity_TypeDef)value);
 631  0005 87            	retf	
 643                     	xdef	f_EXTI_GetTLISensitivity
 644                     	xdef	f_EXTI_GetExtIntSensitivity
 645                     	xdef	f_EXTI_SetTLISensitivity
 646                     	xdef	f_EXTI_SetExtIntSensitivity
 647                     	xdef	f_EXTI_DeInit
 648                     	xref	f_assert_failed
 649                     .const:	section	.text
 650  0000               L111:
 651  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 652  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 653  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 654  0036 5f657874692e  	dc.b	"_exti.c",0
 674                     	end
