   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  22                     	switch	.data
  23  0000               __Id:
  24  0000 00000000      	dc.l	0
  25  0004               __IDE:
  26  0004 00            	dc.b	0
  27  0005               __RTR:
  28  0005 00            	dc.b	0
  29  0006               __DLC:
  30  0006 00            	dc.b	0
  31  0007               __Data:
  32  0007 00            	dc.b	0
  33  0008 000000000000  	ds.b	7
  34  000f               __FMI:
  35  000f 00            	dc.b	0
  65                     ; 62 void CAN_DeInit(void)
  65                     ; 63 {
  67                     .text:	section	.text,new
  68  0000               _CAN_DeInit:
  72                     ; 65   CAN->MCR = CAN_MCR_INRQ;
  74  0000 35015420      	mov	21536,#1
  75                     ; 66   CAN->PSR = CAN_Page_Config;
  77  0004 35065427      	mov	21543,#6
  78                     ; 67   CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
  80  0008 4f            	clr	a
  81  0009 cd0000        	call	_CAN_OperatingModeRequest
  83                     ; 68   CAN->Page.Config.ESR = CAN_ESR_RESET_VALUE;
  85  000c 725f5428      	clr	21544
  86                     ; 69   CAN->Page.Config.EIER = CAN_EIER_RESET_VALUE;
  88  0010 725f5429      	clr	21545
  89                     ; 70   CAN->Page.Config.BTR1 = CAN_BTR1_RESET_VALUE;
  91  0014 3540542c      	mov	21548,#64
  92                     ; 71   CAN->Page.Config.BTR2 = CAN_BTR2_RESET_VALUE;
  94  0018 3523542d      	mov	21549,#35
  95                     ; 72   CAN->Page.Config.FMR1 = CAN_FMR1_RESET_VALUE;
  97  001c 725f5430      	clr	21552
  98                     ; 73   CAN->Page.Config.FMR2 = CAN_FMR2_RESET_VALUE;
 100  0020 725f5431      	clr	21553
 101                     ; 74   CAN->Page.Config.FCR1 = CAN_FCR_RESET_VALUE;
 103  0024 725f5432      	clr	21554
 104                     ; 75   CAN->Page.Config.FCR2 = CAN_FCR_RESET_VALUE;
 106  0028 725f5433      	clr	21555
 107                     ; 76   CAN->Page.Config.FCR3 = CAN_FCR_RESET_VALUE;
 109  002c 725f5434      	clr	21556
 110                     ; 77   CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
 112  0030 a601          	ld	a,#1
 113  0032 cd0000        	call	_CAN_OperatingModeRequest
 115                     ; 78   CAN->PSR = CAN_Page_RxFifo;
 117  0035 35075427      	mov	21543,#7
 118                     ; 79   CAN->Page.RxFIFO.MDLCR = CAN_MDLC_RESET_VALUE;
 120  0039 725f5429      	clr	21545
 121                     ; 80   CAN->PSR = CAN_Page_TxMailBox0;
 123  003d 725f5427      	clr	21543
 124                     ; 81   CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 126  0041 725f5429      	clr	21545
 127                     ; 82   CAN->PSR = CAN_Page_TxMailBox1;
 129  0045 35015427      	mov	21543,#1
 130                     ; 83   CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 132  0049 725f5429      	clr	21545
 133                     ; 84   CAN->PSR = CAN_Page_TxMailBox2;
 135  004d 35055427      	mov	21543,#5
 136                     ; 85   CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 138  0051 725f5429      	clr	21545
 139                     ; 87   CAN->MCR = CAN_MCR_RESET_VALUE;
 141  0055 35025420      	mov	21536,#2
 142                     ; 88   CAN->MSR = (uint8_t)(~CAN_MSR_RESET_VALUE);/* rc_w1 */
 144  0059 35fd5421      	mov	21537,#253
 145                     ; 89   CAN->TSR = (uint8_t)(~CAN_TSR_RESET_VALUE);/* rc_w1 */
 147  005d 35ff5422      	mov	21538,#255
 148                     ; 90   CAN->RFR = (uint8_t)(~CAN_RFR_RESET_VALUE);/* rc_w1 */
 150  0061 35ff5424      	mov	21540,#255
 151                     ; 91   CAN->IER = CAN_IER_RESET_VALUE;
 153  0065 725f5425      	clr	21541
 154                     ; 92   CAN->DGR = CAN_DGR_RESET_VALUE;
 156  0069 350c5426      	mov	21542,#12
 157                     ; 93   CAN->PSR = CAN_PSR_RESET_VALUE;
 159  006d 725f5427      	clr	21543
 160                     ; 94 }
 163  0071 81            	ret	
 710                     ; 106 CAN_InitStatus_TypeDef CAN_Init(CAN_MasterCtrl_TypeDef CAN_MasterCtrl,
 710                     ; 107                                 CAN_Mode_TypeDef CAN_Mode,
 710                     ; 108                                 CAN_SynJumpWidth_TypeDef CAN_SynJumpWidth,
 710                     ; 109                                 CAN_BitSeg1_TypeDef CAN_BitSeg1,
 710                     ; 110                                 CAN_BitSeg2_TypeDef CAN_BitSeg2,
 710                     ; 111                                 uint8_t CAN_Prescaler)
 710                     ; 112 {
 711                     .text:	section	.text,new
 712  0000               _CAN_Init:
 714  0000 89            	pushw	x
 715  0001 5204          	subw	sp,#4
 716       00000004      OFST:	set	4
 719                     ; 113   CAN_InitStatus_TypeDef InitStatus =  CAN_InitStatus_Failed;
 721                     ; 114   uint16_t timeout = CAN_ACKNOWLEDGE_TIMEOUT;
 723  0003 aeffff        	ldw	x,#65535
 724  0006 1f03          	ldw	(OFST-1,sp),x
 726                     ; 115   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 728  0008 cd0000        	call	_CAN_GetSelectedPage
 730  000b 6b01          	ld	(OFST-3,sp),a
 732                     ; 119   assert_param(IS_CAN_MASTERCTRL_OK(CAN_MasterCtrl));
 734  000d 7b05          	ld	a,(OFST+1,sp)
 735  000f 270e          	jreq	L22
 736  0011 a1fd          	cp	a,#253
 737  0013 2404          	jruge	L61
 738  0015 a104          	cp	a,#4
 739  0017 2406          	jruge	L22
 740  0019               L61:
 741  0019 ae0077        	ldw	x,#119
 742  001c cd00dd        	call	LC002
 743  001f               L22:
 744                     ; 120   assert_param(IS_CAN_MODE_OK(CAN_Mode));
 746  001f 7b06          	ld	a,(OFST+2,sp)
 747  0021 2712          	jreq	L23
 748  0023 a101          	cp	a,#1
 749  0025 270e          	jreq	L23
 750  0027 a102          	cp	a,#2
 751  0029 270a          	jreq	L23
 752  002b a103          	cp	a,#3
 753  002d 2706          	jreq	L23
 754  002f ae0078        	ldw	x,#120
 755  0032 cd00dd        	call	LC002
 756  0035               L23:
 757                     ; 121   assert_param(IS_CAN_SYNJUMPWIDTH_OK(CAN_SynJumpWidth));
 759  0035 7b09          	ld	a,(OFST+5,sp)
 760  0037 2712          	jreq	L24
 761  0039 a140          	cp	a,#64
 762  003b 270e          	jreq	L24
 763  003d a180          	cp	a,#128
 764  003f 270a          	jreq	L24
 765  0041 a1c0          	cp	a,#192
 766  0043 2706          	jreq	L24
 767  0045 ae0079        	ldw	x,#121
 768  0048 cd00dd        	call	LC002
 769  004b               L24:
 770                     ; 122   assert_param(IS_CAN_BITSEG1_OK(CAN_BitSeg1));
 772  004b 7b0a          	ld	a,(OFST+6,sp)
 773  004d a110          	cp	a,#16
 774  004f 2506          	jrult	L05
 775  0051 ae007a        	ldw	x,#122
 776  0054 cd00dd        	call	LC002
 777  0057               L05:
 778                     ; 123   assert_param(IS_CAN_BITSEG2_OK(CAN_BitSeg2));
 780  0057 7b0b          	ld	a,(OFST+7,sp)
 781  0059 a110          	cp	a,#16
 782  005b 2504          	jrult	L06
 783  005d a171          	cp	a,#113
 784  005f 2509          	jrult	L26
 785  0061               L06:
 786  0061 7b0b          	ld	a,(OFST+7,sp)
 787  0063 2705          	jreq	L26
 788  0065 ae007b        	ldw	x,#123
 789  0068 ad73          	call	LC002
 790  006a               L26:
 791                     ; 124   assert_param(IS_CAN_PRESCALER_OK(CAN_Prescaler));
 793  006a 7b0c          	ld	a,(OFST+8,sp)
 794  006c 2704          	jreq	L66
 795  006e a141          	cp	a,#65
 796  0070 2505          	jrult	L07
 797  0072               L66:
 798  0072 ae007c        	ldw	x,#124
 799  0075 ad66          	call	LC002
 800  0077               L07:
 801                     ; 127   CAN->MCR = CAN_MCR_INRQ;
 803  0077 35015420      	mov	21536,#1
 805  007b 2003          	jra	L303
 806  007d               L772:
 807                     ; 131     timeout--;
 809  007d 5a            	decw	x
 810  007e 1f03          	ldw	(OFST-1,sp),x
 812  0080               L303:
 813                     ; 129   while (((uint8_t)(CAN->MSR & CAN_MSR_INAK) != 0x01) && ((uint16_t)timeout != 0))
 815  0080 7200542104    	btjt	21537,#0,L703
 817  0085 1e03          	ldw	x,(OFST-1,sp)
 818  0087 26f4          	jrne	L772
 819  0089               L703:
 820                     ; 135   if ((CAN->MSR & CAN_MSR_INAK) != CAN_MSR_INAK)
 822  0089 720054210c    	btjt	21537,#0,L113
 823                     ; 138     InitStatus =  CAN_InitStatus_Failed;
 825  008e               LC001:
 827  008e 0f02          	clr	(OFST-2,sp)
 830  0090               L313:
 831                     ; 172   CAN_SelectPage(can_page);
 833  0090 7b01          	ld	a,(OFST-3,sp)
 834  0092 cd0000        	call	_CAN_SelectPage
 836                     ; 175   return (CAN_InitStatus_TypeDef)InitStatus;
 838  0095 7b02          	ld	a,(OFST-2,sp)
 841  0097 5b06          	addw	sp,#6
 842  0099 81            	ret	
 843  009a               L113:
 844                     ; 145     CAN->MCR |= (uint8_t)CAN_MasterCtrl;
 846  009a c65420        	ld	a,21536
 847  009d 1a05          	or	a,(OFST+1,sp)
 848  009f c75420        	ld	21536,a
 849                     ; 148     CAN->DGR |= (uint8_t)CAN_Mode ;
 851  00a2 c65426        	ld	a,21542
 852  00a5 1a06          	or	a,(OFST+2,sp)
 853  00a7 c75426        	ld	21542,a
 854                     ; 149     CAN->PSR = CAN_Page_Config;
 856  00aa 35065427      	mov	21543,#6
 857                     ; 150     CAN->Page.Config.BTR1 = (uint8_t)((uint8_t)(CAN_Prescaler - (uint8_t)1) | CAN_SynJumpWidth);
 859  00ae 7b0c          	ld	a,(OFST+8,sp)
 860  00b0 4a            	dec	a
 861  00b1 1a09          	or	a,(OFST+5,sp)
 862  00b3 c7542c        	ld	21548,a
 863                     ; 151     CAN->Page.Config.BTR2 = (uint8_t)(CAN_BitSeg1 | (uint8_t)CAN_BitSeg2);
 865  00b6 7b0a          	ld	a,(OFST+6,sp)
 866  00b8 1a0b          	or	a,(OFST+7,sp)
 867  00ba c7542d        	ld	21549,a
 868                     ; 154     CAN->MCR &= (uint8_t)(~CAN_MCR_INRQ);
 870  00bd 72115420      	bres	21536,#0
 871                     ; 156     timeout = 0xFFFF;
 873  00c1 aeffff        	ldw	x,#65535
 875  00c4 2001          	jra	L123
 876  00c6               L513:
 877                     ; 159       timeout--;
 879  00c6 5a            	decw	x
 880  00c7               L123:
 881  00c7 1f03          	ldw	(OFST-1,sp),x
 883                     ; 157     while ((((uint8_t)(CAN->MSR & CAN_MSR_INAK) == 0x01))&&(timeout != 0))
 883                     ; 158     {
 883                     ; 159       timeout--;
 885  00c9 7201542102    	btjf	21537,#0,L523
 887  00ce 26f6          	jrne	L513
 888  00d0               L523:
 889                     ; 162     if ((CAN->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
 891  00d0 7201542102    	btjf	21537,#0,L723
 892                     ; 164       InitStatus = CAN_InitStatus_Failed;
 894  00d5 20b7          	jp	LC001
 895  00d7               L723:
 896                     ; 168       InitStatus = CAN_InitStatus_Success;
 898  00d7 a601          	ld	a,#1
 899  00d9 6b02          	ld	(OFST-2,sp),a
 901  00db 20b3          	jra	L313
 902  00dd               LC002:
 903  00dd 89            	pushw	x
 904  00de 5f            	clrw	x
 905  00df 89            	pushw	x
 906  00e0 ae0008        	ldw	x,#L572
 907  00e3 cd0000        	call	_assert_failed
 909  00e6 5b04          	addw	sp,#4
 910  00e8 81            	ret	
1221                     ; 194 void CAN_FilterInit(CAN_FilterNumber_TypeDef CAN_FilterNumber,
1221                     ; 195                     FunctionalState CAN_FilterActivation,
1221                     ; 196                     CAN_FilterMode_TypeDef CAN_FilterMode,
1221                     ; 197                     CAN_FilterScale_TypeDef CAN_FilterScale,
1221                     ; 198                     uint8_t CAN_FilterID1,
1221                     ; 199                     uint8_t CAN_FilterID2,
1221                     ; 200                     uint8_t CAN_FilterID3,
1221                     ; 201                     uint8_t CAN_FilterID4,
1221                     ; 202                     uint8_t CAN_FilterIDMask1,
1221                     ; 203                     uint8_t CAN_FilterIDMask2,
1221                     ; 204                     uint8_t CAN_FilterIDMask3,
1221                     ; 205                     uint8_t CAN_FilterIDMask4)
1221                     ; 206 {
1222                     .text:	section	.text,new
1223  0000               _CAN_FilterInit:
1225  0000 89            	pushw	x
1226  0001 5205          	subw	sp,#5
1227       00000005      OFST:	set	5
1230                     ; 207   uint8_t fact = 0;
1232                     ; 208   uint8_t fsc  = 0;
1234                     ; 209   uint8_t fmhl = 0;
1236                     ; 211   CAN_Page_TypeDef can_page_filter = CAN_Page_Filter01;
1238                     ; 212   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
1240  0003 cd0000        	call	_CAN_GetSelectedPage
1242  0006 6b01          	ld	(OFST-4,sp),a
1244                     ; 215   assert_param(IS_CAN_FILTER_NUMBER_OK(CAN_FilterNumber));
1246  0008 7b06          	ld	a,(OFST+1,sp)
1247  000a 271a          	jreq	L601
1248  000c a101          	cp	a,#1
1249  000e 2716          	jreq	L601
1250  0010 a102          	cp	a,#2
1251  0012 2712          	jreq	L601
1252  0014 a103          	cp	a,#3
1253  0016 270e          	jreq	L601
1254  0018 a104          	cp	a,#4
1255  001a 270a          	jreq	L601
1256  001c a105          	cp	a,#5
1257  001e 2706          	jreq	L601
1258  0020 ae00d7        	ldw	x,#215
1259  0023 cd030c        	call	LC013
1260  0026               L601:
1261                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(CAN_FilterActivation));
1263  0026 7b07          	ld	a,(OFST+2,sp)
1264  0028 2709          	jreq	L611
1265  002a 4a            	dec	a
1266  002b 2706          	jreq	L611
1267  002d ae00d8        	ldw	x,#216
1268  0030 cd030c        	call	LC013
1269  0033               L611:
1270                     ; 217   assert_param(IS_CAN_FILTER_MODE_OK(CAN_FilterMode));
1272  0033 7b0a          	ld	a,(OFST+5,sp)
1273  0035 2711          	jreq	L621
1274  0037 a110          	cp	a,#16
1275  0039 270d          	jreq	L621
1276  003b a111          	cp	a,#17
1277  003d 2709          	jreq	L621
1278  003f 4a            	dec	a
1279  0040 2706          	jreq	L621
1280  0042 ae00d9        	ldw	x,#217
1281  0045 cd030c        	call	LC013
1282  0048               L621:
1283                     ; 218   assert_param(IS_CAN_FILTER_SCALE_OK(CAN_FilterScale));
1285  0048 7b0b          	ld	a,(OFST+6,sp)
1286  004a 2712          	jreq	L631
1287  004c a102          	cp	a,#2
1288  004e 270e          	jreq	L631
1289  0050 a104          	cp	a,#4
1290  0052 270a          	jreq	L631
1291  0054 a106          	cp	a,#6
1292  0056 2706          	jreq	L631
1293  0058 ae00da        	ldw	x,#218
1294  005b cd030c        	call	LC013
1295  005e               L631:
1296                     ; 221   if (CAN_FilterNumber == CAN_FilterNumber_0)
1298  005e 7b06          	ld	a,(OFST+1,sp)
1299  0060 260d          	jrne	L305
1300                     ; 223     fact = 0x01;
1302  0062 4c            	inc	a
1303  0063 6b03          	ld	(OFST-2,sp),a
1305                     ; 224     fsc  = 0x00;
1307  0065 0f04          	clr	(OFST-1,sp)
1309                     ; 225     fmhl = 0x03;
1311  0067 a603          	ld	a,#3
1312  0069 6b05          	ld	(OFST+0,sp),a
1314                     ; 227     can_page_filter = CAN_Page_Filter01;
1316  006b a602          	ld	a,#2
1318  006d 2059          	jra	L505
1319  006f               L305:
1320                     ; 229   else if (CAN_FilterNumber == CAN_FilterNumber_1)
1322  006f a101          	cp	a,#1
1323  0071 2610          	jrne	L705
1324                     ; 231     fact = 0x10;
1326  0073 a610          	ld	a,#16
1327  0075 6b03          	ld	(OFST-2,sp),a
1329                     ; 232     fsc  = 0x04;
1331  0077 a604          	ld	a,#4
1332  0079 6b04          	ld	(OFST-1,sp),a
1334                     ; 233     fmhl = 0x0C;
1336  007b a60c          	ld	a,#12
1337  007d 6b05          	ld	(OFST+0,sp),a
1339                     ; 235     can_page_filter = CAN_Page_Filter01;
1341  007f a602          	ld	a,#2
1343  0081 2045          	jra	L505
1344  0083               L705:
1345                     ; 237   else if (CAN_FilterNumber == CAN_FilterNumber_2)
1347  0083 a102          	cp	a,#2
1348  0085 260e          	jrne	L315
1349                     ; 239     fact = 0x01;
1351  0087 a601          	ld	a,#1
1352  0089 6b03          	ld	(OFST-2,sp),a
1354                     ; 240     fsc  = 0x00;
1356  008b 0f04          	clr	(OFST-1,sp)
1358                     ; 241     fmhl = 0x30;
1360  008d a630          	ld	a,#48
1361  008f 6b05          	ld	(OFST+0,sp),a
1363                     ; 243     can_page_filter = CAN_Page_Filter23;
1365  0091 a603          	ld	a,#3
1367  0093 2033          	jra	L505
1368  0095               L315:
1369                     ; 245   else if (CAN_FilterNumber == CAN_FilterNumber_3)
1371  0095 a103          	cp	a,#3
1372  0097 2610          	jrne	L715
1373                     ; 247     fact = 0x10;
1375  0099 a610          	ld	a,#16
1376  009b 6b03          	ld	(OFST-2,sp),a
1378                     ; 248     fsc  = 0x04;
1380  009d a604          	ld	a,#4
1381  009f 6b04          	ld	(OFST-1,sp),a
1383                     ; 249     fmhl = 0xC0;
1385  00a1 a6c0          	ld	a,#192
1386  00a3 6b05          	ld	(OFST+0,sp),a
1388                     ; 251     can_page_filter = CAN_Page_Filter23;
1390  00a5 a603          	ld	a,#3
1392  00a7 201f          	jra	L505
1393  00a9               L715:
1394                     ; 253   else if (CAN_FilterNumber == CAN_FilterNumber_4)
1396  00a9 a104          	cp	a,#4
1397  00ab 260d          	jrne	L325
1398                     ; 255     fact = 0x01;
1400  00ad a601          	ld	a,#1
1401  00af 6b03          	ld	(OFST-2,sp),a
1403                     ; 256     fsc  = 0x00;
1405  00b1 0f04          	clr	(OFST-1,sp)
1407                     ; 257     fmhl = 0x03;
1409  00b3 a603          	ld	a,#3
1410  00b5 6b05          	ld	(OFST+0,sp),a
1412                     ; 259     can_page_filter = CAN_Page_Filter45;
1414  00b7 4c            	inc	a
1416  00b8 200e          	jra	L505
1417  00ba               L325:
1418                     ; 263     fact = 0x10;
1420  00ba a610          	ld	a,#16
1421  00bc 6b03          	ld	(OFST-2,sp),a
1423                     ; 264     fsc  = 0x04;
1425  00be a604          	ld	a,#4
1426  00c0 6b04          	ld	(OFST-1,sp),a
1428                     ; 265     fmhl = 0x0C;
1430  00c2 a60c          	ld	a,#12
1431  00c4 6b05          	ld	(OFST+0,sp),a
1433                     ; 267     can_page_filter = CAN_Page_Filter45;
1435  00c6 a604          	ld	a,#4
1436  00c8               L505:
1437  00c8 6b02          	ld	(OFST-3,sp),a
1439                     ; 271   CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
1441  00ca 4f            	clr	a
1442  00cb cd0000        	call	_CAN_OperatingModeRequest
1444                     ; 273   CAN->PSR = CAN_Page_Config;
1446  00ce 35065427      	mov	21543,#6
1447                     ; 278   if (can_page_filter == CAN_Page_Filter01) /* FCR1 */
1449  00d2 7b02          	ld	a,(OFST-3,sp)
1450  00d4 a102          	cp	a,#2
1451  00d6 2629          	jrne	L725
1452                     ; 281     CAN->Page.Config.FCR1 &= (uint8_t)(~(uint8_t)(fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc )));
1454  00d8 7b04          	ld	a,(OFST-1,sp)
1455  00da cd0318        	call	LC014
1456  00dd 2704          	jreq	L441
1457  00df               L641:
1458  00df 48            	sll	a
1459  00e0 5a            	decw	x
1460  00e1 26fc          	jrne	L641
1461  00e3               L441:
1462  00e3 1a03          	or	a,(OFST-2,sp)
1463  00e5 43            	cpl	a
1464  00e6 c45432        	and	a,21554
1465  00e9 c75432        	ld	21554,a
1466                     ; 283     CAN->Page.Config.FCR1 |= (uint8_t)(CAN_FilterScale << fsc);
1468  00ec 7b04          	ld	a,(OFST-1,sp)
1469  00ee 5f            	clrw	x
1470  00ef 97            	ld	xl,a
1471  00f0 7b0b          	ld	a,(OFST+6,sp)
1472  00f2 5d            	tnzw	x
1473  00f3 2704          	jreq	L051
1474  00f5               L251:
1475  00f5 48            	sll	a
1476  00f6 5a            	decw	x
1477  00f7 26fc          	jrne	L251
1478  00f9               L051:
1479  00f9 ca5432        	or	a,21554
1480  00fc c75432        	ld	21554,a
1482  00ff 2054          	jra	L135
1483  0101               L725:
1484                     ; 285   else if (can_page_filter == CAN_Page_Filter23) /* FCR2*/
1486  0101 a103          	cp	a,#3
1487  0103 2629          	jrne	L335
1488                     ; 288     CAN->Page.Config.FCR2 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
1490  0105 7b04          	ld	a,(OFST-1,sp)
1491  0107 cd0318        	call	LC014
1492  010a 2704          	jreq	L451
1493  010c               L651:
1494  010c 48            	sll	a
1495  010d 5a            	decw	x
1496  010e 26fc          	jrne	L651
1497  0110               L451:
1498  0110 1a03          	or	a,(OFST-2,sp)
1499  0112 43            	cpl	a
1500  0113 c45433        	and	a,21555
1501  0116 c75433        	ld	21555,a
1502                     ; 291     CAN->Page.Config.FCR2 |= (uint8_t)(CAN_FilterScale << fsc);
1504  0119 7b04          	ld	a,(OFST-1,sp)
1505  011b 5f            	clrw	x
1506  011c 97            	ld	xl,a
1507  011d 7b0b          	ld	a,(OFST+6,sp)
1508  011f 5d            	tnzw	x
1509  0120 2704          	jreq	L061
1510  0122               L261:
1511  0122 48            	sll	a
1512  0123 5a            	decw	x
1513  0124 26fc          	jrne	L261
1514  0126               L061:
1515  0126 ca5433        	or	a,21555
1516  0129 c75433        	ld	21555,a
1518  012c 2027          	jra	L135
1519  012e               L335:
1520                     ; 297     CAN->Page.Config.FCR3 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
1522  012e 7b04          	ld	a,(OFST-1,sp)
1523  0130 cd0318        	call	LC014
1524  0133 2704          	jreq	L461
1525  0135               L661:
1526  0135 48            	sll	a
1527  0136 5a            	decw	x
1528  0137 26fc          	jrne	L661
1529  0139               L461:
1530  0139 1a03          	or	a,(OFST-2,sp)
1531  013b 43            	cpl	a
1532  013c c45434        	and	a,21556
1533  013f c75434        	ld	21556,a
1534                     ; 300     CAN->Page.Config.FCR3 |= (uint8_t)(CAN_FilterScale << fsc);
1536  0142 7b04          	ld	a,(OFST-1,sp)
1537  0144 5f            	clrw	x
1538  0145 97            	ld	xl,a
1539  0146 7b0b          	ld	a,(OFST+6,sp)
1540  0148 5d            	tnzw	x
1541  0149 2704          	jreq	L071
1542  014b               L271:
1543  014b 48            	sll	a
1544  014c 5a            	decw	x
1545  014d 26fc          	jrne	L271
1546  014f               L071:
1547  014f ca5434        	or	a,21556
1548  0152 c75434        	ld	21556,a
1549  0155               L135:
1550                     ; 306   if (can_page_filter != CAN_Page_Filter45) /* FMR1*/
1552  0155 7b02          	ld	a,(OFST-3,sp)
1553  0157 a104          	cp	a,#4
1554  0159 272d          	jreq	L735
1555                     ; 309     if (CAN_FilterMode == CAN_FilterMode_IdMask)
1557  015b 7b0a          	ld	a,(OFST+5,sp)
1558  015d 2608          	jrne	L145
1559                     ; 312       CAN->Page.Config.FMR1 &= (uint8_t)~(fmhl);
1561  015f 7b05          	ld	a,(OFST+0,sp)
1562  0161 43            	cpl	a
1563  0162 c45430        	and	a,21552
1565  0165 201c          	jp	LC005
1566  0167               L145:
1567                     ; 314     else if ( CAN_FilterMode == CAN_FilterMode_IdList)
1569  0167 a101          	cp	a,#1
1570  0169 2607          	jrne	L545
1571                     ; 317       CAN->Page.Config.FMR1 |= (uint8_t)(fmhl);
1573  016b c65430        	ld	a,21552
1574  016e 1a05          	or	a,(OFST+0,sp)
1576  0170 2011          	jp	LC005
1577  0172               L545:
1578                     ; 319     else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
1580  0172 a111          	cp	a,#17
1581  0174 2606          	jrne	L155
1582                     ; 322       CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
1584  0176 7b05          	ld	a,(OFST+0,sp)
1585  0178 a455          	and	a,#85
1587  017a 2004          	jp	LC006
1588  017c               L155:
1589                     ; 327       CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
1591  017c 7b05          	ld	a,(OFST+0,sp)
1592  017e a4aa          	and	a,#170
1593  0180               LC006:
1594  0180 ca5430        	or	a,21552
1595  0183               LC005:
1596  0183 c75430        	ld	21552,a
1597  0186 202b          	jra	L555
1598  0188               L735:
1599                     ; 336     if (CAN_FilterMode == CAN_FilterMode_IdMask)
1601  0188 7b0a          	ld	a,(OFST+5,sp)
1602  018a 2608          	jrne	L755
1603                     ; 339       CAN->Page.Config.FMR2 &= (uint8_t)~(fmhl);
1605  018c 7b05          	ld	a,(OFST+0,sp)
1606  018e 43            	cpl	a
1607  018f c45431        	and	a,21553
1609  0192 201c          	jp	LC003
1610  0194               L755:
1611                     ; 341     else if ( CAN_FilterMode == CAN_FilterMode_IdList)
1613  0194 a101          	cp	a,#1
1614  0196 2607          	jrne	L365
1615                     ; 344       CAN->Page.Config.FMR2 |= (uint8_t)(fmhl);
1617  0198 c65431        	ld	a,21553
1618  019b 1a05          	or	a,(OFST+0,sp)
1620  019d 2011          	jp	LC003
1621  019f               L365:
1622                     ; 346     else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
1624  019f a111          	cp	a,#17
1625  01a1 2606          	jrne	L765
1626                     ; 349       CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
1628  01a3 7b05          	ld	a,(OFST+0,sp)
1629  01a5 a455          	and	a,#85
1631  01a7 2004          	jp	LC004
1632  01a9               L765:
1633                     ; 354       CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
1635  01a9 7b05          	ld	a,(OFST+0,sp)
1636  01ab a4aa          	and	a,#170
1637  01ad               LC004:
1638  01ad ca5431        	or	a,21553
1639  01b0               LC003:
1640  01b0 c75431        	ld	21553,a
1641  01b3               L555:
1642                     ; 360   CAN->PSR = (uint8_t)can_page_filter;
1644  01b3 7b02          	ld	a,(OFST-3,sp)
1645  01b5 c75427        	ld	21543,a
1646                     ; 361   if (fsc != 0)
1648  01b8 7b04          	ld	a,(OFST-1,sp)
1649  01ba 2603cc024a    	jreq	L375
1650                     ; 364     if (CAN_FilterScale == CAN_FilterScale_8Bit)
1652  01bf 7b0b          	ld	a,(OFST+6,sp)
1653  01c1 260e          	jrne	L575
1654                     ; 366       CAN->Page.Filter.FR09 = CAN_FilterID1;
1656  01c3 7b0c          	ld	a,(OFST+7,sp)
1657  01c5 c75430        	ld	21552,a
1658                     ; 367       CAN->Page.Filter.FR10 = CAN_FilterIDMask1;
1660  01c8 7b10          	ld	a,(OFST+11,sp)
1661  01ca c75431        	ld	21553,a
1662                     ; 368       CAN->Page.Filter.FR11 = CAN_FilterID2;
1664  01cd 7b0d          	ld	a,(OFST+8,sp)
1665                     ; 369       CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1666                     ; 370       CAN->Page.Filter.FR13 = CAN_FilterID3;
1667                     ; 371       CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
1668                     ; 372       CAN->Page.Filter.FR15 = CAN_FilterID4;
1669                     ; 373       CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1671  01cf 2010          	jp	LC012
1672  01d1               L575:
1673                     ; 375     else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
1675  01d1 a102          	cp	a,#2
1676  01d3 2622          	jrne	L106
1677                     ; 377       CAN->Page.Filter.FR09 = CAN_FilterID1;
1679  01d5 7b0c          	ld	a,(OFST+7,sp)
1680  01d7 c75430        	ld	21552,a
1681                     ; 378       CAN->Page.Filter.FR10 = CAN_FilterID2;
1683  01da 7b0d          	ld	a,(OFST+8,sp)
1684  01dc c75431        	ld	21553,a
1685                     ; 379       CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
1687  01df 7b10          	ld	a,(OFST+11,sp)
1688                     ; 380       CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1690                     ; 381       CAN->Page.Filter.FR13 = CAN_FilterID3;
1692                     ; 382       CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
1694                     ; 383       CAN->Page.Filter.FR15 = CAN_FilterID4;
1696  01e1               LC012:
1697  01e1 c75432        	ld	21554,a
1699  01e4 7b11          	ld	a,(OFST+12,sp)
1700  01e6 c75433        	ld	21555,a
1702  01e9 7b0e          	ld	a,(OFST+9,sp)
1703  01eb c75434        	ld	21556,a
1705  01ee 7b12          	ld	a,(OFST+13,sp)
1706  01f0 c75435        	ld	21557,a
1708  01f3 7b0f          	ld	a,(OFST+10,sp)
1709                     ; 384       CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1711  01f5 2048          	jp	LC010
1712  01f7               L106:
1713                     ; 386     else if (CAN_FilterScale == CAN_FilterScale_16Bit)
1715  01f7 a104          	cp	a,#4
1716  01f9 261d          	jrne	L506
1717                     ; 388       CAN->Page.Filter.FR09 = CAN_FilterID1;
1719  01fb 7b0c          	ld	a,(OFST+7,sp)
1720  01fd c75430        	ld	21552,a
1721                     ; 389       CAN->Page.Filter.FR10 = CAN_FilterID2;
1723  0200 7b0d          	ld	a,(OFST+8,sp)
1724  0202 c75431        	ld	21553,a
1725                     ; 390       CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
1727  0205 7b10          	ld	a,(OFST+11,sp)
1728  0207 c75432        	ld	21554,a
1729                     ; 391       CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1731  020a 7b11          	ld	a,(OFST+12,sp)
1732  020c c75433        	ld	21555,a
1733                     ; 392       CAN->Page.Filter.FR13 = CAN_FilterID3;
1735  020f 7b0e          	ld	a,(OFST+9,sp)
1736  0211 c75434        	ld	21556,a
1737                     ; 393       CAN->Page.Filter.FR14 = CAN_FilterID4;
1739  0214 7b0f          	ld	a,(OFST+10,sp)
1740                     ; 394       CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
1741                     ; 395       CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1743  0216 2022          	jp	LC011
1744  0218               L506:
1745                     ; 397     else if (CAN_FilterScale == CAN_FilterScale_32Bit)
1747  0218 a106          	cp	a,#6
1748  021a 2703cc02cf    	jrne	L316
1749                     ; 399       CAN->Page.Filter.FR09 = CAN_FilterID1;
1751  021f 7b0c          	ld	a,(OFST+7,sp)
1752  0221 c75430        	ld	21552,a
1753                     ; 400       CAN->Page.Filter.FR10 = CAN_FilterID2;
1755  0224 7b0d          	ld	a,(OFST+8,sp)
1756  0226 c75431        	ld	21553,a
1757                     ; 401       CAN->Page.Filter.FR11 = CAN_FilterID3;
1759  0229 7b0e          	ld	a,(OFST+9,sp)
1760  022b c75432        	ld	21554,a
1761                     ; 402       CAN->Page.Filter.FR12 = CAN_FilterID4;
1763  022e 7b0f          	ld	a,(OFST+10,sp)
1764  0230 c75433        	ld	21555,a
1765                     ; 403       CAN->Page.Filter.FR13 = CAN_FilterIDMask1;
1767  0233 7b10          	ld	a,(OFST+11,sp)
1768  0235 c75434        	ld	21556,a
1769                     ; 404       CAN->Page.Filter.FR14 = CAN_FilterIDMask2;
1771  0238 7b11          	ld	a,(OFST+12,sp)
1772                     ; 405       CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
1774  023a               LC011:
1775  023a c75435        	ld	21557,a
1777  023d 7b12          	ld	a,(OFST+13,sp)
1778                     ; 406       CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1780  023f               LC010:
1781  023f c75436        	ld	21558,a
1785  0242 7b13          	ld	a,(OFST+14,sp)
1786  0244 c75437        	ld	21559,a
1787  0247 cc02cf        	jra	L316
1788  024a               L375:
1789                     ; 412     if (CAN_FilterScale == CAN_FilterScale_8Bit)
1791  024a 7b0b          	ld	a,(OFST+6,sp)
1792  024c 260e          	jrne	L516
1793                     ; 414       CAN->Page.Filter.FR01 = CAN_FilterID1;
1795  024e 7b0c          	ld	a,(OFST+7,sp)
1796  0250 c75428        	ld	21544,a
1797                     ; 415       CAN->Page.Filter.FR02 = CAN_FilterIDMask1;
1799  0253 7b10          	ld	a,(OFST+11,sp)
1800  0255 c75429        	ld	21545,a
1801                     ; 416       CAN->Page.Filter.FR03 = CAN_FilterID2;
1803  0258 7b0d          	ld	a,(OFST+8,sp)
1804                     ; 417       CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1805                     ; 418       CAN->Page.Filter.FR05 = CAN_FilterID3;
1806                     ; 419       CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
1807                     ; 420       CAN->Page.Filter.FR07 = CAN_FilterID4;
1808                     ; 421       CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1810  025a 2010          	jp	LC009
1811  025c               L516:
1812                     ; 423     else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
1814  025c a102          	cp	a,#2
1815  025e 2622          	jrne	L126
1816                     ; 425       CAN->Page.Filter.FR01 = CAN_FilterID1;
1818  0260 7b0c          	ld	a,(OFST+7,sp)
1819  0262 c75428        	ld	21544,a
1820                     ; 426       CAN->Page.Filter.FR02 = CAN_FilterID2;
1822  0265 7b0d          	ld	a,(OFST+8,sp)
1823  0267 c75429        	ld	21545,a
1824                     ; 427       CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
1826  026a 7b10          	ld	a,(OFST+11,sp)
1827                     ; 428       CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1829                     ; 429       CAN->Page.Filter.FR05 = CAN_FilterID3;
1831                     ; 430       CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
1833                     ; 431       CAN->Page.Filter.FR07 = CAN_FilterID4;
1835  026c               LC009:
1836  026c c7542a        	ld	21546,a
1838  026f 7b11          	ld	a,(OFST+12,sp)
1839  0271 c7542b        	ld	21547,a
1841  0274 7b0e          	ld	a,(OFST+9,sp)
1842  0276 c7542c        	ld	21548,a
1844  0279 7b12          	ld	a,(OFST+13,sp)
1845  027b c7542d        	ld	21549,a
1847  027e 7b0f          	ld	a,(OFST+10,sp)
1848                     ; 432       CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1850  0280 2045          	jp	LC007
1851  0282               L126:
1852                     ; 434     else if (CAN_FilterScale == CAN_FilterScale_16Bit)
1854  0282 a104          	cp	a,#4
1855  0284 261d          	jrne	L526
1856                     ; 436       CAN->Page.Filter.FR01 = CAN_FilterID1;
1858  0286 7b0c          	ld	a,(OFST+7,sp)
1859  0288 c75428        	ld	21544,a
1860                     ; 437       CAN->Page.Filter.FR02 = CAN_FilterID2;
1862  028b 7b0d          	ld	a,(OFST+8,sp)
1863  028d c75429        	ld	21545,a
1864                     ; 438       CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
1866  0290 7b10          	ld	a,(OFST+11,sp)
1867  0292 c7542a        	ld	21546,a
1868                     ; 439       CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1870  0295 7b11          	ld	a,(OFST+12,sp)
1871  0297 c7542b        	ld	21547,a
1872                     ; 440       CAN->Page.Filter.FR05 = CAN_FilterID3;
1874  029a 7b0e          	ld	a,(OFST+9,sp)
1875  029c c7542c        	ld	21548,a
1876                     ; 441       CAN->Page.Filter.FR06 = CAN_FilterID4;
1878  029f 7b0f          	ld	a,(OFST+10,sp)
1879                     ; 442       CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
1880                     ; 443       CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1882  02a1 201f          	jp	LC008
1883  02a3               L526:
1884                     ; 445     else if (CAN_FilterScale == CAN_FilterScale_32Bit)
1886  02a3 a106          	cp	a,#6
1887  02a5 2628          	jrne	L316
1888                     ; 447       CAN->Page.Filter.FR01 = CAN_FilterID1;
1890  02a7 7b0c          	ld	a,(OFST+7,sp)
1891  02a9 c75428        	ld	21544,a
1892                     ; 448       CAN->Page.Filter.FR02 = CAN_FilterID2;
1894  02ac 7b0d          	ld	a,(OFST+8,sp)
1895  02ae c75429        	ld	21545,a
1896                     ; 449       CAN->Page.Filter.FR03 = CAN_FilterID3;
1898  02b1 7b0e          	ld	a,(OFST+9,sp)
1899  02b3 c7542a        	ld	21546,a
1900                     ; 450       CAN->Page.Filter.FR04 = CAN_FilterID4;
1902  02b6 7b0f          	ld	a,(OFST+10,sp)
1903  02b8 c7542b        	ld	21547,a
1904                     ; 451       CAN->Page.Filter.FR05 = CAN_FilterIDMask1;
1906  02bb 7b10          	ld	a,(OFST+11,sp)
1907  02bd c7542c        	ld	21548,a
1908                     ; 452       CAN->Page.Filter.FR06 = CAN_FilterIDMask2;
1910  02c0 7b11          	ld	a,(OFST+12,sp)
1911                     ; 453       CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
1913  02c2               LC008:
1914  02c2 c7542d        	ld	21549,a
1916  02c5 7b12          	ld	a,(OFST+13,sp)
1917                     ; 454       CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1919  02c7               LC007:
1920  02c7 c7542e        	ld	21550,a
1924  02ca 7b13          	ld	a,(OFST+14,sp)
1925  02cc c7542f        	ld	21551,a
1926  02cf               L316:
1927                     ; 463   CAN->PSR = CAN_Page_Config;
1929  02cf 35065427      	mov	21543,#6
1930                     ; 464   if (CAN_FilterActivation != DISABLE)
1932  02d3 7b07          	ld	a,(OFST+2,sp)
1933  02d5 2728          	jreq	L336
1934                     ; 466     if ((CAN_FilterNumber & 0x06) == 0x00) /* FCR1*/
1936  02d7 7b06          	ld	a,(OFST+1,sp)
1937  02d9 a506          	bcp	a,#6
1938  02db 260a          	jrne	L536
1939                     ; 467     {   CAN->Page.Config.FCR1 |= (uint8_t)fact;
1941  02dd c65432        	ld	a,21554
1942  02e0 1a03          	or	a,(OFST-2,sp)
1943  02e2 c75432        	ld	21554,a
1945  02e5 2018          	jra	L336
1946  02e7               L536:
1947                     ; 469     else if ((CAN_FilterNumber & 0x06) == 0x02) /*FCR2*/
1949  02e7 a406          	and	a,#6
1950  02e9 a102          	cp	a,#2
1951  02eb 260a          	jrne	L146
1952                     ; 470     { CAN->Page.Config.FCR2 |= (uint8_t)fact;
1954  02ed c65433        	ld	a,21555
1955  02f0 1a03          	or	a,(OFST-2,sp)
1956  02f2 c75433        	ld	21555,a
1958  02f5 2008          	jra	L336
1959  02f7               L146:
1960                     ; 473     { CAN->Page.Config.FCR3 |= (uint8_t)fact;
1962  02f7 c65434        	ld	a,21556
1963  02fa 1a03          	or	a,(OFST-2,sp)
1964  02fc c75434        	ld	21556,a
1965  02ff               L336:
1966                     ; 476   CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
1968  02ff a601          	ld	a,#1
1969  0301 cd0000        	call	_CAN_OperatingModeRequest
1971                     ; 478   CAN_SelectPage(can_page);
1973  0304 7b01          	ld	a,(OFST-4,sp)
1974  0306 cd0000        	call	_CAN_SelectPage
1976                     ; 479 }
1979  0309 5b07          	addw	sp,#7
1980  030b 81            	ret	
1981  030c               LC013:
1982  030c 89            	pushw	x
1983  030d 5f            	clrw	x
1984  030e 89            	pushw	x
1985  030f ae0008        	ldw	x,#L572
1986  0312 cd0000        	call	_assert_failed
1988  0315 5b04          	addw	sp,#4
1989  0317 81            	ret	
1990  0318               LC014:
1991  0318 5f            	clrw	x
1992  0319 97            	ld	xl,a
1993  031a a606          	ld	a,#6
1994  031c 5d            	tnzw	x
1995  031d 81            	ret	
2136                     ; 487 void CAN_ITConfig(CAN_IT_TypeDef CAN_IT, FunctionalState NewState)
2136                     ; 488 {
2137                     .text:	section	.text,new
2138  0000               _CAN_ITConfig:
2140  0000 89            	pushw	x
2141  0001 5203          	subw	sp,#3
2142       00000003      OFST:	set	3
2145                     ; 489   uint8_t tmperrorinterrupt = 0;
2147                     ; 490   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2149  0003 cd0000        	call	_CAN_GetSelectedPage
2151  0006 6b02          	ld	(OFST-1,sp),a
2153                     ; 494   assert_param(IS_CAN_IT_CONFIG_OK(CAN_IT));
2155  0008 1e04          	ldw	x,(OFST+1,sp)
2156  000a 270a          	jreq	L402
2157  000c 01            	rrwa	x,a
2158  000d a470          	and	a,#112
2159  000f 01            	rrwa	x,a
2160  0010 a4b0          	and	a,#176
2161  0012 01            	rrwa	x,a
2162  0013 5d            	tnzw	x
2163  0014 2705          	jreq	L602
2164  0016               L402:
2165  0016 ae01ee        	ldw	x,#494
2166  0019 ad53          	call	LC015
2167  001b               L602:
2168                     ; 495   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2170  001b 7b08          	ld	a,(OFST+5,sp)
2171  001d 2708          	jreq	L612
2172  001f 4a            	dec	a
2173  0020 2705          	jreq	L612
2174  0022 ae01ef        	ldw	x,#495
2175  0025 ad47          	call	LC015
2176  0027               L612:
2177                     ; 497   tmperrorinterrupt = (uint8_t)(((uint16_t)CAN_IT) >>7);
2179  0027 1e04          	ldw	x,(OFST+1,sp)
2180  0029 4f            	clr	a
2181  002a 01            	rrwa	x,a
2182  002b 48            	sll	a
2183  002c 59            	rlcw	x
2184  002d 9f            	ld	a,xl
2185  002e 6b03          	ld	(OFST+0,sp),a
2187                     ; 498   tmperrorinterrupt = (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0xF0) | 
2187                     ; 499                                 (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0x0F) >>1));
2189  0030 a40f          	and	a,#15
2190  0032 44            	srl	a
2191  0033 6b01          	ld	(OFST-2,sp),a
2193  0035 7b03          	ld	a,(OFST+0,sp)
2194  0037 a4f0          	and	a,#240
2195  0039 1a01          	or	a,(OFST-2,sp)
2196  003b 6b03          	ld	(OFST+0,sp),a
2198                     ; 501   CAN->PSR = CAN_Page_Config;
2200  003d 35065427      	mov	21543,#6
2201                     ; 502   if (NewState != DISABLE)
2203  0041 7b08          	ld	a,(OFST+5,sp)
2204  0043 270f          	jreq	L527
2205                     ; 505     CAN->IER |= (uint8_t)(CAN_IT);
2207  0045 c65425        	ld	a,21541
2208  0048 1a05          	or	a,(OFST+2,sp)
2209  004a c75425        	ld	21541,a
2210                     ; 506     CAN->Page.Config.EIER |= (uint8_t)(tmperrorinterrupt);
2212  004d c65429        	ld	a,21545
2213  0050 1a03          	or	a,(OFST+0,sp)
2215  0052 200f          	jra	L727
2216  0054               L527:
2217                     ; 511     CAN->IER &= (uint8_t)~(uint8_t)((uint16_t)CAN_IT);
2219  0054 7b05          	ld	a,(OFST+2,sp)
2220  0056 43            	cpl	a
2221  0057 c45425        	and	a,21541
2222  005a c75425        	ld	21541,a
2223                     ; 512     CAN->Page.Config.EIER &= (uint8_t)~(tmperrorinterrupt);
2225  005d 7b03          	ld	a,(OFST+0,sp)
2226  005f 43            	cpl	a
2227  0060 c45429        	and	a,21545
2228  0063               L727:
2229  0063 c75429        	ld	21545,a
2230                     ; 515   CAN_SelectPage(can_page);
2232  0066 7b02          	ld	a,(OFST-1,sp)
2233  0068 cd0000        	call	_CAN_SelectPage
2235                     ; 516 }
2238  006b 5b05          	addw	sp,#5
2239  006d 81            	ret	
2240  006e               LC015:
2241  006e 89            	pushw	x
2242  006f 5f            	clrw	x
2243  0070 89            	pushw	x
2244  0071 ae0008        	ldw	x,#L572
2245  0074 cd0000        	call	_assert_failed
2247  0077 5b04          	addw	sp,#4
2248  0079 81            	ret	
2308                     ; 525 void CAN_ST7CompatibilityCmd(CAN_ST7Compatibility_TypeDef CAN_ST7Compatibility)
2308                     ; 526 {
2309                     .text:	section	.text,new
2310  0000               _CAN_ST7CompatibilityCmd:
2312  0000 88            	push	a
2313       00000000      OFST:	set	0
2316                     ; 528   assert_param(IS_CAN_ST7_COMPATIBILITY_OK(CAN_ST7Compatibility));
2318  0001 4d            	tnz	a
2319  0002 2712          	jreq	L232
2320  0004 a110          	cp	a,#16
2321  0006 270e          	jreq	L232
2322  0008 ae0210        	ldw	x,#528
2323  000b 89            	pushw	x
2324  000c 5f            	clrw	x
2325  000d 89            	pushw	x
2326  000e ae0008        	ldw	x,#L572
2327  0011 cd0000        	call	_assert_failed
2329  0014 5b04          	addw	sp,#4
2330  0016               L232:
2331                     ; 530   CAN->DGR &= (uint8_t)(~CAN_DGR_TXM2E);
2333  0016 72195426      	bres	21542,#4
2334                     ; 533   CAN->DGR |= (uint8_t)CAN_ST7Compatibility;
2336  001a c65426        	ld	a,21542
2337  001d 1a01          	or	a,(OFST+1,sp)
2338  001f c75426        	ld	21542,a
2339                     ; 534 }
2342  0022 84            	pop	a
2343  0023 81            	ret	
2391                     ; 541 void CAN_TTComModeCmd(FunctionalState NewState)
2391                     ; 542 {
2392                     .text:	section	.text,new
2393  0000               _CAN_TTComModeCmd:
2395  0000 88            	push	a
2396  0001 88            	push	a
2397       00000001      OFST:	set	1
2400                     ; 543   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2402  0002 cd0000        	call	_CAN_GetSelectedPage
2404  0005 6b01          	ld	(OFST+0,sp),a
2406                     ; 545   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2408  0007 7b02          	ld	a,(OFST+1,sp)
2409  0009 2711          	jreq	L642
2410  000b 4a            	dec	a
2411  000c 270e          	jreq	L642
2412  000e ae0221        	ldw	x,#545
2413  0011 89            	pushw	x
2414  0012 5f            	clrw	x
2415  0013 89            	pushw	x
2416  0014 ae0008        	ldw	x,#L572
2417  0017 cd0000        	call	_assert_failed
2419  001a 5b04          	addw	sp,#4
2420  001c               L642:
2421                     ; 546   if (NewState != DISABLE)
2423  001c 7b02          	ld	a,(OFST+1,sp)
2424  001e 2726          	jreq	L1001
2425                     ; 549     CAN->MCR |= CAN_MCR_TTCM;
2427  0020 721e5420      	bset	21536,#7
2428                     ; 551     CAN->PSR = CAN_Page_TxMailBox0;
2430  0024 725f5427      	clr	21543
2431                     ; 552     CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2433  0028 721e5429      	bset	21545,#7
2434                     ; 553     CAN->PSR = CAN_Page_TxMailBox1;
2436  002c 35015427      	mov	21543,#1
2437                     ; 554     CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2439  0030 721e5429      	bset	21545,#7
2440                     ; 555     CAN->PSR = CAN_Page_TxMailBox2;
2442  0034 35055427      	mov	21543,#5
2443                     ; 556     CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2445  0038 721e5429      	bset	21545,#7
2446                     ; 557     CAN->PSR = CAN_Page_RxFifo;
2448  003c 35075427      	mov	21543,#7
2449                     ; 558     CAN->Page.RxFIFO.MDLCR |= CAN_MDLCR_TGT;
2451  0040 721e5429      	bset	21545,#7
2453  0044 2023          	jra	L3001
2454  0046               L1001:
2455                     ; 563     CAN->MCR &= ((uint8_t)~CAN_MCR_TTCM);
2457  0046 721f5420      	bres	21536,#7
2458                     ; 565     CAN->PSR = CAN_Page_TxMailBox0;
2460  004a c75427        	ld	21543,a
2461                     ; 566     CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2463  004d 721f5429      	bres	21545,#7
2464                     ; 567     CAN->PSR = CAN_Page_TxMailBox1;
2466  0051 35015427      	mov	21543,#1
2467                     ; 568     CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2469  0055 721f5429      	bres	21545,#7
2470                     ; 569     CAN->PSR = CAN_Page_TxMailBox2;
2472  0059 35055427      	mov	21543,#5
2473                     ; 570     CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2475  005d 721f5429      	bres	21545,#7
2476                     ; 571     CAN->PSR = CAN_Page_RxFifo;
2478  0061 35075427      	mov	21543,#7
2479                     ; 572     CAN->Page.RxFIFO.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2481  0065 721f5429      	bres	21545,#7
2482  0069               L3001:
2483                     ; 575   CAN_SelectPage(can_page);
2485  0069 7b01          	ld	a,(OFST+0,sp)
2486  006b cd0000        	call	_CAN_SelectPage
2488                     ; 576 }
2491  006e 85            	popw	x
2492  006f 81            	ret	
2694                     .const:	section	.text
2695  0000               L272:
2696  0000 20000000      	dc.l	536870912
2697  0004               L203:
2698  0004 00000800      	dc.l	2048
2699                     ; 587 CAN_TxStatus_TypeDef CAN_Transmit(uint32_t CAN_Id,
2699                     ; 588                                   CAN_Id_TypeDef CAN_IDE,
2699                     ; 589                                   CAN_RTR_TypeDef CAN_RTR,
2699                     ; 590                                   uint8_t CAN_DLC,
2699                     ; 591                                   uint8_t *CAN_Data)
2699                     ; 592 {
2700                     .text:	section	.text,new
2701  0000               _CAN_Transmit:
2703  0000 5206          	subw	sp,#6
2704       00000006      OFST:	set	6
2707                     ; 593   CAN_TxStatus_TypeDef CAN_TxStatus = CAN_TxStatus_NoMailBox;
2709                     ; 594   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2711  0002 cd0000        	call	_CAN_GetSelectedPage
2713  0005 6b05          	ld	(OFST-1,sp),a
2715                     ; 596   assert_param(IS_CAN_IDTYPE_OK(CAN_IDE));
2717  0007 7b0d          	ld	a,(OFST+7,sp)
2718  0009 270a          	jreq	L462
2719  000b a140          	cp	a,#64
2720  000d 2706          	jreq	L462
2721  000f ae0254        	ldw	x,#596
2722  0012 cd0130        	call	LC018
2723  0015               L462:
2724                     ; 597   if (CAN_IDE != CAN_Id_Standard)
2726  0015 0d0d          	tnz	(OFST+7,sp)
2727  0017 96            	ldw	x,sp
2728  0018 2713          	jreq	L3111
2729                     ; 599     assert_param(IS_CAN_EXTID_OK(CAN_Id));
2731  001a 1c0009        	addw	x,#OFST+3
2732  001d cd0000        	call	c_ltor
2734  0020 ae0000        	ldw	x,#L272
2735  0023 cd0000        	call	c_lcmp
2737  0026 2519          	jrult	L403
2738  0028 ae0257        	ldw	x,#599
2741  002b 2011          	jp	LC016
2742  002d               L3111:
2743                     ; 603     assert_param(IS_CAN_STDID_OK(CAN_Id));
2745  002d 1c0009        	addw	x,#OFST+3
2746  0030 cd0000        	call	c_ltor
2748  0033 ae0004        	ldw	x,#L203
2749  0036 cd0000        	call	c_lcmp
2751  0039 2506          	jrult	L403
2752  003b ae025b        	ldw	x,#603
2754  003e               LC016:
2755  003e cd0130        	call	LC018
2756  0041               L403:
2757                     ; 605   assert_param(IS_CAN_RTR_OK(CAN_RTR));
2759  0041 7b0e          	ld	a,(OFST+8,sp)
2760  0043 270a          	jreq	L413
2761  0045 a120          	cp	a,#32
2762  0047 2706          	jreq	L413
2763  0049 ae025d        	ldw	x,#605
2764  004c cd0130        	call	LC018
2765  004f               L413:
2766                     ; 606   assert_param(IS_CAN_DLC_OK(CAN_DLC));
2768  004f 7b0f          	ld	a,(OFST+9,sp)
2769  0051 a109          	cp	a,#9
2770  0053 2506          	jrult	L223
2771  0055 ae025e        	ldw	x,#606
2772  0058 cd0130        	call	LC018
2773  005b               L223:
2774                     ; 608   if ((CAN->TPR & CAN_TPR_TME0) == CAN_TPR_TME0)
2776  005b 7205542303    	btjf	21539,#2,L7111
2777                     ; 610     CAN_TxStatus = CAN_TxStatus_MailBox0Ok;
2779  0060 4f            	clr	a
2781  0061 2014          	jra	LC017
2782  0063               L7111:
2783                     ; 612   else if ((CAN->TPR & CAN_TPR_TME1) == CAN_TPR_TME1)
2785  0063 7207542304    	btjf	21539,#3,L3211
2786                     ; 614     CAN_TxStatus = CAN_TxStatus_MailBox1Ok;
2788  0068 a601          	ld	a,#1
2790  006a 200b          	jp	LC017
2791  006c               L3211:
2792                     ; 616   else if ((CAN->TPR & CAN_TPR_TME2) == CAN_TPR_TME2)
2794  006c 7209542304    	btjf	21539,#4,L7211
2795                     ; 618     CAN_TxStatus = CAN_TxStatus_MailBox2Ok;
2797  0071 a605          	ld	a,#5
2799  0073 2002          	jp	LC017
2800  0075               L7211:
2801                     ; 622     CAN_TxStatus = CAN_TxStatus_NoMailBox;
2803  0075 a6f4          	ld	a,#244
2804  0077               LC017:
2805  0077 6b06          	ld	(OFST+0,sp),a
2807                     ; 624   if (CAN_TxStatus != CAN_TxStatus_NoMailBox)
2809  0079 a1f4          	cp	a,#244
2810  007b 2603cc0126    	jreq	L3311
2811                     ; 626     CAN->PSR = (uint8_t)CAN_TxStatus;
2813  0080 c75427        	ld	21543,a
2814                     ; 628     if (CAN_IDE != CAN_Id_Standard)
2816  0083 7b0d          	ld	a,(OFST+7,sp)
2817  0085 272c          	jreq	L5311
2818                     ; 630       CAN_Id &= (uint32_t)CAN_EXTID_SIZE;
2820  0087 7b09          	ld	a,(OFST+3,sp)
2821  0089 a41f          	and	a,#31
2822  008b 6b09          	ld	(OFST+3,sp),a
2823                     ; 631       CAN->Page.TxMailbox.MIDR4 = (uint8_t)(CAN_Id);
2825  008d 7b0c          	ld	a,(OFST+6,sp)
2826  008f c7542d        	ld	21549,a
2827                     ; 632       CAN_Id = CAN_Id>>8;
2829  0092 96            	ldw	x,sp
2830  0093 cd013c        	call	LC019
2832                     ; 633       CAN->Page.TxMailbox.MIDR3 = (uint8_t)(CAN_Id);
2834  0096 7b0c          	ld	a,(OFST+6,sp)
2835  0098 c7542c        	ld	21548,a
2836                     ; 634       CAN_Id = CAN_Id>>8;
2838  009b 96            	ldw	x,sp
2839  009c cd013c        	call	LC019
2841                     ; 635       CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id);
2843  009f 7b0c          	ld	a,(OFST+6,sp)
2844  00a1 c7542b        	ld	21547,a
2845                     ; 636       CAN_Id = CAN_Id>>8;
2847  00a4 96            	ldw	x,sp
2848  00a5 cd013c        	call	LC019
2850                     ; 637       CAN->Page.TxMailbox.MIDR1 = (uint8_t)(CAN_Id |CAN_IDE | CAN_RTR);
2852  00a8 7b0c          	ld	a,(OFST+6,sp)
2853  00aa 1a0d          	or	a,(OFST+7,sp)
2854  00ac 1a0e          	or	a,(OFST+8,sp)
2855  00ae c7542a        	ld	21546,a
2857  00b1 2036          	jra	L7311
2858  00b3               L5311:
2859                     ; 641       CAN_Id &= (uint16_t)CAN_STDID_SIZE;
2861  00b3 7b0b          	ld	a,(OFST+5,sp)
2862  00b5 a407          	and	a,#7
2863  00b7 6b0b          	ld	(OFST+5,sp),a
2864  00b9 0f0a          	clr	(OFST+4,sp)
2865  00bb 0f09          	clr	(OFST+3,sp)
2866                     ; 642       CAN->Page.TxMailbox.MIDR1 = (uint8_t)((CAN_Id>>6) | (CAN_RTR)) ;
2868  00bd 7b0e          	ld	a,(OFST+8,sp)
2869  00bf b703          	ld	c_lreg+3,a
2870  00c1 3f02          	clr	c_lreg+2
2871  00c3 3f01          	clr	c_lreg+1
2872  00c5 3f00          	clr	c_lreg
2873  00c7 96            	ldw	x,sp
2874  00c8 5c            	incw	x
2875  00c9 cd0000        	call	c_rtol
2878  00cc 96            	ldw	x,sp
2879  00cd 1c0009        	addw	x,#OFST+3
2880  00d0 cd0000        	call	c_ltor
2882  00d3 a606          	ld	a,#6
2883  00d5 cd0000        	call	c_lursh
2885  00d8 96            	ldw	x,sp
2886  00d9 5c            	incw	x
2887  00da cd0000        	call	c_lor
2889  00dd 550003542a    	mov	21546,c_lreg+3
2890                     ; 643       CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id<<2);
2892  00e2 7b0c          	ld	a,(OFST+6,sp)
2893  00e4 48            	sll	a
2894  00e5 48            	sll	a
2895  00e6 c7542b        	ld	21547,a
2896  00e9               L7311:
2897                     ; 647     CAN->Page.TxMailbox.MDLCR &= (uint8_t)0xF0;
2899  00e9 c65429        	ld	a,21545
2900  00ec a4f0          	and	a,#240
2901  00ee c75429        	ld	21545,a
2902                     ; 649     CAN->Page.TxMailbox.MDLCR |= CAN_DLC;
2904  00f1 c65429        	ld	a,21545
2905  00f4 1a0f          	or	a,(OFST+9,sp)
2906  00f6 c75429        	ld	21545,a
2907                     ; 651     CAN->Page.TxMailbox.MDAR1 = CAN_Data[0];
2909  00f9 1e10          	ldw	x,(OFST+10,sp)
2910  00fb f6            	ld	a,(x)
2911  00fc c7542e        	ld	21550,a
2912                     ; 652     CAN->Page.TxMailbox.MDAR2 = CAN_Data[1];
2914  00ff e601          	ld	a,(1,x)
2915  0101 c7542f        	ld	21551,a
2916                     ; 653     CAN->Page.TxMailbox.MDAR3 = CAN_Data[2];
2918  0104 e602          	ld	a,(2,x)
2919  0106 c75430        	ld	21552,a
2920                     ; 654     CAN->Page.TxMailbox.MDAR4 = CAN_Data[3];
2922  0109 e603          	ld	a,(3,x)
2923  010b c75431        	ld	21553,a
2924                     ; 655     CAN->Page.TxMailbox.MDAR5 = CAN_Data[4];
2926  010e e604          	ld	a,(4,x)
2927  0110 c75432        	ld	21554,a
2928                     ; 656     CAN->Page.TxMailbox.MDAR6 = CAN_Data[5];
2930  0113 e605          	ld	a,(5,x)
2931  0115 c75433        	ld	21555,a
2932                     ; 657     CAN->Page.TxMailbox.MDAR7 = CAN_Data[6];
2934  0118 e606          	ld	a,(6,x)
2935  011a c75434        	ld	21556,a
2936                     ; 658     CAN->Page.TxMailbox.MDAR8 = CAN_Data[7];
2938  011d e607          	ld	a,(7,x)
2939  011f c75435        	ld	21557,a
2940                     ; 660     CAN->Page.TxMailbox.MCSR |= CAN_MCSR_TXRQ;
2942  0122 72105428      	bset	21544,#0
2943  0126               L3311:
2944                     ; 663   CAN_SelectPage(can_page);
2946  0126 7b05          	ld	a,(OFST-1,sp)
2947  0128 cd0000        	call	_CAN_SelectPage
2949                     ; 664   return (CAN_TxStatus_TypeDef)CAN_TxStatus;
2951  012b 7b06          	ld	a,(OFST+0,sp)
2954  012d 5b06          	addw	sp,#6
2955  012f 81            	ret	
2956  0130               LC018:
2957  0130 89            	pushw	x
2958  0131 5f            	clrw	x
2959  0132 89            	pushw	x
2960  0133 ae0008        	ldw	x,#L572
2961  0136 cd0000        	call	_assert_failed
2963  0139 5b04          	addw	sp,#4
2964  013b 81            	ret	
2965  013c               LC019:
2966  013c 1c0009        	addw	x,#OFST+3
2967  013f a608          	ld	a,#8
2968  0141 cc0000        	jp	c_lgursh
3053                     ; 672 CAN_TxStatus_TypeDef CAN_TransmitStatus(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
3053                     ; 673 {
3054                     .text:	section	.text,new
3055  0000               _CAN_TransmitStatus:
3057  0000 88            	push	a
3058  0001 88            	push	a
3059       00000001      OFST:	set	1
3062                     ; 675   CAN_TxStatus_TypeDef tstate = CAN_TxStatus_Failed;
3064                     ; 676   uint8_t tmpstate=0;
3066  0002 0f01          	clr	(OFST+0,sp)
3068                     ; 679   assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
3070  0004 4d            	tnz	a
3071  0005 2716          	jreq	L633
3072  0007 a101          	cp	a,#1
3073  0009 2712          	jreq	L633
3074  000b a105          	cp	a,#5
3075  000d 270e          	jreq	L633
3076  000f ae02a7        	ldw	x,#679
3077  0012 89            	pushw	x
3078  0013 5f            	clrw	x
3079  0014 89            	pushw	x
3080  0015 ae0008        	ldw	x,#L572
3081  0018 cd0000        	call	_assert_failed
3083  001b 5b04          	addw	sp,#4
3084  001d               L633:
3085                     ; 681   switch (CAN_TransmitMailbox)
3087  001d 7b02          	ld	a,(OFST+1,sp)
3089                     ; 694     break;
3090  001f 2709          	jreq	L1411
3091  0021 4a            	dec	a
3092  0022 2714          	jreq	L3411
3093  0024 a004          	sub	a,#4
3094  0026 271f          	jreq	L5411
3095                     ; 692   default:
3095                     ; 693     tstate = CAN_TxStatus_Failed;
3097                     ; 694     break;
3099  0028 2031          	jra	L3221
3100  002a               L1411:
3101                     ; 683   case (CAN_TransmitMailBox_0): tmpstate = (uint8_t)((CAN->TSR & (uint8_t)(CAN_TSR_RQCP0|CAN_TSR_TXOK0)));
3103  002a c65422        	ld	a,21538
3104  002d a411          	and	a,#17
3105  002f 6b01          	ld	(OFST+0,sp),a
3107                     ; 684   tmpstate |= (uint8_t)((CAN->TPR & CAN_TPR_TME0));
3109  0031 c65423        	ld	a,21539
3110  0034 a404          	and	a,#4
3111                     ; 685   break;
3113  0036 201f          	jp	LC020
3114  0038               L3411:
3115                     ; 686   case (CAN_TransmitMailBox_1): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP1|CAN_TSR_TXOK1))>>1);
3117  0038 c65422        	ld	a,21538
3118  003b a422          	and	a,#34
3119  003d 44            	srl	a
3120  003e 6b01          	ld	(OFST+0,sp),a
3122                     ; 687   tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME1) >> 1);
3124  0040 c65423        	ld	a,21539
3125  0043 a408          	and	a,#8
3126                     ; 688   break;
3128  0045 200f          	jp	LC021
3129  0047               L5411:
3130                     ; 689   case (CAN_TransmitMailBox_2): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP2|CAN_TSR_TXOK2))>>2);
3132  0047 c65422        	ld	a,21538
3133  004a a444          	and	a,#68
3134  004c 44            	srl	a
3135  004d 44            	srl	a
3136  004e 6b01          	ld	(OFST+0,sp),a
3138                     ; 690   tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME2) >> 2);
3140  0050 c65423        	ld	a,21539
3141  0053 a410          	and	a,#16
3142  0055 44            	srl	a
3143  0056               LC021:
3144  0056 44            	srl	a
3145  0057               LC020:
3146  0057 1a01          	or	a,(OFST+0,sp)
3147  0059 6b01          	ld	(OFST+0,sp),a
3149                     ; 691   break;
3151  005b               L3221:
3152                     ; 697   switch (tmpstate)
3154  005b 7b01          	ld	a,(OFST+0,sp)
3156                     ; 713     break;
3157  005d 270f          	jreq	L1511
3158  005f a004          	sub	a,#4
3159  0061 2717          	jreq	L7511
3160  0063 4a            	dec	a
3161  0064 270c          	jreq	L3511
3162  0066 a010          	sub	a,#16
3163  0068 270c          	jreq	L5511
3164                     ; 711   default:
3164                     ; 712     tstate = CAN_TxStatus_Failed;
3166  006a a6f0          	ld	a,#240
3168                     ; 713     break;
3170  006c 200e          	jra	L7221
3171  006e               L1511:
3172                     ; 700   case (0x00): tstate = CAN_TxStatus_Pending;
3174  006e a6f2          	ld	a,#242
3176                     ; 701   break;
3178  0070 200a          	jra	L7221
3179  0072               L3511:
3180                     ; 703   case (0x05): tstate = CAN_TxStatus_Failed;
3182  0072 a6f0          	ld	a,#240
3184                     ; 704   break;
3186  0074 2006          	jra	L7221
3187  0076               L5511:
3188                     ; 706   case (0x15): tstate = CAN_TxStatus_Ok;
3190  0076 a6f1          	ld	a,#241
3192                     ; 707   break;
3194  0078 2002          	jra	L7221
3195  007a               L7511:
3196                     ; 709   case (0x04): tstate = CAN_TxStatus_MailBoxEmpty;
3198  007a a6f5          	ld	a,#245
3200                     ; 710   break;
3202  007c               L7221:
3203                     ; 716   return (CAN_TxStatus_TypeDef)tstate;
3207  007c 85            	popw	x
3208  007d 81            	ret	
3257                     ; 724 void CAN_CancelTransmit(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
3257                     ; 725 {
3258                     .text:	section	.text,new
3259  0000               _CAN_CancelTransmit:
3261  0000 88            	push	a
3262  0001 88            	push	a
3263       00000001      OFST:	set	1
3266                     ; 726   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
3268  0002 cd0000        	call	_CAN_GetSelectedPage
3270  0005 6b01          	ld	(OFST+0,sp),a
3272                     ; 728   assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
3274  0007 7b02          	ld	a,(OFST+1,sp)
3275  0009 2718          	jreq	L253
3276  000b a101          	cp	a,#1
3277  000d 2714          	jreq	L253
3278  000f a105          	cp	a,#5
3279  0011 2710          	jreq	L253
3280  0013 ae02d8        	ldw	x,#728
3281  0016 89            	pushw	x
3282  0017 5f            	clrw	x
3283  0018 89            	pushw	x
3284  0019 ae0008        	ldw	x,#L572
3285  001c cd0000        	call	_assert_failed
3287  001f 5b04          	addw	sp,#4
3288  0021 7b02          	ld	a,(OFST+1,sp)
3289  0023               L253:
3290                     ; 730   CAN->PSR = (uint8_t)CAN_TransmitMailbox;
3292  0023 c75427        	ld	21543,a
3293                     ; 732   CAN->Page.TxMailbox.MCSR |= CAN_MCSR_ABRQ;
3295  0026 72125428      	bset	21544,#1
3296                     ; 734   CAN_SelectPage(can_page);
3298  002a 7b01          	ld	a,(OFST+0,sp)
3299  002c cd0000        	call	_CAN_SelectPage
3301                     ; 735 }
3304  002f 85            	popw	x
3305  0030 81            	ret	
3328                     ; 742 void CAN_FIFORelease(void)
3328                     ; 743 {
3329                     .text:	section	.text,new
3330  0000               _CAN_FIFORelease:
3334                     ; 745   CAN->RFR = CAN_RFR_RFOM; /*rc-w1*/
3336  0000 35205424      	mov	21540,#32
3337                     ; 746 }
3340  0004 81            	ret	
3414                     ; 752 CAN_NbrPendingMessage_TypeDef CAN_MessagePending(void)
3414                     ; 753 {
3415                     .text:	section	.text,new
3416  0000               _CAN_MessagePending:
3418       00000001      OFST:	set	1
3421                     ; 754   CAN_NbrPendingMessage_TypeDef msgpending = CAN_NbrPendingMessage_0;
3423                     ; 755   msgpending = (CAN_NbrPendingMessage_TypeDef)(CAN->RFR & CAN_RFR_FMP01);
3425  0000 c65424        	ld	a,21540
3426  0003 a403          	and	a,#3
3428                     ; 756   return (CAN_NbrPendingMessage_TypeDef)msgpending;
3432  0005 81            	ret	
3497                     ; 767 void CAN_Receive(void)
3497                     ; 768 {
3498                     .text:	section	.text,new
3499  0000               _CAN_Receive:
3501  0000 520d          	subw	sp,#13
3502       0000000d      OFST:	set	13
3505                     ; 769   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
3507  0002 cd0000        	call	_CAN_GetSelectedPage
3509  0005 6b01          	ld	(OFST-12,sp),a
3511                     ; 770   uint32_t temp1 = 0, temp2 = 0, temp3 = 0;
3517                     ; 773   CAN->PSR = CAN_Page_RxFifo;
3519  0007 35075427      	mov	21543,#7
3520                     ; 776   _IDE = (uint8_t)(CAN->Page.RxFIFO.MIDR1 & CAN_Id_Extended);
3522  000b c6542a        	ld	a,21546
3523  000e a440          	and	a,#64
3524  0010 c70004        	ld	__IDE,a
3525                     ; 777   if (_IDE != CAN_Id_Standard)
3527  0013 725d0004      	tnz	__IDE
3528  0017 275b          	jreq	L1431
3529                     ; 779     temp1 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR3) << 8);
3531  0019 c6542c        	ld	a,21548
3532  001c 5f            	clrw	x
3533  001d 97            	ld	xl,a
3534  001e 90ae0100      	ldw	y,#256
3535  0022 cd0000        	call	c_umul
3537  0025 96            	ldw	x,sp
3538  0026 cd0109        	call	LC023
3539  0029 cd0100        	call	LC022
3540  002c be02          	ldw	x,c_lreg+2
3541  002e bf00          	ldw	c_lreg,x
3542  0030 5f            	clrw	x
3543  0031 bf02          	ldw	c_lreg+2,x
3544  0033 96            	ldw	x,sp
3545  0034 1c000a        	addw	x,#OFST-3
3546  0037 cd0000        	call	c_rtol
3549                     ; 781     temp3 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 24);
3551  003a c6542a        	ld	a,21546
3552  003d cd0100        	call	LC022
3553  0040 a41f          	and	a,#31
3554  0042 cd0100        	call	LC022
3555  0045 a618          	ld	a,#24
3556  0047 cd0000        	call	c_llsh
3558  004a 96            	ldw	x,sp
3559  004b 1c0002        	addw	x,#OFST-11
3560  004e cd0000        	call	c_rtol
3563                     ; 783     _Id = (uint32_t)CAN_EXTID_SIZE & ((CAN->Page.RxFIFO.MIDR4) | temp1 | temp2 | temp3 );
3565  0051 c6542d        	ld	a,21549
3566  0054 cd0100        	call	LC022
3567  0057 96            	ldw	x,sp
3568  0058 1c0006        	addw	x,#OFST-7
3569  005b cd0000        	call	c_lor
3571  005e 96            	ldw	x,sp
3572  005f 1c000a        	addw	x,#OFST-3
3573  0062 cd0000        	call	c_lor
3575  0065 96            	ldw	x,sp
3576  0066 1c0002        	addw	x,#OFST-11
3577  0069 cd0000        	call	c_lor
3579  006c b600          	ld	a,c_lreg
3580  006e a41f          	and	a,#31
3581  0070 b700          	ld	c_lreg,a
3584  0072 203e          	jra	L3431
3585  0074               L1431:
3586                     ; 787     temp1 = (uint16_t)((uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 6));
3588  0074 c6542a        	ld	a,21546
3589  0077 a41f          	and	a,#31
3590  0079 5f            	clrw	x
3591  007a 02            	rlwa	x,a
3592  007b 58            	sllw	x
3593  007c 58            	sllw	x
3594  007d 58            	sllw	x
3595  007e 58            	sllw	x
3596  007f 58            	sllw	x
3597  0080 58            	sllw	x
3598  0081 cd0000        	call	c_uitolx
3600  0084 96            	ldw	x,sp
3601  0085 cd0109        	call	LC023
3602  0088 5f            	clrw	x
3603  0089 97            	ld	xl,a
3604  008a 54            	srlw	x
3605  008b 54            	srlw	x
3606  008c 9f            	ld	a,xl
3607  008d a43f          	and	a,#63
3608  008f 5f            	clrw	x
3609  0090 cd0000        	call	c_uitol
3611  0093 96            	ldw	x,sp
3612  0094 1c000a        	addw	x,#OFST-3
3613  0097 cd0000        	call	c_rtol
3616                     ; 790     _Id = (uint16_t)CAN_STDID_SIZE & (temp1 | temp2 );
3618  009a 96            	ldw	x,sp
3619  009b 1c0006        	addw	x,#OFST-7
3620  009e cd0000        	call	c_ltor
3622  00a1 96            	ldw	x,sp
3623  00a2 1c000a        	addw	x,#OFST-3
3624  00a5 cd0000        	call	c_lor
3626  00a8 b602          	ld	a,c_lreg+2
3627  00aa a407          	and	a,#7
3628  00ac b702          	ld	c_lreg+2,a
3629  00ae 3f01          	clr	c_lreg+1
3630  00b0 3f00          	clr	c_lreg
3632  00b2               L3431:
3633  00b2 ae0000        	ldw	x,#__Id
3634  00b5 cd0000        	call	c_rtol
3635                     ; 793   _RTR = (uint8_t)((uint8_t)0x20 & CAN->Page.RxFIFO.MIDR1);
3637  00b8 c6542a        	ld	a,21546
3638  00bb a420          	and	a,#32
3639  00bd c70005        	ld	__RTR,a
3640                     ; 796   _DLC = (uint8_t)(CAN->Page.RxFIFO.MDLCR & (uint8_t)0x0F);
3642  00c0 c65429        	ld	a,21545
3643  00c3 a40f          	and	a,#15
3644  00c5 c70006        	ld	__DLC,a
3645                     ; 799   _FMI = CAN->Page.RxFIFO.MFMI;
3647  00c8 555428000f    	mov	__FMI,21544
3648                     ; 802   _Data[0] = CAN->Page.RxFIFO.MDAR1;
3650  00cd 55542e0007    	mov	__Data,21550
3651                     ; 803   _Data[1] = CAN->Page.RxFIFO.MDAR2;
3653  00d2 55542f0008    	mov	__Data+1,21551
3654                     ; 804   _Data[2] = CAN->Page.RxFIFO.MDAR3;
3656  00d7 5554300009    	mov	__Data+2,21552
3657                     ; 805   _Data[3] = CAN->Page.RxFIFO.MDAR4;
3659  00dc 555431000a    	mov	__Data+3,21553
3660                     ; 806   _Data[4] = CAN->Page.RxFIFO.MDAR5;
3662  00e1 555432000b    	mov	__Data+4,21554
3663                     ; 807   _Data[5] = CAN->Page.RxFIFO.MDAR6;
3665  00e6 555433000c    	mov	__Data+5,21555
3666                     ; 808   _Data[6] = CAN->Page.RxFIFO.MDAR7;
3668  00eb 555434000d    	mov	__Data+6,21556
3669                     ; 809   _Data[7] = CAN->Page.RxFIFO.MDAR8;
3671  00f0 555435000e    	mov	__Data+7,21557
3672                     ; 812   CAN_FIFORelease();
3674  00f5 cd0000        	call	_CAN_FIFORelease
3676                     ; 814   CAN_SelectPage(can_page);
3678  00f8 7b01          	ld	a,(OFST-12,sp)
3679  00fa cd0000        	call	_CAN_SelectPage
3681                     ; 815 }
3684  00fd 5b0d          	addw	sp,#13
3685  00ff 81            	ret	
3686  0100               LC022:
3687  0100 b703          	ld	c_lreg+3,a
3688  0102 3f02          	clr	c_lreg+2
3689  0104 3f01          	clr	c_lreg+1
3690  0106 3f00          	clr	c_lreg
3691  0108 81            	ret	
3692  0109               LC023:
3693  0109 1c0006        	addw	x,#OFST-7
3694  010c cd0000        	call	c_rtol
3697                     ; 788     temp2 = (uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR2 >> 2)&0x3F);
3699  010f c6542b        	ld	a,21547
3700  0112 81            	ret	
3724                     ; 825 uint32_t CAN_GetReceivedId(void)
3724                     ; 826 {
3725                     .text:	section	.text,new
3726  0000               _CAN_GetReceivedId:
3730                     ; 827   return (_Id);
3732  0000 ae0000        	ldw	x,#__Id
3736  0003 cc0000        	jp	c_ltor
3761                     ; 838 CAN_Id_TypeDef CAN_GetReceivedIDE(void)
3761                     ; 839 {
3762                     .text:	section	.text,new
3763  0000               _CAN_GetReceivedIDE:
3767                     ; 840   return (CAN_Id_TypeDef)(_IDE);
3769  0000 c60004        	ld	a,__IDE
3772  0003 81            	ret	
3797                     ; 851 CAN_RTR_TypeDef CAN_GetReceivedRTR(void)
3797                     ; 852 {
3798                     .text:	section	.text,new
3799  0000               _CAN_GetReceivedRTR:
3803                     ; 853   return (CAN_RTR_TypeDef)(_RTR);
3805  0000 c60005        	ld	a,__RTR
3808  0003 81            	ret	
3832                     ; 864 uint8_t CAN_GetReceivedDLC(void)
3832                     ; 865 {
3833                     .text:	section	.text,new
3834  0000               _CAN_GetReceivedDLC:
3838                     ; 866   return (_DLC);
3840  0000 c60006        	ld	a,__DLC
3843  0003 81            	ret	
3878                     ; 878 uint8_t CAN_GetReceivedData(uint8_t CAN_DataIndex)
3878                     ; 879 {
3879                     .text:	section	.text,new
3880  0000               _CAN_GetReceivedData:
3882  0000 88            	push	a
3883       00000000      OFST:	set	0
3886                     ; 880   assert_param(IS_CAN_DLC_OK(CAN_DataIndex));
3888  0001 a109          	cp	a,#9
3889  0003 250e          	jrult	L014
3890  0005 ae0370        	ldw	x,#880
3891  0008 89            	pushw	x
3892  0009 5f            	clrw	x
3893  000a 89            	pushw	x
3894  000b ae0008        	ldw	x,#L572
3895  000e cd0000        	call	_assert_failed
3897  0011 5b04          	addw	sp,#4
3898  0013               L014:
3899                     ; 881   return (_Data[CAN_DataIndex]);
3901  0013 7b01          	ld	a,(OFST+1,sp)
3902  0015 5f            	clrw	x
3903  0016 97            	ld	xl,a
3904  0017 d60007        	ld	a,(__Data,x)
3907  001a 5b01          	addw	sp,#1
3908  001c 81            	ret	
3932                     ; 892 uint8_t CAN_GetReceivedFMI(void)
3932                     ; 893 {
3933                     .text:	section	.text,new
3934  0000               _CAN_GetReceivedFMI:
3938                     ; 894   return (_FMI);
3940  0000 c6000f        	ld	a,__FMI
3943  0003 81            	ret	
3988                     ; 902 uint16_t CAN_GetMessageTimeStamp(void)
3988                     ; 903 {
3989                     .text:	section	.text,new
3990  0000               _CAN_GetMessageTimeStamp:
3992  0000 5203          	subw	sp,#3
3993       00000003      OFST:	set	3
3996                     ; 904   uint16_t timestamp = 0;
3998                     ; 905   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
4000  0002 cd0000        	call	_CAN_GetSelectedPage
4002  0005 6b01          	ld	(OFST-2,sp),a
4004                     ; 908   CAN->PSR = CAN_Page_RxFifo;
4006  0007 35075427      	mov	21543,#7
4007                     ; 910   timestamp = CAN->Page.RxFIFO.MTSRL;
4009  000b c65436        	ld	a,21558
4010  000e 5f            	clrw	x
4011  000f 97            	ld	xl,a
4012  0010 1f02          	ldw	(OFST-1,sp),x
4014                     ; 911   timestamp |= (uint16_t)(((uint16_t)CAN->Page.RxFIFO.MTSRH)<<8);
4016  0012 c65437        	ld	a,21559
4017  0015 5f            	clrw	x
4018  0016 97            	ld	xl,a
4019  0017 7b03          	ld	a,(OFST+0,sp)
4020  0019 01            	rrwa	x,a
4021  001a 1a02          	or	a,(OFST-1,sp)
4022  001c 01            	rrwa	x,a
4023  001d 1f02          	ldw	(OFST-1,sp),x
4025                     ; 914   CAN_SelectPage(can_page);
4027  001f 7b01          	ld	a,(OFST-2,sp)
4028  0021 cd0000        	call	_CAN_SelectPage
4030                     ; 916   return (uint16_t)(timestamp);
4032  0024 1e02          	ldw	x,(OFST-1,sp)
4035  0026 5b03          	addw	sp,#3
4036  0028 81            	ret	
4092                     ; 924 CAN_Sleep_TypeDef CAN_Sleep(void)
4092                     ; 925 {
4093                     .text:	section	.text,new
4094  0000               _CAN_Sleep:
4096  0000 88            	push	a
4097       00000001      OFST:	set	1
4100                     ; 926   CAN_Sleep_TypeDef sleepstatus = CAN_Sleep_Failed;
4102  0001 0f01          	clr	(OFST+0,sp)
4104                     ; 929   CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
4106  0003 c65420        	ld	a,21536
4107  0006 a4fe          	and	a,#254
4108  0008 aa02          	or	a,#2
4109  000a c75420        	ld	21536,a
4110                     ; 932   if ((CAN->MSR & (CAN_MSR_SLAK|CAN_MSR_INAK)) == CAN_MSR_SLAK)
4112  000d c65421        	ld	a,21537
4113  0010 a403          	and	a,#3
4114  0012 a102          	cp	a,#2
4115  0014 2604          	jrne	L7741
4116                     ; 935     sleepstatus =  CAN_Sleep_Ok;
4118  0016 a601          	ld	a,#1
4119  0018 6b01          	ld	(OFST+0,sp),a
4121  001a               L7741:
4122                     ; 939   return (CAN_Sleep_TypeDef) sleepstatus;
4124  001a 7b01          	ld	a,(OFST+0,sp)
4127  001c 5b01          	addw	sp,#1
4128  001e 81            	ret	
4184                     ; 947 CAN_WakeUp_TypeDef CAN_WakeUp(void)
4184                     ; 948 {
4185                     .text:	section	.text,new
4186  0000               _CAN_WakeUp:
4188  0000 88            	push	a
4189       00000001      OFST:	set	1
4192                     ; 949   CAN_WakeUp_TypeDef wakeupstatus = CAN_WakeUp_Failed;
4194  0001 0f01          	clr	(OFST+0,sp)
4196                     ; 952   CAN->MCR &= (uint8_t)(~CAN_MCR_SLEEP);
4198  0003 72135420      	bres	21536,#1
4199                     ; 955   if ((CAN->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
4201  0007 7202542104    	btjt	21537,#1,L7251
4202                     ; 958     wakeupstatus = CAN_WakeUp_Ok;
4204  000c a601          	ld	a,#1
4205  000e 6b01          	ld	(OFST+0,sp),a
4207  0010               L7251:
4208                     ; 962   return (CAN_WakeUp_TypeDef)wakeupstatus;
4210  0010 7b01          	ld	a,(OFST+0,sp)
4213  0012 5b01          	addw	sp,#1
4214  0014 81            	ret	
4318                     ; 974 CAN_ModeStatus_TypeDef CAN_OperatingModeRequest(CAN_OperatingMode_TypeDef CAN_OperatingMode)
4318                     ; 975 {
4319                     .text:	section	.text,new
4320  0000               _CAN_OperatingModeRequest:
4322  0000 88            	push	a
4323  0001 5203          	subw	sp,#3
4324       00000003      OFST:	set	3
4327                     ; 976   uint16_t timeout = CAN_ACKNOWLEDGE_TIMEOUT;
4329  0003 aeffff        	ldw	x,#65535
4330  0006 1f02          	ldw	(OFST-1,sp),x
4332                     ; 977   uint8_t modestatus = 0;
4334                     ; 979   assert_param(IS_CAN_OPERATINGMODE_OK(CAN_OperatingMode));
4336  0008 4d            	tnz	a
4337  0009 2716          	jreq	L634
4338  000b a101          	cp	a,#1
4339  000d 2712          	jreq	L634
4340  000f a102          	cp	a,#2
4341  0011 270e          	jreq	L634
4342  0013 ae03d3        	ldw	x,#979
4343  0016 89            	pushw	x
4344  0017 5f            	clrw	x
4345  0018 89            	pushw	x
4346  0019 ae0008        	ldw	x,#L572
4347  001c cd0000        	call	_assert_failed
4349  001f 5b04          	addw	sp,#4
4350  0021               L634:
4351                     ; 981   if (CAN_OperatingMode == CAN_OperatingMode_Initialization)
4353  0021 7b04          	ld	a,(OFST+1,sp)
4354  0023 2623          	jrne	L5751
4355                     ; 984     CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_SLEEP)) | CAN_MCR_INRQ);
4357  0025 c65420        	ld	a,21536
4358  0028 a4fd          	and	a,#253
4359  002a aa01          	or	a,#1
4360  002c c75420        	ld	21536,a
4362  002f 2003          	jra	L3061
4363  0031               L7751:
4364                     ; 989       timeout--;
4366  0031 5a            	decw	x
4367  0032 1f02          	ldw	(OFST-1,sp),x
4369  0034               L3061:
4370                     ; 987     while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK) && (timeout != 0))
4372  0034 c65421        	ld	a,21537
4373  0037 a403          	and	a,#3
4374  0039 4a            	dec	a
4375  003a 2704          	jreq	L7061
4377  003c 1e02          	ldw	x,(OFST-1,sp)
4378  003e 26f1          	jrne	L7751
4379  0040               L7061:
4380                     ; 991     if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK)
4382  0040 c65421        	ld	a,21537
4383  0043 a403          	and	a,#3
4384  0045 4a            	dec	a
4385                     ; 993       modestatus = CAN_ModeStatus_Failed;
4387  0046 204e          	jp	LC026
4388                     ; 997       modestatus = CAN_ModeStatus_Success;  
4389  0048               L5751:
4390                     ; 1001   else  if (CAN_OperatingMode == CAN_OperatingMode_Normal)
4392  0048 a101          	cp	a,#1
4393  004a 2623          	jrne	L7161
4394                     ; 1004     CAN->MCR &= (uint8_t)(~(CAN_MCR_SLEEP|CAN_MCR_INRQ));
4396  004c c65420        	ld	a,21536
4397  004f a4fc          	and	a,#252
4398  0051 c75420        	ld	21536,a
4400  0054 2003          	jra	L3261
4401  0056               L1261:
4402                     ; 1009       timeout--;
4404  0056 5a            	decw	x
4405  0057 1f02          	ldw	(OFST-1,sp),x
4407  0059               L3261:
4408                     ; 1007     while (((CAN->MSR & CAN_MODE_MASK) != 0) && (timeout!=0))
4410  0059 c65421        	ld	a,21537
4411  005c a503          	bcp	a,#3
4412  005e 2704          	jreq	L7261
4414  0060 1e02          	ldw	x,(OFST-1,sp)
4415  0062 26f2          	jrne	L1261
4416  0064               L7261:
4417                     ; 1011     if ((CAN->MSR & CAN_MODE_MASK) != 0)
4419  0064 c65421        	ld	a,21537
4420  0067 a503          	bcp	a,#3
4421                     ; 1013       modestatus = CAN_ModeStatus_Failed;
4423  0069 262d          	jrne	L7361
4424  006b               L1361:
4425                     ; 1017       modestatus = CAN_ModeStatus_Success;  
4429  006b a601          	ld	a,#1
4431  006d 202a          	jra	L5161
4432  006f               L7161:
4433                     ; 1020   else  if (CAN_OperatingMode == CAN_OperatingMode_Sleep)
4435  006f a102          	cp	a,#2
4436  0071 2625          	jrne	L7361
4437                     ; 1023     CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
4439  0073 c65420        	ld	a,21536
4440  0076 a4fe          	and	a,#254
4441  0078 aa02          	or	a,#2
4442  007a c75420        	ld	21536,a
4444  007d 2003          	jra	L5461
4445  007f               L1461:
4446                     ; 1028       timeout--;
4448  007f 5a            	decw	x
4449  0080 1f02          	ldw	(OFST-1,sp),x
4451  0082               L5461:
4452                     ; 1026     while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK) && (timeout!=0))
4454  0082 c65421        	ld	a,21537
4455  0085 a403          	and	a,#3
4456  0087 a102          	cp	a,#2
4457  0089 2704          	jreq	L1561
4459  008b 1e02          	ldw	x,(OFST-1,sp)
4460  008d 26f0          	jrne	L1461
4461  008f               L1561:
4462                     ; 1030     if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK)
4464  008f c65421        	ld	a,21537
4465  0092 a403          	and	a,#3
4466  0094 a102          	cp	a,#2
4467  0096               LC026:
4468  0096 27d3          	jreq	L1361
4469                     ; 1032       modestatus = CAN_ModeStatus_Failed;  
4471                     ; 1036       modestatus = CAN_ModeStatus_Success;  
4472  0098               L7361:
4473                     ; 1041     modestatus = CAN_ModeStatus_Failed;
4478  0098 4f            	clr	a
4480  0099               L5161:
4481                     ; 1043   return (CAN_ModeStatus_TypeDef)(modestatus);
4485  0099 5b04          	addw	sp,#4
4486  009b 81            	ret	
4605                     ; 1051 CAN_ErrorCode_TypeDef CAN_GetLastErrorCode(void)
4605                     ; 1052 {
4606                     .text:	section	.text,new
4607  0000               _CAN_GetLastErrorCode:
4609  0000 89            	pushw	x
4610       00000002      OFST:	set	2
4613                     ; 1053   CAN_ErrorCode_TypeDef errcode = CAN_ErrorCode_NoErr;
4615                     ; 1054   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
4617  0001 cd0000        	call	_CAN_GetSelectedPage
4619  0004 6b01          	ld	(OFST-1,sp),a
4621                     ; 1056   CAN->PSR = CAN_Page_Config;
4623  0006 35065427      	mov	21543,#6
4624                     ; 1057   errcode = (CAN_ErrorCode_TypeDef)((CAN->Page.Config.ESR) & (CAN_ESR_LEC));
4626  000a c65428        	ld	a,21544
4627  000d a470          	and	a,#112
4628  000f 6b02          	ld	(OFST+0,sp),a
4630                     ; 1060   CAN_SelectPage(can_page);
4632  0011 7b01          	ld	a,(OFST-1,sp)
4633  0013 cd0000        	call	_CAN_SelectPage
4635                     ; 1062   return (CAN_ErrorCode_TypeDef)(errcode);
4637  0016 7b02          	ld	a,(OFST+0,sp)
4640  0018 85            	popw	x
4641  0019 81            	ret	
4772                     ; 1077 void CAN_ClearFlag(CAN_FLAG_TypeDef CAN_Flag)
4772                     ; 1078 {
4773                     .text:	section	.text,new
4774  0000               _CAN_ClearFlag:
4776  0000 89            	pushw	x
4777  0001 88            	push	a
4778       00000001      OFST:	set	1
4781                     ; 1079   CAN_Page_TypeDef can_page = (CAN_Page_TypeDef)0;
4783                     ; 1081   assert_param(IS_CAN_FLAG_CLEAR_OK(CAN_Flag));
4785  0002 a33401        	cpw	x,#13313
4786  0005 272c          	jreq	L654
4787  0007 a33402        	cpw	x,#13314
4788  000a 2727          	jreq	L654
4789  000c a33404        	cpw	x,#13316
4790  000f 2722          	jreq	L654
4791  0011 a33208        	cpw	x,#12808
4792  0014 271d          	jreq	L654
4793  0016 a33210        	cpw	x,#12816
4794  0019 2718          	jreq	L654
4795  001b a33108        	cpw	x,#12552
4796  001e 2713          	jreq	L654
4797  0020 a33070        	cpw	x,#12400
4798  0023 270e          	jreq	L654
4799  0025 ae0439        	ldw	x,#1081
4800  0028 89            	pushw	x
4801  0029 5f            	clrw	x
4802  002a 89            	pushw	x
4803  002b ae0008        	ldw	x,#L572
4804  002e cd0000        	call	_assert_failed
4806  0031 5b04          	addw	sp,#4
4807  0033               L654:
4808                     ; 1082   if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
4810  0033 7b02          	ld	a,(OFST+1,sp)
4811  0035 a507          	bcp	a,#7
4812  0037 272d          	jreq	L3002
4813                     ; 1084     if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
4815  0039 1e02          	ldw	x,(OFST+1,sp)
4816  003b 01            	rrwa	x,a
4817  003c a40b          	and	a,#11
4818  003e 01            	rrwa	x,a
4819  003f a402          	and	a,#2
4820  0041 01            	rrwa	x,a
4821  0042 5d            	tnzw	x
4822  0043 2707          	jreq	L5002
4823                     ; 1087       CAN->RFR = (uint8_t)(CAN_Flag);
4825  0045 7b03          	ld	a,(OFST+2,sp)
4826  0047 c75424        	ld	21540,a
4828  004a 202a          	jra	L5102
4829  004c               L5002:
4830                     ; 1089     else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
4832  004c 1e02          	ldw	x,(OFST+1,sp)
4833  004e 01            	rrwa	x,a
4834  004f a403          	and	a,#3
4835  0051 01            	rrwa	x,a
4836  0052 a404          	and	a,#4
4837  0054 01            	rrwa	x,a
4838  0055 5d            	tnzw	x
4839  0056 2707          	jreq	L1102
4840                     ; 1092       CAN->TSR = (uint8_t)(CAN_Flag);
4842  0058 7b03          	ld	a,(OFST+2,sp)
4843  005a c75422        	ld	21538,a
4845  005d 2017          	jra	L5102
4846  005f               L1102:
4847                     ; 1097       CAN->MSR = (uint8_t)(CAN_Flag);
4849  005f 7b03          	ld	a,(OFST+2,sp)
4850  0061 c75421        	ld	21537,a
4851  0064 2010          	jra	L5102
4852  0066               L3002:
4853                     ; 1103     can_page = CAN_GetSelectedPage();
4855  0066 cd0000        	call	_CAN_GetSelectedPage
4857  0069 6b01          	ld	(OFST+0,sp),a
4859                     ; 1106     CAN->PSR = CAN_Page_Config;
4861  006b 35065427      	mov	21543,#6
4862                     ; 1107     CAN->Page.Config.ESR = (uint8_t)RESET;
4864  006f 725f5428      	clr	21544
4865                     ; 1110     CAN_SelectPage(can_page);
4867  0073 cd0000        	call	_CAN_SelectPage
4869  0076               L5102:
4870                     ; 1112 }
4873  0076 5b03          	addw	sp,#3
4874  0078 81            	ret	
4953                     ; 1119 FlagStatus CAN_GetFlagStatus(CAN_FLAG_TypeDef CAN_Flag)
4953                     ; 1120 {
4954                     .text:	section	.text,new
4955  0000               _CAN_GetFlagStatus:
4957  0000 89            	pushw	x
4958  0001 89            	pushw	x
4959       00000002      OFST:	set	2
4962                     ; 1121   FlagStatus bitstatus = RESET;
4964                     ; 1122   CAN_Page_TypeDef can_page = (CAN_Page_TypeDef)0;
4966                     ; 1125   assert_param(IS_CAN_FLAG_STATUS_OK(CAN_Flag));
4968  0002 a33401        	cpw	x,#13313
4969  0005 2740          	jreq	L474
4970  0007 a33402        	cpw	x,#13314
4971  000a 273b          	jreq	L474
4972  000c a33404        	cpw	x,#13316
4973  000f 2736          	jreq	L474
4974  0011 a31203        	cpw	x,#4611
4975  0014 2731          	jreq	L474
4976  0016 a33208        	cpw	x,#12808
4977  0019 272c          	jreq	L474
4978  001b a33210        	cpw	x,#12816
4979  001e 2727          	jreq	L474
4980  0020 a33108        	cpw	x,#12552
4981  0023 2722          	jreq	L474
4982  0025 a31001        	cpw	x,#4097
4983  0028 271d          	jreq	L474
4984  002a a31002        	cpw	x,#4098
4985  002d 2718          	jreq	L474
4986  002f a31004        	cpw	x,#4100
4987  0032 2713          	jreq	L474
4988  0034 a33070        	cpw	x,#12400
4989  0037 270e          	jreq	L474
4990  0039 ae0465        	ldw	x,#1125
4991  003c 89            	pushw	x
4992  003d 5f            	clrw	x
4993  003e 89            	pushw	x
4994  003f ae0008        	ldw	x,#L572
4995  0042 cd0000        	call	_assert_failed
4997  0045 5b04          	addw	sp,#4
4998  0047               L474:
4999                     ; 1127   if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
5001  0047 7b03          	ld	a,(OFST+1,sp)
5002  0049 a507          	bcp	a,#7
5003  004b 2753          	jreq	L5502
5004                     ; 1129     if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
5006  004d 1e03          	ldw	x,(OFST+1,sp)
5007  004f 01            	rrwa	x,a
5008  0050 a40b          	and	a,#11
5009  0052 01            	rrwa	x,a
5010  0053 a402          	and	a,#2
5011  0055 01            	rrwa	x,a
5012  0056 5d            	tnzw	x
5013  0057 2711          	jreq	L7502
5014                     ; 1132       if ((CAN->RFR & (uint16_t)CAN_Flag )!= RESET)
5016  0059 c65424        	ld	a,21540
5017  005c 5f            	clrw	x
5018  005d 97            	ld	xl,a
5019  005e 01            	rrwa	x,a
5020  005f 1404          	and	a,(OFST+2,sp)
5021  0061 01            	rrwa	x,a
5022  0062 1403          	and	a,(OFST+1,sp)
5023  0064 01            	rrwa	x,a
5024  0065 5d            	tnzw	x
5025  0066 2734          	jreq	L7702
5026                     ; 1135         bitstatus = SET;
5028  0068 202c          	jp	LC028
5029                     ; 1140         bitstatus = RESET;
5030  006a               L7502:
5031                     ; 1144     else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
5033  006a 1e03          	ldw	x,(OFST+1,sp)
5034  006c 01            	rrwa	x,a
5035  006d a403          	and	a,#3
5036  006f 01            	rrwa	x,a
5037  0070 a404          	and	a,#4
5038  0072 01            	rrwa	x,a
5039  0073 5d            	tnzw	x
5040  0074 2711          	jreq	L7602
5041                     ; 1147       if ((CAN->TSR & (uint16_t)CAN_Flag )!= RESET)
5043  0076 c65422        	ld	a,21538
5044  0079 5f            	clrw	x
5045  007a 97            	ld	xl,a
5046  007b 01            	rrwa	x,a
5047  007c 1404          	and	a,(OFST+2,sp)
5048  007e 01            	rrwa	x,a
5049  007f 1403          	and	a,(OFST+1,sp)
5050  0081 01            	rrwa	x,a
5051  0082 5d            	tnzw	x
5052  0083 2717          	jreq	L7702
5053                     ; 1150         bitstatus = SET;
5055  0085 200f          	jp	LC028
5056                     ; 1155         bitstatus = RESET;
5057  0087               L7602:
5058                     ; 1161       if ((CAN->MSR & (uint16_t)CAN_Flag )!= RESET)
5060  0087 c65421        	ld	a,21537
5061  008a 5f            	clrw	x
5062  008b 97            	ld	xl,a
5063  008c 01            	rrwa	x,a
5064  008d 1404          	and	a,(OFST+2,sp)
5065  008f 01            	rrwa	x,a
5066  0090 1403          	and	a,(OFST+1,sp)
5067  0092 01            	rrwa	x,a
5068  0093 5d            	tnzw	x
5069  0094 2706          	jreq	L7702
5070                     ; 1164         bitstatus = SET;
5072  0096               LC028:
5075  0096 a601          	ld	a,#1
5076  0098 6b02          	ld	(OFST+0,sp),a
5079  009a 2029          	jra	L3012
5080  009c               L7702:
5081                     ; 1169         bitstatus = RESET;
5085  009c 0f02          	clr	(OFST+0,sp)
5087  009e 2025          	jra	L3012
5088  00a0               L5502:
5089                     ; 1176     can_page = CAN_GetSelectedPage();
5091  00a0 cd0000        	call	_CAN_GetSelectedPage
5093  00a3 6b01          	ld	(OFST-1,sp),a
5095                     ; 1178     CAN->PSR = CAN_Page_Config;
5097  00a5 35065427      	mov	21543,#6
5098                     ; 1179     if ((CAN->Page.Config.ESR & (uint16_t)CAN_Flag) != RESET)
5100  00a9 c65428        	ld	a,21544
5101  00ac 5f            	clrw	x
5102  00ad 97            	ld	xl,a
5103  00ae 01            	rrwa	x,a
5104  00af 1404          	and	a,(OFST+2,sp)
5105  00b1 01            	rrwa	x,a
5106  00b2 1403          	and	a,(OFST+1,sp)
5107  00b4 01            	rrwa	x,a
5108  00b5 5d            	tnzw	x
5109  00b6 2706          	jreq	L5012
5110                     ; 1182       bitstatus = SET;
5112  00b8 a601          	ld	a,#1
5113  00ba 6b02          	ld	(OFST+0,sp),a
5116  00bc 2002          	jra	L7012
5117  00be               L5012:
5118                     ; 1187       bitstatus = RESET;
5120  00be 0f02          	clr	(OFST+0,sp)
5122  00c0               L7012:
5123                     ; 1190     CAN_SelectPage(can_page);
5125  00c0 7b01          	ld	a,(OFST-1,sp)
5126  00c2 cd0000        	call	_CAN_SelectPage
5128  00c5               L3012:
5129                     ; 1195   return  (FlagStatus)bitstatus;
5131  00c5 7b02          	ld	a,(OFST+0,sp)
5134  00c7 5b04          	addw	sp,#4
5135  00c9 81            	ret	
5195                     ; 1203 ITStatus CAN_GetITStatus(CAN_IT_TypeDef CAN_IT)
5195                     ; 1204 {
5196                     .text:	section	.text,new
5197  0000               _CAN_GetITStatus:
5199  0000 89            	pushw	x
5200  0001 89            	pushw	x
5201       00000002      OFST:	set	2
5204                     ; 1205   ITStatus pendingbitstatus = RESET;
5206                     ; 1206   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
5208  0002 cd0000        	call	_CAN_GetSelectedPage
5210  0005 6b01          	ld	(OFST-1,sp),a
5212                     ; 1209   assert_param(IS_CAN_IT_STATUS_OK(CAN_IT));
5214  0007 1e03          	ldw	x,(OFST+1,sp)
5215  0009 a30001        	cpw	x,#1
5216  000c 273d          	jreq	L415
5217  000e a30002        	cpw	x,#2
5218  0011 2738          	jreq	L415
5219  0013 a30004        	cpw	x,#4
5220  0016 2733          	jreq	L415
5221  0018 a30008        	cpw	x,#8
5222  001b 272e          	jreq	L415
5223  001d a30080        	cpw	x,#128
5224  0020 2729          	jreq	L415
5225  0022 a34000        	cpw	x,#16384
5226  0025 2724          	jreq	L415
5227  0027 a30100        	cpw	x,#256
5228  002a 271f          	jreq	L415
5229  002c a30200        	cpw	x,#512
5230  002f 271a          	jreq	L415
5231  0031 a30400        	cpw	x,#1024
5232  0034 2715          	jreq	L415
5233  0036 a30800        	cpw	x,#2048
5234  0039 2710          	jreq	L415
5235  003b ae04b9        	ldw	x,#1209
5236  003e 89            	pushw	x
5237  003f 5f            	clrw	x
5238  0040 89            	pushw	x
5239  0041 ae0008        	ldw	x,#L572
5240  0044 cd0000        	call	_assert_failed
5242  0047 5b04          	addw	sp,#4
5243  0049 1e03          	ldw	x,(OFST+1,sp)
5244  004b               L415:
5245                     ; 1212   switch (CAN_IT)
5248                     ; 1325     break;
5249  004b 5a            	decw	x
5250  004c 273a          	jreq	L1112
5251  004e 5a            	decw	x
5252  004f 2747          	jreq	L3112
5253  0051 1d0002        	subw	x,#2
5254  0054 2752          	jreq	L5112
5255  0056 1d0004        	subw	x,#4
5256  0059 275a          	jreq	L7112
5257  005b 1d0078        	subw	x,#120
5258  005e 2764          	jreq	L1212
5259  0060 1d0080        	subw	x,#128
5260  0063 2603cc00ec    	jreq	L5212
5261  0068 1d0100        	subw	x,#256
5262  006b 2603cc00fd    	jreq	L7212
5263  0070 1d0200        	subw	x,#512
5264  0073 2603cc0110    	jreq	L1312
5265  0078 1d0400        	subw	x,#1024
5266  007b 2603cc0123    	jreq	L3312
5267  0080 1d3800        	subw	x,#14336
5268  0083 2754          	jreq	L3212
5269                     ; 1323   default :
5269                     ; 1324     pendingbitstatus = RESET;
5270                     ; 1325     break;
5272  0085 cc0134        	jp	L5322
5273  0088               L1112:
5274                     ; 1214   case CAN_IT_TME:
5274                     ; 1215     if ((CAN->IER & CAN_IER_TMEIE) !=RESET)
5276  0088 7201542508    	btjf	21541,#0,L1712
5277                     ; 1217       pendingbitstatus = CheckITStatus(CAN->TSR, CAN_TSR_RQCP012);
5279  008d c65422        	ld	a,21538
5280  0090 ae0007        	ldw	x,#7
5283  0093 203a          	jp	LC030
5284  0095               L1712:
5285                     ; 1221       pendingbitstatus = RESET;
5286  0095 cc0134        	jp	L5322
5287  0098               L3112:
5288                     ; 1225   case CAN_IT_FMP:
5288                     ; 1226     if ((CAN->IER & CAN_IER_FMPIE) !=RESET)
5290  0098 7203542508    	btjf	21541,#1,L5712
5291                     ; 1228       pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FMP01);
5293  009d c65424        	ld	a,21540
5294  00a0 ae0003        	ldw	x,#3
5297  00a3 202a          	jp	LC030
5298  00a5               L5712:
5299                     ; 1232       pendingbitstatus = RESET;
5300  00a5 cc0134        	jp	L5322
5301  00a8               L5112:
5302                     ; 1235   case CAN_IT_FF:
5302                     ; 1236     if ((CAN->IER & CAN_IER_FFIE) !=RESET)
5304  00a8 7205542505    	btjf	21541,#2,L1022
5305                     ; 1238       pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FULL);
5307  00ad c65424        	ld	a,21540
5310  00b0 201a          	jp	LC031
5311  00b2               L1022:
5312                     ; 1242       pendingbitstatus = RESET;
5313  00b2 cc0134        	jp	L5322
5314  00b5               L7112:
5315                     ; 1245   case CAN_IT_FOV:
5315                     ; 1246     if ((CAN->IER & CAN_IER_FOVIE) !=RESET)
5317  00b5 7207542508    	btjf	21541,#3,L5022
5318                     ; 1248       pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FOVR);
5320  00ba c65424        	ld	a,21540
5321  00bd ae0010        	ldw	x,#16
5324  00c0 200d          	jp	LC030
5325  00c2               L5022:
5326                     ; 1252       pendingbitstatus = RESET;
5327  00c2 2070          	jp	L5322
5328  00c4               L1212:
5329                     ; 1255   case CAN_IT_WKU:
5329                     ; 1256     if ((CAN->IER & CAN_IER_WKUIE) !=RESET)
5331  00c4 720f54250e    	btjf	21541,#7,L1122
5332                     ; 1258       pendingbitstatus = CheckITStatus(CAN->MSR, CAN_MSR_WKUI);
5334  00c9 c65421        	ld	a,21537
5335  00cc               LC031:
5336  00cc ae0008        	ldw	x,#8
5338  00cf               LC030:
5339  00cf 95            	ld	xh,a
5340  00d0 cd0000        	call	L3_CheckITStatus
5341  00d3 6b02          	ld	(OFST+0,sp),a
5344  00d5 205f          	jra	L7612
5345  00d7               L1122:
5346                     ; 1262       pendingbitstatus = RESET;
5347  00d7 205b          	jp	L5322
5348  00d9               L3212:
5349                     ; 1266   case CAN_IT_ERR:
5349                     ; 1267     CAN->PSR = CAN_Page_Config;
5351  00d9 35065427      	mov	21543,#6
5352                     ; 1268     if ((CAN->Page.Config.EIER & CAN_EIER_ERRIE) !=RESET)
5354  00dd 720f542908    	btjf	21545,#7,L5122
5355                     ; 1270       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF|CAN_ESR_EPVF|CAN_ESR_BOFF|CAN_ESR_LEC);
5357  00e2 c65428        	ld	a,21544
5358  00e5 ae0077        	ldw	x,#119
5361  00e8 20e5          	jp	LC030
5362  00ea               L5122:
5363                     ; 1274       pendingbitstatus = RESET;
5364  00ea 2048          	jp	L5322
5365  00ec               L5212:
5366                     ; 1278   case CAN_IT_EWG:
5366                     ; 1279     CAN->PSR = CAN_Page_Config;
5368  00ec 35065427      	mov	21543,#6
5369                     ; 1280     if ((CAN->Page.Config.EIER & CAN_EIER_EWGIE) !=RESET)
5371  00f0 7201542906    	btjf	21545,#0,L1222
5372                     ; 1282       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF);
5374  00f5 c65428        	ld	a,21544
5375  00f8 5c            	incw	x
5378  00f9 20d4          	jp	LC030
5379  00fb               L1222:
5380                     ; 1286       pendingbitstatus = RESET;
5381  00fb 2037          	jp	L5322
5382  00fd               L7212:
5383                     ; 1290   case CAN_IT_EPV:
5383                     ; 1291     CAN->PSR = CAN_Page_Config;
5385  00fd 35065427      	mov	21543,#6
5386                     ; 1292     if ((CAN->Page.Config.EIER & CAN_EIER_EPVIE) !=RESET)
5388  0101 7203542908    	btjf	21545,#1,L5222
5389                     ; 1294       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EPVF);
5391  0106 c65428        	ld	a,21544
5392  0109 ae0002        	ldw	x,#2
5395  010c 20c1          	jp	LC030
5396  010e               L5222:
5397                     ; 1298       pendingbitstatus = RESET;
5398  010e 2024          	jp	L5322
5399  0110               L1312:
5400                     ; 1301   case CAN_IT_BOF:
5400                     ; 1302     CAN->PSR = CAN_Page_Config;
5402  0110 35065427      	mov	21543,#6
5403                     ; 1303     if ((CAN->Page.Config.EIER & CAN_EIER_BOFIE) !=RESET)
5405  0114 7205542908    	btjf	21545,#2,L1322
5406                     ; 1305       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_BOFF);
5408  0119 c65428        	ld	a,21544
5409  011c ae0004        	ldw	x,#4
5412  011f 20ae          	jp	LC030
5413  0121               L1322:
5414                     ; 1309       pendingbitstatus = RESET;
5415  0121 2011          	jp	L5322
5416  0123               L3312:
5417                     ; 1312   case CAN_IT_LEC:
5417                     ; 1313     CAN->PSR = CAN_Page_Config;
5419  0123 35065427      	mov	21543,#6
5420                     ; 1314     if ((CAN->Page.Config.EIER & CAN_EIER_LECIE) !=RESET)
5422  0127 7209542908    	btjf	21545,#4,L5322
5423                     ; 1316       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_LEC);
5425  012c c65428        	ld	a,21544
5426  012f ae0070        	ldw	x,#112
5429  0132 209b          	jp	LC030
5430  0134               L5322:
5431                     ; 1320       pendingbitstatus = RESET;
5443  0134 0f02          	clr	(OFST+0,sp)
5445  0136               L7612:
5446                     ; 1328   CAN_SelectPage(can_page);
5448  0136 7b01          	ld	a,(OFST-1,sp)
5449  0138 cd0000        	call	_CAN_SelectPage
5451                     ; 1330   return  (ITStatus)pendingbitstatus;
5453  013b 7b02          	ld	a,(OFST+0,sp)
5456  013d 5b04          	addw	sp,#4
5457  013f 81            	ret	
5506                     ; 1348 void CAN_ClearITPendingBit(CAN_IT_TypeDef CAN_IT)
5506                     ; 1349 {
5507                     .text:	section	.text,new
5508  0000               _CAN_ClearITPendingBit:
5510  0000 89            	pushw	x
5511  0001 88            	push	a
5512       00000001      OFST:	set	1
5515                     ; 1350   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
5517  0002 cd0000        	call	_CAN_GetSelectedPage
5519  0005 6b01          	ld	(OFST+0,sp),a
5521                     ; 1352   assert_param(IS_CAN_IT_PENDING_BIT_OK(CAN_IT));
5523  0007 1e02          	ldw	x,(OFST+1,sp)
5524  0009 a30001        	cpw	x,#1
5525  000c 2738          	jreq	L655
5526  000e a30004        	cpw	x,#4
5527  0011 2733          	jreq	L655
5528  0013 a30008        	cpw	x,#8
5529  0016 272e          	jreq	L655
5530  0018 a30080        	cpw	x,#128
5531  001b 2729          	jreq	L655
5532  001d a34000        	cpw	x,#16384
5533  0020 2724          	jreq	L655
5534  0022 a30100        	cpw	x,#256
5535  0025 271f          	jreq	L655
5536  0027 a30200        	cpw	x,#512
5537  002a 271a          	jreq	L655
5538  002c a30400        	cpw	x,#1024
5539  002f 2715          	jreq	L655
5540  0031 a30800        	cpw	x,#2048
5541  0034 2710          	jreq	L655
5542  0036 ae0548        	ldw	x,#1352
5543  0039 89            	pushw	x
5544  003a 5f            	clrw	x
5545  003b 89            	pushw	x
5546  003c ae0008        	ldw	x,#L572
5547  003f cd0000        	call	_assert_failed
5549  0042 5b04          	addw	sp,#4
5550  0044 1e02          	ldw	x,(OFST+1,sp)
5551  0046               L655:
5552                     ; 1354   switch (CAN_IT)
5555                     ; 1395   default :
5555                     ; 1396     break;
5556  0046 5a            	decw	x
5557  0047 272a          	jreq	L1422
5558  0049 1d0003        	subw	x,#3
5559  004c 272b          	jreq	L3422
5560  004e 1d0004        	subw	x,#4
5561  0051 272c          	jreq	L5422
5562  0053 1d0078        	subw	x,#120
5563  0056 272d          	jreq	L7422
5564  0058 1d0080        	subw	x,#128
5565  005b 2736          	jreq	L3522
5566  005d 1d0100        	subw	x,#256
5567  0060 2731          	jreq	L3522
5568  0062 1d0200        	subw	x,#512
5569  0065 272c          	jreq	L3522
5570  0067 1d0400        	subw	x,#1024
5571  006a 272d          	jreq	L1622
5572  006c 1d3800        	subw	x,#14336
5573  006f 271a          	jreq	L1522
5574  0071 202e          	jra	L1132
5575  0073               L1422:
5576                     ; 1356   case CAN_IT_TME:
5576                     ; 1357     CAN->TSR = CAN_TSR_RQCP012;/* rc_w1*/
5578  0073 35075422      	mov	21538,#7
5579                     ; 1358     break;
5581  0077 2028          	jra	L1132
5582  0079               L3422:
5583                     ; 1360   case CAN_IT_FF:
5583                     ; 1361     CAN->RFR = CAN_RFR_FULL; /* rc_w1*/
5585  0079 35085424      	mov	21540,#8
5586                     ; 1362     break;
5588  007d 2022          	jra	L1132
5589  007f               L5422:
5590                     ; 1364   case CAN_IT_FOV:
5590                     ; 1365     CAN->RFR = CAN_RFR_FOVR; /* rc_w1*/
5592  007f 35105424      	mov	21540,#16
5593                     ; 1366     break;
5595  0083 201c          	jra	L1132
5596  0085               L7422:
5597                     ; 1368   case CAN_IT_WKU:
5597                     ; 1369     CAN->MSR = CAN_MSR_WKUI;  /* rc_w1*/
5599  0085 35085421      	mov	21537,#8
5600                     ; 1370     break;
5602  0089 2016          	jra	L1132
5603  008b               L1522:
5604                     ; 1372   case CAN_IT_ERR:
5604                     ; 1373     CAN->PSR = CAN_Page_Config;
5606  008b 35065427      	mov	21543,#6
5607                     ; 1374     CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
5609  008f 725f5428      	clr	21544
5610                     ; 1375     CAN->MSR = CAN_MSR_ERRI;
5611                     ; 1376     break;
5613  0093               L3522:
5614                     ; 1378   case CAN_IT_EWG:
5614                     ; 1379     CAN->MSR = CAN_MSR_ERRI;
5615                     ; 1380     break;
5617                     ; 1382   case CAN_IT_EPV:
5617                     ; 1383     CAN->MSR = CAN_MSR_ERRI;
5618                     ; 1384     break;
5620                     ; 1386   case CAN_IT_BOF:
5620                     ; 1387     CAN->MSR = CAN_MSR_ERRI;
5625  0093 35045421      	mov	21537,#4
5626                     ; 1388     break;
5628  0097 2008          	jra	L1132
5629  0099               L1622:
5630                     ; 1390   case CAN_IT_LEC:
5630                     ; 1391     CAN->PSR = CAN_Page_Config;
5632  0099 35065427      	mov	21543,#6
5633                     ; 1392     CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
5635  009d 725f5428      	clr	21544
5636                     ; 1393     break;
5638                     ; 1395   default :
5638                     ; 1396     break;
5640  00a1               L1132:
5641                     ; 1399   CAN_SelectPage(can_page);
5643  00a1 7b01          	ld	a,(OFST+0,sp)
5644  00a3 cd0000        	call	_CAN_SelectPage
5646                     ; 1400 }
5649  00a6 5b03          	addw	sp,#3
5650  00a8 81            	ret	
5675                     ; 1407 CAN_Page_TypeDef CAN_GetSelectedPage(void)
5675                     ; 1408 {
5676                     .text:	section	.text,new
5677  0000               _CAN_GetSelectedPage:
5681                     ; 1409   return (CAN_Page_TypeDef)(CAN->PSR);
5683  0000 c65427        	ld	a,21543
5686  0003 81            	ret	
5721                     ; 1417 void CAN_SelectPage(CAN_Page_TypeDef CAN_Page)
5721                     ; 1418 {
5722                     .text:	section	.text,new
5723  0000               _CAN_SelectPage:
5727                     ; 1419   CAN->PSR = (uint8_t)CAN_Page;
5729  0000 c75427        	ld	21543,a
5730                     ; 1420 }
5733  0003 81            	ret	
5783                     ; 1428 static ITStatus CheckITStatus(uint8_t CAN_Reg, uint8_t It_Bit)
5783                     ; 1429 {
5784                     .text:	section	.text,new
5785  0000               L3_CheckITStatus:
5787  0000 89            	pushw	x
5788  0001 88            	push	a
5789       00000001      OFST:	set	1
5792                     ; 1430   ITStatus pendingbitstatus = RESET;
5794                     ; 1431   if ((CAN_Reg & It_Bit) != (uint8_t)RESET)
5796  0002 9f            	ld	a,xl
5797  0003 1402          	and	a,(OFST+1,sp)
5798  0005 2702          	jreq	L3632
5799                     ; 1434     pendingbitstatus = SET;
5801  0007 a601          	ld	a,#1
5804  0009               L3632:
5805                     ; 1439     pendingbitstatus = RESET;
5808                     ; 1441   return (ITStatus)pendingbitstatus;
5812  0009 5b03          	addw	sp,#3
5813  000b 81            	ret	
5883                     	xdef	__FMI
5884                     	xdef	__Data
5885                     	xdef	__DLC
5886                     	xdef	__RTR
5887                     	xdef	__IDE
5888                     	xdef	__Id
5889                     	xdef	_CAN_ClearITPendingBit
5890                     	xdef	_CAN_GetITStatus
5891                     	xdef	_CAN_ClearFlag
5892                     	xdef	_CAN_GetFlagStatus
5893                     	xdef	_CAN_SelectPage
5894                     	xdef	_CAN_GetSelectedPage
5895                     	xdef	_CAN_GetLastErrorCode
5896                     	xdef	_CAN_OperatingModeRequest
5897                     	xdef	_CAN_WakeUp
5898                     	xdef	_CAN_Sleep
5899                     	xdef	_CAN_GetMessageTimeStamp
5900                     	xdef	_CAN_GetReceivedFMI
5901                     	xdef	_CAN_GetReceivedData
5902                     	xdef	_CAN_GetReceivedDLC
5903                     	xdef	_CAN_GetReceivedRTR
5904                     	xdef	_CAN_GetReceivedIDE
5905                     	xdef	_CAN_GetReceivedId
5906                     	xdef	_CAN_Receive
5907                     	xdef	_CAN_MessagePending
5908                     	xdef	_CAN_FIFORelease
5909                     	xdef	_CAN_CancelTransmit
5910                     	xdef	_CAN_TransmitStatus
5911                     	xdef	_CAN_TTComModeCmd
5912                     	xdef	_CAN_Transmit
5913                     	xdef	_CAN_ST7CompatibilityCmd
5914                     	xdef	_CAN_ITConfig
5915                     	xdef	_CAN_FilterInit
5916                     	xdef	_CAN_Init
5917                     	xdef	_CAN_DeInit
5918                     	xref	_assert_failed
5919                     	switch	.const
5920  0008               L572:
5921  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
5922  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
5923  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
5924  003e 5f63616e2e63  	dc.b	"_can.c",0
5925                     	xref.b	c_lreg
5926                     	xref.b	c_x
5927                     	xref.b	c_y
5947                     	xref	c_uitol
5948                     	xref	c_uitolx
5949                     	xref	c_llsh
5950                     	xref	c_umul
5951                     	xref	c_lor
5952                     	xref	c_rtol
5953                     	xref	c_lursh
5954                     	xref	c_lgursh
5955                     	xref	c_lcmp
5956                     	xref	c_ltor
5957                     	end
