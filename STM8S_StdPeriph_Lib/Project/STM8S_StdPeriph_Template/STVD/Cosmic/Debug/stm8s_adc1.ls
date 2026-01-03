   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 52 void ADC1_DeInit(void)
  49                     ; 53 {
  50                     .text:	section	.text,new
  51  0000               f_ADC1_DeInit:
  55                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  57  0000 725f5400      	clr	21504
  58                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  60  0004 725f5401      	clr	21505
  61                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  63  0008 725f5402      	clr	21506
  64                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  66  000c 725f5403      	clr	21507
  67                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  69  0010 725f5406      	clr	21510
  70                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  72  0014 725f5407      	clr	21511
  73                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  75  0018 35ff5408      	mov	21512,#255
  76                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  78  001c 35035409      	mov	21513,#3
  79                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  81  0020 725f540a      	clr	21514
  82                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  84  0024 725f540b      	clr	21515
  85                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  87  0028 725f540e      	clr	21518
  88                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  90  002c 725f540f      	clr	21519
  91                     ; 66 }
  94  0030 87            	retf	
 545                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 545                     ; 89 {
 546                     .text:	section	.text,new
 547  0000               f_ADC1_Init:
 549  0000 89            	pushw	x
 550       00000000      OFST:	set	0
 553                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 555  0001 9e            	ld	a,xh
 556  0002 4d            	tnz	a
 557  0003 270b          	jreq	L41
 558  0005 9e            	ld	a,xh
 559  0006 4a            	dec	a
 560  0007 2707          	jreq	L41
 561  0009 ae005b        	ldw	x,#91
 562  000c 8d090109      	callf	LC001
 563  0010               L41:
 564                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 566  0010 7b02          	ld	a,(OFST+2,sp)
 567  0012 272f          	jreq	L42
 568  0014 a101          	cp	a,#1
 569  0016 272b          	jreq	L42
 570  0018 a102          	cp	a,#2
 571  001a 2727          	jreq	L42
 572  001c a103          	cp	a,#3
 573  001e 2723          	jreq	L42
 574  0020 a104          	cp	a,#4
 575  0022 271f          	jreq	L42
 576  0024 a105          	cp	a,#5
 577  0026 271b          	jreq	L42
 578  0028 a106          	cp	a,#6
 579  002a 2717          	jreq	L42
 580  002c a107          	cp	a,#7
 581  002e 2713          	jreq	L42
 582  0030 a108          	cp	a,#8
 583  0032 270f          	jreq	L42
 584  0034 a10c          	cp	a,#12
 585  0036 270b          	jreq	L42
 586  0038 a109          	cp	a,#9
 587  003a 2707          	jreq	L42
 588  003c ae005c        	ldw	x,#92
 589  003f 8d090109      	callf	LC001
 590  0043               L42:
 591                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 593  0043 7b06          	ld	a,(OFST+6,sp)
 594  0045 2723          	jreq	L43
 595  0047 a110          	cp	a,#16
 596  0049 271f          	jreq	L43
 597  004b a120          	cp	a,#32
 598  004d 271b          	jreq	L43
 599  004f a130          	cp	a,#48
 600  0051 2717          	jreq	L43
 601  0053 a140          	cp	a,#64
 602  0055 2713          	jreq	L43
 603  0057 a150          	cp	a,#80
 604  0059 270f          	jreq	L43
 605  005b a160          	cp	a,#96
 606  005d 270b          	jreq	L43
 607  005f a170          	cp	a,#112
 608  0061 2707          	jreq	L43
 609  0063 ae005d        	ldw	x,#93
 610  0066 8d090109      	callf	LC001
 611  006a               L43:
 612                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 614  006a 7b07          	ld	a,(OFST+7,sp)
 615  006c 270b          	jreq	L44
 616  006e a110          	cp	a,#16
 617  0070 2707          	jreq	L44
 618  0072 ae005e        	ldw	x,#94
 619  0075 8d090109      	callf	LC001
 620  0079               L44:
 621                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 623  0079 7b08          	ld	a,(OFST+8,sp)
 624  007b 270a          	jreq	L45
 625  007d 4a            	dec	a
 626  007e 2707          	jreq	L45
 627  0080 ae005f        	ldw	x,#95
 628  0083 8d090109      	callf	LC001
 629  0087               L45:
 630                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 632  0087 7b09          	ld	a,(OFST+9,sp)
 633  0089 270b          	jreq	L46
 634  008b a108          	cp	a,#8
 635  008d 2707          	jreq	L46
 636  008f ae0060        	ldw	x,#96
 637  0092 8d090109      	callf	LC001
 638  0096               L46:
 639                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 641  0096 7b0a          	ld	a,(OFST+10,sp)
 642  0098 2733          	jreq	L47
 643  009a a101          	cp	a,#1
 644  009c 272f          	jreq	L47
 645  009e a102          	cp	a,#2
 646  00a0 272b          	jreq	L47
 647  00a2 a103          	cp	a,#3
 648  00a4 2727          	jreq	L47
 649  00a6 a104          	cp	a,#4
 650  00a8 2723          	jreq	L47
 651  00aa a105          	cp	a,#5
 652  00ac 271f          	jreq	L47
 653  00ae a106          	cp	a,#6
 654  00b0 271b          	jreq	L47
 655  00b2 a107          	cp	a,#7
 656  00b4 2717          	jreq	L47
 657  00b6 a108          	cp	a,#8
 658  00b8 2713          	jreq	L47
 659  00ba a10c          	cp	a,#12
 660  00bc 270f          	jreq	L47
 661  00be a1ff          	cp	a,#255
 662  00c0 270b          	jreq	L47
 663  00c2 a109          	cp	a,#9
 664  00c4 2707          	jreq	L47
 665  00c6 ae0061        	ldw	x,#97
 666  00c9 8d090109      	callf	LC001
 667  00cd               L47:
 668                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 670  00cd 7b0b          	ld	a,(OFST+11,sp)
 671  00cf 270a          	jreq	L401
 672  00d1 4a            	dec	a
 673  00d2 2707          	jreq	L401
 674  00d4 ae0062        	ldw	x,#98
 675  00d7 8d090109      	callf	LC001
 676  00db               L401:
 677                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 679  00db 7b09          	ld	a,(OFST+9,sp)
 680  00dd 88            	push	a
 681  00de 7b03          	ld	a,(OFST+3,sp)
 682  00e0 97            	ld	xl,a
 683  00e1 7b02          	ld	a,(OFST+2,sp)
 684  00e3 95            	ld	xh,a
 685  00e4 8d000000      	callf	f_ADC1_ConversionConfig
 687  00e8 84            	pop	a
 688                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 690  00e9 7b06          	ld	a,(OFST+6,sp)
 691  00eb 8d000000      	callf	f_ADC1_PrescalerConfig
 693                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 695  00ef 7b08          	ld	a,(OFST+8,sp)
 696  00f1 97            	ld	xl,a
 697  00f2 7b07          	ld	a,(OFST+7,sp)
 698  00f4 95            	ld	xh,a
 699  00f5 8d000000      	callf	f_ADC1_ExternalTriggerConfig
 701                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 703  00f9 7b0b          	ld	a,(OFST+11,sp)
 704  00fb 97            	ld	xl,a
 705  00fc 7b0a          	ld	a,(OFST+10,sp)
 706  00fe 95            	ld	xh,a
 707  00ff 8d000000      	callf	f_ADC1_SchmittTriggerConfig
 709                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 711  0103 72105401      	bset	21505,#0
 712                     ; 119 }
 715  0107 85            	popw	x
 716  0108 87            	retf	
 717  0109               LC001:
 718  0109 89            	pushw	x
 719  010a 5f            	clrw	x
 720  010b 89            	pushw	x
 721  010c ae0000        	ldw	x,#L542
 722  010f 8d000000      	callf	f_assert_failed
 724  0113 5b04          	addw	sp,#4
 725  0115 87            	retf	
 760                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 760                     ; 127 {
 761                     .text:	section	.text,new
 762  0000               f_ADC1_Cmd:
 764  0000 88            	push	a
 765       00000000      OFST:	set	0
 768                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 770  0001 4d            	tnz	a
 771  0002 2712          	jreq	L621
 772  0004 4a            	dec	a
 773  0005 270f          	jreq	L621
 774  0007 ae0081        	ldw	x,#129
 775  000a 89            	pushw	x
 776  000b 5f            	clrw	x
 777  000c 89            	pushw	x
 778  000d ae0000        	ldw	x,#L542
 779  0010 8d000000      	callf	f_assert_failed
 781  0014 5b04          	addw	sp,#4
 782  0016               L621:
 783                     ; 131   if (NewState != DISABLE)
 785  0016 7b01          	ld	a,(OFST+1,sp)
 786  0018 2706          	jreq	L562
 787                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 789  001a 72105401      	bset	21505,#0
 791  001e 2004          	jra	L762
 792  0020               L562:
 793                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 795  0020 72115401      	bres	21505,#0
 796  0024               L762:
 797                     ; 139 }
 800  0024 84            	pop	a
 801  0025 87            	retf	
 836                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 836                     ; 147 {
 837                     .text:	section	.text,new
 838  0000               f_ADC1_ScanModeCmd:
 840  0000 88            	push	a
 841       00000000      OFST:	set	0
 844                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 846  0001 4d            	tnz	a
 847  0002 2712          	jreq	L041
 848  0004 4a            	dec	a
 849  0005 270f          	jreq	L041
 850  0007 ae0095        	ldw	x,#149
 851  000a 89            	pushw	x
 852  000b 5f            	clrw	x
 853  000c 89            	pushw	x
 854  000d ae0000        	ldw	x,#L542
 855  0010 8d000000      	callf	f_assert_failed
 857  0014 5b04          	addw	sp,#4
 858  0016               L041:
 859                     ; 151   if (NewState != DISABLE)
 861  0016 7b01          	ld	a,(OFST+1,sp)
 862  0018 2706          	jreq	L703
 863                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 865  001a 72125402      	bset	21506,#1
 867  001e 2004          	jra	L113
 868  0020               L703:
 869                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 871  0020 72135402      	bres	21506,#1
 872  0024               L113:
 873                     ; 159 }
 876  0024 84            	pop	a
 877  0025 87            	retf	
 912                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
 912                     ; 167 {
 913                     .text:	section	.text,new
 914  0000               f_ADC1_DataBufferCmd:
 916  0000 88            	push	a
 917       00000000      OFST:	set	0
 920                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 922  0001 4d            	tnz	a
 923  0002 2712          	jreq	L251
 924  0004 4a            	dec	a
 925  0005 270f          	jreq	L251
 926  0007 ae00a9        	ldw	x,#169
 927  000a 89            	pushw	x
 928  000b 5f            	clrw	x
 929  000c 89            	pushw	x
 930  000d ae0000        	ldw	x,#L542
 931  0010 8d000000      	callf	f_assert_failed
 933  0014 5b04          	addw	sp,#4
 934  0016               L251:
 935                     ; 171   if (NewState != DISABLE)
 937  0016 7b01          	ld	a,(OFST+1,sp)
 938  0018 2706          	jreq	L133
 939                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
 941  001a 721e5403      	bset	21507,#7
 943  001e 2004          	jra	L333
 944  0020               L133:
 945                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 947  0020 721f5403      	bres	21507,#7
 948  0024               L333:
 949                     ; 179 }
 952  0024 84            	pop	a
 953  0025 87            	retf	
