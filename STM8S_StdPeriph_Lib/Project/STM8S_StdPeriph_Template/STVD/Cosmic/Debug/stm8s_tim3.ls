   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 51 void TIM3_DeInit(void)
  49                     ; 52 {
  50                     .text:	section	.text,new
  51  0000               f_TIM3_DeInit:
  55                     ; 53   TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
  57  0000 725f5320      	clr	21280
  58                     ; 54   TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
  60  0004 725f5321      	clr	21281
  61                     ; 55   TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
  63  0008 725f5323      	clr	21283
  64                     ; 58   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  66  000c 725f5327      	clr	21287
  67                     ; 61   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  69  0010 725f5327      	clr	21287
  70                     ; 62   TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
  72  0014 725f5325      	clr	21285
  73                     ; 63   TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
  75  0018 725f5326      	clr	21286
  76                     ; 64   TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
  78  001c 725f5328      	clr	21288
  79                     ; 65   TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
  81  0020 725f5329      	clr	21289
  82                     ; 66   TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
  84  0024 725f532a      	clr	21290
  85                     ; 67   TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
  87  0028 35ff532b      	mov	21291,#255
  88                     ; 68   TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
  90  002c 35ff532c      	mov	21292,#255
  91                     ; 69   TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
  93  0030 725f532d      	clr	21293
  94                     ; 70   TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
  96  0034 725f532e      	clr	21294
  97                     ; 71   TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
  99  0038 725f532f      	clr	21295
 100                     ; 72   TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
 102  003c 725f5330      	clr	21296
 103                     ; 73   TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
 105  0040 725f5322      	clr	21282
 106                     ; 74 }
 109  0044 87            	retf	
 276                     ; 82 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 276                     ; 83                         uint16_t TIM3_Period)
 276                     ; 84 {
 277                     .text:	section	.text,new
 278  0000               f_TIM3_TimeBaseInit:
 280       ffffffff      OFST: set -1
 283                     ; 86   TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
 285  0000 c7532a        	ld	21290,a
 286                     ; 88   TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
 288  0003 7b04          	ld	a,(OFST+5,sp)
 289  0005 c7532b        	ld	21291,a
 290                     ; 89   TIM3->ARRL = (uint8_t)(TIM3_Period);
 292  0008 7b05          	ld	a,(OFST+6,sp)
 293  000a c7532c        	ld	21292,a
 294                     ; 90 }
 297  000d 87            	retf	
 454                     ; 100 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 454                     ; 101                   TIM3_OutputState_TypeDef TIM3_OutputState,
 454                     ; 102                   uint16_t TIM3_Pulse,
 454                     ; 103                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 454                     ; 104 {
 455                     .text:	section	.text,new
 456  0000               f_TIM3_OC1Init:
 458  0000 89            	pushw	x
 459  0001 88            	push	a
 460       00000001      OFST:	set	1
 463                     ; 106   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 465  0002 9e            	ld	a,xh
 466  0003 4d            	tnz	a
 467  0004 2720          	jreq	L61
 468  0006 9e            	ld	a,xh
 469  0007 a110          	cp	a,#16
 470  0009 271b          	jreq	L61
 471  000b 9e            	ld	a,xh
 472  000c a120          	cp	a,#32
 473  000e 2716          	jreq	L61
 474  0010 9e            	ld	a,xh
 475  0011 a130          	cp	a,#48
 476  0013 2711          	jreq	L61
 477  0015 9e            	ld	a,xh
 478  0016 a160          	cp	a,#96
 479  0018 270c          	jreq	L61
 480  001a 9e            	ld	a,xh
 481  001b a170          	cp	a,#112
 482  001d 2707          	jreq	L61
 483  001f ae006a        	ldw	x,#106
 484  0022 8d750075      	callf	LC001
 485  0026               L61:
 486                     ; 107   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 488  0026 7b03          	ld	a,(OFST+2,sp)
 489  0028 270b          	jreq	L62
 490  002a a111          	cp	a,#17
 491  002c 2707          	jreq	L62
 492  002e ae006b        	ldw	x,#107
 493  0031 8d750075      	callf	LC001
 494  0035               L62:
 495                     ; 108   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 497  0035 7b09          	ld	a,(OFST+8,sp)
 498  0037 270b          	jreq	L63
 499  0039 a122          	cp	a,#34
 500  003b 2707          	jreq	L63
 501  003d ae006c        	ldw	x,#108
 502  0040 8d750075      	callf	LC001
 503  0044               L63:
 504                     ; 111   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 506  0044 c65327        	ld	a,21287
 507  0047 a4fc          	and	a,#252
 508  0049 c75327        	ld	21287,a
 509                     ; 113   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 511  004c 7b09          	ld	a,(OFST+8,sp)
 512  004e a402          	and	a,#2
 513  0050 6b01          	ld	(OFST+0,sp),a
 515  0052 7b03          	ld	a,(OFST+2,sp)
 516  0054 a401          	and	a,#1
 517  0056 1a01          	or	a,(OFST+0,sp)
 518  0058 ca5327        	or	a,21287
 519  005b c75327        	ld	21287,a
 520                     ; 116   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 522  005e c65325        	ld	a,21285
 523  0061 a48f          	and	a,#143
 524  0063 1a02          	or	a,(OFST+1,sp)
 525  0065 c75325        	ld	21285,a
 526                     ; 119   TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
 528  0068 7b07          	ld	a,(OFST+6,sp)
 529  006a c7532d        	ld	21293,a
 530                     ; 120   TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
 532  006d 7b08          	ld	a,(OFST+7,sp)
 533  006f c7532e        	ld	21294,a
 534                     ; 121 }
 537  0072 5b03          	addw	sp,#3
 538  0074 87            	retf	
 539  0075               LC001:
 540  0075 89            	pushw	x
 541  0076 5f            	clrw	x
 542  0077 89            	pushw	x
 543  0078 ae0000        	ldw	x,#L502
 544  007b 8d000000      	callf	f_assert_failed
 546  007f 5b04          	addw	sp,#4
 547  0081 87            	retf	
 611                     ; 131 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 611                     ; 132                   TIM3_OutputState_TypeDef TIM3_OutputState,
 611                     ; 133                   uint16_t TIM3_Pulse,
 611                     ; 134                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 611                     ; 135 {
 612                     .text:	section	.text,new
 613  0000               f_TIM3_OC2Init:
 615  0000 89            	pushw	x
 616  0001 88            	push	a
 617       00000001      OFST:	set	1
 620                     ; 137   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 622  0002 9e            	ld	a,xh
 623  0003 4d            	tnz	a
 624  0004 2720          	jreq	L05
 625  0006 9e            	ld	a,xh
 626  0007 a110          	cp	a,#16
 627  0009 271b          	jreq	L05
 628  000b 9e            	ld	a,xh
 629  000c a120          	cp	a,#32
 630  000e 2716          	jreq	L05
 631  0010 9e            	ld	a,xh
 632  0011 a130          	cp	a,#48
 633  0013 2711          	jreq	L05
 634  0015 9e            	ld	a,xh
 635  0016 a160          	cp	a,#96
 636  0018 270c          	jreq	L05
 637  001a 9e            	ld	a,xh
 638  001b a170          	cp	a,#112
 639  001d 2707          	jreq	L05
 640  001f ae0089        	ldw	x,#137
 641  0022 8d750075      	callf	LC002
 642  0026               L05:
 643                     ; 138   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 645  0026 7b03          	ld	a,(OFST+2,sp)
 646  0028 270b          	jreq	L06
 647  002a a111          	cp	a,#17
 648  002c 2707          	jreq	L06
 649  002e ae008a        	ldw	x,#138
 650  0031 8d750075      	callf	LC002
 651  0035               L06:
 652                     ; 139   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 654  0035 7b09          	ld	a,(OFST+8,sp)
 655  0037 270b          	jreq	L07
 656  0039 a122          	cp	a,#34
 657  003b 2707          	jreq	L07
 658  003d ae008b        	ldw	x,#139
 659  0040 8d750075      	callf	LC002
 660  0044               L07:
 661                     ; 143   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 663  0044 c65327        	ld	a,21287
 664  0047 a4cf          	and	a,#207
 665  0049 c75327        	ld	21287,a
 666                     ; 145   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 668  004c 7b09          	ld	a,(OFST+8,sp)
 669  004e a420          	and	a,#32
 670  0050 6b01          	ld	(OFST+0,sp),a
 672  0052 7b03          	ld	a,(OFST+2,sp)
 673  0054 a410          	and	a,#16
 674  0056 1a01          	or	a,(OFST+0,sp)
 675  0058 ca5327        	or	a,21287
 676  005b c75327        	ld	21287,a
 677                     ; 149   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 679  005e c65326        	ld	a,21286
 680  0061 a48f          	and	a,#143
 681  0063 1a02          	or	a,(OFST+1,sp)
 682  0065 c75326        	ld	21286,a
 683                     ; 153   TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
 685  0068 7b07          	ld	a,(OFST+6,sp)
 686  006a c7532f        	ld	21295,a
 687                     ; 154   TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
 689  006d 7b08          	ld	a,(OFST+7,sp)
 690  006f c75330        	ld	21296,a
 691                     ; 155 }
 694  0072 5b03          	addw	sp,#3
 695  0074 87            	retf	
 696  0075               LC002:
 697  0075 89            	pushw	x
 698  0076 5f            	clrw	x
 699  0077 89            	pushw	x
 700  0078 ae0000        	ldw	x,#L502
 701  007b 8d000000      	callf	f_assert_failed
 703  007f 5b04          	addw	sp,#4
 704  0081 87            	retf	
 888                     ; 166 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 888                     ; 167                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 888                     ; 168                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 888                     ; 169                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 888                     ; 170                  uint8_t TIM3_ICFilter)
 888                     ; 171 {
 889                     .text:	section	.text,new
 890  0000               f_TIM3_ICInit:
 892  0000 89            	pushw	x
 893       00000000      OFST:	set	0
 896                     ; 173   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 898  0001 9e            	ld	a,xh
 899  0002 4d            	tnz	a
 900  0003 270b          	jreq	L201
 901  0005 9e            	ld	a,xh
 902  0006 4a            	dec	a
 903  0007 2707          	jreq	L201
 904  0009 ae00ad        	ldw	x,#173
 905  000c 8d890089      	callf	LC003
 906  0010               L201:
 907                     ; 174   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 909  0010 7b02          	ld	a,(OFST+2,sp)
 910  0012 270b          	jreq	L211
 911  0014 a144          	cp	a,#68
 912  0016 2707          	jreq	L211
 913  0018 ae00ae        	ldw	x,#174
 914  001b 8d890089      	callf	LC003
 915  001f               L211:
 916                     ; 175   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 918  001f 7b06          	ld	a,(OFST+6,sp)
 919  0021 a101          	cp	a,#1
 920  0023 270f          	jreq	L221
 921  0025 a102          	cp	a,#2
 922  0027 270b          	jreq	L221
 923  0029 a103          	cp	a,#3
 924  002b 2707          	jreq	L221
 925  002d ae00af        	ldw	x,#175
 926  0030 8d890089      	callf	LC003
 927  0034               L221:
 928                     ; 176   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 930  0034 7b07          	ld	a,(OFST+7,sp)
 931  0036 2713          	jreq	L231
 932  0038 a104          	cp	a,#4
 933  003a 270f          	jreq	L231
 934  003c a108          	cp	a,#8
 935  003e 270b          	jreq	L231
 936  0040 a10c          	cp	a,#12
 937  0042 2707          	jreq	L231
 938  0044 ae00b0        	ldw	x,#176
 939  0047 8d890089      	callf	LC003
 940  004b               L231:
 941                     ; 177   assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
 943  004b 7b08          	ld	a,(OFST+8,sp)
 944  004d a110          	cp	a,#16
 945  004f 2507          	jrult	L041
 946  0051 ae00b1        	ldw	x,#177
 947  0054 8d890089      	callf	LC003
 948  0058               L041:
 949                     ; 179   if (TIM3_Channel != TIM3_CHANNEL_2)
 951  0058 7b01          	ld	a,(OFST+1,sp)
 952  005a 4a            	dec	a
 953  005b 2716          	jreq	L543
 954                     ; 182     TI1_Config((uint8_t)TIM3_ICPolarity,
 954                     ; 183                (uint8_t)TIM3_ICSelection,
 954                     ; 184                (uint8_t)TIM3_ICFilter);
 956  005d 7b08          	ld	a,(OFST+8,sp)
 957  005f 88            	push	a
 958  0060 7b07          	ld	a,(OFST+7,sp)
 959  0062 97            	ld	xl,a
 960  0063 7b03          	ld	a,(OFST+3,sp)
 961  0065 95            	ld	xh,a
 962  0066 8d000000      	callf	L3f_TI1_Config
 964  006a 84            	pop	a
 965                     ; 187     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
 967  006b 7b07          	ld	a,(OFST+7,sp)
 968  006d 8d000000      	callf	f_TIM3_SetIC1Prescaler
 971  0071 2014          	jra	L743
 972  0073               L543:
 973                     ; 192     TI2_Config((uint8_t)TIM3_ICPolarity,
 973                     ; 193                (uint8_t)TIM3_ICSelection,
 973                     ; 194                (uint8_t)TIM3_ICFilter);
 975  0073 7b08          	ld	a,(OFST+8,sp)
 976  0075 88            	push	a
 977  0076 7b07          	ld	a,(OFST+7,sp)
 978  0078 97            	ld	xl,a
 979  0079 7b03          	ld	a,(OFST+3,sp)
 980  007b 95            	ld	xh,a
 981  007c 8d000000      	callf	L5f_TI2_Config
 983  0080 84            	pop	a
 984                     ; 197     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
 986  0081 7b07          	ld	a,(OFST+7,sp)
 987  0083 8d000000      	callf	f_TIM3_SetIC2Prescaler
 989  0087               L743:
 990                     ; 199 }
 993  0087 85            	popw	x
 994  0088 87            	retf	
 995  0089               LC003:
 996  0089 89            	pushw	x
 997  008a 5f            	clrw	x
 998  008b 89            	pushw	x
 999  008c ae0000        	ldw	x,#L502
