   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 50 uint8_t ITC_GetCPUCC(void)
  49                     ; 51 {
  50                     .text:	section	.text,new
  51  0000               f_ITC_GetCPUCC:
  55                     ; 53   _asm("push cc");
  58  0000 8a            	push	cc
  60                     ; 54   _asm("pop a");
  63  0001 84            	pop	a
  65                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  68  0002 87            	retf	
  90                     ; 80 void ITC_DeInit(void)
  90                     ; 81 {
  91                     .text:	section	.text,new
  92  0000               f_ITC_DeInit:
  96                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  98  0000 35ff7f70      	mov	32624,#255
  99                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 101  0004 35ff7f71      	mov	32625,#255
 102                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 104  0008 35ff7f72      	mov	32626,#255
 105                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 107  000c 35ff7f73      	mov	32627,#255
 108                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 110  0010 35ff7f74      	mov	32628,#255
 111                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 113  0014 35ff7f75      	mov	32629,#255
 114                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 116  0018 35ff7f76      	mov	32630,#255
 117                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 119  001c 35ff7f77      	mov	32631,#255
 120                     ; 90 }
 123  0020 87            	retf	
 147                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 147                     ; 98 {
 148                     .text:	section	.text,new
 149  0000               f_ITC_GetSoftIntStatus:
 153                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 155  0000 8d000000      	callf	f_ITC_GetCPUCC
 157  0004 a428          	and	a,#40
 160  0006 87            	retf	
 409                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 409                     ; 108 {
 410                     .text:	section	.text,new
 411  0000               f_ITC_GetSoftwarePriority:
 413  0000 88            	push	a
 414  0001 89            	pushw	x
 415       00000002      OFST:	set	2
 418                     ; 109   uint8_t Value = 0;
 420  0002 0f02          	clr	(OFST+0,sp)
 422                     ; 110   uint8_t Mask = 0;
 424                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 426  0004 a119          	cp	a,#25
 427  0006 250f          	jrult	L02
 428  0008 ae0071        	ldw	x,#113
 429  000b 89            	pushw	x
 430  000c 5f            	clrw	x
 431  000d 89            	pushw	x
 432  000e ae0000        	ldw	x,#L102
 433  0011 8d000000      	callf	f_assert_failed
 435  0015 5b04          	addw	sp,#4
 436  0017               L02:
 437                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 439  0017 7b03          	ld	a,(OFST+1,sp)
 440  0019 a403          	and	a,#3
 441  001b 48            	sll	a
 442  001c 5f            	clrw	x
 443  001d 97            	ld	xl,a
 444  001e a603          	ld	a,#3
 445  0020 5d            	tnzw	x
 446  0021 2704          	jreq	L42
 447  0023               L62:
 448  0023 48            	sll	a
 449  0024 5a            	decw	x
 450  0025 26fc          	jrne	L62
 451  0027               L42:
 452  0027 6b01          	ld	(OFST-1,sp),a
 454                     ; 118   switch (IrqNum)
 456  0029 7b03          	ld	a,(OFST+1,sp)
 458                     ; 198   default:
 458                     ; 199     break;
 459  002b a119          	cp	a,#25
 460  002d 245d          	jruge	L502
 461  002f 8d000000      	callf	d_jctab
 463  0033               L23:
 464  0033 0034          	dc.w	L14-L23
 465  0035 0034          	dc.w	L14-L23
 466  0037 0034          	dc.w	L14-L23
 467  0039 0034          	dc.w	L14-L23
 468  003b 0039          	dc.w	L34-L23
 469  003d 0039          	dc.w	L34-L23
 470  003f 0039          	dc.w	L34-L23
 471  0041 0039          	dc.w	L34-L23
 472  0043 0059          	dc.w	L502-L23
 473  0045 0059          	dc.w	L502-L23
 474  0047 003e          	dc.w	L54-L23
 475  0049 003e          	dc.w	L54-L23
 476  004b 0043          	dc.w	L74-L23
 477  004d 0043          	dc.w	L74-L23
 478  004f 0043          	dc.w	L74-L23
 479  0051 0043          	dc.w	L74-L23
 480  0053 0048          	dc.w	L15-L23
 481  0055 0059          	dc.w	L502-L23
 482  0057 0059          	dc.w	L502-L23
 483  0059 0048          	dc.w	L15-L23
 484  005b 004d          	dc.w	L35-L23
 485  005d 004d          	dc.w	L35-L23
 486  005f 004d          	dc.w	L35-L23
 487  0061 004d          	dc.w	L35-L23
 488  0063 0052          	dc.w	L55-L23
 489  0065 2025          	jra	L502
 490  0067               L14:
 491                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 491                     ; 121   case ITC_IRQ_AWU:
 491                     ; 122   case ITC_IRQ_CLK:
 491                     ; 123   case ITC_IRQ_PORTA:
 491                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 493  0067 c67f70        	ld	a,32624
 494                     ; 125     break;
 496  006a 201c          	jpf	LC001
 497  006c               L34:
 498                     ; 127   case ITC_IRQ_PORTB:
 498                     ; 128   case ITC_IRQ_PORTC:
 498                     ; 129   case ITC_IRQ_PORTD:
 498                     ; 130   case ITC_IRQ_PORTE:
 498                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 500  006c c67f71        	ld	a,32625
 501                     ; 132     break;
 503  006f 2017          	jpf	LC001
 504  0071               L54:
 505                     ; 141   case ITC_IRQ_SPI:
 505                     ; 142   case ITC_IRQ_TIM1_OVF:
 505                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 507  0071 c67f72        	ld	a,32626
 508                     ; 144     break;
 510  0074 2012          	jpf	LC001
 511  0076               L74:
 512                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 512                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 512                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 512                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 512                     ; 150 #else
 512                     ; 151   case ITC_IRQ_TIM2_OVF:
 512                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 512                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 512                     ; 154   case ITC_IRQ_TIM3_OVF:
 512                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 514  0076 c67f73        	ld	a,32627
 515                     ; 156     break;
 517  0079 200d          	jpf	LC001
 518  007b               L15:
 519                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 519                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 519                     ; 160     defined(STM8S003) ||defined(STM8S001) || defined (STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 519                     ; 161   case ITC_IRQ_UART1_TX:
 519                     ; 162   case ITC_IRQ_UART1_RX:
 519                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 519                     ; 164 #if defined(STM8AF622x)
 519                     ; 165   case ITC_IRQ_UART4_TX:
 519                     ; 166   case ITC_IRQ_UART4_RX:
 519                     ; 167 #endif /*STM8AF622x */
 519                     ; 168   case ITC_IRQ_I2C:
 519                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 521  007b c67f74        	ld	a,32628
 522                     ; 170     break;
 524  007e 2008          	jpf	LC001
 525  0080               L35:
 526                     ; 173   case ITC_IRQ_UART2_TX:
 526                     ; 174   case ITC_IRQ_UART2_RX:
 526                     ; 175 #endif /*STM8S105 or STM8AF626x*/
 526                     ; 176 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 526                     ; 177     defined(STM8AF62Ax)
 526                     ; 178   case ITC_IRQ_UART3_TX:
 526                     ; 179   case ITC_IRQ_UART3_RX:
 526                     ; 180   case ITC_IRQ_ADC2:
 526                     ; 181 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 526                     ; 182 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 526                     ; 183     defined(STM8S001) || defined(STM8S903) || defined(STM8AF626x) || defined(STM8AF622x)
 526                     ; 184   case ITC_IRQ_ADC1:
 526                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 526                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 526                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 526                     ; 188 #else
 526                     ; 189   case ITC_IRQ_TIM4_OVF:
 526                     ; 190 #endif /*STM8S903 or STM8AF622x */
 526                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 528  0080 c67f75        	ld	a,32629
 529                     ; 192     break;
 531  0083 2003          	jpf	LC001
 532  0085               L55:
 533                     ; 194   case ITC_IRQ_EEPROM_EEC:
 533                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 535  0085 c67f76        	ld	a,32630
 536  0088               LC001:
 537  0088 1401          	and	a,(OFST-1,sp)
 538  008a 6b02          	ld	(OFST+0,sp),a
 540                     ; 196     break;
 542                     ; 198   default:
 542                     ; 199     break;
 544  008c               L502:
 545                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 547  008c 7b03          	ld	a,(OFST+1,sp)
 548  008e a403          	and	a,#3
 549  0090 48            	sll	a
 550  0091 5f            	clrw	x
 551  0092 97            	ld	xl,a
 552  0093 7b02          	ld	a,(OFST+0,sp)
 553  0095 5d            	tnzw	x
 554  0096 2704          	jreq	L43
 555  0098               L63:
 556  0098 44            	srl	a
 557  0099 5a            	decw	x
 558  009a 26fc          	jrne	L63
 559  009c               L43:
 561                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 565  009c 5b03          	addw	sp,#3
 566  009e 87            	retf	
 631                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 631                     ; 221 {
 632                     .text:	section	.text,new
 633  0000               f_ITC_SetSoftwarePriority:
 635  0000 89            	pushw	x
 636  0001 89            	pushw	x
 637       00000002      OFST:	set	2
 640                     ; 222   uint8_t Mask = 0;
 642                     ; 223   uint8_t NewPriority = 0;
 644                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 646  0002 9e            	ld	a,xh
 647  0003 a119          	cp	a,#25
 648  0005 2507          	jrult	L44
 649  0007 ae00e2        	ldw	x,#226
 650  000a 8d1b011b      	callf	LC002
 651  000e               L44:
 652                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 654  000e 7b04          	ld	a,(OFST+2,sp)
 655  0010 a102          	cp	a,#2
 656  0012 2712          	jreq	L45
 657  0014 a101          	cp	a,#1
 658  0016 270e          	jreq	L45
 659  0018 4d            	tnz	a
 660  0019 270b          	jreq	L45
 661  001b a103          	cp	a,#3
 662  001d 2707          	jreq	L45
 663  001f ae00e3        	ldw	x,#227
 664  0022 8d1b011b      	callf	LC002
 665  0026               L45:
 666                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 668  0026 8d000000      	callf	f_ITC_GetSoftIntStatus
 670  002a a128          	cp	a,#40
 671  002c 2707          	jreq	L46
 672  002e ae00e6        	ldw	x,#230
 673  0031 8d1b011b      	callf	LC002
 674  0035               L46:
 675                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 677  0035 7b03          	ld	a,(OFST+1,sp)
 678  0037 a403          	and	a,#3
 679  0039 48            	sll	a
 680  003a 5f            	clrw	x
 681  003b 97            	ld	xl,a
 682  003c a603          	ld	a,#3
 683  003e 5d            	tnzw	x
 684  003f 2704          	jreq	L07
 685  0041               L27:
 686  0041 48            	sll	a
 687  0042 5a            	decw	x
 688  0043 26fc          	jrne	L27
 689  0045               L07:
 690  0045 43            	cpl	a
 691  0046 6b01          	ld	(OFST-1,sp),a
 693                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 695  0048 7b03          	ld	a,(OFST+1,sp)
 696  004a a403          	and	a,#3
 697  004c 48            	sll	a
 698  004d 5f            	clrw	x
 699  004e 97            	ld	xl,a
 700  004f 7b04          	ld	a,(OFST+2,sp)
 701  0051 5d            	tnzw	x
 702  0052 2704          	jreq	L47
 703  0054               L67:
 704  0054 48            	sll	a
 705  0055 5a            	decw	x
 706  0056 26fc          	jrne	L67
 707  0058               L47:
 708  0058 6b02          	ld	(OFST+0,sp),a
 710                     ; 239   switch (IrqNum)
 712  005a 7b03          	ld	a,(OFST+1,sp)
 714                     ; 329   default:
 714                     ; 330     break;
 715  005c a119          	cp	a,#25
 716  005e 2504ac180118  	jruge	L362
 717  0064 8d000000      	callf	d_jctab
 719  0068               L201:
 720  0068 0034          	dc.w	L702-L201
 721  006a 0034          	dc.w	L702-L201
 722  006c 0034          	dc.w	L702-L201
 723  006e 0034          	dc.w	L702-L201
 724  0070 0046          	dc.w	L112-L201
 725  0072 0046          	dc.w	L112-L201
 726  0074 0046          	dc.w	L112-L201
 727  0076 0046          	dc.w	L112-L201
 728  0078 00b0          	dc.w	L362-L201
 729  007a 00b0          	dc.w	L362-L201
 730  007c 0058          	dc.w	L312-L201
 731  007e 0058          	dc.w	L312-L201
 732  0080 006a          	dc.w	L512-L201
 733  0082 006a          	dc.w	L512-L201
 734  0084 006a          	dc.w	L512-L201
 735  0086 006a          	dc.w	L512-L201
 736  0088 007c          	dc.w	L712-L201
 737  008a 00b0          	dc.w	L362-L201
 738  008c 00b0          	dc.w	L362-L201
 739  008e 007c          	dc.w	L712-L201
 740  0090 008e          	dc.w	L122-L201
 741  0092 008e          	dc.w	L122-L201
 742  0094 008e          	dc.w	L122-L201
 743  0096 008e          	dc.w	L122-L201
 744  0098 00a0          	dc.w	L322-L201
 745  009a 207c          	jra	L362
 746  009c               L702:
 747                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 747                     ; 242   case ITC_IRQ_AWU:
 747                     ; 243   case ITC_IRQ_CLK:
 747                     ; 244   case ITC_IRQ_PORTA:
 747                     ; 245     ITC->ISPR1 &= Mask;
 749  009c c67f70        	ld	a,32624
 750  009f 1401          	and	a,(OFST-1,sp)
 751  00a1 c77f70        	ld	32624,a
 752                     ; 246     ITC->ISPR1 |= NewPriority;
 754  00a4 c67f70        	ld	a,32624
 755  00a7 1a02          	or	a,(OFST+0,sp)
 756  00a9 c77f70        	ld	32624,a
 757                     ; 247     break;
 759  00ac 206a          	jra	L362
 760  00ae               L112:
 761                     ; 249   case ITC_IRQ_PORTB:
 761                     ; 250   case ITC_IRQ_PORTC:
 761                     ; 251   case ITC_IRQ_PORTD:
 761                     ; 252   case ITC_IRQ_PORTE:
 761                     ; 253     ITC->ISPR2 &= Mask;
 763  00ae c67f71        	ld	a,32625
 764  00b1 1401          	and	a,(OFST-1,sp)
 765  00b3 c77f71        	ld	32625,a
 766                     ; 254     ITC->ISPR2 |= NewPriority;
 768  00b6 c67f71        	ld	a,32625
 769  00b9 1a02          	or	a,(OFST+0,sp)
 770  00bb c77f71        	ld	32625,a
 771                     ; 255     break;
 773  00be 2058          	jra	L362
 774  00c0               L312:
 775                     ; 264   case ITC_IRQ_SPI:
 775                     ; 265   case ITC_IRQ_TIM1_OVF:
 775                     ; 266     ITC->ISPR3 &= Mask;
 777  00c0 c67f72        	ld	a,32626
 778  00c3 1401          	and	a,(OFST-1,sp)
 779  00c5 c77f72        	ld	32626,a
 780                     ; 267     ITC->ISPR3 |= NewPriority;
 782  00c8 c67f72        	ld	a,32626
 783  00cb 1a02          	or	a,(OFST+0,sp)
 784  00cd c77f72        	ld	32626,a
 785                     ; 268     break;
 787  00d0 2046          	jra	L362
 788  00d2               L512:
 789                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 789                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 789                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 789                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 789                     ; 274 #else
 789                     ; 275   case ITC_IRQ_TIM2_OVF:
 789                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 789                     ; 277 #endif /*STM8S903 or STM8AF622x */
 789                     ; 278   case ITC_IRQ_TIM3_OVF:
 789                     ; 279     ITC->ISPR4 &= Mask;
 791  00d2 c67f73        	ld	a,32627
 792  00d5 1401          	and	a,(OFST-1,sp)
 793  00d7 c77f73        	ld	32627,a
 794                     ; 280     ITC->ISPR4 |= NewPriority;
 796  00da c67f73        	ld	a,32627
 797  00dd 1a02          	or	a,(OFST+0,sp)
 798  00df c77f73        	ld	32627,a
 799                     ; 281     break;
 801  00e2 2034          	jra	L362
 802  00e4               L712:
 803                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 803                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 803                     ; 285     defined(STM8S001) ||defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 803                     ; 286   case ITC_IRQ_UART1_TX:
 803                     ; 287   case ITC_IRQ_UART1_RX:
 803                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 803                     ; 289 #if defined(STM8AF622x)
 803                     ; 290   case ITC_IRQ_UART4_TX:
 803                     ; 291   case ITC_IRQ_UART4_RX:
 803                     ; 292 #endif /*STM8AF622x */
 803                     ; 293   case ITC_IRQ_I2C:
 803                     ; 294     ITC->ISPR5 &= Mask;
 805  00e4 c67f74        	ld	a,32628
 806  00e7 1401          	and	a,(OFST-1,sp)
 807  00e9 c77f74        	ld	32628,a
 808                     ; 295     ITC->ISPR5 |= NewPriority;
 810  00ec c67f74        	ld	a,32628
 811  00ef 1a02          	or	a,(OFST+0,sp)
 812  00f1 c77f74        	ld	32628,a
 813                     ; 296     break;
 815  00f4 2022          	jra	L362
 816  00f6               L122:
 817                     ; 299   case ITC_IRQ_UART2_TX:
 817                     ; 300   case ITC_IRQ_UART2_RX:
 817                     ; 301 #endif /*STM8S105 or STM8AF626x */
 817                     ; 302     
 817                     ; 303 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 817                     ; 304     defined(STM8AF62Ax)
 817                     ; 305   case ITC_IRQ_UART3_TX:
 817                     ; 306   case ITC_IRQ_UART3_RX:
 817                     ; 307   case ITC_IRQ_ADC2:
 817                     ; 308 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 817                     ; 309     
 817                     ; 310 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 817                     ; 311     defined(STM8S001) || defined(STM8S903) || defined(STM8AF626x) || defined (STM8AF622x)
 817                     ; 312   case ITC_IRQ_ADC1:
 817                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 817                     ; 314     
 817                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 817                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 817                     ; 317 #else
 817                     ; 318   case ITC_IRQ_TIM4_OVF:
 817                     ; 319 #endif /* STM8S903 or STM8AF622x */
 817                     ; 320     ITC->ISPR6 &= Mask;
 819  00f6 c67f75        	ld	a,32629
 820  00f9 1401          	and	a,(OFST-1,sp)
 821  00fb c77f75        	ld	32629,a
 822                     ; 321     ITC->ISPR6 |= NewPriority;
 824  00fe c67f75        	ld	a,32629
 825  0101 1a02          	or	a,(OFST+0,sp)
 826  0103 c77f75        	ld	32629,a
 827                     ; 322     break;
 829  0106 2010          	jra	L362
 830  0108               L322:
 831                     ; 324   case ITC_IRQ_EEPROM_EEC:
 831                     ; 325     ITC->ISPR7 &= Mask;
 833  0108 c67f76        	ld	a,32630
 834  010b 1401          	and	a,(OFST-1,sp)
 835  010d c77f76        	ld	32630,a
 836                     ; 326     ITC->ISPR7 |= NewPriority;
 838  0110 c67f76        	ld	a,32630
 839  0113 1a02          	or	a,(OFST+0,sp)
 840  0115 c77f76        	ld	32630,a
 841                     ; 327     break;
 843                     ; 329   default:
 843                     ; 330     break;
 845  0118               L362:
 846                     ; 332 }
 849  0118 5b04          	addw	sp,#4
 850  011a 87            	retf	
 851  011b               LC002:
 852  011b 89            	pushw	x
 853  011c 5f            	clrw	x
 854  011d 89            	pushw	x
 855  011e ae0000        	ldw	x,#L102
 856  0121 8d000000      	callf	f_assert_failed
 858  0125 5b04          	addw	sp,#4
 859  0127 87            	retf	
 871                     	xdef	f_ITC_GetSoftwarePriority
 872                     	xdef	f_ITC_SetSoftwarePriority
 873                     	xdef	f_ITC_GetSoftIntStatus
 874                     	xdef	f_ITC_DeInit
 875                     	xdef	f_ITC_GetCPUCC
 876                     	xref	f_assert_failed
 877                     .const:	section	.text
 878  0000               L102:
 879  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 880  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 881  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 882  0036 5f6974632e63  	dc.b	"_itc.c",0
 883                     	xref.b	c_x
 903                     	xref	d_jctab
 904                     	end
