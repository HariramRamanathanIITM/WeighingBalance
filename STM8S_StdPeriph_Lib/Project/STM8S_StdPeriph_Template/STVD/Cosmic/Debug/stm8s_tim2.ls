   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 52 void TIM2_DeInit(void)
  49                     ; 53 {
  50                     .text:	section	.text,new
  51  0000               f_TIM2_DeInit:
  55                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  57  0000 725f5300      	clr	21248
  58                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  60  0004 725f5301      	clr	21249
  61                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  63  0008 725f5303      	clr	21251
  64                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  66  000c 725f5308      	clr	21256
  67                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  69  0010 725f5309      	clr	21257
  70                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  72  0014 725f5308      	clr	21256
  73                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  75  0018 725f5309      	clr	21257
  76                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  78  001c 725f5305      	clr	21253
  79                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  81  0020 725f5306      	clr	21254
  82                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  84  0024 725f5307      	clr	21255
  85                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  87  0028 725f530a      	clr	21258
  88                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  90  002c 725f530b      	clr	21259
  91                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  93  0030 725f530c      	clr	21260
  94                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  96  0034 35ff530d      	mov	21261,#255
  97                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  99  0038 35ff530e      	mov	21262,#255
 100                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 102  003c 725f530f      	clr	21263
 103                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 105  0040 725f5310      	clr	21264
 106                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 108  0044 725f5311      	clr	21265
 109                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 111  0048 725f5312      	clr	21266
 112                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 114  004c 725f5313      	clr	21267
 115                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 117  0050 725f5314      	clr	21268
 118                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 120  0054 725f5302      	clr	21250
 121                     ; 81 }
 124  0058 87            	retf	
 291                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 291                     ; 90                         uint16_t TIM2_Period)
 291                     ; 91 {
 292                     .text:	section	.text,new
 293  0000               f_TIM2_TimeBaseInit:
 295       ffffffff      OFST: set -1
 298                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 300  0000 c7530c        	ld	21260,a
 301                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 303  0003 7b04          	ld	a,(OFST+5,sp)
 304  0005 c7530d        	ld	21261,a
 305                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 307  0008 7b05          	ld	a,(OFST+6,sp)
 308  000a c7530e        	ld	21262,a
 309                     ; 97 }
 312  000d 87            	retf	
 469                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 469                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 469                     ; 110                   uint16_t TIM2_Pulse,
 469                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 469                     ; 112 {
 470                     .text:	section	.text,new
 471  0000               f_TIM2_OC1Init:
 473  0000 89            	pushw	x
 474  0001 88            	push	a
 475       00000001      OFST:	set	1
 478                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 480  0002 9e            	ld	a,xh
 481  0003 4d            	tnz	a
 482  0004 2720          	jreq	L61
 483  0006 9e            	ld	a,xh
 484  0007 a110          	cp	a,#16
 485  0009 271b          	jreq	L61
 486  000b 9e            	ld	a,xh
 487  000c a120          	cp	a,#32
 488  000e 2716          	jreq	L61
 489  0010 9e            	ld	a,xh
 490  0011 a130          	cp	a,#48
 491  0013 2711          	jreq	L61
 492  0015 9e            	ld	a,xh
 493  0016 a160          	cp	a,#96
 494  0018 270c          	jreq	L61
 495  001a 9e            	ld	a,xh
 496  001b a170          	cp	a,#112
 497  001d 2707          	jreq	L61
 498  001f ae0072        	ldw	x,#114
 499  0022 8d750075      	callf	LC001
 500  0026               L61:
 501                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 503  0026 7b03          	ld	a,(OFST+2,sp)
 504  0028 270b          	jreq	L62
 505  002a a111          	cp	a,#17
 506  002c 2707          	jreq	L62
 507  002e ae0073        	ldw	x,#115
 508  0031 8d750075      	callf	LC001
 509  0035               L62:
 510                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 512  0035 7b09          	ld	a,(OFST+8,sp)
 513  0037 270b          	jreq	L63
 514  0039 a122          	cp	a,#34
 515  003b 2707          	jreq	L63
 516  003d ae0074        	ldw	x,#116
 517  0040 8d750075      	callf	LC001
 518  0044               L63:
 519                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 521  0044 c65308        	ld	a,21256
 522  0047 a4fc          	and	a,#252
 523  0049 c75308        	ld	21256,a
 524                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 524                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 526  004c 7b09          	ld	a,(OFST+8,sp)
 527  004e a402          	and	a,#2
 528  0050 6b01          	ld	(OFST+0,sp),a
 530  0052 7b03          	ld	a,(OFST+2,sp)
 531  0054 a401          	and	a,#1
 532  0056 1a01          	or	a,(OFST+0,sp)
 533  0058 ca5308        	or	a,21256
 534  005b c75308        	ld	21256,a
 535                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 535                     ; 126                           (uint8_t)TIM2_OCMode);
 537  005e c65305        	ld	a,21253
 538  0061 a48f          	and	a,#143
 539  0063 1a02          	or	a,(OFST+1,sp)
 540  0065 c75305        	ld	21253,a
 541                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 543  0068 7b07          	ld	a,(OFST+6,sp)
 544  006a c7530f        	ld	21263,a
 545                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 547  006d 7b08          	ld	a,(OFST+7,sp)
 548  006f c75310        	ld	21264,a
 549                     ; 131 }
 552  0072 5b03          	addw	sp,#3
 553  0074 87            	retf	
 554  0075               LC001:
 555  0075 89            	pushw	x
 556  0076 5f            	clrw	x
 557  0077 89            	pushw	x
 558  0078 ae0000        	ldw	x,#L702
 559  007b 8d000000      	callf	f_assert_failed
 561  007f 5b04          	addw	sp,#4
 562  0081 87            	retf	
 626                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 626                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 626                     ; 144                   uint16_t TIM2_Pulse,
 626                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 626                     ; 146 {
 627                     .text:	section	.text,new
 628  0000               f_TIM2_OC2Init:
 630  0000 89            	pushw	x
 631  0001 88            	push	a
 632       00000001      OFST:	set	1
 635                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 637  0002 9e            	ld	a,xh
 638  0003 4d            	tnz	a
 639  0004 2720          	jreq	L05
 640  0006 9e            	ld	a,xh
 641  0007 a110          	cp	a,#16
 642  0009 271b          	jreq	L05
 643  000b 9e            	ld	a,xh
 644  000c a120          	cp	a,#32
 645  000e 2716          	jreq	L05
 646  0010 9e            	ld	a,xh
 647  0011 a130          	cp	a,#48
 648  0013 2711          	jreq	L05
 649  0015 9e            	ld	a,xh
 650  0016 a160          	cp	a,#96
 651  0018 270c          	jreq	L05
 652  001a 9e            	ld	a,xh
 653  001b a170          	cp	a,#112
 654  001d 2707          	jreq	L05
 655  001f ae0094        	ldw	x,#148
 656  0022 8d750075      	callf	LC002
 657  0026               L05:
 658                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 660  0026 7b03          	ld	a,(OFST+2,sp)
 661  0028 270b          	jreq	L06
 662  002a a111          	cp	a,#17
 663  002c 2707          	jreq	L06
 664  002e ae0095        	ldw	x,#149
 665  0031 8d750075      	callf	LC002
 666  0035               L06:
 667                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 669  0035 7b09          	ld	a,(OFST+8,sp)
 670  0037 270b          	jreq	L07
 671  0039 a122          	cp	a,#34
 672  003b 2707          	jreq	L07
 673  003d ae0096        	ldw	x,#150
 674  0040 8d750075      	callf	LC002
 675  0044               L07:
 676                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 678  0044 c65308        	ld	a,21256
 679  0047 a4cf          	and	a,#207
 680  0049 c75308        	ld	21256,a
 681                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 681                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 683  004c 7b09          	ld	a,(OFST+8,sp)
 684  004e a420          	and	a,#32
 685  0050 6b01          	ld	(OFST+0,sp),a
 687  0052 7b03          	ld	a,(OFST+2,sp)
 688  0054 a410          	and	a,#16
 689  0056 1a01          	or	a,(OFST+0,sp)
 690  0058 ca5308        	or	a,21256
 691  005b c75308        	ld	21256,a
 692                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 692                     ; 162                           (uint8_t)TIM2_OCMode);
 694  005e c65306        	ld	a,21254
 695  0061 a48f          	and	a,#143
 696  0063 1a02          	or	a,(OFST+1,sp)
 697  0065 c75306        	ld	21254,a
 698                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 700  0068 7b07          	ld	a,(OFST+6,sp)
 701  006a c75311        	ld	21265,a
 702                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 704  006d 7b08          	ld	a,(OFST+7,sp)
 705  006f c75312        	ld	21266,a
 706                     ; 168 }
 709  0072 5b03          	addw	sp,#3
 710  0074 87            	retf	
 711  0075               LC002:
 712  0075 89            	pushw	x
 713  0076 5f            	clrw	x
 714  0077 89            	pushw	x
 715  0078 ae0000        	ldw	x,#L702
 716  007b 8d000000      	callf	f_assert_failed
 718  007f 5b04          	addw	sp,#4
 719  0081 87            	retf	
 783                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 783                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 783                     ; 181                   uint16_t TIM2_Pulse,
 783                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 783                     ; 183 {
 784                     .text:	section	.text,new
 785  0000               f_TIM2_OC3Init:
 787  0000 89            	pushw	x
 788  0001 88            	push	a
 789       00000001      OFST:	set	1
 792                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 794  0002 9e            	ld	a,xh
 795  0003 4d            	tnz	a
 796  0004 2720          	jreq	L201
 797  0006 9e            	ld	a,xh
 798  0007 a110          	cp	a,#16
 799  0009 271b          	jreq	L201
 800  000b 9e            	ld	a,xh
 801  000c a120          	cp	a,#32
 802  000e 2716          	jreq	L201
 803  0010 9e            	ld	a,xh
 804  0011 a130          	cp	a,#48
 805  0013 2711          	jreq	L201
 806  0015 9e            	ld	a,xh
 807  0016 a160          	cp	a,#96
 808  0018 270c          	jreq	L201
 809  001a 9e            	ld	a,xh
 810  001b a170          	cp	a,#112
 811  001d 2707          	jreq	L201
 812  001f ae00b9        	ldw	x,#185
 813  0022 8d750075      	callf	LC003
 814  0026               L201:
 815                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 817  0026 7b03          	ld	a,(OFST+2,sp)
 818  0028 270b          	jreq	L211
 819  002a a111          	cp	a,#17
 820  002c 2707          	jreq	L211
 821  002e ae00ba        	ldw	x,#186
 822  0031 8d750075      	callf	LC003
 823  0035               L211:
 824                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 826  0035 7b09          	ld	a,(OFST+8,sp)
 827  0037 270b          	jreq	L221
 828  0039 a122          	cp	a,#34
 829  003b 2707          	jreq	L221
 830  003d ae00bb        	ldw	x,#187
 831  0040 8d750075      	callf	LC003
 832  0044               L221:
 833                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 835  0044 c65309        	ld	a,21257
 836  0047 a4fc          	and	a,#252
 837  0049 c75309        	ld	21257,a
 838                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 838                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 840  004c 7b09          	ld	a,(OFST+8,sp)
 841  004e a402          	and	a,#2
 842  0050 6b01          	ld	(OFST+0,sp),a
 844  0052 7b03          	ld	a,(OFST+2,sp)
 845  0054 a401          	and	a,#1
 846  0056 1a01          	or	a,(OFST+0,sp)
 847  0058 ca5309        	or	a,21257
 848  005b c75309        	ld	21257,a
 849                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 849                     ; 196                           (uint8_t)TIM2_OCMode);
 851  005e c65307        	ld	a,21255
 852  0061 a48f          	and	a,#143
 853  0063 1a02          	or	a,(OFST+1,sp)
 854  0065 c75307        	ld	21255,a
 855                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 857  0068 7b07          	ld	a,(OFST+6,sp)
 858  006a c75313        	ld	21267,a
 859                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 861  006d 7b08          	ld	a,(OFST+7,sp)
 862  006f c75314        	ld	21268,a
 863                     ; 201 }
 866  0072 5b03          	addw	sp,#3
 867  0074 87            	retf	
 868  0075               LC003:
 869  0075 89            	pushw	x
 870  0076 5f            	clrw	x
 871  0077 89            	pushw	x
 872  0078 ae0000        	ldw	x,#L702
 873  007b 8d000000      	callf	f_assert_failed
 875  007f 5b04          	addw	sp,#4
 876  0081 87            	retf	
