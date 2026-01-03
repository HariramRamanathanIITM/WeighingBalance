   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  73                     ; 4 void write4B(uint32_t add, long val)
  73                     ; 5 {
  74                     .text:	section	.text,new
  75  0000               f_write4B:
  77       00000000      OFST:	set	0
  80                     ; 9     FLASH_Unlock(FLASH_MEMTYPE_PROG);
  82  0000 a6fd          	ld	a,#253
  83  0002 8d000000      	callf	f_FLASH_Unlock
  86  0006               L53:
  87                     ; 10     while(FLASH_GetFlagStatus(FLASH_FLAG_PUL) == RESET);
  89  0006 a602          	ld	a,#2
  90  0008 8d000000      	callf	f_FLASH_GetFlagStatus
  92  000c 4d            	tnz	a
  93  000d 27f7          	jreq	L53
  94                     ; 12     FLASH_ProgramByte(add, (val & 0xFF));
  96  000f 7b0b          	ld	a,(OFST+11,sp)
  97  0011 88            	push	a
  98  0012 1e07          	ldw	x,(OFST+7,sp)
  99  0014 89            	pushw	x
 100  0015 1e07          	ldw	x,(OFST+7,sp)
 101  0017 89            	pushw	x
 102  0018 8d000000      	callf	f_FLASH_ProgramByte
 104  001c 5b05          	addw	sp,#5
 106  001e               L34:
 107                     ; 13     while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET);
 109  001e 8db600b6      	callf	LC001
 110  0022 27fa          	jreq	L34
 111                     ; 14     FLASH_ProgramByte(add+1, ((val >> 8) & 0xFF));
 113  0024 7b0a          	ld	a,(OFST+10,sp)
 114  0026 88            	push	a
 115  0027 96            	ldw	x,sp
 116  0028 1c0005        	addw	x,#OFST+5
 117  002b 8d000000      	callf	d_ltor
 119  002f a601          	ld	a,#1
 120  0031 8d000000      	callf	d_ladc
 122  0035 be02          	ldw	x,c_lreg+2
 123  0037 89            	pushw	x
 124  0038 be00          	ldw	x,c_lreg
 125  003a 89            	pushw	x
 126  003b 8d000000      	callf	f_FLASH_ProgramByte
 128  003f 5b05          	addw	sp,#5
 130  0041               L15:
 131                     ; 15     while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET);
 133  0041 8db600b6      	callf	LC001
 134  0045 27fa          	jreq	L15
 135                     ; 16     FLASH_ProgramByte(add+2, ((val >> 16) & 0xFF));
 137  0047 96            	ldw	x,sp
 138  0048 1c0008        	addw	x,#OFST+8
 139  004b 8d000000      	callf	d_ltor
 141  004f be00          	ldw	x,c_lreg
 142  0051 bf02          	ldw	c_lreg+2,x
 143  0053 5f            	clrw	x
 144  0054 bf00          	ldw	c_lreg,x
 145  0056 3f02          	clr	c_lreg+2
 146  0058 3f01          	clr	c_lreg+1
 147  005a 3f00          	clr	c_lreg
 148  005c b603          	ld	a,c_lreg+3
 149  005e 88            	push	a
 150  005f 96            	ldw	x,sp
 151  0060 1c0005        	addw	x,#OFST+5
 152  0063 8d000000      	callf	d_ltor
 154  0067 a602          	ld	a,#2
 155  0069 8d000000      	callf	d_ladc
 157  006d be02          	ldw	x,c_lreg+2
 158  006f 89            	pushw	x
 159  0070 be00          	ldw	x,c_lreg
 160  0072 89            	pushw	x
 161  0073 8d000000      	callf	f_FLASH_ProgramByte
 163  0077 5b05          	addw	sp,#5
 165  0079               L75:
 166                     ; 17     while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET);
 168  0079 8db600b6      	callf	LC001
 169  007d 27fa          	jreq	L75
 170                     ; 18     FLASH_ProgramByte(add+3, ((val >> 24) & 0xFF));
 172  007f 96            	ldw	x,sp
 173  0080 1c0008        	addw	x,#OFST+8
 174  0083 8d000000      	callf	d_ltor
 176  0087 a618          	ld	a,#24
 177  0089 8d000000      	callf	d_lursh
 179  008d b603          	ld	a,c_lreg+3
 180  008f 88            	push	a
 181  0090 96            	ldw	x,sp
 182  0091 1c0005        	addw	x,#OFST+5
 183  0094 8d000000      	callf	d_ltor
 185  0098 a603          	ld	a,#3
 186  009a 8d000000      	callf	d_ladc
 188  009e be02          	ldw	x,c_lreg+2
 189  00a0 89            	pushw	x
 190  00a1 be00          	ldw	x,c_lreg
 191  00a3 89            	pushw	x
 192  00a4 8d000000      	callf	f_FLASH_ProgramByte
 194  00a8 5b05          	addw	sp,#5
 196  00aa               L56:
 197                     ; 19     while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET);
 199  00aa 8db600b6      	callf	LC001
 200  00ae 27fa          	jreq	L56
 201                     ; 21     FLASH_Lock(FLASH_MEMTYPE_PROG);
 203  00b0 a6fd          	ld	a,#253
 205                     ; 22 }
 208  00b2 ac000000      	jpf	f_FLASH_Lock
 209  00b6               LC001:
 210  00b6 a604          	ld	a,#4
 211  00b8 8d000000      	callf	f_FLASH_GetFlagStatus
 213  00bc 4d            	tnz	a
 214  00bd 87            	retf	
 293                     ; 25 long read4B(uint32_t add)
 293                     ; 26 {
 294                     .text:	section	.text,new
 295  0000               f_read4B:
 297  0000 5208          	subw	sp,#8
 298       00000008      OFST:	set	8
 301                     ; 27     long val = 0;
 303                     ; 29     a = FLASH_ReadByte(add);
 305  0002 1e0e          	ldw	x,(OFST+6,sp)
 306  0004 89            	pushw	x
 307  0005 1e0e          	ldw	x,(OFST+6,sp)
 308  0007 89            	pushw	x
 309  0008 8d000000      	callf	f_FLASH_ReadByte
 311  000c 5b04          	addw	sp,#4
 312  000e 6b01          	ld	(OFST-7,sp),a
 314                     ; 30     b = FLASH_ReadByte(add++);
 316  0010 96            	ldw	x,sp
 317  0011 1c000c        	addw	x,#OFST+4
 318  0014 8d000000      	callf	d_ltor
 320  0018 96            	ldw	x,sp
 321  0019 8d740074      	callf	LC002
 322  001d 89            	pushw	x
 323  001e be00          	ldw	x,c_lreg
 324  0020 89            	pushw	x
 325  0021 8d000000      	callf	f_FLASH_ReadByte
 327  0025 5b04          	addw	sp,#4
 328  0027 6b02          	ld	(OFST-6,sp),a
 330                     ; 31     c = FLASH_ReadByte(add++);
 332  0029 96            	ldw	x,sp
 333  002a 1c000c        	addw	x,#OFST+4
 334  002d 8d000000      	callf	d_ltor
 336  0031 96            	ldw	x,sp
 337  0032 8d740074      	callf	LC002
 338  0036 89            	pushw	x
 339  0037 be00          	ldw	x,c_lreg
 340  0039 89            	pushw	x
 341  003a 8d000000      	callf	f_FLASH_ReadByte
 343  003e 5b04          	addw	sp,#4
 344                     ; 32     d = FLASH_ReadByte(add++);
 346  0040 96            	ldw	x,sp
 347  0041 1c000c        	addw	x,#OFST+4
 348  0044 8d000000      	callf	d_ltor
 350  0048 96            	ldw	x,sp
 351  0049 8d740074      	callf	LC002
 352  004d 89            	pushw	x
 353  004e be00          	ldw	x,c_lreg
 354  0050 89            	pushw	x
 355  0051 8d000000      	callf	f_FLASH_ReadByte
 357  0055 5b04          	addw	sp,#4
 358                     ; 37     val = (d << 24) | (c << 16) | (b << 8) | a;
 360  0057 7b02          	ld	a,(OFST-6,sp)
 361  0059 97            	ld	xl,a
 362  005a 7b01          	ld	a,(OFST-7,sp)
 363  005c 02            	rlwa	x,a
 364  005d 8d000000      	callf	d_uitolx
 366  0061 96            	ldw	x,sp
 367  0062 1c0005        	addw	x,#OFST-3
 368  0065 8d000000      	callf	d_rtol
 371                     ; 38     return val;
 373  0069 96            	ldw	x,sp
 374  006a 1c0005        	addw	x,#OFST-3
 375  006d 8d000000      	callf	d_ltor
 379  0071 5b08          	addw	sp,#8
 380  0073 87            	retf	
 381  0074               LC002:
 382  0074 1c000c        	addw	x,#OFST+4
 383  0077 a601          	ld	a,#1
 384  0079 8d000000      	callf	d_lgadc
 386  007d be02          	ldw	x,c_lreg+2
 387  007f 87            	retf	
 438                     ; 41 void delay_100us(int ms)
 438                     ; 42 {
 439                     .text:	section	.text,new
 440  0000               f_delay_100us:
 442  0000 89            	pushw	x
 443  0001 5204          	subw	sp,#4
 444       00000004      OFST:	set	4
 447                     ; 44     for(i = 0; i < ms; i++) for(j = 0; j < 34; j++);
 449  0003 5f            	clrw	x
 451  0004 200c          	jra	L561
 452  0006               L161:
 455  0006 5f            	clrw	x
 457  0007               L171:
 462  0007 5c            	incw	x
 465  0008 a30022        	cpw	x,#34
 466  000b 2ffa          	jrslt	L171
 467  000d 1f03          	ldw	(OFST-1,sp),x
 471  000f 1e01          	ldw	x,(OFST-3,sp)
 472  0011 5c            	incw	x
 473  0012               L561:
 474  0012 1f01          	ldw	(OFST-3,sp),x
 478  0014 1305          	cpw	x,(OFST+1,sp)
 479  0016 2fee          	jrslt	L161
 480                     ; 45 }
 483  0018 5b06          	addw	sp,#6
 484  001a 87            	retf	
 529                     ; 47 void flash_over(void)
 529                     ; 48 {
 530                     .text:	section	.text,new
 531  0000               f_flash_over:
 533  0000 5204          	subw	sp,#4
 534       00000004      OFST:	set	4
 537                     ; 50     for (i = 0; i < 4; i++){
 539  0002 5f            	clrw	x
 540  0003 1f01          	ldw	(OFST-3,sp),x
 542  0005               L122:
 543                     ; 51         for (j = 0; j < 8; j++)
 545  0005 5f            	clrw	x
 546  0006 1f03          	ldw	(OFST-1,sp),x
 548  0008               L722:
 549                     ; 53             display_digit('^', 3, 0);
 551  0008 5f            	clrw	x
 552  0009 89            	pushw	x
 553  000a ae0003        	ldw	x,#3
 554  000d 89            	pushw	x
 555  000e a65e          	ld	a,#94
 556  0010 8d000000      	callf	f_display_digit
 558  0014 5b04          	addw	sp,#4
 559                     ; 54             delay_100us(62);
 561  0016 ae003e        	ldw	x,#62
 562  0019 8d000000      	callf	f_delay_100us
 564                     ; 55             display_digit('^', 2, 1);
 566  001d ae0001        	ldw	x,#1
 567  0020 8d5b005b      	callf	LC003
 568  0024 8d5b005b      	callf	LC003
 569  0028 89            	pushw	x
 570  0029 89            	pushw	x
 571  002a a65e          	ld	a,#94
 572  002c 8d000000      	callf	f_display_digit
 574  0030 5b04          	addw	sp,#4
 575                     ; 60             delay_100us(62);
 577  0032 ae003e        	ldw	x,#62
 578  0035 8d000000      	callf	f_delay_100us
 580                     ; 51         for (j = 0; j < 8; j++)
 582  0039 1e03          	ldw	x,(OFST-1,sp)
 583  003b 5c            	incw	x
 584  003c 1f03          	ldw	(OFST-1,sp),x
 588  003e a30008        	cpw	x,#8
 589  0041 2fc5          	jrslt	L722
 590                     ; 62         display_clear();
 592  0043 8d000000      	callf	f_display_clear
 594                     ; 63         delay_100us(2500);
 596  0047 ae09c4        	ldw	x,#2500
 597  004a 8d000000      	callf	f_delay_100us
 599                     ; 50     for (i = 0; i < 4; i++){
 601  004e 1e01          	ldw	x,(OFST-3,sp)
 602  0050 5c            	incw	x
 603  0051 1f01          	ldw	(OFST-3,sp),x
 607  0053 a30004        	cpw	x,#4
 608  0056 2fad          	jrslt	L122
 609                     ; 65 }
 612  0058 5b04          	addw	sp,#4
 613  005a 87            	retf	
 614  005b               LC003:
 615  005b 89            	pushw	x
 616  005c 5c            	incw	x
 617  005d 89            	pushw	x
 618  005e a65e          	ld	a,#94
 619  0060 8d000000      	callf	f_display_digit
 621  0064 5b04          	addw	sp,#4
 622                     ; 58             delay_100us(62);
 624  0066 ae003e        	ldw	x,#62
 625  0069 8d000000      	callf	f_delay_100us
 627                     ; 59             display_digit('^', 0, 0);
 629  006d 5f            	clrw	x
 630  006e 87            	retf	
 675                     ; 67 void flash_under(void)
 675                     ; 68 {
 676                     .text:	section	.text,new
 677  0000               f_flash_under:
 679  0000 5204          	subw	sp,#4
 680       00000004      OFST:	set	4
 683                     ; 70     for (i = 0; i < 4; i++){
 685  0002 5f            	clrw	x
 686  0003 1f01          	ldw	(OFST-3,sp),x
 688  0005               L752:
 689                     ; 71         for (j = 0; j < 8; j++)
 691  0005 5f            	clrw	x
 692  0006 1f03          	ldw	(OFST-1,sp),x
 694  0008               L562:
 695                     ; 73             display_digit('u', 3, 0);
 697  0008 5f            	clrw	x
 698  0009 89            	pushw	x
 699  000a ae0003        	ldw	x,#3
 700  000d 89            	pushw	x
 701  000e a675          	ld	a,#117
 702  0010 8d000000      	callf	f_display_digit
 704  0014 5b04          	addw	sp,#4
 705                     ; 74             delay_100us(6);
 707  0016 ae0006        	ldw	x,#6
 708  0019 8d000000      	callf	f_delay_100us
 710                     ; 75             display_digit('u', 2, 1);
 712  001d ae0001        	ldw	x,#1
 713  0020 8d5b005b      	callf	LC004
 714  0024 8d5b005b      	callf	LC004
 715  0028 89            	pushw	x
 716  0029 89            	pushw	x
 717  002a a675          	ld	a,#117
 718  002c 8d000000      	callf	f_display_digit
 720  0030 5b04          	addw	sp,#4
 721                     ; 80             delay_100us(6);
 723  0032 ae0006        	ldw	x,#6
 724  0035 8d000000      	callf	f_delay_100us
 726                     ; 71         for (j = 0; j < 8; j++)
 728  0039 1e03          	ldw	x,(OFST-1,sp)
 729  003b 5c            	incw	x
 730  003c 1f03          	ldw	(OFST-1,sp),x
 734  003e a30008        	cpw	x,#8
 735  0041 2fc5          	jrslt	L562
 736                     ; 82         display_clear();
 738  0043 8d000000      	callf	f_display_clear
 740                     ; 83         delay_100us(250);
 742  0047 ae00fa        	ldw	x,#250
 743  004a 8d000000      	callf	f_delay_100us
 745                     ; 70     for (i = 0; i < 4; i++){
 747  004e 1e01          	ldw	x,(OFST-3,sp)
 748  0050 5c            	incw	x
 749  0051 1f01          	ldw	(OFST-3,sp),x
 753  0053 a30004        	cpw	x,#4
 754  0056 2fad          	jrslt	L752
 755                     ; 85 }
 758  0058 5b04          	addw	sp,#4
 759  005a 87            	retf	
 760  005b               LC004:
 761  005b 89            	pushw	x
 762  005c 5c            	incw	x
 763  005d 89            	pushw	x
 764  005e a675          	ld	a,#117
 765  0060 8d000000      	callf	f_display_digit
 767  0064 5b04          	addw	sp,#4
 768                     ; 78             delay_100us(6);
 770  0066 ae0006        	ldw	x,#6
 771  0069 8d000000      	callf	f_delay_100us
 773                     ; 79             display_digit('u', 0, 0);
 775  006d 5f            	clrw	x
 776  006e 87            	retf	
 788                     	xdef	f_flash_under
 789                     	xdef	f_flash_over
 790                     	xdef	f_delay_100us
 791                     	xdef	f_read4B
 792                     	xdef	f_write4B
 793                     	xref	f_display_digit
 794                     	xref	f_display_clear
 795                     	xref	f_FLASH_GetFlagStatus
 796                     	xref	f_FLASH_ReadByte
 797                     	xref	f_FLASH_ProgramByte
 798                     	xref	f_FLASH_Lock
 799                     	xref	f_FLASH_Unlock
 800                     	xref.b	c_lreg
 819                     	xref	d_rtol
 820                     	xref	d_uitolx
 821                     	xref	d_lgadc
 822                     	xref	d_lursh
 823                     	xref	d_ladc
 824                     	xref	d_ltor
 825                     	end