1109                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1109                     ; 191 {
1110                     .text:	section	.text,new
1111  0000               f_ADC1_ITConfig:
1113  0000 89            	pushw	x
1114       00000000      OFST:	set	0
1117                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1119  0001 a30020        	cpw	x,#32
1120  0004 270c          	jreq	L461
1121  0006 a30010        	cpw	x,#16
1122  0009 2707          	jreq	L461
1123  000b ae00c1        	ldw	x,#193
1124  000e 8d360036      	callf	LC002
1125  0012               L461:
1126                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1128  0012 7b06          	ld	a,(OFST+6,sp)
1129  0014 270a          	jreq	L471
1130  0016 4a            	dec	a
1131  0017 2707          	jreq	L471
1132  0019 ae00c2        	ldw	x,#194
1133  001c 8d360036      	callf	LC002
1134  0020               L471:
1135                     ; 196   if (NewState != DISABLE)
1137  0020 7b06          	ld	a,(OFST+6,sp)
1138  0022 2707          	jreq	L124
1139                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1141  0024 c65400        	ld	a,21504
1142  0027 1a02          	or	a,(OFST+2,sp)
1144  0029 2006          	jra	L324
1145  002b               L124:
1146                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1148  002b 7b02          	ld	a,(OFST+2,sp)
1149  002d 43            	cpl	a
1150  002e c45400        	and	a,21504
1151  0031               L324:
1152  0031 c75400        	ld	21504,a
1153                     ; 206 }
1156  0034 85            	popw	x
1157  0035 87            	retf	
1158  0036               LC002:
1159  0036 89            	pushw	x
1160  0037 5f            	clrw	x
1161  0038 89            	pushw	x
1162  0039 ae0000        	ldw	x,#L542
1163  003c 8d000000      	callf	f_assert_failed
1165  0040 5b04          	addw	sp,#4
1166  0042 87            	retf	
1202                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1202                     ; 215 {
1203                     .text:	section	.text,new
1204  0000               f_ADC1_PrescalerConfig:
1206  0000 88            	push	a
1207       00000000      OFST:	set	0
1210                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1212  0001 4d            	tnz	a
1213  0002 272b          	jreq	L602
1214  0004 a110          	cp	a,#16
1215  0006 2727          	jreq	L602
1216  0008 a120          	cp	a,#32
1217  000a 2723          	jreq	L602
1218  000c a130          	cp	a,#48
1219  000e 271f          	jreq	L602
1220  0010 a140          	cp	a,#64
1221  0012 271b          	jreq	L602
1222  0014 a150          	cp	a,#80
1223  0016 2717          	jreq	L602
1224  0018 a160          	cp	a,#96
1225  001a 2713          	jreq	L602
1226  001c a170          	cp	a,#112
1227  001e 270f          	jreq	L602
1228  0020 ae00d9        	ldw	x,#217
1229  0023 89            	pushw	x
1230  0024 5f            	clrw	x
1231  0025 89            	pushw	x
1232  0026 ae0000        	ldw	x,#L542
1233  0029 8d000000      	callf	f_assert_failed
1235  002d 5b04          	addw	sp,#4
1236  002f               L602:
1237                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1239  002f c65401        	ld	a,21505
1240  0032 a48f          	and	a,#143
1241  0034 c75401        	ld	21505,a
1242                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1244  0037 c65401        	ld	a,21505
1245  003a 1a01          	or	a,(OFST+1,sp)
1246  003c c75401        	ld	21505,a
1247                     ; 223 }
1250  003f 84            	pop	a
1251  0040 87            	retf	
1298                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1298                     ; 234 {
1299                     .text:	section	.text,new
1300  0000               f_ADC1_SchmittTriggerConfig:
1302  0000 89            	pushw	x
1303       00000000      OFST:	set	0
1306                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1308  0001 9e            	ld	a,xh
1309  0002 4d            	tnz	a
1310  0003 273c          	jreq	L022
1311  0005 9e            	ld	a,xh
1312  0006 4a            	dec	a
1313  0007 2738          	jreq	L022
1314  0009 9e            	ld	a,xh
1315  000a a102          	cp	a,#2
1316  000c 2733          	jreq	L022
1317  000e 9e            	ld	a,xh
1318  000f a103          	cp	a,#3
1319  0011 272e          	jreq	L022
1320  0013 9e            	ld	a,xh
1321  0014 a104          	cp	a,#4
1322  0016 2729          	jreq	L022
1323  0018 9e            	ld	a,xh
1324  0019 a105          	cp	a,#5
1325  001b 2724          	jreq	L022
1326  001d 9e            	ld	a,xh
1327  001e a106          	cp	a,#6
1328  0020 271f          	jreq	L022
1329  0022 9e            	ld	a,xh
1330  0023 a107          	cp	a,#7
1331  0025 271a          	jreq	L022
1332  0027 9e            	ld	a,xh
1333  0028 a108          	cp	a,#8
1334  002a 2715          	jreq	L022
1335  002c 9e            	ld	a,xh
1336  002d a10c          	cp	a,#12
1337  002f 2710          	jreq	L022
1338  0031 9e            	ld	a,xh
1339  0032 4c            	inc	a
1340  0033 270c          	jreq	L022
1341  0035 9e            	ld	a,xh
1342  0036 a109          	cp	a,#9
1343  0038 2707          	jreq	L022
1344  003a ae00ec        	ldw	x,#236
1345  003d 8dca00ca      	callf	LC006
1346  0041               L022:
1347                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1349  0041 7b02          	ld	a,(OFST+2,sp)
1350  0043 270a          	jreq	L032
1351  0045 4a            	dec	a
1352  0046 2707          	jreq	L032
1353  0048 ae00ed        	ldw	x,#237
1354  004b 8dca00ca      	callf	LC006
1355  004f               L032:
1356                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1358  004f 7b01          	ld	a,(OFST+1,sp)
1359  0051 a1ff          	cp	a,#255
1360  0053 261d          	jrne	L564
1361                     ; 241     if (NewState != DISABLE)
1363  0055 7b02          	ld	a,(OFST+2,sp)
1364  0057 270a          	jreq	L764
1365                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1367  0059 725f5407      	clr	21511
1368                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1370  005d 725f5406      	clr	21510
1372  0061 205f          	jra	L374
1373  0063               L764:
1374                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1376  0063 c65407        	ld	a,21511
1377  0066 aaff          	or	a,#255
1378  0068 c75407        	ld	21511,a
1379                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1381  006b c65406        	ld	a,21510
1382  006e aaff          	or	a,#255
1383  0070 204d          	jpf	LC003
1384  0072               L564:
1385                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1387  0072 a108          	cp	a,#8
1388  0074 0d02          	tnz	(OFST+2,sp)
1389  0076 2424          	jruge	L574
1390                     ; 254     if (NewState != DISABLE)
1392  0078 2713          	jreq	L774
1393                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1395  007a 8dc400c4      	callf	LC005
1396  007e 2704          	jreq	L432
1397  0080               L632:
1398  0080 48            	sll	a
1399  0081 5a            	decw	x
1400  0082 26fc          	jrne	L632
1401  0084               L432:
1402  0084 43            	cpl	a
1403  0085 c45407        	and	a,21511
1404  0088               LC004:
1405  0088 c75407        	ld	21511,a
1407  008b 2035          	jra	L374
1408  008d               L774:
1409                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1411  008d 8dc400c4      	callf	LC005
1412  0091 2704          	jreq	L042
1413  0093               L242:
1414  0093 48            	sll	a
1415  0094 5a            	decw	x
1416  0095 26fc          	jrne	L242
1417  0097               L042:
1418  0097 ca5407        	or	a,21511
1419  009a 20ec          	jpf	LC004
1420  009c               L574:
1421                     ; 265     if (NewState != DISABLE)
1423  009c 2712          	jreq	L505
1424                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1426  009e a008          	sub	a,#8
1427  00a0 8dc400c4      	callf	LC005
1428  00a4 2704          	jreq	L442
1429  00a6               L642:
1430  00a6 48            	sll	a
1431  00a7 5a            	decw	x
1432  00a8 26fc          	jrne	L642
1433  00aa               L442:
1434  00aa 43            	cpl	a
1435  00ab c45406        	and	a,21510
1437  00ae 200f          	jpf	LC003
1438  00b0               L505:
1439                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1441  00b0 a008          	sub	a,#8
1442  00b2 8dc400c4      	callf	LC005
1443  00b6 2704          	jreq	L052
1444  00b8               L252:
1445  00b8 48            	sll	a
1446  00b9 5a            	decw	x
1447  00ba 26fc          	jrne	L252
1448  00bc               L052:
1449  00bc ca5406        	or	a,21510
1450  00bf               LC003:
1451  00bf c75406        	ld	21510,a
1452  00c2               L374:
1453                     ; 274 }
1456  00c2 85            	popw	x
1457  00c3 87            	retf	
1458  00c4               LC005:
1459  00c4 5f            	clrw	x
1460  00c5 97            	ld	xl,a
1461  00c6 a601          	ld	a,#1
1462  00c8 5d            	tnzw	x
1463  00c9 87            	retf	
1464  00ca               LC006:
1465  00ca 89            	pushw	x
1466  00cb 5f            	clrw	x
1467  00cc 89            	pushw	x
1468  00cd ae0000        	ldw	x,#L542
1469  00d0 8d000000      	callf	f_assert_failed
1471  00d4 5b04          	addw	sp,#4
1472  00d6 87            	retf	
1529                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1529                     ; 287 {
1530                     .text:	section	.text,new
1531  0000               f_ADC1_ConversionConfig:
1533  0000 89            	pushw	x
1534       00000000      OFST:	set	0
1537                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1539  0001 9e            	ld	a,xh
1540  0002 4d            	tnz	a
1541  0003 270b          	jreq	L262
1542  0005 9e            	ld	a,xh
1543  0006 4a            	dec	a
1544  0007 2707          	jreq	L262
1545  0009 ae0121        	ldw	x,#289
1546  000c 8d7f007f      	callf	LC007
1547  0010               L262:
1548                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1550  0010 7b02          	ld	a,(OFST+2,sp)
1551  0012 272f          	jreq	L272
1552  0014 a101          	cp	a,#1
1553  0016 272b          	jreq	L272
1554  0018 a102          	cp	a,#2
1555  001a 2727          	jreq	L272
1556  001c a103          	cp	a,#3
1557  001e 2723          	jreq	L272
1558  0020 a104          	cp	a,#4
1559  0022 271f          	jreq	L272
1560  0024 a105          	cp	a,#5
1561  0026 271b          	jreq	L272
1562  0028 a106          	cp	a,#6
1563  002a 2717          	jreq	L272
1564  002c a107          	cp	a,#7
1565  002e 2713          	jreq	L272
1566  0030 a108          	cp	a,#8
1567  0032 270f          	jreq	L272
1568  0034 a10c          	cp	a,#12
1569  0036 270b          	jreq	L272
1570  0038 a109          	cp	a,#9
1571  003a 2707          	jreq	L272
1572  003c ae0122        	ldw	x,#290
1573  003f 8d7f007f      	callf	LC007
1574  0043               L272:
1575                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1577  0043 7b06          	ld	a,(OFST+6,sp)
1578  0045 270b          	jreq	L203
1579  0047 a108          	cp	a,#8
1580  0049 2707          	jreq	L203
1581  004b ae0123        	ldw	x,#291
1582  004e 8d7f007f      	callf	LC007
1583  0052               L203:
1584                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1586  0052 72175402      	bres	21506,#3
1587                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1589  0056 c65402        	ld	a,21506
1590  0059 1a06          	or	a,(OFST+6,sp)
1591  005b c75402        	ld	21506,a
1592                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1594  005e 7b01          	ld	a,(OFST+1,sp)
1595  0060 4a            	dec	a
1596  0061 2606          	jrne	L735
1597                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1599  0063 72125401      	bset	21505,#1
1601  0067 2004          	jra	L145
1602  0069               L735:
1603                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1605  0069 72135401      	bres	21505,#1
1606  006d               L145:
1607                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1609  006d c65400        	ld	a,21504
1610  0070 a4f0          	and	a,#240
1611  0072 c75400        	ld	21504,a
1612                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1614  0075 c65400        	ld	a,21504
1615  0078 1a02          	or	a,(OFST+2,sp)
1616  007a c75400        	ld	21504,a
1617                     ; 313 }
1620  007d 85            	popw	x
1621  007e 87            	retf	
1622  007f               LC007:
1623  007f 89            	pushw	x
1624  0080 5f            	clrw	x
1625  0081 89            	pushw	x
1626  0082 ae0000        	ldw	x,#L542
1627  0085 8d000000      	callf	f_assert_failed
1629  0089 5b04          	addw	sp,#4
1630  008b 87            	retf	
1676                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1676                     ; 326 {
1677                     .text:	section	.text,new
1678  0000               f_ADC1_ExternalTriggerConfig:
1680  0000 89            	pushw	x
1681       00000000      OFST:	set	0
1684                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1686  0001 9e            	ld	a,xh
1687  0002 4d            	tnz	a
1688  0003 270c          	jreq	L413
1689  0005 9e            	ld	a,xh
1690  0006 a110          	cp	a,#16
1691  0008 2707          	jreq	L413
1692  000a ae0148        	ldw	x,#328
1693  000d 8d3f003f      	callf	LC008
1694  0011               L413:
1695                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1697  0011 7b02          	ld	a,(OFST+2,sp)
1698  0013 270a          	jreq	L423
1699  0015 4a            	dec	a
1700  0016 2707          	jreq	L423
1701  0018 ae0149        	ldw	x,#329
1702  001b 8d3f003f      	callf	LC008
1703  001f               L423:
1704                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1706  001f c65402        	ld	a,21506
1707  0022 a4cf          	and	a,#207
1708  0024 c75402        	ld	21506,a
1709                     ; 334   if (NewState != DISABLE)
1711  0027 7b02          	ld	a,(OFST+2,sp)
1712  0029 2706          	jreq	L565
1713                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1715  002b 721c5402      	bset	21506,#6
1717  002f 2004          	jra	L765
1718  0031               L565:
1719                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1721  0031 721d5402      	bres	21506,#6
1722  0035               L765:
1723                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1725  0035 c65402        	ld	a,21506
1726  0038 1a01          	or	a,(OFST+1,sp)
1727  003a c75402        	ld	21506,a
1728                     ; 347 }
1731  003d 85            	popw	x
1732  003e 87            	retf	
1733  003f               LC008:
1734  003f 89            	pushw	x
1735  0040 5f            	clrw	x
1736  0041 89            	pushw	x
1737  0042 ae0000        	ldw	x,#L542
1738  0045 8d000000      	callf	f_assert_failed
1740  0049 5b04          	addw	sp,#4
1741  004b 87            	retf	
1764                     ; 358 void ADC1_StartConversion(void)
1764                     ; 359 {
1765                     .text:	section	.text,new
1766  0000               f_ADC1_StartConversion:
1770                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1772  0000 72105401      	bset	21505,#0
1773                     ; 361 }
1776  0004 87            	retf	
1819                     ; 370 uint16_t ADC1_GetConversionValue(void)
1819                     ; 371 {
1820                     .text:	section	.text,new
1821  0000               f_ADC1_GetConversionValue:
1823  0000 5205          	subw	sp,#5
1824       00000005      OFST:	set	5
1827                     ; 372   uint16_t temph = 0;
1829                     ; 373   uint8_t templ = 0;
1831                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1833  0002 720754020e    	btjf	21506,#3,L326
1834                     ; 378     templ = ADC1->DRL;
1836  0007 c65405        	ld	a,21509
1837  000a 6b03          	ld	(OFST-2,sp),a
1839                     ; 380     temph = ADC1->DRH;
1841  000c c65404        	ld	a,21508
1842  000f 97            	ld	xl,a
1844                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1846  0010 7b03          	ld	a,(OFST-2,sp)
1847  0012 02            	rlwa	x,a
1850  0013 201a          	jra	L526
1851  0015               L326:
1852                     ; 387     temph = ADC1->DRH;
1854  0015 c65404        	ld	a,21508
1855  0018 97            	ld	xl,a
1857                     ; 389     templ = ADC1->DRL;
1859  0019 c65405        	ld	a,21509
1860  001c 6b03          	ld	(OFST-2,sp),a
1862                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1864  001e 4f            	clr	a
1865  001f 02            	rlwa	x,a
1866  0020 1f01          	ldw	(OFST-4,sp),x
1868  0022 7b03          	ld	a,(OFST-2,sp)
1869  0024 97            	ld	xl,a
1870  0025 a640          	ld	a,#64
1871  0027 42            	mul	x,a
1872  0028 01            	rrwa	x,a
1873  0029 1a02          	or	a,(OFST-3,sp)
1874  002b 01            	rrwa	x,a
1875  002c 1a01          	or	a,(OFST-4,sp)
1876  002e 01            	rrwa	x,a
1878  002f               L526:
1879                     ; 394   return ((uint16_t)temph);
1883  002f 5b05          	addw	sp,#5
1884  0031 87            	retf	
1930                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1930                     ; 406 {
1931                     .text:	section	.text,new
1932  0000               f_ADC1_AWDChannelConfig:
1934  0000 89            	pushw	x
1935       00000000      OFST:	set	0
1938                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1940  0001 9f            	ld	a,xl
1941  0002 4d            	tnz	a
1942  0003 270b          	jreq	L243
1943  0005 9f            	ld	a,xl
1944  0006 4a            	dec	a
1945  0007 2707          	jreq	L243
1946  0009 ae0198        	ldw	x,#408
1947  000c 8d9d009d      	callf	LC012
1948  0010               L243:
1949                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
1951  0010 7b01          	ld	a,(OFST+1,sp)
1952  0012 2731          	jreq	L253
1953  0014 a101          	cp	a,#1
1954  0016 272d          	jreq	L253
1955  0018 a102          	cp	a,#2
1956  001a 2729          	jreq	L253
1957  001c a103          	cp	a,#3
1958  001e 2725          	jreq	L253
1959  0020 a104          	cp	a,#4
1960  0022 2721          	jreq	L253
1961  0024 a105          	cp	a,#5
1962  0026 271d          	jreq	L253
1963  0028 a106          	cp	a,#6
1964  002a 2719          	jreq	L253
1965  002c a107          	cp	a,#7
1966  002e 2715          	jreq	L253
1967  0030 a108          	cp	a,#8
1968  0032 2711          	jreq	L253
1969  0034 a10c          	cp	a,#12
1970  0036 270d          	jreq	L253
1971  0038 a109          	cp	a,#9
1972  003a 2709          	jreq	L253
1973  003c ae0199        	ldw	x,#409
1974  003f 8d9d009d      	callf	LC012
1975  0043 7b01          	ld	a,(OFST+1,sp)
1976  0045               L253:
1977                     ; 411   if (Channel < (uint8_t)8)
1979  0045 a108          	cp	a,#8
1980  0047 0d02          	tnz	(OFST+2,sp)
1981  0049 2424          	jruge	L156
1982                     ; 413     if (NewState != DISABLE)
1984  004b 270f          	jreq	L356
1985                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1987  004d 8d970097      	callf	LC011
1988  0051 2704          	jreq	L653
1989  0053               L063:
1990  0053 48            	sll	a
1991  0054 5a            	decw	x
1992  0055 26fc          	jrne	L063
1993  0057               L653:
1994  0057 ca540f        	or	a,21519
1996  005a 200e          	jpf	LC010
1997  005c               L356:
1998                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2000  005c 8d970097      	callf	LC011
2001  0060 2704          	jreq	L263
2002  0062               L463:
2003  0062 48            	sll	a
2004  0063 5a            	decw	x
2005  0064 26fc          	jrne	L463
2006  0066               L263:
2007  0066 43            	cpl	a
2008  0067 c4540f        	and	a,21519
2009  006a               LC010:
2010  006a c7540f        	ld	21519,a
2011  006d 2026          	jra	L756
2012  006f               L156:
2013                     ; 424     if (NewState != DISABLE)
2015  006f 2711          	jreq	L166
2016                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2018  0071 a008          	sub	a,#8
2019  0073 8d970097      	callf	LC011
2020  0077 2704          	jreq	L663
2021  0079               L073:
2022  0079 48            	sll	a
2023  007a 5a            	decw	x
2024  007b 26fc          	jrne	L073
2025  007d               L663:
2026  007d ca540e        	or	a,21518
2028  0080 2010          	jpf	LC009
2029  0082               L166:
2030                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2032  0082 a008          	sub	a,#8
2033  0084 8d970097      	callf	LC011
2034  0088 2704          	jreq	L273
2035  008a               L473:
2036  008a 48            	sll	a
2037  008b 5a            	decw	x
2038  008c 26fc          	jrne	L473
2039  008e               L273:
2040  008e 43            	cpl	a
2041  008f c4540e        	and	a,21518
2042  0092               LC009:
2043  0092 c7540e        	ld	21518,a
2044  0095               L756:
2045                     ; 433 }
2048  0095 85            	popw	x
2049  0096 87            	retf	
2050  0097               LC011:
2051  0097 5f            	clrw	x
2052  0098 97            	ld	xl,a
2053  0099 a601          	ld	a,#1
2054  009b 5d            	tnzw	x
2055  009c 87            	retf	
2056  009d               LC012:
2057  009d 89            	pushw	x
2058  009e 5f            	clrw	x
2059  009f 89            	pushw	x
2060  00a0 ae0000        	ldw	x,#L542
2061  00a3 8d000000      	callf	f_assert_failed
2063  00a7 5b04          	addw	sp,#4
2064  00a9 87            	retf	
2098                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2098                     ; 442 {
2099                     .text:	section	.text,new
2100  0000               f_ADC1_SetHighThreshold:
2102  0000 89            	pushw	x
2103       00000000      OFST:	set	0
2106                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2108  0001 54            	srlw	x
2109  0002 54            	srlw	x
2110  0003 9f            	ld	a,xl
2111  0004 c75408        	ld	21512,a
2112                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2114  0007 7b02          	ld	a,(OFST+2,sp)
2115  0009 c75409        	ld	21513,a
2116                     ; 445 }
2119  000c 85            	popw	x
2120  000d 87            	retf	
2154                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2154                     ; 454 {
2155                     .text:	section	.text,new
2156  0000               f_ADC1_SetLowThreshold:
2160                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2162  0000 9f            	ld	a,xl
2163  0001 c7540b        	ld	21515,a
2164                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2166  0004 54            	srlw	x
2167  0005 54            	srlw	x
2168  0006 9f            	ld	a,xl
2169  0007 c7540a        	ld	21514,a
2170                     ; 457 }
2173  000a 87            	retf	
2226                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2226                     ; 467 {
2227                     .text:	section	.text,new
2228  0000               f_ADC1_GetBufferValue:
2230  0000 88            	push	a
2231  0001 5205          	subw	sp,#5
2232       00000005      OFST:	set	5
2235                     ; 468   uint16_t temph = 0;
2237                     ; 469   uint8_t templ = 0;
2239                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2241  0003 a10a          	cp	a,#10
2242  0005 250f          	jrult	L604
2243  0007 ae01d8        	ldw	x,#472
2244  000a 89            	pushw	x
2245  000b 5f            	clrw	x
2246  000c 89            	pushw	x
2247  000d ae0000        	ldw	x,#L542
2248  0010 8d000000      	callf	f_assert_failed
2250  0014 5b04          	addw	sp,#4
2251  0016               L604:
2252                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2254  0016 7b06          	ld	a,(OFST+1,sp)
2255  0018 48            	sll	a
2256  0019 5f            	clrw	x
2257  001a 97            	ld	xl,a
2258  001b 7207540213    	btjf	21506,#3,L747
2259                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2261  0020 d653e1        	ld	a,(21473,x)
2262  0023 6b03          	ld	(OFST-2,sp),a
2264                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2266  0025 7b06          	ld	a,(OFST+1,sp)
2267  0027 48            	sll	a
2268  0028 5f            	clrw	x
2269  0029 97            	ld	xl,a
2270  002a d653e0        	ld	a,(21472,x)
2271  002d 97            	ld	xl,a
2273                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2275  002e 7b03          	ld	a,(OFST-2,sp)
2276  0030 02            	rlwa	x,a
2279  0031 2024          	jra	L157
2280  0033               L747:
2281                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2283  0033 d653e0        	ld	a,(21472,x)
2284  0036 5f            	clrw	x
2285  0037 97            	ld	xl,a
2286  0038 1f04          	ldw	(OFST-1,sp),x
2288                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2290  003a 7b06          	ld	a,(OFST+1,sp)
2291  003c 48            	sll	a
2292  003d 5f            	clrw	x
2293  003e 97            	ld	xl,a
2294  003f d653e1        	ld	a,(21473,x)
2295  0042 6b03          	ld	(OFST-2,sp),a
2297                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2299  0044 4f            	clr	a
2300  0045 1e04          	ldw	x,(OFST-1,sp)
2301  0047 02            	rlwa	x,a
2302  0048 1f01          	ldw	(OFST-4,sp),x
2304  004a 7b03          	ld	a,(OFST-2,sp)
2305  004c 97            	ld	xl,a
2306  004d a640          	ld	a,#64
2307  004f 42            	mul	x,a
2308  0050 01            	rrwa	x,a
2309  0051 1a02          	or	a,(OFST-3,sp)
2310  0053 01            	rrwa	x,a
2311  0054 1a01          	or	a,(OFST-4,sp)
2312  0056 01            	rrwa	x,a
2314  0057               L157:
2315                     ; 493   return ((uint16_t)temph);
2319  0057 5b06          	addw	sp,#6
2320  0059 87            	retf	
2386                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2386                     ; 503 {
2387                     .text:	section	.text,new
2388  0000               f_ADC1_GetAWDChannelStatus:
2390  0000 88            	push	a
2391  0001 88            	push	a
2392       00000001      OFST:	set	1
2395                     ; 504   uint8_t status = 0;
2397                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2399  0002 4d            	tnz	a
2400  0003 2737          	jreq	L024
2401  0005 a101          	cp	a,#1
2402  0007 2733          	jreq	L024
2403  0009 a102          	cp	a,#2
2404  000b 272f          	jreq	L024
2405  000d a103          	cp	a,#3
2406  000f 272b          	jreq	L024
2407  0011 a104          	cp	a,#4
2408  0013 2727          	jreq	L024
2409  0015 a105          	cp	a,#5
2410  0017 2723          	jreq	L024
2411  0019 a106          	cp	a,#6
2412  001b 271f          	jreq	L024
2413  001d a107          	cp	a,#7
2414  001f 271b          	jreq	L024
2415  0021 a108          	cp	a,#8
2416  0023 2717          	jreq	L024
2417  0025 a10c          	cp	a,#12
2418  0027 2713          	jreq	L024
2419  0029 a109          	cp	a,#9
2420  002b 270f          	jreq	L024
2421  002d ae01fb        	ldw	x,#507
2422  0030 89            	pushw	x
2423  0031 5f            	clrw	x
2424  0032 89            	pushw	x
2425  0033 ae0000        	ldw	x,#L542
2426  0036 8d000000      	callf	f_assert_failed
2428  003a 5b04          	addw	sp,#4
2429  003c               L024:
2430                     ; 509   if (Channel < (uint8_t)8)
2432  003c 7b02          	ld	a,(OFST+1,sp)
2433  003e a108          	cp	a,#8
2434  0040 2410          	jruge	L5001
2435                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2437  0042 5f            	clrw	x
2438  0043 97            	ld	xl,a
2439  0044 a601          	ld	a,#1
2440  0046 5d            	tnzw	x
2441  0047 2704          	jreq	L424
2442  0049               L624:
2443  0049 48            	sll	a
2444  004a 5a            	decw	x
2445  004b 26fc          	jrne	L624
2446  004d               L424:
2447  004d c4540d        	and	a,21517
2450  0050 2010          	jra	L7001
2451  0052               L5001:
2452                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2454  0052 a008          	sub	a,#8
2455  0054 5f            	clrw	x
2456  0055 97            	ld	xl,a
2457  0056 a601          	ld	a,#1
2458  0058 5d            	tnzw	x
2459  0059 2704          	jreq	L034
2460  005b               L234:
2461  005b 48            	sll	a
2462  005c 5a            	decw	x
2463  005d 26fc          	jrne	L234
2464  005f               L034:
2465  005f c4540c        	and	a,21516
2467  0062               L7001:
2468                     ; 518   return ((FlagStatus)status);
2472  0062 85            	popw	x
2473  0063 87            	retf	
2631                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2631                     ; 528 {
2632                     .text:	section	.text,new
2633  0000               f_ADC1_GetFlagStatus:
2635  0000 88            	push	a
2636  0001 88            	push	a
2637       00000001      OFST:	set	1
2640                     ; 529   uint8_t flagstatus = 0;
2642                     ; 530   uint8_t temp = 0;
2644                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2646  0002 a180          	cp	a,#128
2647  0004 273f          	jreq	L244
2648  0006 a141          	cp	a,#65
2649  0008 273b          	jreq	L244
2650  000a a140          	cp	a,#64
2651  000c 2737          	jreq	L244
2652  000e a110          	cp	a,#16
2653  0010 2733          	jreq	L244
2654  0012 a111          	cp	a,#17
2655  0014 272f          	jreq	L244
2656  0016 a112          	cp	a,#18
2657  0018 272b          	jreq	L244
2658  001a a113          	cp	a,#19
2659  001c 2727          	jreq	L244
2660  001e a114          	cp	a,#20
2661  0020 2723          	jreq	L244
2662  0022 a115          	cp	a,#21
2663  0024 271f          	jreq	L244
2664  0026 a116          	cp	a,#22
2665  0028 271b          	jreq	L244
2666  002a a117          	cp	a,#23
2667  002c 2717          	jreq	L244
2668  002e a118          	cp	a,#24
2669  0030 2713          	jreq	L244
2670  0032 a119          	cp	a,#25
2671  0034 270f          	jreq	L244
2672  0036 ae0215        	ldw	x,#533
2673  0039 89            	pushw	x
2674  003a 5f            	clrw	x
2675  003b 89            	pushw	x
2676  003c ae0000        	ldw	x,#L542
2677  003f 8d000000      	callf	f_assert_failed
2679  0043 5b04          	addw	sp,#4
2680  0045               L244:
2681                     ; 535   if ((Flag & 0x0F) == 0x01)
2683  0045 7b02          	ld	a,(OFST+1,sp)
2684  0047 a40f          	and	a,#15
2685  0049 4a            	dec	a
2686  004a 2607          	jrne	L7701
2687                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2689  004c c65403        	ld	a,21507
2690  004f a440          	and	a,#64
2693  0051 2039          	jra	L1011
2694  0053               L7701:
2695                     ; 540   else if ((Flag & 0xF0) == 0x10)
2697  0053 7b02          	ld	a,(OFST+1,sp)
2698  0055 a4f0          	and	a,#240
2699  0057 a110          	cp	a,#16
2700  0059 262c          	jrne	L3011
2701                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2703  005b 7b02          	ld	a,(OFST+1,sp)
2704  005d a40f          	and	a,#15
2705  005f 6b01          	ld	(OFST+0,sp),a
2707                     ; 544     if (temp < 8)
2709  0061 a108          	cp	a,#8
2710  0063 2410          	jruge	L5011
2711                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2713  0065 5f            	clrw	x
2714  0066 97            	ld	xl,a
2715  0067 a601          	ld	a,#1
2716  0069 5d            	tnzw	x
2717  006a 2704          	jreq	L644
2718  006c               L054:
2719  006c 48            	sll	a
2720  006d 5a            	decw	x
2721  006e 26fc          	jrne	L054
2722  0070               L644:
2723  0070 c4540d        	and	a,21517
2726  0073 2017          	jra	L1011
2727  0075               L5011:
2728                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2730  0075 a008          	sub	a,#8
2731  0077 5f            	clrw	x
2732  0078 97            	ld	xl,a
2733  0079 a601          	ld	a,#1
2734  007b 5d            	tnzw	x
2735  007c 2704          	jreq	L254
2736  007e               L454:
2737  007e 48            	sll	a
2738  007f 5a            	decw	x
2739  0080 26fc          	jrne	L454
2740  0082               L254:
2741  0082 c4540c        	and	a,21516
2743  0085 2005          	jra	L1011
2744  0087               L3011:
2745                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
2747  0087 c65400        	ld	a,21504
2748  008a 1402          	and	a,(OFST+1,sp)
2750  008c               L1011:
2751                     ; 557   return ((FlagStatus)flagstatus);
2755  008c 85            	popw	x
2756  008d 87            	retf	
2800                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2800                     ; 568 {
2801                     .text:	section	.text,new
2802  0000               f_ADC1_ClearFlag:
2804  0000 88            	push	a
2805  0001 88            	push	a
2806       00000001      OFST:	set	1
2809                     ; 569   uint8_t temp = 0;
2811                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
2813  0002 a180          	cp	a,#128
2814  0004 273f          	jreq	L464
2815  0006 a141          	cp	a,#65
2816  0008 273b          	jreq	L464
2817  000a a140          	cp	a,#64
2818  000c 2737          	jreq	L464
2819  000e a110          	cp	a,#16
2820  0010 2733          	jreq	L464
2821  0012 a111          	cp	a,#17
2822  0014 272f          	jreq	L464
2823  0016 a112          	cp	a,#18
2824  0018 272b          	jreq	L464
2825  001a a113          	cp	a,#19
2826  001c 2727          	jreq	L464
2827  001e a114          	cp	a,#20
2828  0020 2723          	jreq	L464
2829  0022 a115          	cp	a,#21
2830  0024 271f          	jreq	L464
2831  0026 a116          	cp	a,#22
2832  0028 271b          	jreq	L464
2833  002a a117          	cp	a,#23
2834  002c 2717          	jreq	L464
2835  002e a118          	cp	a,#24
2836  0030 2713          	jreq	L464
2837  0032 a119          	cp	a,#25
2838  0034 270f          	jreq	L464
2839  0036 ae023c        	ldw	x,#572
2840  0039 89            	pushw	x
2841  003a 5f            	clrw	x
2842  003b 89            	pushw	x
2843  003c ae0000        	ldw	x,#L542
2844  003f 8d000000      	callf	f_assert_failed
2846  0043 5b04          	addw	sp,#4
2847  0045               L464:
2848                     ; 574   if ((Flag & 0x0F) == 0x01)
2850  0045 7b02          	ld	a,(OFST+1,sp)
2851  0047 a40f          	and	a,#15
2852  0049 4a            	dec	a
2853  004a 2606          	jrne	L5311
2854                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
2856  004c 721d5403      	bres	21507,#6
2858  0050 2045          	jra	L7311
2859  0052               L5311:
2860                     ; 579   else if ((Flag & 0xF0) == 0x10)
2862  0052 7b02          	ld	a,(OFST+1,sp)
2863  0054 a4f0          	and	a,#240
2864  0056 a110          	cp	a,#16
2865  0058 2634          	jrne	L1411
2866                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2868  005a 7b02          	ld	a,(OFST+1,sp)
2869  005c a40f          	and	a,#15
2870  005e 6b01          	ld	(OFST+0,sp),a
2872                     ; 583     if (temp < 8)
2874  0060 a108          	cp	a,#8
2875  0062 2414          	jruge	L3411
2876                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2878  0064 5f            	clrw	x
2879  0065 97            	ld	xl,a
2880  0066 a601          	ld	a,#1
2881  0068 5d            	tnzw	x
2882  0069 2704          	jreq	L074
2883  006b               L274:
2884  006b 48            	sll	a
2885  006c 5a            	decw	x
2886  006d 26fc          	jrne	L274
2887  006f               L074:
2888  006f 43            	cpl	a
2889  0070 c4540d        	and	a,21517
2890  0073 c7540d        	ld	21517,a
2892  0076 201f          	jra	L7311
2893  0078               L3411:
2894                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2896  0078 a008          	sub	a,#8
2897  007a 5f            	clrw	x
2898  007b 97            	ld	xl,a
2899  007c a601          	ld	a,#1
2900  007e 5d            	tnzw	x
2901  007f 2704          	jreq	L474
2902  0081               L674:
2903  0081 48            	sll	a
2904  0082 5a            	decw	x
2905  0083 26fc          	jrne	L674
2906  0085               L474:
2907  0085 43            	cpl	a
2908  0086 c4540c        	and	a,21516
2909  0089 c7540c        	ld	21516,a
2910  008c 2009          	jra	L7311
2911  008e               L1411:
2912                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
2914  008e 7b02          	ld	a,(OFST+1,sp)
2915  0090 43            	cpl	a
2916  0091 c45400        	and	a,21504
2917  0094 c75400        	ld	21504,a
2918  0097               L7311:
2919                     ; 596 }
2922  0097 85            	popw	x
2923  0098 87            	retf	
2978                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2978                     ; 617 {
2979                     .text:	section	.text,new
2980  0000               f_ADC1_GetITStatus:
2982  0000 89            	pushw	x
2983  0001 88            	push	a
2984       00000001      OFST:	set	1
2987                     ; 618   ITStatus itstatus = RESET;
2989                     ; 619   uint8_t temp = 0;
2991                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2993  0002 a30080        	cpw	x,#128
2994  0005 274b          	jreq	L605
2995  0007 a30140        	cpw	x,#320
2996  000a 2746          	jreq	L605
2997  000c a30110        	cpw	x,#272
2998  000f 2741          	jreq	L605
2999  0011 a30111        	cpw	x,#273
3000  0014 273c          	jreq	L605
3001  0016 a30112        	cpw	x,#274
3002  0019 2737          	jreq	L605
3003  001b a30113        	cpw	x,#275
3004  001e 2732          	jreq	L605
3005  0020 a30114        	cpw	x,#276
3006  0023 272d          	jreq	L605
3007  0025 a30115        	cpw	x,#277
3008  0028 2728          	jreq	L605
3009  002a a30116        	cpw	x,#278
3010  002d 2723          	jreq	L605
3011  002f a30117        	cpw	x,#279
3012  0032 271e          	jreq	L605
3013  0034 a30118        	cpw	x,#280
3014  0037 2719          	jreq	L605
3015  0039 a3011c        	cpw	x,#284
3016  003c 2714          	jreq	L605
3017  003e a30119        	cpw	x,#281
3018  0041 270f          	jreq	L605
3019  0043 ae026e        	ldw	x,#622
3020  0046 89            	pushw	x
3021  0047 5f            	clrw	x
3022  0048 89            	pushw	x
3023  0049 ae0000        	ldw	x,#L542
3024  004c 8d000000      	callf	f_assert_failed
3026  0050 5b04          	addw	sp,#4
3027  0052               L605:
3028                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3030  0052 7b03          	ld	a,(OFST+2,sp)
3031  0054 a4f0          	and	a,#240
3032  0056 5f            	clrw	x
3033  0057 02            	rlwa	x,a
3034  0058 a30010        	cpw	x,#16
3035  005b 262c          	jrne	L7711
3036                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3038  005d 7b03          	ld	a,(OFST+2,sp)
3039  005f a40f          	and	a,#15
3040  0061 6b01          	ld	(OFST+0,sp),a
3042                     ; 628     if (temp < 8)
3044  0063 a108          	cp	a,#8
3045  0065 2410          	jruge	L1021
3046                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3048  0067 5f            	clrw	x
3049  0068 97            	ld	xl,a
3050  0069 a601          	ld	a,#1
3051  006b 5d            	tnzw	x
3052  006c 2704          	jreq	L215
3053  006e               L415:
3054  006e 48            	sll	a
3055  006f 5a            	decw	x
3056  0070 26fc          	jrne	L415
3057  0072               L215:
3058  0072 c4540d        	and	a,21517
3061  0075 2017          	jra	L5021
3062  0077               L1021:
3063                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3065  0077 a008          	sub	a,#8
3066  0079 5f            	clrw	x
3067  007a 97            	ld	xl,a
3068  007b a601          	ld	a,#1
3069  007d 5d            	tnzw	x
3070  007e 2704          	jreq	L615
3071  0080               L025:
3072  0080 48            	sll	a
3073  0081 5a            	decw	x
3074  0082 26fc          	jrne	L025
3075  0084               L615:
3076  0084 c4540c        	and	a,21516
3078  0087 2005          	jra	L5021
3079  0089               L7711:
3080                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3082  0089 c65400        	ld	a,21504
3083  008c 1403          	and	a,(OFST+2,sp)
3085  008e               L5021:
3086                     ; 641   return ((ITStatus)itstatus);
3090  008e 5b03          	addw	sp,#3
3091  0090 87            	retf	
3136                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3136                     ; 663 {
3137                     .text:	section	.text,new
3138  0000               f_ADC1_ClearITPendingBit:
3140  0000 89            	pushw	x
3141  0001 88            	push	a
3142       00000001      OFST:	set	1
3145                     ; 664   uint8_t temp = 0;
3147                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3149  0002 a30080        	cpw	x,#128
3150  0005 274b          	jreq	L035
3151  0007 a30140        	cpw	x,#320
3152  000a 2746          	jreq	L035
3153  000c a30110        	cpw	x,#272
3154  000f 2741          	jreq	L035
3155  0011 a30111        	cpw	x,#273
3156  0014 273c          	jreq	L035
3157  0016 a30112        	cpw	x,#274
3158  0019 2737          	jreq	L035
3159  001b a30113        	cpw	x,#275
3160  001e 2732          	jreq	L035
3161  0020 a30114        	cpw	x,#276
3162  0023 272d          	jreq	L035
3163  0025 a30115        	cpw	x,#277
3164  0028 2728          	jreq	L035
3165  002a a30116        	cpw	x,#278
3166  002d 2723          	jreq	L035
3167  002f a30117        	cpw	x,#279
3168  0032 271e          	jreq	L035
3169  0034 a30118        	cpw	x,#280
3170  0037 2719          	jreq	L035
3171  0039 a3011c        	cpw	x,#284
3172  003c 2714          	jreq	L035
3173  003e a30119        	cpw	x,#281
3174  0041 270f          	jreq	L035
3175  0043 ae029b        	ldw	x,#667
3176  0046 89            	pushw	x
3177  0047 5f            	clrw	x
3178  0048 89            	pushw	x
3179  0049 ae0000        	ldw	x,#L542
3180  004c 8d000000      	callf	f_assert_failed
3182  0050 5b04          	addw	sp,#4
3183  0052               L035:
3184                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3186  0052 7b03          	ld	a,(OFST+2,sp)
3187  0054 a4f0          	and	a,#240
3188  0056 5f            	clrw	x
3189  0057 02            	rlwa	x,a
3190  0058 a30010        	cpw	x,#16
3191  005b 2634          	jrne	L1321
3192                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3194  005d 7b03          	ld	a,(OFST+2,sp)
3195  005f a40f          	and	a,#15
3196  0061 6b01          	ld	(OFST+0,sp),a
3198                     ; 673     if (temp < 8)
3200  0063 a108          	cp	a,#8
3201  0065 2414          	jruge	L3321
3202                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3204  0067 5f            	clrw	x
3205  0068 97            	ld	xl,a
3206  0069 a601          	ld	a,#1
3207  006b 5d            	tnzw	x
3208  006c 2704          	jreq	L435
3209  006e               L635:
3210  006e 48            	sll	a
3211  006f 5a            	decw	x
3212  0070 26fc          	jrne	L635
3213  0072               L435:
3214  0072 43            	cpl	a
3215  0073 c4540d        	and	a,21517
3216  0076 c7540d        	ld	21517,a
3218  0079 201f          	jra	L7321
3219  007b               L3321:
3220                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3222  007b a008          	sub	a,#8
3223  007d 5f            	clrw	x
3224  007e 97            	ld	xl,a
3225  007f a601          	ld	a,#1
3226  0081 5d            	tnzw	x
3227  0082 2704          	jreq	L045
3228  0084               L245:
3229  0084 48            	sll	a
3230  0085 5a            	decw	x
3231  0086 26fc          	jrne	L245
3232  0088               L045:
3233  0088 43            	cpl	a
3234  0089 c4540c        	and	a,21516
3235  008c c7540c        	ld	21516,a
3236  008f 2009          	jra	L7321
3237  0091               L1321:
3238                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3240  0091 7b03          	ld	a,(OFST+2,sp)
3241  0093 43            	cpl	a
3242  0094 c45400        	and	a,21504
3243  0097 c75400        	ld	21504,a
3244  009a               L7321:
3245                     ; 686 }
3248  009a 5b03          	addw	sp,#3
3249  009c 87            	retf	
3261                     	xdef	f_ADC1_ClearITPendingBit
3262                     	xdef	f_ADC1_GetITStatus
3263                     	xdef	f_ADC1_ClearFlag
3264                     	xdef	f_ADC1_GetFlagStatus
3265                     	xdef	f_ADC1_GetAWDChannelStatus
3266                     	xdef	f_ADC1_GetBufferValue
3267                     	xdef	f_ADC1_SetLowThreshold
3268                     	xdef	f_ADC1_SetHighThreshold
3269                     	xdef	f_ADC1_GetConversionValue
3270                     	xdef	f_ADC1_StartConversion
3271                     	xdef	f_ADC1_AWDChannelConfig
3272                     	xdef	f_ADC1_ExternalTriggerConfig
3273                     	xdef	f_ADC1_ConversionConfig
3274                     	xdef	f_ADC1_SchmittTriggerConfig
3275                     	xdef	f_ADC1_PrescalerConfig
3276                     	xdef	f_ADC1_ITConfig
3277                     	xdef	f_ADC1_DataBufferCmd
3278                     	xdef	f_ADC1_ScanModeCmd
3279                     	xdef	f_ADC1_Cmd
3280                     	xdef	f_ADC1_Init
3281                     	xdef	f_ADC1_DeInit
3282                     	xref	f_assert_failed
3283                     .const:	section	.text
3284  0000               L542:
3285  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3286  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3287  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
3288  0036 5f616463312e  	dc.b	"_adc1.c",0
3308                     	end