1069                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1069                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1069                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1069                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1069                     ; 216                  uint8_t TIM2_ICFilter)
1069                     ; 217 {
1070                     .text:	section	.text,new
1071  0000               f_TIM2_ICInit:
1073  0000 89            	pushw	x
1074       00000000      OFST:	set	0
1077                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1079  0001 9e            	ld	a,xh
1080  0002 4d            	tnz	a
1081  0003 2710          	jreq	L431
1082  0005 9e            	ld	a,xh
1083  0006 4a            	dec	a
1084  0007 270c          	jreq	L431
1085  0009 9e            	ld	a,xh
1086  000a a102          	cp	a,#2
1087  000c 2707          	jreq	L431
1088  000e ae00db        	ldw	x,#219
1089  0011 8da600a6      	callf	LC004
1090  0015               L431:
1091                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1093  0015 7b02          	ld	a,(OFST+2,sp)
1094  0017 270b          	jreq	L441
1095  0019 a144          	cp	a,#68
1096  001b 2707          	jreq	L441
1097  001d ae00dc        	ldw	x,#220
1098  0020 8da600a6      	callf	LC004
1099  0024               L441:
1100                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1102  0024 7b06          	ld	a,(OFST+6,sp)
1103  0026 a101          	cp	a,#1
1104  0028 270f          	jreq	L451
1105  002a a102          	cp	a,#2
1106  002c 270b          	jreq	L451
1107  002e a103          	cp	a,#3
1108  0030 2707          	jreq	L451
1109  0032 ae00dd        	ldw	x,#221
1110  0035 8da600a6      	callf	LC004
1111  0039               L451:
1112                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1114  0039 7b07          	ld	a,(OFST+7,sp)
1115  003b 2713          	jreq	L461
1116  003d a104          	cp	a,#4
1117  003f 270f          	jreq	L461
1118  0041 a108          	cp	a,#8
1119  0043 270b          	jreq	L461
1120  0045 a10c          	cp	a,#12
1121  0047 2707          	jreq	L461
1122  0049 ae00de        	ldw	x,#222
1123  004c 8da600a6      	callf	LC004
1124  0050               L461:
1125                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1127  0050 7b08          	ld	a,(OFST+8,sp)
1128  0052 a110          	cp	a,#16
1129  0054 2507          	jrult	L271
1130  0056 ae00df        	ldw	x,#223
1131  0059 8da600a6      	callf	LC004
1132  005d               L271:
1133                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1135  005d 7b01          	ld	a,(OFST+1,sp)
1136  005f 2616          	jrne	L304
1137                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1137                     ; 229                (uint8_t)TIM2_ICSelection,
1137                     ; 230                (uint8_t)TIM2_ICFilter);
1139  0061 7b08          	ld	a,(OFST+8,sp)
1140  0063 88            	push	a
1141  0064 7b07          	ld	a,(OFST+7,sp)
1142  0066 97            	ld	xl,a
1143  0067 7b03          	ld	a,(OFST+3,sp)
1144  0069 95            	ld	xh,a
1145  006a 8d000000      	callf	L3f_TI1_Config
1147  006e 84            	pop	a
1148                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1150  006f 7b07          	ld	a,(OFST+7,sp)
1151  0071 8d000000      	callf	f_TIM2_SetIC1Prescaler
1154  0075 202d          	jra	L504
1155  0077               L304:
1156                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1158  0077 4a            	dec	a
1159  0078 2616          	jrne	L704
1160                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1160                     ; 239                (uint8_t)TIM2_ICSelection,
1160                     ; 240                (uint8_t)TIM2_ICFilter);
1162  007a 7b08          	ld	a,(OFST+8,sp)
1163  007c 88            	push	a
1164  007d 7b07          	ld	a,(OFST+7,sp)
1165  007f 97            	ld	xl,a
1166  0080 7b03          	ld	a,(OFST+3,sp)
1167  0082 95            	ld	xh,a
1168  0083 8d000000      	callf	L5f_TI2_Config
1170  0087 84            	pop	a
1171                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1173  0088 7b07          	ld	a,(OFST+7,sp)
1174  008a 8d000000      	callf	f_TIM2_SetIC2Prescaler
1177  008e 2014          	jra	L504
1178  0090               L704:
1179                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1179                     ; 249                (uint8_t)TIM2_ICSelection,
1179                     ; 250                (uint8_t)TIM2_ICFilter);
1181  0090 7b08          	ld	a,(OFST+8,sp)
1182  0092 88            	push	a
1183  0093 7b07          	ld	a,(OFST+7,sp)
1184  0095 97            	ld	xl,a
1185  0096 7b03          	ld	a,(OFST+3,sp)
1186  0098 95            	ld	xh,a
1187  0099 8d000000      	callf	L7f_TI3_Config
1189  009d 84            	pop	a
1190                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1192  009e 7b07          	ld	a,(OFST+7,sp)
1193  00a0 8d000000      	callf	f_TIM2_SetIC3Prescaler
1195  00a4               L504:
1196                     ; 255 }
1199  00a4 85            	popw	x
1200  00a5 87            	retf	
1201  00a6               LC004:
1202  00a6 89            	pushw	x
1203  00a7 5f            	clrw	x
1204  00a8 89            	pushw	x
1205  00a9 ae0000        	ldw	x,#L702
1206  00ac 8d000000      	callf	f_assert_failed
1208  00b0 5b04          	addw	sp,#4
1209  00b2 87            	retf	
1305                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1305                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1305                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1305                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1305                     ; 270                      uint8_t TIM2_ICFilter)
1305                     ; 271 {
1306                     .text:	section	.text,new
1307  0000               f_TIM2_PWMIConfig:
1309  0000 89            	pushw	x
1310  0001 89            	pushw	x
1311       00000002      OFST:	set	2
1314                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1316                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1318                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1320  0002 9e            	ld	a,xh
1321  0003 4d            	tnz	a
1322  0004 270b          	jreq	L022
1323  0006 9e            	ld	a,xh
1324  0007 4a            	dec	a
1325  0008 2707          	jreq	L022
1326  000a ae0114        	ldw	x,#276
1327  000d 8dc000c0      	callf	LC005
1328  0011               L022:
1329                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1331  0011 7b04          	ld	a,(OFST+2,sp)
1332  0013 270b          	jreq	L032
1333  0015 a144          	cp	a,#68
1334  0017 2707          	jreq	L032
1335  0019 ae0115        	ldw	x,#277
1336  001c 8dc000c0      	callf	LC005
1337  0020               L032:
1338                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1340  0020 7b08          	ld	a,(OFST+6,sp)
1341  0022 a101          	cp	a,#1
1342  0024 270f          	jreq	L042
1343  0026 a102          	cp	a,#2
1344  0028 270b          	jreq	L042
1345  002a a103          	cp	a,#3
1346  002c 2707          	jreq	L042
1347  002e ae0116        	ldw	x,#278
1348  0031 8dc000c0      	callf	LC005
1349  0035               L042:
1350                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1352  0035 7b09          	ld	a,(OFST+7,sp)
1353  0037 2713          	jreq	L052
1354  0039 a104          	cp	a,#4
1355  003b 270f          	jreq	L052
1356  003d a108          	cp	a,#8
1357  003f 270b          	jreq	L052
1358  0041 a10c          	cp	a,#12
1359  0043 2707          	jreq	L052
1360  0045 ae0117        	ldw	x,#279
1361  0048 8dc000c0      	callf	LC005
1362  004c               L052:
1363                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1365  004c 7b04          	ld	a,(OFST+2,sp)
1366  004e a144          	cp	a,#68
1367  0050 2706          	jreq	L164
1368                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1370  0052 a644          	ld	a,#68
1371  0054 6b01          	ld	(OFST-1,sp),a
1374  0056 2002          	jra	L364
1375  0058               L164:
1376                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1378  0058 0f01          	clr	(OFST-1,sp)
1380  005a               L364:
1381                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1383  005a 7b08          	ld	a,(OFST+6,sp)
1384  005c 4a            	dec	a
1385  005d 2604          	jrne	L564
1386                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1388  005f a602          	ld	a,#2
1390  0061 2002          	jra	L764
1391  0063               L564:
1392                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1394  0063 a601          	ld	a,#1
1395  0065               L764:
1396  0065 6b02          	ld	(OFST+0,sp),a
1398                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1400  0067 7b03          	ld	a,(OFST+1,sp)
1401  0069 262a          	jrne	L174
1402                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1402                     ; 305                (uint8_t)TIM2_ICFilter);
1404  006b 7b0a          	ld	a,(OFST+8,sp)
1405  006d 88            	push	a
1406  006e 7b09          	ld	a,(OFST+7,sp)
1407  0070 97            	ld	xl,a
1408  0071 7b05          	ld	a,(OFST+3,sp)
1409  0073 95            	ld	xh,a
1410  0074 8d000000      	callf	L3f_TI1_Config
1412  0078 84            	pop	a
1413                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1415  0079 7b09          	ld	a,(OFST+7,sp)
1416  007b 8d000000      	callf	f_TIM2_SetIC1Prescaler
1418                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1420  007f 7b0a          	ld	a,(OFST+8,sp)
1421  0081 88            	push	a
1422  0082 7b03          	ld	a,(OFST+1,sp)
1423  0084 97            	ld	xl,a
1424  0085 7b02          	ld	a,(OFST+0,sp)
1425  0087 95            	ld	xh,a
1426  0088 8d000000      	callf	L5f_TI2_Config
1428  008c 84            	pop	a
1429                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1431  008d 7b09          	ld	a,(OFST+7,sp)
1432  008f 8d000000      	callf	f_TIM2_SetIC2Prescaler
1435  0093 2028          	jra	L374
1436  0095               L174:
1437                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1437                     ; 320                (uint8_t)TIM2_ICFilter);
1439  0095 7b0a          	ld	a,(OFST+8,sp)
1440  0097 88            	push	a
1441  0098 7b09          	ld	a,(OFST+7,sp)
1442  009a 97            	ld	xl,a
1443  009b 7b05          	ld	a,(OFST+3,sp)
1444  009d 95            	ld	xh,a
1445  009e 8d000000      	callf	L5f_TI2_Config
1447  00a2 84            	pop	a
1448                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1450  00a3 7b09          	ld	a,(OFST+7,sp)
1451  00a5 8d000000      	callf	f_TIM2_SetIC2Prescaler
1453                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1455  00a9 7b0a          	ld	a,(OFST+8,sp)
1456  00ab 88            	push	a
1457  00ac 7b03          	ld	a,(OFST+1,sp)
1458  00ae 97            	ld	xl,a
1459  00af 7b02          	ld	a,(OFST+0,sp)
1460  00b1 95            	ld	xh,a
1461  00b2 8d000000      	callf	L3f_TI1_Config
1463  00b6 84            	pop	a
1464                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1466  00b7 7b09          	ld	a,(OFST+7,sp)
1467  00b9 8d000000      	callf	f_TIM2_SetIC1Prescaler
1469  00bd               L374:
1470                     ; 331 }
1473  00bd 5b04          	addw	sp,#4
1474  00bf 87            	retf	
1475  00c0               LC005:
1476  00c0 89            	pushw	x
1477  00c1 5f            	clrw	x
1478  00c2 89            	pushw	x
1479  00c3 ae0000        	ldw	x,#L702
1480  00c6 8d000000      	callf	f_assert_failed
1482  00ca 5b04          	addw	sp,#4
1483  00cc 87            	retf	
1538                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1538                     ; 340 {
1539                     .text:	section	.text,new
1540  0000               f_TIM2_Cmd:
1542  0000 88            	push	a
1543       00000000      OFST:	set	0
1546                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1548  0001 4d            	tnz	a
1549  0002 2712          	jreq	L203
1550  0004 4a            	dec	a
1551  0005 270f          	jreq	L203
1552  0007 ae0156        	ldw	x,#342
1553  000a 89            	pushw	x
1554  000b 5f            	clrw	x
1555  000c 89            	pushw	x
1556  000d ae0000        	ldw	x,#L702
1557  0010 8d000000      	callf	f_assert_failed
1559  0014 5b04          	addw	sp,#4
1560  0016               L203:
1561                     ; 345   if (NewState != DISABLE)
1563  0016 7b01          	ld	a,(OFST+1,sp)
1564  0018 2706          	jreq	L325
1565                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1567  001a 72105300      	bset	21248,#0
1569  001e 2004          	jra	L525
1570  0020               L325:
1571                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1573  0020 72115300      	bres	21248,#0
1574  0024               L525:
1575                     ; 353 }
1578  0024 84            	pop	a
1579  0025 87            	retf	
1658                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1658                     ; 369 {
1659                     .text:	section	.text,new
1660  0000               f_TIM2_ITConfig:
1662  0000 89            	pushw	x
1663       00000000      OFST:	set	0
1666                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1668  0001 9e            	ld	a,xh
1669  0002 4d            	tnz	a
1670  0003 2705          	jreq	L013
1671  0005 9e            	ld	a,xh
1672  0006 a110          	cp	a,#16
1673  0008 2507          	jrult	L213
1674  000a               L013:
1675  000a ae0173        	ldw	x,#371
1676  000d 8d350035      	callf	LC006
1677  0011               L213:
1678                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1680  0011 7b02          	ld	a,(OFST+2,sp)
1681  0013 270a          	jreq	L223
1682  0015 4a            	dec	a
1683  0016 2707          	jreq	L223
1684  0018 ae0174        	ldw	x,#372
1685  001b 8d350035      	callf	LC006
1686  001f               L223:
1687                     ; 374   if (NewState != DISABLE)
1689  001f 7b02          	ld	a,(OFST+2,sp)
1690  0021 2707          	jreq	L565
1691                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1693  0023 c65301        	ld	a,21249
1694  0026 1a01          	or	a,(OFST+1,sp)
1696  0028 2006          	jra	L765
1697  002a               L565:
1698                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1700  002a 7b01          	ld	a,(OFST+1,sp)
1701  002c 43            	cpl	a
1702  002d c45301        	and	a,21249
1703  0030               L765:
1704  0030 c75301        	ld	21249,a
1705                     ; 384 }
1708  0033 85            	popw	x
1709  0034 87            	retf	
1710  0035               LC006:
1711  0035 89            	pushw	x
1712  0036 5f            	clrw	x
1713  0037 89            	pushw	x
1714  0038 ae0000        	ldw	x,#L702
1715  003b 8d000000      	callf	f_assert_failed
1717  003f 5b04          	addw	sp,#4
1718  0041 87            	retf	
1754                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1754                     ; 393 {
1755                     .text:	section	.text,new
1756  0000               f_TIM2_UpdateDisableConfig:
1758  0000 88            	push	a
1759       00000000      OFST:	set	0
1762                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1764  0001 4d            	tnz	a
1765  0002 2712          	jreq	L433
1766  0004 4a            	dec	a
1767  0005 270f          	jreq	L433
1768  0007 ae018b        	ldw	x,#395
1769  000a 89            	pushw	x
1770  000b 5f            	clrw	x
1771  000c 89            	pushw	x
1772  000d ae0000        	ldw	x,#L702
1773  0010 8d000000      	callf	f_assert_failed
1775  0014 5b04          	addw	sp,#4
1776  0016               L433:
1777                     ; 398   if (NewState != DISABLE)
1779  0016 7b01          	ld	a,(OFST+1,sp)
1780  0018 2706          	jreq	L706
1781                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1783  001a 72125300      	bset	21248,#1
1785  001e 2004          	jra	L116
1786  0020               L706:
1787                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1789  0020 72135300      	bres	21248,#1
1790  0024               L116:
1791                     ; 406 }
1794  0024 84            	pop	a
1795  0025 87            	retf	
1853                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1853                     ; 417 {
1854                     .text:	section	.text,new
1855  0000               f_TIM2_UpdateRequestConfig:
1857  0000 88            	push	a
1858       00000000      OFST:	set	0
1861                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1863  0001 4d            	tnz	a
1864  0002 2712          	jreq	L643
1865  0004 4a            	dec	a
1866  0005 270f          	jreq	L643
1867  0007 ae01a3        	ldw	x,#419
1868  000a 89            	pushw	x
1869  000b 5f            	clrw	x
1870  000c 89            	pushw	x
1871  000d ae0000        	ldw	x,#L702
1872  0010 8d000000      	callf	f_assert_failed
1874  0014 5b04          	addw	sp,#4
1875  0016               L643:
1876                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1878  0016 7b01          	ld	a,(OFST+1,sp)
1879  0018 2706          	jreq	L146
1880                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1882  001a 72145300      	bset	21248,#2
1884  001e 2004          	jra	L346
1885  0020               L146:
1886                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1888  0020 72155300      	bres	21248,#2
1889  0024               L346:
1890                     ; 430 }
1893  0024 84            	pop	a
1894  0025 87            	retf	
1951                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1951                     ; 441 {
1952                     .text:	section	.text,new
1953  0000               f_TIM2_SelectOnePulseMode:
1955  0000 88            	push	a
1956       00000000      OFST:	set	0
1959                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1961  0001 a101          	cp	a,#1
1962  0003 2712          	jreq	L063
1963  0005 4d            	tnz	a
1964  0006 270f          	jreq	L063
1965  0008 ae01bb        	ldw	x,#443
1966  000b 89            	pushw	x
1967  000c 5f            	clrw	x
1968  000d 89            	pushw	x
1969  000e ae0000        	ldw	x,#L702
1970  0011 8d000000      	callf	f_assert_failed
1972  0015 5b04          	addw	sp,#4
1973  0017               L063:
1974                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1976  0017 7b01          	ld	a,(OFST+1,sp)
1977  0019 2706          	jreq	L376
1978                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1980  001b 72165300      	bset	21248,#3
1982  001f 2004          	jra	L576
1983  0021               L376:
1984                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1986  0021 72175300      	bres	21248,#3
1987  0025               L576:
1988                     ; 454 }
1991  0025 84            	pop	a
1992  0026 87            	retf	
2060                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2060                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2060                     ; 486 {
2061                     .text:	section	.text,new
2062  0000               f_TIM2_PrescalerConfig:
2064  0000 89            	pushw	x
2065       00000000      OFST:	set	0
2068                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2070  0001 9f            	ld	a,xl
2071  0002 4d            	tnz	a
2072  0003 270b          	jreq	L273
2073  0005 9f            	ld	a,xl
2074  0006 4a            	dec	a
2075  0007 2707          	jreq	L273
2076  0009 ae01e8        	ldw	x,#488
2077  000c 8d630063      	callf	LC007
2078  0010               L273:
2079                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2081  0010 7b01          	ld	a,(OFST+1,sp)
2082  0012 2745          	jreq	L204
2083  0014 a101          	cp	a,#1
2084  0016 2741          	jreq	L204
2085  0018 a102          	cp	a,#2
2086  001a 273d          	jreq	L204
2087  001c a103          	cp	a,#3
2088  001e 2739          	jreq	L204
2089  0020 a104          	cp	a,#4
2090  0022 2735          	jreq	L204
2091  0024 a105          	cp	a,#5
2092  0026 2731          	jreq	L204
2093  0028 a106          	cp	a,#6
2094  002a 272d          	jreq	L204
2095  002c a107          	cp	a,#7
2096  002e 2729          	jreq	L204
2097  0030 a108          	cp	a,#8
2098  0032 2725          	jreq	L204
2099  0034 a109          	cp	a,#9
2100  0036 2721          	jreq	L204
2101  0038 a10a          	cp	a,#10
2102  003a 271d          	jreq	L204
2103  003c a10b          	cp	a,#11
2104  003e 2719          	jreq	L204
2105  0040 a10c          	cp	a,#12
2106  0042 2715          	jreq	L204
2107  0044 a10d          	cp	a,#13
2108  0046 2711          	jreq	L204
2109  0048 a10e          	cp	a,#14
2110  004a 270d          	jreq	L204
2111  004c a10f          	cp	a,#15
2112  004e 2709          	jreq	L204
2113  0050 ae01e9        	ldw	x,#489
2114  0053 8d630063      	callf	LC007
2115  0057 7b01          	ld	a,(OFST+1,sp)
2116  0059               L204:
2117                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2119  0059 c7530c        	ld	21260,a
2120                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2122  005c 7b02          	ld	a,(OFST+2,sp)
2123  005e c75304        	ld	21252,a
2124                     ; 496 }
2127  0061 85            	popw	x
2128  0062 87            	retf	
2129  0063               LC007:
2130  0063 89            	pushw	x
2131  0064 5f            	clrw	x
2132  0065 89            	pushw	x
2133  0066 ae0000        	ldw	x,#L702
2134  0069 8d000000      	callf	f_assert_failed
2136  006d 5b04          	addw	sp,#4
2137  006f 87            	retf	
2195                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2195                     ; 508 {
2196                     .text:	section	.text,new
2197  0000               f_TIM2_ForcedOC1Config:
2199  0000 88            	push	a
2200       00000000      OFST:	set	0
2203                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2205  0001 a150          	cp	a,#80
2206  0003 2713          	jreq	L414
2207  0005 a140          	cp	a,#64
2208  0007 270f          	jreq	L414
2209  0009 ae01fe        	ldw	x,#510
2210  000c 89            	pushw	x
2211  000d 5f            	clrw	x
2212  000e 89            	pushw	x
2213  000f ae0000        	ldw	x,#L702
2214  0012 8d000000      	callf	f_assert_failed
2216  0016 5b04          	addw	sp,#4
2217  0018               L414:
2218                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2218                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2220  0018 c65305        	ld	a,21253
2221  001b a48f          	and	a,#143
2222  001d 1a01          	or	a,(OFST+1,sp)
2223  001f c75305        	ld	21253,a
2224                     ; 515 }
2227  0022 84            	pop	a
2228  0023 87            	retf	
2264                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2264                     ; 527 {
2265                     .text:	section	.text,new
2266  0000               f_TIM2_ForcedOC2Config:
2268  0000 88            	push	a
2269       00000000      OFST:	set	0
2272                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2274  0001 a150          	cp	a,#80
2275  0003 2713          	jreq	L624
2276  0005 a140          	cp	a,#64
2277  0007 270f          	jreq	L624
2278  0009 ae0211        	ldw	x,#529
2279  000c 89            	pushw	x
2280  000d 5f            	clrw	x
2281  000e 89            	pushw	x
2282  000f ae0000        	ldw	x,#L702
2283  0012 8d000000      	callf	f_assert_failed
2285  0016 5b04          	addw	sp,#4
2286  0018               L624:
2287                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2287                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2289  0018 c65306        	ld	a,21254
2290  001b a48f          	and	a,#143
2291  001d 1a01          	or	a,(OFST+1,sp)
2292  001f c75306        	ld	21254,a
2293                     ; 534 }
2296  0022 84            	pop	a
2297  0023 87            	retf	
2333                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2333                     ; 546 {
2334                     .text:	section	.text,new
2335  0000               f_TIM2_ForcedOC3Config:
2337  0000 88            	push	a
2338       00000000      OFST:	set	0
2341                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2343  0001 a150          	cp	a,#80
2344  0003 2713          	jreq	L044
2345  0005 a140          	cp	a,#64
2346  0007 270f          	jreq	L044
2347  0009 ae0224        	ldw	x,#548
2348  000c 89            	pushw	x
2349  000d 5f            	clrw	x
2350  000e 89            	pushw	x
2351  000f ae0000        	ldw	x,#L702
2352  0012 8d000000      	callf	f_assert_failed
2354  0016 5b04          	addw	sp,#4
2355  0018               L044:
2356                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2356                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2358  0018 c65307        	ld	a,21255
2359  001b a48f          	and	a,#143
2360  001d 1a01          	or	a,(OFST+1,sp)
2361  001f c75307        	ld	21255,a
2362                     ; 553 }
2365  0022 84            	pop	a
2366  0023 87            	retf	
2402                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2402                     ; 562 {
2403                     .text:	section	.text,new
2404  0000               f_TIM2_ARRPreloadConfig:
2406  0000 88            	push	a
2407       00000000      OFST:	set	0
2410                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2412  0001 4d            	tnz	a
2413  0002 2712          	jreq	L254
2414  0004 4a            	dec	a
2415  0005 270f          	jreq	L254
2416  0007 ae0234        	ldw	x,#564
2417  000a 89            	pushw	x
2418  000b 5f            	clrw	x
2419  000c 89            	pushw	x
2420  000d ae0000        	ldw	x,#L702
2421  0010 8d000000      	callf	f_assert_failed
2423  0014 5b04          	addw	sp,#4
2424  0016               L254:
2425                     ; 567   if (NewState != DISABLE)
2427  0016 7b01          	ld	a,(OFST+1,sp)
2428  0018 2706          	jreq	L1301
2429                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2431  001a 721e5300      	bset	21248,#7
2433  001e 2004          	jra	L3301
2434  0020               L1301:
2435                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2437  0020 721f5300      	bres	21248,#7
2438  0024               L3301:
2439                     ; 575 }
2442  0024 84            	pop	a
2443  0025 87            	retf	
2479                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2479                     ; 584 {
2480                     .text:	section	.text,new
2481  0000               f_TIM2_OC1PreloadConfig:
2483  0000 88            	push	a
2484       00000000      OFST:	set	0
2487                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2489  0001 4d            	tnz	a
2490  0002 2712          	jreq	L464
2491  0004 4a            	dec	a
2492  0005 270f          	jreq	L464
2493  0007 ae024a        	ldw	x,#586
2494  000a 89            	pushw	x
2495  000b 5f            	clrw	x
2496  000c 89            	pushw	x
2497  000d ae0000        	ldw	x,#L702
2498  0010 8d000000      	callf	f_assert_failed
2500  0014 5b04          	addw	sp,#4
2501  0016               L464:
2502                     ; 589   if (NewState != DISABLE)
2504  0016 7b01          	ld	a,(OFST+1,sp)
2505  0018 2706          	jreq	L3501
2506                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2508  001a 72165305      	bset	21253,#3
2510  001e 2004          	jra	L5501
2511  0020               L3501:
2512                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2514  0020 72175305      	bres	21253,#3
2515  0024               L5501:
2516                     ; 597 }
2519  0024 84            	pop	a
2520  0025 87            	retf	
2556                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2556                     ; 606 {
2557                     .text:	section	.text,new
2558  0000               f_TIM2_OC2PreloadConfig:
2560  0000 88            	push	a
2561       00000000      OFST:	set	0
2564                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2566  0001 4d            	tnz	a
2567  0002 2712          	jreq	L674
2568  0004 4a            	dec	a
2569  0005 270f          	jreq	L674
2570  0007 ae0260        	ldw	x,#608
2571  000a 89            	pushw	x
2572  000b 5f            	clrw	x
2573  000c 89            	pushw	x
2574  000d ae0000        	ldw	x,#L702
2575  0010 8d000000      	callf	f_assert_failed
2577  0014 5b04          	addw	sp,#4
2578  0016               L674:
2579                     ; 611   if (NewState != DISABLE)
2581  0016 7b01          	ld	a,(OFST+1,sp)
2582  0018 2706          	jreq	L5701
2583                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2585  001a 72165306      	bset	21254,#3
2587  001e 2004          	jra	L7701
2588  0020               L5701:
2589                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2591  0020 72175306      	bres	21254,#3
2592  0024               L7701:
2593                     ; 619 }
2596  0024 84            	pop	a
2597  0025 87            	retf	
2633                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2633                     ; 628 {
2634                     .text:	section	.text,new
2635  0000               f_TIM2_OC3PreloadConfig:
2637  0000 88            	push	a
2638       00000000      OFST:	set	0
2641                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2643  0001 4d            	tnz	a
2644  0002 2712          	jreq	L015
2645  0004 4a            	dec	a
2646  0005 270f          	jreq	L015
2647  0007 ae0276        	ldw	x,#630
2648  000a 89            	pushw	x
2649  000b 5f            	clrw	x
2650  000c 89            	pushw	x
2651  000d ae0000        	ldw	x,#L702
2652  0010 8d000000      	callf	f_assert_failed
2654  0014 5b04          	addw	sp,#4
2655  0016               L015:
2656                     ; 633   if (NewState != DISABLE)
2658  0016 7b01          	ld	a,(OFST+1,sp)
2659  0018 2706          	jreq	L7111
2660                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2662  001a 72165307      	bset	21255,#3
2664  001e 2004          	jra	L1211
2665  0020               L7111:
2666                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2668  0020 72175307      	bres	21255,#3
2669  0024               L1211:
2670                     ; 641 }
2673  0024 84            	pop	a
2674  0025 87            	retf	
2747                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2747                     ; 654 {
2748                     .text:	section	.text,new
2749  0000               f_TIM2_GenerateEvent:
2751  0000 88            	push	a
2752       00000000      OFST:	set	0
2755                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2757  0001 4d            	tnz	a
2758  0002 260f          	jrne	L025
2759  0004 ae0290        	ldw	x,#656
2760  0007 89            	pushw	x
2761  0008 5f            	clrw	x
2762  0009 89            	pushw	x
2763  000a ae0000        	ldw	x,#L702
2764  000d 8d000000      	callf	f_assert_failed
2766  0011 5b04          	addw	sp,#4
2767  0013               L025:
2768                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2770  0013 7b01          	ld	a,(OFST+1,sp)
2771  0015 c75304        	ld	21252,a
2772                     ; 660 }
2775  0018 84            	pop	a
2776  0019 87            	retf	
2812                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2812                     ; 671 {
2813                     .text:	section	.text,new
2814  0000               f_TIM2_OC1PolarityConfig:
2816  0000 88            	push	a
2817       00000000      OFST:	set	0
2820                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2822  0001 4d            	tnz	a
2823  0002 2713          	jreq	L235
2824  0004 a122          	cp	a,#34
2825  0006 270f          	jreq	L235
2826  0008 ae02a1        	ldw	x,#673
2827  000b 89            	pushw	x
2828  000c 5f            	clrw	x
2829  000d 89            	pushw	x
2830  000e ae0000        	ldw	x,#L702
2831  0011 8d000000      	callf	f_assert_failed
2833  0015 5b04          	addw	sp,#4
2834  0017               L235:
2835                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2837  0017 7b01          	ld	a,(OFST+1,sp)
2838  0019 2706          	jreq	L3711
2839                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2841  001b 72125308      	bset	21256,#1
2843  001f 2004          	jra	L5711
2844  0021               L3711:
2845                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2847  0021 72135308      	bres	21256,#1
2848  0025               L5711:
2849                     ; 684 }
2852  0025 84            	pop	a
2853  0026 87            	retf	
2889                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2889                     ; 695 {
2890                     .text:	section	.text,new
2891  0000               f_TIM2_OC2PolarityConfig:
2893  0000 88            	push	a
2894       00000000      OFST:	set	0
2897                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2899  0001 4d            	tnz	a
2900  0002 2713          	jreq	L445
2901  0004 a122          	cp	a,#34
2902  0006 270f          	jreq	L445
2903  0008 ae02b9        	ldw	x,#697
2904  000b 89            	pushw	x
2905  000c 5f            	clrw	x
2906  000d 89            	pushw	x
2907  000e ae0000        	ldw	x,#L702
2908  0011 8d000000      	callf	f_assert_failed
2910  0015 5b04          	addw	sp,#4
2911  0017               L445:
2912                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2914  0017 7b01          	ld	a,(OFST+1,sp)
2915  0019 2706          	jreq	L5121
2916                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2918  001b 721a5308      	bset	21256,#5
2920  001f 2004          	jra	L7121
2921  0021               L5121:
2922                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2924  0021 721b5308      	bres	21256,#5
2925  0025               L7121:
2926                     ; 708 }
2929  0025 84            	pop	a
2930  0026 87            	retf	
2966                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2966                     ; 719 {
2967                     .text:	section	.text,new
2968  0000               f_TIM2_OC3PolarityConfig:
2970  0000 88            	push	a
2971       00000000      OFST:	set	0
2974                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2976  0001 4d            	tnz	a
2977  0002 2713          	jreq	L655
2978  0004 a122          	cp	a,#34
2979  0006 270f          	jreq	L655
2980  0008 ae02d1        	ldw	x,#721
2981  000b 89            	pushw	x
2982  000c 5f            	clrw	x
2983  000d 89            	pushw	x
2984  000e ae0000        	ldw	x,#L702
2985  0011 8d000000      	callf	f_assert_failed
2987  0015 5b04          	addw	sp,#4
2988  0017               L655:
2989                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2991  0017 7b01          	ld	a,(OFST+1,sp)
2992  0019 2706          	jreq	L7321
2993                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2995  001b 72125309      	bset	21257,#1
2997  001f 2004          	jra	L1421
2998  0021               L7321:
2999                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3001  0021 72135309      	bres	21257,#1
3002  0025               L1421:
3003                     ; 732 }
3006  0025 84            	pop	a
3007  0026 87            	retf	
3052                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3052                     ; 746 {
3053                     .text:	section	.text,new
3054  0000               f_TIM2_CCxCmd:
3056  0000 89            	pushw	x
3057       00000000      OFST:	set	0
3060                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3062  0001 9e            	ld	a,xh
3063  0002 4d            	tnz	a
3064  0003 2710          	jreq	L075
3065  0005 9e            	ld	a,xh
3066  0006 4a            	dec	a
3067  0007 270c          	jreq	L075
3068  0009 9e            	ld	a,xh
3069  000a a102          	cp	a,#2
3070  000c 2707          	jreq	L075
3071  000e ae02ec        	ldw	x,#748
3072  0011 8d5a005a      	callf	LC008
3073  0015               L075:
3074                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3076  0015 7b02          	ld	a,(OFST+2,sp)
3077  0017 270a          	jreq	L006
3078  0019 4a            	dec	a
3079  001a 2707          	jreq	L006
3080  001c ae02ed        	ldw	x,#749
3081  001f 8d5a005a      	callf	LC008
3082  0023               L006:
3083                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3085  0023 7b01          	ld	a,(OFST+1,sp)
3086  0025 2610          	jrne	L5621
3087                     ; 754     if (NewState != DISABLE)
3089  0027 7b02          	ld	a,(OFST+2,sp)
3090  0029 2706          	jreq	L7621
3091                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3093  002b 72105308      	bset	21256,#0
3095  002f 2027          	jra	L3721
3096  0031               L7621:
3097                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3099  0031 72115308      	bres	21256,#0
3100  0035 2021          	jra	L3721
3101  0037               L5621:
3102                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3104  0037 4a            	dec	a
3105  0038 2610          	jrne	L5721
3106                     ; 767     if (NewState != DISABLE)
3108  003a 7b02          	ld	a,(OFST+2,sp)
3109  003c 2706          	jreq	L7721
3110                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3112  003e 72185308      	bset	21256,#4
3114  0042 2014          	jra	L3721
3115  0044               L7721:
3116                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3118  0044 72195308      	bres	21256,#4
3119  0048 200e          	jra	L3721
3120  004a               L5721:
3121                     ; 779     if (NewState != DISABLE)
3123  004a 7b02          	ld	a,(OFST+2,sp)
3124  004c 2706          	jreq	L5031
3125                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3127  004e 72105309      	bset	21257,#0
3129  0052 2004          	jra	L3721
3130  0054               L5031:
3131                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3133  0054 72115309      	bres	21257,#0
3134  0058               L3721:
3135                     ; 788 }
3138  0058 85            	popw	x
3139  0059 87            	retf	
3140  005a               LC008:
3141  005a 89            	pushw	x
3142  005b 5f            	clrw	x
3143  005c 89            	pushw	x
3144  005d ae0000        	ldw	x,#L702
3145  0060 8d000000      	callf	f_assert_failed
3147  0064 5b04          	addw	sp,#4
3148  0066 87            	retf	
3193                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3193                     ; 811 {
3194                     .text:	section	.text,new
3195  0000               f_TIM2_SelectOCxM:
3197  0000 89            	pushw	x
3198       00000000      OFST:	set	0
3201                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3203  0001 9e            	ld	a,xh
3204  0002 4d            	tnz	a
3205  0003 2710          	jreq	L216
3206  0005 9e            	ld	a,xh
3207  0006 4a            	dec	a
3208  0007 270c          	jreq	L216
3209  0009 9e            	ld	a,xh
3210  000a a102          	cp	a,#2
3211  000c 2707          	jreq	L216
3212  000e ae032d        	ldw	x,#813
3213  0011 8d730073      	callf	LC009
3214  0015               L216:
3215                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3217  0015 7b02          	ld	a,(OFST+2,sp)
3218  0017 2723          	jreq	L226
3219  0019 a110          	cp	a,#16
3220  001b 271f          	jreq	L226
3221  001d a120          	cp	a,#32
3222  001f 271b          	jreq	L226
3223  0021 a130          	cp	a,#48
3224  0023 2717          	jreq	L226
3225  0025 a160          	cp	a,#96
3226  0027 2713          	jreq	L226
3227  0029 a170          	cp	a,#112
3228  002b 270f          	jreq	L226
3229  002d a150          	cp	a,#80
3230  002f 270b          	jreq	L226
3231  0031 a140          	cp	a,#64
3232  0033 2707          	jreq	L226
3233  0035 ae032e        	ldw	x,#814
3234  0038 8d730073      	callf	LC009
3235  003c               L226:
3236                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3238  003c 7b01          	ld	a,(OFST+1,sp)
3239  003e 2610          	jrne	L3331
3240                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3242  0040 72115308      	bres	21256,#0
3243                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3243                     ; 823                             | (uint8_t)TIM2_OCMode);
3245  0044 c65305        	ld	a,21253
3246  0047 a48f          	and	a,#143
3247  0049 1a02          	or	a,(OFST+2,sp)
3248  004b c75305        	ld	21253,a
3250  004e 2021          	jra	L5331
3251  0050               L3331:
3252                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3254  0050 4a            	dec	a
3255  0051 2610          	jrne	L7331
3256                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3258  0053 72195308      	bres	21256,#4
3259                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3259                     ; 832                             | (uint8_t)TIM2_OCMode);
3261  0057 c65306        	ld	a,21254
3262  005a a48f          	and	a,#143
3263  005c 1a02          	or	a,(OFST+2,sp)
3264  005e c75306        	ld	21254,a
3266  0061 200e          	jra	L5331
3267  0063               L7331:
3268                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3270  0063 72115309      	bres	21257,#0
3271                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3271                     ; 841                             | (uint8_t)TIM2_OCMode);
3273  0067 c65307        	ld	a,21255
3274  006a a48f          	and	a,#143
3275  006c 1a02          	or	a,(OFST+2,sp)
3276  006e c75307        	ld	21255,a
3277  0071               L5331:
3278                     ; 843 }
3281  0071 85            	popw	x
3282  0072 87            	retf	
3283  0073               LC009:
3284  0073 89            	pushw	x
3285  0074 5f            	clrw	x
3286  0075 89            	pushw	x
3287  0076 ae0000        	ldw	x,#L702
3288  0079 8d000000      	callf	f_assert_failed
3290  007d 5b04          	addw	sp,#4
3291  007f 87            	retf	
3324                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3324                     ; 852 {
3325                     .text:	section	.text,new
3326  0000               f_TIM2_SetCounter:
3330                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3332  0000 9e            	ld	a,xh
3333  0001 c7530a        	ld	21258,a
3334                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3336  0004 9f            	ld	a,xl
3337  0005 c7530b        	ld	21259,a
3338                     ; 856 }
3341  0008 87            	retf	
3374                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3374                     ; 865 {
3375                     .text:	section	.text,new
3376  0000               f_TIM2_SetAutoreload:
3380                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3382  0000 9e            	ld	a,xh
3383  0001 c7530d        	ld	21261,a
3384                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3386  0004 9f            	ld	a,xl
3387  0005 c7530e        	ld	21262,a
3388                     ; 869 }
3391  0008 87            	retf	
3424                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3424                     ; 878 {
3425                     .text:	section	.text,new
3426  0000               f_TIM2_SetCompare1:
3430                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3432  0000 9e            	ld	a,xh
3433  0001 c7530f        	ld	21263,a
3434                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3436  0004 9f            	ld	a,xl
3437  0005 c75310        	ld	21264,a
3438                     ; 882 }
3441  0008 87            	retf	
3474                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3474                     ; 891 {
3475                     .text:	section	.text,new
3476  0000               f_TIM2_SetCompare2:
3480                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3482  0000 9e            	ld	a,xh
3483  0001 c75311        	ld	21265,a
3484                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3486  0004 9f            	ld	a,xl
3487  0005 c75312        	ld	21266,a
3488                     ; 895 }
3491  0008 87            	retf	
3524                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3524                     ; 904 {
3525                     .text:	section	.text,new
3526  0000               f_TIM2_SetCompare3:
3530                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3532  0000 9e            	ld	a,xh
3533  0001 c75313        	ld	21267,a
3534                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3536  0004 9f            	ld	a,xl
3537  0005 c75314        	ld	21268,a
3538                     ; 908 }
3541  0008 87            	retf	
3577                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3577                     ; 921 {
3578                     .text:	section	.text,new
3579  0000               f_TIM2_SetIC1Prescaler:
3581  0000 88            	push	a
3582       00000000      OFST:	set	0
3585                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3587  0001 4d            	tnz	a
3588  0002 271b          	jreq	L646
3589  0004 a104          	cp	a,#4
3590  0006 2717          	jreq	L646
3591  0008 a108          	cp	a,#8
3592  000a 2713          	jreq	L646
3593  000c a10c          	cp	a,#12
3594  000e 270f          	jreq	L646
3595  0010 ae039b        	ldw	x,#923
3596  0013 89            	pushw	x
3597  0014 5f            	clrw	x
3598  0015 89            	pushw	x
3599  0016 ae0000        	ldw	x,#L702
3600  0019 8d000000      	callf	f_assert_failed
3602  001d 5b04          	addw	sp,#4
3603  001f               L646:
3604                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3604                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3606  001f c65305        	ld	a,21253
3607  0022 a4f3          	and	a,#243
3608  0024 1a01          	or	a,(OFST+1,sp)
3609  0026 c75305        	ld	21253,a
3610                     ; 928 }
3613  0029 84            	pop	a
3614  002a 87            	retf	
3650                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3650                     ; 941 {
3651                     .text:	section	.text,new
3652  0000               f_TIM2_SetIC2Prescaler:
3654  0000 88            	push	a
3655       00000000      OFST:	set	0
3658                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3660  0001 4d            	tnz	a
3661  0002 271b          	jreq	L066
3662  0004 a104          	cp	a,#4
3663  0006 2717          	jreq	L066
3664  0008 a108          	cp	a,#8
3665  000a 2713          	jreq	L066
3666  000c a10c          	cp	a,#12
3667  000e 270f          	jreq	L066
3668  0010 ae03af        	ldw	x,#943
3669  0013 89            	pushw	x
3670  0014 5f            	clrw	x
3671  0015 89            	pushw	x
3672  0016 ae0000        	ldw	x,#L702
3673  0019 8d000000      	callf	f_assert_failed
3675  001d 5b04          	addw	sp,#4
3676  001f               L066:
3677                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3677                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3679  001f c65306        	ld	a,21254
3680  0022 a4f3          	and	a,#243
3681  0024 1a01          	or	a,(OFST+1,sp)
3682  0026 c75306        	ld	21254,a
3683                     ; 948 }
3686  0029 84            	pop	a
3687  002a 87            	retf	
3723                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3723                     ; 961 {
3724                     .text:	section	.text,new
3725  0000               f_TIM2_SetIC3Prescaler:
3727  0000 88            	push	a
3728       00000000      OFST:	set	0
3731                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3733  0001 4d            	tnz	a
3734  0002 271b          	jreq	L276
3735  0004 a104          	cp	a,#4
3736  0006 2717          	jreq	L276
3737  0008 a108          	cp	a,#8
3738  000a 2713          	jreq	L276
3739  000c a10c          	cp	a,#12
3740  000e 270f          	jreq	L276
3741  0010 ae03c4        	ldw	x,#964
3742  0013 89            	pushw	x
3743  0014 5f            	clrw	x
3744  0015 89            	pushw	x
3745  0016 ae0000        	ldw	x,#L702
3746  0019 8d000000      	callf	f_assert_failed
3748  001d 5b04          	addw	sp,#4
3749  001f               L276:
3750                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3750                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3752  001f c65307        	ld	a,21255
3753  0022 a4f3          	and	a,#243
3754  0024 1a01          	or	a,(OFST+1,sp)
3755  0026 c75307        	ld	21255,a
3756                     ; 968 }
3759  0029 84            	pop	a
3760  002a 87            	retf	
3811                     ; 975 uint16_t TIM2_GetCapture1(void)
3811                     ; 976 {
3812                     .text:	section	.text,new
3813  0000               f_TIM2_GetCapture1:
3815  0000 5204          	subw	sp,#4
3816       00000004      OFST:	set	4
3819                     ; 978   uint16_t tmpccr1 = 0;
3821                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3825                     ; 981   tmpccr1h = TIM2->CCR1H;
3827  0002 c6530f        	ld	a,21263
3828  0005 6b02          	ld	(OFST-2,sp),a
3830                     ; 982   tmpccr1l = TIM2->CCR1L;
3832  0007 c65310        	ld	a,21264
3833  000a 6b01          	ld	(OFST-3,sp),a
3835                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3837  000c 5f            	clrw	x
3838  000d 97            	ld	xl,a
3839  000e 1f03          	ldw	(OFST-1,sp),x
3841                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3843  0010 5f            	clrw	x
3844  0011 7b02          	ld	a,(OFST-2,sp)
3845  0013 97            	ld	xl,a
3846  0014 7b04          	ld	a,(OFST+0,sp)
3847  0016 01            	rrwa	x,a
3848  0017 1a03          	or	a,(OFST-1,sp)
3849  0019 01            	rrwa	x,a
3851                     ; 987   return (uint16_t)tmpccr1;
3855  001a 5b04          	addw	sp,#4
3856  001c 87            	retf	
3907                     ; 995 uint16_t TIM2_GetCapture2(void)
3907                     ; 996 {
3908                     .text:	section	.text,new
3909  0000               f_TIM2_GetCapture2:
3911  0000 5204          	subw	sp,#4
3912       00000004      OFST:	set	4
3915                     ; 998   uint16_t tmpccr2 = 0;
3917                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3921                     ; 1001   tmpccr2h = TIM2->CCR2H;
3923  0002 c65311        	ld	a,21265
3924  0005 6b02          	ld	(OFST-2,sp),a
3926                     ; 1002   tmpccr2l = TIM2->CCR2L;
3928  0007 c65312        	ld	a,21266
3929  000a 6b01          	ld	(OFST-3,sp),a
3931                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3933  000c 5f            	clrw	x
3934  000d 97            	ld	xl,a
3935  000e 1f03          	ldw	(OFST-1,sp),x
3937                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3939  0010 5f            	clrw	x
3940  0011 7b02          	ld	a,(OFST-2,sp)
3941  0013 97            	ld	xl,a
3942  0014 7b04          	ld	a,(OFST+0,sp)
3943  0016 01            	rrwa	x,a
3944  0017 1a03          	or	a,(OFST-1,sp)
3945  0019 01            	rrwa	x,a
3947                     ; 1007   return (uint16_t)tmpccr2;
3951  001a 5b04          	addw	sp,#4
3952  001c 87            	retf	
4003                     ; 1015 uint16_t TIM2_GetCapture3(void)
4003                     ; 1016 {
4004                     .text:	section	.text,new
4005  0000               f_TIM2_GetCapture3:
4007  0000 5204          	subw	sp,#4
4008       00000004      OFST:	set	4
4011                     ; 1018   uint16_t tmpccr3 = 0;
4013                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4017                     ; 1021   tmpccr3h = TIM2->CCR3H;
4019  0002 c65313        	ld	a,21267
4020  0005 6b02          	ld	(OFST-2,sp),a
4022                     ; 1022   tmpccr3l = TIM2->CCR3L;
4024  0007 c65314        	ld	a,21268
4025  000a 6b01          	ld	(OFST-3,sp),a
4027                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4029  000c 5f            	clrw	x
4030  000d 97            	ld	xl,a
4031  000e 1f03          	ldw	(OFST-1,sp),x
4033                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4035  0010 5f            	clrw	x
4036  0011 7b02          	ld	a,(OFST-2,sp)
4037  0013 97            	ld	xl,a
4038  0014 7b04          	ld	a,(OFST+0,sp)
4039  0016 01            	rrwa	x,a
4040  0017 1a03          	or	a,(OFST-1,sp)
4041  0019 01            	rrwa	x,a
4043                     ; 1027   return (uint16_t)tmpccr3;
4047  001a 5b04          	addw	sp,#4
4048  001c 87            	retf	
4081                     ; 1035 uint16_t TIM2_GetCounter(void)
4081                     ; 1036 {
4082                     .text:	section	.text,new
4083  0000               f_TIM2_GetCounter:
4085  0000 89            	pushw	x
4086       00000002      OFST:	set	2
4089                     ; 1037   uint16_t tmpcntr = 0;
4091                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4093  0001 c6530a        	ld	a,21258
4094  0004 97            	ld	xl,a
4095  0005 4f            	clr	a
4096  0006 02            	rlwa	x,a
4097  0007 1f01          	ldw	(OFST-1,sp),x
4099                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4101  0009 c6530b        	ld	a,21259
4102  000c 5f            	clrw	x
4103  000d 97            	ld	xl,a
4104  000e 01            	rrwa	x,a
4105  000f 1a02          	or	a,(OFST+0,sp)
4106  0011 01            	rrwa	x,a
4107  0012 1a01          	or	a,(OFST-1,sp)
4108  0014 01            	rrwa	x,a
4111  0015 5b02          	addw	sp,#2
4112  0017 87            	retf	
4135                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4135                     ; 1050 {
4136                     .text:	section	.text,new
4137  0000               f_TIM2_GetPrescaler:
4141                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4143  0000 c6530c        	ld	a,21260
4146  0003 87            	retf	
4285                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4285                     ; 1069 {
4286                     .text:	section	.text,new
4287  0000               f_TIM2_GetFlagStatus:
4289  0000 89            	pushw	x
4290  0001 89            	pushw	x
4291       00000002      OFST:	set	2
4294                     ; 1070   FlagStatus bitstatus = RESET;
4296                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4300                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4302  0002 a30001        	cpw	x,#1
4303  0005 272d          	jreq	L617
4304  0007 a30002        	cpw	x,#2
4305  000a 2728          	jreq	L617
4306  000c a30004        	cpw	x,#4
4307  000f 2723          	jreq	L617
4308  0011 a30008        	cpw	x,#8
4309  0014 271e          	jreq	L617
4310  0016 a30200        	cpw	x,#512
4311  0019 2719          	jreq	L617
4312  001b a30400        	cpw	x,#1024
4313  001e 2714          	jreq	L617
4314  0020 a30800        	cpw	x,#2048
4315  0023 270f          	jreq	L617
4316  0025 ae0432        	ldw	x,#1074
4317  0028 89            	pushw	x
4318  0029 5f            	clrw	x
4319  002a 89            	pushw	x
4320  002b ae0000        	ldw	x,#L702
4321  002e 8d000000      	callf	f_assert_failed
4323  0032 5b04          	addw	sp,#4
4324  0034               L617:
4325                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4327  0034 c65302        	ld	a,21250
4328  0037 1404          	and	a,(OFST+2,sp)
4329  0039 6b01          	ld	(OFST-1,sp),a
4331                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4333  003b 7b03          	ld	a,(OFST+1,sp)
4334  003d 6b02          	ld	(OFST+0,sp),a
4336                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4338  003f c45303        	and	a,21251
4339  0042 1a01          	or	a,(OFST-1,sp)
4340  0044 2702          	jreq	L7371
4341                     ; 1081     bitstatus = SET;
4343  0046 a601          	ld	a,#1
4346  0048               L7371:
4347                     ; 1085     bitstatus = RESET;
4350                     ; 1087   return (FlagStatus)bitstatus;
4354  0048 5b04          	addw	sp,#4
4355  004a 87            	retf	
4390                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4390                     ; 1104 {
4391                     .text:	section	.text,new
4392  0000               f_TIM2_ClearFlag:
4394  0000 89            	pushw	x
4395       00000000      OFST:	set	0
4398                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4400  0001 01            	rrwa	x,a
4401  0002 a4f0          	and	a,#240
4402  0004 01            	rrwa	x,a
4403  0005 a4f1          	and	a,#241
4404  0007 01            	rrwa	x,a
4405  0008 5d            	tnzw	x
4406  0009 2604          	jrne	L427
4407  000b 1e01          	ldw	x,(OFST+1,sp)
4408  000d 260f          	jrne	L627
4409  000f               L427:
4410  000f ae0452        	ldw	x,#1106
4411  0012 89            	pushw	x
4412  0013 5f            	clrw	x
4413  0014 89            	pushw	x
4414  0015 ae0000        	ldw	x,#L702
4415  0018 8d000000      	callf	f_assert_failed
4417  001c 5b04          	addw	sp,#4
4418  001e               L627:
4419                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4421  001e 7b02          	ld	a,(OFST+2,sp)
4422  0020 43            	cpl	a
4423  0021 c75302        	ld	21250,a
4424                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4426  0024 35ff5303      	mov	21251,#255
4427                     ; 1111 }
4430  0028 85            	popw	x
4431  0029 87            	retf	
4495                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4495                     ; 1124 {
4496                     .text:	section	.text,new
4497  0000               f_TIM2_GetITStatus:
4499  0000 88            	push	a
4500  0001 89            	pushw	x
4501       00000002      OFST:	set	2
4504                     ; 1125   ITStatus bitstatus = RESET;
4506                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4510                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4512  0002 a101          	cp	a,#1
4513  0004 271b          	jreq	L047
4514  0006 a102          	cp	a,#2
4515  0008 2717          	jreq	L047
4516  000a a104          	cp	a,#4
4517  000c 2713          	jreq	L047
4518  000e a108          	cp	a,#8
4519  0010 270f          	jreq	L047
4520  0012 ae0469        	ldw	x,#1129
4521  0015 89            	pushw	x
4522  0016 5f            	clrw	x
4523  0017 89            	pushw	x
4524  0018 ae0000        	ldw	x,#L702
4525  001b 8d000000      	callf	f_assert_failed
4527  001f 5b04          	addw	sp,#4
4528  0021               L047:
4529                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4531  0021 c65302        	ld	a,21250
4532  0024 1403          	and	a,(OFST+1,sp)
4533  0026 6b01          	ld	(OFST-1,sp),a
4535                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4537  0028 c65301        	ld	a,21249
4538  002b 1403          	and	a,(OFST+1,sp)
4539  002d 6b02          	ld	(OFST+0,sp),a
4541                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4543  002f 7b01          	ld	a,(OFST-1,sp)
4544  0031 2708          	jreq	L3102
4546  0033 7b02          	ld	a,(OFST+0,sp)
4547  0035 2704          	jreq	L3102
4548                     ; 1137     bitstatus = SET;
4550  0037 a601          	ld	a,#1
4553  0039 2001          	jra	L5102
4554  003b               L3102:
4555                     ; 1141     bitstatus = RESET;
4557  003b 4f            	clr	a
4559  003c               L5102:
4560                     ; 1143   return (ITStatus)(bitstatus);
4564  003c 5b03          	addw	sp,#3
4565  003e 87            	retf	
4601                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4601                     ; 1157 {
4602                     .text:	section	.text,new
4603  0000               f_TIM2_ClearITPendingBit:
4605  0000 88            	push	a
4606       00000000      OFST:	set	0
4609                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4611  0001 4d            	tnz	a
4612  0002 2704          	jreq	L647
4613  0004 a110          	cp	a,#16
4614  0006 250f          	jrult	L057
4615  0008               L647:
4616  0008 ae0487        	ldw	x,#1159
4617  000b 89            	pushw	x
4618  000c 5f            	clrw	x
4619  000d 89            	pushw	x
4620  000e ae0000        	ldw	x,#L702
4621  0011 8d000000      	callf	f_assert_failed
4623  0015 5b04          	addw	sp,#4
4624  0017               L057:
4625                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4627  0017 7b01          	ld	a,(OFST+1,sp)
4628  0019 43            	cpl	a
4629  001a c75302        	ld	21250,a
4630                     ; 1163 }
4633  001d 84            	pop	a
4634  001e 87            	retf	
4685                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4685                     ; 1182                        uint8_t TIM2_ICSelection,
4685                     ; 1183                        uint8_t TIM2_ICFilter)
4685                     ; 1184 {
4686                     .text:	section	.text,new
4687  0000               L3f_TI1_Config:
4689  0000 89            	pushw	x
4690  0001 88            	push	a
4691       00000001      OFST:	set	1
4694                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4696  0002 72115308      	bres	21256,#0
4697                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4697                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4699  0006 7b07          	ld	a,(OFST+6,sp)
4700  0008 97            	ld	xl,a
4701  0009 a610          	ld	a,#16
4702  000b 42            	mul	x,a
4703  000c 9f            	ld	a,xl
4704  000d 1a03          	or	a,(OFST+2,sp)
4705  000f 6b01          	ld	(OFST+0,sp),a
4707  0011 c65305        	ld	a,21253
4708  0014 a40c          	and	a,#12
4709  0016 1a01          	or	a,(OFST+0,sp)
4710  0018 c75305        	ld	21253,a
4711                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4713  001b 7b02          	ld	a,(OFST+1,sp)
4714  001d 2706          	jreq	L3602
4715                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4717  001f 72125308      	bset	21256,#1
4719  0023 2004          	jra	L5602
4720  0025               L3602:
4721                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4723  0025 72135308      	bres	21256,#1
4724  0029               L5602:
4725                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4727  0029 72105308      	bset	21256,#0
4728                     ; 1203 }
4731  002d 5b03          	addw	sp,#3
4732  002f 87            	retf	
4783                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4783                     ; 1222                        uint8_t TIM2_ICSelection,
4783                     ; 1223                        uint8_t TIM2_ICFilter)
4783                     ; 1224 {
4784                     .text:	section	.text,new
4785  0000               L5f_TI2_Config:
4787  0000 89            	pushw	x
4788  0001 88            	push	a
4789       00000001      OFST:	set	1
4792                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4794  0002 72195308      	bres	21256,#4
4795                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4795                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4797  0006 7b07          	ld	a,(OFST+6,sp)
4798  0008 97            	ld	xl,a
4799  0009 a610          	ld	a,#16
4800  000b 42            	mul	x,a
4801  000c 9f            	ld	a,xl
4802  000d 1a03          	or	a,(OFST+2,sp)
4803  000f 6b01          	ld	(OFST+0,sp),a
4805  0011 c65306        	ld	a,21254
4806  0014 a40c          	and	a,#12
4807  0016 1a01          	or	a,(OFST+0,sp)
4808  0018 c75306        	ld	21254,a
4809                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4811  001b 7b02          	ld	a,(OFST+1,sp)
4812  001d 2706          	jreq	L5112
4813                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4815  001f 721a5308      	bset	21256,#5
4817  0023 2004          	jra	L7112
4818  0025               L5112:
4819                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4821  0025 721b5308      	bres	21256,#5
4822  0029               L7112:
4823                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4825  0029 72185308      	bset	21256,#4
4826                     ; 1245 }
4829  002d 5b03          	addw	sp,#3
4830  002f 87            	retf	
4881                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4881                     ; 1262                        uint8_t TIM2_ICFilter)
4881                     ; 1263 {
4882                     .text:	section	.text,new
4883  0000               L7f_TI3_Config:
4885  0000 89            	pushw	x
4886  0001 88            	push	a
4887       00000001      OFST:	set	1
4890                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4892  0002 72115309      	bres	21257,#0
4893                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4893                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4895  0006 7b07          	ld	a,(OFST+6,sp)
4896  0008 97            	ld	xl,a
4897  0009 a610          	ld	a,#16
4898  000b 42            	mul	x,a
4899  000c 9f            	ld	a,xl
4900  000d 1a03          	or	a,(OFST+2,sp)
4901  000f 6b01          	ld	(OFST+0,sp),a
4903  0011 c65307        	ld	a,21255
4904  0014 a40c          	and	a,#12
4905  0016 1a01          	or	a,(OFST+0,sp)
4906  0018 c75307        	ld	21255,a
4907                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4909  001b 7b02          	ld	a,(OFST+1,sp)
4910  001d 2706          	jreq	L7412
4911                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4913  001f 72125309      	bset	21257,#1
4915  0023 2004          	jra	L1512
4916  0025               L7412:
4917                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4919  0025 72135309      	bres	21257,#1
4920  0029               L1512:
4921                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4923  0029 72105309      	bset	21257,#0
4924                     ; 1283 }
4927  002d 5b03          	addw	sp,#3
4928  002f 87            	retf	
4940                     	xdef	f_TIM2_ClearITPendingBit
4941                     	xdef	f_TIM2_GetITStatus
4942                     	xdef	f_TIM2_ClearFlag
4943                     	xdef	f_TIM2_GetFlagStatus
4944                     	xdef	f_TIM2_GetPrescaler
4945                     	xdef	f_TIM2_GetCounter
4946                     	xdef	f_TIM2_GetCapture3
4947                     	xdef	f_TIM2_GetCapture2
4948                     	xdef	f_TIM2_GetCapture1
4949                     	xdef	f_TIM2_SetIC3Prescaler
4950                     	xdef	f_TIM2_SetIC2Prescaler
4951                     	xdef	f_TIM2_SetIC1Prescaler
4952                     	xdef	f_TIM2_SetCompare3
4953                     	xdef	f_TIM2_SetCompare2
4954                     	xdef	f_TIM2_SetCompare1
4955                     	xdef	f_TIM2_SetAutoreload
4956                     	xdef	f_TIM2_SetCounter
4957                     	xdef	f_TIM2_SelectOCxM
4958                     	xdef	f_TIM2_CCxCmd
4959                     	xdef	f_TIM2_OC3PolarityConfig
4960                     	xdef	f_TIM2_OC2PolarityConfig
4961                     	xdef	f_TIM2_OC1PolarityConfig
4962                     	xdef	f_TIM2_GenerateEvent
4963                     	xdef	f_TIM2_OC3PreloadConfig
4964                     	xdef	f_TIM2_OC2PreloadConfig
4965                     	xdef	f_TIM2_OC1PreloadConfig
4966                     	xdef	f_TIM2_ARRPreloadConfig
4967                     	xdef	f_TIM2_ForcedOC3Config
4968                     	xdef	f_TIM2_ForcedOC2Config
4969                     	xdef	f_TIM2_ForcedOC1Config
4970                     	xdef	f_TIM2_PrescalerConfig
4971                     	xdef	f_TIM2_SelectOnePulseMode
4972                     	xdef	f_TIM2_UpdateRequestConfig
4973                     	xdef	f_TIM2_UpdateDisableConfig
4974                     	xdef	f_TIM2_ITConfig
4975                     	xdef	f_TIM2_Cmd
4976                     	xdef	f_TIM2_PWMIConfig
4977                     	xdef	f_TIM2_ICInit
4978                     	xdef	f_TIM2_OC3Init
4979                     	xdef	f_TIM2_OC2Init
4980                     	xdef	f_TIM2_OC1Init
4981                     	xdef	f_TIM2_TimeBaseInit
4982                     	xdef	f_TIM2_DeInit
4983                     	xref	f_assert_failed
4984                     .const:	section	.text
4985  0000               L702:
4986  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4987  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4988  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4989  0036 5f74696d322e  	dc.b	"_tim2.c",0
5009                     	end
