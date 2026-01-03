   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  21                     .const:	section	.text
  22  0000               _HSIDivFactor:
  23  0000 01            	dc.b	1
  24  0001 02            	dc.b	2
  25  0002 04            	dc.b	4
  26  0003 08            	dc.b	8
  27  0004               _CLKPrescTable:
  28  0004 01            	dc.b	1
  29  0005 02            	dc.b	2
  30  0006 04            	dc.b	4
  31  0007 08            	dc.b	8
  32  0008 0a            	dc.b	10
  33  0009 10            	dc.b	16
  34  000a 14            	dc.b	20
  35  000b 28            	dc.b	40
  64                     ; 72 void CLK_DeInit(void)
  64                     ; 73 {
  65                     .text:	section	.text,new
  66  0000               f_CLK_DeInit:
  70                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  72  0000 350150c0      	mov	20672,#1
  73                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  75  0004 725f50c1      	clr	20673
  76                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  78  0008 35e150c4      	mov	20676,#225
  79                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  81  000c 725f50c5      	clr	20677
  82                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  84  0010 351850c6      	mov	20678,#24
  85                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  87  0014 35ff50c7      	mov	20679,#255
  88                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  90  0018 35ff50ca      	mov	20682,#255
  91                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  93  001c 725f50c8      	clr	20680
  94                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  96  0020 725f50c9      	clr	20681
  98  0024               L52:
  99                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 101  0024 720050c9fb    	btjt	20681,#0,L52
 102                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 104  0029 725f50c9      	clr	20681
 105                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 107  002d 725f50cc      	clr	20684
 108                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 110  0031 725f50cd      	clr	20685
 111                     ; 88 }
 114  0035 87            	retf	
 170                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 170                     ; 100 {
 171                     .text:	section	.text,new
 172  0000               f_CLK_FastHaltWakeUpCmd:
 174  0000 88            	push	a
 175       00000000      OFST:	set	0
 178                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 180  0001 4d            	tnz	a
 181  0002 2712          	jreq	L41
 182  0004 4a            	dec	a
 183  0005 270f          	jreq	L41
 184  0007 ae0066        	ldw	x,#102
 185  000a 89            	pushw	x
 186  000b 5f            	clrw	x
 187  000c 89            	pushw	x
 188  000d ae000c        	ldw	x,#L75
 189  0010 8d000000      	callf	f_assert_failed
 191  0014 5b04          	addw	sp,#4
 192  0016               L41:
 193                     ; 104   if (NewState != DISABLE)
 195  0016 7b01          	ld	a,(OFST+1,sp)
 196  0018 2706          	jreq	L16
 197                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 199  001a 721450c0      	bset	20672,#2
 201  001e 2004          	jra	L36
 202  0020               L16:
 203                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 205  0020 721550c0      	bres	20672,#2
 206  0024               L36:
 207                     ; 114 }
 210  0024 84            	pop	a
 211  0025 87            	retf	
 246                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 246                     ; 122 {
 247                     .text:	section	.text,new
 248  0000               f_CLK_HSECmd:
 250  0000 88            	push	a
 251       00000000      OFST:	set	0
 254                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 256  0001 4d            	tnz	a
 257  0002 2712          	jreq	L62
 258  0004 4a            	dec	a
 259  0005 270f          	jreq	L62
 260  0007 ae007c        	ldw	x,#124
 261  000a 89            	pushw	x
 262  000b 5f            	clrw	x
 263  000c 89            	pushw	x
 264  000d ae000c        	ldw	x,#L75
 265  0010 8d000000      	callf	f_assert_failed
 267  0014 5b04          	addw	sp,#4
 268  0016               L62:
 269                     ; 126   if (NewState != DISABLE)
 271  0016 7b01          	ld	a,(OFST+1,sp)
 272  0018 2706          	jreq	L301
 273                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 275  001a 721050c1      	bset	20673,#0
 277  001e 2004          	jra	L501
 278  0020               L301:
 279                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 281  0020 721150c1      	bres	20673,#0
 282  0024               L501:
 283                     ; 136 }
 286  0024 84            	pop	a
 287  0025 87            	retf	
 322                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 322                     ; 144 {
 323                     .text:	section	.text,new
 324  0000               f_CLK_HSICmd:
 326  0000 88            	push	a
 327       00000000      OFST:	set	0
 330                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 332  0001 4d            	tnz	a
 333  0002 2712          	jreq	L04
 334  0004 4a            	dec	a
 335  0005 270f          	jreq	L04
 336  0007 ae0092        	ldw	x,#146
 337  000a 89            	pushw	x
 338  000b 5f            	clrw	x
 339  000c 89            	pushw	x
 340  000d ae000c        	ldw	x,#L75
 341  0010 8d000000      	callf	f_assert_failed
 343  0014 5b04          	addw	sp,#4
 344  0016               L04:
 345                     ; 148   if (NewState != DISABLE)
 347  0016 7b01          	ld	a,(OFST+1,sp)
 348  0018 2706          	jreq	L521
 349                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 351  001a 721050c0      	bset	20672,#0
 353  001e 2004          	jra	L721
 354  0020               L521:
 355                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 357  0020 721150c0      	bres	20672,#0
 358  0024               L721:
 359                     ; 158 }
 362  0024 84            	pop	a
 363  0025 87            	retf	
 398                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 398                     ; 167 {
 399                     .text:	section	.text,new
 400  0000               f_CLK_LSICmd:
 402  0000 88            	push	a
 403       00000000      OFST:	set	0
 406                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 408  0001 4d            	tnz	a
 409  0002 2712          	jreq	L25
 410  0004 4a            	dec	a
 411  0005 270f          	jreq	L25
 412  0007 ae00a9        	ldw	x,#169
 413  000a 89            	pushw	x
 414  000b 5f            	clrw	x
 415  000c 89            	pushw	x
 416  000d ae000c        	ldw	x,#L75
 417  0010 8d000000      	callf	f_assert_failed
 419  0014 5b04          	addw	sp,#4
 420  0016               L25:
 421                     ; 171   if (NewState != DISABLE)
 423  0016 7b01          	ld	a,(OFST+1,sp)
 424  0018 2706          	jreq	L741
 425                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 427  001a 721650c0      	bset	20672,#3
 429  001e 2004          	jra	L151
 430  0020               L741:
 431                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 433  0020 721750c0      	bres	20672,#3
 434  0024               L151:
 435                     ; 181 }
 438  0024 84            	pop	a
 439  0025 87            	retf	
 474                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 474                     ; 190 {
 475                     .text:	section	.text,new
 476  0000               f_CLK_CCOCmd:
 478  0000 88            	push	a
 479       00000000      OFST:	set	0
 482                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 484  0001 4d            	tnz	a
 485  0002 2712          	jreq	L46
 486  0004 4a            	dec	a
 487  0005 270f          	jreq	L46
 488  0007 ae00c0        	ldw	x,#192
 489  000a 89            	pushw	x
 490  000b 5f            	clrw	x
 491  000c 89            	pushw	x
 492  000d ae000c        	ldw	x,#L75
 493  0010 8d000000      	callf	f_assert_failed
 495  0014 5b04          	addw	sp,#4
 496  0016               L46:
 497                     ; 194   if (NewState != DISABLE)
 499  0016 7b01          	ld	a,(OFST+1,sp)
 500  0018 2706          	jreq	L171
 501                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 503  001a 721050c9      	bset	20681,#0
 505  001e 2004          	jra	L371
 506  0020               L171:
 507                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 509  0020 721150c9      	bres	20681,#0
 510  0024               L371:
 511                     ; 204 }
 514  0024 84            	pop	a
 515  0025 87            	retf	
 550                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 550                     ; 214 {
 551                     .text:	section	.text,new
 552  0000               f_CLK_ClockSwitchCmd:
 554  0000 88            	push	a
 555       00000000      OFST:	set	0
 558                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 560  0001 4d            	tnz	a
 561  0002 2712          	jreq	L67
 562  0004 4a            	dec	a
 563  0005 270f          	jreq	L67
 564  0007 ae00d8        	ldw	x,#216
 565  000a 89            	pushw	x
 566  000b 5f            	clrw	x
 567  000c 89            	pushw	x
 568  000d ae000c        	ldw	x,#L75
 569  0010 8d000000      	callf	f_assert_failed
 571  0014 5b04          	addw	sp,#4
 572  0016               L67:
 573                     ; 218   if (NewState != DISABLE )
 575  0016 7b01          	ld	a,(OFST+1,sp)
 576  0018 2706          	jreq	L312
 577                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 579  001a 721250c5      	bset	20677,#1
 581  001e 2004          	jra	L512
 582  0020               L312:
 583                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 585  0020 721350c5      	bres	20677,#1
 586  0024               L512:
 587                     ; 228 }
 590  0024 84            	pop	a
 591  0025 87            	retf	
 627                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 627                     ; 239 {
 628                     .text:	section	.text,new
 629  0000               f_CLK_SlowActiveHaltWakeUpCmd:
 631  0000 88            	push	a
 632       00000000      OFST:	set	0
 635                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 637  0001 4d            	tnz	a
 638  0002 2712          	jreq	L011
 639  0004 4a            	dec	a
 640  0005 270f          	jreq	L011
 641  0007 ae00f1        	ldw	x,#241
 642  000a 89            	pushw	x
 643  000b 5f            	clrw	x
 644  000c 89            	pushw	x
 645  000d ae000c        	ldw	x,#L75
 646  0010 8d000000      	callf	f_assert_failed
 648  0014 5b04          	addw	sp,#4
 649  0016               L011:
 650                     ; 243   if (NewState != DISABLE)
 652  0016 7b01          	ld	a,(OFST+1,sp)
 653  0018 2706          	jreq	L532
 654                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 656  001a 721a50c0      	bset	20672,#5
 658  001e 2004          	jra	L732
 659  0020               L532:
 660                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 662  0020 721b50c0      	bres	20672,#5
 663  0024               L732:
 664                     ; 253 }
 667  0024 84            	pop	a
 668  0025 87            	retf	
 827                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 827                     ; 264 {
 828                     .text:	section	.text,new
 829  0000               f_CLK_PeripheralClockConfig:
 831  0000 89            	pushw	x
 832       00000000      OFST:	set	0
 835                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 837  0001 9f            	ld	a,xl
 838  0002 4d            	tnz	a
 839  0003 270b          	jreq	L221
 840  0005 9f            	ld	a,xl
 841  0006 4a            	dec	a
 842  0007 2707          	jreq	L221
 843  0009 ae010a        	ldw	x,#266
 844  000c 8d9d009d      	callf	LC004
 845  0010               L221:
 846                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 848  0010 7b01          	ld	a,(OFST+1,sp)
 849  0012 2731          	jreq	L231
 850  0014 a101          	cp	a,#1
 851  0016 272d          	jreq	L231
 852  0018 a103          	cp	a,#3
 853  001a 2729          	jreq	L231
 854  001c a104          	cp	a,#4
 855  001e 2725          	jreq	L231
 856  0020 a105          	cp	a,#5
 857  0022 2721          	jreq	L231
 858  0024 a104          	cp	a,#4
 859  0026 271d          	jreq	L231
 860  0028 a106          	cp	a,#6
 861  002a 2719          	jreq	L231
 862  002c a107          	cp	a,#7
 863  002e 2715          	jreq	L231
 864  0030 a117          	cp	a,#23
 865  0032 2711          	jreq	L231
 866  0034 a113          	cp	a,#19
 867  0036 270d          	jreq	L231
 868  0038 a112          	cp	a,#18
 869  003a 2709          	jreq	L231
 870  003c ae010b        	ldw	x,#267
 871  003f 8d9d009d      	callf	LC004
 872  0043 7b01          	ld	a,(OFST+1,sp)
 873  0045               L231:
 874                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 876  0045 a510          	bcp	a,#16
 877  0047 2626          	jrne	L323
 878                     ; 271     if (NewState != DISABLE)
 880  0049 0d02          	tnz	(OFST+2,sp)
 881  004b 270f          	jreq	L523
 882                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 884  004d 8d950095      	callf	LC003
 885  0051 2704          	jreq	L631
 886  0053               L041:
 887  0053 48            	sll	a
 888  0054 5a            	decw	x
 889  0055 26fc          	jrne	L041
 890  0057               L631:
 891  0057 ca50c7        	or	a,20679
 893  005a 200e          	jpf	LC002
 894  005c               L523:
 895                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 897  005c 8d950095      	callf	LC003
 898  0060 2704          	jreq	L241
 899  0062               L441:
 900  0062 48            	sll	a
 901  0063 5a            	decw	x
 902  0064 26fc          	jrne	L441
 903  0066               L241:
 904  0066 43            	cpl	a
 905  0067 c450c7        	and	a,20679
 906  006a               LC002:
 907  006a c750c7        	ld	20679,a
 908  006d 2024          	jra	L133
 909  006f               L323:
 910                     ; 284     if (NewState != DISABLE)
 912  006f 0d02          	tnz	(OFST+2,sp)
 913  0071 270f          	jreq	L333
 914                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 916  0073 8d950095      	callf	LC003
 917  0077 2704          	jreq	L641
 918  0079               L051:
 919  0079 48            	sll	a
 920  007a 5a            	decw	x
 921  007b 26fc          	jrne	L051
 922  007d               L641:
 923  007d ca50ca        	or	a,20682
 925  0080 200e          	jpf	LC001
 926  0082               L333:
 927                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 929  0082 8d950095      	callf	LC003
 930  0086 2704          	jreq	L251
 931  0088               L451:
 932  0088 48            	sll	a
 933  0089 5a            	decw	x
 934  008a 26fc          	jrne	L451
 935  008c               L251:
 936  008c 43            	cpl	a
 937  008d c450ca        	and	a,20682
 938  0090               LC001:
 939  0090 c750ca        	ld	20682,a
 940  0093               L133:
 941                     ; 295 }
 944  0093 85            	popw	x
 945  0094 87            	retf	
 946  0095               LC003:
 947  0095 a40f          	and	a,#15
 948  0097 5f            	clrw	x
 949  0098 97            	ld	xl,a
 950  0099 a601          	ld	a,#1
 951  009b 5d            	tnzw	x
 952  009c 87            	retf	
 953  009d               LC004:
 954  009d 89            	pushw	x
 955  009e 5f            	clrw	x
 956  009f 89            	pushw	x
 957  00a0 ae000c        	ldw	x,#L75
 958  00a3 8d000000      	callf	f_assert_failed
 960  00a7 5b04          	addw	sp,#4
 961  00a9 87            	retf	
