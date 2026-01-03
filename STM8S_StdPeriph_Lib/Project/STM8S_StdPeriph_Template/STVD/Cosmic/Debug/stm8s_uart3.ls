   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  50                     ; 54 void UART3_DeInit(void)
  50                     ; 55 {
  52                     .text:	section	.text,new
  53  0000               _UART3_DeInit:
  57                     ; 58   (void) UART3->SR;
  59  0000 c65240        	ld	a,21056
  60                     ; 59   (void) UART3->DR;
  62  0003 c65241        	ld	a,21057
  63                     ; 61   UART3->BRR2 = UART3_BRR2_RESET_VALUE; /*Set UART3_BRR2 to reset value 0x00 */
  65  0006 725f5243      	clr	21059
  66                     ; 62   UART3->BRR1 = UART3_BRR1_RESET_VALUE; /*Set UART3_BRR1 to reset value 0x00 */
  68  000a 725f5242      	clr	21058
  69                     ; 64   UART3->CR1 = UART3_CR1_RESET_VALUE;  /*Set UART3_CR1 to reset value 0x00  */
  71  000e 725f5244      	clr	21060
  72                     ; 65   UART3->CR2 = UART3_CR2_RESET_VALUE;  /*Set UART3_CR2 to reset value 0x00  */
  74  0012 725f5245      	clr	21061
  75                     ; 66   UART3->CR3 = UART3_CR3_RESET_VALUE;  /*Set UART3_CR3 to reset value 0x00  */
  77  0016 725f5246      	clr	21062
  78                     ; 67   UART3->CR4 = UART3_CR4_RESET_VALUE;  /*Set UART3_CR4 to reset value 0x00  */
  80  001a 725f5247      	clr	21063
  81                     ; 68   UART3->CR6 = UART3_CR6_RESET_VALUE;  /*Set UART3_CR6 to reset value 0x00  */
  83  001e 725f5249      	clr	21065
  84                     ; 69 }
  87  0022 81            	ret	
 305                     .const:	section	.text
 306  0000               L24:
 307  0000 00098969      	dc.l	625001
 308  0004               L46:
 309  0004 00000064      	dc.l	100
 310                     ; 83 void UART3_Init(uint32_t BaudRate, UART3_WordLength_TypeDef WordLength, 
 310                     ; 84                 UART3_StopBits_TypeDef StopBits, UART3_Parity_TypeDef Parity, 
 310                     ; 85                 UART3_Mode_TypeDef Mode)
 310                     ; 86 {
 311                     .text:	section	.text,new
 312  0000               _UART3_Init:
 314  0000 520e          	subw	sp,#14
 315       0000000e      OFST:	set	14
 318                     ; 87   uint8_t BRR2_1 = 0, BRR2_2 = 0;
 322                     ; 88   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 326                     ; 91   assert_param(IS_UART3_WORDLENGTH_OK(WordLength));
 328  0002 7b15          	ld	a,(OFST+7,sp)
 329  0004 270a          	jreq	L41
 330  0006 a110          	cp	a,#16
 331  0008 2706          	jreq	L41
 332  000a ae005b        	ldw	x,#91
 333  000d cd0146        	call	LC001
 334  0010               L41:
 335                     ; 92   assert_param(IS_UART3_STOPBITS_OK(StopBits));
 337  0010 7b16          	ld	a,(OFST+8,sp)
 338  0012 270a          	jreq	L42
 339  0014 a120          	cp	a,#32
 340  0016 2706          	jreq	L42
 341  0018 ae005c        	ldw	x,#92
 342  001b cd0146        	call	LC001
 343  001e               L42:
 344                     ; 93   assert_param(IS_UART3_PARITY_OK(Parity));
 346  001e 7b17          	ld	a,(OFST+9,sp)
 347  0020 270e          	jreq	L43
 348  0022 a104          	cp	a,#4
 349  0024 270a          	jreq	L43
 350  0026 a106          	cp	a,#6
 351  0028 2706          	jreq	L43
 352  002a ae005d        	ldw	x,#93
 353  002d cd0146        	call	LC001
 354  0030               L43:
 355                     ; 94   assert_param(IS_UART3_BAUDRATE_OK(BaudRate));
 357  0030 96            	ldw	x,sp
 358  0031 1c0011        	addw	x,#OFST+3
 359  0034 cd0000        	call	c_ltor
 361  0037 ae0000        	ldw	x,#L24
 362  003a cd0000        	call	c_lcmp
 364  003d 2506          	jrult	L44
 365  003f ae005e        	ldw	x,#94
 366  0042 cd0146        	call	LC001
 367  0045               L44:
 368                     ; 95   assert_param(IS_UART3_MODE_OK((uint8_t)Mode));
 370  0045 7b18          	ld	a,(OFST+10,sp)
 371  0047 a108          	cp	a,#8
 372  0049 2722          	jreq	L45
 373  004b a140          	cp	a,#64
 374  004d 271e          	jreq	L45
 375  004f a104          	cp	a,#4
 376  0051 271a          	jreq	L45
 377  0053 a180          	cp	a,#128
 378  0055 2716          	jreq	L45
 379  0057 a10c          	cp	a,#12
 380  0059 2712          	jreq	L45
 381  005b a144          	cp	a,#68
 382  005d 270e          	jreq	L45
 383  005f a1c0          	cp	a,#192
 384  0061 270a          	jreq	L45
 385  0063 a188          	cp	a,#136
 386  0065 2706          	jreq	L45
 387  0067 ae005f        	ldw	x,#95
 388  006a cd0146        	call	LC001
 389  006d               L45:
 390                     ; 98   UART3->CR1 &= (uint8_t)(~UART3_CR1_M);     
 392  006d 72195244      	bres	21060,#4
 393                     ; 100   UART3->CR1 |= (uint8_t)WordLength; 
 395  0071 c65244        	ld	a,21060
 396  0074 1a15          	or	a,(OFST+7,sp)
 397  0076 c75244        	ld	21060,a
 398                     ; 103   UART3->CR3 &= (uint8_t)(~UART3_CR3_STOP);  
 400  0079 c65246        	ld	a,21062
 401  007c a4cf          	and	a,#207
 402  007e c75246        	ld	21062,a
 403                     ; 105   UART3->CR3 |= (uint8_t)StopBits;  
 405  0081 c65246        	ld	a,21062
 406  0084 1a16          	or	a,(OFST+8,sp)
 407  0086 c75246        	ld	21062,a
 408                     ; 108   UART3->CR1 &= (uint8_t)(~(UART3_CR1_PCEN | UART3_CR1_PS));  
 410  0089 c65244        	ld	a,21060
 411  008c a4f9          	and	a,#249
 412  008e c75244        	ld	21060,a
 413                     ; 110   UART3->CR1 |= (uint8_t)Parity;     
 415  0091 c65244        	ld	a,21060
 416  0094 1a17          	or	a,(OFST+9,sp)
 417  0096 c75244        	ld	21060,a
 418                     ; 113   UART3->BRR1 &= (uint8_t)(~UART3_BRR1_DIVM);  
 420  0099 725f5242      	clr	21058
 421                     ; 115   UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVM);  
 423  009d c65243        	ld	a,21059
 424  00a0 a40f          	and	a,#15
 425  00a2 c75243        	ld	21059,a
 426                     ; 117   UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVF);  
 428  00a5 c65243        	ld	a,21059
 429  00a8 a4f0          	and	a,#240
 430  00aa c75243        	ld	21059,a
 431                     ; 120   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 433  00ad 96            	ldw	x,sp
 434  00ae cd0152        	call	LC002
 436  00b1 96            	ldw	x,sp
 437  00b2 5c            	incw	x
 438  00b3 cd0000        	call	c_rtol
 441  00b6 cd0000        	call	_CLK_GetClockFreq
 443  00b9 96            	ldw	x,sp
 444  00ba 5c            	incw	x
 445  00bb cd0000        	call	c_ludv
 447  00be 96            	ldw	x,sp
 448  00bf 1c000b        	addw	x,#OFST-3
 449  00c2 cd0000        	call	c_rtol
 452                     ; 121   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 454  00c5 96            	ldw	x,sp
 455  00c6 cd0152        	call	LC002
 457  00c9 96            	ldw	x,sp
 458  00ca 5c            	incw	x
 459  00cb cd0000        	call	c_rtol
 462  00ce cd0000        	call	_CLK_GetClockFreq
 464  00d1 a664          	ld	a,#100
 465  00d3 cd0000        	call	c_smul
 467  00d6 96            	ldw	x,sp
 468  00d7 5c            	incw	x
 469  00d8 cd0000        	call	c_ludv
 471  00db 96            	ldw	x,sp
 472  00dc 1c0007        	addw	x,#OFST-7
 473  00df cd0000        	call	c_rtol
 476                     ; 124   BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 476                     ; 125                                 << 4) / 100) & (uint8_t)0x0F); 
 478  00e2 96            	ldw	x,sp
 479  00e3 1c000b        	addw	x,#OFST-3
 480  00e6 cd0000        	call	c_ltor
 482  00e9 a664          	ld	a,#100
 483  00eb cd0000        	call	c_smul
 485  00ee 96            	ldw	x,sp
 486  00ef 5c            	incw	x
 487  00f0 cd0000        	call	c_rtol
 490  00f3 96            	ldw	x,sp
 491  00f4 1c0007        	addw	x,#OFST-7
 492  00f7 cd0000        	call	c_ltor
 494  00fa 96            	ldw	x,sp
 495  00fb 5c            	incw	x
 496  00fc cd0000        	call	c_lsub
 498  00ff a604          	ld	a,#4
 499  0101 cd0000        	call	c_llsh
 501  0104 ae0004        	ldw	x,#L46
 502  0107 cd0000        	call	c_ludv
 504  010a b603          	ld	a,c_lreg+3
 505  010c a40f          	and	a,#15
 506  010e 6b05          	ld	(OFST-9,sp),a
 508                     ; 126   BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 510  0110 1e0d          	ldw	x,(OFST-1,sp)
 511  0112 54            	srlw	x
 512  0113 54            	srlw	x
 513  0114 54            	srlw	x
 514  0115 54            	srlw	x
 515  0116 01            	rrwa	x,a
 516  0117 a4f0          	and	a,#240
 517  0119 6b06          	ld	(OFST-8,sp),a
 519                     ; 128   UART3->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 521  011b 1a05          	or	a,(OFST-9,sp)
 522  011d c75243        	ld	21059,a
 523                     ; 130   UART3->BRR1 = (uint8_t)BaudRate_Mantissa;           
 525  0120 7b0e          	ld	a,(OFST+0,sp)
 526  0122 c75242        	ld	21058,a
 527                     ; 132   if ((uint8_t)(Mode & UART3_MODE_TX_ENABLE))
 529  0125 7b18          	ld	a,(OFST+10,sp)
 530  0127 a504          	bcp	a,#4
 531  0129 2706          	jreq	L731
 532                     ; 135     UART3->CR2 |= UART3_CR2_TEN;  
 534  012b 72165245      	bset	21061,#3
 536  012f 2004          	jra	L141
 537  0131               L731:
 538                     ; 140     UART3->CR2 &= (uint8_t)(~UART3_CR2_TEN);  
 540  0131 72175245      	bres	21061,#3
 541  0135               L141:
 542                     ; 142   if ((uint8_t)(Mode & UART3_MODE_RX_ENABLE))
 544  0135 a508          	bcp	a,#8
 545  0137 2706          	jreq	L341
 546                     ; 145     UART3->CR2 |= UART3_CR2_REN;  
 548  0139 72145245      	bset	21061,#2
 550  013d 2004          	jra	L541
 551  013f               L341:
 552                     ; 150     UART3->CR2 &= (uint8_t)(~UART3_CR2_REN);  
 554  013f 72155245      	bres	21061,#2
 555  0143               L541:
 556                     ; 152 }
 559  0143 5b0e          	addw	sp,#14
 560  0145 81            	ret	
 561  0146               LC001:
 562  0146 89            	pushw	x
 563  0147 5f            	clrw	x
 564  0148 89            	pushw	x
 565  0149 ae0008        	ldw	x,#L531
 566  014c cd0000        	call	_assert_failed
 568  014f 5b04          	addw	sp,#4
 569  0151 81            	ret	
 570  0152               LC002:
 571  0152 1c0011        	addw	x,#OFST+3
 572  0155 cd0000        	call	c_ltor
 574  0158 a604          	ld	a,#4
 575  015a cc0000        	jp	c_llsh
 630                     ; 160 void UART3_Cmd(FunctionalState NewState)
 630                     ; 161 {
 631                     .text:	section	.text,new
 632  0000               _UART3_Cmd:
 636                     ; 162   if (NewState != DISABLE)
 638  0000 4d            	tnz	a
 639  0001 2705          	jreq	L571
 640                     ; 165     UART3->CR1 &= (uint8_t)(~UART3_CR1_UARTD); 
 642  0003 721b5244      	bres	21060,#5
 645  0007 81            	ret	
 646  0008               L571:
 647                     ; 170     UART3->CR1 |= UART3_CR1_UARTD;  
 649  0008 721a5244      	bset	21060,#5
 650                     ; 172 }
 653  000c 81            	ret	
 782                     ; 189 void UART3_ITConfig(UART3_IT_TypeDef UART3_IT, FunctionalState NewState)
 782                     ; 190 {
 783                     .text:	section	.text,new
 784  0000               _UART3_ITConfig:
 786  0000 89            	pushw	x
 787  0001 89            	pushw	x
 788       00000002      OFST:	set	2
 791                     ; 191   uint8_t uartreg = 0, itpos = 0x00;
 795                     ; 194   assert_param(IS_UART3_CONFIG_IT_OK(UART3_IT));
 797  0002 a30100        	cpw	x,#256
 798  0005 2724          	jreq	L67
 799  0007 a30277        	cpw	x,#631
 800  000a 271f          	jreq	L67
 801  000c a30266        	cpw	x,#614
 802  000f 271a          	jreq	L67
 803  0011 a30205        	cpw	x,#517
 804  0014 2715          	jreq	L67
 805  0016 a30244        	cpw	x,#580
 806  0019 2710          	jreq	L67
 807  001b a30412        	cpw	x,#1042
 808  001e 270b          	jreq	L67
 809  0020 a30346        	cpw	x,#838
 810  0023 2706          	jreq	L67
 811  0025 ae00c2        	ldw	x,#194
 812  0028 cd00b5        	call	LC007
 813  002b               L67:
 814                     ; 195   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 816  002b 7b07          	ld	a,(OFST+5,sp)
 817  002d 2708          	jreq	L601
 818  002f 4a            	dec	a
 819  0030 2705          	jreq	L601
 820  0032 ae00c3        	ldw	x,#195
 821  0035 ad7e          	call	LC007
 822  0037               L601:
 823                     ; 198   uartreg = (uint8_t)((uint16_t)UART3_IT >> 0x08);
 825  0037 7b03          	ld	a,(OFST+1,sp)
 826  0039 6b01          	ld	(OFST-1,sp),a
 828                     ; 201   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
 830  003b 7b04          	ld	a,(OFST+2,sp)
 831  003d a40f          	and	a,#15
 832  003f 5f            	clrw	x
 833  0040 97            	ld	xl,a
 834  0041 a601          	ld	a,#1
 835  0043 5d            	tnzw	x
 836  0044 2704          	jreq	L211
 837  0046               L411:
 838  0046 48            	sll	a
 839  0047 5a            	decw	x
 840  0048 26fc          	jrne	L411
 841  004a               L211:
 842  004a 6b02          	ld	(OFST+0,sp),a
 844                     ; 203   if (NewState != DISABLE)
 846  004c 7b07          	ld	a,(OFST+5,sp)
 847  004e 272a          	jreq	L552
 848                     ; 206     if (uartreg == 0x01)
 850  0050 7b01          	ld	a,(OFST-1,sp)
 851  0052 a101          	cp	a,#1
 852  0054 2607          	jrne	L752
 853                     ; 208       UART3->CR1 |= itpos;
 855  0056 c65244        	ld	a,21060
 856  0059 1a02          	or	a,(OFST+0,sp)
 858  005b 2029          	jp	LC005
 859  005d               L752:
 860                     ; 210     else if (uartreg == 0x02)
 862  005d a102          	cp	a,#2
 863  005f 2607          	jrne	L362
 864                     ; 212       UART3->CR2 |= itpos;
 866  0061 c65245        	ld	a,21061
 867  0064 1a02          	or	a,(OFST+0,sp)
 869  0066 202d          	jp	LC004
 870  0068               L362:
 871                     ; 214     else if (uartreg == 0x03)
 873  0068 a103          	cp	a,#3
 874  006a 2607          	jrne	L762
 875                     ; 216       UART3->CR4 |= itpos;
 877  006c c65247        	ld	a,21063
 878  006f 1a02          	or	a,(OFST+0,sp)
 880  0071 2031          	jp	LC006
 881  0073               L762:
 882                     ; 220       UART3->CR6 |= itpos;
 884  0073 c65249        	ld	a,21065
 885  0076 1a02          	or	a,(OFST+0,sp)
 886  0078 2035          	jp	LC003
 887  007a               L552:
 888                     ; 226     if (uartreg == 0x01)
 890  007a 7b01          	ld	a,(OFST-1,sp)
 891  007c a101          	cp	a,#1
 892  007e 260b          	jrne	L572
 893                     ; 228       UART3->CR1 &= (uint8_t)(~itpos);
 895  0080 7b02          	ld	a,(OFST+0,sp)
 896  0082 43            	cpl	a
 897  0083 c45244        	and	a,21060
 898  0086               LC005:
 899  0086 c75244        	ld	21060,a
 901  0089 2027          	jra	L372
 902  008b               L572:
 903                     ; 230     else if (uartreg == 0x02)
 905  008b a102          	cp	a,#2
 906  008d 260b          	jrne	L103
 907                     ; 232       UART3->CR2 &= (uint8_t)(~itpos);
 909  008f 7b02          	ld	a,(OFST+0,sp)
 910  0091 43            	cpl	a
 911  0092 c45245        	and	a,21061
 912  0095               LC004:
 913  0095 c75245        	ld	21061,a
 915  0098 2018          	jra	L372
 916  009a               L103:
 917                     ; 234     else if (uartreg == 0x03)
 919  009a a103          	cp	a,#3
 920  009c 260b          	jrne	L503
 921                     ; 236       UART3->CR4 &= (uint8_t)(~itpos);
 923  009e 7b02          	ld	a,(OFST+0,sp)
 924  00a0 43            	cpl	a
 925  00a1 c45247        	and	a,21063
 926  00a4               LC006:
 927  00a4 c75247        	ld	21063,a
 929  00a7 2009          	jra	L372
 930  00a9               L503:
 931                     ; 240       UART3->CR6 &= (uint8_t)(~itpos);
 933  00a9 7b02          	ld	a,(OFST+0,sp)
 934  00ab 43            	cpl	a
 935  00ac c45249        	and	a,21065
 936  00af               LC003:
 937  00af c75249        	ld	21065,a
 938  00b2               L372:
 939                     ; 243 }
 942  00b2 5b04          	addw	sp,#4
 943  00b4 81            	ret	
 944  00b5               LC007:
 945  00b5 89            	pushw	x
 946  00b6 5f            	clrw	x
 947  00b7 89            	pushw	x
 948  00b8 ae0008        	ldw	x,#L531
 949  00bb cd0000        	call	_assert_failed
 951  00be 5b04          	addw	sp,#4
 952  00c0 81            	ret	
