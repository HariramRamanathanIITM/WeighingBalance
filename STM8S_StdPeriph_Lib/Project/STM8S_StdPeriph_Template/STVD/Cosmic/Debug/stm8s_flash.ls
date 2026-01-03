   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  82                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  82                     ; 88 {
  83                     .text:	section	.text,new
  84  0000               f_FLASH_Unlock:
  86  0000 88            	push	a
  87       00000000      OFST:	set	0
  90                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  92  0001 a1fd          	cp	a,#253
  93  0003 2713          	jreq	L21
  94  0005 a1f7          	cp	a,#247
  95  0007 270f          	jreq	L21
  96  0009 ae005a        	ldw	x,#90
  97  000c 89            	pushw	x
  98  000d 5f            	clrw	x
  99  000e 89            	pushw	x
 100  000f ae0010        	ldw	x,#L73
 101  0012 8d000000      	callf	f_assert_failed
 103  0016 5b04          	addw	sp,#4
 104  0018               L21:
 105                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 107  0018 7b01          	ld	a,(OFST+1,sp)
 108  001a a1fd          	cp	a,#253
 109  001c 260a          	jrne	L14
 110                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 112  001e 35565062      	mov	20578,#86
 113                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 115  0022 35ae5062      	mov	20578,#174
 117  0026 2008          	jra	L34
 118  0028               L14:
 119                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 121  0028 35ae5064      	mov	20580,#174
 122                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 124  002c 35565064      	mov	20580,#86
 125  0030               L34:
 126                     ; 104 }
 129  0030 84            	pop	a
 130  0031 87            	retf	
 165                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 165                     ; 113 {
 166                     .text:	section	.text,new
 167  0000               f_FLASH_Lock:
 169  0000 88            	push	a
 170       00000000      OFST:	set	0
 173                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 175  0001 a1fd          	cp	a,#253
 176  0003 2713          	jreq	L42
 177  0005 a1f7          	cp	a,#247
 178  0007 270f          	jreq	L42
 179  0009 ae0073        	ldw	x,#115
 180  000c 89            	pushw	x
 181  000d 5f            	clrw	x
 182  000e 89            	pushw	x
 183  000f ae0010        	ldw	x,#L73
 184  0012 8d000000      	callf	f_assert_failed
 186  0016 5b04          	addw	sp,#4
 187  0018               L42:
 188                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 190  0018 c6505f        	ld	a,20575
 191  001b 1401          	and	a,(OFST+1,sp)
 192  001d c7505f        	ld	20575,a
 193                     ; 119 }
 196  0020 84            	pop	a
 197  0021 87            	retf	
 219                     ; 126 void FLASH_DeInit(void)
 219                     ; 127 {
 220                     .text:	section	.text,new
 221  0000               f_FLASH_DeInit:
 225                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 227  0000 725f505a      	clr	20570
 228                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 230  0004 725f505b      	clr	20571
 231                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 233  0008 35ff505c      	mov	20572,#255
 234                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 236  000c 7217505f      	bres	20575,#3
 237                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 239  0010 7213505f      	bres	20575,#1
 240                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 242  0014 c6505f        	ld	a,20575
 243                     ; 134 }
 246  0017 87            	retf	
 301                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 301                     ; 143 {
 302                     .text:	section	.text,new
 303  0000               f_FLASH_ITConfig:
 305  0000 88            	push	a
 306       00000000      OFST:	set	0
 309                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 311  0001 4d            	tnz	a
 312  0002 2712          	jreq	L04
 313  0004 4a            	dec	a
 314  0005 270f          	jreq	L04
 315  0007 ae0091        	ldw	x,#145
 316  000a 89            	pushw	x
 317  000b 5f            	clrw	x
 318  000c 89            	pushw	x
 319  000d ae0010        	ldw	x,#L73
 320  0010 8d000000      	callf	f_assert_failed
 322  0014 5b04          	addw	sp,#4
 323  0016               L04:
 324                     ; 147   if(NewState != DISABLE)
 326  0016 7b01          	ld	a,(OFST+1,sp)
 327  0018 2706          	jreq	L121
 328                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 330  001a 7212505a      	bset	20570,#1
 332  001e 2004          	jra	L321
 333  0020               L121:
 334                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 336  0020 7213505a      	bres	20570,#1
 337  0024               L321:
 338                     ; 155 }
 341  0024 84            	pop	a
 342  0025 87            	retf	
 376                     .const:	section	.text
 377  0000               L45:
 378  0000 00008000      	dc.l	32768
 379  0004               L65:
 380  0004 00010000      	dc.l	65536
 381  0008               L06:
 382  0008 00004000      	dc.l	16384
 383  000c               L26:
 384  000c 00004400      	dc.l	17408
 385                     ; 164 void FLASH_EraseByte(uint32_t Address)
 385                     ; 165 {
 386                     .text:	section	.text,new
 387  0000               f_FLASH_EraseByte:
 389       00000000      OFST:	set	0
 392                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 394  0000 96            	ldw	x,sp
 395  0001 1c0004        	addw	x,#OFST+4
 396  0004 8d000000      	callf	d_ltor
 398  0008 ae0000        	ldw	x,#L45
 399  000b 8d000000      	callf	d_lcmp
 401  000f 2511          	jrult	L25
 402  0011 96            	ldw	x,sp
 403  0012 1c0004        	addw	x,#OFST+4
 404  0015 8d000000      	callf	d_ltor
 406  0019 ae0004        	ldw	x,#L65
 407  001c 8d000000      	callf	d_lcmp
 409  0020 2531          	jrult	L46
 410  0022               L25:
 411  0022 96            	ldw	x,sp
 412  0023 1c0004        	addw	x,#OFST+4
 413  0026 8d000000      	callf	d_ltor
 415  002a ae0008        	ldw	x,#L06
 416  002d 8d000000      	callf	d_lcmp
 418  0031 2511          	jrult	L64
 419  0033 96            	ldw	x,sp
 420  0034 1c0004        	addw	x,#OFST+4
 421  0037 8d000000      	callf	d_ltor
 423  003b ae000c        	ldw	x,#L26
 424  003e 8d000000      	callf	d_lcmp
 426  0042 250f          	jrult	L46
 427  0044               L64:
 428  0044 ae00a7        	ldw	x,#167
 429  0047 89            	pushw	x
 430  0048 5f            	clrw	x
 431  0049 89            	pushw	x
 432  004a ae0010        	ldw	x,#L73
 433  004d 8d000000      	callf	f_assert_failed
 435  0051 5b04          	addw	sp,#4
 436  0053               L46:
 437                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 439  0053 1e06          	ldw	x,(OFST+6,sp)
 440  0055 7f            	clr	(x)
 441                     ; 171 }
 444  0056 87            	retf	
 487                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 487                     ; 182 {
 488                     .text:	section	.text,new
 489  0000               f_FLASH_ProgramByte:
 491       00000000      OFST:	set	0
 494                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 496  0000 96            	ldw	x,sp
 497  0001 1c0004        	addw	x,#OFST+4
 498  0004 8d000000      	callf	d_ltor
 500  0008 ae0000        	ldw	x,#L45
 501  000b 8d000000      	callf	d_lcmp
 503  000f 2511          	jrult	L67
 504  0011 96            	ldw	x,sp
 505  0012 1c0004        	addw	x,#OFST+4
 506  0015 8d000000      	callf	d_ltor
 508  0019 ae0004        	ldw	x,#L65
 509  001c 8d000000      	callf	d_lcmp
 511  0020 2531          	jrult	L001
 512  0022               L67:
 513  0022 96            	ldw	x,sp
 514  0023 1c0004        	addw	x,#OFST+4
 515  0026 8d000000      	callf	d_ltor
 517  002a ae0008        	ldw	x,#L06
 518  002d 8d000000      	callf	d_lcmp
 520  0031 2511          	jrult	L27
 521  0033 96            	ldw	x,sp
 522  0034 1c0004        	addw	x,#OFST+4
 523  0037 8d000000      	callf	d_ltor
 525  003b ae000c        	ldw	x,#L26
 526  003e 8d000000      	callf	d_lcmp
 528  0042 250f          	jrult	L001
 529  0044               L27:
 530  0044 ae00b8        	ldw	x,#184
 531  0047 89            	pushw	x
 532  0048 5f            	clrw	x
 533  0049 89            	pushw	x
 534  004a ae0010        	ldw	x,#L73
 535  004d 8d000000      	callf	f_assert_failed
 537  0051 5b04          	addw	sp,#4
 538  0053               L001:
 539                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 541  0053 1e06          	ldw	x,(OFST+6,sp)
 542  0055 7b08          	ld	a,(OFST+8,sp)
 543  0057 f7            	ld	(x),a
 544                     ; 186 }
 547  0058 87            	retf	
 581                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 581                     ; 196 {
 582                     .text:	section	.text,new
 583  0000               f_FLASH_ReadByte:
 585       00000000      OFST:	set	0
 588                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 590  0000 96            	ldw	x,sp
 591  0001 1c0004        	addw	x,#OFST+4
 592  0004 8d000000      	callf	d_ltor
 594  0008 ae0000        	ldw	x,#L45
 595  000b 8d000000      	callf	d_lcmp
 597  000f 2511          	jrult	L211
 598  0011 96            	ldw	x,sp
 599  0012 1c0004        	addw	x,#OFST+4
 600  0015 8d000000      	callf	d_ltor
 602  0019 ae0004        	ldw	x,#L65
 603  001c 8d000000      	callf	d_lcmp
 605  0020 2531          	jrult	L411
 606  0022               L211:
 607  0022 96            	ldw	x,sp
 608  0023 1c0004        	addw	x,#OFST+4
 609  0026 8d000000      	callf	d_ltor
 611  002a ae0008        	ldw	x,#L06
 612  002d 8d000000      	callf	d_lcmp
 614  0031 2511          	jrult	L601
 615  0033 96            	ldw	x,sp
 616  0034 1c0004        	addw	x,#OFST+4
 617  0037 8d000000      	callf	d_ltor
 619  003b ae000c        	ldw	x,#L26
 620  003e 8d000000      	callf	d_lcmp
 622  0042 250f          	jrult	L411
 623  0044               L601:
 624  0044 ae00c6        	ldw	x,#198
 625  0047 89            	pushw	x
 626  0048 5f            	clrw	x
 627  0049 89            	pushw	x
 628  004a ae0010        	ldw	x,#L73
 629  004d 8d000000      	callf	f_assert_failed
 631  0051 5b04          	addw	sp,#4
 632  0053               L411:
 633                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 635  0053 1e06          	ldw	x,(OFST+6,sp)
 636  0055 f6            	ld	a,(x)
 639  0056 87            	retf	
 682                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 682                     ; 213 {
 683                     .text:	section	.text,new
 684  0000               f_FLASH_ProgramWord:
 686       00000000      OFST:	set	0
 689                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 691  0000 96            	ldw	x,sp
 692  0001 1c0004        	addw	x,#OFST+4
 693  0004 8d000000      	callf	d_ltor
 695  0008 ae0000        	ldw	x,#L45
 696  000b 8d000000      	callf	d_lcmp
 698  000f 2511          	jrult	L621
 699  0011 96            	ldw	x,sp
 700  0012 1c0004        	addw	x,#OFST+4
 701  0015 8d000000      	callf	d_ltor
 703  0019 ae0004        	ldw	x,#L65
 704  001c 8d000000      	callf	d_lcmp
 706  0020 2531          	jrult	L031
 707  0022               L621:
 708  0022 96            	ldw	x,sp
 709  0023 1c0004        	addw	x,#OFST+4
 710  0026 8d000000      	callf	d_ltor
 712  002a ae0008        	ldw	x,#L06
 713  002d 8d000000      	callf	d_lcmp
 715  0031 2511          	jrult	L221
 716  0033 96            	ldw	x,sp
 717  0034 1c0004        	addw	x,#OFST+4
 718  0037 8d000000      	callf	d_ltor
 720  003b ae000c        	ldw	x,#L26
 721  003e 8d000000      	callf	d_lcmp
 723  0042 250f          	jrult	L031
 724  0044               L221:
 725  0044 ae00d7        	ldw	x,#215
 726  0047 89            	pushw	x
 727  0048 5f            	clrw	x
 728  0049 89            	pushw	x
 729  004a ae0010        	ldw	x,#L73
 730  004d 8d000000      	callf	f_assert_failed
 732  0051 5b04          	addw	sp,#4
 733  0053               L031:
 734                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 736  0053 721c505b      	bset	20571,#6
 737                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 739  0057 721d505c      	bres	20572,#6
 740                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 742  005b 1e06          	ldw	x,(OFST+6,sp)
 743  005d 7b08          	ld	a,(OFST+8,sp)
 744  005f f7            	ld	(x),a
 745                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 747  0060 7b09          	ld	a,(OFST+9,sp)
 748  0062 e701          	ld	(1,x),a
 749                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 751  0064 7b0a          	ld	a,(OFST+10,sp)
 752  0066 e702          	ld	(2,x),a
 753                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 755  0068 7b0b          	ld	a,(OFST+11,sp)
 756  006a e703          	ld	(3,x),a
 757                     ; 229 }
 760  006c 87            	retf	
 805                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 805                     ; 238 {
 806                     .text:	section	.text,new
 807  0000               f_FLASH_ProgramOptionByte:
 809  0000 89            	pushw	x
 810       00000000      OFST:	set	0
 813                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 815  0001 a34800        	cpw	x,#18432
 816  0004 2505          	jrult	L631
 817  0006 a34880        	cpw	x,#18560
 818  0009 250f          	jrult	L041
 819  000b               L631:
 820  000b ae00f0        	ldw	x,#240
 821  000e 89            	pushw	x
 822  000f 5f            	clrw	x
 823  0010 89            	pushw	x
 824  0011 ae0010        	ldw	x,#L73
 825  0014 8d000000      	callf	f_assert_failed
 827  0018 5b04          	addw	sp,#4
 828  001a               L041:
 829                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 831  001a 721e505b      	bset	20571,#7
 832                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 834  001e 721f505c      	bres	20572,#7
 835                     ; 247   if(Address == 0x4800)
 837  0022 1e01          	ldw	x,(OFST+1,sp)
 838  0024 a34800        	cpw	x,#18432
 839  0027 2605          	jrne	L742
 840                     ; 250     *((NEAR uint8_t*)Address) = Data;
 842  0029 7b06          	ld	a,(OFST+6,sp)
 843  002b f7            	ld	(x),a
 845  002c 2006          	jra	L152
 846  002e               L742:
 847                     ; 255     *((NEAR uint8_t*)Address) = Data;
 849  002e 7b06          	ld	a,(OFST+6,sp)
 850  0030 f7            	ld	(x),a
 851                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 853  0031 43            	cpl	a
 854  0032 e701          	ld	(1,x),a
 855  0034               L152:
 856                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 858  0034 a6fd          	ld	a,#253
 859  0036 8d000000      	callf	f_FLASH_WaitForLastOperation
 861                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 863  003a 721f505b      	bres	20571,#7
 864                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 866  003e 721e505c      	bset	20572,#7
 867                     ; 263 }
 870  0042 85            	popw	x
 871  0043 87            	retf	
 907                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 907                     ; 271 {
 908                     .text:	section	.text,new
 909  0000               f_FLASH_EraseOptionByte:
 911  0000 89            	pushw	x
 912       00000000      OFST:	set	0
 915                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 917  0001 a34800        	cpw	x,#18432
 918  0004 2505          	jrult	L051
 919  0006 a34880        	cpw	x,#18560
 920  0009 250f          	jrult	L251
 921  000b               L051:
 922  000b ae0111        	ldw	x,#273
 923  000e 89            	pushw	x
 924  000f 5f            	clrw	x
 925  0010 89            	pushw	x
 926  0011 ae0010        	ldw	x,#L73
 927  0014 8d000000      	callf	f_assert_failed
 929  0018 5b04          	addw	sp,#4
 930  001a               L251:
 931                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 933  001a 721e505b      	bset	20571,#7
 934                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 936  001e 721f505c      	bres	20572,#7
 937                     ; 280   if(Address == 0x4800)
 939  0022 1e01          	ldw	x,(OFST+1,sp)
 940  0024 a34800        	cpw	x,#18432
 941  0027 2603          	jrne	L172
 942                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 944  0029 7f            	clr	(x)
 946  002a 2005          	jra	L372
 947  002c               L172:
 948                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 950  002c 7f            	clr	(x)
 951                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 953  002d a6ff          	ld	a,#255
 954  002f e701          	ld	(1,x),a
 955  0031               L372:
 956                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 958  0031 a6fd          	ld	a,#253
 959  0033 8d000000      	callf	f_FLASH_WaitForLastOperation
 961                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 963  0037 721f505b      	bres	20571,#7
 964                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 966  003b 721e505c      	bset	20572,#7
 967                     ; 296 }
 970  003f 85            	popw	x
 971  0040 87            	retf	
1034                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1034                     ; 304 {
1035                     .text:	section	.text,new
1036  0000               f_FLASH_ReadOptionByte:
1038  0000 89            	pushw	x
1039  0001 5204          	subw	sp,#4
1040       00000004      OFST:	set	4
1043                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1045                     ; 306   uint16_t res_value = 0;
1047                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1049  0003 a34800        	cpw	x,#18432
1050  0006 2505          	jrult	L261
1051  0008 a34880        	cpw	x,#18560
1052  000b 250f          	jrult	L461
1053  000d               L261:
1054  000d ae0135        	ldw	x,#309
1055  0010 89            	pushw	x
1056  0011 5f            	clrw	x
1057  0012 89            	pushw	x
1058  0013 ae0010        	ldw	x,#L73
1059  0016 8d000000      	callf	f_assert_failed
1061  001a 5b04          	addw	sp,#4
1062  001c               L461:
1063                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1065  001c 1e05          	ldw	x,(OFST+1,sp)
1066  001e f6            	ld	a,(x)
1067  001f 6b01          	ld	(OFST-3,sp),a
1069                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1071  0021 e601          	ld	a,(1,x)
1072  0023 6b02          	ld	(OFST-2,sp),a
1074                     ; 315   if(Address == 0x4800)	 
1076  0025 a34800        	cpw	x,#18432
1077  0028 2606          	jrne	L723
1078                     ; 317     res_value =	 value_optbyte;
1080  002a 7b01          	ld	a,(OFST-3,sp)
1081  002c 5f            	clrw	x
1082  002d 97            	ld	xl,a
1085  002e 201c          	jra	L133
1086  0030               L723:
1087                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1089  0030 43            	cpl	a
1090  0031 1101          	cp	a,(OFST-3,sp)
1091  0033 2614          	jrne	L333
1092                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1094  0035 7b01          	ld	a,(OFST-3,sp)
1095  0037 97            	ld	xl,a
1096  0038 4f            	clr	a
1097  0039 02            	rlwa	x,a
1098  003a 1f03          	ldw	(OFST-1,sp),x
1100                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1102  003c 5f            	clrw	x
1103  003d 7b02          	ld	a,(OFST-2,sp)
1104  003f 97            	ld	xl,a
1105  0040 01            	rrwa	x,a
1106  0041 1a04          	or	a,(OFST+0,sp)
1107  0043 01            	rrwa	x,a
1108  0044 1a03          	or	a,(OFST-1,sp)
1109  0046 01            	rrwa	x,a
1112  0047 2003          	jra	L133
1113  0049               L333:
1114                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1116  0049 ae5555        	ldw	x,#21845
1118  004c               L133:
1119                     ; 331   return(res_value);
1123  004c 5b06          	addw	sp,#6
1124  004e 87            	retf	
1198                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1198                     ; 341 {
1199                     .text:	section	.text,new
1200  0000               f_FLASH_SetLowPowerMode:
1202  0000 88            	push	a
1203       00000000      OFST:	set	0
1206                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1208  0001 a104          	cp	a,#4
1209  0003 271a          	jreq	L671
1210  0005 a108          	cp	a,#8
1211  0007 2716          	jreq	L671
1212  0009 4d            	tnz	a
1213  000a 2713          	jreq	L671
1214  000c a10c          	cp	a,#12
1215  000e 270f          	jreq	L671
1216  0010 ae0157        	ldw	x,#343
1217  0013 89            	pushw	x
1218  0014 5f            	clrw	x
1219  0015 89            	pushw	x
1220  0016 ae0010        	ldw	x,#L73
1221  0019 8d000000      	callf	f_assert_failed
1223  001d 5b04          	addw	sp,#4
1224  001f               L671:
1225                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1227  001f c6505a        	ld	a,20570
1228  0022 a4f3          	and	a,#243
1229  0024 c7505a        	ld	20570,a
1230                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1232  0027 c6505a        	ld	a,20570
1233  002a 1a01          	or	a,(OFST+1,sp)
1234  002c c7505a        	ld	20570,a
1235                     ; 350 }
1238  002f 84            	pop	a
1239  0030 87            	retf	
1297                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1297                     ; 359 {
1298                     .text:	section	.text,new
1299  0000               f_FLASH_SetProgrammingTime:
1301  0000 88            	push	a
1302       00000000      OFST:	set	0
1305                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1307  0001 4d            	tnz	a
1308  0002 2712          	jreq	L012
1309  0004 4a            	dec	a
1310  0005 270f          	jreq	L012
1311  0007 ae0169        	ldw	x,#361
1312  000a 89            	pushw	x
1313  000b 5f            	clrw	x
1314  000c 89            	pushw	x
1315  000d ae0010        	ldw	x,#L73
1316  0010 8d000000      	callf	f_assert_failed
1318  0014 5b04          	addw	sp,#4
1319  0016               L012:
1320                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1322  0016 7211505a      	bres	20570,#0
1323                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1325  001a c6505a        	ld	a,20570
1326  001d 1a01          	or	a,(OFST+1,sp)
1327  001f c7505a        	ld	20570,a
1328                     ; 365 }
1331  0022 84            	pop	a
1332  0023 87            	retf	
1356                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1356                     ; 373 {
1357                     .text:	section	.text,new
1358  0000               f_FLASH_GetLowPowerMode:
1362                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1364  0000 c6505a        	ld	a,20570
1365  0003 a40c          	and	a,#12
1368  0005 87            	retf	
1392                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1392                     ; 383 {
1393                     .text:	section	.text,new
1394  0000               f_FLASH_GetProgrammingTime:
1398                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1400  0000 c6505a        	ld	a,20570
1401  0003 a401          	and	a,#1
1404  0005 87            	retf	
1437                     ; 392 uint32_t FLASH_GetBootSize(void)
1437                     ; 393 {
1438                     .text:	section	.text,new
1439  0000               f_FLASH_GetBootSize:
1441  0000 5204          	subw	sp,#4
1442       00000004      OFST:	set	4
1445                     ; 394   uint32_t temp = 0;
1447                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1449  0002 c6505d        	ld	a,20573
1450  0005 5f            	clrw	x
1451  0006 97            	ld	xl,a
1452  0007 90ae0200      	ldw	y,#512
1453  000b 8d000000      	callf	d_umul
1455  000f 96            	ldw	x,sp
1456  0010 5c            	incw	x
1457  0011 8d000000      	callf	d_rtol
1460                     ; 400   if(FLASH->FPR == 0xFF)
1462  0015 c6505d        	ld	a,20573
1463  0018 4c            	inc	a
1464  0019 260e          	jrne	L554
1465                     ; 402     temp += 512;
1467  001b ae0200        	ldw	x,#512
1468  001e bf02          	ldw	c_lreg+2,x
1469  0020 5f            	clrw	x
1470  0021 bf00          	ldw	c_lreg,x
1471  0023 96            	ldw	x,sp
1472  0024 5c            	incw	x
1473  0025 8d000000      	callf	d_lgadd
1476  0029               L554:
1477                     ; 406   return(temp);
1479  0029 96            	ldw	x,sp
1480  002a 5c            	incw	x
1481  002b 8d000000      	callf	d_ltor
1485  002f 5b04          	addw	sp,#4
1486  0031 87            	retf	
1595                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1595                     ; 418 {
1596                     .text:	section	.text,new
1597  0000               f_FLASH_GetFlagStatus:
1599  0000 88            	push	a
1600  0001 88            	push	a
1601       00000001      OFST:	set	1
1604                     ; 419   FlagStatus status = RESET;
1606                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1608  0002 a140          	cp	a,#64
1609  0004 271e          	jreq	L032
1610  0006 a108          	cp	a,#8
1611  0008 271a          	jreq	L032
1612  000a a104          	cp	a,#4
1613  000c 2716          	jreq	L032
1614  000e a102          	cp	a,#2
1615  0010 2712          	jreq	L032
1616  0012 4a            	dec	a
1617  0013 270f          	jreq	L032
1618  0015 ae01a5        	ldw	x,#421
1619  0018 89            	pushw	x
1620  0019 5f            	clrw	x
1621  001a 89            	pushw	x
1622  001b ae0010        	ldw	x,#L73
1623  001e 8d000000      	callf	f_assert_failed
1625  0022 5b04          	addw	sp,#4
1626  0024               L032:
1627                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1629  0024 c6505f        	ld	a,20575
1630  0027 1502          	bcp	a,(OFST+1,sp)
1631  0029 2704          	jreq	L725
1632                     ; 426     status = SET; /* FLASH_FLAG is set */
1634  002b a601          	ld	a,#1
1637  002d 2001          	jra	L135
1638  002f               L725:
1639                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1641  002f 4f            	clr	a
1643  0030               L135:
1644                     ; 434   return status;
1648  0030 85            	popw	x
1649  0031 87            	retf	
1741                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1741                     ; 550 {
1742                     .text:	section	.text,new
1743  0000               f_FLASH_WaitForLastOperation:
1745  0000 5203          	subw	sp,#3
1746       00000003      OFST:	set	3
1749                     ; 551   uint8_t flagstatus = 0x00;
1751  0002 0f03          	clr	(OFST+0,sp)
1753                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1755  0004 aeffff        	ldw	x,#65535
1756  0007 1f01          	ldw	(OFST-2,sp),x
1758                     ; 557     if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1760  0009 a1fd          	cp	a,#253
1761  000b 2620          	jrne	L316
1763  000d 200a          	jra	L106
1764  000f               L775:
1765                     ; 561         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1765                     ; 562                                                         FLASH_IAPSR_WR_PG_DIS));
1767  000f c6505f        	ld	a,20575
1768  0012 a405          	and	a,#5
1769  0014 6b03          	ld	(OFST+0,sp),a
1771                     ; 563         timeout--;
1773  0016 5a            	decw	x
1774  0017 1f01          	ldw	(OFST-2,sp),x
1776  0019               L106:
1777                     ; 559       while((flagstatus == 0x00) && (timeout != 0x00))
1779  0019 7b03          	ld	a,(OFST+0,sp)
1780  001b 2618          	jrne	L706
1782  001d 1e01          	ldw	x,(OFST-2,sp)
1783  001f 26ee          	jrne	L775
1784  0021 2012          	jra	L706
1785  0023               L116:
1786                     ; 570         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1786                     ; 571                                                         FLASH_IAPSR_WR_PG_DIS));
1788  0023 c6505f        	ld	a,20575
1789  0026 a441          	and	a,#65
1790  0028 6b03          	ld	(OFST+0,sp),a
1792                     ; 572         timeout--;
1794  002a 5a            	decw	x
1795  002b 1f01          	ldw	(OFST-2,sp),x
1797  002d               L316:
1798                     ; 568       while((flagstatus == 0x00) && (timeout != 0x00))
1800  002d 7b03          	ld	a,(OFST+0,sp)
1801  002f 2604          	jrne	L706
1803  0031 1e01          	ldw	x,(OFST-2,sp)
1804  0033 26ee          	jrne	L116
1805  0035               L706:
1806                     ; 584   if(timeout == 0x00 )
1808  0035 1e01          	ldw	x,(OFST-2,sp)
1809  0037 2602          	jrne	L126
1810                     ; 586     flagstatus = FLASH_STATUS_TIMEOUT;
1812  0039 a602          	ld	a,#2
1814  003b               L126:
1815                     ; 589   return((FLASH_Status_TypeDef)flagstatus);
1819  003b 5b03          	addw	sp,#3
1820  003d 87            	retf	
1883                     ; 599 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1883                     ; 600 {
1884                     .text:	section	.text,new
1885  0000               f_FLASH_EraseBlock:
1887  0000 89            	pushw	x
1888  0001 5206          	subw	sp,#6
1889       00000006      OFST:	set	6
1892                     ; 601   uint32_t startaddress = 0;
1894                     ; 611   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1896  0003 7b0c          	ld	a,(OFST+6,sp)
1897  0005 a1fd          	cp	a,#253
1898  0007 270d          	jreq	L442
1899  0009 a1f7          	cp	a,#247
1900  000b 2709          	jreq	L442
1901  000d ae0263        	ldw	x,#611
1902  0010 8d6a006a      	callf	LC001
1903  0014 7b0c          	ld	a,(OFST+6,sp)
1904  0016               L442:
1905                     ; 612   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1907  0016 a1fd          	cp	a,#253
1908  0018 2613          	jrne	L556
1909                     ; 614     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1911  001a 1e07          	ldw	x,(OFST+1,sp)
1912  001c a30100        	cpw	x,#256
1913  001f 2507          	jrult	L252
1914  0021 ae0266        	ldw	x,#614
1915  0024 8d6a006a      	callf	LC001
1916  0028               L252:
1917                     ; 615     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1919  0028 ae8000        	ldw	x,#32768
1921  002b 2011          	jra	L756
1922  002d               L556:
1923                     ; 619     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1925  002d 1e07          	ldw	x,(OFST+1,sp)
1926  002f a30008        	cpw	x,#8
1927  0032 2507          	jrult	L062
1928  0034 ae026b        	ldw	x,#619
1929  0037 8d6a006a      	callf	LC001
1930  003b               L062:
1931                     ; 620     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1933  003b ae4000        	ldw	x,#16384
1934  003e               L756:
1935  003e 1f05          	ldw	(OFST-1,sp),x
1936  0040 5f            	clrw	x
1937  0041 1f03          	ldw	(OFST-3,sp),x
1939                     ; 628     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1941  0043 a680          	ld	a,#128
1942  0045 1e07          	ldw	x,(OFST+1,sp)
1943  0047 8d000000      	callf	d_cmulx
1945  004b 96            	ldw	x,sp
1946  004c 1c0003        	addw	x,#OFST-3
1947  004f 8d000000      	callf	d_ladd
1949  0053 be02          	ldw	x,c_lreg+2
1950  0055 1f01          	ldw	(OFST-5,sp),x
1952                     ; 632   FLASH->CR2 |= FLASH_CR2_ERASE;
1954  0057 721a505b      	bset	20571,#5
1955                     ; 633   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1957  005b 721b505c      	bres	20572,#5
1958                     ; 637     *pwFlash = (uint32_t)0;
1960  005f 4f            	clr	a
1961  0060 e703          	ld	(3,x),a
1962  0062 e702          	ld	(2,x),a
1963  0064 e701          	ld	(1,x),a
1964  0066 f7            	ld	(x),a
1965                     ; 645 }
1968  0067 5b08          	addw	sp,#8
1969  0069 87            	retf	
1970  006a               LC001:
1971  006a 89            	pushw	x
1972  006b 5f            	clrw	x
1973  006c 89            	pushw	x
1974  006d ae0010        	ldw	x,#L73
1975  0070 8d000000      	callf	f_assert_failed
1977  0074 5b04          	addw	sp,#4
1978  0076 87            	retf	
2082                     ; 656 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2082                     ; 657                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2082                     ; 658 {
2083                     .text:	section	.text,new
2084  0000               f_FLASH_ProgramBlock:
2086  0000 89            	pushw	x
2087  0001 5206          	subw	sp,#6
2088       00000006      OFST:	set	6
2091                     ; 659   uint16_t Count = 0;
2093                     ; 660   uint32_t startaddress = 0;
2095                     ; 663   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2097  0003 7b0c          	ld	a,(OFST+6,sp)
2098  0005 a1fd          	cp	a,#253
2099  0007 270b          	jreq	L272
2100  0009 a1f7          	cp	a,#247
2101  000b 2707          	jreq	L272
2102  000d ae0297        	ldw	x,#663
2103  0010 8d920092      	callf	LC002
2104  0014               L272:
2105                     ; 664   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2107  0014 7b0d          	ld	a,(OFST+7,sp)
2108  0016 270b          	jreq	L203
2109  0018 a110          	cp	a,#16
2110  001a 2707          	jreq	L203
2111  001c ae0298        	ldw	x,#664
2112  001f 8d920092      	callf	LC002
2113  0023               L203:
2114                     ; 665   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2116  0023 7b0c          	ld	a,(OFST+6,sp)
2117  0025 a1fd          	cp	a,#253
2118  0027 2613          	jrne	L337
2119                     ; 667     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2121  0029 1e07          	ldw	x,(OFST+1,sp)
2122  002b a30100        	cpw	x,#256
2123  002e 2507          	jrult	L013
2124  0030 ae029b        	ldw	x,#667
2125  0033 8d920092      	callf	LC002
2126  0037               L013:
2127                     ; 668     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2129  0037 ae8000        	ldw	x,#32768
2131  003a 2011          	jra	L537
2132  003c               L337:
2133                     ; 672     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2135  003c 1e07          	ldw	x,(OFST+1,sp)
2136  003e a30008        	cpw	x,#8
2137  0041 2507          	jrult	L613
2138  0043 ae02a0        	ldw	x,#672
2139  0046 8d920092      	callf	LC002
2140  004a               L613:
2141                     ; 673     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2143  004a ae4000        	ldw	x,#16384
2144  004d               L537:
2145  004d 1f03          	ldw	(OFST-3,sp),x
2146  004f 5f            	clrw	x
2147  0050 1f01          	ldw	(OFST-5,sp),x
2149                     ; 677   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2151  0052 a680          	ld	a,#128
2152  0054 1e07          	ldw	x,(OFST+1,sp)
2153  0056 8d000000      	callf	d_cmulx
2155  005a 96            	ldw	x,sp
2156  005b 5c            	incw	x
2157  005c 8d000000      	callf	d_lgadd
2160                     ; 680   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2162  0060 7b0d          	ld	a,(OFST+7,sp)
2163  0062 260a          	jrne	L737
2164                     ; 683     FLASH->CR2 |= FLASH_CR2_PRG;
2166  0064 7210505b      	bset	20571,#0
2167                     ; 684     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2169  0068 7211505c      	bres	20572,#0
2171  006c 2008          	jra	L147
2172  006e               L737:
2173                     ; 689     FLASH->CR2 |= FLASH_CR2_FPRG;
2175  006e 7218505b      	bset	20571,#4
2176                     ; 690     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2178  0072 7219505c      	bres	20572,#4
2179  0076               L147:
2180                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2182  0076 5f            	clrw	x
2183  0077 1f05          	ldw	(OFST-1,sp),x
2185  0079               L347:
2186                     ; 696     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2188  0079 1e0e          	ldw	x,(OFST+8,sp)
2189  007b 72fb05        	addw	x,(OFST-1,sp)
2190  007e f6            	ld	a,(x)
2191  007f 1e03          	ldw	x,(OFST-3,sp)
2192  0081 72fb05        	addw	x,(OFST-1,sp)
2193  0084 f7            	ld	(x),a
2194                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2196  0085 1e05          	ldw	x,(OFST-1,sp)
2197  0087 5c            	incw	x
2198  0088 1f05          	ldw	(OFST-1,sp),x
2202  008a a30080        	cpw	x,#128
2203  008d 25ea          	jrult	L347
2204                     ; 698 }
2207  008f 5b08          	addw	sp,#8
2208  0091 87            	retf	
2209  0092               LC002:
2210  0092 89            	pushw	x
2211  0093 5f            	clrw	x
2212  0094 89            	pushw	x
2213  0095 ae0010        	ldw	x,#L73
2214  0098 8d000000      	callf	f_assert_failed
2216  009c 5b04          	addw	sp,#4
2217  009e 87            	retf	
2229                     	xdef	f_FLASH_WaitForLastOperation
2230                     	xdef	f_FLASH_ProgramBlock
2231                     	xdef	f_FLASH_EraseBlock
2232                     	xdef	f_FLASH_GetFlagStatus
2233                     	xdef	f_FLASH_GetBootSize
2234                     	xdef	f_FLASH_GetProgrammingTime
2235                     	xdef	f_FLASH_GetLowPowerMode
2236                     	xdef	f_FLASH_SetProgrammingTime
2237                     	xdef	f_FLASH_SetLowPowerMode
2238                     	xdef	f_FLASH_EraseOptionByte
2239                     	xdef	f_FLASH_ProgramOptionByte
2240                     	xdef	f_FLASH_ReadOptionByte
2241                     	xdef	f_FLASH_ProgramWord
2242                     	xdef	f_FLASH_ReadByte
2243                     	xdef	f_FLASH_ProgramByte
2244                     	xdef	f_FLASH_EraseByte
2245                     	xdef	f_FLASH_ITConfig
2246                     	xdef	f_FLASH_DeInit
2247                     	xdef	f_FLASH_Lock
2248                     	xdef	f_FLASH_Unlock
2249                     	xref	f_assert_failed
2250                     	switch	.const
2251  0010               L73:
2252  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2253  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2254  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2255  0046 5f666c617368  	dc.b	"_flash.c",0
2256                     	xref.b	c_lreg
2257                     	xref.b	c_x
2258                     	xref.b	c_y
2278                     	xref	d_ladd
2279                     	xref	d_cmulx
2280                     	xref	d_lgadd
2281                     	xref	d_rtol
2282                     	xref	d_umul
2283                     	xref	d_lcmp
2284                     	xref	d_ltor
2285                     	end