1149                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1149                     ; 310 {
1150                     .text:	section	.text,new
1151  0000               f_CLK_ClockSwitchConfig:
1153  0000 89            	pushw	x
1154  0001 5204          	subw	sp,#4
1155       00000004      OFST:	set	4
1158                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1160  0003 aeffff        	ldw	x,#65535
1161  0006 1f03          	ldw	(OFST-1,sp),x
1163                     ; 313   ErrorStatus Swif = ERROR;
1165                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1167  0008 7b06          	ld	a,(OFST+2,sp)
1168  000a a1e1          	cp	a,#225
1169  000c 270f          	jreq	L461
1170  000e a1d2          	cp	a,#210
1171  0010 270b          	jreq	L461
1172  0012 a1b4          	cp	a,#180
1173  0014 2707          	jreq	L461
1174  0016 ae013c        	ldw	x,#316
1175  0019 8de000e0      	callf	LC007
1176  001d               L461:
1177                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1179  001d 7b05          	ld	a,(OFST+1,sp)
1180  001f 270a          	jreq	L471
1181  0021 4a            	dec	a
1182  0022 2707          	jreq	L471
1183  0024 ae013d        	ldw	x,#317
1184  0027 8de000e0      	callf	LC007
1185  002b               L471:
1186                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1188  002b 7b0a          	ld	a,(OFST+6,sp)
1189  002d 270a          	jreq	L402
1190  002f 4a            	dec	a
1191  0030 2707          	jreq	L402
1192  0032 ae013e        	ldw	x,#318
1193  0035 8de000e0      	callf	LC007
1194  0039               L402:
1195                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1197  0039 7b0b          	ld	a,(OFST+7,sp)
1198  003b 270a          	jreq	L412
1199  003d 4a            	dec	a
1200  003e 2707          	jreq	L412
1201  0040 ae013f        	ldw	x,#319
1202  0043 8de000e0      	callf	LC007
1203  0047               L412:
1204                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1206  0047 c650c3        	ld	a,20675
1207  004a 6b01          	ld	(OFST-3,sp),a
1209                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1211  004c 7b05          	ld	a,(OFST+1,sp)
1212  004e 4a            	dec	a
1213  004f 263d          	jrne	L744
1214                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1216  0051 721250c5      	bset	20677,#1
1217                     ; 331     if (ITState != DISABLE)
1219  0055 7b0a          	ld	a,(OFST+6,sp)
1220  0057 2706          	jreq	L154
1221                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1223  0059 721450c5      	bset	20677,#2
1225  005d 2004          	jra	L354
1226  005f               L154:
1227                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1229  005f 721550c5      	bres	20677,#2
1230  0063               L354:
1231                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1233  0063 7b06          	ld	a,(OFST+2,sp)
1234  0065 c750c4        	ld	20676,a
1236  0068 2003          	jra	L164
1237  006a               L554:
1238                     ; 346       DownCounter--;
1240  006a 5a            	decw	x
1241  006b 1f03          	ldw	(OFST-1,sp),x
1243  006d               L164:
1244                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1246  006d 720150c504    	btjf	20677,#0,L564
1248  0072 1e03          	ldw	x,(OFST-1,sp)
1249  0074 26f4          	jrne	L554
1250  0076               L564:
1251                     ; 349     if(DownCounter != 0)
1253  0076 1e03          	ldw	x,(OFST-1,sp)
1254                     ; 351       Swif = SUCCESS;
1256  0078 263d          	jrne	LC006
1257  007a               L764:
1258                     ; 355       Swif = ERROR;
1261  007a 0f02          	clr	(OFST-2,sp)
1263  007c               L374:
1264                     ; 390   if(Swif != ERROR)
1266  007c 275d          	jreq	L715
1267                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1269  007e 7b0b          	ld	a,(OFST+7,sp)
1270  0080 263b          	jrne	L125
1272  0082 7b01          	ld	a,(OFST-3,sp)
1273  0084 a1e1          	cp	a,#225
1274  0086 2635          	jrne	L125
1275                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1277  0088 721150c0      	bres	20672,#0
1279  008c 204d          	jra	L715
1280  008e               L744:
1281                     ; 361     if (ITState != DISABLE)
1283  008e 7b0a          	ld	a,(OFST+6,sp)
1284  0090 2706          	jreq	L574
1285                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1287  0092 721450c5      	bset	20677,#2
1289  0096 2004          	jra	L774
1290  0098               L574:
1291                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1293  0098 721550c5      	bres	20677,#2
1294  009c               L774:
1295                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1297  009c 7b06          	ld	a,(OFST+2,sp)
1298  009e c750c4        	ld	20676,a
1300  00a1 2003          	jra	L505
1301  00a3               L105:
1302                     ; 376       DownCounter--;
1304  00a3 5a            	decw	x
1305  00a4 1f03          	ldw	(OFST-1,sp),x
1307  00a6               L505:
1308                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1310  00a6 720750c504    	btjf	20677,#3,L115
1312  00ab 1e03          	ldw	x,(OFST-1,sp)
1313  00ad 26f4          	jrne	L105
1314  00af               L115:
1315                     ; 379     if(DownCounter != 0)
1317  00af 1e03          	ldw	x,(OFST-1,sp)
1318  00b1 27c7          	jreq	L764
1319                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1321  00b3 721250c5      	bset	20677,#1
1322                     ; 383       Swif = SUCCESS;
1324  00b7               LC006:
1326  00b7 a601          	ld	a,#1
1327  00b9 6b02          	ld	(OFST-2,sp),a
1330  00bb 20bf          	jra	L374
1331                     ; 387       Swif = ERROR;
1332  00bd               L125:
1333                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1335  00bd 7b0b          	ld	a,(OFST+7,sp)
1336  00bf 260c          	jrne	L525
1338  00c1 7b01          	ld	a,(OFST-3,sp)
1339  00c3 a1d2          	cp	a,#210
1340  00c5 2606          	jrne	L525
1341                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1343  00c7 721750c0      	bres	20672,#3
1345  00cb 200e          	jra	L715
1346  00cd               L525:
1347                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1349  00cd 7b0b          	ld	a,(OFST+7,sp)
1350  00cf 260a          	jrne	L715
1352  00d1 7b01          	ld	a,(OFST-3,sp)
1353  00d3 a1b4          	cp	a,#180
1354  00d5 2604          	jrne	L715
1355                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1357  00d7 721150c1      	bres	20673,#0
1358  00db               L715:
1359                     ; 406   return(Swif);
1361  00db 7b02          	ld	a,(OFST-2,sp)
1364  00dd 5b06          	addw	sp,#6
1365  00df 87            	retf	
1366  00e0               LC007:
1367  00e0 89            	pushw	x
1368  00e1 5f            	clrw	x
1369  00e2 89            	pushw	x
1370  00e3 ae000c        	ldw	x,#L75
1371  00e6 8d000000      	callf	f_assert_failed
1373  00ea 5b04          	addw	sp,#4
1374  00ec 87            	retf	
1512                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1512                     ; 416 {
1513                     .text:	section	.text,new
1514  0000               f_CLK_HSIPrescalerConfig:
1516  0000 88            	push	a
1517       00000000      OFST:	set	0
1520                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1522  0001 4d            	tnz	a
1523  0002 271b          	jreq	L622
1524  0004 a108          	cp	a,#8
1525  0006 2717          	jreq	L622
1526  0008 a110          	cp	a,#16
1527  000a 2713          	jreq	L622
1528  000c a118          	cp	a,#24
1529  000e 270f          	jreq	L622
1530  0010 ae01a2        	ldw	x,#418
1531  0013 89            	pushw	x
1532  0014 5f            	clrw	x
1533  0015 89            	pushw	x
1534  0016 ae000c        	ldw	x,#L75
1535  0019 8d000000      	callf	f_assert_failed
1537  001d 5b04          	addw	sp,#4
1538  001f               L622:
1539                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1541  001f c650c6        	ld	a,20678
1542  0022 a4e7          	and	a,#231
1543  0024 c750c6        	ld	20678,a
1544                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1546  0027 c650c6        	ld	a,20678
1547  002a 1a01          	or	a,(OFST+1,sp)
1548  002c c750c6        	ld	20678,a
1549                     ; 425 }
1552  002f 84            	pop	a
1553  0030 87            	retf	
1688                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1688                     ; 437 {
1689                     .text:	section	.text,new
1690  0000               f_CLK_CCOConfig:
1692  0000 88            	push	a
1693       00000000      OFST:	set	0
1696                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1698  0001 4d            	tnz	a
1699  0002 273f          	jreq	L042
1700  0004 a104          	cp	a,#4
1701  0006 273b          	jreq	L042
1702  0008 a102          	cp	a,#2
1703  000a 2737          	jreq	L042
1704  000c a108          	cp	a,#8
1705  000e 2733          	jreq	L042
1706  0010 a10a          	cp	a,#10
1707  0012 272f          	jreq	L042
1708  0014 a10c          	cp	a,#12
1709  0016 272b          	jreq	L042
1710  0018 a10e          	cp	a,#14
1711  001a 2727          	jreq	L042
1712  001c a110          	cp	a,#16
1713  001e 2723          	jreq	L042
1714  0020 a112          	cp	a,#18
1715  0022 271f          	jreq	L042
1716  0024 a114          	cp	a,#20
1717  0026 271b          	jreq	L042
1718  0028 a116          	cp	a,#22
1719  002a 2717          	jreq	L042
1720  002c a118          	cp	a,#24
1721  002e 2713          	jreq	L042
1722  0030 a11a          	cp	a,#26
1723  0032 270f          	jreq	L042
1724  0034 ae01b7        	ldw	x,#439
1725  0037 89            	pushw	x
1726  0038 5f            	clrw	x
1727  0039 89            	pushw	x
1728  003a ae000c        	ldw	x,#L75
1729  003d 8d000000      	callf	f_assert_failed
1731  0041 5b04          	addw	sp,#4
1732  0043               L042:
1733                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1735  0043 c650c9        	ld	a,20681
1736  0046 a4e1          	and	a,#225
1737  0048 c750c9        	ld	20681,a
1738                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1740  004b c650c9        	ld	a,20681
1741  004e 1a01          	or	a,(OFST+1,sp)
1742  0050 c750c9        	ld	20681,a
1743                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1745  0053 721050c9      	bset	20681,#0
1746                     ; 449 }
1749  0057 84            	pop	a
1750  0058 87            	retf	
1815                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1815                     ; 460 {
1816                     .text:	section	.text,new
1817  0000               f_CLK_ITConfig:
1819  0000 89            	pushw	x
1820       00000000      OFST:	set	0
1823                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1825  0001 9f            	ld	a,xl
1826  0002 4d            	tnz	a
1827  0003 270b          	jreq	L252
1828  0005 9f            	ld	a,xl
1829  0006 4a            	dec	a
1830  0007 2707          	jreq	L252
1831  0009 ae01ce        	ldw	x,#462
1832  000c 8d510051      	callf	LC008
1833  0010               L252:
1834                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1836  0010 7b01          	ld	a,(OFST+1,sp)
1837  0012 a10c          	cp	a,#12
1838  0014 270b          	jreq	L262
1839  0016 a11c          	cp	a,#28
1840  0018 2707          	jreq	L262
1841  001a ae01cf        	ldw	x,#463
1842  001d 8d510051      	callf	LC008
1843  0021               L262:
1844                     ; 465   if (NewState != DISABLE)
1846  0021 7b02          	ld	a,(OFST+2,sp)
1847  0023 2716          	jreq	L727
1848                     ; 467     switch (CLK_IT)
1850  0025 7b01          	ld	a,(OFST+1,sp)
1852                     ; 475     default:
1852                     ; 476       break;
1853  0027 a00c          	sub	a,#12
1854  0029 270a          	jreq	L366
1855  002b a010          	sub	a,#16
1856  002d 2620          	jrne	L537
1857                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1857                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1859  002f 721450c5      	bset	20677,#2
1860                     ; 471       break;
1862  0033 201a          	jra	L537
1863  0035               L366:
1864                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1864                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1866  0035 721450c8      	bset	20680,#2
1867                     ; 474       break;
1869  0039 2014          	jra	L537
1870                     ; 475     default:
1870                     ; 476       break;
1873  003b               L727:
1874                     ; 481     switch (CLK_IT)
1876  003b 7b01          	ld	a,(OFST+1,sp)
1878                     ; 489     default:
1878                     ; 490       break;
1879  003d a00c          	sub	a,#12
1880  003f 270a          	jreq	L176
1881  0041 a010          	sub	a,#16
1882  0043 260a          	jrne	L537
1883                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1883                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1885  0045 721550c5      	bres	20677,#2
1886                     ; 485       break;
1888  0049 2004          	jra	L537
1889  004b               L176:
1890                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1890                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1892  004b 721550c8      	bres	20680,#2
1893                     ; 488       break;
1894  004f               L537:
1895                     ; 493 }
1898  004f 85            	popw	x
1899  0050 87            	retf	
1900                     ; 489     default:
1900                     ; 490       break;
1902  0051               LC008:
1903  0051 89            	pushw	x
1904  0052 5f            	clrw	x
1905  0053 89            	pushw	x
1906  0054 ae000c        	ldw	x,#L75
1907  0057 8d000000      	callf	f_assert_failed
1909  005b 5b04          	addw	sp,#4
1910  005d 87            	retf	
1945                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1945                     ; 501 {
1946                     .text:	section	.text,new
1947  0000               f_CLK_SYSCLKConfig:
1949  0000 88            	push	a
1950       00000000      OFST:	set	0
1953                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1955  0001 4d            	tnz	a
1956  0002 273b          	jreq	L472
1957  0004 a108          	cp	a,#8
1958  0006 2737          	jreq	L472
1959  0008 a110          	cp	a,#16
1960  000a 2733          	jreq	L472
1961  000c a118          	cp	a,#24
1962  000e 272f          	jreq	L472
1963  0010 a180          	cp	a,#128
1964  0012 272b          	jreq	L472
1965  0014 a181          	cp	a,#129
1966  0016 2727          	jreq	L472
1967  0018 a182          	cp	a,#130
1968  001a 2723          	jreq	L472
1969  001c a183          	cp	a,#131
1970  001e 271f          	jreq	L472
1971  0020 a184          	cp	a,#132
1972  0022 271b          	jreq	L472
1973  0024 a185          	cp	a,#133
1974  0026 2717          	jreq	L472
1975  0028 a186          	cp	a,#134
1976  002a 2713          	jreq	L472
1977  002c a187          	cp	a,#135
1978  002e 270f          	jreq	L472
1979  0030 ae01f7        	ldw	x,#503
1980  0033 89            	pushw	x
1981  0034 5f            	clrw	x
1982  0035 89            	pushw	x
1983  0036 ae000c        	ldw	x,#L75
1984  0039 8d000000      	callf	f_assert_failed
1986  003d 5b04          	addw	sp,#4
1987  003f               L472:
1988                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1990  003f 7b01          	ld	a,(OFST+1,sp)
1991  0041 2b0e          	jrmi	L167
1992                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1994  0043 c650c6        	ld	a,20678
1995  0046 a4e7          	and	a,#231
1996  0048 c750c6        	ld	20678,a
1997                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1999  004b 7b01          	ld	a,(OFST+1,sp)
2000  004d a418          	and	a,#24
2002  004f 200c          	jra	L367
2003  0051               L167:
2004                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2006  0051 c650c6        	ld	a,20678
2007  0054 a4f8          	and	a,#248
2008  0056 c750c6        	ld	20678,a
2009                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2011  0059 7b01          	ld	a,(OFST+1,sp)
2012  005b a407          	and	a,#7
2013  005d               L367:
2014  005d ca50c6        	or	a,20678
2015  0060 c750c6        	ld	20678,a
2016                     ; 515 }
2019  0063 84            	pop	a
2020  0064 87            	retf	
2076                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2076                     ; 524 {
2077                     .text:	section	.text,new
2078  0000               f_CLK_SWIMConfig:
2080  0000 88            	push	a
2081       00000000      OFST:	set	0
2084                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2086  0001 4d            	tnz	a
2087  0002 2712          	jreq	L603
2088  0004 4a            	dec	a
2089  0005 270f          	jreq	L603
2090  0007 ae020e        	ldw	x,#526
2091  000a 89            	pushw	x
2092  000b 5f            	clrw	x
2093  000c 89            	pushw	x
2094  000d ae000c        	ldw	x,#L75
2095  0010 8d000000      	callf	f_assert_failed
2097  0014 5b04          	addw	sp,#4
2098  0016               L603:
2099                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2101  0016 7b01          	ld	a,(OFST+1,sp)
2102  0018 2706          	jreq	L3101
2103                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2105  001a 721050cd      	bset	20685,#0
2107  001e 2004          	jra	L5101
2108  0020               L3101:
2109                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2111  0020 721150cd      	bres	20685,#0
2112  0024               L5101:
2113                     ; 538 }
2116  0024 84            	pop	a
2117  0025 87            	retf	
2140                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2140                     ; 548 {
2141                     .text:	section	.text,new
2142  0000               f_CLK_ClockSecuritySystemEnable:
2146                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2148  0000 721050c8      	bset	20680,#0
2149                     ; 551 }
2152  0004 87            	retf	
2176                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2176                     ; 560 {
2177                     .text:	section	.text,new
2178  0000               f_CLK_GetSYSCLKSource:
2182                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2184  0000 c650c3        	ld	a,20675
2187  0003 87            	retf	
2249                     ; 569 uint32_t CLK_GetClockFreq(void)
2249                     ; 570 {
2250                     .text:	section	.text,new
2251  0000               f_CLK_GetClockFreq:
2253  0000 5209          	subw	sp,#9
2254       00000009      OFST:	set	9
2257                     ; 571   uint32_t clockfrequency = 0;
2259                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2261                     ; 573   uint8_t tmp = 0, presc = 0;
2265                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2267  0002 c650c3        	ld	a,20675
2268  0005 6b09          	ld	(OFST+0,sp),a
2270                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2272  0007 a1e1          	cp	a,#225
2273  0009 2637          	jrne	L1701
2274                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2276  000b c650c6        	ld	a,20678
2277  000e a418          	and	a,#24
2278  0010 44            	srl	a
2279  0011 44            	srl	a
2280  0012 44            	srl	a
2282                     ; 581     tmp = (uint8_t)(tmp >> 3);
2285                     ; 582     presc = HSIDivFactor[tmp];
2287  0013 5f            	clrw	x
2288  0014 97            	ld	xl,a
2289  0015 d60000        	ld	a,(_HSIDivFactor,x)
2290  0018 6b09          	ld	(OFST+0,sp),a
2292                     ; 583     clockfrequency = HSI_VALUE / presc;
2294  001a b703          	ld	c_lreg+3,a
2295  001c 3f02          	clr	c_lreg+2
2296  001e 3f01          	clr	c_lreg+1
2297  0020 3f00          	clr	c_lreg
2298  0022 96            	ldw	x,sp
2299  0023 5c            	incw	x
2300  0024 8d000000      	callf	d_rtol
2303  0028 ae2400        	ldw	x,#9216
2304  002b bf02          	ldw	c_lreg+2,x
2305  002d ae00f4        	ldw	x,#244
2306  0030 bf00          	ldw	c_lreg,x
2307  0032 96            	ldw	x,sp
2308  0033 5c            	incw	x
2309  0034 8d000000      	callf	d_ludv
2311  0038 96            	ldw	x,sp
2312  0039 1c0005        	addw	x,#OFST-4
2313  003c 8d000000      	callf	d_rtol
2317  0040 2018          	jra	L3701
2318  0042               L1701:
2319                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2321  0042 a1d2          	cp	a,#210
2322  0044 260a          	jrne	L5701
2323                     ; 587     clockfrequency = LSI_VALUE;
2325  0046 aef400        	ldw	x,#62464
2326  0049 1f07          	ldw	(OFST-2,sp),x
2327  004b ae0001        	ldw	x,#1
2329  004e 2008          	jpf	LC009
2330  0050               L5701:
2331                     ; 591     clockfrequency = HSE_VALUE;
2333  0050 ae2400        	ldw	x,#9216
2334  0053 1f07          	ldw	(OFST-2,sp),x
2335  0055 ae00f4        	ldw	x,#244
2336  0058               LC009:
2337  0058 1f05          	ldw	(OFST-4,sp),x
2339  005a               L3701:
2340                     ; 594   return((uint32_t)clockfrequency);
2342  005a 96            	ldw	x,sp
2343  005b 1c0005        	addw	x,#OFST-4
2344  005e 8d000000      	callf	d_ltor
2348  0062 5b09          	addw	sp,#9
2349  0064 87            	retf	
2448                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2448                     ; 605 {
2449                     .text:	section	.text,new
2450  0000               f_CLK_AdjustHSICalibrationValue:
2452  0000 88            	push	a
2453       00000000      OFST:	set	0
2456                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2458  0001 4d            	tnz	a
2459  0002 272b          	jreq	L623
2460  0004 a101          	cp	a,#1
2461  0006 2727          	jreq	L623
2462  0008 a102          	cp	a,#2
2463  000a 2723          	jreq	L623
2464  000c a103          	cp	a,#3
2465  000e 271f          	jreq	L623
2466  0010 a104          	cp	a,#4
2467  0012 271b          	jreq	L623
2468  0014 a105          	cp	a,#5
2469  0016 2717          	jreq	L623
2470  0018 a106          	cp	a,#6
2471  001a 2713          	jreq	L623
2472  001c a107          	cp	a,#7
2473  001e 270f          	jreq	L623
2474  0020 ae025f        	ldw	x,#607
2475  0023 89            	pushw	x
2476  0024 5f            	clrw	x
2477  0025 89            	pushw	x
2478  0026 ae000c        	ldw	x,#L75
2479  0029 8d000000      	callf	f_assert_failed
2481  002d 5b04          	addw	sp,#4
2482  002f               L623:
2483                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2485  002f c650cc        	ld	a,20684
2486  0032 a4f8          	and	a,#248
2487  0034 1a01          	or	a,(OFST+1,sp)
2488  0036 c750cc        	ld	20684,a
2489                     ; 611 }
2492  0039 84            	pop	a
2493  003a 87            	retf	
2516                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2516                     ; 623 {
2517                     .text:	section	.text,new
2518  0000               f_CLK_SYSCLKEmergencyClear:
2522                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2524  0000 721150c5      	bres	20677,#0
2525                     ; 625 }
2528  0004 87            	retf	
2681                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2681                     ; 635 {
2682                     .text:	section	.text,new
2683  0000               f_CLK_GetFlagStatus:
2685  0000 89            	pushw	x
2686  0001 5203          	subw	sp,#3
2687       00000003      OFST:	set	3
2690                     ; 636   uint16_t statusreg = 0;
2692                     ; 637   uint8_t tmpreg = 0;
2694                     ; 638   FlagStatus bitstatus = RESET;
2696                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2698  0003 a30110        	cpw	x,#272
2699  0006 2737          	jreq	L243
2700  0008 a30102        	cpw	x,#258
2701  000b 2732          	jreq	L243
2702  000d a30202        	cpw	x,#514
2703  0010 272d          	jreq	L243
2704  0012 a30308        	cpw	x,#776
2705  0015 2728          	jreq	L243
2706  0017 a30301        	cpw	x,#769
2707  001a 2723          	jreq	L243
2708  001c a30408        	cpw	x,#1032
2709  001f 271e          	jreq	L243
2710  0021 a30402        	cpw	x,#1026
2711  0024 2719          	jreq	L243
2712  0026 a30504        	cpw	x,#1284
2713  0029 2714          	jreq	L243
2714  002b a30502        	cpw	x,#1282
2715  002e 270f          	jreq	L243
2716  0030 ae0281        	ldw	x,#641
2717  0033 89            	pushw	x
2718  0034 5f            	clrw	x
2719  0035 89            	pushw	x
2720  0036 ae000c        	ldw	x,#L75
2721  0039 8d000000      	callf	f_assert_failed
2723  003d 5b04          	addw	sp,#4
2724  003f               L243:
2725                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2727  003f 7b04          	ld	a,(OFST+1,sp)
2728  0041 97            	ld	xl,a
2729  0042 4f            	clr	a
2730  0043 02            	rlwa	x,a
2731  0044 1f01          	ldw	(OFST-2,sp),x
2733                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2735  0046 a30100        	cpw	x,#256
2736  0049 2605          	jrne	L3421
2737                     ; 649     tmpreg = CLK->ICKR;
2739  004b c650c0        	ld	a,20672
2741  004e 2021          	jra	L5421
2742  0050               L3421:
2743                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2745  0050 a30200        	cpw	x,#512
2746  0053 2605          	jrne	L7421
2747                     ; 653     tmpreg = CLK->ECKR;
2749  0055 c650c1        	ld	a,20673
2751  0058 2017          	jra	L5421
2752  005a               L7421:
2753                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2755  005a a30300        	cpw	x,#768
2756  005d 2605          	jrne	L3521
2757                     ; 657     tmpreg = CLK->SWCR;
2759  005f c650c5        	ld	a,20677
2761  0062 200d          	jra	L5421
2762  0064               L3521:
2763                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2765  0064 a30400        	cpw	x,#1024
2766  0067 2605          	jrne	L7521
2767                     ; 661     tmpreg = CLK->CSSR;
2769  0069 c650c8        	ld	a,20680
2771  006c 2003          	jra	L5421
2772  006e               L7521:
2773                     ; 665     tmpreg = CLK->CCOR;
2775  006e c650c9        	ld	a,20681
2776  0071               L5421:
2777  0071 6b03          	ld	(OFST+0,sp),a
2779                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2781  0073 7b05          	ld	a,(OFST+2,sp)
2782  0075 1503          	bcp	a,(OFST+0,sp)
2783  0077 2704          	jreq	L3621
2784                     ; 670     bitstatus = SET;
2786  0079 a601          	ld	a,#1
2789  007b 2001          	jra	L5621
2790  007d               L3621:
2791                     ; 674     bitstatus = RESET;
2793  007d 4f            	clr	a
2795  007e               L5621:
2796                     ; 678   return((FlagStatus)bitstatus);
2800  007e 5b05          	addw	sp,#5
2801  0080 87            	retf	
2847                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2847                     ; 688 {
2848                     .text:	section	.text,new
2849  0000               f_CLK_GetITStatus:
2851  0000 88            	push	a
2852  0001 88            	push	a
2853       00000001      OFST:	set	1
2856                     ; 689   ITStatus bitstatus = RESET;
2858                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2860  0002 a10c          	cp	a,#12
2861  0004 2713          	jreq	L453
2862  0006 a11c          	cp	a,#28
2863  0008 270f          	jreq	L453
2864  000a ae02b4        	ldw	x,#692
2865  000d 89            	pushw	x
2866  000e 5f            	clrw	x
2867  000f 89            	pushw	x
2868  0010 ae000c        	ldw	x,#L75
2869  0013 8d000000      	callf	f_assert_failed
2871  0017 5b04          	addw	sp,#4
2872  0019               L453:
2873                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2875  0019 7b02          	ld	a,(OFST+1,sp)
2876  001b a11c          	cp	a,#28
2877  001d 260b          	jrne	L1131
2878                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2880  001f c650c5        	ld	a,20677
2881  0022 1402          	and	a,(OFST+1,sp)
2882  0024 a10c          	cp	a,#12
2883  0026 260f          	jrne	L1231
2884                     ; 699       bitstatus = SET;
2886  0028 2009          	jpf	LC011
2887                     ; 703       bitstatus = RESET;
2888  002a               L1131:
2889                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2891  002a c650c8        	ld	a,20680
2892  002d 1402          	and	a,(OFST+1,sp)
2893  002f a10c          	cp	a,#12
2894  0031 2604          	jrne	L1231
2895                     ; 711       bitstatus = SET;
2897  0033               LC011:
2899  0033 a601          	ld	a,#1
2902  0035 2001          	jra	L7131
2903  0037               L1231:
2904                     ; 715       bitstatus = RESET;
2907  0037 4f            	clr	a
2909  0038               L7131:
2910                     ; 720   return bitstatus;
2914  0038 85            	popw	x
2915  0039 87            	retf	
2951                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2951                     ; 730 {
2952                     .text:	section	.text,new
2953  0000               f_CLK_ClearITPendingBit:
2955  0000 88            	push	a
2956       00000000      OFST:	set	0
2959                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2961  0001 a10c          	cp	a,#12
2962  0003 2713          	jreq	L663
2963  0005 a11c          	cp	a,#28
2964  0007 270f          	jreq	L663
2965  0009 ae02dc        	ldw	x,#732
2966  000c 89            	pushw	x
2967  000d 5f            	clrw	x
2968  000e 89            	pushw	x
2969  000f ae000c        	ldw	x,#L75
2970  0012 8d000000      	callf	f_assert_failed
2972  0016 5b04          	addw	sp,#4
2973  0018               L663:
2974                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2976  0018 7b01          	ld	a,(OFST+1,sp)
2977  001a a10c          	cp	a,#12
2978  001c 2606          	jrne	L3431
2979                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2981  001e 721750c8      	bres	20680,#3
2983  0022 2004          	jra	L5431
2984  0024               L3431:
2985                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2987  0024 721750c5      	bres	20677,#3
2988  0028               L5431:
2989                     ; 745 }
2992  0028 84            	pop	a
2993  0029 87            	retf	
3027                     	xdef	_CLKPrescTable
3028                     	xdef	_HSIDivFactor
3029                     	xdef	f_CLK_ClearITPendingBit
3030                     	xdef	f_CLK_GetITStatus
3031                     	xdef	f_CLK_GetFlagStatus
3032                     	xdef	f_CLK_GetSYSCLKSource
3033                     	xdef	f_CLK_GetClockFreq
3034                     	xdef	f_CLK_AdjustHSICalibrationValue
3035                     	xdef	f_CLK_SYSCLKEmergencyClear
3036                     	xdef	f_CLK_ClockSecuritySystemEnable
3037                     	xdef	f_CLK_SWIMConfig
3038                     	xdef	f_CLK_SYSCLKConfig
3039                     	xdef	f_CLK_ITConfig
3040                     	xdef	f_CLK_CCOConfig
3041                     	xdef	f_CLK_HSIPrescalerConfig
3042                     	xdef	f_CLK_ClockSwitchConfig
3043                     	xdef	f_CLK_PeripheralClockConfig
3044                     	xdef	f_CLK_SlowActiveHaltWakeUpCmd
3045                     	xdef	f_CLK_FastHaltWakeUpCmd
3046                     	xdef	f_CLK_ClockSwitchCmd
3047                     	xdef	f_CLK_CCOCmd
3048                     	xdef	f_CLK_LSICmd
3049                     	xdef	f_CLK_HSICmd
3050                     	xdef	f_CLK_HSECmd
3051                     	xdef	f_CLK_DeInit
3052                     	xref	f_assert_failed
3053                     	switch	.const
3054  000c               L75:
3055  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3056  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3057  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3058  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3059                     	xref.b	c_lreg
3060                     	xref.b	c_x
3080                     	xref	d_ltor
3081                     	xref	d_ludv
3082                     	xref	d_rtol
3083                     	end