1012                     ; 252 void UART3_LINBreakDetectionConfig(UART3_LINBreakDetectionLength_TypeDef UART3_LINBreakDetectionLength)
1012                     ; 253 {
1013                     .text:	section	.text,new
1014  0000               _UART3_LINBreakDetectionConfig:
1016  0000 88            	push	a
1017       00000000      OFST:	set	0
1020                     ; 255   assert_param(IS_UART3_LINBREAKDETECTIONLENGTH_OK(UART3_LINBreakDetectionLength));
1022  0001 4d            	tnz	a
1023  0002 2711          	jreq	L421
1024  0004 4a            	dec	a
1025  0005 270e          	jreq	L421
1026  0007 ae00ff        	ldw	x,#255
1027  000a 89            	pushw	x
1028  000b 5f            	clrw	x
1029  000c 89            	pushw	x
1030  000d ae0008        	ldw	x,#L531
1031  0010 cd0000        	call	_assert_failed
1033  0013 5b04          	addw	sp,#4
1034  0015               L421:
1035                     ; 257   if (UART3_LINBreakDetectionLength != UART3_LINBREAKDETECTIONLENGTH_10BITS)
1037  0015 7b01          	ld	a,(OFST+1,sp)
1038  0017 2706          	jreq	L733
1039                     ; 259     UART3->CR4 |= UART3_CR4_LBDL;
1041  0019 721a5247      	bset	21063,#5
1043  001d 2004          	jra	L143
1044  001f               L733:
1045                     ; 263     UART3->CR4 &= ((uint8_t)~UART3_CR4_LBDL);
1047  001f 721b5247      	bres	21063,#5
1048  0023               L143:
1049                     ; 265 }
1052  0023 84            	pop	a
1053  0024 81            	ret	
1175                     ; 277 void UART3_LINConfig(UART3_LinMode_TypeDef UART3_Mode,
1175                     ; 278                      UART3_LinAutosync_TypeDef UART3_Autosync, 
1175                     ; 279                      UART3_LinDivUp_TypeDef UART3_DivUp)
1175                     ; 280 {
1176                     .text:	section	.text,new
1177  0000               _UART3_LINConfig:
1179  0000 89            	pushw	x
1180       00000000      OFST:	set	0
1183                     ; 282   assert_param(IS_UART3_SLAVE_OK(UART3_Mode));
1185  0001 9e            	ld	a,xh
1186  0002 4d            	tnz	a
1187  0003 2709          	jreq	L631
1188  0005 9e            	ld	a,xh
1189  0006 4a            	dec	a
1190  0007 2705          	jreq	L631
1191  0009 ae011a        	ldw	x,#282
1192  000c ad46          	call	LC008
1193  000e               L631:
1194                     ; 283   assert_param(IS_UART3_AUTOSYNC_OK(UART3_Autosync));
1196  000e 7b02          	ld	a,(OFST+2,sp)
1197  0010 4a            	dec	a
1198  0011 2709          	jreq	L641
1199  0013 7b02          	ld	a,(OFST+2,sp)
1200  0015 2705          	jreq	L641
1201  0017 ae011b        	ldw	x,#283
1202  001a ad38          	call	LC008
1203  001c               L641:
1204                     ; 284   assert_param(IS_UART3_DIVUP_OK(UART3_DivUp));
1206  001c 7b05          	ld	a,(OFST+5,sp)
1207  001e 2708          	jreq	L651
1208  0020 4a            	dec	a
1209  0021 2705          	jreq	L651
1210  0023 ae011c        	ldw	x,#284
1211  0026 ad2c          	call	LC008
1212  0028               L651:
1213                     ; 286   if (UART3_Mode != UART3_LIN_MODE_MASTER)
1215  0028 7b01          	ld	a,(OFST+1,sp)
1216  002a 2706          	jreq	L124
1217                     ; 288     UART3->CR6 |=  UART3_CR6_LSLV;
1219  002c 721a5249      	bset	21065,#5
1221  0030 2004          	jra	L324
1222  0032               L124:
1223                     ; 292     UART3->CR6 &= ((uint8_t)~UART3_CR6_LSLV);
1225  0032 721b5249      	bres	21065,#5
1226  0036               L324:
1227                     ; 295   if (UART3_Autosync != UART3_LIN_AUTOSYNC_DISABLE)
1229  0036 7b02          	ld	a,(OFST+2,sp)
1230  0038 2706          	jreq	L524
1231                     ; 297     UART3->CR6 |=  UART3_CR6_LASE ;
1233  003a 72185249      	bset	21065,#4
1235  003e 2004          	jra	L724
1236  0040               L524:
1237                     ; 301     UART3->CR6 &= ((uint8_t)~ UART3_CR6_LASE );
1239  0040 72195249      	bres	21065,#4
1240  0044               L724:
1241                     ; 304   if (UART3_DivUp != UART3_LIN_DIVUP_LBRR1)
1243  0044 7b05          	ld	a,(OFST+5,sp)
1244  0046 2706          	jreq	L134
1245                     ; 306     UART3->CR6 |=  UART3_CR6_LDUM;
1247  0048 721e5249      	bset	21065,#7
1249  004c 2004          	jra	L334
1250  004e               L134:
1251                     ; 310     UART3->CR6 &= ((uint8_t)~ UART3_CR6_LDUM);
1253  004e 721f5249      	bres	21065,#7
1254  0052               L334:
1255                     ; 312 }
1258  0052 85            	popw	x
1259  0053 81            	ret	
1260  0054               LC008:
1261  0054 89            	pushw	x
1262  0055 5f            	clrw	x
1263  0056 89            	pushw	x
1264  0057 ae0008        	ldw	x,#L531
1265  005a cd0000        	call	_assert_failed
1267  005d 5b04          	addw	sp,#4
1268  005f 81            	ret	
1304                     ; 320 void UART3_LINCmd(FunctionalState NewState)
1304                     ; 321 {
1305                     .text:	section	.text,new
1306  0000               _UART3_LINCmd:
1308  0000 88            	push	a
1309       00000000      OFST:	set	0
1312                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1314  0001 4d            	tnz	a
1315  0002 2711          	jreq	L071
1316  0004 4a            	dec	a
1317  0005 270e          	jreq	L071
1318  0007 ae0143        	ldw	x,#323
1319  000a 89            	pushw	x
1320  000b 5f            	clrw	x
1321  000c 89            	pushw	x
1322  000d ae0008        	ldw	x,#L531
1323  0010 cd0000        	call	_assert_failed
1325  0013 5b04          	addw	sp,#4
1326  0015               L071:
1327                     ; 325   if (NewState != DISABLE)
1329  0015 7b01          	ld	a,(OFST+1,sp)
1330  0017 2706          	jreq	L354
1331                     ; 328     UART3->CR3 |= UART3_CR3_LINEN;
1333  0019 721c5246      	bset	21062,#6
1335  001d 2004          	jra	L554
1336  001f               L354:
1337                     ; 333     UART3->CR3 &= ((uint8_t)~UART3_CR3_LINEN);
1339  001f 721d5246      	bres	21062,#6
1340  0023               L554:
1341                     ; 335 }
1344  0023 84            	pop	a
1345  0024 81            	ret	
1403                     ; 343 void UART3_WakeUpConfig(UART3_WakeUp_TypeDef UART3_WakeUp)
1403                     ; 344 {
1404                     .text:	section	.text,new
1405  0000               _UART3_WakeUpConfig:
1407  0000 88            	push	a
1408       00000000      OFST:	set	0
1411                     ; 346   assert_param(IS_UART3_WAKEUP_OK(UART3_WakeUp));
1413  0001 4d            	tnz	a
1414  0002 2712          	jreq	L202
1415  0004 a108          	cp	a,#8
1416  0006 270e          	jreq	L202
1417  0008 ae015a        	ldw	x,#346
1418  000b 89            	pushw	x
1419  000c 5f            	clrw	x
1420  000d 89            	pushw	x
1421  000e ae0008        	ldw	x,#L531
1422  0011 cd0000        	call	_assert_failed
1424  0014 5b04          	addw	sp,#4
1425  0016               L202:
1426                     ; 348   UART3->CR1 &= ((uint8_t)~UART3_CR1_WAKE);
1428  0016 72175244      	bres	21060,#3
1429                     ; 349   UART3->CR1 |= (uint8_t)UART3_WakeUp;
1431  001a c65244        	ld	a,21060
1432  001d 1a01          	or	a,(OFST+1,sp)
1433  001f c75244        	ld	21060,a
1434                     ; 350 }
1437  0022 84            	pop	a
1438  0023 81            	ret	
1475                     ; 358 void UART3_ReceiverWakeUpCmd(FunctionalState NewState)
1475                     ; 359 {
1476                     .text:	section	.text,new
1477  0000               _UART3_ReceiverWakeUpCmd:
1479  0000 88            	push	a
1480       00000000      OFST:	set	0
1483                     ; 361   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1485  0001 4d            	tnz	a
1486  0002 2711          	jreq	L412
1487  0004 4a            	dec	a
1488  0005 270e          	jreq	L412
1489  0007 ae0169        	ldw	x,#361
1490  000a 89            	pushw	x
1491  000b 5f            	clrw	x
1492  000c 89            	pushw	x
1493  000d ae0008        	ldw	x,#L531
1494  0010 cd0000        	call	_assert_failed
1496  0013 5b04          	addw	sp,#4
1497  0015               L412:
1498                     ; 363   if (NewState != DISABLE)
1500  0015 7b01          	ld	a,(OFST+1,sp)
1501  0017 2706          	jreq	L325
1502                     ; 366     UART3->CR2 |= UART3_CR2_RWU;
1504  0019 72125245      	bset	21061,#1
1506  001d 2004          	jra	L525
1507  001f               L325:
1508                     ; 371     UART3->CR2 &= ((uint8_t)~UART3_CR2_RWU);
1510  001f 72135245      	bres	21061,#1
1511  0023               L525:
1512                     ; 373 }
1515  0023 84            	pop	a
1516  0024 81            	ret	
1539                     ; 380 uint8_t UART3_ReceiveData8(void)
1539                     ; 381 {
1540                     .text:	section	.text,new
1541  0000               _UART3_ReceiveData8:
1545                     ; 382   return ((uint8_t)UART3->DR);
1547  0000 c65241        	ld	a,21057
1550  0003 81            	ret	
1582                     ; 390 uint16_t UART3_ReceiveData9(void)
1582                     ; 391 {
1583                     .text:	section	.text,new
1584  0000               _UART3_ReceiveData9:
1586  0000 89            	pushw	x
1587       00000002      OFST:	set	2
1590                     ; 392   uint16_t temp = 0;
1592                     ; 394   temp = (uint16_t)(((uint16_t)((uint16_t)UART3->CR1 & (uint16_t)UART3_CR1_R8)) << 1);
1594  0001 c65244        	ld	a,21060
1595  0004 a480          	and	a,#128
1596  0006 5f            	clrw	x
1597  0007 02            	rlwa	x,a
1598  0008 58            	sllw	x
1599  0009 1f01          	ldw	(OFST-1,sp),x
1601                     ; 395   return (uint16_t)((((uint16_t)UART3->DR) | temp) & ((uint16_t)0x01FF));
1603  000b c65241        	ld	a,21057
1604  000e 5f            	clrw	x
1605  000f 97            	ld	xl,a
1606  0010 01            	rrwa	x,a
1607  0011 1a02          	or	a,(OFST+0,sp)
1608  0013 01            	rrwa	x,a
1609  0014 1a01          	or	a,(OFST-1,sp)
1610  0016 a401          	and	a,#1
1611  0018 01            	rrwa	x,a
1614  0019 5b02          	addw	sp,#2
1615  001b 81            	ret	
1647                     ; 403 void UART3_SendData8(uint8_t Data)
1647                     ; 404 {
1648                     .text:	section	.text,new
1649  0000               _UART3_SendData8:
1653                     ; 406   UART3->DR = Data;
1655  0000 c75241        	ld	21057,a
1656                     ; 407 }
1659  0003 81            	ret	
1691                     ; 414 void UART3_SendData9(uint16_t Data)
1691                     ; 415 {
1692                     .text:	section	.text,new
1693  0000               _UART3_SendData9:
1695  0000 89            	pushw	x
1696       00000000      OFST:	set	0
1699                     ; 417   UART3->CR1 &= ((uint8_t)~UART3_CR1_T8);                  
1701  0001 721d5244      	bres	21060,#6
1702                     ; 420   UART3->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART3_CR1_T8); 
1704  0005 54            	srlw	x
1705  0006 54            	srlw	x
1706  0007 9f            	ld	a,xl
1707  0008 a440          	and	a,#64
1708  000a ca5244        	or	a,21060
1709  000d c75244        	ld	21060,a
1710                     ; 423   UART3->DR   = (uint8_t)(Data);                    
1712  0010 7b02          	ld	a,(OFST+2,sp)
1713  0012 c75241        	ld	21057,a
1714                     ; 424 }
1717  0015 85            	popw	x
1718  0016 81            	ret	
1741                     ; 431 void UART3_SendBreak(void)
1741                     ; 432 {
1742                     .text:	section	.text,new
1743  0000               _UART3_SendBreak:
1747                     ; 433   UART3->CR2 |= UART3_CR2_SBK;
1749  0000 72105245      	bset	21061,#0
1750                     ; 434 }
1753  0004 81            	ret	
1786                     ; 441 void UART3_SetAddress(uint8_t UART3_Address)
1786                     ; 442 {
1787                     .text:	section	.text,new
1788  0000               _UART3_SetAddress:
1790  0000 88            	push	a
1791       00000000      OFST:	set	0
1794                     ; 444   assert_param(IS_UART3_ADDRESS_OK(UART3_Address));
1796  0001 a110          	cp	a,#16
1797  0003 250e          	jrult	L632
1798  0005 ae01bc        	ldw	x,#444
1799  0008 89            	pushw	x
1800  0009 5f            	clrw	x
1801  000a 89            	pushw	x
1802  000b ae0008        	ldw	x,#L531
1803  000e cd0000        	call	_assert_failed
1805  0011 5b04          	addw	sp,#4
1806  0013               L632:
1807                     ; 447   UART3->CR4 &= ((uint8_t)~UART3_CR4_ADD);
1809  0013 c65247        	ld	a,21063
1810  0016 a4f0          	and	a,#240
1811  0018 c75247        	ld	21063,a
1812                     ; 449   UART3->CR4 |= UART3_Address;
1814  001b c65247        	ld	a,21063
1815  001e 1a01          	or	a,(OFST+1,sp)
1816  0020 c75247        	ld	21063,a
1817                     ; 450 }
1820  0023 84            	pop	a
1821  0024 81            	ret	
1979                     ; 458 FlagStatus UART3_GetFlagStatus(UART3_Flag_TypeDef UART3_FLAG)
1979                     ; 459 {
1980                     .text:	section	.text,new
1981  0000               _UART3_GetFlagStatus:
1983  0000 89            	pushw	x
1984  0001 88            	push	a
1985       00000001      OFST:	set	1
1988                     ; 460   FlagStatus status = RESET;
1990                     ; 463   assert_param(IS_UART3_FLAG_OK(UART3_FLAG));
1992  0002 a30080        	cpw	x,#128
1993  0005 2745          	jreq	L052
1994  0007 a30040        	cpw	x,#64
1995  000a 2740          	jreq	L052
1996  000c a30020        	cpw	x,#32
1997  000f 273b          	jreq	L052
1998  0011 a30010        	cpw	x,#16
1999  0014 2736          	jreq	L052
2000  0016 a30008        	cpw	x,#8
2001  0019 2731          	jreq	L052
2002  001b a30004        	cpw	x,#4
2003  001e 272c          	jreq	L052
2004  0020 a30002        	cpw	x,#2
2005  0023 2727          	jreq	L052
2006  0025 a30001        	cpw	x,#1
2007  0028 2722          	jreq	L052
2008  002a a30101        	cpw	x,#257
2009  002d 271d          	jreq	L052
2010  002f a30301        	cpw	x,#769
2011  0032 2718          	jreq	L052
2012  0034 a30302        	cpw	x,#770
2013  0037 2713          	jreq	L052
2014  0039 a30210        	cpw	x,#528
2015  003c 270e          	jreq	L052
2016  003e ae01cf        	ldw	x,#463
2017  0041 89            	pushw	x
2018  0042 5f            	clrw	x
2019  0043 89            	pushw	x
2020  0044 ae0008        	ldw	x,#L531
2021  0047 cd0000        	call	_assert_failed
2023  004a 5b04          	addw	sp,#4
2024  004c               L052:
2025                     ; 466   if (UART3_FLAG == UART3_FLAG_LBDF)
2027  004c 1e02          	ldw	x,(OFST+1,sp)
2028  004e a30210        	cpw	x,#528
2029  0051 2609          	jrne	L517
2030                     ; 468     if ((UART3->CR4 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2032  0053 c65247        	ld	a,21063
2033  0056 1503          	bcp	a,(OFST+2,sp)
2034  0058 2725          	jreq	L147
2035                     ; 471       status = SET;
2037  005a 201f          	jp	LC010
2038                     ; 476       status = RESET;
2039  005c               L517:
2040                     ; 479   else if (UART3_FLAG == UART3_FLAG_SBK)
2042  005c a30101        	cpw	x,#257
2043  005f 2609          	jrne	L527
2044                     ; 481     if ((UART3->CR2 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2046  0061 c65245        	ld	a,21061
2047  0064 1503          	bcp	a,(OFST+2,sp)
2048  0066 2717          	jreq	L147
2049                     ; 484       status = SET;
2051  0068 2011          	jp	LC010
2052                     ; 489       status = RESET;
2053  006a               L527:
2054                     ; 492   else if ((UART3_FLAG == UART3_FLAG_LHDF) || (UART3_FLAG == UART3_FLAG_LSF))
2056  006a a30302        	cpw	x,#770
2057  006d 2705          	jreq	L737
2059  006f a30301        	cpw	x,#769
2060  0072 260f          	jrne	L537
2061  0074               L737:
2062                     ; 494     if ((UART3->CR6 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2064  0074 c65249        	ld	a,21065
2065  0077 1503          	bcp	a,(OFST+2,sp)
2066  0079 2704          	jreq	L147
2067                     ; 497       status = SET;
2069  007b               LC010:
2073  007b a601          	ld	a,#1
2076  007d 2001          	jra	L327
2077  007f               L147:
2078                     ; 502       status = RESET;
2083  007f 4f            	clr	a
2085  0080               L327:
2086                     ; 520   return  status;
2090  0080 5b03          	addw	sp,#3
2091  0082 81            	ret	
2092  0083               L537:
2093                     ; 507     if ((UART3->SR & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2095  0083 c65240        	ld	a,21056
2096  0086 1503          	bcp	a,(OFST+2,sp)
2097  0088 27f5          	jreq	L147
2098                     ; 510       status = SET;
2100  008a 20ef          	jp	LC010
2101                     ; 515       status = RESET;
2137                     ; 551 void UART3_ClearFlag(UART3_Flag_TypeDef UART3_FLAG)
2137                     ; 552 {
2138                     .text:	section	.text,new
2139  0000               _UART3_ClearFlag:
2141  0000 89            	pushw	x
2142       00000000      OFST:	set	0
2145                     ; 554   assert_param(IS_UART3_CLEAR_FLAG_OK(UART3_FLAG));
2147  0001 a30020        	cpw	x,#32
2148  0004 271d          	jreq	L262
2149  0006 a30302        	cpw	x,#770
2150  0009 2718          	jreq	L262
2151  000b a30301        	cpw	x,#769
2152  000e 2713          	jreq	L262
2153  0010 a30210        	cpw	x,#528
2154  0013 270e          	jreq	L262
2155  0015 ae022a        	ldw	x,#554
2156  0018 89            	pushw	x
2157  0019 5f            	clrw	x
2158  001a 89            	pushw	x
2159  001b ae0008        	ldw	x,#L531
2160  001e cd0000        	call	_assert_failed
2162  0021 5b04          	addw	sp,#4
2163  0023               L262:
2164                     ; 557   if (UART3_FLAG == UART3_FLAG_RXNE)
2166  0023 1e01          	ldw	x,(OFST+1,sp)
2167  0025 a30020        	cpw	x,#32
2168  0028 2606          	jrne	L177
2169                     ; 559     UART3->SR = (uint8_t)~(UART3_SR_RXNE);
2171  002a 35df5240      	mov	21056,#223
2173  002e 201a          	jra	L377
2174  0030               L177:
2175                     ; 562   else if (UART3_FLAG == UART3_FLAG_LBDF)
2177  0030 a30210        	cpw	x,#528
2178  0033 2606          	jrne	L577
2179                     ; 564     UART3->CR4 &= (uint8_t)(~UART3_CR4_LBDF);
2181  0035 72195247      	bres	21063,#4
2183  0039 200f          	jra	L377
2184  003b               L577:
2185                     ; 567   else if (UART3_FLAG == UART3_FLAG_LHDF)
2187  003b a30302        	cpw	x,#770
2188  003e 2606          	jrne	L1001
2189                     ; 569     UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
2191  0040 72135249      	bres	21065,#1
2193  0044 2004          	jra	L377
2194  0046               L1001:
2195                     ; 574     UART3->CR6 &= (uint8_t)(~UART3_CR6_LSF);
2197  0046 72115249      	bres	21065,#0
2198  004a               L377:
2199                     ; 576 }
2202  004a 85            	popw	x
2203  004b 81            	ret	
2278                     ; 591 ITStatus UART3_GetITStatus(UART3_IT_TypeDef UART3_IT)
2278                     ; 592 {
2279                     .text:	section	.text,new
2280  0000               _UART3_GetITStatus:
2282  0000 89            	pushw	x
2283  0001 89            	pushw	x
2284       00000002      OFST:	set	2
2287                     ; 593   ITStatus pendingbitstatus = RESET;
2289                     ; 594   uint8_t itpos = 0;
2291                     ; 595   uint8_t itmask1 = 0;
2293                     ; 596   uint8_t itmask2 = 0;
2295                     ; 597   uint8_t enablestatus = 0;
2297                     ; 600   assert_param(IS_UART3_GET_IT_OK(UART3_IT));
2299  0002 a30277        	cpw	x,#631
2300  0005 2731          	jreq	L472
2301  0007 a30266        	cpw	x,#614
2302  000a 272c          	jreq	L472
2303  000c a30255        	cpw	x,#597
2304  000f 2727          	jreq	L472
2305  0011 a30244        	cpw	x,#580
2306  0014 2722          	jreq	L472
2307  0016 a30235        	cpw	x,#565
2308  0019 271d          	jreq	L472
2309  001b a30346        	cpw	x,#838
2310  001e 2718          	jreq	L472
2311  0020 a30412        	cpw	x,#1042
2312  0023 2713          	jreq	L472
2313  0025 a30100        	cpw	x,#256
2314  0028 270e          	jreq	L472
2315  002a ae0258        	ldw	x,#600
2316  002d 89            	pushw	x
2317  002e 5f            	clrw	x
2318  002f 89            	pushw	x
2319  0030 ae0008        	ldw	x,#L531
2320  0033 cd0000        	call	_assert_failed
2322  0036 5b04          	addw	sp,#4
2323  0038               L472:
2324                     ; 603   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
2326  0038 7b04          	ld	a,(OFST+2,sp)
2327  003a a40f          	and	a,#15
2328  003c 5f            	clrw	x
2329  003d 97            	ld	xl,a
2330  003e a601          	ld	a,#1
2331  0040 5d            	tnzw	x
2332  0041 2704          	jreq	L003
2333  0043               L203:
2334  0043 48            	sll	a
2335  0044 5a            	decw	x
2336  0045 26fc          	jrne	L203
2337  0047               L003:
2338  0047 6b01          	ld	(OFST-1,sp),a
2340                     ; 605   itmask1 = (uint8_t)((uint8_t)UART3_IT >> (uint8_t)4);
2342  0049 7b04          	ld	a,(OFST+2,sp)
2343  004b 4e            	swap	a
2344  004c a40f          	and	a,#15
2345  004e 6b02          	ld	(OFST+0,sp),a
2347                     ; 607   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2349  0050 5f            	clrw	x
2350  0051 97            	ld	xl,a
2351  0052 a601          	ld	a,#1
2352  0054 5d            	tnzw	x
2353  0055 2704          	jreq	L403
2354  0057               L603:
2355  0057 48            	sll	a
2356  0058 5a            	decw	x
2357  0059 26fc          	jrne	L603
2358  005b               L403:
2359  005b 6b02          	ld	(OFST+0,sp),a
2361                     ; 610   if (UART3_IT == UART3_IT_PE)
2363  005d 1e03          	ldw	x,(OFST+1,sp)
2364  005f a30100        	cpw	x,#256
2365  0062 260c          	jrne	L7301
2366                     ; 613     enablestatus = (uint8_t)((uint8_t)UART3->CR1 & itmask2);
2368  0064 c65244        	ld	a,21060
2369  0067 1402          	and	a,(OFST+0,sp)
2370  0069 6b02          	ld	(OFST+0,sp),a
2372                     ; 616     if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
2374  006b c65240        	ld	a,21056
2376                     ; 619       pendingbitstatus = SET;
2378  006e 2020          	jp	LC013
2379                     ; 624       pendingbitstatus = RESET;
2380  0070               L7301:
2381                     ; 627   else if (UART3_IT == UART3_IT_LBDF)
2383  0070 a30346        	cpw	x,#838
2384  0073 260c          	jrne	L7401
2385                     ; 630     enablestatus = (uint8_t)((uint8_t)UART3->CR4 & itmask2);
2387  0075 c65247        	ld	a,21063
2388  0078 1402          	and	a,(OFST+0,sp)
2389  007a 6b02          	ld	(OFST+0,sp),a
2391                     ; 632     if (((UART3->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2393  007c c65247        	ld	a,21063
2395                     ; 635       pendingbitstatus = SET;
2397  007f 200f          	jp	LC013
2398                     ; 640       pendingbitstatus = RESET;
2399  0081               L7401:
2400                     ; 643   else if (UART3_IT == UART3_IT_LHDF)
2402  0081 a30412        	cpw	x,#1042
2403  0084 2616          	jrne	L7501
2404                     ; 646     enablestatus = (uint8_t)((uint8_t)UART3->CR6 & itmask2);
2406  0086 c65249        	ld	a,21065
2407  0089 1402          	and	a,(OFST+0,sp)
2408  008b 6b02          	ld	(OFST+0,sp),a
2410                     ; 648     if (((UART3->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
2412  008d c65249        	ld	a,21065
2414  0090               LC013:
2415  0090 1501          	bcp	a,(OFST-1,sp)
2416  0092 271a          	jreq	L7601
2417  0094 7b02          	ld	a,(OFST+0,sp)
2418  0096 2716          	jreq	L7601
2419                     ; 651       pendingbitstatus = SET;
2421  0098               LC012:
2425  0098 a601          	ld	a,#1
2428  009a 2013          	jra	L5401
2429                     ; 656       pendingbitstatus = RESET;
2430  009c               L7501:
2431                     ; 662     enablestatus = (uint8_t)((uint8_t)UART3->CR2 & itmask2);
2433  009c c65245        	ld	a,21061
2434  009f 1402          	and	a,(OFST+0,sp)
2435  00a1 6b02          	ld	(OFST+0,sp),a
2437                     ; 664     if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
2439  00a3 c65240        	ld	a,21056
2440  00a6 1501          	bcp	a,(OFST-1,sp)
2441  00a8 2704          	jreq	L7601
2443  00aa 7b02          	ld	a,(OFST+0,sp)
2444                     ; 667       pendingbitstatus = SET;
2446  00ac 26ea          	jrne	LC012
2447  00ae               L7601:
2448                     ; 672       pendingbitstatus = RESET;
2453  00ae 4f            	clr	a
2455  00af               L5401:
2456                     ; 676   return  pendingbitstatus;
2460  00af 5b04          	addw	sp,#4
2461  00b1 81            	ret	
2498                     ; 706 void UART3_ClearITPendingBit(UART3_IT_TypeDef UART3_IT)
2498                     ; 707 {
2499                     .text:	section	.text,new
2500  0000               _UART3_ClearITPendingBit:
2502  0000 89            	pushw	x
2503       00000000      OFST:	set	0
2506                     ; 709   assert_param(IS_UART3_CLEAR_IT_OK(UART3_IT));
2508  0001 a30255        	cpw	x,#597
2509  0004 2718          	jreq	L613
2510  0006 a30412        	cpw	x,#1042
2511  0009 2713          	jreq	L613
2512  000b a30346        	cpw	x,#838
2513  000e 270e          	jreq	L613
2514  0010 ae02c5        	ldw	x,#709
2515  0013 89            	pushw	x
2516  0014 5f            	clrw	x
2517  0015 89            	pushw	x
2518  0016 ae0008        	ldw	x,#L531
2519  0019 cd0000        	call	_assert_failed
2521  001c 5b04          	addw	sp,#4
2522  001e               L613:
2523                     ; 712   if (UART3_IT == UART3_IT_RXNE)
2525  001e 1e01          	ldw	x,(OFST+1,sp)
2526  0020 a30255        	cpw	x,#597
2527  0023 2606          	jrne	L1111
2528                     ; 714     UART3->SR = (uint8_t)~(UART3_SR_RXNE);
2530  0025 35df5240      	mov	21056,#223
2532  0029 200f          	jra	L3111
2533  002b               L1111:
2534                     ; 717   else if (UART3_IT == UART3_IT_LBDF)
2536  002b a30346        	cpw	x,#838
2537  002e 2606          	jrne	L5111
2538                     ; 719     UART3->CR4 &= (uint8_t)~(UART3_CR4_LBDF);
2540  0030 72195247      	bres	21063,#4
2542  0034 2004          	jra	L3111
2543  0036               L5111:
2544                     ; 724     UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
2546  0036 72135249      	bres	21065,#1
2547  003a               L3111:
2548                     ; 726 }
2551  003a 85            	popw	x
2552  003b 81            	ret	
2565                     	xdef	_UART3_ClearITPendingBit
2566                     	xdef	_UART3_GetITStatus
2567                     	xdef	_UART3_ClearFlag
2568                     	xdef	_UART3_GetFlagStatus
2569                     	xdef	_UART3_SetAddress
2570                     	xdef	_UART3_SendBreak
2571                     	xdef	_UART3_SendData9
2572                     	xdef	_UART3_SendData8
2573                     	xdef	_UART3_ReceiveData9
2574                     	xdef	_UART3_ReceiveData8
2575                     	xdef	_UART3_WakeUpConfig
2576                     	xdef	_UART3_ReceiverWakeUpCmd
2577                     	xdef	_UART3_LINCmd
2578                     	xdef	_UART3_LINConfig
2579                     	xdef	_UART3_LINBreakDetectionConfig
2580                     	xdef	_UART3_ITConfig
2581                     	xdef	_UART3_Cmd
2582                     	xdef	_UART3_Init
2583                     	xdef	_UART3_DeInit
2584                     	xref	_assert_failed
2585                     	xref	_CLK_GetClockFreq
2586                     	switch	.const
2587  0008               L531:
2588  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2589  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2590  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2591  003e 5f7561727433  	dc.b	"_uart3.c",0
2592                     	xref.b	c_lreg
2593                     	xref.b	c_x
2613                     	xref	c_lsub
2614                     	xref	c_smul
2615                     	xref	c_ludv
2616                     	xref	c_rtol
2617                     	xref	c_llsh
2618                     	xref	c_lcmp
2619                     	xref	c_ltor
2620                     	end
