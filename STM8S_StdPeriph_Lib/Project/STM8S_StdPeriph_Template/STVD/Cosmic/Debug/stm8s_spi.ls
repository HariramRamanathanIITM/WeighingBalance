   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 50 void SPI_DeInit(void)
  49                     ; 51 {
  50                     .text:	section	.text,new
  51  0000               f_SPI_DeInit:
  55                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  57  0000 725f5200      	clr	20992
  58                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  60  0004 725f5201      	clr	20993
  61                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  63  0008 725f5202      	clr	20994
  64                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  66  000c 35025203      	mov	20995,#2
  67                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  69  0010 35075205      	mov	20997,#7
  70                     ; 57 }
  73  0014 87            	retf	
 389                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 389                     ; 79 {
 390                     .text:	section	.text,new
 391  0000               f_SPI_Init:
 393  0000 89            	pushw	x
 394  0001 88            	push	a
 395       00000001      OFST:	set	1
 398                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 400  0002 9e            	ld	a,xh
 401  0003 4d            	tnz	a
 402  0004 270c          	jreq	L41
 403  0006 9e            	ld	a,xh
 404  0007 a180          	cp	a,#128
 405  0009 2707          	jreq	L41
 406  000b ae0051        	ldw	x,#81
 407  000e 8dce00ce      	callf	LC001
 408  0012               L41:
 409                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 411  0012 7b03          	ld	a,(OFST+2,sp)
 412  0014 2723          	jreq	L42
 413  0016 a108          	cp	a,#8
 414  0018 271f          	jreq	L42
 415  001a a110          	cp	a,#16
 416  001c 271b          	jreq	L42
 417  001e a118          	cp	a,#24
 418  0020 2717          	jreq	L42
 419  0022 a120          	cp	a,#32
 420  0024 2713          	jreq	L42
 421  0026 a128          	cp	a,#40
 422  0028 270f          	jreq	L42
 423  002a a130          	cp	a,#48
 424  002c 270b          	jreq	L42
 425  002e a138          	cp	a,#56
 426  0030 2707          	jreq	L42
 427  0032 ae0052        	ldw	x,#82
 428  0035 8dce00ce      	callf	LC001
 429  0039               L42:
 430                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 432  0039 7b07          	ld	a,(OFST+6,sp)
 433  003b a104          	cp	a,#4
 434  003d 270a          	jreq	L43
 435  003f 4d            	tnz	a
 436  0040 2707          	jreq	L43
 437  0042 ae0053        	ldw	x,#83
 438  0045 8dce00ce      	callf	LC001
 439  0049               L43:
 440                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 442  0049 7b08          	ld	a,(OFST+7,sp)
 443  004b 270b          	jreq	L44
 444  004d a102          	cp	a,#2
 445  004f 2707          	jreq	L44
 446  0051 ae0054        	ldw	x,#84
 447  0054 8dce00ce      	callf	LC001
 448  0058               L44:
 449                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 451  0058 7b09          	ld	a,(OFST+8,sp)
 452  005a 270a          	jreq	L45
 453  005c 4a            	dec	a
 454  005d 2707          	jreq	L45
 455  005f ae0055        	ldw	x,#85
 456  0062 8dce00ce      	callf	LC001
 457  0066               L45:
 458                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 460  0066 7b0a          	ld	a,(OFST+9,sp)
 461  0068 2713          	jreq	L46
 462  006a a104          	cp	a,#4
 463  006c 270f          	jreq	L46
 464  006e a180          	cp	a,#128
 465  0070 270b          	jreq	L46
 466  0072 a1c0          	cp	a,#192
 467  0074 2707          	jreq	L46
 468  0076 ae0056        	ldw	x,#86
 469  0079 8dce00ce      	callf	LC001
 470  007d               L46:
 471                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 473  007d 7b0b          	ld	a,(OFST+10,sp)
 474  007f a102          	cp	a,#2
 475  0081 270a          	jreq	L47
 476  0083 4d            	tnz	a
 477  0084 2707          	jreq	L47
 478  0086 ae0057        	ldw	x,#87
 479  0089 8dce00ce      	callf	LC001
 480  008d               L47:
 481                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 483  008d 7b0c          	ld	a,(OFST+11,sp)
 484  008f 2607          	jrne	L201
 485  0091 ae0058        	ldw	x,#88
 486  0094 8dce00ce      	callf	LC001
 487  0098               L201:
 488                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 488                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 490  0098 7b08          	ld	a,(OFST+7,sp)
 491  009a 1a09          	or	a,(OFST+8,sp)
 492  009c 6b01          	ld	(OFST+0,sp),a
 494  009e 7b02          	ld	a,(OFST+1,sp)
 495  00a0 1a03          	or	a,(OFST+2,sp)
 496  00a2 1a01          	or	a,(OFST+0,sp)
 497  00a4 c75200        	ld	20992,a
 498                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 500  00a7 7b0a          	ld	a,(OFST+9,sp)
 501  00a9 1a0b          	or	a,(OFST+10,sp)
 502  00ab c75201        	ld	20993,a
 503                     ; 97   if (Mode == SPI_MODE_MASTER)
 505  00ae 7b07          	ld	a,(OFST+6,sp)
 506  00b0 a104          	cp	a,#4
 507  00b2 2606          	jrne	L502
 508                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 510  00b4 72105201      	bset	20993,#0
 512  00b8 2004          	jra	L702
 513  00ba               L502:
 514                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 516  00ba 72115201      	bres	20993,#0
 517  00be               L702:
 518                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 520  00be c65200        	ld	a,20992
 521  00c1 1a07          	or	a,(OFST+6,sp)
 522  00c3 c75200        	ld	20992,a
 523                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 525  00c6 7b0c          	ld	a,(OFST+11,sp)
 526  00c8 c75205        	ld	20997,a
 527                     ; 111 }
 530  00cb 5b03          	addw	sp,#3
 531  00cd 87            	retf	
 532  00ce               LC001:
 533  00ce 89            	pushw	x
 534  00cf 5f            	clrw	x
 535  00d0 89            	pushw	x
 536  00d1 ae0000        	ldw	x,#L302
 537  00d4 8d000000      	callf	f_assert_failed
 539  00d8 5b04          	addw	sp,#4
 540  00da 87            	retf	
 595                     ; 119 void SPI_Cmd(FunctionalState NewState)
 595                     ; 120 {
 596                     .text:	section	.text,new
 597  0000               f_SPI_Cmd:
 599  0000 88            	push	a
 600       00000000      OFST:	set	0
 603                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 605  0001 4d            	tnz	a
 606  0002 2712          	jreq	L411
 607  0004 4a            	dec	a
 608  0005 270f          	jreq	L411
 609  0007 ae007a        	ldw	x,#122
 610  000a 89            	pushw	x
 611  000b 5f            	clrw	x
 612  000c 89            	pushw	x
 613  000d ae0000        	ldw	x,#L302
 614  0010 8d000000      	callf	f_assert_failed
 616  0014 5b04          	addw	sp,#4
 617  0016               L411:
 618                     ; 124   if (NewState != DISABLE)
 620  0016 7b01          	ld	a,(OFST+1,sp)
 621  0018 2706          	jreq	L732
 622                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 624  001a 721c5200      	bset	20992,#6
 626  001e 2004          	jra	L142
 627  0020               L732:
 628                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 630  0020 721d5200      	bres	20992,#6
 631  0024               L142:
 632                     ; 132 }
 635  0024 84            	pop	a
 636  0025 87            	retf	
 745                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 745                     ; 142 {
 746                     .text:	section	.text,new
 747  0000               f_SPI_ITConfig:
 749  0000 89            	pushw	x
 750  0001 88            	push	a
 751       00000001      OFST:	set	1
 754                     ; 143   uint8_t itpos = 0;
 756                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 758  0002 9e            	ld	a,xh
 759  0003 a117          	cp	a,#23
 760  0005 2716          	jreq	L621
 761  0007 9e            	ld	a,xh
 762  0008 a106          	cp	a,#6
 763  000a 2711          	jreq	L621
 764  000c 9e            	ld	a,xh
 765  000d a105          	cp	a,#5
 766  000f 270c          	jreq	L621
 767  0011 9e            	ld	a,xh
 768  0012 a134          	cp	a,#52
 769  0014 2707          	jreq	L621
 770  0016 ae0091        	ldw	x,#145
 771  0019 8d510051      	callf	LC002
 772  001d               L621:
 773                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 775  001d 7b03          	ld	a,(OFST+2,sp)
 776  001f 270a          	jreq	L631
 777  0021 4a            	dec	a
 778  0022 2707          	jreq	L631
 779  0024 ae0092        	ldw	x,#146
 780  0027 8d510051      	callf	LC002
 781  002b               L631:
 782                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 784  002b 7b02          	ld	a,(OFST+1,sp)
 785  002d a40f          	and	a,#15
 786  002f 5f            	clrw	x
 787  0030 97            	ld	xl,a
 788  0031 a601          	ld	a,#1
 789  0033 5d            	tnzw	x
 790  0034 2704          	jreq	L241
 791  0036               L441:
 792  0036 48            	sll	a
 793  0037 5a            	decw	x
 794  0038 26fc          	jrne	L441
 795  003a               L241:
 796  003a 6b01          	ld	(OFST+0,sp),a
 798                     ; 151   if (NewState != DISABLE)
 800  003c 0d03          	tnz	(OFST+2,sp)
 801  003e 2707          	jreq	L313
 802                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 804  0040 c65202        	ld	a,20994
 805  0043 1a01          	or	a,(OFST+0,sp)
 807  0045 2004          	jra	L513
 808  0047               L313:
 809                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 811  0047 43            	cpl	a
 812  0048 c45202        	and	a,20994
 813  004b               L513:
 814  004b c75202        	ld	20994,a
 815                     ; 159 }
 818  004e 5b03          	addw	sp,#3
 819  0050 87            	retf	
 820  0051               LC002:
 821  0051 89            	pushw	x
 822  0052 5f            	clrw	x
 823  0053 89            	pushw	x
 824  0054 ae0000        	ldw	x,#L302
 825  0057 8d000000      	callf	f_assert_failed
 827  005b 5b04          	addw	sp,#4
 828  005d 87            	retf	
 861                     ; 166 void SPI_SendData(uint8_t Data)
 861                     ; 167 {
 862                     .text:	section	.text,new
 863  0000               f_SPI_SendData:
 867                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 869  0000 c75204        	ld	20996,a
 870                     ; 169 }
 873  0003 87            	retf	
 895                     ; 176 uint8_t SPI_ReceiveData(void)
 895                     ; 177 {
 896                     .text:	section	.text,new
 897  0000               f_SPI_ReceiveData:
 901                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 903  0000 c65204        	ld	a,20996
 906  0003 87            	retf	
 942                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 942                     ; 188 {
 943                     .text:	section	.text,new
 944  0000               f_SPI_NSSInternalSoftwareCmd:
 946  0000 88            	push	a
 947       00000000      OFST:	set	0
 950                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 952  0001 4d            	tnz	a
 953  0002 2712          	jreq	L061
 954  0004 4a            	dec	a
 955  0005 270f          	jreq	L061
 956  0007 ae00be        	ldw	x,#190
 957  000a 89            	pushw	x
 958  000b 5f            	clrw	x
 959  000c 89            	pushw	x
 960  000d ae0000        	ldw	x,#L302
 961  0010 8d000000      	callf	f_assert_failed
 963  0014 5b04          	addw	sp,#4
 964  0016               L061:
 965                     ; 192   if (NewState != DISABLE)
 967  0016 7b01          	ld	a,(OFST+1,sp)
 968  0018 2706          	jreq	L363
 969                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 971  001a 72105201      	bset	20993,#0
 973  001e 2004          	jra	L563
 974  0020               L363:
 975                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 977  0020 72115201      	bres	20993,#0
 978  0024               L563:
 979                     ; 200 }
 982  0024 84            	pop	a
 983  0025 87            	retf	
1005                     ; 207 void SPI_TransmitCRC(void)
1005                     ; 208 {
1006                     .text:	section	.text,new
1007  0000               f_SPI_TransmitCRC:
1011                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1013  0000 72185201      	bset	20993,#4
1014                     ; 210 }
1017  0004 87            	retf	
1053                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1053                     ; 219 {
1054                     .text:	section	.text,new
1055  0000               f_SPI_CalculateCRCCmd:
1057  0000 88            	push	a
1058       00000000      OFST:	set	0
1061                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1063  0001 4d            	tnz	a
1064  0002 2712          	jreq	L471
1065  0004 4a            	dec	a
1066  0005 270f          	jreq	L471
1067  0007 ae00dd        	ldw	x,#221
1068  000a 89            	pushw	x
1069  000b 5f            	clrw	x
1070  000c 89            	pushw	x
1071  000d ae0000        	ldw	x,#L302
1072  0010 8d000000      	callf	f_assert_failed
1074  0014 5b04          	addw	sp,#4
1075  0016               L471:
1076                     ; 223   if (NewState != DISABLE)
1078  0016 7b01          	ld	a,(OFST+1,sp)
1079  0018 2706          	jreq	L514
1080                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1082  001a 721a5201      	bset	20993,#5
1084  001e 2004          	jra	L714
1085  0020               L514:
1086                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1088  0020 721b5201      	bres	20993,#5
1089  0024               L714:
1090                     ; 231 }
1093  0024 84            	pop	a
1094  0025 87            	retf	
1158                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1158                     ; 239 {
1159                     .text:	section	.text,new
1160  0000               f_SPI_GetCRC:
1162  0000 88            	push	a
1163  0001 88            	push	a
1164       00000001      OFST:	set	1
1167                     ; 240   uint8_t crcreg = 0;
1169                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1171  0002 a101          	cp	a,#1
1172  0004 2712          	jreq	L602
1173  0006 4d            	tnz	a
1174  0007 270f          	jreq	L602
1175  0009 ae00f3        	ldw	x,#243
1176  000c 89            	pushw	x
1177  000d 5f            	clrw	x
1178  000e 89            	pushw	x
1179  000f ae0000        	ldw	x,#L302
1180  0012 8d000000      	callf	f_assert_failed
1182  0016 5b04          	addw	sp,#4
1183  0018               L602:
1184                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1186  0018 7b02          	ld	a,(OFST+1,sp)
1187  001a 2705          	jreq	L354
1188                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1190  001c c65207        	ld	a,20999
1193  001f 2003          	jra	L554
1194  0021               L354:
1195                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1197  0021 c65206        	ld	a,20998
1199  0024               L554:
1200                     ; 255   return crcreg;
1204  0024 85            	popw	x
1205  0025 87            	retf	
1229                     ; 263 void SPI_ResetCRC(void)
1229                     ; 264 {
1230                     .text:	section	.text,new
1231  0000               f_SPI_ResetCRC:
1235                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1237  0000 a601          	ld	a,#1
1238  0002 8d000000      	callf	f_SPI_CalculateCRCCmd
1240                     ; 270   SPI_Cmd(ENABLE);
1242  0006 a601          	ld	a,#1
1244                     ; 271 }
1247  0008 ac000000      	jpf	f_SPI_Cmd
1270                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1270                     ; 279 {
1271                     .text:	section	.text,new
1272  0000               f_SPI_GetCRCPolynomial:
1276                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1278  0000 c65205        	ld	a,20997
1281  0003 87            	retf	
1337                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1337                     ; 289 {
1338                     .text:	section	.text,new
1339  0000               f_SPI_BiDirectionalLineConfig:
1341  0000 88            	push	a
1342       00000000      OFST:	set	0
1345                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1347  0001 4d            	tnz	a
1348  0002 2712          	jreq	L032
1349  0004 4a            	dec	a
1350  0005 270f          	jreq	L032
1351  0007 ae0123        	ldw	x,#291
1352  000a 89            	pushw	x
1353  000b 5f            	clrw	x
1354  000c 89            	pushw	x
1355  000d ae0000        	ldw	x,#L302
1356  0010 8d000000      	callf	f_assert_failed
1358  0014 5b04          	addw	sp,#4
1359  0016               L032:
1360                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1362  0016 7b01          	ld	a,(OFST+1,sp)
1363  0018 2706          	jreq	L525
1364                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1366  001a 721c5201      	bset	20993,#6
1368  001e 2004          	jra	L725
1369  0020               L525:
1370                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1372  0020 721d5201      	bres	20993,#6
1373  0024               L725:
1374                     ; 301 }
1377  0024 84            	pop	a
1378  0025 87            	retf	
1499                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1499                     ; 312 {
1500                     .text:	section	.text,new
1501  0000               f_SPI_GetFlagStatus:
1503  0000 88            	push	a
1504  0001 88            	push	a
1505       00000001      OFST:	set	1
1508                     ; 313   FlagStatus status = RESET;
1510                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1512  0002 a140          	cp	a,#64
1513  0004 2727          	jreq	L242
1514  0006 a120          	cp	a,#32
1515  0008 2723          	jreq	L242
1516  000a a110          	cp	a,#16
1517  000c 271f          	jreq	L242
1518  000e a108          	cp	a,#8
1519  0010 271b          	jreq	L242
1520  0012 a102          	cp	a,#2
1521  0014 2717          	jreq	L242
1522  0016 a101          	cp	a,#1
1523  0018 2713          	jreq	L242
1524  001a a180          	cp	a,#128
1525  001c 270f          	jreq	L242
1526  001e ae013b        	ldw	x,#315
1527  0021 89            	pushw	x
1528  0022 5f            	clrw	x
1529  0023 89            	pushw	x
1530  0024 ae0000        	ldw	x,#L302
1531  0027 8d000000      	callf	f_assert_failed
1533  002b 5b04          	addw	sp,#4
1534  002d               L242:
1535                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1537  002d c65203        	ld	a,20995
1538  0030 1502          	bcp	a,(OFST+1,sp)
1539  0032 2704          	jreq	L506
1540                     ; 320     status = SET; /* SPI_FLAG is set */
1542  0034 a601          	ld	a,#1
1545  0036 2001          	jra	L706
1546  0038               L506:
1547                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1549  0038 4f            	clr	a
1551  0039               L706:
1552                     ; 328   return status;
1556  0039 85            	popw	x
1557  003a 87            	retf	
1592                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1592                     ; 347 {
1593                     .text:	section	.text,new
1594  0000               f_SPI_ClearFlag:
1596  0000 88            	push	a
1597       00000000      OFST:	set	0
1600                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1602  0001 a110          	cp	a,#16
1603  0003 2713          	jreq	L452
1604  0005 a108          	cp	a,#8
1605  0007 270f          	jreq	L452
1606  0009 ae015c        	ldw	x,#348
1607  000c 89            	pushw	x
1608  000d 5f            	clrw	x
1609  000e 89            	pushw	x
1610  000f ae0000        	ldw	x,#L302
1611  0012 8d000000      	callf	f_assert_failed
1613  0016 5b04          	addw	sp,#4
1614  0018               L452:
1615                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1617  0018 7b01          	ld	a,(OFST+1,sp)
1618  001a 43            	cpl	a
1619  001b c75203        	ld	20995,a
1620                     ; 351 }
1623  001e 84            	pop	a
1624  001f 87            	retf	
1706                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1706                     ; 367 {
1707                     .text:	section	.text,new
1708  0000               f_SPI_GetITStatus:
1710  0000 88            	push	a
1711  0001 89            	pushw	x
1712       00000002      OFST:	set	2
1715                     ; 368   ITStatus pendingbitstatus = RESET;
1717                     ; 369   uint8_t itpos = 0;
1719                     ; 370   uint8_t itmask1 = 0;
1721                     ; 371   uint8_t itmask2 = 0;
1723                     ; 372   uint8_t enablestatus = 0;
1725                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1727  0002 a165          	cp	a,#101
1728  0004 2723          	jreq	L662
1729  0006 a155          	cp	a,#85
1730  0008 271f          	jreq	L662
1731  000a a145          	cp	a,#69
1732  000c 271b          	jreq	L662
1733  000e a134          	cp	a,#52
1734  0010 2717          	jreq	L662
1735  0012 a117          	cp	a,#23
1736  0014 2713          	jreq	L662
1737  0016 a106          	cp	a,#6
1738  0018 270f          	jreq	L662
1739  001a ae0175        	ldw	x,#373
1740  001d 89            	pushw	x
1741  001e 5f            	clrw	x
1742  001f 89            	pushw	x
1743  0020 ae0000        	ldw	x,#L302
1744  0023 8d000000      	callf	f_assert_failed
1746  0027 5b04          	addw	sp,#4
1747  0029               L662:
1748                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1750  0029 7b03          	ld	a,(OFST+1,sp)
1751  002b a40f          	and	a,#15
1752  002d 5f            	clrw	x
1753  002e 97            	ld	xl,a
1754  002f a601          	ld	a,#1
1755  0031 5d            	tnzw	x
1756  0032 2704          	jreq	L272
1757  0034               L472:
1758  0034 48            	sll	a
1759  0035 5a            	decw	x
1760  0036 26fc          	jrne	L472
1761  0038               L272:
1762  0038 6b01          	ld	(OFST-1,sp),a
1764                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1766  003a 7b03          	ld	a,(OFST+1,sp)
1767  003c 4e            	swap	a
1768  003d a40f          	and	a,#15
1769  003f 6b02          	ld	(OFST+0,sp),a
1771                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1773  0041 5f            	clrw	x
1774  0042 97            	ld	xl,a
1775  0043 a601          	ld	a,#1
1776  0045 5d            	tnzw	x
1777  0046 2704          	jreq	L672
1778  0048               L003:
1779  0048 48            	sll	a
1780  0049 5a            	decw	x
1781  004a 26fc          	jrne	L003
1782  004c               L672:
1784                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1786  004c c45203        	and	a,20995
1787  004f 6b02          	ld	(OFST+0,sp),a
1789                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1791  0051 c65202        	ld	a,20994
1792  0054 1501          	bcp	a,(OFST-1,sp)
1793  0056 2708          	jreq	L176
1795  0058 7b02          	ld	a,(OFST+0,sp)
1796  005a 2704          	jreq	L176
1797                     ; 387     pendingbitstatus = SET;
1799  005c a601          	ld	a,#1
1802  005e 2001          	jra	L376
1803  0060               L176:
1804                     ; 392     pendingbitstatus = RESET;
1806  0060 4f            	clr	a
1808  0061               L376:
1809                     ; 395   return  pendingbitstatus;
1813  0061 5b03          	addw	sp,#3
1814  0063 87            	retf	
1859                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1859                     ; 413 {
1860                     .text:	section	.text,new
1861  0000               f_SPI_ClearITPendingBit:
1863  0000 88            	push	a
1864  0001 88            	push	a
1865       00000001      OFST:	set	1
1868                     ; 414   uint8_t itpos = 0;
1870                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1872  0002 a145          	cp	a,#69
1873  0004 2713          	jreq	L013
1874  0006 a134          	cp	a,#52
1875  0008 270f          	jreq	L013
1876  000a ae019f        	ldw	x,#415
1877  000d 89            	pushw	x
1878  000e 5f            	clrw	x
1879  000f 89            	pushw	x
1880  0010 ae0000        	ldw	x,#L302
1881  0013 8d000000      	callf	f_assert_failed
1883  0017 5b04          	addw	sp,#4
1884  0019               L013:
1885                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1887  0019 7b02          	ld	a,(OFST+1,sp)
1888  001b 4e            	swap	a
1889  001c a40f          	and	a,#15
1890  001e 5f            	clrw	x
1891  001f 97            	ld	xl,a
1892  0020 a601          	ld	a,#1
1893  0022 5d            	tnzw	x
1894  0023 2704          	jreq	L413
1895  0025               L613:
1896  0025 48            	sll	a
1897  0026 5a            	decw	x
1898  0027 26fc          	jrne	L613
1899  0029               L413:
1901                     ; 422   SPI->SR = (uint8_t)(~itpos);
1903  0029 43            	cpl	a
1904  002a c75203        	ld	20995,a
1905                     ; 424 }
1908  002d 85            	popw	x
1909  002e 87            	retf	
1921                     	xdef	f_SPI_ClearITPendingBit
1922                     	xdef	f_SPI_GetITStatus
1923                     	xdef	f_SPI_ClearFlag
1924                     	xdef	f_SPI_GetFlagStatus
1925                     	xdef	f_SPI_BiDirectionalLineConfig
1926                     	xdef	f_SPI_GetCRCPolynomial
1927                     	xdef	f_SPI_ResetCRC
1928                     	xdef	f_SPI_GetCRC
1929                     	xdef	f_SPI_CalculateCRCCmd
1930                     	xdef	f_SPI_TransmitCRC
1931                     	xdef	f_SPI_NSSInternalSoftwareCmd
1932                     	xdef	f_SPI_ReceiveData
1933                     	xdef	f_SPI_SendData
1934                     	xdef	f_SPI_ITConfig
1935                     	xdef	f_SPI_Cmd
1936                     	xdef	f_SPI_Init
1937                     	xdef	f_SPI_DeInit
1938                     	xref	f_assert_failed
1939                     .const:	section	.text
1940  0000               L302:
1941  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1942  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1943  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1944  0036 5f7370692e63  	dc.b	"_spi.c",0
1964                     	end
