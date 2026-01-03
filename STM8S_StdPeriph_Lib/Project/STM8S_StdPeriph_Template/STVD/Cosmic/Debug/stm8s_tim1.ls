   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 58 void TIM1_DeInit(void)
  49                     ; 59 {
  50                     .text:	section	.text,new
  51  0000               f_TIM1_DeInit:
  55                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  57  0000 725f5250      	clr	21072
  58                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  60  0004 725f5251      	clr	21073
  61                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  63  0008 725f5252      	clr	21074
  64                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  66  000c 725f5253      	clr	21075
  67                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  69  0010 725f5254      	clr	21076
  70                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  72  0014 725f5256      	clr	21078
  73                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  75  0018 725f525c      	clr	21084
  76                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  78  001c 725f525d      	clr	21085
  79                     ; 70   TIM1->CCMR1 = 0x01;
  81  0020 35015258      	mov	21080,#1
  82                     ; 71   TIM1->CCMR2 = 0x01;
  84  0024 35015259      	mov	21081,#1
  85                     ; 72   TIM1->CCMR3 = 0x01;
  87  0028 3501525a      	mov	21082,#1
  88                     ; 73   TIM1->CCMR4 = 0x01;
  90  002c 3501525b      	mov	21083,#1
  91                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  93  0030 725f525c      	clr	21084
  94                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  96  0034 725f525d      	clr	21085
  97                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  99  0038 725f5258      	clr	21080
 100                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 102  003c 725f5259      	clr	21081
 103                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 105  0040 725f525a      	clr	21082
 106                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 108  0044 725f525b      	clr	21083
 109                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 111  0048 725f525e      	clr	21086
 112                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 114  004c 725f525f      	clr	21087
 115                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 117  0050 725f5260      	clr	21088
 118                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 120  0054 725f5261      	clr	21089
 121                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 123  0058 35ff5262      	mov	21090,#255
 124                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 126  005c 35ff5263      	mov	21091,#255
 127                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 129  0060 725f5265      	clr	21093
 130                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 132  0064 725f5266      	clr	21094
 133                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 135  0068 725f5267      	clr	21095
 136                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 138  006c 725f5268      	clr	21096
 139                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 141  0070 725f5269      	clr	21097
 142                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 144  0074 725f526a      	clr	21098
 145                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 147  0078 725f526b      	clr	21099
 148                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 150  007c 725f526c      	clr	21100
 151                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 153  0080 725f526f      	clr	21103
 154                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 156  0084 35015257      	mov	21079,#1
 157                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 159  0088 725f526e      	clr	21102
 160                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 162  008c 725f526d      	clr	21101
 163                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 165  0090 725f5264      	clr	21092
 166                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 168  0094 725f5255      	clr	21077
 169                     ; 101 }
 172  0098 87            	retf	
 281                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 281                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 281                     ; 113                        uint16_t TIM1_Period,
 281                     ; 114                        uint8_t TIM1_RepetitionCounter)
 281                     ; 115 {
 282                     .text:	section	.text,new
 283  0000               f_TIM1_TimeBaseInit:
 285  0000 89            	pushw	x
 286       00000000      OFST:	set	0
 289                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 291  0001 7b06          	ld	a,(OFST+6,sp)
 292  0003 271f          	jreq	L41
 293  0005 a110          	cp	a,#16
 294  0007 271b          	jreq	L41
 295  0009 a120          	cp	a,#32
 296  000b 2717          	jreq	L41
 297  000d a140          	cp	a,#64
 298  000f 2713          	jreq	L41
 299  0011 a160          	cp	a,#96
 300  0013 270f          	jreq	L41
 301  0015 ae0075        	ldw	x,#117
 302  0018 89            	pushw	x
 303  0019 5f            	clrw	x
 304  001a 89            	pushw	x
 305  001b ae0000        	ldw	x,#L101
 306  001e 8d000000      	callf	f_assert_failed
 308  0022 5b04          	addw	sp,#4
 309  0024               L41:
 310                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 312  0024 7b07          	ld	a,(OFST+7,sp)
 313  0026 c75262        	ld	21090,a
 314                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 316  0029 7b08          	ld	a,(OFST+8,sp)
 317  002b c75263        	ld	21091,a
 318                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 320  002e 7b01          	ld	a,(OFST+1,sp)
 321  0030 c75260        	ld	21088,a
 322                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 324  0033 7b02          	ld	a,(OFST+2,sp)
 325  0035 c75261        	ld	21089,a
 326                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 326                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 328  0038 c65250        	ld	a,21072
 329  003b a48f          	and	a,#143
 330  003d 1a06          	or	a,(OFST+6,sp)
 331  003f c75250        	ld	21072,a
 332                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 334  0042 7b09          	ld	a,(OFST+9,sp)
 335  0044 c75264        	ld	21092,a
 336                     ; 133 }
 339  0047 85            	popw	x
 340  0048 87            	retf	
 625                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 625                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 625                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 625                     ; 157                   uint16_t TIM1_Pulse,
 625                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 625                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 625                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 625                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 625                     ; 162 {
 626                     .text:	section	.text,new
 627  0000               f_TIM1_OC1Init:
 629  0000 89            	pushw	x
 630  0001 5203          	subw	sp,#3
 631       00000003      OFST:	set	3
 634                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 636  0003 9e            	ld	a,xh
 637  0004 4d            	tnz	a
 638  0005 2720          	jreq	L62
 639  0007 9e            	ld	a,xh
 640  0008 a110          	cp	a,#16
 641  000a 271b          	jreq	L62
 642  000c 9e            	ld	a,xh
 643  000d a120          	cp	a,#32
 644  000f 2716          	jreq	L62
 645  0011 9e            	ld	a,xh
 646  0012 a130          	cp	a,#48
 647  0014 2711          	jreq	L62
 648  0016 9e            	ld	a,xh
 649  0017 a160          	cp	a,#96
 650  0019 270c          	jreq	L62
 651  001b 9e            	ld	a,xh
 652  001c a170          	cp	a,#112
 653  001e 2707          	jreq	L62
 654  0020 ae00a4        	ldw	x,#164
 655  0023 8dde00de      	callf	LC001
 656  0027               L62:
 657                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 659  0027 7b05          	ld	a,(OFST+2,sp)
 660  0029 270b          	jreq	L63
 661  002b a111          	cp	a,#17
 662  002d 2707          	jreq	L63
 663  002f ae00a5        	ldw	x,#165
 664  0032 8dde00de      	callf	LC001
 665  0036               L63:
 666                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 668  0036 7b09          	ld	a,(OFST+6,sp)
 669  0038 270b          	jreq	L64
 670  003a a144          	cp	a,#68
 671  003c 2707          	jreq	L64
 672  003e ae00a6        	ldw	x,#166
 673  0041 8dde00de      	callf	LC001
 674  0045               L64:
 675                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 677  0045 7b0c          	ld	a,(OFST+9,sp)
 678  0047 270b          	jreq	L65
 679  0049 a122          	cp	a,#34
 680  004b 2707          	jreq	L65
 681  004d ae00a7        	ldw	x,#167
 682  0050 8dde00de      	callf	LC001
 683  0054               L65:
 684                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 686  0054 7b0d          	ld	a,(OFST+10,sp)
 687  0056 270b          	jreq	L66
 688  0058 a188          	cp	a,#136
 689  005a 2707          	jreq	L66
 690  005c ae00a8        	ldw	x,#168
 691  005f 8dde00de      	callf	LC001
 692  0063               L66:
 693                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 695  0063 7b0e          	ld	a,(OFST+11,sp)
 696  0065 a155          	cp	a,#85
 697  0067 270a          	jreq	L67
 698  0069 4d            	tnz	a
 699  006a 2707          	jreq	L67
 700  006c ae00a9        	ldw	x,#169
 701  006f 8dde00de      	callf	LC001
 702  0073               L67:
 703                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 705  0073 7b0f          	ld	a,(OFST+12,sp)
 706  0075 a12a          	cp	a,#42
 707  0077 270a          	jreq	L601
 708  0079 4d            	tnz	a
 709  007a 2707          	jreq	L601
 710  007c ae00aa        	ldw	x,#170
 711  007f 8dde00de      	callf	LC001
 712  0083               L601:
 713                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 713                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 715  0083 c6525c        	ld	a,21084
 716  0086 a4f0          	and	a,#240
 717  0088 c7525c        	ld	21084,a
 718                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 718                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 718                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 718                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 720  008b 7b0d          	ld	a,(OFST+10,sp)
 721  008d a408          	and	a,#8
 722  008f 6b03          	ld	(OFST+0,sp),a
 724  0091 7b0c          	ld	a,(OFST+9,sp)
 725  0093 a402          	and	a,#2
 726  0095 1a03          	or	a,(OFST+0,sp)
 727  0097 6b02          	ld	(OFST-1,sp),a
 729  0099 7b09          	ld	a,(OFST+6,sp)
 730  009b a404          	and	a,#4
 731  009d 6b01          	ld	(OFST-2,sp),a
 733  009f 7b05          	ld	a,(OFST+2,sp)
 734  00a1 a401          	and	a,#1
 735  00a3 1a01          	or	a,(OFST-2,sp)
 736  00a5 1a02          	or	a,(OFST-1,sp)
 737  00a7 ca525c        	or	a,21084
 738  00aa c7525c        	ld	21084,a
 739                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 739                     ; 185                           (uint8_t)TIM1_OCMode);
 741  00ad c65258        	ld	a,21080
 742  00b0 a48f          	and	a,#143
 743  00b2 1a04          	or	a,(OFST+1,sp)
 744  00b4 c75258        	ld	21080,a
 745                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 747  00b7 c6526f        	ld	a,21103
 748  00ba a4fc          	and	a,#252
 749  00bc c7526f        	ld	21103,a
 750                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 750                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 752  00bf 7b0f          	ld	a,(OFST+12,sp)
 753  00c1 a402          	and	a,#2
 754  00c3 6b03          	ld	(OFST+0,sp),a
 756  00c5 7b0e          	ld	a,(OFST+11,sp)
 757  00c7 a401          	and	a,#1
 758  00c9 1a03          	or	a,(OFST+0,sp)
 759  00cb ca526f        	or	a,21103
 760  00ce c7526f        	ld	21103,a
 761                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 763  00d1 7b0a          	ld	a,(OFST+7,sp)
 764  00d3 c75265        	ld	21093,a
 765                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 767  00d6 7b0b          	ld	a,(OFST+8,sp)
 768  00d8 c75266        	ld	21094,a
 769                     ; 196 }
 772  00db 5b05          	addw	sp,#5
 773  00dd 87            	retf	
 774  00de               LC001:
 775  00de 89            	pushw	x
 776  00df 5f            	clrw	x
 777  00e0 89            	pushw	x
 778  00e1 ae0000        	ldw	x,#L101
 779  00e4 8d000000      	callf	f_assert_failed
 781  00e8 5b04          	addw	sp,#4
 782  00ea 87            	retf	
 886                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 886                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 886                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 886                     ; 220                   uint16_t TIM1_Pulse,
 886                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 886                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 886                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 886                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 886                     ; 225 {
 887                     .text:	section	.text,new
 888  0000               f_TIM1_OC2Init:
 890  0000 89            	pushw	x
 891  0001 5203          	subw	sp,#3
 892       00000003      OFST:	set	3
 895                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 897  0003 9e            	ld	a,xh
 898  0004 4d            	tnz	a
 899  0005 2720          	jreq	L021
 900  0007 9e            	ld	a,xh
 901  0008 a110          	cp	a,#16
 902  000a 271b          	jreq	L021
 903  000c 9e            	ld	a,xh
 904  000d a120          	cp	a,#32
 905  000f 2716          	jreq	L021
 906  0011 9e            	ld	a,xh
 907  0012 a130          	cp	a,#48
 908  0014 2711          	jreq	L021
 909  0016 9e            	ld	a,xh
 910  0017 a160          	cp	a,#96
 911  0019 270c          	jreq	L021
 912  001b 9e            	ld	a,xh
 913  001c a170          	cp	a,#112
 914  001e 2707          	jreq	L021
 915  0020 ae00e3        	ldw	x,#227
 916  0023 8dde00de      	callf	LC002
 917  0027               L021:
 918                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 920  0027 7b05          	ld	a,(OFST+2,sp)
 921  0029 270b          	jreq	L031
 922  002b a111          	cp	a,#17
 923  002d 2707          	jreq	L031
 924  002f ae00e4        	ldw	x,#228
 925  0032 8dde00de      	callf	LC002
 926  0036               L031:
 927                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 929  0036 7b09          	ld	a,(OFST+6,sp)
 930  0038 270b          	jreq	L041
 931  003a a144          	cp	a,#68
 932  003c 2707          	jreq	L041
 933  003e ae00e5        	ldw	x,#229
 934  0041 8dde00de      	callf	LC002
 935  0045               L041:
 936                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 938  0045 7b0c          	ld	a,(OFST+9,sp)
 939  0047 270b          	jreq	L051
 940  0049 a122          	cp	a,#34
 941  004b 2707          	jreq	L051
 942  004d ae00e6        	ldw	x,#230
 943  0050 8dde00de      	callf	LC002
 944  0054               L051:
 945                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 947  0054 7b0d          	ld	a,(OFST+10,sp)
 948  0056 270b          	jreq	L061
 949  0058 a188          	cp	a,#136
 950  005a 2707          	jreq	L061
 951  005c ae00e7        	ldw	x,#231
 952  005f 8dde00de      	callf	LC002
 953  0063               L061:
 954                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 956  0063 7b0e          	ld	a,(OFST+11,sp)
 957  0065 a155          	cp	a,#85
 958  0067 270a          	jreq	L071
 959  0069 4d            	tnz	a
 960  006a 2707          	jreq	L071
 961  006c ae00e8        	ldw	x,#232
 962  006f 8dde00de      	callf	LC002
 963  0073               L071:
 964                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 966  0073 7b0f          	ld	a,(OFST+12,sp)
 967  0075 a12a          	cp	a,#42
 968  0077 270a          	jreq	L002
 969  0079 4d            	tnz	a
 970  007a 2707          	jreq	L002
 971  007c ae00e9        	ldw	x,#233
 972  007f 8dde00de      	callf	LC002
 973  0083               L002:
 974                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 974                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 976  0083 c6525c        	ld	a,21084
 977  0086 a40f          	and	a,#15
 978  0088 c7525c        	ld	21084,a
 979                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 979                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 979                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 979                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 981  008b 7b0d          	ld	a,(OFST+10,sp)
 982  008d a480          	and	a,#128
 983  008f 6b03          	ld	(OFST+0,sp),a
 985  0091 7b0c          	ld	a,(OFST+9,sp)
 986  0093 a420          	and	a,#32
 987  0095 1a03          	or	a,(OFST+0,sp)
 988  0097 6b02          	ld	(OFST-1,sp),a
 990  0099 7b09          	ld	a,(OFST+6,sp)
 991  009b a440          	and	a,#64
 992  009d 6b01          	ld	(OFST-2,sp),a
 994  009f 7b05          	ld	a,(OFST+2,sp)
 995  00a1 a410          	and	a,#16
 996  00a3 1a01          	or	a,(OFST-2,sp)
 997  00a5 1a02          	or	a,(OFST-1,sp)
 998  00a7 ca525c        	or	a,21084
 999  00aa c7525c        	ld	21084,a
1000                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1000                     ; 249                           (uint8_t)TIM1_OCMode);
1002  00ad c65259        	ld	a,21081
1003  00b0 a48f          	and	a,#143
1004  00b2 1a04          	or	a,(OFST+1,sp)
1005  00b4 c75259        	ld	21081,a
1006                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1008  00b7 c6526f        	ld	a,21103
1009  00ba a4f3          	and	a,#243
1010  00bc c7526f        	ld	21103,a
1011                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1011                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1013  00bf 7b0f          	ld	a,(OFST+12,sp)
1014  00c1 a408          	and	a,#8
1015  00c3 6b03          	ld	(OFST+0,sp),a
1017  00c5 7b0e          	ld	a,(OFST+11,sp)
1018  00c7 a404          	and	a,#4
1019  00c9 1a03          	or	a,(OFST+0,sp)
1020  00cb ca526f        	or	a,21103
1021  00ce c7526f        	ld	21103,a
1022                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1024  00d1 7b0a          	ld	a,(OFST+7,sp)
1025  00d3 c75267        	ld	21095,a
1026                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1028  00d6 7b0b          	ld	a,(OFST+8,sp)
1029  00d8 c75268        	ld	21096,a
1030                     ; 260 }
1033  00db 5b05          	addw	sp,#5
1034  00dd 87            	retf	
1035  00de               LC002:
1036  00de 89            	pushw	x
1037  00df 5f            	clrw	x
1038  00e0 89            	pushw	x
1039  00e1 ae0000        	ldw	x,#L101
1040  00e4 8d000000      	callf	f_assert_failed
1042  00e8 5b04          	addw	sp,#4
1043  00ea 87            	retf	
1147                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1147                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1147                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1147                     ; 284                   uint16_t TIM1_Pulse,
1147                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1147                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1147                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1147                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1147                     ; 289 {
1148                     .text:	section	.text,new
1149  0000               f_TIM1_OC3Init:
1151  0000 89            	pushw	x
1152  0001 5203          	subw	sp,#3
1153       00000003      OFST:	set	3
1156                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1158  0003 9e            	ld	a,xh
1159  0004 4d            	tnz	a
1160  0005 2720          	jreq	L212
1161  0007 9e            	ld	a,xh
1162  0008 a110          	cp	a,#16
1163  000a 271b          	jreq	L212
1164  000c 9e            	ld	a,xh
1165  000d a120          	cp	a,#32
1166  000f 2716          	jreq	L212
1167  0011 9e            	ld	a,xh
1168  0012 a130          	cp	a,#48
1169  0014 2711          	jreq	L212
1170  0016 9e            	ld	a,xh
1171  0017 a160          	cp	a,#96
1172  0019 270c          	jreq	L212
1173  001b 9e            	ld	a,xh
1174  001c a170          	cp	a,#112
1175  001e 2707          	jreq	L212
1176  0020 ae0123        	ldw	x,#291
1177  0023 8dde00de      	callf	LC003
1178  0027               L212:
1179                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1181  0027 7b05          	ld	a,(OFST+2,sp)
1182  0029 270b          	jreq	L222
1183  002b a111          	cp	a,#17
1184  002d 2707          	jreq	L222
1185  002f ae0124        	ldw	x,#292
1186  0032 8dde00de      	callf	LC003
1187  0036               L222:
1188                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1190  0036 7b09          	ld	a,(OFST+6,sp)
1191  0038 270b          	jreq	L232
1192  003a a144          	cp	a,#68
1193  003c 2707          	jreq	L232
1194  003e ae0125        	ldw	x,#293
1195  0041 8dde00de      	callf	LC003
1196  0045               L232:
1197                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1199  0045 7b0c          	ld	a,(OFST+9,sp)
1200  0047 270b          	jreq	L242
1201  0049 a122          	cp	a,#34
1202  004b 2707          	jreq	L242
1203  004d ae0126        	ldw	x,#294
1204  0050 8dde00de      	callf	LC003
1205  0054               L242:
1206                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1208  0054 7b0d          	ld	a,(OFST+10,sp)
1209  0056 270b          	jreq	L252
1210  0058 a188          	cp	a,#136
1211  005a 2707          	jreq	L252
1212  005c ae0127        	ldw	x,#295
1213  005f 8dde00de      	callf	LC003
1214  0063               L252:
1215                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1217  0063 7b0e          	ld	a,(OFST+11,sp)
1218  0065 a155          	cp	a,#85
1219  0067 270a          	jreq	L262
1220  0069 4d            	tnz	a
1221  006a 2707          	jreq	L262
1222  006c ae0128        	ldw	x,#296
1223  006f 8dde00de      	callf	LC003
1224  0073               L262:
1225                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1227  0073 7b0f          	ld	a,(OFST+12,sp)
1228  0075 a12a          	cp	a,#42
1229  0077 270a          	jreq	L272
1230  0079 4d            	tnz	a
1231  007a 2707          	jreq	L272
1232  007c ae0129        	ldw	x,#297
1233  007f 8dde00de      	callf	LC003
1234  0083               L272:
1235                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1235                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1237  0083 c6525d        	ld	a,21085
1238  0086 a4f0          	and	a,#240
1239  0088 c7525d        	ld	21085,a
1240                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1240                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1240                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1240                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1242  008b 7b0d          	ld	a,(OFST+10,sp)
1243  008d a408          	and	a,#8
1244  008f 6b03          	ld	(OFST+0,sp),a
1246  0091 7b0c          	ld	a,(OFST+9,sp)
1247  0093 a402          	and	a,#2
1248  0095 1a03          	or	a,(OFST+0,sp)
1249  0097 6b02          	ld	(OFST-1,sp),a
1251  0099 7b09          	ld	a,(OFST+6,sp)
1252  009b a404          	and	a,#4
1253  009d 6b01          	ld	(OFST-2,sp),a
1255  009f 7b05          	ld	a,(OFST+2,sp)
1256  00a1 a401          	and	a,#1
1257  00a3 1a01          	or	a,(OFST-2,sp)
1258  00a5 1a02          	or	a,(OFST-1,sp)
1259  00a7 ca525d        	or	a,21085
1260  00aa c7525d        	ld	21085,a
1261                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1261                     ; 312                           (uint8_t)TIM1_OCMode);
1263  00ad c6525a        	ld	a,21082
1264  00b0 a48f          	and	a,#143
1265  00b2 1a04          	or	a,(OFST+1,sp)
1266  00b4 c7525a        	ld	21082,a
1267                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1269  00b7 c6526f        	ld	a,21103
1270  00ba a4cf          	and	a,#207
1271  00bc c7526f        	ld	21103,a
1272                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1272                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1274  00bf 7b0f          	ld	a,(OFST+12,sp)
1275  00c1 a420          	and	a,#32
1276  00c3 6b03          	ld	(OFST+0,sp),a
1278  00c5 7b0e          	ld	a,(OFST+11,sp)
1279  00c7 a410          	and	a,#16
1280  00c9 1a03          	or	a,(OFST+0,sp)
1281  00cb ca526f        	or	a,21103
1282  00ce c7526f        	ld	21103,a
1283                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1285  00d1 7b0a          	ld	a,(OFST+7,sp)
1286  00d3 c75269        	ld	21097,a
1287                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1289  00d6 7b0b          	ld	a,(OFST+8,sp)
1290  00d8 c7526a        	ld	21098,a
1291                     ; 323 }
1294  00db 5b05          	addw	sp,#5
1295  00dd 87            	retf	
1296  00de               LC003:
1297  00de 89            	pushw	x
1298  00df 5f            	clrw	x
1299  00e0 89            	pushw	x
1300  00e1 ae0000        	ldw	x,#L101
1301  00e4 8d000000      	callf	f_assert_failed
1303  00e8 5b04          	addw	sp,#4
1304  00ea 87            	retf	
1378                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1378                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1378                     ; 340                   uint16_t TIM1_Pulse,
1378                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1378                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1378                     ; 343 {
1379                     .text:	section	.text,new
1380  0000               f_TIM1_OC4Init:
1382  0000 89            	pushw	x
1383  0001 88            	push	a
1384       00000001      OFST:	set	1
1387                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1389  0002 9e            	ld	a,xh
1390  0003 4d            	tnz	a
1391  0004 2720          	jreq	L403
1392  0006 9e            	ld	a,xh
1393  0007 a110          	cp	a,#16
1394  0009 271b          	jreq	L403
1395  000b 9e            	ld	a,xh
1396  000c a120          	cp	a,#32
1397  000e 2716          	jreq	L403
1398  0010 9e            	ld	a,xh
1399  0011 a130          	cp	a,#48
1400  0013 2711          	jreq	L403
1401  0015 9e            	ld	a,xh
1402  0016 a160          	cp	a,#96
1403  0018 270c          	jreq	L403
1404  001a 9e            	ld	a,xh
1405  001b a170          	cp	a,#112
1406  001d 2707          	jreq	L403
1407  001f ae0159        	ldw	x,#345
1408  0022 8d970097      	callf	LC004
1409  0026               L403:
1410                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1412  0026 7b03          	ld	a,(OFST+2,sp)
1413  0028 270b          	jreq	L413
1414  002a a111          	cp	a,#17
1415  002c 2707          	jreq	L413
1416  002e ae015a        	ldw	x,#346
1417  0031 8d970097      	callf	LC004
1418  0035               L413:
1419                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1421  0035 7b09          	ld	a,(OFST+8,sp)
1422  0037 270b          	jreq	L423
1423  0039 a122          	cp	a,#34
1424  003b 2707          	jreq	L423
1425  003d ae015b        	ldw	x,#347
1426  0040 8d970097      	callf	LC004
1427  0044               L423:
1428                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1430  0044 7b0a          	ld	a,(OFST+9,sp)
1431  0046 a155          	cp	a,#85
1432  0048 270a          	jreq	L433
1433  004a 4d            	tnz	a
1434  004b 2707          	jreq	L433
1435  004d ae015c        	ldw	x,#348
1436  0050 8d970097      	callf	LC004
1437  0054               L433:
1438                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1440  0054 c6525d        	ld	a,21085
1441  0057 a4cf          	and	a,#207
1442  0059 c7525d        	ld	21085,a
1443                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1443                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1445  005c 7b09          	ld	a,(OFST+8,sp)
1446  005e a420          	and	a,#32
1447  0060 6b01          	ld	(OFST+0,sp),a
1449  0062 7b03          	ld	a,(OFST+2,sp)
1450  0064 a410          	and	a,#16
1451  0066 1a01          	or	a,(OFST+0,sp)
1452  0068 ca525d        	or	a,21085
1453  006b c7525d        	ld	21085,a
1454                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1454                     ; 358                           TIM1_OCMode);
1456  006e c6525b        	ld	a,21083
1457  0071 a48f          	and	a,#143
1458  0073 1a02          	or	a,(OFST+1,sp)
1459  0075 c7525b        	ld	21083,a
1460                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1462  0078 7b0a          	ld	a,(OFST+9,sp)
1463  007a 270a          	jreq	L734
1464                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1466  007c c6526f        	ld	a,21103
1467  007f aadf          	or	a,#223
1468  0081 c7526f        	ld	21103,a
1470  0084 2004          	jra	L144
1471  0086               L734:
1472                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1474  0086 721d526f      	bres	21103,#6
1475  008a               L144:
1476                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1478  008a 7b07          	ld	a,(OFST+6,sp)
1479  008c c7526b        	ld	21099,a
1480                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1482  008f 7b08          	ld	a,(OFST+7,sp)
1483  0091 c7526c        	ld	21100,a
1484                     ; 373 }
1487  0094 5b03          	addw	sp,#3
1488  0096 87            	retf	
1489  0097               LC004:
1490  0097 89            	pushw	x
1491  0098 5f            	clrw	x
1492  0099 89            	pushw	x
1493  009a ae0000        	ldw	x,#L101
1494  009d 8d000000      	callf	f_assert_failed
1496  00a1 5b04          	addw	sp,#4
1497  00a3 87            	retf	
1702                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1702                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1702                     ; 390                      uint8_t TIM1_DeadTime,
1702                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1702                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1702                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1702                     ; 394 {
1703                     .text:	section	.text,new
1704  0000               f_TIM1_BDTRConfig:
1706  0000 89            	pushw	x
1707  0001 88            	push	a
1708       00000001      OFST:	set	1
1711                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1713  0002 9e            	ld	a,xh
1714  0003 a104          	cp	a,#4
1715  0005 270b          	jreq	L643
1716  0007 9e            	ld	a,xh
1717  0008 4d            	tnz	a
1718  0009 2707          	jreq	L643
1719  000b ae018c        	ldw	x,#396
1720  000e 8d710071      	callf	LC005
1721  0012               L643:
1722                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1724  0012 7b03          	ld	a,(OFST+2,sp)
1725  0014 2713          	jreq	L653
1726  0016 a101          	cp	a,#1
1727  0018 270f          	jreq	L653
1728  001a a102          	cp	a,#2
1729  001c 270b          	jreq	L653
1730  001e a103          	cp	a,#3
1731  0020 2707          	jreq	L653
1732  0022 ae018d        	ldw	x,#397
1733  0025 8d710071      	callf	LC005
1734  0029               L653:
1735                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1737  0029 7b08          	ld	a,(OFST+7,sp)
1738  002b a110          	cp	a,#16
1739  002d 270a          	jreq	L663
1740  002f 4d            	tnz	a
1741  0030 2707          	jreq	L663
1742  0032 ae018e        	ldw	x,#398
1743  0035 8d710071      	callf	LC005
1744  0039               L663:
1745                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1747  0039 7b09          	ld	a,(OFST+8,sp)
1748  003b 270b          	jreq	L673
1749  003d a120          	cp	a,#32
1750  003f 2707          	jreq	L673
1751  0041 ae018f        	ldw	x,#399
1752  0044 8d710071      	callf	LC005
1753  0048               L673:
1754                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1756  0048 7b0a          	ld	a,(OFST+9,sp)
1757  004a a140          	cp	a,#64
1758  004c 270a          	jreq	L604
1759  004e 4d            	tnz	a
1760  004f 2707          	jreq	L604
1761  0051 ae0190        	ldw	x,#400
1762  0054 8d710071      	callf	LC005
1763  0058               L604:
1764                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1766  0058 7b07          	ld	a,(OFST+6,sp)
1767  005a c7526e        	ld	21102,a
1768                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1768                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1768                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1770  005d 7b08          	ld	a,(OFST+7,sp)
1771  005f 1a09          	or	a,(OFST+8,sp)
1772  0061 1a0a          	or	a,(OFST+9,sp)
1773  0063 6b01          	ld	(OFST+0,sp),a
1775  0065 7b02          	ld	a,(OFST+1,sp)
1776  0067 1a03          	or	a,(OFST+2,sp)
1777  0069 1a01          	or	a,(OFST+0,sp)
1778  006b c7526d        	ld	21101,a
1779                     ; 409 }
1782  006e 5b03          	addw	sp,#3
1783  0070 87            	retf	
1784  0071               LC005:
1785  0071 89            	pushw	x
1786  0072 5f            	clrw	x
1787  0073 89            	pushw	x
1788  0074 ae0000        	ldw	x,#L101
1789  0077 8d000000      	callf	f_assert_failed
1791  007b 5b04          	addw	sp,#4
1792  007d 87            	retf	
1994                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1994                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1994                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1994                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1994                     ; 427                  uint8_t TIM1_ICFilter)
1994                     ; 428 {
1995                     .text:	section	.text,new
1996  0000               f_TIM1_ICInit:
1998  0000 89            	pushw	x
1999       00000000      OFST:	set	0
2002                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2004  0001 9e            	ld	a,xh
2005  0002 4d            	tnz	a
2006  0003 2715          	jreq	L024
2007  0005 9e            	ld	a,xh
2008  0006 4a            	dec	a
2009  0007 2711          	jreq	L024
2010  0009 9e            	ld	a,xh
2011  000a a102          	cp	a,#2
2012  000c 270c          	jreq	L024
2013  000e 9e            	ld	a,xh
2014  000f a103          	cp	a,#3
2015  0011 2707          	jreq	L024
2016  0013 ae01ae        	ldw	x,#430
2017  0016 8dc500c5      	callf	LC006
2018  001a               L024:
2019                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2021  001a 7b02          	ld	a,(OFST+2,sp)
2022  001c 270a          	jreq	L034
2023  001e 4a            	dec	a
2024  001f 2707          	jreq	L034
2025  0021 ae01af        	ldw	x,#431
2026  0024 8dc500c5      	callf	LC006
2027  0028               L034:
2028                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2030  0028 7b06          	ld	a,(OFST+6,sp)
2031  002a a101          	cp	a,#1
2032  002c 270f          	jreq	L044
2033  002e a102          	cp	a,#2
2034  0030 270b          	jreq	L044
2035  0032 a103          	cp	a,#3
2036  0034 2707          	jreq	L044
2037  0036 ae01b0        	ldw	x,#432
2038  0039 8dc500c5      	callf	LC006
2039  003d               L044:
2040                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2042  003d 7b07          	ld	a,(OFST+7,sp)
2043  003f 2713          	jreq	L054
2044  0041 a104          	cp	a,#4
2045  0043 270f          	jreq	L054
2046  0045 a108          	cp	a,#8
2047  0047 270b          	jreq	L054
2048  0049 a10c          	cp	a,#12
2049  004b 2707          	jreq	L054
2050  004d ae01b1        	ldw	x,#433
2051  0050 8dc500c5      	callf	LC006
2052  0054               L054:
2053                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2055  0054 7b08          	ld	a,(OFST+8,sp)
2056  0056 a110          	cp	a,#16
2057  0058 2507          	jrult	L654
2058  005a ae01b2        	ldw	x,#434
2059  005d 8dc500c5      	callf	LC006
2060  0061               L654:
2061                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2063  0061 7b01          	ld	a,(OFST+1,sp)
2064  0063 2616          	jrne	L176
2065                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2065                     ; 440                (uint8_t)TIM1_ICSelection,
2065                     ; 441                (uint8_t)TIM1_ICFilter);
2067  0065 7b08          	ld	a,(OFST+8,sp)
2068  0067 88            	push	a
2069  0068 7b07          	ld	a,(OFST+7,sp)
2070  006a 97            	ld	xl,a
2071  006b 7b03          	ld	a,(OFST+3,sp)
2072  006d 95            	ld	xh,a
2073  006e 8d000000      	callf	L3f_TI1_Config
2075  0072 84            	pop	a
2076                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2078  0073 7b07          	ld	a,(OFST+7,sp)
2079  0075 8d000000      	callf	f_TIM1_SetIC1Prescaler
2082  0079 2048          	jra	L376
2083  007b               L176:
2084                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2086  007b a101          	cp	a,#1
2087  007d 2616          	jrne	L576
2088                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2088                     ; 449                (uint8_t)TIM1_ICSelection,
2088                     ; 450                (uint8_t)TIM1_ICFilter);
2090  007f 7b08          	ld	a,(OFST+8,sp)
2091  0081 88            	push	a
2092  0082 7b07          	ld	a,(OFST+7,sp)
2093  0084 97            	ld	xl,a
2094  0085 7b03          	ld	a,(OFST+3,sp)
2095  0087 95            	ld	xh,a
2096  0088 8d000000      	callf	L5f_TI2_Config
2098  008c 84            	pop	a
2099                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2101  008d 7b07          	ld	a,(OFST+7,sp)
2102  008f 8d000000      	callf	f_TIM1_SetIC2Prescaler
2105  0093 202e          	jra	L376
2106  0095               L576:
2107                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2109  0095 a102          	cp	a,#2
2110  0097 2616          	jrne	L107
2111                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2111                     ; 458                (uint8_t)TIM1_ICSelection,
2111                     ; 459                (uint8_t)TIM1_ICFilter);
2113  0099 7b08          	ld	a,(OFST+8,sp)
2114  009b 88            	push	a
2115  009c 7b07          	ld	a,(OFST+7,sp)
2116  009e 97            	ld	xl,a
2117  009f 7b03          	ld	a,(OFST+3,sp)
2118  00a1 95            	ld	xh,a
2119  00a2 8d000000      	callf	L7f_TI3_Config
2121  00a6 84            	pop	a
2122                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2124  00a7 7b07          	ld	a,(OFST+7,sp)
2125  00a9 8d000000      	callf	f_TIM1_SetIC3Prescaler
2128  00ad 2014          	jra	L376
2129  00af               L107:
2130                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2130                     ; 467                (uint8_t)TIM1_ICSelection,
2130                     ; 468                (uint8_t)TIM1_ICFilter);
2132  00af 7b08          	ld	a,(OFST+8,sp)
2133  00b1 88            	push	a
2134  00b2 7b07          	ld	a,(OFST+7,sp)
2135  00b4 97            	ld	xl,a
2136  00b5 7b03          	ld	a,(OFST+3,sp)
2137  00b7 95            	ld	xh,a
2138  00b8 8d000000      	callf	L11f_TI4_Config
2140  00bc 84            	pop	a
2141                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2143  00bd 7b07          	ld	a,(OFST+7,sp)
2144  00bf 8d000000      	callf	f_TIM1_SetIC4Prescaler
2146  00c3               L376:
2147                     ; 472 }
2150  00c3 85            	popw	x
2151  00c4 87            	retf	
2152  00c5               LC006:
2153  00c5 89            	pushw	x
2154  00c6 5f            	clrw	x
2155  00c7 89            	pushw	x
2156  00c8 ae0000        	ldw	x,#L101
2157  00cb 8d000000      	callf	f_assert_failed
2159  00cf 5b04          	addw	sp,#4
2160  00d1 87            	retf	
2256                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2256                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2256                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2256                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2256                     ; 492                      uint8_t TIM1_ICFilter)
2256                     ; 493 {
2257                     .text:	section	.text,new
2258  0000               f_TIM1_PWMIConfig:
2260  0000 89            	pushw	x
2261  0001 89            	pushw	x
2262       00000002      OFST:	set	2
2265                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2267                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2269                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2271  0002 9e            	ld	a,xh
2272  0003 4d            	tnz	a
2273  0004 270b          	jreq	L015
2274  0006 9e            	ld	a,xh
2275  0007 4a            	dec	a
2276  0008 2707          	jreq	L015
2277  000a ae01f2        	ldw	x,#498
2278  000d 8dba00ba      	callf	LC007
2279  0011               L015:
2280                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2282  0011 7b04          	ld	a,(OFST+2,sp)
2283  0013 270a          	jreq	L025
2284  0015 4a            	dec	a
2285  0016 2707          	jreq	L025
2286  0018 ae01f3        	ldw	x,#499
2287  001b 8dba00ba      	callf	LC007
2288  001f               L025:
2289                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2291  001f 7b08          	ld	a,(OFST+6,sp)
2292  0021 a101          	cp	a,#1
2293  0023 270f          	jreq	L035
2294  0025 a102          	cp	a,#2
2295  0027 270b          	jreq	L035
2296  0029 a103          	cp	a,#3
2297  002b 2707          	jreq	L035
2298  002d ae01f4        	ldw	x,#500
2299  0030 8dba00ba      	callf	LC007
2300  0034               L035:
2301                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2303  0034 7b09          	ld	a,(OFST+7,sp)
2304  0036 2713          	jreq	L045
2305  0038 a104          	cp	a,#4
2306  003a 270f          	jreq	L045
2307  003c a108          	cp	a,#8
2308  003e 270b          	jreq	L045
2309  0040 a10c          	cp	a,#12
2310  0042 2707          	jreq	L045
2311  0044 ae01f5        	ldw	x,#501
2312  0047 8dba00ba      	callf	LC007
2313  004b               L045:
2314                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2316  004b 7b04          	ld	a,(OFST+2,sp)
2317  004d 4a            	dec	a
2318  004e 2702          	jreq	L357
2319                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2321  0050 a601          	ld	a,#1
2323  0052               L357:
2324                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2326  0052 6b01          	ld	(OFST-1,sp),a
2328                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2330  0054 7b08          	ld	a,(OFST+6,sp)
2331  0056 4a            	dec	a
2332  0057 2604          	jrne	L757
2333                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2335  0059 a602          	ld	a,#2
2337  005b 2002          	jra	L167
2338  005d               L757:
2339                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2341  005d a601          	ld	a,#1
2342  005f               L167:
2343  005f 6b02          	ld	(OFST+0,sp),a
2345                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2347  0061 7b03          	ld	a,(OFST+1,sp)
2348  0063 262a          	jrne	L367
2349                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2349                     ; 527                (uint8_t)TIM1_ICFilter);
2351  0065 7b0a          	ld	a,(OFST+8,sp)
2352  0067 88            	push	a
2353  0068 7b09          	ld	a,(OFST+7,sp)
2354  006a 97            	ld	xl,a
2355  006b 7b05          	ld	a,(OFST+3,sp)
2356  006d 95            	ld	xh,a
2357  006e 8d000000      	callf	L3f_TI1_Config
2359  0072 84            	pop	a
2360                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2362  0073 7b09          	ld	a,(OFST+7,sp)
2363  0075 8d000000      	callf	f_TIM1_SetIC1Prescaler
2365                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2367  0079 7b0a          	ld	a,(OFST+8,sp)
2368  007b 88            	push	a
2369  007c 7b03          	ld	a,(OFST+1,sp)
2370  007e 97            	ld	xl,a
2371  007f 7b02          	ld	a,(OFST+0,sp)
2372  0081 95            	ld	xh,a
2373  0082 8d000000      	callf	L5f_TI2_Config
2375  0086 84            	pop	a
2376                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2378  0087 7b09          	ld	a,(OFST+7,sp)
2379  0089 8d000000      	callf	f_TIM1_SetIC2Prescaler
2382  008d 2028          	jra	L567
2383  008f               L367:
2384                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2384                     ; 542                (uint8_t)TIM1_ICFilter);
2386  008f 7b0a          	ld	a,(OFST+8,sp)
2387  0091 88            	push	a
2388  0092 7b09          	ld	a,(OFST+7,sp)
2389  0094 97            	ld	xl,a
2390  0095 7b05          	ld	a,(OFST+3,sp)
2391  0097 95            	ld	xh,a
2392  0098 8d000000      	callf	L5f_TI2_Config
2394  009c 84            	pop	a
2395                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2397  009d 7b09          	ld	a,(OFST+7,sp)
2398  009f 8d000000      	callf	f_TIM1_SetIC2Prescaler
2400                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2402  00a3 7b0a          	ld	a,(OFST+8,sp)
2403  00a5 88            	push	a
2404  00a6 7b03          	ld	a,(OFST+1,sp)
2405  00a8 97            	ld	xl,a
2406  00a9 7b02          	ld	a,(OFST+0,sp)
2407  00ab 95            	ld	xh,a
2408  00ac 8d000000      	callf	L3f_TI1_Config
2410  00b0 84            	pop	a
2411                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2413  00b1 7b09          	ld	a,(OFST+7,sp)
2414  00b3 8d000000      	callf	f_TIM1_SetIC1Prescaler
2416  00b7               L567:
2417                     ; 553 }
2420  00b7 5b04          	addw	sp,#4
2421  00b9 87            	retf	
2422  00ba               LC007:
2423  00ba 89            	pushw	x
2424  00bb 5f            	clrw	x
2425  00bc 89            	pushw	x
2426  00bd ae0000        	ldw	x,#L101
2427  00c0 8d000000      	callf	f_assert_failed
2429  00c4 5b04          	addw	sp,#4
2430  00c6 87            	retf	
2485                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2485                     ; 562 {
2486                     .text:	section	.text,new
2487  0000               f_TIM1_Cmd:
2489  0000 88            	push	a
2490       00000000      OFST:	set	0
2493                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2495  0001 4d            	tnz	a
2496  0002 2712          	jreq	L275
2497  0004 4a            	dec	a
2498  0005 270f          	jreq	L275
2499  0007 ae0234        	ldw	x,#564
2500  000a 89            	pushw	x
2501  000b 5f            	clrw	x
2502  000c 89            	pushw	x
2503  000d ae0000        	ldw	x,#L101
2504  0010 8d000000      	callf	f_assert_failed
2506  0014 5b04          	addw	sp,#4
2507  0016               L275:
2508                     ; 567   if (NewState != DISABLE)
2510  0016 7b01          	ld	a,(OFST+1,sp)
2511  0018 2706          	jreq	L5101
2512                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2514  001a 72105250      	bset	21072,#0
2516  001e 2004          	jra	L7101
2517  0020               L5101:
2518                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2520  0020 72115250      	bres	21072,#0
2521  0024               L7101:
2522                     ; 575 }
2525  0024 84            	pop	a
2526  0025 87            	retf	
2562                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2562                     ; 584 {
2563                     .text:	section	.text,new
2564  0000               f_TIM1_CtrlPWMOutputs:
2566  0000 88            	push	a
2567       00000000      OFST:	set	0
2570                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2572  0001 4d            	tnz	a
2573  0002 2712          	jreq	L406
2574  0004 4a            	dec	a
2575  0005 270f          	jreq	L406
2576  0007 ae024a        	ldw	x,#586
2577  000a 89            	pushw	x
2578  000b 5f            	clrw	x
2579  000c 89            	pushw	x
2580  000d ae0000        	ldw	x,#L101
2581  0010 8d000000      	callf	f_assert_failed
2583  0014 5b04          	addw	sp,#4
2584  0016               L406:
2585                     ; 590   if (NewState != DISABLE)
2587  0016 7b01          	ld	a,(OFST+1,sp)
2588  0018 2706          	jreq	L7301
2589                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2591  001a 721e526d      	bset	21101,#7
2593  001e 2004          	jra	L1401
2594  0020               L7301:
2595                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2597  0020 721f526d      	bres	21101,#7
2598  0024               L1401:
2599                     ; 598 }
2602  0024 84            	pop	a
2603  0025 87            	retf	
2710                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2710                     ; 618 {
2711                     .text:	section	.text,new
2712  0000               f_TIM1_ITConfig:
2714  0000 89            	pushw	x
2715       00000000      OFST:	set	0
2718                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2720  0001 9e            	ld	a,xh
2721  0002 4d            	tnz	a
2722  0003 2607          	jrne	L416
2723  0005 ae026c        	ldw	x,#620
2724  0008 8d300030      	callf	LC008
2725  000c               L416:
2726                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2728  000c 7b02          	ld	a,(OFST+2,sp)
2729  000e 270a          	jreq	L426
2730  0010 4a            	dec	a
2731  0011 2707          	jreq	L426
2732  0013 ae026d        	ldw	x,#621
2733  0016 8d300030      	callf	LC008
2734  001a               L426:
2735                     ; 623   if (NewState != DISABLE)
2737  001a 7b02          	ld	a,(OFST+2,sp)
2738  001c 2707          	jreq	L1111
2739                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2741  001e c65254        	ld	a,21076
2742  0021 1a01          	or	a,(OFST+1,sp)
2744  0023 2006          	jra	L3111
2745  0025               L1111:
2746                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2748  0025 7b01          	ld	a,(OFST+1,sp)
2749  0027 43            	cpl	a
2750  0028 c45254        	and	a,21076
2751  002b               L3111:
2752  002b c75254        	ld	21076,a
2753                     ; 633 }
2756  002e 85            	popw	x
2757  002f 87            	retf	
2758  0030               LC008:
2759  0030 89            	pushw	x
2760  0031 5f            	clrw	x
2761  0032 89            	pushw	x
2762  0033 ae0000        	ldw	x,#L101
2763  0036 8d000000      	callf	f_assert_failed
2765  003a 5b04          	addw	sp,#4
2766  003c 87            	retf	
2789                     ; 640 void TIM1_InternalClockConfig(void)
2789                     ; 641 {
2790                     .text:	section	.text,new
2791  0000               f_TIM1_InternalClockConfig:
2795                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2797  0000 c65252        	ld	a,21074
2798  0003 a4f8          	and	a,#248
2799  0005 c75252        	ld	21074,a
2800                     ; 644 }
2803  0008 87            	retf	
2920                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2920                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2920                     ; 664                               uint8_t ExtTRGFilter)
2920                     ; 665 {
2921                     .text:	section	.text,new
2922  0000               f_TIM1_ETRClockMode1Config:
2924  0000 89            	pushw	x
2925       00000000      OFST:	set	0
2928                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2930  0001 9e            	ld	a,xh
2931  0002 4d            	tnz	a
2932  0003 2716          	jreq	L046
2933  0005 9e            	ld	a,xh
2934  0006 a110          	cp	a,#16
2935  0008 2711          	jreq	L046
2936  000a 9e            	ld	a,xh
2937  000b a120          	cp	a,#32
2938  000d 270c          	jreq	L046
2939  000f 9e            	ld	a,xh
2940  0010 a130          	cp	a,#48
2941  0012 2707          	jreq	L046
2942  0014 ae029b        	ldw	x,#667
2943  0017 8d430043      	callf	LC009
2944  001b               L046:
2945                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2947  001b 7b02          	ld	a,(OFST+2,sp)
2948  001d a180          	cp	a,#128
2949  001f 270a          	jreq	L056
2950  0021 4d            	tnz	a
2951  0022 2707          	jreq	L056
2952  0024 ae029c        	ldw	x,#668
2953  0027 8d430043      	callf	LC009
2954  002b               L056:
2955                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2957  002b 7b06          	ld	a,(OFST+6,sp)
2958  002d 88            	push	a
2959  002e 7b03          	ld	a,(OFST+3,sp)
2960  0030 97            	ld	xl,a
2961  0031 7b02          	ld	a,(OFST+2,sp)
2962  0033 95            	ld	xh,a
2963  0034 8d000000      	callf	f_TIM1_ETRConfig
2965  0038 84            	pop	a
2966                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2966                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2968  0039 c65252        	ld	a,21074
2969  003c aa77          	or	a,#119
2970  003e c75252        	ld	21074,a
2971                     ; 676 }
2974  0041 85            	popw	x
2975  0042 87            	retf	
2976  0043               LC009:
2977  0043 89            	pushw	x
2978  0044 5f            	clrw	x
2979  0045 89            	pushw	x
2980  0046 ae0000        	ldw	x,#L101
2981  0049 8d000000      	callf	f_assert_failed
2983  004d 5b04          	addw	sp,#4
2984  004f 87            	retf	
3042                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3042                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3042                     ; 696                               uint8_t ExtTRGFilter)
3042                     ; 697 {
3043                     .text:	section	.text,new
3044  0000               f_TIM1_ETRClockMode2Config:
3046  0000 89            	pushw	x
3047       00000000      OFST:	set	0
3050                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3052  0001 9e            	ld	a,xh
3053  0002 4d            	tnz	a
3054  0003 2716          	jreq	L466
3055  0005 9e            	ld	a,xh
3056  0006 a110          	cp	a,#16
3057  0008 2711          	jreq	L466
3058  000a 9e            	ld	a,xh
3059  000b a120          	cp	a,#32
3060  000d 270c          	jreq	L466
3061  000f 9e            	ld	a,xh
3062  0010 a130          	cp	a,#48
3063  0012 2707          	jreq	L466
3064  0014 ae02bb        	ldw	x,#699
3065  0017 8d3f003f      	callf	LC010
3066  001b               L466:
3067                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3069  001b 7b02          	ld	a,(OFST+2,sp)
3070  001d a180          	cp	a,#128
3071  001f 270a          	jreq	L476
3072  0021 4d            	tnz	a
3073  0022 2707          	jreq	L476
3074  0024 ae02bc        	ldw	x,#700
3075  0027 8d3f003f      	callf	LC010
3076  002b               L476:
3077                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3079  002b 7b06          	ld	a,(OFST+6,sp)
3080  002d 88            	push	a
3081  002e 7b03          	ld	a,(OFST+3,sp)
3082  0030 97            	ld	xl,a
3083  0031 7b02          	ld	a,(OFST+2,sp)
3084  0033 95            	ld	xh,a
3085  0034 8d000000      	callf	f_TIM1_ETRConfig
3087  0038 721c5253      	bset	21075,#6
3088                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3090                     ; 707 }
3093  003c 5b03          	addw	sp,#3
3094  003e 87            	retf	
3095  003f               LC010:
3096  003f 89            	pushw	x
3097  0040 5f            	clrw	x
3098  0041 89            	pushw	x
3099  0042 ae0000        	ldw	x,#L101
3100  0045 8d000000      	callf	f_assert_failed
3102  0049 5b04          	addw	sp,#4
3103  004b 87            	retf	
3159                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3159                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3159                     ; 727                     uint8_t ExtTRGFilter)
3159                     ; 728 {
3160                     .text:	section	.text,new
3161  0000               f_TIM1_ETRConfig:
3163  0000 89            	pushw	x
3164       00000000      OFST:	set	0
3167                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3169  0001 7b06          	ld	a,(OFST+6,sp)
3170  0003 a110          	cp	a,#16
3171  0005 250f          	jrult	L607
3172  0007 ae02da        	ldw	x,#730
3173  000a 89            	pushw	x
3174  000b 5f            	clrw	x
3175  000c 89            	pushw	x
3176  000d ae0000        	ldw	x,#L101
3177  0010 8d000000      	callf	f_assert_failed
3179  0014 5b04          	addw	sp,#4
3180  0016               L607:
3181                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3181                     ; 733                          (uint8_t)ExtTRGFilter );
3183  0016 7b01          	ld	a,(OFST+1,sp)
3184  0018 1a02          	or	a,(OFST+2,sp)
3185  001a 1a06          	or	a,(OFST+6,sp)
3186  001c ca5253        	or	a,21075
3187  001f c75253        	ld	21075,a
3188                     ; 734 }
3191  0022 85            	popw	x
3192  0023 87            	retf	
3281                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3281                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3281                     ; 753                                  uint8_t ICFilter)
3281                     ; 754 {
3282                     .text:	section	.text,new
3283  0000               f_TIM1_TIxExternalClockConfig:
3285  0000 89            	pushw	x
3286       00000000      OFST:	set	0
3289                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3291  0001 9e            	ld	a,xh
3292  0002 a140          	cp	a,#64
3293  0004 2711          	jreq	L027
3294  0006 9e            	ld	a,xh
3295  0007 a160          	cp	a,#96
3296  0009 270c          	jreq	L027
3297  000b 9e            	ld	a,xh
3298  000c a150          	cp	a,#80
3299  000e 2707          	jreq	L027
3300  0010 ae02f4        	ldw	x,#756
3301  0013 8d650065      	callf	LC011
3302  0017               L027:
3303                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3305  0017 7b02          	ld	a,(OFST+2,sp)
3306  0019 270a          	jreq	L037
3307  001b 4a            	dec	a
3308  001c 2707          	jreq	L037
3309  001e ae02f5        	ldw	x,#757
3310  0021 8d650065      	callf	LC011
3311  0025               L037:
3312                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3314  0025 7b06          	ld	a,(OFST+6,sp)
3315  0027 a110          	cp	a,#16
3316  0029 2507          	jrult	L637
3317  002b ae02f6        	ldw	x,#758
3318  002e 8d650065      	callf	LC011
3319  0032               L637:
3320                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3322  0032 7b01          	ld	a,(OFST+1,sp)
3323  0034 a160          	cp	a,#96
3324  0036 260f          	jrne	L3131
3325                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3327  0038 7b06          	ld	a,(OFST+6,sp)
3328  003a 88            	push	a
3329  003b 7b03          	ld	a,(OFST+3,sp)
3330  003d ae0001        	ldw	x,#1
3331  0040 95            	ld	xh,a
3332  0041 8d000000      	callf	L5f_TI2_Config
3335  0045 200d          	jra	L5131
3336  0047               L3131:
3337                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3339  0047 7b06          	ld	a,(OFST+6,sp)
3340  0049 88            	push	a
3341  004a 7b03          	ld	a,(OFST+3,sp)
3342  004c ae0001        	ldw	x,#1
3343  004f 95            	ld	xh,a
3344  0050 8d000000      	callf	L3f_TI1_Config
3346  0054               L5131:
3347  0054 84            	pop	a
3348                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3350  0055 7b01          	ld	a,(OFST+1,sp)
3351  0057 8d000000      	callf	f_TIM1_SelectInputTrigger
3353                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3355  005b c65252        	ld	a,21074
3356  005e aa07          	or	a,#7
3357  0060 c75252        	ld	21074,a
3358                     ; 775 }
3361  0063 85            	popw	x
3362  0064 87            	retf	
3363  0065               LC011:
3364  0065 89            	pushw	x
3365  0066 5f            	clrw	x
3366  0067 89            	pushw	x
3367  0068 ae0000        	ldw	x,#L101
3368  006b 8d000000      	callf	f_assert_failed
3370  006f 5b04          	addw	sp,#4
3371  0071 87            	retf	
3456                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3456                     ; 788 {
3457                     .text:	section	.text,new
3458  0000               f_TIM1_SelectInputTrigger:
3460  0000 88            	push	a
3461       00000000      OFST:	set	0
3464                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3466  0001 a140          	cp	a,#64
3467  0003 2722          	jreq	L657
3468  0005 a150          	cp	a,#80
3469  0007 271e          	jreq	L657
3470  0009 a160          	cp	a,#96
3471  000b 271a          	jreq	L657
3472  000d a170          	cp	a,#112
3473  000f 2716          	jreq	L657
3474  0011 a130          	cp	a,#48
3475  0013 2712          	jreq	L657
3476  0015 4d            	tnz	a
3477  0016 270f          	jreq	L657
3478  0018 ae0316        	ldw	x,#790
3479  001b 89            	pushw	x
3480  001c 5f            	clrw	x
3481  001d 89            	pushw	x
3482  001e ae0000        	ldw	x,#L101
3483  0021 8d000000      	callf	f_assert_failed
3485  0025 5b04          	addw	sp,#4
3486  0027               L657:
3487                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3489  0027 c65252        	ld	a,21074
3490  002a a48f          	and	a,#143
3491  002c 1a01          	or	a,(OFST+1,sp)
3492  002e c75252        	ld	21074,a
3493                     ; 794 }
3496  0031 84            	pop	a
3497  0032 87            	retf	
3533                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3533                     ; 804 {
3534                     .text:	section	.text,new
3535  0000               f_TIM1_UpdateDisableConfig:
3537  0000 88            	push	a
3538       00000000      OFST:	set	0
3541                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3543  0001 4d            	tnz	a
3544  0002 2712          	jreq	L077
3545  0004 4a            	dec	a
3546  0005 270f          	jreq	L077
3547  0007 ae0326        	ldw	x,#806
3548  000a 89            	pushw	x
3549  000b 5f            	clrw	x
3550  000c 89            	pushw	x
3551  000d ae0000        	ldw	x,#L101
3552  0010 8d000000      	callf	f_assert_failed
3554  0014 5b04          	addw	sp,#4
3555  0016               L077:
3556                     ; 809   if (NewState != DISABLE)
3558  0016 7b01          	ld	a,(OFST+1,sp)
3559  0018 2706          	jreq	L3731
3560                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3562  001a 72125250      	bset	21072,#1
3564  001e 2004          	jra	L5731
3565  0020               L3731:
3566                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3568  0020 72135250      	bres	21072,#1
3569  0024               L5731:
3570                     ; 817 }
3573  0024 84            	pop	a
3574  0025 87            	retf	
3632                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3632                     ; 828 {
3633                     .text:	section	.text,new
3634  0000               f_TIM1_UpdateRequestConfig:
3636  0000 88            	push	a
3637       00000000      OFST:	set	0
3640                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3642  0001 4d            	tnz	a
3643  0002 2712          	jreq	L2001
3644  0004 4a            	dec	a
3645  0005 270f          	jreq	L2001
3646  0007 ae033e        	ldw	x,#830
3647  000a 89            	pushw	x
3648  000b 5f            	clrw	x
3649  000c 89            	pushw	x
3650  000d ae0000        	ldw	x,#L101
3651  0010 8d000000      	callf	f_assert_failed
3653  0014 5b04          	addw	sp,#4
3654  0016               L2001:
3655                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3657  0016 7b01          	ld	a,(OFST+1,sp)
3658  0018 2706          	jreq	L5241
3659                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3661  001a 72145250      	bset	21072,#2
3663  001e 2004          	jra	L7241
3664  0020               L5241:
3665                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3667  0020 72155250      	bres	21072,#2
3668  0024               L7241:
3669                     ; 841 }
3672  0024 84            	pop	a
3673  0025 87            	retf	
3709                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3709                     ; 850 {
3710                     .text:	section	.text,new
3711  0000               f_TIM1_SelectHallSensor:
3713  0000 88            	push	a
3714       00000000      OFST:	set	0
3717                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3719  0001 4d            	tnz	a
3720  0002 2712          	jreq	L4101
3721  0004 4a            	dec	a
3722  0005 270f          	jreq	L4101
3723  0007 ae0354        	ldw	x,#852
3724  000a 89            	pushw	x
3725  000b 5f            	clrw	x
3726  000c 89            	pushw	x
3727  000d ae0000        	ldw	x,#L101
3728  0010 8d000000      	callf	f_assert_failed
3730  0014 5b04          	addw	sp,#4
3731  0016               L4101:
3732                     ; 855   if (NewState != DISABLE)
3734  0016 7b01          	ld	a,(OFST+1,sp)
3735  0018 2706          	jreq	L7441
3736                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3738  001a 721e5251      	bset	21073,#7
3740  001e 2004          	jra	L1541
3741  0020               L7441:
3742                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3744  0020 721f5251      	bres	21073,#7
3745  0024               L1541:
3746                     ; 863 }
3749  0024 84            	pop	a
3750  0025 87            	retf	
3807                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3807                     ; 874 {
3808                     .text:	section	.text,new
3809  0000               f_TIM1_SelectOnePulseMode:
3811  0000 88            	push	a
3812       00000000      OFST:	set	0
3815                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3817  0001 a101          	cp	a,#1
3818  0003 2712          	jreq	L6201
3819  0005 4d            	tnz	a
3820  0006 270f          	jreq	L6201
3821  0008 ae036c        	ldw	x,#876
3822  000b 89            	pushw	x
3823  000c 5f            	clrw	x
3824  000d 89            	pushw	x
3825  000e ae0000        	ldw	x,#L101
3826  0011 8d000000      	callf	f_assert_failed
3828  0015 5b04          	addw	sp,#4
3829  0017               L6201:
3830                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3832  0017 7b01          	ld	a,(OFST+1,sp)
3833  0019 2706          	jreq	L1051
3834                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3836  001b 72165250      	bset	21072,#3
3838  001f 2004          	jra	L3051
3839  0021               L1051:
3840                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3842  0021 72175250      	bres	21072,#3
3843  0025               L3051:
3844                     ; 888 }
3847  0025 84            	pop	a
3848  0026 87            	retf	
3946                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3946                     ; 904 {
3947                     .text:	section	.text,new
3948  0000               f_TIM1_SelectOutputTrigger:
3950  0000 88            	push	a
3951       00000000      OFST:	set	0
3954                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3956  0001 4d            	tnz	a
3957  0002 2727          	jreq	L0401
3958  0004 a110          	cp	a,#16
3959  0006 2723          	jreq	L0401
3960  0008 a120          	cp	a,#32
3961  000a 271f          	jreq	L0401
3962  000c a130          	cp	a,#48
3963  000e 271b          	jreq	L0401
3964  0010 a140          	cp	a,#64
3965  0012 2717          	jreq	L0401
3966  0014 a150          	cp	a,#80
3967  0016 2713          	jreq	L0401
3968  0018 a160          	cp	a,#96
3969  001a 270f          	jreq	L0401
3970  001c ae038a        	ldw	x,#906
3971  001f 89            	pushw	x
3972  0020 5f            	clrw	x
3973  0021 89            	pushw	x
3974  0022 ae0000        	ldw	x,#L101
3975  0025 8d000000      	callf	f_assert_failed
3977  0029 5b04          	addw	sp,#4
3978  002b               L0401:
3979                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3979                     ; 910                         (uint8_t) TIM1_TRGOSource);
3981  002b c65251        	ld	a,21073
3982  002e a48f          	and	a,#143
3983  0030 1a01          	or	a,(OFST+1,sp)
3984  0032 c75251        	ld	21073,a
3985                     ; 911 }
3988  0035 84            	pop	a
3989  0036 87            	retf	
4063                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4063                     ; 924 {
4064                     .text:	section	.text,new
4065  0000               f_TIM1_SelectSlaveMode:
4067  0000 88            	push	a
4068       00000000      OFST:	set	0
4071                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4073  0001 a104          	cp	a,#4
4074  0003 271b          	jreq	L2501
4075  0005 a105          	cp	a,#5
4076  0007 2717          	jreq	L2501
4077  0009 a106          	cp	a,#6
4078  000b 2713          	jreq	L2501
4079  000d a107          	cp	a,#7
4080  000f 270f          	jreq	L2501
4081  0011 ae039e        	ldw	x,#926
4082  0014 89            	pushw	x
4083  0015 5f            	clrw	x
4084  0016 89            	pushw	x
4085  0017 ae0000        	ldw	x,#L101
4086  001a 8d000000      	callf	f_assert_failed
4088  001e 5b04          	addw	sp,#4
4089  0020               L2501:
4090                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4090                     ; 930                          (uint8_t)TIM1_SlaveMode);
4092  0020 c65252        	ld	a,21074
4093  0023 a4f8          	and	a,#248
4094  0025 1a01          	or	a,(OFST+1,sp)
4095  0027 c75252        	ld	21074,a
4096                     ; 931 }
4099  002a 84            	pop	a
4100  002b 87            	retf	
4136                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4136                     ; 940 {
4137                     .text:	section	.text,new
4138  0000               f_TIM1_SelectMasterSlaveMode:
4140  0000 88            	push	a
4141       00000000      OFST:	set	0
4144                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4146  0001 4d            	tnz	a
4147  0002 2712          	jreq	L4601
4148  0004 4a            	dec	a
4149  0005 270f          	jreq	L4601
4150  0007 ae03ae        	ldw	x,#942
4151  000a 89            	pushw	x
4152  000b 5f            	clrw	x
4153  000c 89            	pushw	x
4154  000d ae0000        	ldw	x,#L101
4155  0010 8d000000      	callf	f_assert_failed
4157  0014 5b04          	addw	sp,#4
4158  0016               L4601:
4159                     ; 945   if (NewState != DISABLE)
4161  0016 7b01          	ld	a,(OFST+1,sp)
4162  0018 2706          	jreq	L5161
4163                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4165  001a 721e5252      	bset	21074,#7
4167  001e 2004          	jra	L7161
4168  0020               L5161:
4169                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4171  0020 721f5252      	bres	21074,#7
4172  0024               L7161:
4173                     ; 953 }
4176  0024 84            	pop	a
4177  0025 87            	retf	
4263                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4263                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4263                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4263                     ; 978 {
4264                     .text:	section	.text,new
4265  0000               f_TIM1_EncoderInterfaceConfig:
4267  0000 89            	pushw	x
4268       00000000      OFST:	set	0
4271                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4273  0001 9e            	ld	a,xh
4274  0002 4a            	dec	a
4275  0003 2711          	jreq	L6701
4276  0005 9e            	ld	a,xh
4277  0006 a102          	cp	a,#2
4278  0008 270c          	jreq	L6701
4279  000a 9e            	ld	a,xh
4280  000b a103          	cp	a,#3
4281  000d 2707          	jreq	L6701
4282  000f ae03d4        	ldw	x,#980
4283  0012 8d6e006e      	callf	LC012
4284  0016               L6701:
4285                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4287  0016 7b02          	ld	a,(OFST+2,sp)
4288  0018 270a          	jreq	L6011
4289  001a 4a            	dec	a
4290  001b 2707          	jreq	L6011
4291  001d ae03d5        	ldw	x,#981
4292  0020 8d6e006e      	callf	LC012
4293  0024               L6011:
4294                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4296  0024 7b06          	ld	a,(OFST+6,sp)
4297  0026 270a          	jreq	L6111
4298  0028 4a            	dec	a
4299  0029 2707          	jreq	L6111
4300  002b ae03d6        	ldw	x,#982
4301  002e 8d6e006e      	callf	LC012
4302  0032               L6111:
4303                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4305  0032 7b02          	ld	a,(OFST+2,sp)
4306  0034 2706          	jreq	L1661
4307                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4309  0036 7212525c      	bset	21084,#1
4311  003a 2004          	jra	L3661
4312  003c               L1661:
4313                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4315  003c 7213525c      	bres	21084,#1
4316  0040               L3661:
4317                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4319  0040 7b06          	ld	a,(OFST+6,sp)
4320  0042 2706          	jreq	L5661
4321                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4323  0044 721a525c      	bset	21084,#5
4325  0048 2004          	jra	L7661
4326  004a               L5661:
4327                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4329  004a 721b525c      	bres	21084,#5
4330  004e               L7661:
4331                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4331                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4333  004e c65252        	ld	a,21074
4334  0051 a4f0          	and	a,#240
4335  0053 1a01          	or	a,(OFST+1,sp)
4336  0055 c75252        	ld	21074,a
4337                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4337                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4339  0058 c65258        	ld	a,21080
4340  005b a4fc          	and	a,#252
4341  005d aa01          	or	a,#1
4342  005f c75258        	ld	21080,a
4343                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4343                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4345  0062 c65259        	ld	a,21081
4346  0065 a4fc          	and	a,#252
4347  0067 aa01          	or	a,#1
4348  0069 c75259        	ld	21081,a
4349                     ; 1011 }
4352  006c 85            	popw	x
4353  006d 87            	retf	
4354  006e               LC012:
4355  006e 89            	pushw	x
4356  006f 5f            	clrw	x
4357  0070 89            	pushw	x
4358  0071 ae0000        	ldw	x,#L101
4359  0074 8d000000      	callf	f_assert_failed
4361  0078 5b04          	addw	sp,#4
4362  007a 87            	retf	
4429                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4429                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4429                     ; 1025 {
4430                     .text:	section	.text,new
4431  0000               f_TIM1_PrescalerConfig:
4433  0000 89            	pushw	x
4434       00000000      OFST:	set	0
4437                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4439  0001 7b06          	ld	a,(OFST+6,sp)
4440  0003 2712          	jreq	L0311
4441  0005 4a            	dec	a
4442  0006 270f          	jreq	L0311
4443  0008 ae0403        	ldw	x,#1027
4444  000b 89            	pushw	x
4445  000c 5f            	clrw	x
4446  000d 89            	pushw	x
4447  000e ae0000        	ldw	x,#L101
4448  0011 8d000000      	callf	f_assert_failed
4450  0015 5b04          	addw	sp,#4
4451  0017               L0311:
4452                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4454  0017 7b01          	ld	a,(OFST+1,sp)
4455  0019 c75260        	ld	21088,a
4456                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4458  001c 7b02          	ld	a,(OFST+2,sp)
4459  001e c75261        	ld	21089,a
4460                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4462  0021 7b06          	ld	a,(OFST+6,sp)
4463  0023 c75257        	ld	21079,a
4464                     ; 1035 }
4467  0026 85            	popw	x
4468  0027 87            	retf	
4504                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4504                     ; 1049 {
4505                     .text:	section	.text,new
4506  0000               f_TIM1_CounterModeConfig:
4508  0000 88            	push	a
4509       00000000      OFST:	set	0
4512                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4514  0001 4d            	tnz	a
4515  0002 271f          	jreq	L2411
4516  0004 a110          	cp	a,#16
4517  0006 271b          	jreq	L2411
4518  0008 a120          	cp	a,#32
4519  000a 2717          	jreq	L2411
4520  000c a140          	cp	a,#64
4521  000e 2713          	jreq	L2411
4522  0010 a160          	cp	a,#96
4523  0012 270f          	jreq	L2411
4524  0014 ae041b        	ldw	x,#1051
4525  0017 89            	pushw	x
4526  0018 5f            	clrw	x
4527  0019 89            	pushw	x
4528  001a ae0000        	ldw	x,#L101
4529  001d 8d000000      	callf	f_assert_failed
4531  0021 5b04          	addw	sp,#4
4532  0023               L2411:
4533                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4533                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4535  0023 c65250        	ld	a,21072
4536  0026 a48f          	and	a,#143
4537  0028 1a01          	or	a,(OFST+1,sp)
4538  002a c75250        	ld	21072,a
4539                     ; 1057 }
4542  002d 84            	pop	a
4543  002e 87            	retf	
4601                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4601                     ; 1068 {
4602                     .text:	section	.text,new
4603  0000               f_TIM1_ForcedOC1Config:
4605  0000 88            	push	a
4606       00000000      OFST:	set	0
4609                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4611  0001 a150          	cp	a,#80
4612  0003 2713          	jreq	L4511
4613  0005 a140          	cp	a,#64
4614  0007 270f          	jreq	L4511
4615  0009 ae042e        	ldw	x,#1070
4616  000c 89            	pushw	x
4617  000d 5f            	clrw	x
4618  000e 89            	pushw	x
4619  000f ae0000        	ldw	x,#L101
4620  0012 8d000000      	callf	f_assert_failed
4622  0016 5b04          	addw	sp,#4
4623  0018               L4511:
4624                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4624                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4626  0018 c65258        	ld	a,21080
4627  001b a48f          	and	a,#143
4628  001d 1a01          	or	a,(OFST+1,sp)
4629  001f c75258        	ld	21080,a
4630                     ; 1075 }
4633  0022 84            	pop	a
4634  0023 87            	retf	
4670                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4670                     ; 1086 {
4671                     .text:	section	.text,new
4672  0000               f_TIM1_ForcedOC2Config:
4674  0000 88            	push	a
4675       00000000      OFST:	set	0
4678                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4680  0001 a150          	cp	a,#80
4681  0003 2713          	jreq	L6611
4682  0005 a140          	cp	a,#64
4683  0007 270f          	jreq	L6611
4684  0009 ae0440        	ldw	x,#1088
4685  000c 89            	pushw	x
4686  000d 5f            	clrw	x
4687  000e 89            	pushw	x
4688  000f ae0000        	ldw	x,#L101
4689  0012 8d000000      	callf	f_assert_failed
4691  0016 5b04          	addw	sp,#4
4692  0018               L6611:
4693                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4693                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4695  0018 c65259        	ld	a,21081
4696  001b a48f          	and	a,#143
4697  001d 1a01          	or	a,(OFST+1,sp)
4698  001f c75259        	ld	21081,a
4699                     ; 1093 }
4702  0022 84            	pop	a
4703  0023 87            	retf	
4739                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4739                     ; 1105 {
4740                     .text:	section	.text,new
4741  0000               f_TIM1_ForcedOC3Config:
4743  0000 88            	push	a
4744       00000000      OFST:	set	0
4747                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4749  0001 a150          	cp	a,#80
4750  0003 2713          	jreq	L0021
4751  0005 a140          	cp	a,#64
4752  0007 270f          	jreq	L0021
4753  0009 ae0453        	ldw	x,#1107
4754  000c 89            	pushw	x
4755  000d 5f            	clrw	x
4756  000e 89            	pushw	x
4757  000f ae0000        	ldw	x,#L101
4758  0012 8d000000      	callf	f_assert_failed
4760  0016 5b04          	addw	sp,#4
4761  0018               L0021:
4762                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4762                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4764  0018 c6525a        	ld	a,21082
4765  001b a48f          	and	a,#143
4766  001d 1a01          	or	a,(OFST+1,sp)
4767  001f c7525a        	ld	21082,a
4768                     ; 1112 }
4771  0022 84            	pop	a
4772  0023 87            	retf	
4808                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4808                     ; 1124 {
4809                     .text:	section	.text,new
4810  0000               f_TIM1_ForcedOC4Config:
4812  0000 88            	push	a
4813       00000000      OFST:	set	0
4816                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4818  0001 a150          	cp	a,#80
4819  0003 2713          	jreq	L2121
4820  0005 a140          	cp	a,#64
4821  0007 270f          	jreq	L2121
4822  0009 ae0466        	ldw	x,#1126
4823  000c 89            	pushw	x
4824  000d 5f            	clrw	x
4825  000e 89            	pushw	x
4826  000f ae0000        	ldw	x,#L101
4827  0012 8d000000      	callf	f_assert_failed
4829  0016 5b04          	addw	sp,#4
4830  0018               L2121:
4831                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4831                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4833  0018 c6525b        	ld	a,21083
4834  001b a48f          	and	a,#143
4835  001d 1a01          	or	a,(OFST+1,sp)
4836  001f c7525b        	ld	21083,a
4837                     ; 1131 }
4840  0022 84            	pop	a
4841  0023 87            	retf	
4877                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4877                     ; 1140 {
4878                     .text:	section	.text,new
4879  0000               f_TIM1_ARRPreloadConfig:
4881  0000 88            	push	a
4882       00000000      OFST:	set	0
4885                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4887  0001 4d            	tnz	a
4888  0002 2712          	jreq	L4221
4889  0004 4a            	dec	a
4890  0005 270f          	jreq	L4221
4891  0007 ae0476        	ldw	x,#1142
4892  000a 89            	pushw	x
4893  000b 5f            	clrw	x
4894  000c 89            	pushw	x
4895  000d ae0000        	ldw	x,#L101
4896  0010 8d000000      	callf	f_assert_failed
4898  0014 5b04          	addw	sp,#4
4899  0016               L4221:
4900                     ; 1145   if (NewState != DISABLE)
4902  0016 7b01          	ld	a,(OFST+1,sp)
4903  0018 2706          	jreq	L7502
4904                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4906  001a 721e5250      	bset	21072,#7
4908  001e 2004          	jra	L1602
4909  0020               L7502:
4910                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4912  0020 721f5250      	bres	21072,#7
4913  0024               L1602:
4914                     ; 1153 }
4917  0024 84            	pop	a
4918  0025 87            	retf	
4953                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4953                     ; 1162 {
4954                     .text:	section	.text,new
4955  0000               f_TIM1_SelectCOM:
4957  0000 88            	push	a
4958       00000000      OFST:	set	0
4961                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4963  0001 4d            	tnz	a
4964  0002 2712          	jreq	L6321
4965  0004 4a            	dec	a
4966  0005 270f          	jreq	L6321
4967  0007 ae048c        	ldw	x,#1164
4968  000a 89            	pushw	x
4969  000b 5f            	clrw	x
4970  000c 89            	pushw	x
4971  000d ae0000        	ldw	x,#L101
4972  0010 8d000000      	callf	f_assert_failed
4974  0014 5b04          	addw	sp,#4
4975  0016               L6321:
4976                     ; 1167   if (NewState != DISABLE)
4978  0016 7b01          	ld	a,(OFST+1,sp)
4979  0018 2706          	jreq	L1012
4980                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
4982  001a 72145251      	bset	21073,#2
4984  001e 2004          	jra	L3012
4985  0020               L1012:
4986                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4988  0020 72155251      	bres	21073,#2
4989  0024               L3012:
4990                     ; 1175 }
4993  0024 84            	pop	a
4994  0025 87            	retf	
5030                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5030                     ; 1184 {
5031                     .text:	section	.text,new
5032  0000               f_TIM1_CCPreloadControl:
5034  0000 88            	push	a
5035       00000000      OFST:	set	0
5038                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5040  0001 4d            	tnz	a
5041  0002 2712          	jreq	L0521
5042  0004 4a            	dec	a
5043  0005 270f          	jreq	L0521
5044  0007 ae04a2        	ldw	x,#1186
5045  000a 89            	pushw	x
5046  000b 5f            	clrw	x
5047  000c 89            	pushw	x
5048  000d ae0000        	ldw	x,#L101
5049  0010 8d000000      	callf	f_assert_failed
5051  0014 5b04          	addw	sp,#4
5052  0016               L0521:
5053                     ; 1189   if (NewState != DISABLE)
5055  0016 7b01          	ld	a,(OFST+1,sp)
5056  0018 2706          	jreq	L3212
5057                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5059  001a 72105251      	bset	21073,#0
5061  001e 2004          	jra	L5212
5062  0020               L3212:
5063                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5065  0020 72115251      	bres	21073,#0
5066  0024               L5212:
5067                     ; 1197 }
5070  0024 84            	pop	a
5071  0025 87            	retf	
5107                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5107                     ; 1206 {
5108                     .text:	section	.text,new
5109  0000               f_TIM1_OC1PreloadConfig:
5111  0000 88            	push	a
5112       00000000      OFST:	set	0
5115                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5117  0001 4d            	tnz	a
5118  0002 2712          	jreq	L2621
5119  0004 4a            	dec	a
5120  0005 270f          	jreq	L2621
5121  0007 ae04b8        	ldw	x,#1208
5122  000a 89            	pushw	x
5123  000b 5f            	clrw	x
5124  000c 89            	pushw	x
5125  000d ae0000        	ldw	x,#L101
5126  0010 8d000000      	callf	f_assert_failed
5128  0014 5b04          	addw	sp,#4
5129  0016               L2621:
5130                     ; 1211   if (NewState != DISABLE)
5132  0016 7b01          	ld	a,(OFST+1,sp)
5133  0018 2706          	jreq	L5412
5134                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5136  001a 72165258      	bset	21080,#3
5138  001e 2004          	jra	L7412
5139  0020               L5412:
5140                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5142  0020 72175258      	bres	21080,#3
5143  0024               L7412:
5144                     ; 1219 }
5147  0024 84            	pop	a
5148  0025 87            	retf	
5184                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5184                     ; 1228 {
5185                     .text:	section	.text,new
5186  0000               f_TIM1_OC2PreloadConfig:
5188  0000 88            	push	a
5189       00000000      OFST:	set	0
5192                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5194  0001 4d            	tnz	a
5195  0002 2712          	jreq	L4721
5196  0004 4a            	dec	a
5197  0005 270f          	jreq	L4721
5198  0007 ae04ce        	ldw	x,#1230
5199  000a 89            	pushw	x
5200  000b 5f            	clrw	x
5201  000c 89            	pushw	x
5202  000d ae0000        	ldw	x,#L101
5203  0010 8d000000      	callf	f_assert_failed
5205  0014 5b04          	addw	sp,#4
5206  0016               L4721:
5207                     ; 1233   if (NewState != DISABLE)
5209  0016 7b01          	ld	a,(OFST+1,sp)
5210  0018 2706          	jreq	L7612
5211                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5213  001a 72165259      	bset	21081,#3
5215  001e 2004          	jra	L1712
5216  0020               L7612:
5217                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5219  0020 72175259      	bres	21081,#3
5220  0024               L1712:
5221                     ; 1241 }
5224  0024 84            	pop	a
5225  0025 87            	retf	
5261                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5261                     ; 1250 {
5262                     .text:	section	.text,new
5263  0000               f_TIM1_OC3PreloadConfig:
5265  0000 88            	push	a
5266       00000000      OFST:	set	0
5269                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5271  0001 4d            	tnz	a
5272  0002 2712          	jreq	L6031
5273  0004 4a            	dec	a
5274  0005 270f          	jreq	L6031
5275  0007 ae04e4        	ldw	x,#1252
5276  000a 89            	pushw	x
5277  000b 5f            	clrw	x
5278  000c 89            	pushw	x
5279  000d ae0000        	ldw	x,#L101
5280  0010 8d000000      	callf	f_assert_failed
5282  0014 5b04          	addw	sp,#4
5283  0016               L6031:
5284                     ; 1255   if (NewState != DISABLE)
5286  0016 7b01          	ld	a,(OFST+1,sp)
5287  0018 2706          	jreq	L1122
5288                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5290  001a 7216525a      	bset	21082,#3
5292  001e 2004          	jra	L3122
5293  0020               L1122:
5294                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5296  0020 7217525a      	bres	21082,#3
5297  0024               L3122:
5298                     ; 1263 }
5301  0024 84            	pop	a
5302  0025 87            	retf	
5338                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5338                     ; 1272 {
5339                     .text:	section	.text,new
5340  0000               f_TIM1_OC4PreloadConfig:
5342  0000 88            	push	a
5343       00000000      OFST:	set	0
5346                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5348  0001 4d            	tnz	a
5349  0002 2712          	jreq	L0231
5350  0004 4a            	dec	a
5351  0005 270f          	jreq	L0231
5352  0007 ae04fa        	ldw	x,#1274
5353  000a 89            	pushw	x
5354  000b 5f            	clrw	x
5355  000c 89            	pushw	x
5356  000d ae0000        	ldw	x,#L101
5357  0010 8d000000      	callf	f_assert_failed
5359  0014 5b04          	addw	sp,#4
5360  0016               L0231:
5361                     ; 1277   if (NewState != DISABLE)
5363  0016 7b01          	ld	a,(OFST+1,sp)
5364  0018 2706          	jreq	L3322
5365                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5367  001a 7216525b      	bset	21083,#3
5369  001e 2004          	jra	L5322
5370  0020               L3322:
5371                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5373  0020 7217525b      	bres	21083,#3
5374  0024               L5322:
5375                     ; 1285 }
5378  0024 84            	pop	a
5379  0025 87            	retf	
5414                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5414                     ; 1294 {
5415                     .text:	section	.text,new
5416  0000               f_TIM1_OC1FastConfig:
5418  0000 88            	push	a
5419       00000000      OFST:	set	0
5422                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5424  0001 4d            	tnz	a
5425  0002 2712          	jreq	L2331
5426  0004 4a            	dec	a
5427  0005 270f          	jreq	L2331
5428  0007 ae0510        	ldw	x,#1296
5429  000a 89            	pushw	x
5430  000b 5f            	clrw	x
5431  000c 89            	pushw	x
5432  000d ae0000        	ldw	x,#L101
5433  0010 8d000000      	callf	f_assert_failed
5435  0014 5b04          	addw	sp,#4
5436  0016               L2331:
5437                     ; 1299   if (NewState != DISABLE)
5439  0016 7b01          	ld	a,(OFST+1,sp)
5440  0018 2706          	jreq	L5522
5441                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5443  001a 72145258      	bset	21080,#2
5445  001e 2004          	jra	L7522
5446  0020               L5522:
5447                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5449  0020 72155258      	bres	21080,#2
5450  0024               L7522:
5451                     ; 1307 }
5454  0024 84            	pop	a
5455  0025 87            	retf	
5490                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5490                     ; 1316 {
5491                     .text:	section	.text,new
5492  0000               f_TIM1_OC2FastConfig:
5494  0000 88            	push	a
5495       00000000      OFST:	set	0
5498                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5500  0001 4d            	tnz	a
5501  0002 2712          	jreq	L4431
5502  0004 4a            	dec	a
5503  0005 270f          	jreq	L4431
5504  0007 ae0526        	ldw	x,#1318
5505  000a 89            	pushw	x
5506  000b 5f            	clrw	x
5507  000c 89            	pushw	x
5508  000d ae0000        	ldw	x,#L101
5509  0010 8d000000      	callf	f_assert_failed
5511  0014 5b04          	addw	sp,#4
5512  0016               L4431:
5513                     ; 1321   if (NewState != DISABLE)
5515  0016 7b01          	ld	a,(OFST+1,sp)
5516  0018 2706          	jreq	L7722
5517                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5519  001a 72145259      	bset	21081,#2
5521  001e 2004          	jra	L1032
5522  0020               L7722:
5523                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5525  0020 72155259      	bres	21081,#2
5526  0024               L1032:
5527                     ; 1329 }
5530  0024 84            	pop	a
5531  0025 87            	retf	
5566                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5566                     ; 1338 {
5567                     .text:	section	.text,new
5568  0000               f_TIM1_OC3FastConfig:
5570  0000 88            	push	a
5571       00000000      OFST:	set	0
5574                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5576  0001 4d            	tnz	a
5577  0002 2712          	jreq	L6531
5578  0004 4a            	dec	a
5579  0005 270f          	jreq	L6531
5580  0007 ae053c        	ldw	x,#1340
5581  000a 89            	pushw	x
5582  000b 5f            	clrw	x
5583  000c 89            	pushw	x
5584  000d ae0000        	ldw	x,#L101
5585  0010 8d000000      	callf	f_assert_failed
5587  0014 5b04          	addw	sp,#4
5588  0016               L6531:
5589                     ; 1343   if (NewState != DISABLE)
5591  0016 7b01          	ld	a,(OFST+1,sp)
5592  0018 2706          	jreq	L1232
5593                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5595  001a 7214525a      	bset	21082,#2
5597  001e 2004          	jra	L3232
5598  0020               L1232:
5599                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5601  0020 7215525a      	bres	21082,#2
5602  0024               L3232:
5603                     ; 1351 }
5606  0024 84            	pop	a
5607  0025 87            	retf	
5642                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5642                     ; 1360 {
5643                     .text:	section	.text,new
5644  0000               f_TIM1_OC4FastConfig:
5646  0000 88            	push	a
5647       00000000      OFST:	set	0
5650                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5652  0001 4d            	tnz	a
5653  0002 2712          	jreq	L0731
5654  0004 4a            	dec	a
5655  0005 270f          	jreq	L0731
5656  0007 ae0552        	ldw	x,#1362
5657  000a 89            	pushw	x
5658  000b 5f            	clrw	x
5659  000c 89            	pushw	x
5660  000d ae0000        	ldw	x,#L101
5661  0010 8d000000      	callf	f_assert_failed
5663  0014 5b04          	addw	sp,#4
5664  0016               L0731:
5665                     ; 1365   if (NewState != DISABLE)
5667  0016 7b01          	ld	a,(OFST+1,sp)
5668  0018 2706          	jreq	L3432
5669                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5671  001a 7214525b      	bset	21083,#2
5673  001e 2004          	jra	L5432
5674  0020               L3432:
5675                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5677  0020 7215525b      	bres	21083,#2
5678  0024               L5432:
5679                     ; 1373 }
5682  0024 84            	pop	a
5683  0025 87            	retf	
5788                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5788                     ; 1390 {
5789                     .text:	section	.text,new
5790  0000               f_TIM1_GenerateEvent:
5792  0000 88            	push	a
5793       00000000      OFST:	set	0
5796                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5798  0001 4d            	tnz	a
5799  0002 260f          	jrne	L0041
5800  0004 ae0570        	ldw	x,#1392
5801  0007 89            	pushw	x
5802  0008 5f            	clrw	x
5803  0009 89            	pushw	x
5804  000a ae0000        	ldw	x,#L101
5805  000d 8d000000      	callf	f_assert_failed
5807  0011 5b04          	addw	sp,#4
5808  0013               L0041:
5809                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5811  0013 7b01          	ld	a,(OFST+1,sp)
5812  0015 c75257        	ld	21079,a
5813                     ; 1396 }
5816  0018 84            	pop	a
5817  0019 87            	retf	
5853                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5853                     ; 1407 {
5854                     .text:	section	.text,new
5855  0000               f_TIM1_OC1PolarityConfig:
5857  0000 88            	push	a
5858       00000000      OFST:	set	0
5861                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5863  0001 4d            	tnz	a
5864  0002 2713          	jreq	L2141
5865  0004 a122          	cp	a,#34
5866  0006 270f          	jreq	L2141
5867  0008 ae0581        	ldw	x,#1409
5868  000b 89            	pushw	x
5869  000c 5f            	clrw	x
5870  000d 89            	pushw	x
5871  000e ae0000        	ldw	x,#L101
5872  0011 8d000000      	callf	f_assert_failed
5874  0015 5b04          	addw	sp,#4
5875  0017               L2141:
5876                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5878  0017 7b01          	ld	a,(OFST+1,sp)
5879  0019 2706          	jreq	L7242
5880                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5882  001b 7212525c      	bset	21084,#1
5884  001f 2004          	jra	L1342
5885  0021               L7242:
5886                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5888  0021 7213525c      	bres	21084,#1
5889  0025               L1342:
5890                     ; 1420 }
5893  0025 84            	pop	a
5894  0026 87            	retf	
5930                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5930                     ; 1431 {
5931                     .text:	section	.text,new
5932  0000               f_TIM1_OC1NPolarityConfig:
5934  0000 88            	push	a
5935       00000000      OFST:	set	0
5938                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5940  0001 4d            	tnz	a
5941  0002 2713          	jreq	L4241
5942  0004 a188          	cp	a,#136
5943  0006 270f          	jreq	L4241
5944  0008 ae0599        	ldw	x,#1433
5945  000b 89            	pushw	x
5946  000c 5f            	clrw	x
5947  000d 89            	pushw	x
5948  000e ae0000        	ldw	x,#L101
5949  0011 8d000000      	callf	f_assert_failed
5951  0015 5b04          	addw	sp,#4
5952  0017               L4241:
5953                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5955  0017 7b01          	ld	a,(OFST+1,sp)
5956  0019 2706          	jreq	L1542
5957                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5959  001b 7216525c      	bset	21084,#3
5961  001f 2004          	jra	L3542
5962  0021               L1542:
5963                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5965  0021 7217525c      	bres	21084,#3
5966  0025               L3542:
5967                     ; 1444 }
5970  0025 84            	pop	a
5971  0026 87            	retf	
6007                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6007                     ; 1455 {
6008                     .text:	section	.text,new
6009  0000               f_TIM1_OC2PolarityConfig:
6011  0000 88            	push	a
6012       00000000      OFST:	set	0
6015                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6017  0001 4d            	tnz	a
6018  0002 2713          	jreq	L6341
6019  0004 a122          	cp	a,#34
6020  0006 270f          	jreq	L6341
6021  0008 ae05b1        	ldw	x,#1457
6022  000b 89            	pushw	x
6023  000c 5f            	clrw	x
6024  000d 89            	pushw	x
6025  000e ae0000        	ldw	x,#L101
6026  0011 8d000000      	callf	f_assert_failed
6028  0015 5b04          	addw	sp,#4
6029  0017               L6341:
6030                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6032  0017 7b01          	ld	a,(OFST+1,sp)
6033  0019 2706          	jreq	L3742
6034                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6036  001b 721a525c      	bset	21084,#5
6038  001f 2004          	jra	L5742
6039  0021               L3742:
6040                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6042  0021 721b525c      	bres	21084,#5
6043  0025               L5742:
6044                     ; 1468 }
6047  0025 84            	pop	a
6048  0026 87            	retf	
6084                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6084                     ; 1479 {
6085                     .text:	section	.text,new
6086  0000               f_TIM1_OC2NPolarityConfig:
6088  0000 88            	push	a
6089       00000000      OFST:	set	0
6092                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6094  0001 4d            	tnz	a
6095  0002 2713          	jreq	L0541
6096  0004 a188          	cp	a,#136
6097  0006 270f          	jreq	L0541
6098  0008 ae05c9        	ldw	x,#1481
6099  000b 89            	pushw	x
6100  000c 5f            	clrw	x
6101  000d 89            	pushw	x
6102  000e ae0000        	ldw	x,#L101
6103  0011 8d000000      	callf	f_assert_failed
6105  0015 5b04          	addw	sp,#4
6106  0017               L0541:
6107                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6109  0017 7b01          	ld	a,(OFST+1,sp)
6110  0019 2706          	jreq	L5152
6111                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6113  001b 721e525c      	bset	21084,#7
6115  001f 2004          	jra	L7152
6116  0021               L5152:
6117                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6119  0021 721f525c      	bres	21084,#7
6120  0025               L7152:
6121                     ; 1492 }
6124  0025 84            	pop	a
6125  0026 87            	retf	
6161                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6161                     ; 1503 {
6162                     .text:	section	.text,new
6163  0000               f_TIM1_OC3PolarityConfig:
6165  0000 88            	push	a
6166       00000000      OFST:	set	0
6169                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6171  0001 4d            	tnz	a
6172  0002 2713          	jreq	L2641
6173  0004 a122          	cp	a,#34
6174  0006 270f          	jreq	L2641
6175  0008 ae05e1        	ldw	x,#1505
6176  000b 89            	pushw	x
6177  000c 5f            	clrw	x
6178  000d 89            	pushw	x
6179  000e ae0000        	ldw	x,#L101
6180  0011 8d000000      	callf	f_assert_failed
6182  0015 5b04          	addw	sp,#4
6183  0017               L2641:
6184                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6186  0017 7b01          	ld	a,(OFST+1,sp)
6187  0019 2706          	jreq	L7352
6188                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6190  001b 7212525d      	bset	21085,#1
6192  001f 2004          	jra	L1452
6193  0021               L7352:
6194                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6196  0021 7213525d      	bres	21085,#1
6197  0025               L1452:
6198                     ; 1516 }
6201  0025 84            	pop	a
6202  0026 87            	retf	
6238                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6238                     ; 1528 {
6239                     .text:	section	.text,new
6240  0000               f_TIM1_OC3NPolarityConfig:
6242  0000 88            	push	a
6243       00000000      OFST:	set	0
6246                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6248  0001 4d            	tnz	a
6249  0002 2713          	jreq	L4741
6250  0004 a188          	cp	a,#136
6251  0006 270f          	jreq	L4741
6252  0008 ae05fa        	ldw	x,#1530
6253  000b 89            	pushw	x
6254  000c 5f            	clrw	x
6255  000d 89            	pushw	x
6256  000e ae0000        	ldw	x,#L101
6257  0011 8d000000      	callf	f_assert_failed
6259  0015 5b04          	addw	sp,#4
6260  0017               L4741:
6261                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6263  0017 7b01          	ld	a,(OFST+1,sp)
6264  0019 2706          	jreq	L1652
6265                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6267  001b 7216525d      	bset	21085,#3
6269  001f 2004          	jra	L3652
6270  0021               L1652:
6271                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6273  0021 7217525d      	bres	21085,#3
6274  0025               L3652:
6275                     ; 1541 }
6278  0025 84            	pop	a
6279  0026 87            	retf	
6315                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6315                     ; 1552 {
6316                     .text:	section	.text,new
6317  0000               f_TIM1_OC4PolarityConfig:
6319  0000 88            	push	a
6320       00000000      OFST:	set	0
6323                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6325  0001 4d            	tnz	a
6326  0002 2713          	jreq	L6051
6327  0004 a122          	cp	a,#34
6328  0006 270f          	jreq	L6051
6329  0008 ae0612        	ldw	x,#1554
6330  000b 89            	pushw	x
6331  000c 5f            	clrw	x
6332  000d 89            	pushw	x
6333  000e ae0000        	ldw	x,#L101
6334  0011 8d000000      	callf	f_assert_failed
6336  0015 5b04          	addw	sp,#4
6337  0017               L6051:
6338                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6340  0017 7b01          	ld	a,(OFST+1,sp)
6341  0019 2706          	jreq	L3062
6342                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6344  001b 721a525d      	bset	21085,#5
6346  001f 2004          	jra	L5062
6347  0021               L3062:
6348                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6350  0021 721b525d      	bres	21085,#5
6351  0025               L5062:
6352                     ; 1565 }
6355  0025 84            	pop	a
6356  0026 87            	retf	
6401                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6401                     ; 1580 {
6402                     .text:	section	.text,new
6403  0000               f_TIM1_CCxCmd:
6405  0000 89            	pushw	x
6406       00000000      OFST:	set	0
6409                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6411  0001 9e            	ld	a,xh
6412  0002 4d            	tnz	a
6413  0003 2715          	jreq	L0251
6414  0005 9e            	ld	a,xh
6415  0006 4a            	dec	a
6416  0007 2711          	jreq	L0251
6417  0009 9e            	ld	a,xh
6418  000a a102          	cp	a,#2
6419  000c 270c          	jreq	L0251
6420  000e 9e            	ld	a,xh
6421  000f a103          	cp	a,#3
6422  0011 2707          	jreq	L0251
6423  0013 ae062e        	ldw	x,#1582
6424  0016 8d740074      	callf	LC013
6425  001a               L0251:
6426                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6428  001a 7b02          	ld	a,(OFST+2,sp)
6429  001c 270a          	jreq	L0351
6430  001e 4a            	dec	a
6431  001f 2707          	jreq	L0351
6432  0021 ae062f        	ldw	x,#1583
6433  0024 8d740074      	callf	LC013
6434  0028               L0351:
6435                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6437  0028 7b01          	ld	a,(OFST+1,sp)
6438  002a 2610          	jrne	L1362
6439                     ; 1588     if (NewState != DISABLE)
6441  002c 7b02          	ld	a,(OFST+2,sp)
6442  002e 2706          	jreq	L3362
6443                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6445  0030 7210525c      	bset	21084,#0
6447  0034 203c          	jra	L7362
6448  0036               L3362:
6449                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6451  0036 7211525c      	bres	21084,#0
6452  003a 2036          	jra	L7362
6453  003c               L1362:
6454                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6456  003c a101          	cp	a,#1
6457  003e 2610          	jrne	L1462
6458                     ; 1601     if (NewState != DISABLE)
6460  0040 7b02          	ld	a,(OFST+2,sp)
6461  0042 2706          	jreq	L3462
6462                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6464  0044 7218525c      	bset	21084,#4
6466  0048 2028          	jra	L7362
6467  004a               L3462:
6468                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6470  004a 7219525c      	bres	21084,#4
6471  004e 2022          	jra	L7362
6472  0050               L1462:
6473                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6475  0050 a102          	cp	a,#2
6476  0052 2610          	jrne	L1562
6477                     ; 1613     if (NewState != DISABLE)
6479  0054 7b02          	ld	a,(OFST+2,sp)
6480  0056 2706          	jreq	L3562
6481                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6483  0058 7210525d      	bset	21085,#0
6485  005c 2014          	jra	L7362
6486  005e               L3562:
6487                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6489  005e 7211525d      	bres	21085,#0
6490  0062 200e          	jra	L7362
6491  0064               L1562:
6492                     ; 1625     if (NewState != DISABLE)
6494  0064 7b02          	ld	a,(OFST+2,sp)
6495  0066 2706          	jreq	L1662
6496                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6498  0068 7218525d      	bset	21085,#4
6500  006c 2004          	jra	L7362
6501  006e               L1662:
6502                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6504  006e 7219525d      	bres	21085,#4
6505  0072               L7362:
6506                     ; 1634 }
6509  0072 85            	popw	x
6510  0073 87            	retf	
6511  0074               LC013:
6512  0074 89            	pushw	x
6513  0075 5f            	clrw	x
6514  0076 89            	pushw	x
6515  0077 ae0000        	ldw	x,#L101
6516  007a 8d000000      	callf	f_assert_failed
6518  007e 5b04          	addw	sp,#4
6519  0080 87            	retf	
6564                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6564                     ; 1648 {
6565                     .text:	section	.text,new
6566  0000               f_TIM1_CCxNCmd:
6568  0000 89            	pushw	x
6569       00000000      OFST:	set	0
6572                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6574  0001 9e            	ld	a,xh
6575  0002 4d            	tnz	a
6576  0003 2710          	jreq	L2451
6577  0005 9e            	ld	a,xh
6578  0006 4a            	dec	a
6579  0007 270c          	jreq	L2451
6580  0009 9e            	ld	a,xh
6581  000a a102          	cp	a,#2
6582  000c 2707          	jreq	L2451
6583  000e ae0672        	ldw	x,#1650
6584  0011 8d5a005a      	callf	LC014
6585  0015               L2451:
6586                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6588  0015 7b02          	ld	a,(OFST+2,sp)
6589  0017 270a          	jreq	L2551
6590  0019 4a            	dec	a
6591  001a 2707          	jreq	L2551
6592  001c ae0673        	ldw	x,#1651
6593  001f 8d5a005a      	callf	LC014
6594  0023               L2551:
6595                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6597  0023 7b01          	ld	a,(OFST+1,sp)
6598  0025 2610          	jrne	L7072
6599                     ; 1656     if (NewState != DISABLE)
6601  0027 7b02          	ld	a,(OFST+2,sp)
6602  0029 2706          	jreq	L1172
6603                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6605  002b 7214525c      	bset	21084,#2
6607  002f 2027          	jra	L5172
6608  0031               L1172:
6609                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6611  0031 7215525c      	bres	21084,#2
6612  0035 2021          	jra	L5172
6613  0037               L7072:
6614                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6616  0037 4a            	dec	a
6617  0038 2610          	jrne	L7172
6618                     ; 1668     if (NewState != DISABLE)
6620  003a 7b02          	ld	a,(OFST+2,sp)
6621  003c 2706          	jreq	L1272
6622                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6624  003e 721c525c      	bset	21084,#6
6626  0042 2014          	jra	L5172
6627  0044               L1272:
6628                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6630  0044 721d525c      	bres	21084,#6
6631  0048 200e          	jra	L5172
6632  004a               L7172:
6633                     ; 1680     if (NewState != DISABLE)
6635  004a 7b02          	ld	a,(OFST+2,sp)
6636  004c 2706          	jreq	L7272
6637                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6639  004e 7214525d      	bset	21085,#2
6641  0052 2004          	jra	L5172
6642  0054               L7272:
6643                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6645  0054 7215525d      	bres	21085,#2
6646  0058               L5172:
6647                     ; 1689 }
6650  0058 85            	popw	x
6651  0059 87            	retf	
6652  005a               LC014:
6653  005a 89            	pushw	x
6654  005b 5f            	clrw	x
6655  005c 89            	pushw	x
6656  005d ae0000        	ldw	x,#L101
6657  0060 8d000000      	callf	f_assert_failed
6659  0064 5b04          	addw	sp,#4
6660  0066 87            	retf	
6705                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6705                     ; 1713 {
6706                     .text:	section	.text,new
6707  0000               f_TIM1_SelectOCxM:
6709  0000 89            	pushw	x
6710       00000000      OFST:	set	0
6713                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6715  0001 9e            	ld	a,xh
6716  0002 4d            	tnz	a
6717  0003 2715          	jreq	L4651
6718  0005 9e            	ld	a,xh
6719  0006 4a            	dec	a
6720  0007 2711          	jreq	L4651
6721  0009 9e            	ld	a,xh
6722  000a a102          	cp	a,#2
6723  000c 270c          	jreq	L4651
6724  000e 9e            	ld	a,xh
6725  000f a103          	cp	a,#3
6726  0011 2707          	jreq	L4651
6727  0013 ae06b3        	ldw	x,#1715
6728  0016 8d8d008d      	callf	LC015
6729  001a               L4651:
6730                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6732  001a 7b02          	ld	a,(OFST+2,sp)
6733  001c 2723          	jreq	L4751
6734  001e a110          	cp	a,#16
6735  0020 271f          	jreq	L4751
6736  0022 a120          	cp	a,#32
6737  0024 271b          	jreq	L4751
6738  0026 a130          	cp	a,#48
6739  0028 2717          	jreq	L4751
6740  002a a160          	cp	a,#96
6741  002c 2713          	jreq	L4751
6742  002e a170          	cp	a,#112
6743  0030 270f          	jreq	L4751
6744  0032 a150          	cp	a,#80
6745  0034 270b          	jreq	L4751
6746  0036 a140          	cp	a,#64
6747  0038 2707          	jreq	L4751
6748  003a ae06b4        	ldw	x,#1716
6749  003d 8d8d008d      	callf	LC015
6750  0041               L4751:
6751                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6753  0041 7b01          	ld	a,(OFST+1,sp)
6754  0043 2610          	jrne	L5572
6755                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6757  0045 7211525c      	bres	21084,#0
6758                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6758                     ; 1725                             | (uint8_t)TIM1_OCMode);
6760  0049 c65258        	ld	a,21080
6761  004c a48f          	and	a,#143
6762  004e 1a02          	or	a,(OFST+2,sp)
6763  0050 c75258        	ld	21080,a
6765  0053 2036          	jra	L7572
6766  0055               L5572:
6767                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6769  0055 a101          	cp	a,#1
6770  0057 2610          	jrne	L1672
6771                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6773  0059 7219525c      	bres	21084,#4
6774                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6774                     ; 1734                             | (uint8_t)TIM1_OCMode);
6776  005d c65259        	ld	a,21081
6777  0060 a48f          	and	a,#143
6778  0062 1a02          	or	a,(OFST+2,sp)
6779  0064 c75259        	ld	21081,a
6781  0067 2022          	jra	L7572
6782  0069               L1672:
6783                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6785  0069 a102          	cp	a,#2
6786  006b 2610          	jrne	L5672
6787                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6789  006d 7211525d      	bres	21085,#0
6790                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6790                     ; 1743                             | (uint8_t)TIM1_OCMode);
6792  0071 c6525a        	ld	a,21082
6793  0074 a48f          	and	a,#143
6794  0076 1a02          	or	a,(OFST+2,sp)
6795  0078 c7525a        	ld	21082,a
6797  007b 200e          	jra	L7572
6798  007d               L5672:
6799                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6801  007d 7219525d      	bres	21085,#4
6802                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6802                     ; 1752                             | (uint8_t)TIM1_OCMode);
6804  0081 c6525b        	ld	a,21083
6805  0084 a48f          	and	a,#143
6806  0086 1a02          	or	a,(OFST+2,sp)
6807  0088 c7525b        	ld	21083,a
6808  008b               L7572:
6809                     ; 1754 }
6812  008b 85            	popw	x
6813  008c 87            	retf	
6814  008d               LC015:
6815  008d 89            	pushw	x
6816  008e 5f            	clrw	x
6817  008f 89            	pushw	x
6818  0090 ae0000        	ldw	x,#L101
6819  0093 8d000000      	callf	f_assert_failed
6821  0097 5b04          	addw	sp,#4
6822  0099 87            	retf	
6855                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6855                     ; 1763 {
6856                     .text:	section	.text,new
6857  0000               f_TIM1_SetCounter:
6861                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6863  0000 9e            	ld	a,xh
6864  0001 c7525e        	ld	21086,a
6865                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6867  0004 9f            	ld	a,xl
6868  0005 c7525f        	ld	21087,a
6869                     ; 1767 }
6872  0008 87            	retf	
6905                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6905                     ; 1776 {
6906                     .text:	section	.text,new
6907  0000               f_TIM1_SetAutoreload:
6911                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6913  0000 9e            	ld	a,xh
6914  0001 c75262        	ld	21090,a
6915                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6917  0004 9f            	ld	a,xl
6918  0005 c75263        	ld	21091,a
6919                     ; 1780  }
6922  0008 87            	retf	
6955                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
6955                     ; 1789 {
6956                     .text:	section	.text,new
6957  0000               f_TIM1_SetCompare1:
6961                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
6963  0000 9e            	ld	a,xh
6964  0001 c75265        	ld	21093,a
6965                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
6967  0004 9f            	ld	a,xl
6968  0005 c75266        	ld	21094,a
6969                     ; 1793 }
6972  0008 87            	retf	
7005                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7005                     ; 1802 {
7006                     .text:	section	.text,new
7007  0000               f_TIM1_SetCompare2:
7011                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7013  0000 9e            	ld	a,xh
7014  0001 c75267        	ld	21095,a
7015                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7017  0004 9f            	ld	a,xl
7018  0005 c75268        	ld	21096,a
7019                     ; 1806 }
7022  0008 87            	retf	
7055                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7055                     ; 1815 {
7056                     .text:	section	.text,new
7057  0000               f_TIM1_SetCompare3:
7061                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7063  0000 9e            	ld	a,xh
7064  0001 c75269        	ld	21097,a
7065                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7067  0004 9f            	ld	a,xl
7068  0005 c7526a        	ld	21098,a
7069                     ; 1819 }
7072  0008 87            	retf	
7105                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7105                     ; 1828 {
7106                     .text:	section	.text,new
7107  0000               f_TIM1_SetCompare4:
7111                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7113  0000 9e            	ld	a,xh
7114  0001 c7526b        	ld	21099,a
7115                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7117  0004 9f            	ld	a,xl
7118  0005 c7526c        	ld	21100,a
7119                     ; 1832 }
7122  0008 87            	retf	
7158                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7158                     ; 1845 {
7159                     .text:	section	.text,new
7160  0000               f_TIM1_SetIC1Prescaler:
7162  0000 88            	push	a
7163       00000000      OFST:	set	0
7166                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7168  0001 4d            	tnz	a
7169  0002 271b          	jreq	L2261
7170  0004 a104          	cp	a,#4
7171  0006 2717          	jreq	L2261
7172  0008 a108          	cp	a,#8
7173  000a 2713          	jreq	L2261
7174  000c a10c          	cp	a,#12
7175  000e 270f          	jreq	L2261
7176  0010 ae0737        	ldw	x,#1847
7177  0013 89            	pushw	x
7178  0014 5f            	clrw	x
7179  0015 89            	pushw	x
7180  0016 ae0000        	ldw	x,#L101
7181  0019 8d000000      	callf	f_assert_failed
7183  001d 5b04          	addw	sp,#4
7184  001f               L2261:
7185                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7185                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7187  001f c65258        	ld	a,21080
7188  0022 a4f3          	and	a,#243
7189  0024 1a01          	or	a,(OFST+1,sp)
7190  0026 c75258        	ld	21080,a
7191                     ; 1852 }
7194  0029 84            	pop	a
7195  002a 87            	retf	
7231                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7231                     ; 1865 {
7232                     .text:	section	.text,new
7233  0000               f_TIM1_SetIC2Prescaler:
7235  0000 88            	push	a
7236       00000000      OFST:	set	0
7239                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7241  0001 4d            	tnz	a
7242  0002 271b          	jreq	L4361
7243  0004 a104          	cp	a,#4
7244  0006 2717          	jreq	L4361
7245  0008 a108          	cp	a,#8
7246  000a 2713          	jreq	L4361
7247  000c a10c          	cp	a,#12
7248  000e 270f          	jreq	L4361
7249  0010 ae074c        	ldw	x,#1868
7250  0013 89            	pushw	x
7251  0014 5f            	clrw	x
7252  0015 89            	pushw	x
7253  0016 ae0000        	ldw	x,#L101
7254  0019 8d000000      	callf	f_assert_failed
7256  001d 5b04          	addw	sp,#4
7257  001f               L4361:
7258                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7258                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7260  001f c65259        	ld	a,21081
7261  0022 a4f3          	and	a,#243
7262  0024 1a01          	or	a,(OFST+1,sp)
7263  0026 c75259        	ld	21081,a
7264                     ; 1873 }
7267  0029 84            	pop	a
7268  002a 87            	retf	
7304                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7304                     ; 1886 {
7305                     .text:	section	.text,new
7306  0000               f_TIM1_SetIC3Prescaler:
7308  0000 88            	push	a
7309       00000000      OFST:	set	0
7312                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7314  0001 4d            	tnz	a
7315  0002 271b          	jreq	L6461
7316  0004 a104          	cp	a,#4
7317  0006 2717          	jreq	L6461
7318  0008 a108          	cp	a,#8
7319  000a 2713          	jreq	L6461
7320  000c a10c          	cp	a,#12
7321  000e 270f          	jreq	L6461
7322  0010 ae0761        	ldw	x,#1889
7323  0013 89            	pushw	x
7324  0014 5f            	clrw	x
7325  0015 89            	pushw	x
7326  0016 ae0000        	ldw	x,#L101
7327  0019 8d000000      	callf	f_assert_failed
7329  001d 5b04          	addw	sp,#4
7330  001f               L6461:
7331                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7331                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7333  001f c6525a        	ld	a,21082
7334  0022 a4f3          	and	a,#243
7335  0024 1a01          	or	a,(OFST+1,sp)
7336  0026 c7525a        	ld	21082,a
7337                     ; 1894 }
7340  0029 84            	pop	a
7341  002a 87            	retf	
7377                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7377                     ; 1907 {
7378                     .text:	section	.text,new
7379  0000               f_TIM1_SetIC4Prescaler:
7381  0000 88            	push	a
7382       00000000      OFST:	set	0
7385                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7387  0001 4d            	tnz	a
7388  0002 271b          	jreq	L0661
7389  0004 a104          	cp	a,#4
7390  0006 2717          	jreq	L0661
7391  0008 a108          	cp	a,#8
7392  000a 2713          	jreq	L0661
7393  000c a10c          	cp	a,#12
7394  000e 270f          	jreq	L0661
7395  0010 ae0776        	ldw	x,#1910
7396  0013 89            	pushw	x
7397  0014 5f            	clrw	x
7398  0015 89            	pushw	x
7399  0016 ae0000        	ldw	x,#L101
7400  0019 8d000000      	callf	f_assert_failed
7402  001d 5b04          	addw	sp,#4
7403  001f               L0661:
7404                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7404                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7406  001f c6525b        	ld	a,21083
7407  0022 a4f3          	and	a,#243
7408  0024 1a01          	or	a,(OFST+1,sp)
7409  0026 c7525b        	ld	21083,a
7410                     ; 1915 }
7413  0029 84            	pop	a
7414  002a 87            	retf	
7465                     ; 1922 uint16_t TIM1_GetCapture1(void)
7465                     ; 1923 {
7466                     .text:	section	.text,new
7467  0000               f_TIM1_GetCapture1:
7469  0000 5204          	subw	sp,#4
7470       00000004      OFST:	set	4
7473                     ; 1926   uint16_t tmpccr1 = 0;
7475                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7479                     ; 1929   tmpccr1h = TIM1->CCR1H;
7481  0002 c65265        	ld	a,21093
7482  0005 6b02          	ld	(OFST-2,sp),a
7484                     ; 1930   tmpccr1l = TIM1->CCR1L;
7486  0007 c65266        	ld	a,21094
7487  000a 6b01          	ld	(OFST-3,sp),a
7489                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7491  000c 5f            	clrw	x
7492  000d 97            	ld	xl,a
7493  000e 1f03          	ldw	(OFST-1,sp),x
7495                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7497  0010 5f            	clrw	x
7498  0011 7b02          	ld	a,(OFST-2,sp)
7499  0013 97            	ld	xl,a
7500  0014 7b04          	ld	a,(OFST+0,sp)
7501  0016 01            	rrwa	x,a
7502  0017 1a03          	or	a,(OFST-1,sp)
7503  0019 01            	rrwa	x,a
7505                     ; 1935   return (uint16_t)tmpccr1;
7509  001a 5b04          	addw	sp,#4
7510  001c 87            	retf	
7561                     ; 1943 uint16_t TIM1_GetCapture2(void)
7561                     ; 1944 {
7562                     .text:	section	.text,new
7563  0000               f_TIM1_GetCapture2:
7565  0000 5204          	subw	sp,#4
7566       00000004      OFST:	set	4
7569                     ; 1947   uint16_t tmpccr2 = 0;
7571                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7575                     ; 1950   tmpccr2h = TIM1->CCR2H;
7577  0002 c65267        	ld	a,21095
7578  0005 6b02          	ld	(OFST-2,sp),a
7580                     ; 1951   tmpccr2l = TIM1->CCR2L;
7582  0007 c65268        	ld	a,21096
7583  000a 6b01          	ld	(OFST-3,sp),a
7585                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7587  000c 5f            	clrw	x
7588  000d 97            	ld	xl,a
7589  000e 1f03          	ldw	(OFST-1,sp),x
7591                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7593  0010 5f            	clrw	x
7594  0011 7b02          	ld	a,(OFST-2,sp)
7595  0013 97            	ld	xl,a
7596  0014 7b04          	ld	a,(OFST+0,sp)
7597  0016 01            	rrwa	x,a
7598  0017 1a03          	or	a,(OFST-1,sp)
7599  0019 01            	rrwa	x,a
7601                     ; 1956   return (uint16_t)tmpccr2;
7605  001a 5b04          	addw	sp,#4
7606  001c 87            	retf	
7657                     ; 1964 uint16_t TIM1_GetCapture3(void)
7657                     ; 1965 {
7658                     .text:	section	.text,new
7659  0000               f_TIM1_GetCapture3:
7661  0000 5204          	subw	sp,#4
7662       00000004      OFST:	set	4
7665                     ; 1967   uint16_t tmpccr3 = 0;
7667                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7671                     ; 1970   tmpccr3h = TIM1->CCR3H;
7673  0002 c65269        	ld	a,21097
7674  0005 6b02          	ld	(OFST-2,sp),a
7676                     ; 1971   tmpccr3l = TIM1->CCR3L;
7678  0007 c6526a        	ld	a,21098
7679  000a 6b01          	ld	(OFST-3,sp),a
7681                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7683  000c 5f            	clrw	x
7684  000d 97            	ld	xl,a
7685  000e 1f03          	ldw	(OFST-1,sp),x
7687                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7689  0010 5f            	clrw	x
7690  0011 7b02          	ld	a,(OFST-2,sp)
7691  0013 97            	ld	xl,a
7692  0014 7b04          	ld	a,(OFST+0,sp)
7693  0016 01            	rrwa	x,a
7694  0017 1a03          	or	a,(OFST-1,sp)
7695  0019 01            	rrwa	x,a
7697                     ; 1976   return (uint16_t)tmpccr3;
7701  001a 5b04          	addw	sp,#4
7702  001c 87            	retf	
7753                     ; 1984 uint16_t TIM1_GetCapture4(void)
7753                     ; 1985 {
7754                     .text:	section	.text,new
7755  0000               f_TIM1_GetCapture4:
7757  0000 5204          	subw	sp,#4
7758       00000004      OFST:	set	4
7761                     ; 1987   uint16_t tmpccr4 = 0;
7763                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7767                     ; 1990   tmpccr4h = TIM1->CCR4H;
7769  0002 c6526b        	ld	a,21099
7770  0005 6b02          	ld	(OFST-2,sp),a
7772                     ; 1991   tmpccr4l = TIM1->CCR4L;
7774  0007 c6526c        	ld	a,21100
7775  000a 6b01          	ld	(OFST-3,sp),a
7777                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7779  000c 5f            	clrw	x
7780  000d 97            	ld	xl,a
7781  000e 1f03          	ldw	(OFST-1,sp),x
7783                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7785  0010 5f            	clrw	x
7786  0011 7b02          	ld	a,(OFST-2,sp)
7787  0013 97            	ld	xl,a
7788  0014 7b04          	ld	a,(OFST+0,sp)
7789  0016 01            	rrwa	x,a
7790  0017 1a03          	or	a,(OFST-1,sp)
7791  0019 01            	rrwa	x,a
7793                     ; 1996   return (uint16_t)tmpccr4;
7797  001a 5b04          	addw	sp,#4
7798  001c 87            	retf	
7831                     ; 2004 uint16_t TIM1_GetCounter(void)
7831                     ; 2005 {
7832                     .text:	section	.text,new
7833  0000               f_TIM1_GetCounter:
7835  0000 89            	pushw	x
7836       00000002      OFST:	set	2
7839                     ; 2006   uint16_t tmpcntr = 0;
7841                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7843  0001 c6525e        	ld	a,21086
7844  0004 97            	ld	xl,a
7845  0005 4f            	clr	a
7846  0006 02            	rlwa	x,a
7847  0007 1f01          	ldw	(OFST-1,sp),x
7849                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7851  0009 c6525f        	ld	a,21087
7852  000c 5f            	clrw	x
7853  000d 97            	ld	xl,a
7854  000e 01            	rrwa	x,a
7855  000f 1a02          	or	a,(OFST+0,sp)
7856  0011 01            	rrwa	x,a
7857  0012 1a01          	or	a,(OFST-1,sp)
7858  0014 01            	rrwa	x,a
7861  0015 5b02          	addw	sp,#2
7862  0017 87            	retf	
7895                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7895                     ; 2020 {
7896                     .text:	section	.text,new
7897  0000               f_TIM1_GetPrescaler:
7899  0000 89            	pushw	x
7900       00000002      OFST:	set	2
7903                     ; 2021   uint16_t temp = 0;
7905                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7907  0001 c65260        	ld	a,21088
7908  0004 97            	ld	xl,a
7909  0005 4f            	clr	a
7910  0006 02            	rlwa	x,a
7911  0007 1f01          	ldw	(OFST-1,sp),x
7913                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7915  0009 c65261        	ld	a,21089
7916  000c 5f            	clrw	x
7917  000d 97            	ld	xl,a
7918  000e 01            	rrwa	x,a
7919  000f 1a02          	or	a,(OFST+0,sp)
7920  0011 01            	rrwa	x,a
7921  0012 1a01          	or	a,(OFST-1,sp)
7922  0014 01            	rrwa	x,a
7925  0015 5b02          	addw	sp,#2
7926  0017 87            	retf	
8100                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8100                     ; 2048 {
8101                     .text:	section	.text,new
8102  0000               f_TIM1_GetFlagStatus:
8104  0000 89            	pushw	x
8105  0001 89            	pushw	x
8106       00000002      OFST:	set	2
8109                     ; 2049   FlagStatus bitstatus = RESET;
8111                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8115                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8117  0002 a30001        	cpw	x,#1
8118  0005 2746          	jreq	L6071
8119  0007 a30002        	cpw	x,#2
8120  000a 2741          	jreq	L6071
8121  000c a30004        	cpw	x,#4
8122  000f 273c          	jreq	L6071
8123  0011 a30008        	cpw	x,#8
8124  0014 2737          	jreq	L6071
8125  0016 a30010        	cpw	x,#16
8126  0019 2732          	jreq	L6071
8127  001b a30020        	cpw	x,#32
8128  001e 272d          	jreq	L6071
8129  0020 a30040        	cpw	x,#64
8130  0023 2728          	jreq	L6071
8131  0025 a30080        	cpw	x,#128
8132  0028 2723          	jreq	L6071
8133  002a a30200        	cpw	x,#512
8134  002d 271e          	jreq	L6071
8135  002f a30400        	cpw	x,#1024
8136  0032 2719          	jreq	L6071
8137  0034 a30800        	cpw	x,#2048
8138  0037 2714          	jreq	L6071
8139  0039 a31000        	cpw	x,#4096
8140  003c 270f          	jreq	L6071
8141  003e ae0805        	ldw	x,#2053
8142  0041 89            	pushw	x
8143  0042 5f            	clrw	x
8144  0043 89            	pushw	x
8145  0044 ae0000        	ldw	x,#L101
8146  0047 8d000000      	callf	f_assert_failed
8148  004b 5b04          	addw	sp,#4
8149  004d               L6071:
8150                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8152  004d c65255        	ld	a,21077
8153  0050 1404          	and	a,(OFST+2,sp)
8154  0052 6b01          	ld	(OFST-1,sp),a
8156                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8158  0054 7b03          	ld	a,(OFST+1,sp)
8159  0056 6b02          	ld	(OFST+0,sp),a
8161                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8163  0058 c45256        	and	a,21078
8164  005b 1a01          	or	a,(OFST-1,sp)
8165  005d 2702          	jreq	L7643
8166                     ; 2060     bitstatus = SET;
8168  005f a601          	ld	a,#1
8171  0061               L7643:
8172                     ; 2064     bitstatus = RESET;
8175                     ; 2066   return (FlagStatus)(bitstatus);
8179  0061 5b04          	addw	sp,#4
8180  0063 87            	retf	
8215                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8215                     ; 2088 {
8216                     .text:	section	.text,new
8217  0000               f_TIM1_ClearFlag:
8219  0000 89            	pushw	x
8220       00000000      OFST:	set	0
8223                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8225  0001 01            	rrwa	x,a
8226  0002 9f            	ld	a,xl
8227  0003 a4e1          	and	a,#225
8228  0005 97            	ld	xl,a
8229  0006 4f            	clr	a
8230  0007 02            	rlwa	x,a
8231  0008 5d            	tnzw	x
8232  0009 2604          	jrne	L4171
8233  000b 1e01          	ldw	x,(OFST+1,sp)
8234  000d 260f          	jrne	L6171
8235  000f               L4171:
8236  000f ae082a        	ldw	x,#2090
8237  0012 89            	pushw	x
8238  0013 5f            	clrw	x
8239  0014 89            	pushw	x
8240  0015 ae0000        	ldw	x,#L101
8241  0018 8d000000      	callf	f_assert_failed
8243  001c 5b04          	addw	sp,#4
8244  001e               L6171:
8245                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8247  001e 7b02          	ld	a,(OFST+2,sp)
8248  0020 43            	cpl	a
8249  0021 c75255        	ld	21077,a
8250                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8250                     ; 2095                         (uint8_t)0x1E);
8252  0024 7b01          	ld	a,(OFST+1,sp)
8253  0026 43            	cpl	a
8254  0027 a41e          	and	a,#30
8255  0029 c75256        	ld	21078,a
8256                     ; 2096 }
8259  002c 85            	popw	x
8260  002d 87            	retf	
8324                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8324                     ; 2113 {
8325                     .text:	section	.text,new
8326  0000               f_TIM1_GetITStatus:
8328  0000 88            	push	a
8329  0001 89            	pushw	x
8330       00000002      OFST:	set	2
8333                     ; 2114   ITStatus bitstatus = RESET;
8335                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8339                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8341  0002 a101          	cp	a,#1
8342  0004 272b          	jreq	L0371
8343  0006 a102          	cp	a,#2
8344  0008 2727          	jreq	L0371
8345  000a a104          	cp	a,#4
8346  000c 2723          	jreq	L0371
8347  000e a108          	cp	a,#8
8348  0010 271f          	jreq	L0371
8349  0012 a110          	cp	a,#16
8350  0014 271b          	jreq	L0371
8351  0016 a120          	cp	a,#32
8352  0018 2717          	jreq	L0371
8353  001a a140          	cp	a,#64
8354  001c 2713          	jreq	L0371
8355  001e a180          	cp	a,#128
8356  0020 270f          	jreq	L0371
8357  0022 ae0846        	ldw	x,#2118
8358  0025 89            	pushw	x
8359  0026 5f            	clrw	x
8360  0027 89            	pushw	x
8361  0028 ae0000        	ldw	x,#L101
8362  002b 8d000000      	callf	f_assert_failed
8364  002f 5b04          	addw	sp,#4
8365  0031               L0371:
8366                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8368  0031 c65255        	ld	a,21077
8369  0034 1403          	and	a,(OFST+1,sp)
8370  0036 6b01          	ld	(OFST-1,sp),a
8372                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8374  0038 c65254        	ld	a,21076
8375  003b 1403          	and	a,(OFST+1,sp)
8376  003d 6b02          	ld	(OFST+0,sp),a
8378                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8380  003f 7b01          	ld	a,(OFST-1,sp)
8381  0041 2708          	jreq	L3453
8383  0043 7b02          	ld	a,(OFST+0,sp)
8384  0045 2704          	jreq	L3453
8385                     ; 2126     bitstatus = SET;
8387  0047 a601          	ld	a,#1
8390  0049 2001          	jra	L5453
8391  004b               L3453:
8392                     ; 2130     bitstatus = RESET;
8394  004b 4f            	clr	a
8396  004c               L5453:
8397                     ; 2132   return (ITStatus)(bitstatus);
8401  004c 5b03          	addw	sp,#3
8402  004e 87            	retf	
8438                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8438                     ; 2150 {
8439                     .text:	section	.text,new
8440  0000               f_TIM1_ClearITPendingBit:
8442  0000 88            	push	a
8443       00000000      OFST:	set	0
8446                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8448  0001 4d            	tnz	a
8449  0002 260f          	jrne	L0471
8450  0004 ae0868        	ldw	x,#2152
8451  0007 89            	pushw	x
8452  0008 5f            	clrw	x
8453  0009 89            	pushw	x
8454  000a ae0000        	ldw	x,#L101
8455  000d 8d000000      	callf	f_assert_failed
8457  0011 5b04          	addw	sp,#4
8458  0013               L0471:
8459                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8461  0013 7b01          	ld	a,(OFST+1,sp)
8462  0015 43            	cpl	a
8463  0016 c75255        	ld	21077,a
8464                     ; 2156 }
8467  0019 84            	pop	a
8468  001a 87            	retf	
8519                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8519                     ; 2175                        uint8_t TIM1_ICSelection,
8519                     ; 2176                        uint8_t TIM1_ICFilter)
8519                     ; 2177 {
8520                     .text:	section	.text,new
8521  0000               L3f_TI1_Config:
8523  0000 89            	pushw	x
8524  0001 88            	push	a
8525       00000001      OFST:	set	1
8528                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8530  0002 7211525c      	bres	21084,#0
8531                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8531                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8533  0006 7b07          	ld	a,(OFST+6,sp)
8534  0008 97            	ld	xl,a
8535  0009 a610          	ld	a,#16
8536  000b 42            	mul	x,a
8537  000c 9f            	ld	a,xl
8538  000d 1a03          	or	a,(OFST+2,sp)
8539  000f 6b01          	ld	(OFST+0,sp),a
8541  0011 c65258        	ld	a,21080
8542  0014 a40c          	and	a,#12
8543  0016 1a01          	or	a,(OFST+0,sp)
8544  0018 c75258        	ld	21080,a
8545                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8547  001b 7b02          	ld	a,(OFST+1,sp)
8548  001d 2706          	jreq	L3163
8549                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8551  001f 7212525c      	bset	21084,#1
8553  0023 2004          	jra	L5163
8554  0025               L3163:
8555                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8557  0025 7213525c      	bres	21084,#1
8558  0029               L5163:
8559                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8561  0029 7210525c      	bset	21084,#0
8562                     ; 2197 }
8565  002d 5b03          	addw	sp,#3
8566  002f 87            	retf	
8617                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8617                     ; 2216                        uint8_t TIM1_ICSelection,
8617                     ; 2217                        uint8_t TIM1_ICFilter)
8617                     ; 2218 {
8618                     .text:	section	.text,new
8619  0000               L5f_TI2_Config:
8621  0000 89            	pushw	x
8622  0001 88            	push	a
8623       00000001      OFST:	set	1
8626                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8628  0002 7219525c      	bres	21084,#4
8629                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8629                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8631  0006 7b07          	ld	a,(OFST+6,sp)
8632  0008 97            	ld	xl,a
8633  0009 a610          	ld	a,#16
8634  000b 42            	mul	x,a
8635  000c 9f            	ld	a,xl
8636  000d 1a03          	or	a,(OFST+2,sp)
8637  000f 6b01          	ld	(OFST+0,sp),a
8639  0011 c65259        	ld	a,21081
8640  0014 a40c          	and	a,#12
8641  0016 1a01          	or	a,(OFST+0,sp)
8642  0018 c75259        	ld	21081,a
8643                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8645  001b 7b02          	ld	a,(OFST+1,sp)
8646  001d 2706          	jreq	L5463
8647                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8649  001f 721a525c      	bset	21084,#5
8651  0023 2004          	jra	L7463
8652  0025               L5463:
8653                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8655  0025 721b525c      	bres	21084,#5
8656  0029               L7463:
8657                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8659  0029 7218525c      	bset	21084,#4
8660                     ; 2236 }
8663  002d 5b03          	addw	sp,#3
8664  002f 87            	retf	
8715                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8715                     ; 2255                        uint8_t TIM1_ICSelection,
8715                     ; 2256                        uint8_t TIM1_ICFilter)
8715                     ; 2257 {
8716                     .text:	section	.text,new
8717  0000               L7f_TI3_Config:
8719  0000 89            	pushw	x
8720  0001 88            	push	a
8721       00000001      OFST:	set	1
8724                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8726  0002 7211525d      	bres	21085,#0
8727                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8727                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8729  0006 7b07          	ld	a,(OFST+6,sp)
8730  0008 97            	ld	xl,a
8731  0009 a610          	ld	a,#16
8732  000b 42            	mul	x,a
8733  000c 9f            	ld	a,xl
8734  000d 1a03          	or	a,(OFST+2,sp)
8735  000f 6b01          	ld	(OFST+0,sp),a
8737  0011 c6525a        	ld	a,21082
8738  0014 a40c          	and	a,#12
8739  0016 1a01          	or	a,(OFST+0,sp)
8740  0018 c7525a        	ld	21082,a
8741                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8743  001b 7b02          	ld	a,(OFST+1,sp)
8744  001d 2706          	jreq	L7763
8745                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8747  001f 7212525d      	bset	21085,#1
8749  0023 2004          	jra	L1073
8750  0025               L7763:
8751                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8753  0025 7213525d      	bres	21085,#1
8754  0029               L1073:
8755                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8757  0029 7210525d      	bset	21085,#0
8758                     ; 2276 }
8761  002d 5b03          	addw	sp,#3
8762  002f 87            	retf	
8813                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8813                     ; 2295                        uint8_t TIM1_ICSelection,
8813                     ; 2296                        uint8_t TIM1_ICFilter)
8813                     ; 2297 {
8814                     .text:	section	.text,new
8815  0000               L11f_TI4_Config:
8817  0000 89            	pushw	x
8818  0001 88            	push	a
8819       00000001      OFST:	set	1
8822                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8824  0002 7219525d      	bres	21085,#4
8825                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8825                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8827  0006 7b07          	ld	a,(OFST+6,sp)
8828  0008 97            	ld	xl,a
8829  0009 a610          	ld	a,#16
8830  000b 42            	mul	x,a
8831  000c 9f            	ld	a,xl
8832  000d 1a03          	or	a,(OFST+2,sp)
8833  000f 6b01          	ld	(OFST+0,sp),a
8835  0011 c6525b        	ld	a,21083
8836  0014 a40c          	and	a,#12
8837  0016 1a01          	or	a,(OFST+0,sp)
8838  0018 c7525b        	ld	21083,a
8839                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8841  001b 7b02          	ld	a,(OFST+1,sp)
8842  001d 2706          	jreq	L1373
8843                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8845  001f 721a525d      	bset	21085,#5
8847  0023 2004          	jra	L3373
8848  0025               L1373:
8849                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8851  0025 721b525d      	bres	21085,#5
8852  0029               L3373:
8853                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8855  0029 7218525d      	bset	21085,#4
8856                     ; 2317 }
8859  002d 5b03          	addw	sp,#3
8860  002f 87            	retf	
8872                     	xdef	f_TIM1_ClearITPendingBit
8873                     	xdef	f_TIM1_GetITStatus
8874                     	xdef	f_TIM1_ClearFlag
8875                     	xdef	f_TIM1_GetFlagStatus
8876                     	xdef	f_TIM1_GetPrescaler
8877                     	xdef	f_TIM1_GetCounter
8878                     	xdef	f_TIM1_GetCapture4
8879                     	xdef	f_TIM1_GetCapture3
8880                     	xdef	f_TIM1_GetCapture2
8881                     	xdef	f_TIM1_GetCapture1
8882                     	xdef	f_TIM1_SetIC4Prescaler
8883                     	xdef	f_TIM1_SetIC3Prescaler
8884                     	xdef	f_TIM1_SetIC2Prescaler
8885                     	xdef	f_TIM1_SetIC1Prescaler
8886                     	xdef	f_TIM1_SetCompare4
8887                     	xdef	f_TIM1_SetCompare3
8888                     	xdef	f_TIM1_SetCompare2
8889                     	xdef	f_TIM1_SetCompare1
8890                     	xdef	f_TIM1_SetAutoreload
8891                     	xdef	f_TIM1_SetCounter
8892                     	xdef	f_TIM1_SelectOCxM
8893                     	xdef	f_TIM1_CCxNCmd
8894                     	xdef	f_TIM1_CCxCmd
8895                     	xdef	f_TIM1_OC4PolarityConfig
8896                     	xdef	f_TIM1_OC3NPolarityConfig
8897                     	xdef	f_TIM1_OC3PolarityConfig
8898                     	xdef	f_TIM1_OC2NPolarityConfig
8899                     	xdef	f_TIM1_OC2PolarityConfig
8900                     	xdef	f_TIM1_OC1NPolarityConfig
8901                     	xdef	f_TIM1_OC1PolarityConfig
8902                     	xdef	f_TIM1_GenerateEvent
8903                     	xdef	f_TIM1_OC4FastConfig
8904                     	xdef	f_TIM1_OC3FastConfig
8905                     	xdef	f_TIM1_OC2FastConfig
8906                     	xdef	f_TIM1_OC1FastConfig
8907                     	xdef	f_TIM1_OC4PreloadConfig
8908                     	xdef	f_TIM1_OC3PreloadConfig
8909                     	xdef	f_TIM1_OC2PreloadConfig
8910                     	xdef	f_TIM1_OC1PreloadConfig
8911                     	xdef	f_TIM1_CCPreloadControl
8912                     	xdef	f_TIM1_SelectCOM
8913                     	xdef	f_TIM1_ARRPreloadConfig
8914                     	xdef	f_TIM1_ForcedOC4Config
8915                     	xdef	f_TIM1_ForcedOC3Config
8916                     	xdef	f_TIM1_ForcedOC2Config
8917                     	xdef	f_TIM1_ForcedOC1Config
8918                     	xdef	f_TIM1_CounterModeConfig
8919                     	xdef	f_TIM1_PrescalerConfig
8920                     	xdef	f_TIM1_EncoderInterfaceConfig
8921                     	xdef	f_TIM1_SelectMasterSlaveMode
8922                     	xdef	f_TIM1_SelectSlaveMode
8923                     	xdef	f_TIM1_SelectOutputTrigger
8924                     	xdef	f_TIM1_SelectOnePulseMode
8925                     	xdef	f_TIM1_SelectHallSensor
8926                     	xdef	f_TIM1_UpdateRequestConfig
8927                     	xdef	f_TIM1_UpdateDisableConfig
8928                     	xdef	f_TIM1_SelectInputTrigger
8929                     	xdef	f_TIM1_TIxExternalClockConfig
8930                     	xdef	f_TIM1_ETRConfig
8931                     	xdef	f_TIM1_ETRClockMode2Config
8932                     	xdef	f_TIM1_ETRClockMode1Config
8933                     	xdef	f_TIM1_InternalClockConfig
8934                     	xdef	f_TIM1_ITConfig
8935                     	xdef	f_TIM1_CtrlPWMOutputs
8936                     	xdef	f_TIM1_Cmd
8937                     	xdef	f_TIM1_PWMIConfig
8938                     	xdef	f_TIM1_ICInit
8939                     	xdef	f_TIM1_BDTRConfig
8940                     	xdef	f_TIM1_OC4Init
8941                     	xdef	f_TIM1_OC3Init
8942                     	xdef	f_TIM1_OC2Init
8943                     	xdef	f_TIM1_OC1Init
8944                     	xdef	f_TIM1_TimeBaseInit
8945                     	xdef	f_TIM1_DeInit
8946                     	xref	f_assert_failed
8947                     .const:	section	.text
8948  0000               L101:
8949  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
8950  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
8951  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
8952  0036 5f74696d312e  	dc.b	"_tim1.c",0
8972                     	end
