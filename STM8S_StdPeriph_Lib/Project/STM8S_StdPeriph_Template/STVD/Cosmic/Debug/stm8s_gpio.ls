   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
 115                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 115                     ; 54 {
 116                     .text:	section	.text,new
 117  0000               f_GPIO_DeInit:
 121                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 123  0000 7f            	clr	(x)
 124                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 126  0001 6f02          	clr	(2,x)
 127                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 129  0003 6f03          	clr	(3,x)
 130                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 132  0005 6f04          	clr	(4,x)
 133                     ; 59 }
 136  0007 87            	retf	
 376                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 376                     ; 72 {
 377                     .text:	section	.text,new
 378  0000               f_GPIO_Init:
 380  0000 89            	pushw	x
 381       00000000      OFST:	set	0
 384                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 386  0001 7b07          	ld	a,(OFST+7,sp)
 387  0003 2733          	jreq	L41
 388  0005 a140          	cp	a,#64
 389  0007 272f          	jreq	L41
 390  0009 a120          	cp	a,#32
 391  000b 272b          	jreq	L41
 392  000d a160          	cp	a,#96
 393  000f 2727          	jreq	L41
 394  0011 a1a0          	cp	a,#160
 395  0013 2723          	jreq	L41
 396  0015 a1e0          	cp	a,#224
 397  0017 271f          	jreq	L41
 398  0019 a180          	cp	a,#128
 399  001b 271b          	jreq	L41
 400  001d a1c0          	cp	a,#192
 401  001f 2717          	jreq	L41
 402  0021 a1b0          	cp	a,#176
 403  0023 2713          	jreq	L41
 404  0025 a1f0          	cp	a,#240
 405  0027 270f          	jreq	L41
 406  0029 a190          	cp	a,#144
 407  002b 270b          	jreq	L41
 408  002d a1d0          	cp	a,#208
 409  002f 2707          	jreq	L41
 410  0031 ae004d        	ldw	x,#77
 411  0034 8d970097      	callf	LC001
 412  0038               L41:
 413                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 415  0038 7b06          	ld	a,(OFST+6,sp)
 416  003a 2609          	jrne	L22
 417  003c ae004e        	ldw	x,#78
 418  003f 8d970097      	callf	LC001
 419  0043 7b06          	ld	a,(OFST+6,sp)
 420  0045               L22:
 421                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 423  0045 1e01          	ldw	x,(OFST+1,sp)
 424  0047 43            	cpl	a
 425  0048 e404          	and	a,(4,x)
 426  004a e704          	ld	(4,x),a
 427                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 429  004c 7b07          	ld	a,(OFST+7,sp)
 430  004e 2a14          	jrpl	L102
 431                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 433  0050 a510          	bcp	a,#16
 434  0052 2705          	jreq	L302
 435                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 437  0054 f6            	ld	a,(x)
 438  0055 1a06          	or	a,(OFST+6,sp)
 440  0057 2004          	jra	L502
 441  0059               L302:
 442                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 444  0059 7b06          	ld	a,(OFST+6,sp)
 445  005b 43            	cpl	a
 446  005c f4            	and	a,(x)
 447  005d               L502:
 448  005d f7            	ld	(x),a
 449                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 451  005e e602          	ld	a,(2,x)
 452  0060 1a06          	or	a,(OFST+6,sp)
 454  0062 2005          	jra	L702
 455  0064               L102:
 456                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 458  0064 7b06          	ld	a,(OFST+6,sp)
 459  0066 43            	cpl	a
 460  0067 e402          	and	a,(2,x)
 461  0069               L702:
 462  0069 e702          	ld	(2,x),a
 463                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 465  006b 7b07          	ld	a,(OFST+7,sp)
 466  006d a540          	bcp	a,#64
 467  006f 2706          	jreq	L112
 468                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 470  0071 e603          	ld	a,(3,x)
 471  0073 1a06          	or	a,(OFST+6,sp)
 473  0075 2005          	jra	L312
 474  0077               L112:
 475                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 477  0077 7b06          	ld	a,(OFST+6,sp)
 478  0079 43            	cpl	a
 479  007a e403          	and	a,(3,x)
 480  007c               L312:
 481  007c e703          	ld	(3,x),a
 482                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 484  007e 7b07          	ld	a,(OFST+7,sp)
 485  0080 a520          	bcp	a,#32
 486  0082 2708          	jreq	L512
 487                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 489  0084 1e01          	ldw	x,(OFST+1,sp)
 490  0086 e604          	ld	a,(4,x)
 491  0088 1a06          	or	a,(OFST+6,sp)
 493  008a 2007          	jra	L712
 494  008c               L512:
 495                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 497  008c 1e01          	ldw	x,(OFST+1,sp)
 498  008e 7b06          	ld	a,(OFST+6,sp)
 499  0090 43            	cpl	a
 500  0091 e404          	and	a,(4,x)
 501  0093               L712:
 502  0093 e704          	ld	(4,x),a
 503                     ; 131 }
 506  0095 85            	popw	x
 507  0096 87            	retf	
 508  0097               LC001:
 509  0097 89            	pushw	x
 510  0098 5f            	clrw	x
 511  0099 89            	pushw	x
 512  009a ae0000        	ldw	x,#L771
 513  009d 8d000000      	callf	f_assert_failed
 515  00a1 5b04          	addw	sp,#4
 516  00a3 87            	retf	
 561                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 561                     ; 142 {
 562                     .text:	section	.text,new
 563  0000               f_GPIO_Write:
 565       fffffffe      OFST: set -2
 568                     ; 143   GPIOx->ODR = PortVal;
 570  0000 7b04          	ld	a,(OFST+6,sp)
 571  0002 f7            	ld	(x),a
 572                     ; 144 }
 575  0003 87            	retf	
 621                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 621                     ; 155 {
 622                     .text:	section	.text,new
 623  0000               f_GPIO_WriteHigh:
 625       fffffffe      OFST: set -2
 628                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 630  0000 f6            	ld	a,(x)
 631  0001 1a04          	or	a,(OFST+6,sp)
 632  0003 f7            	ld	(x),a
 633                     ; 157 }
 636  0004 87            	retf	
 682                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 682                     ; 168 {
 683                     .text:	section	.text,new
 684  0000               f_GPIO_WriteLow:
 686       fffffffe      OFST: set -2
 689                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 691  0000 7b04          	ld	a,(OFST+6,sp)
 692  0002 43            	cpl	a
 693  0003 f4            	and	a,(x)
 694  0004 f7            	ld	(x),a
 695                     ; 170 }
 698  0005 87            	retf	
 744                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 744                     ; 181 {
 745                     .text:	section	.text,new
 746  0000               f_GPIO_WriteReverse:
 748       fffffffe      OFST: set -2
 751                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 753  0000 f6            	ld	a,(x)
 754  0001 1804          	xor	a,(OFST+6,sp)
 755  0003 f7            	ld	(x),a
 756                     ; 183 }
 759  0004 87            	retf	
 796                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 796                     ; 192 {
 797                     .text:	section	.text,new
 798  0000               f_GPIO_ReadOutputData:
 802                     ; 193   return ((uint8_t)GPIOx->ODR);
 804  0000 f6            	ld	a,(x)
 807  0001 87            	retf	
 843                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 843                     ; 203 {
 844                     .text:	section	.text,new
 845  0000               f_GPIO_ReadInputData:
 849                     ; 204   return ((uint8_t)GPIOx->IDR);
 851  0000 e601          	ld	a,(1,x)
 854  0002 87            	retf	
 921                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 921                     ; 214 {
 922                     .text:	section	.text,new
 923  0000               f_GPIO_ReadInputPin:
 925       fffffffe      OFST: set -2
 928                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 930  0000 e601          	ld	a,(1,x)
 931  0002 1404          	and	a,(OFST+6,sp)
 934  0004 87            	retf	
1012                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1012                     ; 226 {
1013                     .text:	section	.text,new
1014  0000               f_GPIO_ExternalPullUpConfig:
1016  0000 89            	pushw	x
1017       00000000      OFST:	set	0
1020                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1022  0001 7b06          	ld	a,(OFST+6,sp)
1023  0003 2607          	jrne	L05
1024  0005 ae00e4        	ldw	x,#228
1025  0008 8d310031      	callf	LC002
1026  000c               L05:
1027                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1029  000c 7b07          	ld	a,(OFST+7,sp)
1030  000e 270a          	jreq	L06
1031  0010 4a            	dec	a
1032  0011 2707          	jreq	L06
1033  0013 ae00e5        	ldw	x,#229
1034  0016 8d310031      	callf	LC002
1035  001a               L06:
1036                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1038  001a 7b07          	ld	a,(OFST+7,sp)
1039  001c 2708          	jreq	L574
1040                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1042  001e 1e01          	ldw	x,(OFST+1,sp)
1043  0020 e603          	ld	a,(3,x)
1044  0022 1a06          	or	a,(OFST+6,sp)
1046  0024 2007          	jra	L774
1047  0026               L574:
1048                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1050  0026 1e01          	ldw	x,(OFST+1,sp)
1051  0028 7b06          	ld	a,(OFST+6,sp)
1052  002a 43            	cpl	a
1053  002b e403          	and	a,(3,x)
1054  002d               L774:
1055  002d e703          	ld	(3,x),a
1056                     ; 238 }
1059  002f 85            	popw	x
1060  0030 87            	retf	
1061  0031               LC002:
1062  0031 89            	pushw	x
1063  0032 5f            	clrw	x
1064  0033 89            	pushw	x
1065  0034 ae0000        	ldw	x,#L771
1066  0037 8d000000      	callf	f_assert_failed
1068  003b 5b04          	addw	sp,#4
1069  003d 87            	retf	
1081                     	xdef	f_GPIO_ExternalPullUpConfig
1082                     	xdef	f_GPIO_ReadInputPin
1083                     	xdef	f_GPIO_ReadOutputData
1084                     	xdef	f_GPIO_ReadInputData
1085                     	xdef	f_GPIO_WriteReverse
1086                     	xdef	f_GPIO_WriteLow
1087                     	xdef	f_GPIO_WriteHigh
1088                     	xdef	f_GPIO_Write
1089                     	xdef	f_GPIO_Init
1090                     	xdef	f_GPIO_DeInit
1091                     	xref	f_assert_failed
1092                     .const:	section	.text
1093  0000               L771:
1094  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1095  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1096  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1097  0036 5f6770696f2e  	dc.b	"_gpio.c",0
1117                     	end
