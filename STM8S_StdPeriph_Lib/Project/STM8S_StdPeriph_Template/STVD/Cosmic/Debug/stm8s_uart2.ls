   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 53 void UART2_DeInit(void)
  49                     ; 54 {
  50                     .text:	section	.text,new
  51  0000               f_UART2_DeInit:
  55                     ; 57   (void) UART2->SR;
  57  0000 c65240        	ld	a,21056
  58                     ; 58   (void)UART2->DR;
  60  0003 c65241        	ld	a,21057
  61                     ; 60   UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
  63  0006 725f5243      	clr	21059
  64                     ; 61   UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
  66  000a 725f5242      	clr	21058
  67                     ; 63   UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
  69  000e 725f5244      	clr	21060
  70                     ; 64   UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
  72  0012 725f5245      	clr	21061
  73                     ; 65   UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
  75  0016 725f5246      	clr	21062
  76                     ; 66   UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
  78  001a 725f5247      	clr	21063
  79                     ; 67   UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
  81  001e 725f5248      	clr	21064
  82                     ; 68   UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
  84  0022 725f5249      	clr	21065
  85                     ; 69 }
  88  0026 87            	retf	
 409                     .const:	section	.text
 410  0000               L21:
 411  0000 00098969      	dc.l	625001
 412  0004               L27:
 413  0004 00000064      	dc.l	100
 414                     ; 85 void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
 414                     ; 86 {
 415                     .text:	section	.text,new
 416  0000               f_UART2_Init:
 418  0000 520e          	subw	sp,#14
 419       0000000e      OFST:	set	14
 422                     ; 87   uint8_t BRR2_1 = 0, BRR2_2 = 0;
 426                     ; 88   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 430                     ; 91   assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
 432  0002 96            	ldw	x,sp
 433  0003 1c0012        	addw	x,#OFST+4
 434  0006 8d000000      	callf	d_ltor
 436  000a ae0000        	ldw	x,#L21
 437  000d 8d000000      	callf	d_lcmp
 439  0011 2507          	jrult	L41
 440  0013 ae005b        	ldw	x,#91
 441  0016 8dba01ba      	callf	LC001
 442  001a               L41:
 443                     ; 92   assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
 445  001a 7b16          	ld	a,(OFST+8,sp)
 446  001c 270b          	jreq	L42
 447  001e a110          	cp	a,#16
 448  0020 2707          	jreq	L42
 449  0022 ae005c        	ldw	x,#92
 450  0025 8dba01ba      	callf	LC001
 451  0029               L42:
 452                     ; 93   assert_param(IS_UART2_STOPBITS_OK(StopBits));
 454  0029 7b17          	ld	a,(OFST+9,sp)
 455  002b 2713          	jreq	L43
 456  002d a110          	cp	a,#16
 457  002f 270f          	jreq	L43
 458  0031 a120          	cp	a,#32
 459  0033 270b          	jreq	L43
 460  0035 a130          	cp	a,#48
 461  0037 2707          	jreq	L43
 462  0039 ae005d        	ldw	x,#93
 463  003c 8dba01ba      	callf	LC001
 464  0040               L43:
 465                     ; 94   assert_param(IS_UART2_PARITY_OK(Parity));
 467  0040 7b18          	ld	a,(OFST+10,sp)
 468  0042 270f          	jreq	L44
 469  0044 a104          	cp	a,#4
 470  0046 270b          	jreq	L44
 471  0048 a106          	cp	a,#6
 472  004a 2707          	jreq	L44
 473  004c ae005e        	ldw	x,#94
 474  004f 8dba01ba      	callf	LC001
 475  0053               L44:
 476                     ; 95   assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
 478  0053 7b1a          	ld	a,(OFST+12,sp)
 479  0055 a108          	cp	a,#8
 480  0057 2723          	jreq	L45
 481  0059 a140          	cp	a,#64
 482  005b 271f          	jreq	L45
 483  005d a104          	cp	a,#4
 484  005f 271b          	jreq	L45
 485  0061 a180          	cp	a,#128
 486  0063 2717          	jreq	L45
 487  0065 a10c          	cp	a,#12
 488  0067 2713          	jreq	L45
 489  0069 a144          	cp	a,#68
 490  006b 270f          	jreq	L45
 491  006d a1c0          	cp	a,#192
 492  006f 270b          	jreq	L45
 493  0071 a188          	cp	a,#136
 494  0073 2707          	jreq	L45
 495  0075 ae005f        	ldw	x,#95
 496  0078 8dba01ba      	callf	LC001
 497  007c               L45:
 498                     ; 96   assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
 500  007c 7b19          	ld	a,(OFST+11,sp)
 501  007e a488          	and	a,#136
 502  0080 a188          	cp	a,#136
 503  0082 2718          	jreq	L06
 504  0084 7b19          	ld	a,(OFST+11,sp)
 505  0086 a444          	and	a,#68
 506  0088 a144          	cp	a,#68
 507  008a 2710          	jreq	L06
 508  008c 7b19          	ld	a,(OFST+11,sp)
 509  008e a422          	and	a,#34
 510  0090 a122          	cp	a,#34
 511  0092 2708          	jreq	L06
 512  0094 7b19          	ld	a,(OFST+11,sp)
 513  0096 a411          	and	a,#17
 514  0098 a111          	cp	a,#17
 515  009a 2607          	jrne	L26
 516  009c               L06:
 517  009c ae0060        	ldw	x,#96
 518  009f 8dba01ba      	callf	LC001
 519  00a3               L26:
 520                     ; 99   UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
 522  00a3 72195244      	bres	21060,#4
 523                     ; 101   UART2->CR1 |= (uint8_t)WordLength; 
 525  00a7 c65244        	ld	a,21060
 526  00aa 1a16          	or	a,(OFST+8,sp)
 527  00ac c75244        	ld	21060,a
 528                     ; 104   UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
 530  00af c65246        	ld	a,21062
 531  00b2 a4cf          	and	a,#207
 532  00b4 c75246        	ld	21062,a
 533                     ; 106   UART2->CR3 |= (uint8_t)StopBits; 
 535  00b7 c65246        	ld	a,21062
 536  00ba 1a17          	or	a,(OFST+9,sp)
 537  00bc c75246        	ld	21062,a
 538                     ; 109   UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
 540  00bf c65244        	ld	a,21060
 541  00c2 a4f9          	and	a,#249
 542  00c4 c75244        	ld	21060,a
 543                     ; 111   UART2->CR1 |= (uint8_t)Parity;
 545  00c7 c65244        	ld	a,21060
 546  00ca 1a18          	or	a,(OFST+10,sp)
 547  00cc c75244        	ld	21060,a
 548                     ; 114   UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
 550  00cf 725f5242      	clr	21058
 551                     ; 116   UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
 553  00d3 c65243        	ld	a,21059
 554  00d6 a40f          	and	a,#15
 555  00d8 c75243        	ld	21059,a
 556                     ; 118   UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
 558  00db c65243        	ld	a,21059
 559  00de a4f0          	and	a,#240
 560  00e0 c75243        	ld	21059,a
 561                     ; 121   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 563  00e3 96            	ldw	x,sp
 564  00e4 8dc701c7      	callf	LC002
 566  00e8 96            	ldw	x,sp
 567  00e9 5c            	incw	x
 568  00ea 8d000000      	callf	d_rtol
 571  00ee 8d000000      	callf	f_CLK_GetClockFreq
 573  00f2 96            	ldw	x,sp
 574  00f3 5c            	incw	x
 575  00f4 8d000000      	callf	d_ludv
 577  00f8 96            	ldw	x,sp
 578  00f9 1c000b        	addw	x,#OFST-3
 579  00fc 8d000000      	callf	d_rtol
 582                     ; 122   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 584  0100 96            	ldw	x,sp
 585  0101 8dc701c7      	callf	LC002
 587  0105 96            	ldw	x,sp
 588  0106 5c            	incw	x
 589  0107 8d000000      	callf	d_rtol
 592  010b 8d000000      	callf	f_CLK_GetClockFreq
 594  010f a664          	ld	a,#100
 595  0111 8d000000      	callf	d_smul
 597  0115 96            	ldw	x,sp
 598  0116 5c            	incw	x
 599  0117 8d000000      	callf	d_ludv
 601  011b 96            	ldw	x,sp
 602  011c 1c0007        	addw	x,#OFST-7
 603  011f 8d000000      	callf	d_rtol
 606                     ; 126   BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 606                     ; 127                                 << 4) / 100) & (uint8_t)0x0F); 
 608  0123 96            	ldw	x,sp
 609  0124 1c000b        	addw	x,#OFST-3
 610  0127 8d000000      	callf	d_ltor
 612  012b a664          	ld	a,#100
 613  012d 8d000000      	callf	d_smul
 615  0131 96            	ldw	x,sp
 616  0132 5c            	incw	x
 617  0133 8d000000      	callf	d_rtol
 620  0137 96            	ldw	x,sp
 621  0138 1c0007        	addw	x,#OFST-7
 622  013b 8d000000      	callf	d_ltor
 624  013f 96            	ldw	x,sp
 625  0140 5c            	incw	x
 626  0141 8d000000      	callf	d_lsub
 628  0145 a604          	ld	a,#4
 629  0147 8d000000      	callf	d_llsh
 631  014b ae0004        	ldw	x,#L27
 632  014e 8d000000      	callf	d_ludv
 634  0152 b603          	ld	a,c_lreg+3
 635  0154 a40f          	and	a,#15
 636  0156 6b05          	ld	(OFST-9,sp),a
 638                     ; 128   BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 640  0158 1e0d          	ldw	x,(OFST-1,sp)
 641  015a 54            	srlw	x
 642  015b 54            	srlw	x
 643  015c 54            	srlw	x
 644  015d 54            	srlw	x
 645  015e 01            	rrwa	x,a
 646  015f a4f0          	and	a,#240
 647  0161 6b06          	ld	(OFST-8,sp),a
 649                     ; 130   UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 651  0163 1a05          	or	a,(OFST-9,sp)
 652  0165 c75243        	ld	21059,a
 653                     ; 132   UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
 655  0168 7b0e          	ld	a,(OFST+0,sp)
 656  016a c75242        	ld	21058,a
 657                     ; 135   UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
 659  016d c65245        	ld	a,21061
 660  0170 a4f3          	and	a,#243
 661  0172 c75245        	ld	21061,a
 662                     ; 137   UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
 664  0175 c65246        	ld	a,21062
 665  0178 a4f8          	and	a,#248
 666  017a c75246        	ld	21062,a
 667                     ; 139   UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
 667                     ; 140     UART2_CR3_CPHA | UART2_CR3_LBCL));
 669  017d 7b19          	ld	a,(OFST+11,sp)
 670  017f a407          	and	a,#7
 671  0181 ca5246        	or	a,21062
 672  0184 c75246        	ld	21062,a
 673                     ; 142   if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
 675  0187 7b1a          	ld	a,(OFST+12,sp)
 676  0189 a504          	bcp	a,#4
 677  018b 2706          	jreq	L502
 678                     ; 145     UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
 680  018d 72165245      	bset	21061,#3
 682  0191 2004          	jra	L702
 683  0193               L502:
 684                     ; 150     UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
 686  0193 72175245      	bres	21061,#3
 687  0197               L702:
 688                     ; 152   if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
 690  0197 a508          	bcp	a,#8
 691  0199 2706          	jreq	L112
 692                     ; 155     UART2->CR2 |= (uint8_t)UART2_CR2_REN;
 694  019b 72145245      	bset	21061,#2
 696  019f 2004          	jra	L312
 697  01a1               L112:
 698                     ; 160     UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
 700  01a1 72155245      	bres	21061,#2
 701  01a5               L312:
 702                     ; 164   if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
 704  01a5 7b19          	ld	a,(OFST+11,sp)
 705  01a7 2a06          	jrpl	L512
 706                     ; 167     UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
 708  01a9 72175246      	bres	21062,#3
 710  01ad 2008          	jra	L712
 711  01af               L512:
 712                     ; 171     UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
 714  01af a408          	and	a,#8
 715  01b1 ca5246        	or	a,21062
 716  01b4 c75246        	ld	21062,a
 717  01b7               L712:
 718                     ; 173 }
 721  01b7 5b0e          	addw	sp,#14
 722  01b9 87            	retf	
 723  01ba               LC001:
 724  01ba 89            	pushw	x
 725  01bb 5f            	clrw	x
 726  01bc 89            	pushw	x
 727  01bd ae0008        	ldw	x,#L302
 728  01c0 8d000000      	callf	f_assert_failed
 730  01c4 5b04          	addw	sp,#4
 731  01c6 87            	retf	
 732  01c7               LC002:
 733  01c7 1c0012        	addw	x,#OFST+4
 734  01ca 8d000000      	callf	d_ltor
 736  01ce a604          	ld	a,#4
 737  01d0 ac000000      	jpf	d_llsh
 791                     ; 181 void UART2_Cmd(FunctionalState NewState)
 791                     ; 182 {
 792                     .text:	section	.text,new
 793  0000               f_UART2_Cmd:
 797                     ; 183   if (NewState != DISABLE)
 799  0000 4d            	tnz	a
 800  0001 2705          	jreq	L742
 801                     ; 186     UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
 803  0003 721b5244      	bres	21060,#5
 806  0007 87            	retf	
 807  0008               L742:
 808                     ; 191     UART2->CR1 |= UART2_CR1_UARTD; 
 810  0008 721a5244      	bset	21060,#5
 811                     ; 193 }
 814  000c 87            	retf	
 946                     ; 210 void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
 946                     ; 211 {
 947                     .text:	section	.text,new
 948  0000               f_UART2_ITConfig:
 950  0000 89            	pushw	x
 951  0001 89            	pushw	x
 952       00000002      OFST:	set	2
 955                     ; 212   uint8_t uartreg = 0, itpos = 0x00;
 959                     ; 215   assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
 961  0002 a30100        	cpw	x,#256
 962  0005 2725          	jreq	L401
 963  0007 a30277        	cpw	x,#631
 964  000a 2720          	jreq	L401
 965  000c a30266        	cpw	x,#614
 966  000f 271b          	jreq	L401
 967  0011 a30205        	cpw	x,#517
 968  0014 2716          	jreq	L401
 969  0016 a30244        	cpw	x,#580
 970  0019 2711          	jreq	L401
 971  001b a30412        	cpw	x,#1042
 972  001e 270c          	jreq	L401
 973  0020 a30346        	cpw	x,#838
 974  0023 2707          	jreq	L401
 975  0025 ae00d7        	ldw	x,#215
 976  0028 8db800b8      	callf	LC007
 977  002c               L401:
 978                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 980  002c 7b08          	ld	a,(OFST+6,sp)
 981  002e 270a          	jreq	L411
 982  0030 4a            	dec	a
 983  0031 2707          	jreq	L411
 984  0033 ae00d8        	ldw	x,#216
 985  0036 8db800b8      	callf	LC007
 986  003a               L411:
 987                     ; 219   uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
 989  003a 7b03          	ld	a,(OFST+1,sp)
 990  003c 6b01          	ld	(OFST-1,sp),a
 992                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
 994  003e 7b04          	ld	a,(OFST+2,sp)
 995  0040 a40f          	and	a,#15
 996  0042 5f            	clrw	x
 997  0043 97            	ld	xl,a
 998  0044 a601          	ld	a,#1
 999  0046 5d            	tnzw	x
1000  0047 2704          	jreq	L021
1001  0049               L221:
1002  0049 48            	sll	a
1003  004a 5a            	decw	x
1004  004b 26fc          	jrne	L221
1005  004d               L021:
1006  004d 6b02          	ld	(OFST+0,sp),a
1008                     ; 224   if (NewState != DISABLE)
1010  004f 7b08          	ld	a,(OFST+6,sp)
1011  0051 272a          	jreq	L333
1012                     ; 227     if (uartreg == 0x01)
1014  0053 7b01          	ld	a,(OFST-1,sp)
1015  0055 a101          	cp	a,#1
1016  0057 2607          	jrne	L533
1017                     ; 229       UART2->CR1 |= itpos;
1019  0059 c65244        	ld	a,21060
1020  005c 1a02          	or	a,(OFST+0,sp)
1022  005e 2029          	jpf	LC005
1023  0060               L533:
1024                     ; 231     else if (uartreg == 0x02)
1026  0060 a102          	cp	a,#2
1027  0062 2607          	jrne	L143
1028                     ; 233       UART2->CR2 |= itpos;
1030  0064 c65245        	ld	a,21061
1031  0067 1a02          	or	a,(OFST+0,sp)
1033  0069 202d          	jpf	LC004
1034  006b               L143:
1035                     ; 235     else if (uartreg == 0x03)
1037  006b a103          	cp	a,#3
1038  006d 2607          	jrne	L543
1039                     ; 237       UART2->CR4 |= itpos;
1041  006f c65247        	ld	a,21063
1042  0072 1a02          	or	a,(OFST+0,sp)
1044  0074 2031          	jpf	LC006
1045  0076               L543:
1046                     ; 241       UART2->CR6 |= itpos;
1048  0076 c65249        	ld	a,21065
1049  0079 1a02          	or	a,(OFST+0,sp)
1050  007b 2035          	jpf	LC003
1051  007d               L333:
1052                     ; 247     if (uartreg == 0x01)
1054  007d 7b01          	ld	a,(OFST-1,sp)
1055  007f a101          	cp	a,#1
1056  0081 260b          	jrne	L353
1057                     ; 249       UART2->CR1 &= (uint8_t)(~itpos);
1059  0083 7b02          	ld	a,(OFST+0,sp)
1060  0085 43            	cpl	a
1061  0086 c45244        	and	a,21060
1062  0089               LC005:
1063  0089 c75244        	ld	21060,a
1065  008c 2027          	jra	L153
1066  008e               L353:
1067                     ; 251     else if (uartreg == 0x02)
1069  008e a102          	cp	a,#2
1070  0090 260b          	jrne	L753
1071                     ; 253       UART2->CR2 &= (uint8_t)(~itpos);
1073  0092 7b02          	ld	a,(OFST+0,sp)
1074  0094 43            	cpl	a
1075  0095 c45245        	and	a,21061
1076  0098               LC004:
1077  0098 c75245        	ld	21061,a
1079  009b 2018          	jra	L153
1080  009d               L753:
1081                     ; 255     else if (uartreg == 0x03)
1083  009d a103          	cp	a,#3
1084  009f 260b          	jrne	L363
1085                     ; 257       UART2->CR4 &= (uint8_t)(~itpos);
1087  00a1 7b02          	ld	a,(OFST+0,sp)
1088  00a3 43            	cpl	a
1089  00a4 c45247        	and	a,21063
1090  00a7               LC006:
1091  00a7 c75247        	ld	21063,a
1093  00aa 2009          	jra	L153
1094  00ac               L363:
1095                     ; 261       UART2->CR6 &= (uint8_t)(~itpos);
1097  00ac 7b02          	ld	a,(OFST+0,sp)
1098  00ae 43            	cpl	a
1099  00af c45249        	and	a,21065
1100  00b2               LC003:
1101  00b2 c75249        	ld	21065,a
1102  00b5               L153:
1103                     ; 264 }
1106  00b5 5b04          	addw	sp,#4
1107  00b7 87            	retf	
1108  00b8               LC007:
1109  00b8 89            	pushw	x
1110  00b9 5f            	clrw	x
1111  00ba 89            	pushw	x
1112  00bb ae0008        	ldw	x,#L302
1113  00be 8d000000      	callf	f_assert_failed
1115  00c2 5b04          	addw	sp,#4
1116  00c4 87            	retf	
1173                     ; 272 void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
1173                     ; 273 {
1174                     .text:	section	.text,new
1175  0000               f_UART2_IrDAConfig:
1177  0000 88            	push	a
1178       00000000      OFST:	set	0
1181                     ; 274   assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
1183  0001 a101          	cp	a,#1
1184  0003 2712          	jreq	L231
1185  0005 4d            	tnz	a
1186  0006 270f          	jreq	L231
1187  0008 ae0112        	ldw	x,#274
1188  000b 89            	pushw	x
1189  000c 5f            	clrw	x
1190  000d 89            	pushw	x
1191  000e ae0008        	ldw	x,#L302
1192  0011 8d000000      	callf	f_assert_failed
1194  0015 5b04          	addw	sp,#4
1195  0017               L231:
1196                     ; 276   if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
1198  0017 7b01          	ld	a,(OFST+1,sp)
1199  0019 2706          	jreq	L514
1200                     ; 278     UART2->CR5 |= UART2_CR5_IRLP;
1202  001b 72145248      	bset	21064,#2
1204  001f 2004          	jra	L714
1205  0021               L514:
1206                     ; 282     UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
1208  0021 72155248      	bres	21064,#2
1209  0025               L714:
1210                     ; 284 }
1213  0025 84            	pop	a
1214  0026 87            	retf	
1249                     ; 292 void UART2_IrDACmd(FunctionalState NewState)
1249                     ; 293 {
1250                     .text:	section	.text,new
1251  0000               f_UART2_IrDACmd:
1253  0000 88            	push	a
1254       00000000      OFST:	set	0
1257                     ; 295   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1259  0001 4d            	tnz	a
1260  0002 2712          	jreq	L441
1261  0004 4a            	dec	a
1262  0005 270f          	jreq	L441
1263  0007 ae0127        	ldw	x,#295
1264  000a 89            	pushw	x
1265  000b 5f            	clrw	x
1266  000c 89            	pushw	x
1267  000d ae0008        	ldw	x,#L302
1268  0010 8d000000      	callf	f_assert_failed
1270  0014 5b04          	addw	sp,#4
1271  0016               L441:
1272                     ; 297   if (NewState != DISABLE)
1274  0016 7b01          	ld	a,(OFST+1,sp)
1275  0018 2706          	jreq	L734
1276                     ; 300     UART2->CR5 |= UART2_CR5_IREN;
1278  001a 72125248      	bset	21064,#1
1280  001e 2004          	jra	L144
1281  0020               L734:
1282                     ; 305     UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
1284  0020 72135248      	bres	21064,#1
1285  0024               L144:
1286                     ; 307 }
1289  0024 84            	pop	a
1290  0025 87            	retf	
1349                     ; 316 void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
1349                     ; 317 {
1350                     .text:	section	.text,new
1351  0000               f_UART2_LINBreakDetectionConfig:
1353  0000 88            	push	a
1354       00000000      OFST:	set	0
1357                     ; 319   assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
1359  0001 4d            	tnz	a
1360  0002 2712          	jreq	L651
1361  0004 4a            	dec	a
1362  0005 270f          	jreq	L651
1363  0007 ae013f        	ldw	x,#319
1364  000a 89            	pushw	x
1365  000b 5f            	clrw	x
1366  000c 89            	pushw	x
1367  000d ae0008        	ldw	x,#L302
1368  0010 8d000000      	callf	f_assert_failed
1370  0014 5b04          	addw	sp,#4
1371  0016               L651:
1372                     ; 321   if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
1374  0016 7b01          	ld	a,(OFST+1,sp)
1375  0018 2706          	jreq	L174
1376                     ; 323     UART2->CR4 |= UART2_CR4_LBDL;
1378  001a 721a5247      	bset	21063,#5
1380  001e 2004          	jra	L374
1381  0020               L174:
1382                     ; 327     UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
1384  0020 721b5247      	bres	21063,#5
1385  0024               L374:
1386                     ; 329 }
1389  0024 84            	pop	a
1390  0025 87            	retf	
1511                     ; 341 void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
1511                     ; 342                      UART2_LinAutosync_TypeDef UART2_Autosync, 
1511                     ; 343                      UART2_LinDivUp_TypeDef UART2_DivUp)
1511                     ; 344 {
1512                     .text:	section	.text,new
1513  0000               f_UART2_LINConfig:
1515  0000 89            	pushw	x
1516       00000000      OFST:	set	0
1519                     ; 346   assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
1521  0001 9e            	ld	a,xh
1522  0002 4d            	tnz	a
1523  0003 270b          	jreq	L071
1524  0005 9e            	ld	a,xh
1525  0006 4a            	dec	a
1526  0007 2707          	jreq	L071
1527  0009 ae015a        	ldw	x,#346
1528  000c 8d5a005a      	callf	LC008
1529  0010               L071:
1530                     ; 347   assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
1532  0010 7b02          	ld	a,(OFST+2,sp)
1533  0012 4a            	dec	a
1534  0013 270b          	jreq	L002
1535  0015 7b02          	ld	a,(OFST+2,sp)
1536  0017 2707          	jreq	L002
1537  0019 ae015b        	ldw	x,#347
1538  001c 8d5a005a      	callf	LC008
1539  0020               L002:
1540                     ; 348   assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
1542  0020 7b06          	ld	a,(OFST+6,sp)
1543  0022 270a          	jreq	L012
1544  0024 4a            	dec	a
1545  0025 2707          	jreq	L012
1546  0027 ae015c        	ldw	x,#348
1547  002a 8d5a005a      	callf	LC008
1548  002e               L012:
1549                     ; 350   if (UART2_Mode != UART2_LIN_MODE_MASTER)
1551  002e 7b01          	ld	a,(OFST+1,sp)
1552  0030 2706          	jreq	L355
1553                     ; 352     UART2->CR6 |=  UART2_CR6_LSLV;
1555  0032 721a5249      	bset	21065,#5
1557  0036 2004          	jra	L555
1558  0038               L355:
1559                     ; 356     UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
1561  0038 721b5249      	bres	21065,#5
1562  003c               L555:
1563                     ; 359   if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
1565  003c 7b02          	ld	a,(OFST+2,sp)
1566  003e 2706          	jreq	L755
1567                     ; 361     UART2->CR6 |=  UART2_CR6_LASE ;
1569  0040 72185249      	bset	21065,#4
1571  0044 2004          	jra	L165
1572  0046               L755:
1573                     ; 365     UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
1575  0046 72195249      	bres	21065,#4
1576  004a               L165:
1577                     ; 368   if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
1579  004a 7b06          	ld	a,(OFST+6,sp)
1580  004c 2706          	jreq	L365
1581                     ; 370     UART2->CR6 |=  UART2_CR6_LDUM;
1583  004e 721e5249      	bset	21065,#7
1585  0052 2004          	jra	L565
1586  0054               L365:
1587                     ; 374     UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
1589  0054 721f5249      	bres	21065,#7
1590  0058               L565:
1591                     ; 376 }
1594  0058 85            	popw	x
1595  0059 87            	retf	
1596  005a               LC008:
1597  005a 89            	pushw	x
1598  005b 5f            	clrw	x
1599  005c 89            	pushw	x
1600  005d ae0008        	ldw	x,#L302
1601  0060 8d000000      	callf	f_assert_failed
1603  0064 5b04          	addw	sp,#4
1604  0066 87            	retf	
1639                     ; 384 void UART2_LINCmd(FunctionalState NewState)
1639                     ; 385 {
1640                     .text:	section	.text,new
1641  0000               f_UART2_LINCmd:
1643  0000 88            	push	a
1644       00000000      OFST:	set	0
1647                     ; 386   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1649  0001 4d            	tnz	a
1650  0002 2712          	jreq	L222
1651  0004 4a            	dec	a
1652  0005 270f          	jreq	L222
1653  0007 ae0182        	ldw	x,#386
1654  000a 89            	pushw	x
1655  000b 5f            	clrw	x
1656  000c 89            	pushw	x
1657  000d ae0008        	ldw	x,#L302
1658  0010 8d000000      	callf	f_assert_failed
1660  0014 5b04          	addw	sp,#4
1661  0016               L222:
1662                     ; 388   if (NewState != DISABLE)
1664  0016 7b01          	ld	a,(OFST+1,sp)
1665  0018 2706          	jreq	L506
1666                     ; 391     UART2->CR3 |= UART2_CR3_LINEN;
1668  001a 721c5246      	bset	21062,#6
1670  001e 2004          	jra	L706
1671  0020               L506:
1672                     ; 396     UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
1674  0020 721d5246      	bres	21062,#6
1675  0024               L706:
1676                     ; 398 }
1679  0024 84            	pop	a
1680  0025 87            	retf	
1715                     ; 406 void UART2_SmartCardCmd(FunctionalState NewState)
1715                     ; 407 {
1716                     .text:	section	.text,new
1717  0000               f_UART2_SmartCardCmd:
1719  0000 88            	push	a
1720       00000000      OFST:	set	0
1723                     ; 409   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1725  0001 4d            	tnz	a
1726  0002 2712          	jreq	L432
1727  0004 4a            	dec	a
1728  0005 270f          	jreq	L432
1729  0007 ae0199        	ldw	x,#409
1730  000a 89            	pushw	x
1731  000b 5f            	clrw	x
1732  000c 89            	pushw	x
1733  000d ae0008        	ldw	x,#L302
1734  0010 8d000000      	callf	f_assert_failed
1736  0014 5b04          	addw	sp,#4
1737  0016               L432:
1738                     ; 411   if (NewState != DISABLE)
1740  0016 7b01          	ld	a,(OFST+1,sp)
1741  0018 2706          	jreq	L726
1742                     ; 414     UART2->CR5 |= UART2_CR5_SCEN;
1744  001a 721a5248      	bset	21064,#5
1746  001e 2004          	jra	L136
1747  0020               L726:
1748                     ; 419     UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
1750  0020 721b5248      	bres	21064,#5
1751  0024               L136:
1752                     ; 421 }
1755  0024 84            	pop	a
1756  0025 87            	retf	
1792                     ; 429 void UART2_SmartCardNACKCmd(FunctionalState NewState)
1792                     ; 430 {
1793                     .text:	section	.text,new
1794  0000               f_UART2_SmartCardNACKCmd:
1796  0000 88            	push	a
1797       00000000      OFST:	set	0
1800                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1802  0001 4d            	tnz	a
1803  0002 2712          	jreq	L642
1804  0004 4a            	dec	a
1805  0005 270f          	jreq	L642
1806  0007 ae01b0        	ldw	x,#432
1807  000a 89            	pushw	x
1808  000b 5f            	clrw	x
1809  000c 89            	pushw	x
1810  000d ae0008        	ldw	x,#L302
1811  0010 8d000000      	callf	f_assert_failed
1813  0014 5b04          	addw	sp,#4
1814  0016               L642:
1815                     ; 434   if (NewState != DISABLE)
1817  0016 7b01          	ld	a,(OFST+1,sp)
1818  0018 2706          	jreq	L156
1819                     ; 437     UART2->CR5 |= UART2_CR5_NACK;
1821  001a 72185248      	bset	21064,#4
1823  001e 2004          	jra	L356
1824  0020               L156:
1825                     ; 442     UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
1827  0020 72195248      	bres	21064,#4
1828  0024               L356:
1829                     ; 444 }
1832  0024 84            	pop	a
1833  0025 87            	retf	
1890                     ; 452 void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
1890                     ; 453 {
1891                     .text:	section	.text,new
1892  0000               f_UART2_WakeUpConfig:
1894  0000 88            	push	a
1895       00000000      OFST:	set	0
1898                     ; 454   assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
1900  0001 4d            	tnz	a
1901  0002 2713          	jreq	L062
1902  0004 a108          	cp	a,#8
1903  0006 270f          	jreq	L062
1904  0008 ae01c6        	ldw	x,#454
1905  000b 89            	pushw	x
1906  000c 5f            	clrw	x
1907  000d 89            	pushw	x
1908  000e ae0008        	ldw	x,#L302
1909  0011 8d000000      	callf	f_assert_failed
1911  0015 5b04          	addw	sp,#4
1912  0017               L062:
1913                     ; 456   UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
1915  0017 72175244      	bres	21060,#3
1916                     ; 457   UART2->CR1 |= (uint8_t)UART2_WakeUp;
1918  001b c65244        	ld	a,21060
1919  001e 1a01          	or	a,(OFST+1,sp)
1920  0020 c75244        	ld	21060,a
1921                     ; 458 }
1924  0023 84            	pop	a
1925  0024 87            	retf	
1961                     ; 466 void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
1961                     ; 467 {
1962                     .text:	section	.text,new
1963  0000               f_UART2_ReceiverWakeUpCmd:
1965  0000 88            	push	a
1966       00000000      OFST:	set	0
1969                     ; 468   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1971  0001 4d            	tnz	a
1972  0002 2712          	jreq	L272
1973  0004 4a            	dec	a
1974  0005 270f          	jreq	L272
1975  0007 ae01d4        	ldw	x,#468
1976  000a 89            	pushw	x
1977  000b 5f            	clrw	x
1978  000c 89            	pushw	x
1979  000d ae0008        	ldw	x,#L302
1980  0010 8d000000      	callf	f_assert_failed
1982  0014 5b04          	addw	sp,#4
1983  0016               L272:
1984                     ; 470   if (NewState != DISABLE)
1986  0016 7b01          	ld	a,(OFST+1,sp)
1987  0018 2706          	jreq	L127
1988                     ; 473     UART2->CR2 |= UART2_CR2_RWU;
1990  001a 72125245      	bset	21061,#1
1992  001e 2004          	jra	L327
1993  0020               L127:
1994                     ; 478     UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
1996  0020 72135245      	bres	21061,#1
1997  0024               L327:
1998                     ; 480 }
2001  0024 84            	pop	a
2002  0025 87            	retf	
2024                     ; 487 uint8_t UART2_ReceiveData8(void)
2024                     ; 488 {
2025                     .text:	section	.text,new
2026  0000               f_UART2_ReceiveData8:
2030                     ; 489   return ((uint8_t)UART2->DR);
2032  0000 c65241        	ld	a,21057
2035  0003 87            	retf	
2068                     ; 497 uint16_t UART2_ReceiveData9(void)
2068                     ; 498 {
2069                     .text:	section	.text,new
2070  0000               f_UART2_ReceiveData9:
2072  0000 89            	pushw	x
2073       00000002      OFST:	set	2
2076                     ; 499   uint16_t temp = 0;
2078                     ; 501   temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
2080  0001 c65244        	ld	a,21060
2081  0004 a480          	and	a,#128
2082  0006 5f            	clrw	x
2083  0007 02            	rlwa	x,a
2084  0008 58            	sllw	x
2085  0009 1f01          	ldw	(OFST-1,sp),x
2087                     ; 503   return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
2089  000b c65241        	ld	a,21057
2090  000e 5f            	clrw	x
2091  000f 97            	ld	xl,a
2092  0010 01            	rrwa	x,a
2093  0011 1a02          	or	a,(OFST+0,sp)
2094  0013 01            	rrwa	x,a
2095  0014 1a01          	or	a,(OFST-1,sp)
2096  0016 a401          	and	a,#1
2097  0018 01            	rrwa	x,a
2100  0019 5b02          	addw	sp,#2
2101  001b 87            	retf	
2134                     ; 511 void UART2_SendData8(uint8_t Data)
2134                     ; 512 {
2135                     .text:	section	.text,new
2136  0000               f_UART2_SendData8:
2140                     ; 514   UART2->DR = Data;
2142  0000 c75241        	ld	21057,a
2143                     ; 515 }
2146  0003 87            	retf	
2179                     ; 522 void UART2_SendData9(uint16_t Data)
2179                     ; 523 {
2180                     .text:	section	.text,new
2181  0000               f_UART2_SendData9:
2183  0000 89            	pushw	x
2184       00000000      OFST:	set	0
2187                     ; 525   UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
2189  0001 721d5244      	bres	21060,#6
2190                     ; 528   UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
2192  0005 54            	srlw	x
2193  0006 54            	srlw	x
2194  0007 9f            	ld	a,xl
2195  0008 a440          	and	a,#64
2196  000a ca5244        	or	a,21060
2197  000d c75244        	ld	21060,a
2198                     ; 531   UART2->DR   = (uint8_t)(Data);                    
2200  0010 7b02          	ld	a,(OFST+2,sp)
2201  0012 c75241        	ld	21057,a
2202                     ; 532 }
2205  0015 85            	popw	x
2206  0016 87            	retf	
2228                     ; 539 void UART2_SendBreak(void)
2228                     ; 540 {
2229                     .text:	section	.text,new
2230  0000               f_UART2_SendBreak:
2234                     ; 541   UART2->CR2 |= UART2_CR2_SBK;
2236  0000 72105245      	bset	21061,#0
2237                     ; 542 }
2240  0004 87            	retf	
2274                     ; 549 void UART2_SetAddress(uint8_t UART2_Address)
2274                     ; 550 {
2275                     .text:	section	.text,new
2276  0000               f_UART2_SetAddress:
2278  0000 88            	push	a
2279       00000000      OFST:	set	0
2282                     ; 552   assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
2284  0001 a110          	cp	a,#16
2285  0003 250f          	jrult	L413
2286  0005 ae0228        	ldw	x,#552
2287  0008 89            	pushw	x
2288  0009 5f            	clrw	x
2289  000a 89            	pushw	x
2290  000b ae0008        	ldw	x,#L302
2291  000e 8d000000      	callf	f_assert_failed
2293  0012 5b04          	addw	sp,#4
2294  0014               L413:
2295                     ; 555   UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
2297  0014 c65247        	ld	a,21063
2298  0017 a4f0          	and	a,#240
2299  0019 c75247        	ld	21063,a
2300                     ; 557   UART2->CR4 |= UART2_Address;
2302  001c c65247        	ld	a,21063
2303  001f 1a01          	or	a,(OFST+1,sp)
2304  0021 c75247        	ld	21063,a
2305                     ; 558 }
2308  0024 84            	pop	a
2309  0025 87            	retf	
2342                     ; 566 void UART2_SetGuardTime(uint8_t UART2_GuardTime)
2342                     ; 567 {
2343                     .text:	section	.text,new
2344  0000               f_UART2_SetGuardTime:
2348                     ; 569   UART2->GTR = UART2_GuardTime;
2350  0000 c7524a        	ld	21066,a
2351                     ; 570 }
2354  0003 87            	retf	
2387                     ; 594 void UART2_SetPrescaler(uint8_t UART2_Prescaler)
2387                     ; 595 {
2388                     .text:	section	.text,new
2389  0000               f_UART2_SetPrescaler:
2393                     ; 597   UART2->PSCR = UART2_Prescaler;
2395  0000 c7524b        	ld	21067,a
2396                     ; 598 }
2399  0003 87            	retf	
2556                     ; 606 FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
2556                     ; 607 {
2557                     .text:	section	.text,new
2558  0000               f_UART2_GetFlagStatus:
2560  0000 89            	pushw	x
2561  0001 88            	push	a
2562       00000001      OFST:	set	1
2565                     ; 608   FlagStatus status = RESET;
2567                     ; 611   assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
2569  0002 a30080        	cpw	x,#128
2570  0005 2746          	jreq	L233
2571  0007 a30040        	cpw	x,#64
2572  000a 2741          	jreq	L233
2573  000c a30020        	cpw	x,#32
2574  000f 273c          	jreq	L233
2575  0011 a30010        	cpw	x,#16
2576  0014 2737          	jreq	L233
2577  0016 a30008        	cpw	x,#8
2578  0019 2732          	jreq	L233
2579  001b a30004        	cpw	x,#4
2580  001e 272d          	jreq	L233
2581  0020 a30002        	cpw	x,#2
2582  0023 2728          	jreq	L233
2583  0025 a30001        	cpw	x,#1
2584  0028 2723          	jreq	L233
2585  002a a30101        	cpw	x,#257
2586  002d 271e          	jreq	L233
2587  002f a30301        	cpw	x,#769
2588  0032 2719          	jreq	L233
2589  0034 a30302        	cpw	x,#770
2590  0037 2714          	jreq	L233
2591  0039 a30210        	cpw	x,#528
2592  003c 270f          	jreq	L233
2593  003e ae0263        	ldw	x,#611
2594  0041 89            	pushw	x
2595  0042 5f            	clrw	x
2596  0043 89            	pushw	x
2597  0044 ae0008        	ldw	x,#L302
2598  0047 8d000000      	callf	f_assert_failed
2600  004b 5b04          	addw	sp,#4
2601  004d               L233:
2602                     ; 614   if (UART2_FLAG == UART2_FLAG_LBDF)
2604  004d 1e02          	ldw	x,(OFST+1,sp)
2605  004f a30210        	cpw	x,#528
2606  0052 2609          	jrne	L7511
2607                     ; 616     if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2609  0054 c65247        	ld	a,21063
2610  0057 1503          	bcp	a,(OFST+2,sp)
2611  0059 2725          	jreq	L3021
2612                     ; 619       status = SET;
2614  005b 201f          	jpf	LC010
2615                     ; 624       status = RESET;
2616  005d               L7511:
2617                     ; 627   else if (UART2_FLAG == UART2_FLAG_SBK)
2619  005d a30101        	cpw	x,#257
2620  0060 2609          	jrne	L7611
2621                     ; 629     if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2623  0062 c65245        	ld	a,21061
2624  0065 1503          	bcp	a,(OFST+2,sp)
2625  0067 2717          	jreq	L3021
2626                     ; 632       status = SET;
2628  0069 2011          	jpf	LC010
2629                     ; 637       status = RESET;
2630  006b               L7611:
2631                     ; 640   else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
2633  006b a30302        	cpw	x,#770
2634  006e 2705          	jreq	L1021
2636  0070 a30301        	cpw	x,#769
2637  0073 260f          	jrne	L7711
2638  0075               L1021:
2639                     ; 642     if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2641  0075 c65249        	ld	a,21065
2642  0078 1503          	bcp	a,(OFST+2,sp)
2643  007a 2704          	jreq	L3021
2644                     ; 645       status = SET;
2646  007c               LC010:
2650  007c a601          	ld	a,#1
2653  007e 2001          	jra	L5611
2654  0080               L3021:
2655                     ; 650       status = RESET;
2660  0080 4f            	clr	a
2662  0081               L5611:
2663                     ; 668   return  status;
2667  0081 5b03          	addw	sp,#3
2668  0083 87            	retf	
2669  0084               L7711:
2670                     ; 655     if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2672  0084 c65240        	ld	a,21056
2673  0087 1503          	bcp	a,(OFST+2,sp)
2674  0089 27f5          	jreq	L3021
2675                     ; 658       status = SET;
2677  008b 20ef          	jpf	LC010
2678                     ; 663       status = RESET;
2713                     ; 699 void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
2713                     ; 700 {
2714                     .text:	section	.text,new
2715  0000               f_UART2_ClearFlag:
2717  0000 89            	pushw	x
2718       00000000      OFST:	set	0
2721                     ; 701   assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
2723  0001 a30020        	cpw	x,#32
2724  0004 271e          	jreq	L443
2725  0006 a30302        	cpw	x,#770
2726  0009 2719          	jreq	L443
2727  000b a30301        	cpw	x,#769
2728  000e 2714          	jreq	L443
2729  0010 a30210        	cpw	x,#528
2730  0013 270f          	jreq	L443
2731  0015 ae02bd        	ldw	x,#701
2732  0018 89            	pushw	x
2733  0019 5f            	clrw	x
2734  001a 89            	pushw	x
2735  001b ae0008        	ldw	x,#L302
2736  001e 8d000000      	callf	f_assert_failed
2738  0022 5b04          	addw	sp,#4
2739  0024               L443:
2740                     ; 704   if (UART2_FLAG == UART2_FLAG_RXNE)
2742  0024 1e01          	ldw	x,(OFST+1,sp)
2743  0026 a30020        	cpw	x,#32
2744  0029 2606          	jrne	L3321
2745                     ; 706     UART2->SR = (uint8_t)~(UART2_SR_RXNE);
2747  002b 35df5240      	mov	21056,#223
2749  002f 201a          	jra	L5321
2750  0031               L3321:
2751                     ; 709   else if (UART2_FLAG == UART2_FLAG_LBDF)
2753  0031 a30210        	cpw	x,#528
2754  0034 2606          	jrne	L7321
2755                     ; 711     UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
2757  0036 72195247      	bres	21063,#4
2759  003a 200f          	jra	L5321
2760  003c               L7321:
2761                     ; 714   else if (UART2_FLAG == UART2_FLAG_LHDF)
2763  003c a30302        	cpw	x,#770
2764  003f 2606          	jrne	L3421
2765                     ; 716     UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
2767  0041 72135249      	bres	21065,#1
2769  0045 2004          	jra	L5321
2770  0047               L3421:
2771                     ; 721     UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
2773  0047 72115249      	bres	21065,#0
2774  004b               L5321:
2775                     ; 723 }
2778  004b 85            	popw	x
2779  004c 87            	retf	
2861                     ; 738 ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
2861                     ; 739 {
2862                     .text:	section	.text,new
2863  0000               f_UART2_GetITStatus:
2865  0000 89            	pushw	x
2866  0001 89            	pushw	x
2867       00000002      OFST:	set	2
2870                     ; 740   ITStatus pendingbitstatus = RESET;
2872                     ; 741   uint8_t itpos = 0;
2874                     ; 742   uint8_t itmask1 = 0;
2876                     ; 743   uint8_t itmask2 = 0;
2878                     ; 744   uint8_t enablestatus = 0;
2880                     ; 747   assert_param(IS_UART2_GET_IT_OK(UART2_IT));
2882  0002 a30277        	cpw	x,#631
2883  0005 2732          	jreq	L653
2884  0007 a30266        	cpw	x,#614
2885  000a 272d          	jreq	L653
2886  000c a30255        	cpw	x,#597
2887  000f 2728          	jreq	L653
2888  0011 a30244        	cpw	x,#580
2889  0014 2723          	jreq	L653
2890  0016 a30235        	cpw	x,#565
2891  0019 271e          	jreq	L653
2892  001b a30346        	cpw	x,#838
2893  001e 2719          	jreq	L653
2894  0020 a30412        	cpw	x,#1042
2895  0023 2714          	jreq	L653
2896  0025 a30100        	cpw	x,#256
2897  0028 270f          	jreq	L653
2898  002a ae02eb        	ldw	x,#747
2899  002d 89            	pushw	x
2900  002e 5f            	clrw	x
2901  002f 89            	pushw	x
2902  0030 ae0008        	ldw	x,#L302
2903  0033 8d000000      	callf	f_assert_failed
2905  0037 5b04          	addw	sp,#4
2906  0039               L653:
2907                     ; 750   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
2909  0039 7b04          	ld	a,(OFST+2,sp)
2910  003b a40f          	and	a,#15
2911  003d 5f            	clrw	x
2912  003e 97            	ld	xl,a
2913  003f a601          	ld	a,#1
2914  0041 5d            	tnzw	x
2915  0042 2704          	jreq	L263
2916  0044               L463:
2917  0044 48            	sll	a
2918  0045 5a            	decw	x
2919  0046 26fc          	jrne	L463
2920  0048               L263:
2921  0048 6b01          	ld	(OFST-1,sp),a
2923                     ; 752   itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
2925  004a 7b04          	ld	a,(OFST+2,sp)
2926  004c 4e            	swap	a
2927  004d a40f          	and	a,#15
2928  004f 6b02          	ld	(OFST+0,sp),a
2930                     ; 754   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2932  0051 5f            	clrw	x
2933  0052 97            	ld	xl,a
2934  0053 a601          	ld	a,#1
2935  0055 5d            	tnzw	x
2936  0056 2704          	jreq	L663
2937  0058               L073:
2938  0058 48            	sll	a
2939  0059 5a            	decw	x
2940  005a 26fc          	jrne	L073
2941  005c               L663:
2942  005c 6b02          	ld	(OFST+0,sp),a
2944                     ; 757   if (UART2_IT == UART2_IT_PE)
2946  005e 1e03          	ldw	x,(OFST+1,sp)
2947  0060 a30100        	cpw	x,#256
2948  0063 260c          	jrne	L1131
2949                     ; 760     enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
2951  0065 c65244        	ld	a,21060
2952  0068 1402          	and	a,(OFST+0,sp)
2953  006a 6b02          	ld	(OFST+0,sp),a
2955                     ; 763     if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
2957  006c c65240        	ld	a,21056
2959                     ; 766       pendingbitstatus = SET;
2961  006f 2020          	jpf	LC013
2962                     ; 771       pendingbitstatus = RESET;
2963  0071               L1131:
2964                     ; 774   else if (UART2_IT == UART2_IT_LBDF)
2966  0071 a30346        	cpw	x,#838
2967  0074 260c          	jrne	L1231
2968                     ; 777     enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
2970  0076 c65247        	ld	a,21063
2971  0079 1402          	and	a,(OFST+0,sp)
2972  007b 6b02          	ld	(OFST+0,sp),a
2974                     ; 779     if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2976  007d c65247        	ld	a,21063
2978                     ; 782       pendingbitstatus = SET;
2980  0080 200f          	jpf	LC013
2981                     ; 787       pendingbitstatus = RESET;
2982  0082               L1231:
2983                     ; 790   else if (UART2_IT == UART2_IT_LHDF)
2985  0082 a30412        	cpw	x,#1042
2986  0085 2616          	jrne	L1331
2987                     ; 793     enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
2989  0087 c65249        	ld	a,21065
2990  008a 1402          	and	a,(OFST+0,sp)
2991  008c 6b02          	ld	(OFST+0,sp),a
2993                     ; 795     if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
2995  008e c65249        	ld	a,21065
2997  0091               LC013:
2998  0091 1501          	bcp	a,(OFST-1,sp)
2999  0093 271a          	jreq	L1431
3000  0095 7b02          	ld	a,(OFST+0,sp)
3001  0097 2716          	jreq	L1431
3002                     ; 798       pendingbitstatus = SET;
3004  0099               LC012:
3008  0099 a601          	ld	a,#1
3011  009b 2013          	jra	L7131
3012                     ; 803       pendingbitstatus = RESET;
3013  009d               L1331:
3014                     ; 809     enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
3016  009d c65245        	ld	a,21061
3017  00a0 1402          	and	a,(OFST+0,sp)
3018  00a2 6b02          	ld	(OFST+0,sp),a
3020                     ; 811     if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
3022  00a4 c65240        	ld	a,21056
3023  00a7 1501          	bcp	a,(OFST-1,sp)
3024  00a9 2704          	jreq	L1431
3026  00ab 7b02          	ld	a,(OFST+0,sp)
3027                     ; 814       pendingbitstatus = SET;
3029  00ad 26ea          	jrne	LC012
3030  00af               L1431:
3031                     ; 819       pendingbitstatus = RESET;
3036  00af 4f            	clr	a
3038  00b0               L7131:
3039                     ; 823   return  pendingbitstatus;
3043  00b0 5b04          	addw	sp,#4
3044  00b2 87            	retf	
3080                     ; 852 void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
3080                     ; 853 {
3081                     .text:	section	.text,new
3082  0000               f_UART2_ClearITPendingBit:
3084  0000 89            	pushw	x
3085       00000000      OFST:	set	0
3088                     ; 854   assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
3090  0001 a30255        	cpw	x,#597
3091  0004 2719          	jreq	L004
3092  0006 a30412        	cpw	x,#1042
3093  0009 2714          	jreq	L004
3094  000b a30346        	cpw	x,#838
3095  000e 270f          	jreq	L004
3096  0010 ae0356        	ldw	x,#854
3097  0013 89            	pushw	x
3098  0014 5f            	clrw	x
3099  0015 89            	pushw	x
3100  0016 ae0008        	ldw	x,#L302
3101  0019 8d000000      	callf	f_assert_failed
3103  001d 5b04          	addw	sp,#4
3104  001f               L004:
3105                     ; 857   if (UART2_IT == UART2_IT_RXNE)
3107  001f 1e01          	ldw	x,(OFST+1,sp)
3108  0021 a30255        	cpw	x,#597
3109  0024 2606          	jrne	L3631
3110                     ; 859     UART2->SR = (uint8_t)~(UART2_SR_RXNE);
3112  0026 35df5240      	mov	21056,#223
3114  002a 200f          	jra	L5631
3115  002c               L3631:
3116                     ; 862   else if (UART2_IT == UART2_IT_LBDF)
3118  002c a30346        	cpw	x,#838
3119  002f 2606          	jrne	L7631
3120                     ; 864     UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
3122  0031 72195247      	bres	21063,#4
3124  0035 2004          	jra	L5631
3125  0037               L7631:
3126                     ; 869     UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
3128  0037 72135249      	bres	21065,#1
3129  003b               L5631:
3130                     ; 871 }
3133  003b 85            	popw	x
3134  003c 87            	retf	
3146                     	xdef	f_UART2_ClearITPendingBit
3147                     	xdef	f_UART2_GetITStatus
3148                     	xdef	f_UART2_ClearFlag
3149                     	xdef	f_UART2_GetFlagStatus
3150                     	xdef	f_UART2_SetPrescaler
3151                     	xdef	f_UART2_SetGuardTime
3152                     	xdef	f_UART2_SetAddress
3153                     	xdef	f_UART2_SendBreak
3154                     	xdef	f_UART2_SendData9
3155                     	xdef	f_UART2_SendData8
3156                     	xdef	f_UART2_ReceiveData9
3157                     	xdef	f_UART2_ReceiveData8
3158                     	xdef	f_UART2_ReceiverWakeUpCmd
3159                     	xdef	f_UART2_WakeUpConfig
3160                     	xdef	f_UART2_SmartCardNACKCmd
3161                     	xdef	f_UART2_SmartCardCmd
3162                     	xdef	f_UART2_LINCmd
3163                     	xdef	f_UART2_LINConfig
3164                     	xdef	f_UART2_LINBreakDetectionConfig
3165                     	xdef	f_UART2_IrDACmd
3166                     	xdef	f_UART2_IrDAConfig
3167                     	xdef	f_UART2_ITConfig
3168                     	xdef	f_UART2_Cmd
3169                     	xdef	f_UART2_Init
3170                     	xdef	f_UART2_DeInit
3171                     	xref	f_assert_failed
3172                     	xref	f_CLK_GetClockFreq
3173                     	switch	.const
3174  0008               L302:
3175  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3176  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3177  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
3178  003e 5f7561727432  	dc.b	"_uart2.c",0
3179                     	xref.b	c_lreg
3180                     	xref.b	c_x
3200                     	xref	d_lsub
3201                     	xref	d_smul
3202                     	xref	d_ludv
3203                     	xref	d_rtol
3204                     	xref	d_llsh
3205                     	xref	d_lcmp
3206                     	xref	d_ltor
3207                     	end