1000  008f 8d000000      	callf	f_assert_failed
1002  0093 5b04          	addw	sp,#4
1003  0095 87            	retf	
1099                     ; 210 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
1099                     ; 211                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1099                     ; 212                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
1099                     ; 213                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1099                     ; 214                      uint8_t TIM3_ICFilter)
1099                     ; 215 {
1100                     .text:	section	.text,new
1101  0000               f_TIM3_PWMIConfig:
1103  0000 89            	pushw	x
1104  0001 89            	pushw	x
1105       00000002      OFST:	set	2
1108                     ; 216   uint8_t icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1110                     ; 217   uint8_t icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1112                     ; 220   assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
1114  0002 9e            	ld	a,xh
1115  0003 4d            	tnz	a
1116  0004 270b          	jreq	L261
1117  0006 9e            	ld	a,xh
1118  0007 4a            	dec	a
1119  0008 2707          	jreq	L261
1120  000a ae00dc        	ldw	x,#220
1121  000d 8dc100c1      	callf	LC004
1122  0011               L261:
1123                     ; 221   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
1125  0011 7b04          	ld	a,(OFST+2,sp)
1126  0013 270b          	jreq	L271
1127  0015 a144          	cp	a,#68
1128  0017 2707          	jreq	L271
1129  0019 ae00dd        	ldw	x,#221
1130  001c 8dc100c1      	callf	LC004
1131  0020               L271:
1132                     ; 222   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
1134  0020 7b08          	ld	a,(OFST+6,sp)
1135  0022 a101          	cp	a,#1
1136  0024 270f          	jreq	L202
1137  0026 a102          	cp	a,#2
1138  0028 270b          	jreq	L202
1139  002a a103          	cp	a,#3
1140  002c 2707          	jreq	L202
1141  002e ae00de        	ldw	x,#222
1142  0031 8dc100c1      	callf	LC004
1143  0035               L202:
1144                     ; 223   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1146  0035 7b09          	ld	a,(OFST+7,sp)
1147  0037 2713          	jreq	L212
1148  0039 a104          	cp	a,#4
1149  003b 270f          	jreq	L212
1150  003d a108          	cp	a,#8
1151  003f 270b          	jreq	L212
1152  0041 a10c          	cp	a,#12
1153  0043 2707          	jreq	L212
1154  0045 ae00df        	ldw	x,#223
1155  0048 8dc100c1      	callf	LC004
1156  004c               L212:
1157                     ; 226   if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
1159  004c 7b04          	ld	a,(OFST+2,sp)
1160  004e a144          	cp	a,#68
1161  0050 2706          	jreq	L714
1162                     ; 228     icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
1164  0052 a644          	ld	a,#68
1165  0054 6b01          	ld	(OFST-1,sp),a
1168  0056 2002          	jra	L124
1169  0058               L714:
1170                     ; 232     icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1172  0058 0f01          	clr	(OFST-1,sp)
1174  005a               L124:
1175                     ; 236   if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
1177  005a 7b08          	ld	a,(OFST+6,sp)
1178  005c 4a            	dec	a
1179  005d 2604          	jrne	L324
1180                     ; 238     icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
1182  005f a602          	ld	a,#2
1184  0061 2002          	jra	L524
1185  0063               L324:
1186                     ; 242     icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1188  0063 a601          	ld	a,#1
1189  0065               L524:
1190  0065 6b02          	ld	(OFST+0,sp),a
1192                     ; 245   if (TIM3_Channel != TIM3_CHANNEL_2)
1194  0067 7b03          	ld	a,(OFST+1,sp)
1195  0069 4a            	dec	a
1196  006a 272a          	jreq	L724
1197                     ; 248     TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1197                     ; 249                (uint8_t)TIM3_ICFilter);
1199  006c 7b0a          	ld	a,(OFST+8,sp)
1200  006e 88            	push	a
1201  006f 7b09          	ld	a,(OFST+7,sp)
1202  0071 97            	ld	xl,a
1203  0072 7b05          	ld	a,(OFST+3,sp)
1204  0074 95            	ld	xh,a
1205  0075 8d000000      	callf	L3f_TI1_Config
1207  0079 84            	pop	a
1208                     ; 252     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1210  007a 7b09          	ld	a,(OFST+7,sp)
1211  007c 8d000000      	callf	f_TIM3_SetIC1Prescaler
1213                     ; 255     TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1215  0080 7b0a          	ld	a,(OFST+8,sp)
1216  0082 88            	push	a
1217  0083 7b03          	ld	a,(OFST+1,sp)
1218  0085 97            	ld	xl,a
1219  0086 7b02          	ld	a,(OFST+0,sp)
1220  0088 95            	ld	xh,a
1221  0089 8d000000      	callf	L5f_TI2_Config
1223  008d 84            	pop	a
1224                     ; 258     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1226  008e 7b09          	ld	a,(OFST+7,sp)
1227  0090 8d000000      	callf	f_TIM3_SetIC2Prescaler
1230  0094 2028          	jra	L134
1231  0096               L724:
1232                     ; 263     TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1232                     ; 264                (uint8_t)TIM3_ICFilter);
1234  0096 7b0a          	ld	a,(OFST+8,sp)
1235  0098 88            	push	a
1236  0099 7b09          	ld	a,(OFST+7,sp)
1237  009b 97            	ld	xl,a
1238  009c 7b05          	ld	a,(OFST+3,sp)
1239  009e 95            	ld	xh,a
1240  009f 8d000000      	callf	L5f_TI2_Config
1242  00a3 84            	pop	a
1243                     ; 267     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1245  00a4 7b09          	ld	a,(OFST+7,sp)
1246  00a6 8d000000      	callf	f_TIM3_SetIC2Prescaler
1248                     ; 270     TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1250  00aa 7b0a          	ld	a,(OFST+8,sp)
1251  00ac 88            	push	a
1252  00ad 7b03          	ld	a,(OFST+1,sp)
1253  00af 97            	ld	xl,a
1254  00b0 7b02          	ld	a,(OFST+0,sp)
1255  00b2 95            	ld	xh,a
1256  00b3 8d000000      	callf	L3f_TI1_Config
1258  00b7 84            	pop	a
1259                     ; 273     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1261  00b8 7b09          	ld	a,(OFST+7,sp)
1262  00ba 8d000000      	callf	f_TIM3_SetIC1Prescaler
1264  00be               L134:
1265                     ; 275 }
1268  00be 5b04          	addw	sp,#4
1269  00c0 87            	retf	
1270  00c1               LC004:
1271  00c1 89            	pushw	x
1272  00c2 5f            	clrw	x
1273  00c3 89            	pushw	x
1274  00c4 ae0000        	ldw	x,#L502
1275  00c7 8d000000      	callf	f_assert_failed
1277  00cb 5b04          	addw	sp,#4
1278  00cd 87            	retf	
1333                     ; 283 void TIM3_Cmd(FunctionalState NewState)
1333                     ; 284 {
1334                     .text:	section	.text,new
1335  0000               f_TIM3_Cmd:
1337  0000 88            	push	a
1338       00000000      OFST:	set	0
1341                     ; 286   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1343  0001 4d            	tnz	a
1344  0002 2712          	jreq	L442
1345  0004 4a            	dec	a
1346  0005 270f          	jreq	L442
1347  0007 ae011e        	ldw	x,#286
1348  000a 89            	pushw	x
1349  000b 5f            	clrw	x
1350  000c 89            	pushw	x
1351  000d ae0000        	ldw	x,#L502
1352  0010 8d000000      	callf	f_assert_failed
1354  0014 5b04          	addw	sp,#4
1355  0016               L442:
1356                     ; 289   if (NewState != DISABLE)
1358  0016 7b01          	ld	a,(OFST+1,sp)
1359  0018 2706          	jreq	L164
1360                     ; 291     TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
1362  001a 72105320      	bset	21280,#0
1364  001e 2004          	jra	L364
1365  0020               L164:
1366                     ; 295     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
1368  0020 72115320      	bres	21280,#0
1369  0024               L364:
1370                     ; 297 }
1373  0024 84            	pop	a
1374  0025 87            	retf	
1446                     ; 311 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1446                     ; 312 {
1447                     .text:	section	.text,new
1448  0000               f_TIM3_ITConfig:
1450  0000 89            	pushw	x
1451       00000000      OFST:	set	0
1454                     ; 314   assert_param(IS_TIM3_IT_OK(TIM3_IT));
1456  0001 9e            	ld	a,xh
1457  0002 4d            	tnz	a
1458  0003 2705          	jreq	L252
1459  0005 9e            	ld	a,xh
1460  0006 a108          	cp	a,#8
1461  0008 2507          	jrult	L452
1462  000a               L252:
1463  000a ae013a        	ldw	x,#314
1464  000d 8d350035      	callf	LC005
1465  0011               L452:
1466                     ; 315   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1468  0011 7b02          	ld	a,(OFST+2,sp)
1469  0013 270a          	jreq	L462
1470  0015 4a            	dec	a
1471  0016 2707          	jreq	L462
1472  0018 ae013b        	ldw	x,#315
1473  001b 8d350035      	callf	LC005
1474  001f               L462:
1475                     ; 317   if (NewState != DISABLE)
1477  001f 7b02          	ld	a,(OFST+2,sp)
1478  0021 2707          	jreq	L125
1479                     ; 320     TIM3->IER |= (uint8_t)TIM3_IT;
1481  0023 c65321        	ld	a,21281
1482  0026 1a01          	or	a,(OFST+1,sp)
1484  0028 2006          	jra	L325
1485  002a               L125:
1486                     ; 325     TIM3->IER &= (uint8_t)(~TIM3_IT);
1488  002a 7b01          	ld	a,(OFST+1,sp)
1489  002c 43            	cpl	a
1490  002d c45321        	and	a,21281
1491  0030               L325:
1492  0030 c75321        	ld	21281,a
1493                     ; 327 }
1496  0033 85            	popw	x
1497  0034 87            	retf	
1498  0035               LC005:
1499  0035 89            	pushw	x
1500  0036 5f            	clrw	x
1501  0037 89            	pushw	x
1502  0038 ae0000        	ldw	x,#L502
1503  003b 8d000000      	callf	f_assert_failed
1505  003f 5b04          	addw	sp,#4
1506  0041 87            	retf	
1542                     ; 335 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1542                     ; 336 {
1543                     .text:	section	.text,new
1544  0000               f_TIM3_UpdateDisableConfig:
1546  0000 88            	push	a
1547       00000000      OFST:	set	0
1550                     ; 338   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1552  0001 4d            	tnz	a
1553  0002 2712          	jreq	L672
1554  0004 4a            	dec	a
1555  0005 270f          	jreq	L672
1556  0007 ae0152        	ldw	x,#338
1557  000a 89            	pushw	x
1558  000b 5f            	clrw	x
1559  000c 89            	pushw	x
1560  000d ae0000        	ldw	x,#L502
1561  0010 8d000000      	callf	f_assert_failed
1563  0014 5b04          	addw	sp,#4
1564  0016               L672:
1565                     ; 341   if (NewState != DISABLE)
1567  0016 7b01          	ld	a,(OFST+1,sp)
1568  0018 2706          	jreq	L345
1569                     ; 343     TIM3->CR1 |= TIM3_CR1_UDIS;
1571  001a 72125320      	bset	21280,#1
1573  001e 2004          	jra	L545
1574  0020               L345:
1575                     ; 347     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
1577  0020 72135320      	bres	21280,#1
1578  0024               L545:
1579                     ; 349 }
1582  0024 84            	pop	a
1583  0025 87            	retf	
1641                     ; 359 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1641                     ; 360 {
1642                     .text:	section	.text,new
1643  0000               f_TIM3_UpdateRequestConfig:
1645  0000 88            	push	a
1646       00000000      OFST:	set	0
1649                     ; 362   assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1651  0001 4d            	tnz	a
1652  0002 2712          	jreq	L013
1653  0004 4a            	dec	a
1654  0005 270f          	jreq	L013
1655  0007 ae016a        	ldw	x,#362
1656  000a 89            	pushw	x
1657  000b 5f            	clrw	x
1658  000c 89            	pushw	x
1659  000d ae0000        	ldw	x,#L502
1660  0010 8d000000      	callf	f_assert_failed
1662  0014 5b04          	addw	sp,#4
1663  0016               L013:
1664                     ; 365   if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1666  0016 7b01          	ld	a,(OFST+1,sp)
1667  0018 2706          	jreq	L575
1668                     ; 367     TIM3->CR1 |= TIM3_CR1_URS;
1670  001a 72145320      	bset	21280,#2
1672  001e 2004          	jra	L775
1673  0020               L575:
1674                     ; 371     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
1676  0020 72155320      	bres	21280,#2
1677  0024               L775:
1678                     ; 373 }
1681  0024 84            	pop	a
1682  0025 87            	retf	
1739                     ; 383 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1739                     ; 384 {
1740                     .text:	section	.text,new
1741  0000               f_TIM3_SelectOnePulseMode:
1743  0000 88            	push	a
1744       00000000      OFST:	set	0
1747                     ; 386   assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1749  0001 a101          	cp	a,#1
1750  0003 2712          	jreq	L223
1751  0005 4d            	tnz	a
1752  0006 270f          	jreq	L223
1753  0008 ae0182        	ldw	x,#386
1754  000b 89            	pushw	x
1755  000c 5f            	clrw	x
1756  000d 89            	pushw	x
1757  000e ae0000        	ldw	x,#L502
1758  0011 8d000000      	callf	f_assert_failed
1760  0015 5b04          	addw	sp,#4
1761  0017               L223:
1762                     ; 389   if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1764  0017 7b01          	ld	a,(OFST+1,sp)
1765  0019 2706          	jreq	L726
1766                     ; 391     TIM3->CR1 |= TIM3_CR1_OPM;
1768  001b 72165320      	bset	21280,#3
1770  001f 2004          	jra	L136
1771  0021               L726:
1772                     ; 395     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
1774  0021 72175320      	bres	21280,#3
1775  0025               L136:
1776                     ; 397 }
1779  0025 84            	pop	a
1780  0026 87            	retf	
1848                     ; 427 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
1848                     ; 428                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
1848                     ; 429 {
1849                     .text:	section	.text,new
1850  0000               f_TIM3_PrescalerConfig:
1852  0000 89            	pushw	x
1853       00000000      OFST:	set	0
1856                     ; 431   assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
1858  0001 9f            	ld	a,xl
1859  0002 4d            	tnz	a
1860  0003 270b          	jreq	L433
1861  0005 9f            	ld	a,xl
1862  0006 4a            	dec	a
1863  0007 2707          	jreq	L433
1864  0009 ae01af        	ldw	x,#431
1865  000c 8d630063      	callf	LC006
1866  0010               L433:
1867                     ; 432   assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
1869  0010 7b01          	ld	a,(OFST+1,sp)
1870  0012 2745          	jreq	L443
1871  0014 a101          	cp	a,#1
1872  0016 2741          	jreq	L443
1873  0018 a102          	cp	a,#2
1874  001a 273d          	jreq	L443
1875  001c a103          	cp	a,#3
1876  001e 2739          	jreq	L443
1877  0020 a104          	cp	a,#4
1878  0022 2735          	jreq	L443
1879  0024 a105          	cp	a,#5
1880  0026 2731          	jreq	L443
1881  0028 a106          	cp	a,#6
1882  002a 272d          	jreq	L443
1883  002c a107          	cp	a,#7
1884  002e 2729          	jreq	L443
1885  0030 a108          	cp	a,#8
1886  0032 2725          	jreq	L443
1887  0034 a109          	cp	a,#9
1888  0036 2721          	jreq	L443
1889  0038 a10a          	cp	a,#10
1890  003a 271d          	jreq	L443
1891  003c a10b          	cp	a,#11
1892  003e 2719          	jreq	L443
1893  0040 a10c          	cp	a,#12
1894  0042 2715          	jreq	L443
1895  0044 a10d          	cp	a,#13
1896  0046 2711          	jreq	L443
1897  0048 a10e          	cp	a,#14
1898  004a 270d          	jreq	L443
1899  004c a10f          	cp	a,#15
1900  004e 2709          	jreq	L443
1901  0050 ae01b0        	ldw	x,#432
1902  0053 8d630063      	callf	LC006
1903  0057 7b01          	ld	a,(OFST+1,sp)
1904  0059               L443:
1905                     ; 435   TIM3->PSCR = (uint8_t)Prescaler;
1907  0059 c7532a        	ld	21290,a
1908                     ; 438   TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
1910  005c 7b02          	ld	a,(OFST+2,sp)
1911  005e c75324        	ld	21284,a
1912                     ; 439 }
1915  0061 85            	popw	x
1916  0062 87            	retf	
1917  0063               LC006:
1918  0063 89            	pushw	x
1919  0064 5f            	clrw	x
1920  0065 89            	pushw	x
1921  0066 ae0000        	ldw	x,#L502
1922  0069 8d000000      	callf	f_assert_failed
1924  006d 5b04          	addw	sp,#4
1925  006f 87            	retf	
1983                     ; 450 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
1983                     ; 451 {
1984                     .text:	section	.text,new
1985  0000               f_TIM3_ForcedOC1Config:
1987  0000 88            	push	a
1988       00000000      OFST:	set	0
1991                     ; 453   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
1993  0001 a150          	cp	a,#80
1994  0003 2713          	jreq	L653
1995  0005 a140          	cp	a,#64
1996  0007 270f          	jreq	L653
1997  0009 ae01c5        	ldw	x,#453
1998  000c 89            	pushw	x
1999  000d 5f            	clrw	x
2000  000e 89            	pushw	x
2001  000f ae0000        	ldw	x,#L502
2002  0012 8d000000      	callf	f_assert_failed
2004  0016 5b04          	addw	sp,#4
2005  0018               L653:
2006                     ; 456   TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
2008  0018 c65325        	ld	a,21285
2009  001b a48f          	and	a,#143
2010  001d 1a01          	or	a,(OFST+1,sp)
2011  001f c75325        	ld	21285,a
2012                     ; 457 }
2015  0022 84            	pop	a
2016  0023 87            	retf	
2052                     ; 468 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2052                     ; 469 {
2053                     .text:	section	.text,new
2054  0000               f_TIM3_ForcedOC2Config:
2056  0000 88            	push	a
2057       00000000      OFST:	set	0
2060                     ; 471   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2062  0001 a150          	cp	a,#80
2063  0003 2713          	jreq	L073
2064  0005 a140          	cp	a,#64
2065  0007 270f          	jreq	L073
2066  0009 ae01d7        	ldw	x,#471
2067  000c 89            	pushw	x
2068  000d 5f            	clrw	x
2069  000e 89            	pushw	x
2070  000f ae0000        	ldw	x,#L502
2071  0012 8d000000      	callf	f_assert_failed
2073  0016 5b04          	addw	sp,#4
2074  0018               L073:
2075                     ; 474   TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
2077  0018 c65326        	ld	a,21286
2078  001b a48f          	and	a,#143
2079  001d 1a01          	or	a,(OFST+1,sp)
2080  001f c75326        	ld	21286,a
2081                     ; 475 }
2084  0022 84            	pop	a
2085  0023 87            	retf	
2121                     ; 483 void TIM3_ARRPreloadConfig(FunctionalState NewState)
2121                     ; 484 {
2122                     .text:	section	.text,new
2123  0000               f_TIM3_ARRPreloadConfig:
2125  0000 88            	push	a
2126       00000000      OFST:	set	0
2129                     ; 486   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2131  0001 4d            	tnz	a
2132  0002 2712          	jreq	L204
2133  0004 4a            	dec	a
2134  0005 270f          	jreq	L204
2135  0007 ae01e6        	ldw	x,#486
2136  000a 89            	pushw	x
2137  000b 5f            	clrw	x
2138  000c 89            	pushw	x
2139  000d ae0000        	ldw	x,#L502
2140  0010 8d000000      	callf	f_assert_failed
2142  0014 5b04          	addw	sp,#4
2143  0016               L204:
2144                     ; 489   if (NewState != DISABLE)
2146  0016 7b01          	ld	a,(OFST+1,sp)
2147  0018 2706          	jreq	L747
2148                     ; 491     TIM3->CR1 |= TIM3_CR1_ARPE;
2150  001a 721e5320      	bset	21280,#7
2152  001e 2004          	jra	L157
2153  0020               L747:
2154                     ; 495     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
2156  0020 721f5320      	bres	21280,#7
2157  0024               L157:
2158                     ; 497 }
2161  0024 84            	pop	a
2162  0025 87            	retf	
2198                     ; 505 void TIM3_OC1PreloadConfig(FunctionalState NewState)
2198                     ; 506 {
2199                     .text:	section	.text,new
2200  0000               f_TIM3_OC1PreloadConfig:
2202  0000 88            	push	a
2203       00000000      OFST:	set	0
2206                     ; 508   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2208  0001 4d            	tnz	a
2209  0002 2712          	jreq	L414
2210  0004 4a            	dec	a
2211  0005 270f          	jreq	L414
2212  0007 ae01fc        	ldw	x,#508
2213  000a 89            	pushw	x
2214  000b 5f            	clrw	x
2215  000c 89            	pushw	x
2216  000d ae0000        	ldw	x,#L502
2217  0010 8d000000      	callf	f_assert_failed
2219  0014 5b04          	addw	sp,#4
2220  0016               L414:
2221                     ; 511   if (NewState != DISABLE)
2223  0016 7b01          	ld	a,(OFST+1,sp)
2224  0018 2706          	jreq	L177
2225                     ; 513     TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
2227  001a 72165325      	bset	21285,#3
2229  001e 2004          	jra	L377
2230  0020               L177:
2231                     ; 517     TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2233  0020 72175325      	bres	21285,#3
2234  0024               L377:
2235                     ; 519 }
2238  0024 84            	pop	a
2239  0025 87            	retf	
2275                     ; 527 void TIM3_OC2PreloadConfig(FunctionalState NewState)
2275                     ; 528 {
2276                     .text:	section	.text,new
2277  0000               f_TIM3_OC2PreloadConfig:
2279  0000 88            	push	a
2280       00000000      OFST:	set	0
2283                     ; 530   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2285  0001 4d            	tnz	a
2286  0002 2712          	jreq	L624
2287  0004 4a            	dec	a
2288  0005 270f          	jreq	L624
2289  0007 ae0212        	ldw	x,#530
2290  000a 89            	pushw	x
2291  000b 5f            	clrw	x
2292  000c 89            	pushw	x
2293  000d ae0000        	ldw	x,#L502
2294  0010 8d000000      	callf	f_assert_failed
2296  0014 5b04          	addw	sp,#4
2297  0016               L624:
2298                     ; 533   if (NewState != DISABLE)
2300  0016 7b01          	ld	a,(OFST+1,sp)
2301  0018 2706          	jreq	L3101
2302                     ; 535     TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
2304  001a 72165326      	bset	21286,#3
2306  001e 2004          	jra	L5101
2307  0020               L3101:
2308                     ; 539     TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2310  0020 72175326      	bres	21286,#3
2311  0024               L5101:
2312                     ; 541 }
2315  0024 84            	pop	a
2316  0025 87            	retf	
2381                     ; 552 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
2381                     ; 553 {
2382                     .text:	section	.text,new
2383  0000               f_TIM3_GenerateEvent:
2385  0000 88            	push	a
2386       00000000      OFST:	set	0
2389                     ; 555   assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
2391  0001 4d            	tnz	a
2392  0002 260f          	jrne	L634
2393  0004 ae022b        	ldw	x,#555
2394  0007 89            	pushw	x
2395  0008 5f            	clrw	x
2396  0009 89            	pushw	x
2397  000a ae0000        	ldw	x,#L502
2398  000d 8d000000      	callf	f_assert_failed
2400  0011 5b04          	addw	sp,#4
2401  0013               L634:
2402                     ; 558   TIM3->EGR = (uint8_t)TIM3_EventSource;
2404  0013 7b01          	ld	a,(OFST+1,sp)
2405  0015 c75324        	ld	21284,a
2406                     ; 559 }
2409  0018 84            	pop	a
2410  0019 87            	retf	
2446                     ; 569 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2446                     ; 570 {
2447                     .text:	section	.text,new
2448  0000               f_TIM3_OC1PolarityConfig:
2450  0000 88            	push	a
2451       00000000      OFST:	set	0
2454                     ; 572   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2456  0001 4d            	tnz	a
2457  0002 2713          	jreq	L054
2458  0004 a122          	cp	a,#34
2459  0006 270f          	jreq	L054
2460  0008 ae023c        	ldw	x,#572
2461  000b 89            	pushw	x
2462  000c 5f            	clrw	x
2463  000d 89            	pushw	x
2464  000e ae0000        	ldw	x,#L502
2465  0011 8d000000      	callf	f_assert_failed
2467  0015 5b04          	addw	sp,#4
2468  0017               L054:
2469                     ; 575   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2471  0017 7b01          	ld	a,(OFST+1,sp)
2472  0019 2706          	jreq	L5601
2473                     ; 577     TIM3->CCER1 |= TIM3_CCER1_CC1P;
2475  001b 72125327      	bset	21287,#1
2477  001f 2004          	jra	L7601
2478  0021               L5601:
2479                     ; 581     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
2481  0021 72135327      	bres	21287,#1
2482  0025               L7601:
2483                     ; 583 }
2486  0025 84            	pop	a
2487  0026 87            	retf	
2523                     ; 593 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2523                     ; 594 {
2524                     .text:	section	.text,new
2525  0000               f_TIM3_OC2PolarityConfig:
2527  0000 88            	push	a
2528       00000000      OFST:	set	0
2531                     ; 596   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2533  0001 4d            	tnz	a
2534  0002 2713          	jreq	L264
2535  0004 a122          	cp	a,#34
2536  0006 270f          	jreq	L264
2537  0008 ae0254        	ldw	x,#596
2538  000b 89            	pushw	x
2539  000c 5f            	clrw	x
2540  000d 89            	pushw	x
2541  000e ae0000        	ldw	x,#L502
2542  0011 8d000000      	callf	f_assert_failed
2544  0015 5b04          	addw	sp,#4
2545  0017               L264:
2546                     ; 599   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2548  0017 7b01          	ld	a,(OFST+1,sp)
2549  0019 2706          	jreq	L7011
2550                     ; 601     TIM3->CCER1 |= TIM3_CCER1_CC2P;
2552  001b 721a5327      	bset	21287,#5
2554  001f 2004          	jra	L1111
2555  0021               L7011:
2556                     ; 605     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
2558  0021 721b5327      	bres	21287,#5
2559  0025               L1111:
2560                     ; 607 }
2563  0025 84            	pop	a
2564  0026 87            	retf	
2609                     ; 619 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2609                     ; 620 {
2610                     .text:	section	.text,new
2611  0000               f_TIM3_CCxCmd:
2613  0000 89            	pushw	x
2614       00000000      OFST:	set	0
2617                     ; 622   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2619  0001 9e            	ld	a,xh
2620  0002 4d            	tnz	a
2621  0003 270b          	jreq	L474
2622  0005 9e            	ld	a,xh
2623  0006 4a            	dec	a
2624  0007 2707          	jreq	L474
2625  0009 ae026e        	ldw	x,#622
2626  000c 8d420042      	callf	LC007
2627  0010               L474:
2628                     ; 623   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2630  0010 7b02          	ld	a,(OFST+2,sp)
2631  0012 270a          	jreq	L405
2632  0014 4a            	dec	a
2633  0015 2707          	jreq	L405
2634  0017 ae026f        	ldw	x,#623
2635  001a 8d420042      	callf	LC007
2636  001e               L405:
2637                     ; 625   if (TIM3_Channel == TIM3_CHANNEL_1)
2639  001e 7b01          	ld	a,(OFST+1,sp)
2640  0020 2610          	jrne	L5311
2641                     ; 628     if (NewState != DISABLE)
2643  0022 7b02          	ld	a,(OFST+2,sp)
2644  0024 2706          	jreq	L7311
2645                     ; 630       TIM3->CCER1 |= TIM3_CCER1_CC1E;
2647  0026 72105327      	bset	21287,#0
2649  002a 2014          	jra	L3411
2650  002c               L7311:
2651                     ; 634       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2653  002c 72115327      	bres	21287,#0
2654  0030 200e          	jra	L3411
2655  0032               L5311:
2656                     ; 641     if (NewState != DISABLE)
2658  0032 7b02          	ld	a,(OFST+2,sp)
2659  0034 2706          	jreq	L5411
2660                     ; 643       TIM3->CCER1 |= TIM3_CCER1_CC2E;
2662  0036 72185327      	bset	21287,#4
2664  003a 2004          	jra	L3411
2665  003c               L5411:
2666                     ; 647       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2668  003c 72195327      	bres	21287,#4
2669  0040               L3411:
2670                     ; 650 }
2673  0040 85            	popw	x
2674  0041 87            	retf	
2675  0042               LC007:
2676  0042 89            	pushw	x
2677  0043 5f            	clrw	x
2678  0044 89            	pushw	x
2679  0045 ae0000        	ldw	x,#L502
2680  0048 8d000000      	callf	f_assert_failed
2682  004c 5b04          	addw	sp,#4
2683  004e 87            	retf	
2728                     ; 671 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2728                     ; 672 {
2729                     .text:	section	.text,new
2730  0000               f_TIM3_SelectOCxM:
2732  0000 89            	pushw	x
2733       00000000      OFST:	set	0
2736                     ; 674   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2738  0001 9e            	ld	a,xh
2739  0002 4d            	tnz	a
2740  0003 270b          	jreq	L615
2741  0005 9e            	ld	a,xh
2742  0006 4a            	dec	a
2743  0007 2707          	jreq	L615
2744  0009 ae02a2        	ldw	x,#674
2745  000c 8d5b005b      	callf	LC008
2746  0010               L615:
2747                     ; 675   assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2749  0010 7b02          	ld	a,(OFST+2,sp)
2750  0012 2723          	jreq	L625
2751  0014 a110          	cp	a,#16
2752  0016 271f          	jreq	L625
2753  0018 a120          	cp	a,#32
2754  001a 271b          	jreq	L625
2755  001c a130          	cp	a,#48
2756  001e 2717          	jreq	L625
2757  0020 a160          	cp	a,#96
2758  0022 2713          	jreq	L625
2759  0024 a170          	cp	a,#112
2760  0026 270f          	jreq	L625
2761  0028 a150          	cp	a,#80
2762  002a 270b          	jreq	L625
2763  002c a140          	cp	a,#64
2764  002e 2707          	jreq	L625
2765  0030 ae02a3        	ldw	x,#675
2766  0033 8d5b005b      	callf	LC008
2767  0037               L625:
2768                     ; 677   if (TIM3_Channel == TIM3_CHANNEL_1)
2770  0037 7b01          	ld	a,(OFST+1,sp)
2771  0039 2610          	jrne	L3711
2772                     ; 680     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2774  003b 72115327      	bres	21287,#0
2775                     ; 683     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2777  003f c65325        	ld	a,21285
2778  0042 a48f          	and	a,#143
2779  0044 1a02          	or	a,(OFST+2,sp)
2780  0046 c75325        	ld	21285,a
2782  0049 200e          	jra	L5711
2783  004b               L3711:
2784                     ; 688     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2786  004b 72195327      	bres	21287,#4
2787                     ; 691     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2789  004f c65326        	ld	a,21286
2790  0052 a48f          	and	a,#143
2791  0054 1a02          	or	a,(OFST+2,sp)
2792  0056 c75326        	ld	21286,a
2793  0059               L5711:
2794                     ; 693 }
2797  0059 85            	popw	x
2798  005a 87            	retf	
2799  005b               LC008:
2800  005b 89            	pushw	x
2801  005c 5f            	clrw	x
2802  005d 89            	pushw	x
2803  005e ae0000        	ldw	x,#L502
2804  0061 8d000000      	callf	f_assert_failed
2806  0065 5b04          	addw	sp,#4
2807  0067 87            	retf	
2840                     ; 701 void TIM3_SetCounter(uint16_t Counter)
2840                     ; 702 {
2841                     .text:	section	.text,new
2842  0000               f_TIM3_SetCounter:
2846                     ; 704   TIM3->CNTRH = (uint8_t)(Counter >> 8);
2848  0000 9e            	ld	a,xh
2849  0001 c75328        	ld	21288,a
2850                     ; 705   TIM3->CNTRL = (uint8_t)(Counter);
2852  0004 9f            	ld	a,xl
2853  0005 c75329        	ld	21289,a
2854                     ; 706 }
2857  0008 87            	retf	
2890                     ; 714 void TIM3_SetAutoreload(uint16_t Autoreload)
2890                     ; 715 {
2891                     .text:	section	.text,new
2892  0000               f_TIM3_SetAutoreload:
2896                     ; 717   TIM3->ARRH = (uint8_t)(Autoreload >> 8);
2898  0000 9e            	ld	a,xh
2899  0001 c7532b        	ld	21291,a
2900                     ; 718   TIM3->ARRL = (uint8_t)(Autoreload);
2902  0004 9f            	ld	a,xl
2903  0005 c7532c        	ld	21292,a
2904                     ; 719 }
2907  0008 87            	retf	
2940                     ; 727 void TIM3_SetCompare1(uint16_t Compare1)
2940                     ; 728 {
2941                     .text:	section	.text,new
2942  0000               f_TIM3_SetCompare1:
2946                     ; 730   TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
2948  0000 9e            	ld	a,xh
2949  0001 c7532d        	ld	21293,a
2950                     ; 731   TIM3->CCR1L = (uint8_t)(Compare1);
2952  0004 9f            	ld	a,xl
2953  0005 c7532e        	ld	21294,a
2954                     ; 732 }
2957  0008 87            	retf	
2990                     ; 740 void TIM3_SetCompare2(uint16_t Compare2)
2990                     ; 741 {
2991                     .text:	section	.text,new
2992  0000               f_TIM3_SetCompare2:
2996                     ; 743   TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
2998  0000 9e            	ld	a,xh
2999  0001 c7532f        	ld	21295,a
3000                     ; 744   TIM3->CCR2L = (uint8_t)(Compare2);
3002  0004 9f            	ld	a,xl
3003  0005 c75330        	ld	21296,a
3004                     ; 745 }
3007  0008 87            	retf	
3043                     ; 757 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
3043                     ; 758 {
3044                     .text:	section	.text,new
3045  0000               f_TIM3_SetIC1Prescaler:
3047  0000 88            	push	a
3048       00000000      OFST:	set	0
3051                     ; 760   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
3053  0001 4d            	tnz	a
3054  0002 271b          	jreq	L055
3055  0004 a104          	cp	a,#4
3056  0006 2717          	jreq	L055
3057  0008 a108          	cp	a,#8
3058  000a 2713          	jreq	L055
3059  000c a10c          	cp	a,#12
3060  000e 270f          	jreq	L055
3061  0010 ae02f8        	ldw	x,#760
3062  0013 89            	pushw	x
3063  0014 5f            	clrw	x
3064  0015 89            	pushw	x
3065  0016 ae0000        	ldw	x,#L502
3066  0019 8d000000      	callf	f_assert_failed
3068  001d 5b04          	addw	sp,#4
3069  001f               L055:
3070                     ; 763   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
3072  001f c65325        	ld	a,21285
3073  0022 a4f3          	and	a,#243
3074  0024 1a01          	or	a,(OFST+1,sp)
3075  0026 c75325        	ld	21285,a
3076                     ; 764 }
3079  0029 84            	pop	a
3080  002a 87            	retf	
3116                     ; 776 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
3116                     ; 777 {
3117                     .text:	section	.text,new
3118  0000               f_TIM3_SetIC2Prescaler:
3120  0000 88            	push	a
3121       00000000      OFST:	set	0
3124                     ; 779   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
3126  0001 4d            	tnz	a
3127  0002 271b          	jreq	L265
3128  0004 a104          	cp	a,#4
3129  0006 2717          	jreq	L265
3130  0008 a108          	cp	a,#8
3131  000a 2713          	jreq	L265
3132  000c a10c          	cp	a,#12
3133  000e 270f          	jreq	L265
3134  0010 ae030b        	ldw	x,#779
3135  0013 89            	pushw	x
3136  0014 5f            	clrw	x
3137  0015 89            	pushw	x
3138  0016 ae0000        	ldw	x,#L502
3139  0019 8d000000      	callf	f_assert_failed
3141  001d 5b04          	addw	sp,#4
3142  001f               L265:
3143                     ; 782   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
3145  001f c65326        	ld	a,21286
3146  0022 a4f3          	and	a,#243
3147  0024 1a01          	or	a,(OFST+1,sp)
3148  0026 c75326        	ld	21286,a
3149                     ; 783 }
3152  0029 84            	pop	a
3153  002a 87            	retf	
3204                     ; 790 uint16_t TIM3_GetCapture1(void)
3204                     ; 791 {
3205                     .text:	section	.text,new
3206  0000               f_TIM3_GetCapture1:
3208  0000 5204          	subw	sp,#4
3209       00000004      OFST:	set	4
3212                     ; 793   uint16_t tmpccr1 = 0;
3214                     ; 794   uint8_t tmpccr1l=0, tmpccr1h=0;
3218                     ; 796   tmpccr1h = TIM3->CCR1H;
3220  0002 c6532d        	ld	a,21293
3221  0005 6b02          	ld	(OFST-2,sp),a
3223                     ; 797   tmpccr1l = TIM3->CCR1L;
3225  0007 c6532e        	ld	a,21294
3226  000a 6b01          	ld	(OFST-3,sp),a
3228                     ; 799   tmpccr1 = (uint16_t)(tmpccr1l);
3230  000c 5f            	clrw	x
3231  000d 97            	ld	xl,a
3232  000e 1f03          	ldw	(OFST-1,sp),x
3234                     ; 800   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3236  0010 5f            	clrw	x
3237  0011 7b02          	ld	a,(OFST-2,sp)
3238  0013 97            	ld	xl,a
3239  0014 7b04          	ld	a,(OFST+0,sp)
3240  0016 01            	rrwa	x,a
3241  0017 1a03          	or	a,(OFST-1,sp)
3242  0019 01            	rrwa	x,a
3244                     ; 802   return (uint16_t)tmpccr1;
3248  001a 5b04          	addw	sp,#4
3249  001c 87            	retf	
3300                     ; 810 uint16_t TIM3_GetCapture2(void)
3300                     ; 811 {
3301                     .text:	section	.text,new
3302  0000               f_TIM3_GetCapture2:
3304  0000 5204          	subw	sp,#4
3305       00000004      OFST:	set	4
3308                     ; 813   uint16_t tmpccr2 = 0;
3310                     ; 814   uint8_t tmpccr2l=0, tmpccr2h=0;
3314                     ; 816   tmpccr2h = TIM3->CCR2H;
3316  0002 c6532f        	ld	a,21295
3317  0005 6b02          	ld	(OFST-2,sp),a
3319                     ; 817   tmpccr2l = TIM3->CCR2L;
3321  0007 c65330        	ld	a,21296
3322  000a 6b01          	ld	(OFST-3,sp),a
3324                     ; 819   tmpccr2 = (uint16_t)(tmpccr2l);
3326  000c 5f            	clrw	x
3327  000d 97            	ld	xl,a
3328  000e 1f03          	ldw	(OFST-1,sp),x
3330                     ; 820   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3332  0010 5f            	clrw	x
3333  0011 7b02          	ld	a,(OFST-2,sp)
3334  0013 97            	ld	xl,a
3335  0014 7b04          	ld	a,(OFST+0,sp)
3336  0016 01            	rrwa	x,a
3337  0017 1a03          	or	a,(OFST-1,sp)
3338  0019 01            	rrwa	x,a
3340                     ; 822   return (uint16_t)tmpccr2;
3344  001a 5b04          	addw	sp,#4
3345  001c 87            	retf	
3378                     ; 830 uint16_t TIM3_GetCounter(void)
3378                     ; 831 {
3379                     .text:	section	.text,new
3380  0000               f_TIM3_GetCounter:
3382  0000 89            	pushw	x
3383       00000002      OFST:	set	2
3386                     ; 832   uint16_t tmpcntr = 0;
3388                     ; 834   tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
3390  0001 c65328        	ld	a,21288
3391  0004 97            	ld	xl,a
3392  0005 4f            	clr	a
3393  0006 02            	rlwa	x,a
3394  0007 1f01          	ldw	(OFST-1,sp),x
3396                     ; 836   return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
3398  0009 c65329        	ld	a,21289
3399  000c 5f            	clrw	x
3400  000d 97            	ld	xl,a
3401  000e 01            	rrwa	x,a
3402  000f 1a02          	or	a,(OFST+0,sp)
3403  0011 01            	rrwa	x,a
3404  0012 1a01          	or	a,(OFST-1,sp)
3405  0014 01            	rrwa	x,a
3408  0015 5b02          	addw	sp,#2
3409  0017 87            	retf	
3432                     ; 844 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
3432                     ; 845 {
3433                     .text:	section	.text,new
3434  0000               f_TIM3_GetPrescaler:
3438                     ; 847   return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
3440  0000 c6532a        	ld	a,21290
3443  0003 87            	retf	
3568                     ; 861 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
3568                     ; 862 {
3569                     .text:	section	.text,new
3570  0000               f_TIM3_GetFlagStatus:
3572  0000 89            	pushw	x
3573  0001 89            	pushw	x
3574       00000002      OFST:	set	2
3577                     ; 863   FlagStatus bitstatus = RESET;
3579                     ; 864   uint8_t tim3_flag_l = 0, tim3_flag_h = 0;
3583                     ; 867   assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
3585  0002 a30001        	cpw	x,#1
3586  0005 2723          	jreq	L406
3587  0007 a30002        	cpw	x,#2
3588  000a 271e          	jreq	L406
3589  000c a30004        	cpw	x,#4
3590  000f 2719          	jreq	L406
3591  0011 a30200        	cpw	x,#512
3592  0014 2714          	jreq	L406
3593  0016 a30400        	cpw	x,#1024
3594  0019 270f          	jreq	L406
3595  001b ae0363        	ldw	x,#867
3596  001e 89            	pushw	x
3597  001f 5f            	clrw	x
3598  0020 89            	pushw	x
3599  0021 ae0000        	ldw	x,#L502
3600  0024 8d000000      	callf	f_assert_failed
3602  0028 5b04          	addw	sp,#4
3603  002a               L406:
3604                     ; 869   tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
3606  002a c65322        	ld	a,21282
3607  002d 1404          	and	a,(OFST+2,sp)
3608  002f 6b01          	ld	(OFST-1,sp),a
3610                     ; 870   tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
3612  0031 7b03          	ld	a,(OFST+1,sp)
3613  0033 6b02          	ld	(OFST+0,sp),a
3615                     ; 872   if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
3617  0035 c45323        	and	a,21283
3618  0038 1a01          	or	a,(OFST-1,sp)
3619  003a 2702          	jreq	L5051
3620                     ; 874     bitstatus = SET;
3622  003c a601          	ld	a,#1
3625  003e               L5051:
3626                     ; 878     bitstatus = RESET;
3629                     ; 880   return (FlagStatus)bitstatus;
3633  003e 5b04          	addw	sp,#4
3634  0040 87            	retf	
3669                     ; 894 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3669                     ; 895 {
3670                     .text:	section	.text,new
3671  0000               f_TIM3_ClearFlag:
3673  0000 89            	pushw	x
3674       00000000      OFST:	set	0
3677                     ; 897   assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3679  0001 01            	rrwa	x,a
3680  0002 a4f8          	and	a,#248
3681  0004 01            	rrwa	x,a
3682  0005 a4f9          	and	a,#249
3683  0007 01            	rrwa	x,a
3684  0008 5d            	tnzw	x
3685  0009 2604          	jrne	L216
3686  000b 1e01          	ldw	x,(OFST+1,sp)
3687  000d 260f          	jrne	L416
3688  000f               L216:
3689  000f ae0381        	ldw	x,#897
3690  0012 89            	pushw	x
3691  0013 5f            	clrw	x
3692  0014 89            	pushw	x
3693  0015 ae0000        	ldw	x,#L502
3694  0018 8d000000      	callf	f_assert_failed
3696  001c 5b04          	addw	sp,#4
3697  001e               L416:
3698                     ; 900   TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
3700  001e 7b02          	ld	a,(OFST+2,sp)
3701  0020 43            	cpl	a
3702  0021 c75322        	ld	21282,a
3703                     ; 901   TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
3705  0024 7b01          	ld	a,(OFST+1,sp)
3706  0026 43            	cpl	a
3707  0027 c75323        	ld	21283,a
3708                     ; 902 }
3711  002a 85            	popw	x
3712  002b 87            	retf	
3776                     ; 913 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
3776                     ; 914 {
3777                     .text:	section	.text,new
3778  0000               f_TIM3_GetITStatus:
3780  0000 88            	push	a
3781  0001 89            	pushw	x
3782       00000002      OFST:	set	2
3785                     ; 915   ITStatus bitstatus = RESET;
3787                     ; 916   uint8_t TIM3_itStatus = 0, TIM3_itEnable = 0;
3791                     ; 919   assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
3793  0002 a101          	cp	a,#1
3794  0004 2717          	jreq	L626
3795  0006 a102          	cp	a,#2
3796  0008 2713          	jreq	L626
3797  000a a104          	cp	a,#4
3798  000c 270f          	jreq	L626
3799  000e ae0397        	ldw	x,#919
3800  0011 89            	pushw	x
3801  0012 5f            	clrw	x
3802  0013 89            	pushw	x
3803  0014 ae0000        	ldw	x,#L502
3804  0017 8d000000      	callf	f_assert_failed
3806  001b 5b04          	addw	sp,#4
3807  001d               L626:
3808                     ; 921   TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
3810  001d c65322        	ld	a,21282
3811  0020 1403          	and	a,(OFST+1,sp)
3812  0022 6b01          	ld	(OFST-1,sp),a
3814                     ; 923   TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
3816  0024 c65321        	ld	a,21281
3817  0027 1403          	and	a,(OFST+1,sp)
3818  0029 6b02          	ld	(OFST+0,sp),a
3820                     ; 925   if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
3822  002b 7b01          	ld	a,(OFST-1,sp)
3823  002d 2708          	jreq	L1651
3825  002f 7b02          	ld	a,(OFST+0,sp)
3826  0031 2704          	jreq	L1651
3827                     ; 927     bitstatus = SET;
3829  0033 a601          	ld	a,#1
3832  0035 2001          	jra	L3651
3833  0037               L1651:
3834                     ; 931     bitstatus = RESET;
3836  0037 4f            	clr	a
3838  0038               L3651:
3839                     ; 933   return (ITStatus)(bitstatus);
3843  0038 5b03          	addw	sp,#3
3844  003a 87            	retf	
3880                     ; 945 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
3880                     ; 946 {
3881                     .text:	section	.text,new
3882  0000               f_TIM3_ClearITPendingBit:
3884  0000 88            	push	a
3885       00000000      OFST:	set	0
3888                     ; 948   assert_param(IS_TIM3_IT_OK(TIM3_IT));
3890  0001 4d            	tnz	a
3891  0002 2704          	jreq	L436
3892  0004 a108          	cp	a,#8
3893  0006 250f          	jrult	L636
3894  0008               L436:
3895  0008 ae03b4        	ldw	x,#948
3896  000b 89            	pushw	x
3897  000c 5f            	clrw	x
3898  000d 89            	pushw	x
3899  000e ae0000        	ldw	x,#L502
3900  0011 8d000000      	callf	f_assert_failed
3902  0015 5b04          	addw	sp,#4
3903  0017               L636:
3904                     ; 951   TIM3->SR1 = (uint8_t)(~TIM3_IT);
3906  0017 7b01          	ld	a,(OFST+1,sp)
3907  0019 43            	cpl	a
3908  001a c75322        	ld	21282,a
3909                     ; 952 }
3912  001d 84            	pop	a
3913  001e 87            	retf	
3964                     ; 970 static void TI1_Config(uint8_t TIM3_ICPolarity,
3964                     ; 971                        uint8_t TIM3_ICSelection,
3964                     ; 972                        uint8_t TIM3_ICFilter)
3964                     ; 973 {
3965                     .text:	section	.text,new
3966  0000               L3f_TI1_Config:
3968  0000 89            	pushw	x
3969  0001 88            	push	a
3970       00000001      OFST:	set	1
3973                     ; 975   TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
3975  0002 72115327      	bres	21287,#0
3976                     ; 978   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
3978  0006 7b07          	ld	a,(OFST+6,sp)
3979  0008 97            	ld	xl,a
3980  0009 a610          	ld	a,#16
3981  000b 42            	mul	x,a
3982  000c 9f            	ld	a,xl
3983  000d 1a03          	or	a,(OFST+2,sp)
3984  000f 6b01          	ld	(OFST+0,sp),a
3986  0011 c65325        	ld	a,21285
3987  0014 a40c          	and	a,#12
3988  0016 1a01          	or	a,(OFST+0,sp)
3989  0018 c75325        	ld	21285,a
3990                     ; 981   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
3992  001b 7b02          	ld	a,(OFST+1,sp)
3993  001d 2706          	jreq	L1361
3994                     ; 983     TIM3->CCER1 |= TIM3_CCER1_CC1P;
3996  001f 72125327      	bset	21287,#1
3998  0023 2004          	jra	L3361
3999  0025               L1361:
4000                     ; 987     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
4002  0025 72135327      	bres	21287,#1
4003  0029               L3361:
4004                     ; 990   TIM3->CCER1 |= TIM3_CCER1_CC1E;
4006  0029 72105327      	bset	21287,#0
4007                     ; 991 }
4010  002d 5b03          	addw	sp,#3
4011  002f 87            	retf	
4062                     ; 1009 static void TI2_Config(uint8_t TIM3_ICPolarity,
4062                     ; 1010                        uint8_t TIM3_ICSelection,
4062                     ; 1011                        uint8_t TIM3_ICFilter)
4062                     ; 1012 {
4063                     .text:	section	.text,new
4064  0000               L5f_TI2_Config:
4066  0000 89            	pushw	x
4067  0001 88            	push	a
4068       00000001      OFST:	set	1
4071                     ; 1014   TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
4073  0002 72195327      	bres	21287,#4
4074                     ; 1017   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
4074                     ; 1018                                                               TIM3_CCMR_ICxF    ))) | (uint8_t)(( (TIM3_ICSelection)) | 
4074                     ; 1019                                                                                                 ((uint8_t)( TIM3_ICFilter << 4))));
4076  0006 7b07          	ld	a,(OFST+6,sp)
4077  0008 97            	ld	xl,a
4078  0009 a610          	ld	a,#16
4079  000b 42            	mul	x,a
4080  000c 9f            	ld	a,xl
4081  000d 1a03          	or	a,(OFST+2,sp)
4082  000f 6b01          	ld	(OFST+0,sp),a
4084  0011 c65326        	ld	a,21286
4085  0014 a40c          	and	a,#12
4086  0016 1a01          	or	a,(OFST+0,sp)
4087  0018 c75326        	ld	21286,a
4088                     ; 1022   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4090  001b 7b02          	ld	a,(OFST+1,sp)
4091  001d 2706          	jreq	L3661
4092                     ; 1024     TIM3->CCER1 |= TIM3_CCER1_CC2P;
4094  001f 721a5327      	bset	21287,#5
4096  0023 2004          	jra	L5661
4097  0025               L3661:
4098                     ; 1028     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
4100  0025 721b5327      	bres	21287,#5
4101  0029               L5661:
4102                     ; 1032   TIM3->CCER1 |= TIM3_CCER1_CC2E;
4104  0029 72185327      	bset	21287,#4
4105                     ; 1033 }
4108  002d 5b03          	addw	sp,#3
4109  002f 87            	retf	
4121                     	xdef	f_TIM3_ClearITPendingBit
4122                     	xdef	f_TIM3_GetITStatus
4123                     	xdef	f_TIM3_ClearFlag
4124                     	xdef	f_TIM3_GetFlagStatus
4125                     	xdef	f_TIM3_GetPrescaler
4126                     	xdef	f_TIM3_GetCounter
4127                     	xdef	f_TIM3_GetCapture2
4128                     	xdef	f_TIM3_GetCapture1
4129                     	xdef	f_TIM3_SetIC2Prescaler
4130                     	xdef	f_TIM3_SetIC1Prescaler
4131                     	xdef	f_TIM3_SetCompare2
4132                     	xdef	f_TIM3_SetCompare1
4133                     	xdef	f_TIM3_SetAutoreload
4134                     	xdef	f_TIM3_SetCounter
4135                     	xdef	f_TIM3_SelectOCxM
4136                     	xdef	f_TIM3_CCxCmd
4137                     	xdef	f_TIM3_OC2PolarityConfig
4138                     	xdef	f_TIM3_OC1PolarityConfig
4139                     	xdef	f_TIM3_GenerateEvent
4140                     	xdef	f_TIM3_OC2PreloadConfig
4141                     	xdef	f_TIM3_OC1PreloadConfig
4142                     	xdef	f_TIM3_ARRPreloadConfig
4143                     	xdef	f_TIM3_ForcedOC2Config
4144                     	xdef	f_TIM3_ForcedOC1Config
4145                     	xdef	f_TIM3_PrescalerConfig
4146                     	xdef	f_TIM3_SelectOnePulseMode
4147                     	xdef	f_TIM3_UpdateRequestConfig
4148                     	xdef	f_TIM3_UpdateDisableConfig
4149                     	xdef	f_TIM3_ITConfig
4150                     	xdef	f_TIM3_Cmd
4151                     	xdef	f_TIM3_PWMIConfig
4152                     	xdef	f_TIM3_ICInit
4153                     	xdef	f_TIM3_OC2Init
4154                     	xdef	f_TIM3_OC1Init
4155                     	xdef	f_TIM3_TimeBaseInit
4156                     	xdef	f_TIM3_DeInit
4157                     	xref	f_assert_failed
4158                     .const:	section	.text
4159  0000               L502:
4160  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4161  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4162  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4163  0036 5f74696d332e  	dc.b	"_tim3.c",0
4183                     	end
