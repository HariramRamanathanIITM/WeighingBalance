   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  50                     ; 53 void UART1_DeInit(void)
  50                     ; 54 {
  52                     .text:	section	.text,new
  53  0000               _UART1_DeInit:
  57                     ; 57   (void)UART1->SR;
  59  0000 c65230        	ld	a,21040
  60                     ; 58   (void)UART1->DR;
  62  0003 c65231        	ld	a,21041
  63                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  65  0006 725f5233      	clr	21043
  66                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  68  000a 725f5232      	clr	21042
  69                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  71  000e 725f5234      	clr	21044
  72                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  74  0012 725f5235      	clr	21045
  75                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  77  0016 725f5236      	clr	21046
  78                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  80  001a 725f5237      	clr	21047
  81                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  83  001e 725f5238      	clr	21048
  84                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  86  0022 725f5239      	clr	21049
  87                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  89  0026 725f523a      	clr	21050
  90                     ; 71 }
  93  002a 81            	ret	
 391                     .const:	section	.text
 392  0000               L21:
 393  0000 00098969      	dc.l	625001
 394  0004               L27:
 395  0004 00000064      	dc.l	100
 396                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 396                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 396                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 396                     ; 93 {
 397                     .text:	section	.text,new
 398  0000               _UART1_Init:
 400  0000 520c          	subw	sp,#12
 401       0000000c      OFST:	set	12
 404                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 408                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 410  0002 96            	ldw	x,sp
 411  0003 1c000f        	addw	x,#OFST+3
 412  0006 cd0000        	call	c_ltor
 414  0009 ae0000        	ldw	x,#L21
 415  000c cd0000        	call	c_lcmp
 417  000f 2506          	jrult	L41
 418  0011 ae0061        	ldw	x,#97
 419  0014 cd01a6        	call	LC001
 420  0017               L41:
 421                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 423  0017 7b13          	ld	a,(OFST+7,sp)
 424  0019 270a          	jreq	L42
 425  001b a110          	cp	a,#16
 426  001d 2706          	jreq	L42
 427  001f ae0062        	ldw	x,#98
 428  0022 cd01a6        	call	LC001
 429  0025               L42:
 430                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 432  0025 7b14          	ld	a,(OFST+8,sp)
 433  0027 2712          	jreq	L43
 434  0029 a110          	cp	a,#16
 435  002b 270e          	jreq	L43
 436  002d a120          	cp	a,#32
 437  002f 270a          	jreq	L43
 438  0031 a130          	cp	a,#48
 439  0033 2706          	jreq	L43
 440  0035 ae0063        	ldw	x,#99
 441  0038 cd01a6        	call	LC001
 442  003b               L43:
 443                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 445  003b 7b15          	ld	a,(OFST+9,sp)
 446  003d 270e          	jreq	L44
 447  003f a104          	cp	a,#4
 448  0041 270a          	jreq	L44
 449  0043 a106          	cp	a,#6
 450  0045 2706          	jreq	L44
 451  0047 ae0064        	ldw	x,#100
 452  004a cd01a6        	call	LC001
 453  004d               L44:
 454                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 456  004d 7b17          	ld	a,(OFST+11,sp)
 457  004f a108          	cp	a,#8
 458  0051 2722          	jreq	L45
 459  0053 a140          	cp	a,#64
 460  0055 271e          	jreq	L45
 461  0057 a104          	cp	a,#4
 462  0059 271a          	jreq	L45
 463  005b a180          	cp	a,#128
 464  005d 2716          	jreq	L45
 465  005f a10c          	cp	a,#12
 466  0061 2712          	jreq	L45
 467  0063 a144          	cp	a,#68
 468  0065 270e          	jreq	L45
 469  0067 a1c0          	cp	a,#192
 470  0069 270a          	jreq	L45
 471  006b a188          	cp	a,#136
 472  006d 2706          	jreq	L45
 473  006f ae0065        	ldw	x,#101
 474  0072 cd01a6        	call	LC001
 475  0075               L45:
 476                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 478  0075 7b16          	ld	a,(OFST+10,sp)
 479  0077 a488          	and	a,#136
 480  0079 a188          	cp	a,#136
 481  007b 2718          	jreq	L06
 482  007d 7b16          	ld	a,(OFST+10,sp)
 483  007f a444          	and	a,#68
 484  0081 a144          	cp	a,#68
 485  0083 2710          	jreq	L06
 486  0085 7b16          	ld	a,(OFST+10,sp)
 487  0087 a422          	and	a,#34
 488  0089 a122          	cp	a,#34
 489  008b 2708          	jreq	L06
 490  008d 7b16          	ld	a,(OFST+10,sp)
 491  008f a411          	and	a,#17
 492  0091 a111          	cp	a,#17
 493  0093 2606          	jrne	L26
 494  0095               L06:
 495  0095 ae0066        	ldw	x,#102
 496  0098 cd01a6        	call	LC001
 497  009b               L26:
 498                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 500  009b 72195234      	bres	21044,#4
 501                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 503  009f c65234        	ld	a,21044
 504  00a2 1a13          	or	a,(OFST+7,sp)
 505  00a4 c75234        	ld	21044,a
 506                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 508  00a7 c65236        	ld	a,21046
 509  00aa a4cf          	and	a,#207
 510  00ac c75236        	ld	21046,a
 511                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 513  00af c65236        	ld	a,21046
 514  00b2 1a14          	or	a,(OFST+8,sp)
 515  00b4 c75236        	ld	21046,a
 516                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 518  00b7 c65234        	ld	a,21044
 519  00ba a4f9          	and	a,#249
 520  00bc c75234        	ld	21044,a
 521                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 523  00bf c65234        	ld	a,21044
 524  00c2 1a15          	or	a,(OFST+9,sp)
 525  00c4 c75234        	ld	21044,a
 526                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 528  00c7 725f5232      	clr	21042
 529                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 531  00cb c65233        	ld	a,21043
 532  00ce a40f          	and	a,#15
 533  00d0 c75233        	ld	21043,a
 534                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 536  00d3 c65233        	ld	a,21043
 537  00d6 a4f0          	and	a,#240
 538  00d8 c75233        	ld	21043,a
 539                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 541  00db 96            	ldw	x,sp
 542  00dc cd01b2        	call	LC002
 544  00df 96            	ldw	x,sp
 545  00e0 5c            	incw	x
 546  00e1 cd0000        	call	c_rtol
 549  00e4 cd0000        	call	_CLK_GetClockFreq
 551  00e7 96            	ldw	x,sp
 552  00e8 5c            	incw	x
 553  00e9 cd0000        	call	c_ludv
 555  00ec 96            	ldw	x,sp
 556  00ed 1c0009        	addw	x,#OFST-3
 557  00f0 cd0000        	call	c_rtol
 560                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 562  00f3 96            	ldw	x,sp
 563  00f4 cd01b2        	call	LC002
 565  00f7 96            	ldw	x,sp
 566  00f8 5c            	incw	x
 567  00f9 cd0000        	call	c_rtol
 570  00fc cd0000        	call	_CLK_GetClockFreq
 572  00ff a664          	ld	a,#100
 573  0101 cd0000        	call	c_smul
 575  0104 96            	ldw	x,sp
 576  0105 5c            	incw	x
 577  0106 cd0000        	call	c_ludv
 579  0109 96            	ldw	x,sp
 580  010a 1c0005        	addw	x,#OFST-7
 581  010d cd0000        	call	c_rtol
 584                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 586  0110 96            	ldw	x,sp
 587  0111 1c0009        	addw	x,#OFST-3
 588  0114 cd0000        	call	c_ltor
 590  0117 a664          	ld	a,#100
 591  0119 cd0000        	call	c_smul
 593  011c 96            	ldw	x,sp
 594  011d 5c            	incw	x
 595  011e cd0000        	call	c_rtol
 598  0121 96            	ldw	x,sp
 599  0122 1c0005        	addw	x,#OFST-7
 600  0125 cd0000        	call	c_ltor
 602  0128 96            	ldw	x,sp
 603  0129 5c            	incw	x
 604  012a cd0000        	call	c_lsub
 606  012d a604          	ld	a,#4
 607  012f cd0000        	call	c_llsh
 609  0132 ae0004        	ldw	x,#L27
 610  0135 cd0000        	call	c_ludv
 612  0138 b603          	ld	a,c_lreg+3
 613  013a a40f          	and	a,#15
 614  013c ca5233        	or	a,21043
 615  013f c75233        	ld	21043,a
 616                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 618  0142 1e0b          	ldw	x,(OFST-1,sp)
 619  0144 54            	srlw	x
 620  0145 54            	srlw	x
 621  0146 54            	srlw	x
 622  0147 54            	srlw	x
 623  0148 01            	rrwa	x,a
 624  0149 a4f0          	and	a,#240
 625  014b ca5233        	or	a,21043
 626  014e c75233        	ld	21043,a
 627                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 629  0151 c65232        	ld	a,21042
 630  0154 1a0c          	or	a,(OFST+0,sp)
 631  0156 c75232        	ld	21042,a
 632                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 634  0159 c65235        	ld	a,21045
 635  015c a4f3          	and	a,#243
 636  015e c75235        	ld	21045,a
 637                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 639  0161 c65236        	ld	a,21046
 640  0164 a4f8          	and	a,#248
 641  0166 c75236        	ld	21046,a
 642                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 642                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 644  0169 7b16          	ld	a,(OFST+10,sp)
 645  016b a407          	and	a,#7
 646  016d ca5236        	or	a,21046
 647  0170 c75236        	ld	21046,a
 648                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 650  0173 7b17          	ld	a,(OFST+11,sp)
 651  0175 a504          	bcp	a,#4
 652  0177 2706          	jreq	L761
 653                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 655  0179 72165235      	bset	21045,#3
 657  017d 2004          	jra	L171
 658  017f               L761:
 659                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 661  017f 72175235      	bres	21045,#3
 662  0183               L171:
 663                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 665  0183 a508          	bcp	a,#8
 666  0185 2706          	jreq	L371
 667                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 669  0187 72145235      	bset	21045,#2
 671  018b 2004          	jra	L571
 672  018d               L371:
 673                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 675  018d 72155235      	bres	21045,#2
 676  0191               L571:
 677                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 679  0191 7b16          	ld	a,(OFST+10,sp)
 680  0193 2a06          	jrpl	L771
 681                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 683  0195 72175236      	bres	21046,#3
 685  0199 2008          	jra	L102
 686  019b               L771:
 687                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 689  019b a408          	and	a,#8
 690  019d ca5236        	or	a,21046
 691  01a0 c75236        	ld	21046,a
 692  01a3               L102:
 693                     ; 176 }
 696  01a3 5b0c          	addw	sp,#12
 697  01a5 81            	ret	
 698  01a6               LC001:
 699  01a6 89            	pushw	x
 700  01a7 5f            	clrw	x
 701  01a8 89            	pushw	x
 702  01a9 ae0008        	ldw	x,#L561
 703  01ac cd0000        	call	_assert_failed
 705  01af 5b04          	addw	sp,#4
 706  01b1 81            	ret	
 707  01b2               LC002:
 708  01b2 1c000f        	addw	x,#OFST+3
 709  01b5 cd0000        	call	c_ltor
 711  01b8 a604          	ld	a,#4
 712  01ba cc0000        	jp	c_llsh
 767                     ; 184 void UART1_Cmd(FunctionalState NewState)
 767                     ; 185 {
 768                     .text:	section	.text,new
 769  0000               _UART1_Cmd:
 773                     ; 186   if (NewState != DISABLE)
 775  0000 4d            	tnz	a
 776  0001 2705          	jreq	L132
 777                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 779  0003 721b5234      	bres	21044,#5
 782  0007 81            	ret	
 783  0008               L132:
 784                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 786  0008 721a5234      	bset	21044,#5
 787                     ; 196 }
 790  000c 81            	ret	
 912                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 912                     ; 212 {
 913                     .text:	section	.text,new
 914  0000               _UART1_ITConfig:
 916  0000 89            	pushw	x
 917  0001 89            	pushw	x
 918       00000002      OFST:	set	2
 921                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 925                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 927  0002 a30100        	cpw	x,#256
 928  0005 271e          	jreq	L401
 929  0007 a30277        	cpw	x,#631
 930  000a 2719          	jreq	L401
 931  000c a30266        	cpw	x,#614
 932  000f 2714          	jreq	L401
 933  0011 a30205        	cpw	x,#517
 934  0014 270f          	jreq	L401
 935  0016 a30244        	cpw	x,#580
 936  0019 270a          	jreq	L401
 937  001b a30346        	cpw	x,#838
 938  001e 2705          	jreq	L401
 939  0020 ae00d8        	ldw	x,#216
 940  0023 ad70          	call	LC006
 941  0025               L401:
 942                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 944  0025 7b07          	ld	a,(OFST+5,sp)
 945  0027 2708          	jreq	L411
 946  0029 4a            	dec	a
 947  002a 2705          	jreq	L411
 948  002c ae00d9        	ldw	x,#217
 949  002f ad64          	call	LC006
 950  0031               L411:
 951                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 953  0031 7b03          	ld	a,(OFST+1,sp)
 954  0033 6b01          	ld	(OFST-1,sp),a
 956                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 958  0035 7b04          	ld	a,(OFST+2,sp)
 959  0037 a40f          	and	a,#15
 960  0039 5f            	clrw	x
 961  003a 97            	ld	xl,a
 962  003b a601          	ld	a,#1
 963  003d 5d            	tnzw	x
 964  003e 2704          	jreq	L021
 965  0040               L221:
 966  0040 48            	sll	a
 967  0041 5a            	decw	x
 968  0042 26fc          	jrne	L221
 969  0044               L021:
 970  0044 6b02          	ld	(OFST+0,sp),a
 972                     ; 224   if (NewState != DISABLE)
 974  0046 7b07          	ld	a,(OFST+5,sp)
 975  0048 271f          	jreq	L703
 976                     ; 227     if (uartreg == 0x01)
 978  004a 7b01          	ld	a,(OFST-1,sp)
 979  004c a101          	cp	a,#1
 980  004e 2607          	jrne	L113
 981                     ; 229       UART1->CR1 |= itpos;
 983  0050 c65234        	ld	a,21044
 984  0053 1a02          	or	a,(OFST+0,sp)
 986  0055 201e          	jp	LC004
 987  0057               L113:
 988                     ; 231     else if (uartreg == 0x02)
 990  0057 a102          	cp	a,#2
 991  0059 2607          	jrne	L513
 992                     ; 233       UART1->CR2 |= itpos;
 994  005b c65235        	ld	a,21045
 995  005e 1a02          	or	a,(OFST+0,sp)
 997  0060 2022          	jp	LC005
 998  0062               L513:
 999                     ; 237       UART1->CR4 |= itpos;
1001  0062 c65237        	ld	a,21047
1002  0065 1a02          	or	a,(OFST+0,sp)
1003  0067 2026          	jp	LC003
1004  0069               L703:
1005                     ; 243     if (uartreg == 0x01)
1007  0069 7b01          	ld	a,(OFST-1,sp)
1008  006b a101          	cp	a,#1
1009  006d 260b          	jrne	L323
1010                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1012  006f 7b02          	ld	a,(OFST+0,sp)
1013  0071 43            	cpl	a
1014  0072 c45234        	and	a,21044
1015  0075               LC004:
1016  0075 c75234        	ld	21044,a
1018  0078 2018          	jra	L123
1019  007a               L323:
1020                     ; 247     else if (uartreg == 0x02)
1022  007a a102          	cp	a,#2
1023  007c 260b          	jrne	L723
1024                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1026  007e 7b02          	ld	a,(OFST+0,sp)
1027  0080 43            	cpl	a
1028  0081 c45235        	and	a,21045
1029  0084               LC005:
1030  0084 c75235        	ld	21045,a
1032  0087 2009          	jra	L123
1033  0089               L723:
1034                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1036  0089 7b02          	ld	a,(OFST+0,sp)
1037  008b 43            	cpl	a
1038  008c c45237        	and	a,21047
1039  008f               LC003:
1040  008f c75237        	ld	21047,a
1041  0092               L123:
1042                     ; 257 }
1045  0092 5b04          	addw	sp,#4
1046  0094 81            	ret	
1047  0095               LC006:
1048  0095 89            	pushw	x
1049  0096 5f            	clrw	x
1050  0097 89            	pushw	x
1051  0098 ae0008        	ldw	x,#L561
1052  009b cd0000        	call	_assert_failed
1054  009e 5b04          	addw	sp,#4
1055  00a0 81            	ret	
1092                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1092                     ; 266 {
1093                     .text:	section	.text,new
1094  0000               _UART1_HalfDuplexCmd:
1096  0000 88            	push	a
1097       00000000      OFST:	set	0
1100                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1102  0001 4d            	tnz	a
1103  0002 2711          	jreq	L231
1104  0004 4a            	dec	a
1105  0005 270e          	jreq	L231
1106  0007 ae010b        	ldw	x,#267
1107  000a 89            	pushw	x
1108  000b 5f            	clrw	x
1109  000c 89            	pushw	x
1110  000d ae0008        	ldw	x,#L561
1111  0010 cd0000        	call	_assert_failed
1113  0013 5b04          	addw	sp,#4
1114  0015               L231:
1115                     ; 269   if (NewState != DISABLE)
1117  0015 7b01          	ld	a,(OFST+1,sp)
1118  0017 2706          	jreq	L153
1119                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1121  0019 72165238      	bset	21048,#3
1123  001d 2004          	jra	L353
1124  001f               L153:
1125                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1127  001f 72175238      	bres	21048,#3
1128  0023               L353:
1129                     ; 277 }
1132  0023 84            	pop	a
1133  0024 81            	ret	
1191                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1191                     ; 286 {
1192                     .text:	section	.text,new
1193  0000               _UART1_IrDAConfig:
1195  0000 88            	push	a
1196       00000000      OFST:	set	0
1199                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1201  0001 a101          	cp	a,#1
1202  0003 2711          	jreq	L441
1203  0005 4d            	tnz	a
1204  0006 270e          	jreq	L441
1205  0008 ae011f        	ldw	x,#287
1206  000b 89            	pushw	x
1207  000c 5f            	clrw	x
1208  000d 89            	pushw	x
1209  000e ae0008        	ldw	x,#L561
1210  0011 cd0000        	call	_assert_failed
1212  0014 5b04          	addw	sp,#4
1213  0016               L441:
1214                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1216  0016 7b01          	ld	a,(OFST+1,sp)
1217  0018 2706          	jreq	L304
1218                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1220  001a 72145238      	bset	21048,#2
1222  001e 2004          	jra	L504
1223  0020               L304:
1224                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1226  0020 72155238      	bres	21048,#2
1227  0024               L504:
1228                     ; 297 }
1231  0024 84            	pop	a
1232  0025 81            	ret	
1268                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1268                     ; 306 {
1269                     .text:	section	.text,new
1270  0000               _UART1_IrDACmd:
1272  0000 88            	push	a
1273       00000000      OFST:	set	0
1276                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1278  0001 4d            	tnz	a
1279  0002 2711          	jreq	L651
1280  0004 4a            	dec	a
1281  0005 270e          	jreq	L651
1282  0007 ae0134        	ldw	x,#308
1283  000a 89            	pushw	x
1284  000b 5f            	clrw	x
1285  000c 89            	pushw	x
1286  000d ae0008        	ldw	x,#L561
1287  0010 cd0000        	call	_assert_failed
1289  0013 5b04          	addw	sp,#4
1290  0015               L651:
1291                     ; 310   if (NewState != DISABLE)
1293  0015 7b01          	ld	a,(OFST+1,sp)
1294  0017 2706          	jreq	L524
1295                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1297  0019 72125238      	bset	21048,#1
1299  001d 2004          	jra	L724
1300  001f               L524:
1301                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1303  001f 72135238      	bres	21048,#1
1304  0023               L724:
1305                     ; 320 }
1308  0023 84            	pop	a
1309  0024 81            	ret	
1369                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1369                     ; 330 {
1370                     .text:	section	.text,new
1371  0000               _UART1_LINBreakDetectionConfig:
1373  0000 88            	push	a
1374       00000000      OFST:	set	0
1377                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1379  0001 4d            	tnz	a
1380  0002 2711          	jreq	L071
1381  0004 4a            	dec	a
1382  0005 270e          	jreq	L071
1383  0007 ae014b        	ldw	x,#331
1384  000a 89            	pushw	x
1385  000b 5f            	clrw	x
1386  000c 89            	pushw	x
1387  000d ae0008        	ldw	x,#L561
1388  0010 cd0000        	call	_assert_failed
1390  0013 5b04          	addw	sp,#4
1391  0015               L071:
1392                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1394  0015 7b01          	ld	a,(OFST+1,sp)
1395  0017 2706          	jreq	L754
1396                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1398  0019 721a5237      	bset	21047,#5
1400  001d 2004          	jra	L164
1401  001f               L754:
1402                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1404  001f 721b5237      	bres	21047,#5
1405  0023               L164:
1406                     ; 341 }
1409  0023 84            	pop	a
1410  0024 81            	ret	
1446                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1446                     ; 350 {
1447                     .text:	section	.text,new
1448  0000               _UART1_LINCmd:
1450  0000 88            	push	a
1451       00000000      OFST:	set	0
1454                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1456  0001 4d            	tnz	a
1457  0002 2711          	jreq	L202
1458  0004 4a            	dec	a
1459  0005 270e          	jreq	L202
1460  0007 ae015f        	ldw	x,#351
1461  000a 89            	pushw	x
1462  000b 5f            	clrw	x
1463  000c 89            	pushw	x
1464  000d ae0008        	ldw	x,#L561
1465  0010 cd0000        	call	_assert_failed
1467  0013 5b04          	addw	sp,#4
1468  0015               L202:
1469                     ; 353   if (NewState != DISABLE)
1471  0015 7b01          	ld	a,(OFST+1,sp)
1472  0017 2706          	jreq	L105
1473                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1475  0019 721c5236      	bset	21046,#6
1477  001d 2004          	jra	L305
1478  001f               L105:
1479                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1481  001f 721d5236      	bres	21046,#6
1482  0023               L305:
1483                     ; 363 }
1486  0023 84            	pop	a
1487  0024 81            	ret	
1523                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1523                     ; 372 {
1524                     .text:	section	.text,new
1525  0000               _UART1_SmartCardCmd:
1527  0000 88            	push	a
1528       00000000      OFST:	set	0
1531                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1533  0001 4d            	tnz	a
1534  0002 2711          	jreq	L412
1535  0004 4a            	dec	a
1536  0005 270e          	jreq	L412
1537  0007 ae0175        	ldw	x,#373
1538  000a 89            	pushw	x
1539  000b 5f            	clrw	x
1540  000c 89            	pushw	x
1541  000d ae0008        	ldw	x,#L561
1542  0010 cd0000        	call	_assert_failed
1544  0013 5b04          	addw	sp,#4
1545  0015               L412:
1546                     ; 375   if (NewState != DISABLE)
1548  0015 7b01          	ld	a,(OFST+1,sp)
1549  0017 2706          	jreq	L325
1550                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1552  0019 721a5238      	bset	21048,#5
1554  001d 2004          	jra	L525
1555  001f               L325:
1556                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1558  001f 721b5238      	bres	21048,#5
1559  0023               L525:
1560                     ; 385 }
1563  0023 84            	pop	a
1564  0024 81            	ret	
1601                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1601                     ; 395 {
1602                     .text:	section	.text,new
1603  0000               _UART1_SmartCardNACKCmd:
1605  0000 88            	push	a
1606       00000000      OFST:	set	0
1609                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1611  0001 4d            	tnz	a
1612  0002 2711          	jreq	L622
1613  0004 4a            	dec	a
1614  0005 270e          	jreq	L622
1615  0007 ae018c        	ldw	x,#396
1616  000a 89            	pushw	x
1617  000b 5f            	clrw	x
1618  000c 89            	pushw	x
1619  000d ae0008        	ldw	x,#L561
1620  0010 cd0000        	call	_assert_failed
1622  0013 5b04          	addw	sp,#4
1623  0015               L622:
1624                     ; 398   if (NewState != DISABLE)
1626  0015 7b01          	ld	a,(OFST+1,sp)
1627  0017 2706          	jreq	L545
1628                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1630  0019 72185238      	bset	21048,#4
1632  001d 2004          	jra	L745
1633  001f               L545:
1634                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1636  001f 72195238      	bres	21048,#4
1637  0023               L745:
1638                     ; 408 }
1641  0023 84            	pop	a
1642  0024 81            	ret	
1700                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1700                     ; 417 {
1701                     .text:	section	.text,new
1702  0000               _UART1_WakeUpConfig:
1704  0000 88            	push	a
1705       00000000      OFST:	set	0
1708                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1710  0001 4d            	tnz	a
1711  0002 2712          	jreq	L042
1712  0004 a108          	cp	a,#8
1713  0006 270e          	jreq	L042
1714  0008 ae01a2        	ldw	x,#418
1715  000b 89            	pushw	x
1716  000c 5f            	clrw	x
1717  000d 89            	pushw	x
1718  000e ae0008        	ldw	x,#L561
1719  0011 cd0000        	call	_assert_failed
1721  0014 5b04          	addw	sp,#4
1722  0016               L042:
1723                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1725  0016 72175234      	bres	21044,#3
1726                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1728  001a c65234        	ld	a,21044
1729  001d 1a01          	or	a,(OFST+1,sp)
1730  001f c75234        	ld	21044,a
1731                     ; 422 }
1734  0022 84            	pop	a
1735  0023 81            	ret	
1772                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1772                     ; 431 {
1773                     .text:	section	.text,new
1774  0000               _UART1_ReceiverWakeUpCmd:
1776  0000 88            	push	a
1777       00000000      OFST:	set	0
1780                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1782  0001 4d            	tnz	a
1783  0002 2711          	jreq	L252
1784  0004 4a            	dec	a
1785  0005 270e          	jreq	L252
1786  0007 ae01b0        	ldw	x,#432
1787  000a 89            	pushw	x
1788  000b 5f            	clrw	x
1789  000c 89            	pushw	x
1790  000d ae0008        	ldw	x,#L561
1791  0010 cd0000        	call	_assert_failed
1793  0013 5b04          	addw	sp,#4
1794  0015               L252:
1795                     ; 434   if (NewState != DISABLE)
1797  0015 7b01          	ld	a,(OFST+1,sp)
1798  0017 2706          	jreq	L516
1799                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1801  0019 72125235      	bset	21045,#1
1803  001d 2004          	jra	L716
1804  001f               L516:
1805                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1807  001f 72135235      	bres	21045,#1
1808  0023               L716:
1809                     ; 444 }
1812  0023 84            	pop	a
1813  0024 81            	ret	
1836                     ; 451 uint8_t UART1_ReceiveData8(void)
1836                     ; 452 {
1837                     .text:	section	.text,new
1838  0000               _UART1_ReceiveData8:
1842                     ; 453   return ((uint8_t)UART1->DR);
1844  0000 c65231        	ld	a,21041
1847  0003 81            	ret	
1879                     ; 461 uint16_t UART1_ReceiveData9(void)
1879                     ; 462 {
1880                     .text:	section	.text,new
1881  0000               _UART1_ReceiveData9:
1883  0000 89            	pushw	x
1884       00000002      OFST:	set	2
1887                     ; 463   uint16_t temp = 0;
1889                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1891  0001 c65234        	ld	a,21044
1892  0004 a480          	and	a,#128
1893  0006 5f            	clrw	x
1894  0007 02            	rlwa	x,a
1895  0008 58            	sllw	x
1896  0009 1f01          	ldw	(OFST-1,sp),x
1898                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1900  000b c65231        	ld	a,21041
1901  000e 5f            	clrw	x
1902  000f 97            	ld	xl,a
1903  0010 01            	rrwa	x,a
1904  0011 1a02          	or	a,(OFST+0,sp)
1905  0013 01            	rrwa	x,a
1906  0014 1a01          	or	a,(OFST-1,sp)
1907  0016 a401          	and	a,#1
1908  0018 01            	rrwa	x,a
1911  0019 5b02          	addw	sp,#2
1912  001b 81            	ret	
1944                     ; 474 void UART1_SendData8(uint8_t Data)
1944                     ; 475 {
1945                     .text:	section	.text,new
1946  0000               _UART1_SendData8:
1950                     ; 477   UART1->DR = Data;
1952  0000 c75231        	ld	21041,a
1953                     ; 478 }
1956  0003 81            	ret	
1988                     ; 486 void UART1_SendData9(uint16_t Data)
1988                     ; 487 {
1989                     .text:	section	.text,new
1990  0000               _UART1_SendData9:
1992  0000 89            	pushw	x
1993       00000000      OFST:	set	0
1996                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
1998  0001 721d5234      	bres	21044,#6
1999                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2001  0005 54            	srlw	x
2002  0006 54            	srlw	x
2003  0007 9f            	ld	a,xl
2004  0008 a440          	and	a,#64
2005  000a ca5234        	or	a,21044
2006  000d c75234        	ld	21044,a
2007                     ; 493   UART1->DR   = (uint8_t)(Data);
2009  0010 7b02          	ld	a,(OFST+2,sp)
2010  0012 c75231        	ld	21041,a
2011                     ; 494 }
2014  0015 85            	popw	x
2015  0016 81            	ret	
2038                     ; 501 void UART1_SendBreak(void)
2038                     ; 502 {
2039                     .text:	section	.text,new
2040  0000               _UART1_SendBreak:
2044                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2046  0000 72105235      	bset	21045,#0
2047                     ; 504 }
2050  0004 81            	ret	
2083                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2083                     ; 512 {
2084                     .text:	section	.text,new
2085  0000               _UART1_SetAddress:
2087  0000 88            	push	a
2088       00000000      OFST:	set	0
2091                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2093  0001 a110          	cp	a,#16
2094  0003 250e          	jrult	L472
2095  0005 ae0202        	ldw	x,#514
2096  0008 89            	pushw	x
2097  0009 5f            	clrw	x
2098  000a 89            	pushw	x
2099  000b ae0008        	ldw	x,#L561
2100  000e cd0000        	call	_assert_failed
2102  0011 5b04          	addw	sp,#4
2103  0013               L472:
2104                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2106  0013 c65237        	ld	a,21047
2107  0016 a4f0          	and	a,#240
2108  0018 c75237        	ld	21047,a
2109                     ; 519   UART1->CR4 |= UART1_Address;
2111  001b c65237        	ld	a,21047
2112  001e 1a01          	or	a,(OFST+1,sp)
2113  0020 c75237        	ld	21047,a
2114                     ; 520 }
2117  0023 84            	pop	a
2118  0024 81            	ret	
2150                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2150                     ; 529 {
2151                     .text:	section	.text,new
2152  0000               _UART1_SetGuardTime:
2156                     ; 531   UART1->GTR = UART1_GuardTime;
2158  0000 c75239        	ld	21049,a
2159                     ; 532 }
2162  0003 81            	ret	
2194                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2194                     ; 557 {
2195                     .text:	section	.text,new
2196  0000               _UART1_SetPrescaler:
2200                     ; 559   UART1->PSCR = UART1_Prescaler;
2202  0000 c7523a        	ld	21050,a
2203                     ; 560 }
2206  0003 81            	ret	
2350                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2350                     ; 569 {
2351                     .text:	section	.text,new
2352  0000               _UART1_GetFlagStatus:
2354  0000 89            	pushw	x
2355  0001 88            	push	a
2356       00000001      OFST:	set	1
2359                     ; 570   FlagStatus status = RESET;
2361                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2363  0002 a30080        	cpw	x,#128
2364  0005 273b          	jreq	L213
2365  0007 a30040        	cpw	x,#64
2366  000a 2736          	jreq	L213
2367  000c a30020        	cpw	x,#32
2368  000f 2731          	jreq	L213
2369  0011 a30010        	cpw	x,#16
2370  0014 272c          	jreq	L213
2371  0016 a30008        	cpw	x,#8
2372  0019 2727          	jreq	L213
2373  001b a30004        	cpw	x,#4
2374  001e 2722          	jreq	L213
2375  0020 a30002        	cpw	x,#2
2376  0023 271d          	jreq	L213
2377  0025 a30001        	cpw	x,#1
2378  0028 2718          	jreq	L213
2379  002a a30101        	cpw	x,#257
2380  002d 2713          	jreq	L213
2381  002f a30210        	cpw	x,#528
2382  0032 270e          	jreq	L213
2383  0034 ae023d        	ldw	x,#573
2384  0037 89            	pushw	x
2385  0038 5f            	clrw	x
2386  0039 89            	pushw	x
2387  003a ae0008        	ldw	x,#L561
2388  003d cd0000        	call	_assert_failed
2390  0040 5b04          	addw	sp,#4
2391  0042               L213:
2392                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2394  0042 1e02          	ldw	x,(OFST+1,sp)
2395  0044 a30210        	cpw	x,#528
2396  0047 2605          	jrne	L3301
2397                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2399  0049 c65237        	ld	a,21047
2400                     ; 582       status = SET;
2402  004c 2008          	jp	LC009
2403                     ; 587       status = RESET;
2404  004e               L3301:
2405                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2407  004e a30101        	cpw	x,#257
2408  0051 260b          	jrne	L3401
2409                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2411  0053 c65235        	ld	a,21045
2412  0056               LC009:
2413  0056 1503          	bcp	a,(OFST+2,sp)
2414  0058 270b          	jreq	L3501
2415                     ; 595       status = SET;
2417  005a               LC008:
2420  005a a601          	ld	a,#1
2423  005c 2008          	jra	L1401
2424                     ; 600       status = RESET;
2425  005e               L3401:
2426                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2428  005e c65230        	ld	a,21040
2429  0061 1503          	bcp	a,(OFST+2,sp)
2430                     ; 608       status = SET;
2432  0063 26f5          	jrne	LC008
2433  0065               L3501:
2434                     ; 613       status = RESET;
2438  0065 4f            	clr	a
2440  0066               L1401:
2441                     ; 617   return status;
2445  0066 5b03          	addw	sp,#3
2446  0068 81            	ret	
2482                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2482                     ; 647 {
2483                     .text:	section	.text,new
2484  0000               _UART1_ClearFlag:
2486  0000 89            	pushw	x
2487       00000000      OFST:	set	0
2490                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2492  0001 a30020        	cpw	x,#32
2493  0004 2713          	jreq	L423
2494  0006 a30210        	cpw	x,#528
2495  0009 270e          	jreq	L423
2496  000b ae0288        	ldw	x,#648
2497  000e 89            	pushw	x
2498  000f 5f            	clrw	x
2499  0010 89            	pushw	x
2500  0011 ae0008        	ldw	x,#L561
2501  0014 cd0000        	call	_assert_failed
2503  0017 5b04          	addw	sp,#4
2504  0019               L423:
2505                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2507  0019 1e01          	ldw	x,(OFST+1,sp)
2508  001b a30020        	cpw	x,#32
2509  001e 2606          	jrne	L5701
2510                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2512  0020 35df5230      	mov	21040,#223
2514  0024 2004          	jra	L7701
2515  0026               L5701:
2516                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2518  0026 72195237      	bres	21047,#4
2519  002a               L7701:
2520                     ; 660 }
2523  002a 85            	popw	x
2524  002b 81            	ret	
2599                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2599                     ; 676 {
2600                     .text:	section	.text,new
2601  0000               _UART1_GetITStatus:
2603  0000 89            	pushw	x
2604  0001 89            	pushw	x
2605       00000002      OFST:	set	2
2608                     ; 677   ITStatus pendingbitstatus = RESET;
2610                     ; 678   uint8_t itpos = 0;
2612                     ; 679   uint8_t itmask1 = 0;
2614                     ; 680   uint8_t itmask2 = 0;
2616                     ; 681   uint8_t enablestatus = 0;
2618                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2620  0002 a30277        	cpw	x,#631
2621  0005 272c          	jreq	L633
2622  0007 a30266        	cpw	x,#614
2623  000a 2727          	jreq	L633
2624  000c a30255        	cpw	x,#597
2625  000f 2722          	jreq	L633
2626  0011 a30244        	cpw	x,#580
2627  0014 271d          	jreq	L633
2628  0016 a30235        	cpw	x,#565
2629  0019 2718          	jreq	L633
2630  001b a30346        	cpw	x,#838
2631  001e 2713          	jreq	L633
2632  0020 a30100        	cpw	x,#256
2633  0023 270e          	jreq	L633
2634  0025 ae02ac        	ldw	x,#684
2635  0028 89            	pushw	x
2636  0029 5f            	clrw	x
2637  002a 89            	pushw	x
2638  002b ae0008        	ldw	x,#L561
2639  002e cd0000        	call	_assert_failed
2641  0031 5b04          	addw	sp,#4
2642  0033               L633:
2643                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2645  0033 7b04          	ld	a,(OFST+2,sp)
2646  0035 a40f          	and	a,#15
2647  0037 5f            	clrw	x
2648  0038 97            	ld	xl,a
2649  0039 a601          	ld	a,#1
2650  003b 5d            	tnzw	x
2651  003c 2704          	jreq	L243
2652  003e               L443:
2653  003e 48            	sll	a
2654  003f 5a            	decw	x
2655  0040 26fc          	jrne	L443
2656  0042               L243:
2657  0042 6b01          	ld	(OFST-1,sp),a
2659                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2661  0044 7b04          	ld	a,(OFST+2,sp)
2662  0046 4e            	swap	a
2663  0047 a40f          	and	a,#15
2664  0049 6b02          	ld	(OFST+0,sp),a
2666                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2668  004b 5f            	clrw	x
2669  004c 97            	ld	xl,a
2670  004d a601          	ld	a,#1
2671  004f 5d            	tnzw	x
2672  0050 2704          	jreq	L643
2673  0052               L053:
2674  0052 48            	sll	a
2675  0053 5a            	decw	x
2676  0054 26fc          	jrne	L053
2677  0056               L643:
2678  0056 6b02          	ld	(OFST+0,sp),a
2680                     ; 695   if (UART1_IT == UART1_IT_PE)
2682  0058 1e03          	ldw	x,(OFST+1,sp)
2683  005a a30100        	cpw	x,#256
2684  005d 260c          	jrne	L3311
2685                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2687  005f c65234        	ld	a,21044
2688  0062 1402          	and	a,(OFST+0,sp)
2689  0064 6b02          	ld	(OFST+0,sp),a
2691                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2693  0066 c65230        	ld	a,21040
2695                     ; 704       pendingbitstatus = SET;
2697  0069 200f          	jp	LC012
2698                     ; 709       pendingbitstatus = RESET;
2699  006b               L3311:
2700                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2702  006b a30346        	cpw	x,#838
2703  006e 2616          	jrne	L3411
2704                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2706  0070 c65237        	ld	a,21047
2707  0073 1402          	and	a,(OFST+0,sp)
2708  0075 6b02          	ld	(OFST+0,sp),a
2710                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2712  0077 c65237        	ld	a,21047
2714  007a               LC012:
2715  007a 1501          	bcp	a,(OFST-1,sp)
2716  007c 271a          	jreq	L3511
2717  007e 7b02          	ld	a,(OFST+0,sp)
2718  0080 2716          	jreq	L3511
2719                     ; 721       pendingbitstatus = SET;
2721  0082               LC011:
2724  0082 a601          	ld	a,#1
2727  0084 2013          	jra	L1411
2728                     ; 726       pendingbitstatus = RESET;
2729  0086               L3411:
2730                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2732  0086 c65235        	ld	a,21045
2733  0089 1402          	and	a,(OFST+0,sp)
2734  008b 6b02          	ld	(OFST+0,sp),a
2736                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2738  008d c65230        	ld	a,21040
2739  0090 1501          	bcp	a,(OFST-1,sp)
2740  0092 2704          	jreq	L3511
2742  0094 7b02          	ld	a,(OFST+0,sp)
2743                     ; 737       pendingbitstatus = SET;
2745  0096 26ea          	jrne	LC011
2746  0098               L3511:
2747                     ; 742       pendingbitstatus = RESET;
2751  0098 4f            	clr	a
2753  0099               L1411:
2754                     ; 747   return  pendingbitstatus;
2758  0099 5b04          	addw	sp,#4
2759  009b 81            	ret	
2796                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2796                     ; 776 {
2797                     .text:	section	.text,new
2798  0000               _UART1_ClearITPendingBit:
2800  0000 89            	pushw	x
2801       00000000      OFST:	set	0
2804                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2806  0001 a30255        	cpw	x,#597
2807  0004 2713          	jreq	L063
2808  0006 a30346        	cpw	x,#838
2809  0009 270e          	jreq	L063
2810  000b ae0309        	ldw	x,#777
2811  000e 89            	pushw	x
2812  000f 5f            	clrw	x
2813  0010 89            	pushw	x
2814  0011 ae0008        	ldw	x,#L561
2815  0014 cd0000        	call	_assert_failed
2817  0017 5b04          	addw	sp,#4
2818  0019               L063:
2819                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2821  0019 1e01          	ldw	x,(OFST+1,sp)
2822  001b a30255        	cpw	x,#597
2823  001e 2606          	jrne	L5711
2824                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2826  0020 35df5230      	mov	21040,#223
2828  0024 2004          	jra	L7711
2829  0026               L5711:
2830                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2832  0026 72195237      	bres	21047,#4
2833  002a               L7711:
2834                     ; 789 }
2837  002a 85            	popw	x
2838  002b 81            	ret	
2851                     	xdef	_UART1_ClearITPendingBit
2852                     	xdef	_UART1_GetITStatus
2853                     	xdef	_UART1_ClearFlag
2854                     	xdef	_UART1_GetFlagStatus
2855                     	xdef	_UART1_SetPrescaler
2856                     	xdef	_UART1_SetGuardTime
2857                     	xdef	_UART1_SetAddress
2858                     	xdef	_UART1_SendBreak
2859                     	xdef	_UART1_SendData9
2860                     	xdef	_UART1_SendData8
2861                     	xdef	_UART1_ReceiveData9
2862                     	xdef	_UART1_ReceiveData8
2863                     	xdef	_UART1_ReceiverWakeUpCmd
2864                     	xdef	_UART1_WakeUpConfig
2865                     	xdef	_UART1_SmartCardNACKCmd
2866                     	xdef	_UART1_SmartCardCmd
2867                     	xdef	_UART1_LINCmd
2868                     	xdef	_UART1_LINBreakDetectionConfig
2869                     	xdef	_UART1_IrDACmd
2870                     	xdef	_UART1_IrDAConfig
2871                     	xdef	_UART1_HalfDuplexCmd
2872                     	xdef	_UART1_ITConfig
2873                     	xdef	_UART1_Cmd
2874                     	xdef	_UART1_Init
2875                     	xdef	_UART1_DeInit
2876                     	xref	_assert_failed
2877                     	xref	_CLK_GetClockFreq
2878                     	switch	.const
2879  0008               L561:
2880  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2881  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2882  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2883  003e 5f7561727431  	dc.b	"_uart1.c",0
2884                     	xref.b	c_lreg
2885                     	xref.b	c_x
2905                     	xref	c_lsub
2906                     	xref	c_smul
2907                     	xref	c_ludv
2908                     	xref	c_rtol
2909                     	xref	c_llsh
2910                     	xref	c_lcmp
2911                     	xref	c_ltor
2912                     	end
