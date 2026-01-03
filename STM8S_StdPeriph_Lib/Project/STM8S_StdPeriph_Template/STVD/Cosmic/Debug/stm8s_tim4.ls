   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  49                     ; 49 void TIM4_DeInit(void)
  49                     ; 50 {
  50                     .text:	section	.text,new
  51  0000               f_TIM4_DeInit:
  55                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  57  0000 725f5340      	clr	21312
  58                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  60  0004 725f5341      	clr	21313
  61                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  63  0008 725f5344      	clr	21316
  64                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  66  000c 725f5345      	clr	21317
  67                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  69  0010 35ff5346      	mov	21318,#255
  70                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  72  0014 725f5342      	clr	21314
  73                     ; 57 }
  76  0018 87            	retf	
 182                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 182                     ; 66 {
 183                     .text:	section	.text,new
 184  0000               f_TIM4_TimeBaseInit:
 186  0000 89            	pushw	x
 187       00000000      OFST:	set	0
 190                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 192  0001 9e            	ld	a,xh
 193  0002 4d            	tnz	a
 194  0003 2731          	jreq	L41
 195  0005 9e            	ld	a,xh
 196  0006 4a            	dec	a
 197  0007 272d          	jreq	L41
 198  0009 9e            	ld	a,xh
 199  000a a102          	cp	a,#2
 200  000c 2728          	jreq	L41
 201  000e 9e            	ld	a,xh
 202  000f a103          	cp	a,#3
 203  0011 2723          	jreq	L41
 204  0013 9e            	ld	a,xh
 205  0014 a104          	cp	a,#4
 206  0016 271e          	jreq	L41
 207  0018 9e            	ld	a,xh
 208  0019 a105          	cp	a,#5
 209  001b 2719          	jreq	L41
 210  001d 9e            	ld	a,xh
 211  001e a106          	cp	a,#6
 212  0020 2714          	jreq	L41
 213  0022 9e            	ld	a,xh
 214  0023 a107          	cp	a,#7
 215  0025 270f          	jreq	L41
 216  0027 ae0044        	ldw	x,#68
 217  002a 89            	pushw	x
 218  002b 5f            	clrw	x
 219  002c 89            	pushw	x
 220  002d ae0000        	ldw	x,#L76
 221  0030 8d000000      	callf	f_assert_failed
 223  0034 5b04          	addw	sp,#4
 224  0036               L41:
 225                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 227  0036 7b01          	ld	a,(OFST+1,sp)
 228  0038 c75345        	ld	21317,a
 229                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 231  003b 7b02          	ld	a,(OFST+2,sp)
 232  003d c75346        	ld	21318,a
 233                     ; 73 }
 236  0040 85            	popw	x
 237  0041 87            	retf	
 292                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 292                     ; 82 {
 293                     .text:	section	.text,new
 294  0000               f_TIM4_Cmd:
 296  0000 88            	push	a
 297       00000000      OFST:	set	0
 300                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 302  0001 4d            	tnz	a
 303  0002 2712          	jreq	L62
 304  0004 4a            	dec	a
 305  0005 270f          	jreq	L62
 306  0007 ae0054        	ldw	x,#84
 307  000a 89            	pushw	x
 308  000b 5f            	clrw	x
 309  000c 89            	pushw	x
 310  000d ae0000        	ldw	x,#L76
 311  0010 8d000000      	callf	f_assert_failed
 313  0014 5b04          	addw	sp,#4
 314  0016               L62:
 315                     ; 87   if (NewState != DISABLE)
 317  0016 7b01          	ld	a,(OFST+1,sp)
 318  0018 2706          	jreq	L711
 319                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 321  001a 72105340      	bset	21312,#0
 323  001e 2004          	jra	L121
 324  0020               L711:
 325                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 327  0020 72115340      	bres	21312,#0
 328  0024               L121:
 329                     ; 95 }
 332  0024 84            	pop	a
 333  0025 87            	retf	
 391                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 391                     ; 108 {
 392                     .text:	section	.text,new
 393  0000               f_TIM4_ITConfig:
 395  0000 89            	pushw	x
 396       00000000      OFST:	set	0
 399                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 401  0001 9e            	ld	a,xh
 402  0002 4a            	dec	a
 403  0003 2707          	jreq	L63
 404  0005 ae006e        	ldw	x,#110
 405  0008 8d300030      	callf	LC001
 406  000c               L63:
 407                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 409  000c 7b02          	ld	a,(OFST+2,sp)
 410  000e 270a          	jreq	L64
 411  0010 4a            	dec	a
 412  0011 2707          	jreq	L64
 413  0013 ae006f        	ldw	x,#111
 414  0016 8d300030      	callf	LC001
 415  001a               L64:
 416                     ; 113   if (NewState != DISABLE)
 418  001a 7b02          	ld	a,(OFST+2,sp)
 419  001c 2707          	jreq	L351
 420                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 422  001e c65341        	ld	a,21313
 423  0021 1a01          	or	a,(OFST+1,sp)
 425  0023 2006          	jra	L551
 426  0025               L351:
 427                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 429  0025 7b01          	ld	a,(OFST+1,sp)
 430  0027 43            	cpl	a
 431  0028 c45341        	and	a,21313
 432  002b               L551:
 433  002b c75341        	ld	21313,a
 434                     ; 123 }
 437  002e 85            	popw	x
 438  002f 87            	retf	
 439  0030               LC001:
 440  0030 89            	pushw	x
 441  0031 5f            	clrw	x
 442  0032 89            	pushw	x
 443  0033 ae0000        	ldw	x,#L76
 444  0036 8d000000      	callf	f_assert_failed
 446  003a 5b04          	addw	sp,#4
 447  003c 87            	retf	
 483                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 483                     ; 132 {
 484                     .text:	section	.text,new
 485  0000               f_TIM4_UpdateDisableConfig:
 487  0000 88            	push	a
 488       00000000      OFST:	set	0
 491                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 493  0001 4d            	tnz	a
 494  0002 2712          	jreq	L06
 495  0004 4a            	dec	a
 496  0005 270f          	jreq	L06
 497  0007 ae0086        	ldw	x,#134
 498  000a 89            	pushw	x
 499  000b 5f            	clrw	x
 500  000c 89            	pushw	x
 501  000d ae0000        	ldw	x,#L76
 502  0010 8d000000      	callf	f_assert_failed
 504  0014 5b04          	addw	sp,#4
 505  0016               L06:
 506                     ; 137   if (NewState != DISABLE)
 508  0016 7b01          	ld	a,(OFST+1,sp)
 509  0018 2706          	jreq	L571
 510                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 512  001a 72125340      	bset	21312,#1
 514  001e 2004          	jra	L771
 515  0020               L571:
 516                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 518  0020 72135340      	bres	21312,#1
 519  0024               L771:
 520                     ; 145 }
 523  0024 84            	pop	a
 524  0025 87            	retf	
 582                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 582                     ; 156 {
 583                     .text:	section	.text,new
 584  0000               f_TIM4_UpdateRequestConfig:
 586  0000 88            	push	a
 587       00000000      OFST:	set	0
 590                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 592  0001 4d            	tnz	a
 593  0002 2712          	jreq	L27
 594  0004 4a            	dec	a
 595  0005 270f          	jreq	L27
 596  0007 ae009e        	ldw	x,#158
 597  000a 89            	pushw	x
 598  000b 5f            	clrw	x
 599  000c 89            	pushw	x
 600  000d ae0000        	ldw	x,#L76
 601  0010 8d000000      	callf	f_assert_failed
 603  0014 5b04          	addw	sp,#4
 604  0016               L27:
 605                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 607  0016 7b01          	ld	a,(OFST+1,sp)
 608  0018 2706          	jreq	L722
 609                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 611  001a 72145340      	bset	21312,#2
 613  001e 2004          	jra	L132
 614  0020               L722:
 615                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 617  0020 72155340      	bres	21312,#2
 618  0024               L132:
 619                     ; 169 }
 622  0024 84            	pop	a
 623  0025 87            	retf	
 680                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 680                     ; 180 {
 681                     .text:	section	.text,new
 682  0000               f_TIM4_SelectOnePulseMode:
 684  0000 88            	push	a
 685       00000000      OFST:	set	0
 688                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 690  0001 a101          	cp	a,#1
 691  0003 2712          	jreq	L401
 692  0005 4d            	tnz	a
 693  0006 270f          	jreq	L401
 694  0008 ae00b6        	ldw	x,#182
 695  000b 89            	pushw	x
 696  000c 5f            	clrw	x
 697  000d 89            	pushw	x
 698  000e ae0000        	ldw	x,#L76
 699  0011 8d000000      	callf	f_assert_failed
 701  0015 5b04          	addw	sp,#4
 702  0017               L401:
 703                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 705  0017 7b01          	ld	a,(OFST+1,sp)
 706  0019 2706          	jreq	L162
 707                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 709  001b 72165340      	bset	21312,#3
 711  001f 2004          	jra	L362
 712  0021               L162:
 713                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 715  0021 72175340      	bres	21312,#3
 716  0025               L362:
 717                     ; 193 }
 720  0025 84            	pop	a
 721  0026 87            	retf	
 789                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 789                     ; 216 {
 790                     .text:	section	.text,new
 791  0000               f_TIM4_PrescalerConfig:
 793  0000 89            	pushw	x
 794       00000000      OFST:	set	0
 797                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 799  0001 9f            	ld	a,xl
 800  0002 4d            	tnz	a
 801  0003 270b          	jreq	L611
 802  0005 9f            	ld	a,xl
 803  0006 4a            	dec	a
 804  0007 2707          	jreq	L611
 805  0009 ae00da        	ldw	x,#218
 806  000c 8d430043      	callf	LC002
 807  0010               L611:
 808                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 810  0010 7b01          	ld	a,(OFST+1,sp)
 811  0012 2725          	jreq	L621
 812  0014 a101          	cp	a,#1
 813  0016 2721          	jreq	L621
 814  0018 a102          	cp	a,#2
 815  001a 271d          	jreq	L621
 816  001c a103          	cp	a,#3
 817  001e 2719          	jreq	L621
 818  0020 a104          	cp	a,#4
 819  0022 2715          	jreq	L621
 820  0024 a105          	cp	a,#5
 821  0026 2711          	jreq	L621
 822  0028 a106          	cp	a,#6
 823  002a 270d          	jreq	L621
 824  002c a107          	cp	a,#7
 825  002e 2709          	jreq	L621
 826  0030 ae00db        	ldw	x,#219
 827  0033 8d430043      	callf	LC002
 828  0037 7b01          	ld	a,(OFST+1,sp)
 829  0039               L621:
 830                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 832  0039 c75345        	ld	21317,a
 833                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 835  003c 7b02          	ld	a,(OFST+2,sp)
 836  003e c75343        	ld	21315,a
 837                     ; 226 }
 840  0041 85            	popw	x
 841  0042 87            	retf	
 842  0043               LC002:
 843  0043 89            	pushw	x
 844  0044 5f            	clrw	x
 845  0045 89            	pushw	x
 846  0046 ae0000        	ldw	x,#L76
 847  0049 8d000000      	callf	f_assert_failed
 849  004d 5b04          	addw	sp,#4
 850  004f 87            	retf	
 886                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 886                     ; 235 {
 887                     .text:	section	.text,new
 888  0000               f_TIM4_ARRPreloadConfig:
 890  0000 88            	push	a
 891       00000000      OFST:	set	0
 894                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 896  0001 4d            	tnz	a
 897  0002 2712          	jreq	L041
 898  0004 4a            	dec	a
 899  0005 270f          	jreq	L041
 900  0007 ae00ed        	ldw	x,#237
 901  000a 89            	pushw	x
 902  000b 5f            	clrw	x
 903  000c 89            	pushw	x
 904  000d ae0000        	ldw	x,#L76
 905  0010 8d000000      	callf	f_assert_failed
 907  0014 5b04          	addw	sp,#4
 908  0016               L041:
 909                     ; 240   if (NewState != DISABLE)
 911  0016 7b01          	ld	a,(OFST+1,sp)
 912  0018 2706          	jreq	L533
 913                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 915  001a 721e5340      	bset	21312,#7
 917  001e 2004          	jra	L733
 918  0020               L533:
 919                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 921  0020 721f5340      	bres	21312,#7
 922  0024               L733:
 923                     ; 248 }
 926  0024 84            	pop	a
 927  0025 87            	retf	
 976                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 976                     ; 258 {
 977                     .text:	section	.text,new
 978  0000               f_TIM4_GenerateEvent:
 980  0000 88            	push	a
 981       00000000      OFST:	set	0
 984                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 986  0001 4a            	dec	a
 987  0002 270f          	jreq	L051
 988  0004 ae0104        	ldw	x,#260
 989  0007 89            	pushw	x
 990  0008 5f            	clrw	x
 991  0009 89            	pushw	x
 992  000a ae0000        	ldw	x,#L76
 993  000d 8d000000      	callf	f_assert_failed
 995  0011 5b04          	addw	sp,#4
 996  0013               L051:
 997                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
 999  0013 7b01          	ld	a,(OFST+1,sp)
1000  0015 c75343        	ld	21315,a
1001                     ; 264 }
1004  0018 84            	pop	a
1005  0019 87            	retf	
1038                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1038                     ; 273 {
1039                     .text:	section	.text,new
1040  0000               f_TIM4_SetCounter:
1044                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1046  0000 c75344        	ld	21316,a
1047                     ; 276 }
1050  0003 87            	retf	
1083                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1083                     ; 285 {
1084                     .text:	section	.text,new
1085  0000               f_TIM4_SetAutoreload:
1089                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1091  0000 c75346        	ld	21318,a
1092                     ; 288 }
1095  0003 87            	retf	
1117                     ; 295 uint8_t TIM4_GetCounter(void)
1117                     ; 296 {
1118                     .text:	section	.text,new
1119  0000               f_TIM4_GetCounter:
1123                     ; 298   return (uint8_t)(TIM4->CNTR);
1125  0000 c65344        	ld	a,21316
1128  0003 87            	retf	
1151                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1151                     ; 307 {
1152                     .text:	section	.text,new
1153  0000               f_TIM4_GetPrescaler:
1157                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1159  0000 c65345        	ld	a,21317
1162  0003 87            	retf	
1241                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1241                     ; 320 {
1242                     .text:	section	.text,new
1243  0000               f_TIM4_GetFlagStatus:
1245  0000 88            	push	a
1246  0001 88            	push	a
1247       00000001      OFST:	set	1
1250                     ; 321   FlagStatus bitstatus = RESET;
1252                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1254  0002 4a            	dec	a
1255  0003 270f          	jreq	L071
1256  0005 ae0144        	ldw	x,#324
1257  0008 89            	pushw	x
1258  0009 5f            	clrw	x
1259  000a 89            	pushw	x
1260  000b ae0000        	ldw	x,#L76
1261  000e 8d000000      	callf	f_assert_failed
1263  0012 5b04          	addw	sp,#4
1264  0014               L071:
1265                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1267  0014 c65342        	ld	a,21314
1268  0017 1502          	bcp	a,(OFST+1,sp)
1269  0019 2704          	jreq	L105
1270                     ; 328     bitstatus = SET;
1272  001b a601          	ld	a,#1
1275  001d 2001          	jra	L305
1276  001f               L105:
1277                     ; 332     bitstatus = RESET;
1279  001f 4f            	clr	a
1281  0020               L305:
1282                     ; 334   return ((FlagStatus)bitstatus);
1286  0020 85            	popw	x
1287  0021 87            	retf	
1322                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1322                     ; 345 {
1323                     .text:	section	.text,new
1324  0000               f_TIM4_ClearFlag:
1326  0000 88            	push	a
1327       00000000      OFST:	set	0
1330                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1332  0001 4a            	dec	a
1333  0002 270f          	jreq	L002
1334  0004 ae015b        	ldw	x,#347
1335  0007 89            	pushw	x
1336  0008 5f            	clrw	x
1337  0009 89            	pushw	x
1338  000a ae0000        	ldw	x,#L76
1339  000d 8d000000      	callf	f_assert_failed
1341  0011 5b04          	addw	sp,#4
1342  0013               L002:
1343                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1345  0013 7b01          	ld	a,(OFST+1,sp)
1346  0015 43            	cpl	a
1347  0016 c75342        	ld	21314,a
1348                     ; 351 }
1351  0019 84            	pop	a
1352  001a 87            	retf	
1416                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1416                     ; 361 {
1417                     .text:	section	.text,new
1418  0000               f_TIM4_GetITStatus:
1420  0000 88            	push	a
1421  0001 89            	pushw	x
1422       00000002      OFST:	set	2
1425                     ; 362   ITStatus bitstatus = RESET;
1427                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1431                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1433  0002 4a            	dec	a
1434  0003 270f          	jreq	L012
1435  0005 ae016f        	ldw	x,#367
1436  0008 89            	pushw	x
1437  0009 5f            	clrw	x
1438  000a 89            	pushw	x
1439  000b ae0000        	ldw	x,#L76
1440  000e 8d000000      	callf	f_assert_failed
1442  0012 5b04          	addw	sp,#4
1443  0014               L012:
1444                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1446  0014 c65342        	ld	a,21314
1447  0017 1403          	and	a,(OFST+1,sp)
1448  0019 6b01          	ld	(OFST-1,sp),a
1450                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1452  001b c65341        	ld	a,21313
1453  001e 1403          	and	a,(OFST+1,sp)
1454  0020 6b02          	ld	(OFST+0,sp),a
1456                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1458  0022 7b01          	ld	a,(OFST-1,sp)
1459  0024 2708          	jreq	L555
1461  0026 7b02          	ld	a,(OFST+0,sp)
1462  0028 2704          	jreq	L555
1463                     ; 375     bitstatus = (ITStatus)SET;
1465  002a a601          	ld	a,#1
1468  002c 2001          	jra	L755
1469  002e               L555:
1470                     ; 379     bitstatus = (ITStatus)RESET;
1472  002e 4f            	clr	a
1474  002f               L755:
1475                     ; 381   return ((ITStatus)bitstatus);
1479  002f 5b03          	addw	sp,#3
1480  0031 87            	retf	
1516                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1516                     ; 392 {
1517                     .text:	section	.text,new
1518  0000               f_TIM4_ClearITPendingBit:
1520  0000 88            	push	a
1521       00000000      OFST:	set	0
1524                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1526  0001 4a            	dec	a
1527  0002 270f          	jreq	L022
1528  0004 ae018a        	ldw	x,#394
1529  0007 89            	pushw	x
1530  0008 5f            	clrw	x
1531  0009 89            	pushw	x
1532  000a ae0000        	ldw	x,#L76
1533  000d 8d000000      	callf	f_assert_failed
1535  0011 5b04          	addw	sp,#4
1536  0013               L022:
1537                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1539  0013 7b01          	ld	a,(OFST+1,sp)
1540  0015 43            	cpl	a
1541  0016 c75342        	ld	21314,a
1542                     ; 398 }
1545  0019 84            	pop	a
1546  001a 87            	retf	
1558                     	xdef	f_TIM4_ClearITPendingBit
1559                     	xdef	f_TIM4_GetITStatus
1560                     	xdef	f_TIM4_ClearFlag
1561                     	xdef	f_TIM4_GetFlagStatus
1562                     	xdef	f_TIM4_GetPrescaler
1563                     	xdef	f_TIM4_GetCounter
1564                     	xdef	f_TIM4_SetAutoreload
1565                     	xdef	f_TIM4_SetCounter
1566                     	xdef	f_TIM4_GenerateEvent
1567                     	xdef	f_TIM4_ARRPreloadConfig
1568                     	xdef	f_TIM4_PrescalerConfig
1569                     	xdef	f_TIM4_SelectOnePulseMode
1570                     	xdef	f_TIM4_UpdateRequestConfig
1571                     	xdef	f_TIM4_UpdateDisableConfig
1572                     	xdef	f_TIM4_ITConfig
1573                     	xdef	f_TIM4_Cmd
1574                     	xdef	f_TIM4_TimeBaseInit
1575                     	xdef	f_TIM4_DeInit
1576                     	xref	f_assert_failed
1577                     .const:	section	.text
1578  0000               L76:
1579  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1580  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1581  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1582  0036 5f74696d342e  	dc.b	"_tim4.c",0
1602                     	end
