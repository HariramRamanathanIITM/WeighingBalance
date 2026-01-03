   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  51                     ; 3 void display_init(void)
  51                     ; 4 {
  52                     .text:	section	.text,new
  53  0000               f_display_init:
  57                     ; 5     GPIO_Init(SEG_A, GPIO_MODE_OUT_PP_LOW_FAST);
  59  0000 4be0          	push	#224
  60  0002 4b01          	push	#1
  61  0004 ae5014        	ldw	x,#20500
  62  0007 8d000000      	callf	f_GPIO_Init
  64  000b 85            	popw	x
  65                     ; 6     GPIO_Init(SEG_B, GPIO_MODE_OUT_PP_LOW_FAST);
  67  000c 4be0          	push	#224
  68  000e 4b01          	push	#1
  69  0010 ae500f        	ldw	x,#20495
  70  0013 8d000000      	callf	f_GPIO_Init
  72  0017 85            	popw	x
  73                     ; 7     GPIO_Init(SEG_C, GPIO_MODE_OUT_PP_LOW_FAST);
  75  0018 4be0          	push	#224
  76  001a 4b04          	push	#4
  77  001c ae500f        	ldw	x,#20495
  78  001f 8d000000      	callf	f_GPIO_Init
  80  0023 85            	popw	x
  81                     ; 8     GPIO_Init(SEG_D, GPIO_MODE_OUT_PP_LOW_FAST);
  83  0024 4be0          	push	#224
  84  0026 4b08          	push	#8
  85  0028 ae500f        	ldw	x,#20495
  86  002b 8d000000      	callf	f_GPIO_Init
  88  002f 85            	popw	x
  89                     ; 9     GPIO_Init(SEG_E, GPIO_MODE_OUT_PP_LOW_FAST);
  91  0030 4be0          	push	#224
  92  0032 4b40          	push	#64
  93  0034 ae5000        	ldw	x,#20480
  94  0037 8d000000      	callf	f_GPIO_Init
  96  003b 85            	popw	x
  97                     ; 10     GPIO_Init(SEG_F, GPIO_MODE_OUT_PP_LOW_FAST);
  99  003c 4be0          	push	#224
 100  003e 4b20          	push	#32
 101  0040 ae5000        	ldw	x,#20480
 102  0043 8d000000      	callf	f_GPIO_Init
 104  0047 85            	popw	x
 105                     ; 11     GPIO_Init(SEG_G, GPIO_MODE_OUT_PP_LOW_FAST);
 107  0048 4be0          	push	#224
 108  004a 4b08          	push	#8
 109  004c ae500a        	ldw	x,#20490
 110  004f 8d000000      	callf	f_GPIO_Init
 112  0053 85            	popw	x
 113                     ; 12     GPIO_Init(SEG_DP, GPIO_MODE_OUT_PP_LOW_FAST);
 115  0054 4be0          	push	#224
 116  0056 4b10          	push	#16
 117  0058 ae500a        	ldw	x,#20490
 118  005b 8d000000      	callf	f_GPIO_Init
 120  005f 85            	popw	x
 121                     ; 13     GPIO_Init(PLACE_0, GPIO_MODE_OUT_PP_LOW_FAST);
 123  0060 4be0          	push	#224
 124  0062 4b01          	push	#1
 125  0064 ae501e        	ldw	x,#20510
 126  0067 8d000000      	callf	f_GPIO_Init
 128  006b 85            	popw	x
 129                     ; 14     GPIO_Init(PLACE_1, GPIO_MODE_OUT_PP_LOW_FAST);
 131  006c 4be0          	push	#224
 132  006e 4b02          	push	#2
 133  0070 ae501e        	ldw	x,#20510
 134  0073 8d000000      	callf	f_GPIO_Init
 136  0077 85            	popw	x
 137                     ; 15     GPIO_Init(PLACE_2, GPIO_MODE_OUT_PP_LOW_FAST);
 139  0078 4be0          	push	#224
 140  007a 4b08          	push	#8
 141  007c ae5014        	ldw	x,#20500
 142  007f 8d000000      	callf	f_GPIO_Init
 144  0083 85            	popw	x
 145                     ; 16     GPIO_Init(PLACE_3, GPIO_MODE_OUT_PP_LOW_FAST);
 147  0084 4be0          	push	#224
 148  0086 4b04          	push	#4
 149  0088 ae5014        	ldw	x,#20500
 150  008b 8d000000      	callf	f_GPIO_Init
 152  008f 85            	popw	x
 153                     ; 17     GPIO_Init(LED_COM, GPIO_MODE_OUT_PP_LOW_FAST);
 155  0090 4be0          	push	#224
 156  0092 4b02          	push	#2
 157  0094 ae5014        	ldw	x,#20500
 158  0097 8d000000      	callf	f_GPIO_Init
 160  009b 85            	popw	x
 161                     ; 18     display_clear();
 164                     ; 19 }
 167  009c ac000000      	jpf	f_display_clear
 190                     ; 21 void display_clear(void)
 190                     ; 22 {
 191                     .text:	section	.text,new
 192  0000               f_display_clear:
 196                     ; 23     GPIO_WriteHigh(SEG_A);
 198  0000 4b01          	push	#1
 199  0002 ae5014        	ldw	x,#20500
 200  0005 8d000000      	callf	f_GPIO_WriteHigh
 202  0009 84            	pop	a
 203                     ; 24     GPIO_WriteHigh(SEG_B);
 205  000a 4b01          	push	#1
 206  000c ae500f        	ldw	x,#20495
 207  000f 8d000000      	callf	f_GPIO_WriteHigh
 209  0013 84            	pop	a
 210                     ; 25     GPIO_WriteHigh(SEG_C);
 212  0014 4b04          	push	#4
 213  0016 ae500f        	ldw	x,#20495
 214  0019 8d000000      	callf	f_GPIO_WriteHigh
 216  001d 84            	pop	a
 217                     ; 26     GPIO_WriteHigh(SEG_D);
 219  001e 4b08          	push	#8
 220  0020 ae500f        	ldw	x,#20495
 221  0023 8d000000      	callf	f_GPIO_WriteHigh
 223  0027 84            	pop	a
 224                     ; 27     GPIO_WriteHigh(SEG_E);
 226  0028 4b40          	push	#64
 227  002a ae5000        	ldw	x,#20480
 228  002d 8d000000      	callf	f_GPIO_WriteHigh
 230  0031 84            	pop	a
 231                     ; 28     GPIO_WriteHigh(SEG_F);
 233  0032 4b20          	push	#32
 234  0034 ae5000        	ldw	x,#20480
 235  0037 8d000000      	callf	f_GPIO_WriteHigh
 237  003b 84            	pop	a
 238                     ; 29     GPIO_WriteHigh(SEG_G);
 240  003c 4b08          	push	#8
 241  003e ae500a        	ldw	x,#20490
 242  0041 8d000000      	callf	f_GPIO_WriteHigh
 244  0045 84            	pop	a
 245                     ; 30     GPIO_WriteHigh(SEG_DP);
 247  0046 4b10          	push	#16
 248  0048 ae500a        	ldw	x,#20490
 249  004b 8d000000      	callf	f_GPIO_WriteHigh
 251  004f 84            	pop	a
 252                     ; 31     GPIO_WriteHigh(PLACE_0);
 254  0050 4b01          	push	#1
 255  0052 ae501e        	ldw	x,#20510
 256  0055 8d000000      	callf	f_GPIO_WriteHigh
 258  0059 84            	pop	a
 259                     ; 32     GPIO_WriteHigh(PLACE_1);
 261  005a 4b02          	push	#2
 262  005c ae501e        	ldw	x,#20510
 263  005f 8d000000      	callf	f_GPIO_WriteHigh
 265  0063 84            	pop	a
 266                     ; 33     GPIO_WriteHigh(PLACE_2);
 268  0064 4b08          	push	#8
 269  0066 ae5014        	ldw	x,#20500
 270  0069 8d000000      	callf	f_GPIO_WriteHigh
 272  006d 84            	pop	a
 273                     ; 34     GPIO_WriteHigh(PLACE_3);
 275  006e 4b04          	push	#4
 276  0070 ae5014        	ldw	x,#20500
 277  0073 8d000000      	callf	f_GPIO_WriteHigh
 279  0077 84            	pop	a
 280                     ; 35     GPIO_WriteHigh(LED_COM);
 282  0078 4b02          	push	#2
 283  007a ae5014        	ldw	x,#20500
 284  007d 8d000000      	callf	f_GPIO_WriteHigh
 286  0081 84            	pop	a
 287                     ; 36 }
 290  0082 87            	retf	
 344                     ; 38 void display_digit(char digit, int place, int dp)
 344                     ; 39 {
 345                     .text:	section	.text,new
 346  0000               f_display_digit:
 348  0000 88            	push	a
 349       00000000      OFST:	set	0
 352                     ; 40     display_clear();
 354  0001 8d000000      	callf	f_display_clear
 356                     ; 41     switch (digit)
 358  0005 7b01          	ld	a,(OFST+1,sp)
 360                     ; 265             break;
 361  0007 a02d          	sub	a,#45
 362  0009 a11c          	cp	a,#28
 363  000b 243c          	jruge	L226
 364  000d 8d000000      	callf	d_jctab
 366  0011               L426:
 367  0011 0187          	dc.w	L75-L426
 368  0013 02f9          	dc.w	L701-L426
 369  0015 02f9          	dc.w	L701-L426
 370  0017 008d          	dc.w	L13-L426
 371  0019 009e          	dc.w	L33-L426
 372  001b 00ab          	dc.w	L53-L426
 373  001d 00c0          	dc.w	L73-L426
 374  001f 00e3          	dc.w	L14-L426
 375  0021 0106          	dc.w	L34-L426
 376  0023 0123          	dc.w	L54-L426
 377  0025 0138          	dc.w	L74-L426
 378  0027 0153          	dc.w	L15-L426
 379  0029 0178          	dc.w	L35-L426
 380  002b 02f9          	dc.w	L701-L426
 381  002d 02f9          	dc.w	L701-L426
 382  002f 02f9          	dc.w	L701-L426
 383  0031 02f9          	dc.w	L701-L426
 384  0033 02f9          	dc.w	L701-L426
 385  0035 02f9          	dc.w	L701-L426
 386  0037 02f9          	dc.w	L701-L426
 387  0039 01ec          	dc.w	L56-L426
 388  003b 0235          	dc.w	L76-L426
 389  003d 0242          	dc.w	L17-L426
 390  003f 0255          	dc.w	L37-L426
 391  0041 0280          	dc.w	L57-L426
 392  0043 0295          	dc.w	L77-L426
 393  0045 02aa          	dc.w	L101-L426
 394  0047 02ec          	dc.w	L501-L426
 395  0049               L226:
 396  0049 a0f3          	sub	a,#-13
 397  004b 2604ac0a030a  	jreq	L701
 398  0051 a03e          	sub	a,#62
 399  0053 2604acd401d4  	jreq	L36
 400  0059 a003          	sub	a,#3
 401  005b 2604acfd01fd  	jreq	L56
 402  0061 4a            	dec	a
 403  0062 2604ac460246  	jreq	L76
 404  0068 4a            	dec	a
 405  0069 2604ac530253  	jreq	L17
 406  006f 4a            	dec	a
 407  0070 2604ac660266  	jreq	L37
 408  0076 4a            	dec	a
 409  0077 2604ac910291  	jreq	L57
 410  007d 4a            	dec	a
 411  007e 2604aca602a6  	jreq	L77
 412  0084 4a            	dec	a
 413  0085 2604acbb02bb  	jreq	L101
 414  008b 4a            	dec	a
 415  008c 2604acec02ec  	jreq	L301
 416  0092 a00d          	sub	a,#13
 417  0094 2604acb701b7  	jreq	L16
 418  009a ac0a030a      	jra	L701
 419  009e               L13:
 420                     ; 43         case '0':
 420                     ; 44             GPIO_WriteLow(SEG_A);
 422  009e 8dee03ee      	callf	LC026
 423                     ; 45             GPIO_WriteLow(SEG_B);
 425  00a2 4b01          	push	#1
 426  00a4 ae500f        	ldw	x,#20495
 427  00a7 8d000000      	callf	f_GPIO_WriteLow
 429                     ; 46             GPIO_WriteLow(SEG_C);
 431                     ; 47             GPIO_WriteLow(SEG_D);
 433                     ; 48             GPIO_WriteLow(SEG_E);
 435                     ; 49             GPIO_WriteLow(SEG_F);
 437                     ; 50             GPIO_WriteHigh(SEG_G);
 439                     ; 51             break;
 441  00ab acc802c8      	jpf	LC008
 442  00af               L33:
 443                     ; 52         case '1':
 443                     ; 53             GPIO_WriteHigh(SEG_A);
 445  00af 4b01          	push	#1
 446  00b1 ae5014        	ldw	x,#20500
 447  00b4 8d000000      	callf	f_GPIO_WriteHigh
 449                     ; 54             GPIO_WriteLow(SEG_B);
 451                     ; 55             GPIO_WriteLow(SEG_C);
 453                     ; 56             GPIO_WriteHigh(SEG_D);
 455                     ; 57             GPIO_WriteHigh(SEG_E);
 457                     ; 58             GPIO_WriteHigh(SEG_F);
 459                     ; 59             GPIO_WriteHigh(SEG_G);
 461                     ; 60             break;
 463  00b8 ac520152      	jpf	LC005
 464  00bc               L53:
 465                     ; 61         case '2':
 465                     ; 62             GPIO_WriteLow(SEG_A);
 467  00bc 8dee03ee      	callf	LC026
 468                     ; 63             GPIO_WriteLow(SEG_B);
 470  00c0 8df903f9      	callf	LC027
 471                     ; 64             GPIO_WriteHigh(SEG_C);
 473  00c4 4b04          	push	#4
 474  00c6 ae500f        	ldw	x,#20495
 475  00c9 8d000000      	callf	f_GPIO_WriteHigh
 477                     ; 65             GPIO_WriteLow(SEG_D);
 479                     ; 66             GPIO_WriteLow(SEG_E);
 481                     ; 67             GPIO_WriteHigh(SEG_F);
 483                     ; 68             GPIO_WriteLow(SEG_G);
 485                     ; 69             break;
 487  00cd ac770277      	jpf	LC021
 488  00d1               L73:
 489                     ; 70         case '3':
 489                     ; 71             GPIO_WriteLow(SEG_A);
 491  00d1 8dee03ee      	callf	LC026
 492                     ; 72             GPIO_WriteLow(SEG_B);
 494  00d5 8df903f9      	callf	LC027
 495                     ; 73             GPIO_WriteLow(SEG_C);
 497  00d9 8d2f042f      	callf	LC031
 498                     ; 74             GPIO_WriteLow(SEG_D);
 500  00dd 4b08          	push	#8
 501  00df ae500f        	ldw	x,#20495
 502  00e2 8d000000      	callf	f_GPIO_WriteLow
 504                     ; 75             GPIO_WriteHigh(SEG_E);
 506  00e6               LC022:
 507  00e6 84            	pop	a
 509  00e7 4b40          	push	#64
 510  00e9 ae5000        	ldw	x,#20480
 511  00ec 8d000000      	callf	f_GPIO_WriteHigh
 513                     ; 76             GPIO_WriteHigh(SEG_F);
 515                     ; 77             GPIO_WriteLow(SEG_G);
 517                     ; 78             break;
 519  00f0 ac850285      	jpf	LC020
 520  00f4               L14:
 521                     ; 79         case '4':
 521                     ; 80             GPIO_WriteHigh(SEG_A);
 523  00f4 8d0f040f      	callf	LC029
 524                     ; 81             GPIO_WriteLow(SEG_B);
 526  00f8 8df903f9      	callf	LC027
 527                     ; 82             GPIO_WriteLow(SEG_C);
 529  00fc 8d2f042f      	callf	LC031
 530                     ; 83             GPIO_WriteHigh(SEG_D);
 532  0100 4b08          	push	#8
 533  0102 ae500f        	ldw	x,#20495
 534  0105 8d000000      	callf	f_GPIO_WriteHigh
 536                     ; 84             GPIO_WriteHigh(SEG_E);
 538  0109               LC018:
 539  0109 84            	pop	a
 542  010a 4b40          	push	#64
 543  010c ae5000        	ldw	x,#20480
 544  010f 8d000000      	callf	f_GPIO_WriteHigh
 546                     ; 85             GPIO_WriteLow(SEG_F);
 548                     ; 86             GPIO_WriteLow(SEG_G);
 550                     ; 87             break;
 552  0113 ac2e022e      	jpf	LC010
 553  0117               L34:
 554                     ; 88         case '5':
 554                     ; 89             GPIO_WriteLow(SEG_A);
 556  0117 8dee03ee      	callf	LC026
 557                     ; 90             GPIO_WriteHigh(SEG_B);
 559  011b 4b01          	push	#1
 560  011d ae500f        	ldw	x,#20495
 561  0120 8d000000      	callf	f_GPIO_WriteHigh
 563                     ; 91             GPIO_WriteLow(SEG_C);
 566                     ; 92             GPIO_WriteLow(SEG_D);
 568  0124               LC019:
 569  0124 84            	pop	a
 571  0125 8d2f042f      	callf	LC031
 573  0129 4b08          	push	#8
 574  012b ae500f        	ldw	x,#20495
 575  012e 8d000000      	callf	f_GPIO_WriteLow
 577                     ; 93             GPIO_WriteHigh(SEG_E);
 579                     ; 94             GPIO_WriteLow(SEG_F);
 581                     ; 95             GPIO_WriteLow(SEG_G);
 583                     ; 96             break;
 585  0132 20d5          	jpf	LC018
 586  0134               L54:
 587                     ; 97         case '6':
 587                     ; 98             GPIO_WriteLow(SEG_A);
 589  0134 4b01          	push	#1
 590  0136 ae5014        	ldw	x,#20500
 591  0139 8d000000      	callf	f_GPIO_WriteLow
 593                     ; 99             GPIO_WriteHigh(SEG_B);
 595  013d               LC017:
 596  013d 84            	pop	a
 598  013e 4b01          	push	#1
 599  0140 ae500f        	ldw	x,#20495
 600  0143 8d000000      	callf	f_GPIO_WriteHigh
 602                     ; 100             GPIO_WriteLow(SEG_C);
 604                     ; 101             GPIO_WriteLow(SEG_D);
 606                     ; 102             GPIO_WriteLow(SEG_E);
 608                     ; 103             GPIO_WriteLow(SEG_F);
 610                     ; 104             GPIO_WriteLow(SEG_G);
 612                     ; 105             break;
 614  0147 2028          	jpf	LC016
 615  0149               L74:
 616                     ; 106         case '7':
 616                     ; 107             GPIO_WriteLow(SEG_A);
 618  0149 4b01          	push	#1
 619  014b ae5014        	ldw	x,#20500
 620  014e 8d000000      	callf	f_GPIO_WriteLow
 622                     ; 108             GPIO_WriteLow(SEG_B);
 625                     ; 109             GPIO_WriteLow(SEG_C);
 627  0152               LC005:
 628  0152 84            	pop	a
 630  0153 8df903f9      	callf	LC027
 632  0157 4b04          	push	#4
 633  0159 ae500f        	ldw	x,#20495
 634  015c 8d000000      	callf	f_GPIO_WriteLow
 636                     ; 110             GPIO_WriteHigh(SEG_D);
 638                     ; 111             GPIO_WriteHigh(SEG_E);
 640                     ; 112             GPIO_WriteHigh(SEG_F);
 642                     ; 113             GPIO_WriteHigh(SEG_G);
 644                     ; 114             break;
 646  0160 ac1b031b      	jpf	LC003
 647  0164               L15:
 648                     ; 115         case '8':
 648                     ; 116             GPIO_WriteLow(SEG_A);
 650  0164 8dee03ee      	callf	LC026
 651                     ; 117             GPIO_WriteLow(SEG_B);
 653  0168 4b01          	push	#1
 654  016a ae500f        	ldw	x,#20495
 655  016d 8d000000      	callf	f_GPIO_WriteLow
 657                     ; 118             GPIO_WriteLow(SEG_C);
 659  0171               LC016:
 660  0171 84            	pop	a
 663  0172 4b04          	push	#4
 664  0174 ae500f        	ldw	x,#20495
 665  0177 8d000000      	callf	f_GPIO_WriteLow
 667                     ; 119             GPIO_WriteLow(SEG_D);
 669  017b               LC015:
 670  017b 84            	pop	a
 674  017c 4b08          	push	#8
 675  017e ae500f        	ldw	x,#20495
 676  0181 8d000000      	callf	f_GPIO_WriteLow
 678                     ; 120             GPIO_WriteLow(SEG_E);
 680                     ; 121             GPIO_WriteLow(SEG_F);
 682                     ; 122             GPIO_WriteLow(SEG_G);
 684                     ; 123             break;
 686  0185 ac240224      	jpf	LC011
 687  0189               L35:
 688                     ; 124         case '9':
 688                     ; 125             GPIO_WriteLow(SEG_A);
 690  0189 8dee03ee      	callf	LC026
 691                     ; 126             GPIO_WriteLow(SEG_B);
 693  018d 4b01          	push	#1
 694  018f ae500f        	ldw	x,#20495
 695  0192 8d000000      	callf	f_GPIO_WriteLow
 697                     ; 127             GPIO_WriteLow(SEG_C);
 699                     ; 128             GPIO_WriteLow(SEG_D);
 701                     ; 129             GPIO_WriteHigh(SEG_E);
 703                     ; 130             GPIO_WriteLow(SEG_F);
 705                     ; 131             GPIO_WriteLow(SEG_G);
 707                     ; 132             break;
 709  0196 208c          	jpf	LC019
 710                     ; 133         case ' ':
 710                     ; 134             GPIO_WriteHigh(SEG_A);
 712                     ; 135             GPIO_WriteHigh(SEG_B);
 714                     ; 136             GPIO_WriteHigh(SEG_C);
 716                     ; 137             GPIO_WriteHigh(SEG_D);
 718                     ; 138             GPIO_WriteHigh(SEG_E);
 720                     ; 139             GPIO_WriteHigh(SEG_F);
 722                     ; 140             GPIO_WriteHigh(SEG_G);
 724                     ; 141             break;
 726  0198               L75:
 727                     ; 142         case '-':
 727                     ; 143             GPIO_WriteHigh(SEG_A);
 729  0198 8d0f040f      	callf	LC029
 730                     ; 144             GPIO_WriteHigh(SEG_B);
 732  019c 8d040404      	callf	LC028
 733                     ; 145             GPIO_WriteHigh(SEG_C);
 735  01a0 4b04          	push	#4
 736  01a2 ae500f        	ldw	x,#20495
 737  01a5 8d000000      	callf	f_GPIO_WriteHigh
 739  01a9 84            	pop	a
 740                     ; 146             GPIO_WriteHigh(SEG_D);
 742  01aa 4b08          	push	#8
 743  01ac ae500f        	ldw	x,#20495
 744  01af 8d000000      	callf	f_GPIO_WriteHigh
 746                     ; 147             GPIO_WriteHigh(SEG_E);
 748                     ; 148             GPIO_WriteHigh(SEG_F);
 750                     ; 149             GPIO_WriteLow(SEG_G);
 752                     ; 150             break;
 754  01b3 ace600e6      	jpf	LC022
 755  01b7               L16:
 756                     ; 151         case 'u':
 756                     ; 152             GPIO_WriteHigh(SEG_A);
 758  01b7 8d0f040f      	callf	LC029
 759                     ; 153             GPIO_WriteHigh(SEG_B);
 761  01bb 8d040404      	callf	LC028
 762                     ; 154             GPIO_WriteLow(SEG_C);
 764  01bf 8d2f042f      	callf	LC031
 765                     ; 155             GPIO_WriteLow(SEG_D);
 767  01c3 8d3a043a      	callf	LC032
 768                     ; 156             GPIO_WriteLow(SEG_E);
 770  01c7 4b40          	push	#64
 771  01c9 ae5000        	ldw	x,#20480
 772  01cc 8d000000      	callf	f_GPIO_WriteLow
 774                     ; 157             GPIO_WriteHigh(SEG_F);
 776                     ; 158             GPIO_WriteHigh(SEG_G);
 778                     ; 159             break;
 780  01d0 ac2f032f      	jpf	LC002
 781  01d4               L36:
 782                     ; 160         case '^':
 782                     ; 161             GPIO_WriteLow(SEG_A);
 784  01d4 8dee03ee      	callf	LC026
 785                     ; 162             GPIO_WriteLow(SEG_B);
 787  01d8 8df903f9      	callf	LC027
 788                     ; 163             GPIO_WriteHigh(SEG_C);
 790  01dc 4b04          	push	#4
 791  01de ae500f        	ldw	x,#20495
 792  01e1 8d000000      	callf	f_GPIO_WriteHigh
 794  01e5 84            	pop	a
 795                     ; 164             GPIO_WriteHigh(SEG_D);
 797  01e6 4b08          	push	#8
 798  01e8 ae500f        	ldw	x,#20495
 799  01eb 8d000000      	callf	f_GPIO_WriteHigh
 801  01ef 84            	pop	a
 802                     ; 165             GPIO_WriteHigh(SEG_E);
 804  01f0 4b40          	push	#64
 805  01f2 ae5000        	ldw	x,#20480
 806  01f5 8d000000      	callf	f_GPIO_WriteHigh
 808                     ; 166             GPIO_WriteLow(SEG_F);
 810                     ; 167             GPIO_WriteHigh(SEG_G);
 812                     ; 168             break;
 814  01f9 ace002e0      	jpf	LC006
 815  01fd               L56:
 816                     ; 169         case 'a':
 816                     ; 170         case 'A':
 816                     ; 171             GPIO_WriteLow(SEG_A);
 818  01fd 4b01          	push	#1
 819  01ff ae5014        	ldw	x,#20500
 820  0202 8d000000      	callf	f_GPIO_WriteLow
 822                     ; 172             GPIO_WriteLow(SEG_B);
 824  0206               LC014:
 825  0206 84            	pop	a
 827  0207 4b01          	push	#1
 828  0209 ae500f        	ldw	x,#20495
 829  020c 8d000000      	callf	f_GPIO_WriteLow
 831                     ; 173             GPIO_WriteLow(SEG_C);
 833  0210               LC013:
 834  0210 84            	pop	a
 837  0211 4b04          	push	#4
 838  0213 ae500f        	ldw	x,#20495
 839  0216 8d000000      	callf	f_GPIO_WriteLow
 841                     ; 174             GPIO_WriteHigh(SEG_D);
 843  021a               LC012:
 844  021a 84            	pop	a
 848  021b 4b08          	push	#8
 849  021d ae500f        	ldw	x,#20495
 850  0220 8d000000      	callf	f_GPIO_WriteHigh
 852                     ; 175             GPIO_WriteLow(SEG_E);
 854  0224               LC011:
 855  0224 84            	pop	a
 863  0225 4b40          	push	#64
 864  0227 ae5000        	ldw	x,#20480
 865  022a 8d000000      	callf	f_GPIO_WriteLow
 867                     ; 176             GPIO_WriteLow(SEG_F);
 869  022e               LC010:
 870  022e 84            	pop	a
 881  022f 4b20          	push	#32
 882  0231 ae5000        	ldw	x,#20480
 883  0234 8d000000      	callf	f_GPIO_WriteLow
 885                     ; 177             GPIO_WriteLow(SEG_G);
 887  0238               LC009:
 888  0238 84            	pop	a
 903  0239 4b08          	push	#8
 904  023b ae500a        	ldw	x,#20490
 905  023e 8d000000      	callf	f_GPIO_WriteLow
 907                     ; 178             break;
 909  0242 ac430343      	jra	L351
 910  0246               L76:
 911                     ; 179         case 'b':
 911                     ; 180         case 'B':
 911                     ; 181             GPIO_WriteHigh(SEG_A);
 913  0246 4b01          	push	#1
 914  0248 ae5014        	ldw	x,#20500
 915  024b 8d000000      	callf	f_GPIO_WriteHigh
 917                     ; 182             GPIO_WriteHigh(SEG_B);
 919                     ; 183             GPIO_WriteLow(SEG_C);
 921                     ; 184             GPIO_WriteLow(SEG_D);
 923                     ; 185             GPIO_WriteLow(SEG_E);
 925                     ; 186             GPIO_WriteLow(SEG_F);
 927                     ; 187             GPIO_WriteLow(SEG_G);
 929                     ; 188             break;
 931  024f ac3d013d      	jpf	LC017
 932  0253               L17:
 933                     ; 189         case 'c':
 933                     ; 190         case 'C':
 933                     ; 191             GPIO_WriteLow(SEG_A);
 935  0253 8dee03ee      	callf	LC026
 936                     ; 192             GPIO_WriteHigh(SEG_B);
 938  0257 8d040404      	callf	LC028
 939                     ; 193             GPIO_WriteHigh(SEG_C);
 941  025b 4b04          	push	#4
 942  025d ae500f        	ldw	x,#20495
 943  0260 8d000000      	callf	f_GPIO_WriteHigh
 945                     ; 194             GPIO_WriteLow(SEG_D);
 947                     ; 195             GPIO_WriteLow(SEG_E);
 949                     ; 196             GPIO_WriteLow(SEG_F);
 951                     ; 197             GPIO_WriteHigh(SEG_G);
 953                     ; 198             break;
 955  0264 206c          	jpf	LC007
 956  0266               L37:
 957                     ; 199         case 'd':
 957                     ; 200         case 'D':
 957                     ; 201             GPIO_WriteHigh(SEG_A);
 959  0266 8d0f040f      	callf	LC029
 960                     ; 202             GPIO_WriteLow(SEG_B);
 962  026a 8df903f9      	callf	LC027
 963                     ; 203             GPIO_WriteLow(SEG_C);
 965  026e 4b04          	push	#4
 966  0270 ae500f        	ldw	x,#20495
 967  0273 8d000000      	callf	f_GPIO_WriteLow
 969                     ; 204             GPIO_WriteLow(SEG_D);
 972                     ; 205             GPIO_WriteLow(SEG_E);
 974  0277               LC021:
 975  0277 84            	pop	a
 977  0278 8d3a043a      	callf	LC032
 979  027c 4b40          	push	#64
 980  027e ae5000        	ldw	x,#20480
 981  0281 8d000000      	callf	f_GPIO_WriteLow
 983                     ; 206             GPIO_WriteHigh(SEG_F);
 985  0285               LC020:
 986  0285 84            	pop	a
 990  0286 4b20          	push	#32
 991  0288 ae5000        	ldw	x,#20480
 992  028b 8d000000      	callf	f_GPIO_WriteHigh
 994                     ; 207             GPIO_WriteLow(SEG_G);
 996                     ; 208             break;
 998  028f 20a7          	jpf	LC009
 999  0291               L57:
1000                     ; 209         case 'e':
1000                     ; 210         case 'E':
1000                     ; 211             GPIO_WriteLow(SEG_A);
1002  0291 8dee03ee      	callf	LC026
1003                     ; 212             GPIO_WriteHigh(SEG_B);
1005  0295 8d040404      	callf	LC028
1006                     ; 213             GPIO_WriteHigh(SEG_C);
1008  0299 4b04          	push	#4
1009  029b ae500f        	ldw	x,#20495
1010  029e 8d000000      	callf	f_GPIO_WriteHigh
1012                     ; 214             GPIO_WriteLow(SEG_D);
1014                     ; 215             GPIO_WriteLow(SEG_E);
1016                     ; 216             GPIO_WriteLow(SEG_F);
1018                     ; 217             GPIO_WriteLow(SEG_G);
1020                     ; 218             break;
1022  02a2 ac7b017b      	jpf	LC015
1023  02a6               L77:
1024                     ; 219         case 'f':
1024                     ; 220         case 'F':
1024                     ; 221             GPIO_WriteLow(SEG_A);
1026  02a6 8dee03ee      	callf	LC026
1027                     ; 222             GPIO_WriteHigh(SEG_B);
1029  02aa 8d040404      	callf	LC028
1030                     ; 223             GPIO_WriteHigh(SEG_C);
1032  02ae 4b04          	push	#4
1033  02b0 ae500f        	ldw	x,#20495
1034  02b3 8d000000      	callf	f_GPIO_WriteHigh
1036                     ; 224             GPIO_WriteHigh(SEG_D);
1038                     ; 225             GPIO_WriteLow(SEG_E);
1040                     ; 226             GPIO_WriteLow(SEG_F);
1042                     ; 227             GPIO_WriteLow(SEG_G);
1044                     ; 228             break;
1046  02b7 ac1a021a      	jpf	LC012
1047  02bb               L101:
1048                     ; 229         case 'g':
1048                     ; 230         case 'G':
1048                     ; 231             GPIO_WriteLow(SEG_A);
1050  02bb 8dee03ee      	callf	LC026
1051                     ; 232             GPIO_WriteHigh(SEG_B);
1053  02bf 4b01          	push	#1
1054  02c1 ae500f        	ldw	x,#20495
1055  02c4 8d000000      	callf	f_GPIO_WriteHigh
1057                     ; 233             GPIO_WriteLow(SEG_C);
1059  02c8               LC008:
1060  02c8 84            	pop	a
1062  02c9 4b04          	push	#4
1063  02cb ae500f        	ldw	x,#20495
1064  02ce 8d000000      	callf	f_GPIO_WriteLow
1066                     ; 234             GPIO_WriteLow(SEG_D);
1069                     ; 235             GPIO_WriteLow(SEG_E);
1071  02d2               LC007:
1072  02d2 84            	pop	a
1075  02d3 8d3a043a      	callf	LC032
1078  02d7 4b40          	push	#64
1079  02d9 ae5000        	ldw	x,#20480
1080  02dc 8d000000      	callf	f_GPIO_WriteLow
1082                     ; 236             GPIO_WriteLow(SEG_F);
1084  02e0               LC006:
1085  02e0 84            	pop	a
1089  02e1 4b20          	push	#32
1090  02e3 ae5000        	ldw	x,#20480
1091  02e6 8d000000      	callf	f_GPIO_WriteLow
1093                     ; 237             GPIO_WriteHigh(SEG_G);
1095                     ; 238             break;
1097  02ea 204d          	jpf	LC001
1098  02ec               L301:
1099                     ; 239         case 'h':
1099                     ; 240             GPIO_WriteHigh(SEG_A);
1101  02ec 8d0f040f      	callf	LC029
1102                     ; 241             GPIO_WriteHigh(SEG_B);
1104  02f0 4b01          	push	#1
1105  02f2 ae500f        	ldw	x,#20495
1106  02f5 8d000000      	callf	f_GPIO_WriteHigh
1108                     ; 242             GPIO_WriteLow(SEG_C);
1110                     ; 243             GPIO_WriteHigh(SEG_D);
1112                     ; 244             GPIO_WriteLow(SEG_E);
1114                     ; 245             GPIO_WriteLow(SEG_F);
1116                     ; 246             GPIO_WriteLow(SEG_G);
1118                     ; 247             break;
1120  02f9 ac100210      	jpf	LC013
1121  02fd               L501:
1122                     ; 248         case 'H':
1122                     ; 249             GPIO_WriteHigh(SEG_A);
1124  02fd 4b01          	push	#1
1125  02ff ae5014        	ldw	x,#20500
1126  0302 8d000000      	callf	f_GPIO_WriteHigh
1128                     ; 250             GPIO_WriteLow(SEG_B);
1130                     ; 251             GPIO_WriteLow(SEG_C);
1132                     ; 252             GPIO_WriteHigh(SEG_D);
1134                     ; 253             GPIO_WriteLow(SEG_E);
1136                     ; 254             GPIO_WriteLow(SEG_F);
1138                     ; 255             GPIO_WriteLow(SEG_G);
1140                     ; 256             break;
1142  0306 ac060206      	jpf	LC014
1143  030a               L701:
1144                     ; 257         default:
1144                     ; 258             GPIO_WriteHigh(SEG_A);
1147                     ; 259             GPIO_WriteHigh(SEG_B);
1150                     ; 260             GPIO_WriteHigh(SEG_C);
1153  030a 8d0f040f      	callf	LC029
1155  030e 8d040404      	callf	LC028
1157  0312 4b04          	push	#4
1158  0314 ae500f        	ldw	x,#20495
1159  0317 8d000000      	callf	f_GPIO_WriteHigh
1161                     ; 261             GPIO_WriteHigh(SEG_D);
1164                     ; 262             GPIO_WriteHigh(SEG_E);
1166  031b               LC003:
1167  031b 84            	pop	a
1171  031c 4b08          	push	#8
1172  031e ae500f        	ldw	x,#20495
1173  0321 8d000000      	callf	f_GPIO_WriteHigh
1174  0325 84            	pop	a
1178  0326 4b40          	push	#64
1179  0328 ae5000        	ldw	x,#20480
1180  032b 8d000000      	callf	f_GPIO_WriteHigh
1182                     ; 263             GPIO_WriteHigh(SEG_F);
1184  032f               LC002:
1185  032f 84            	pop	a
1190  0330 4b20          	push	#32
1191  0332 ae5000        	ldw	x,#20480
1192  0335 8d000000      	callf	f_GPIO_WriteHigh
1194                     ; 264             GPIO_WriteHigh(SEG_G);
1196  0339               LC001:
1197  0339 84            	pop	a
1206  033a 4b08          	push	#8
1207  033c ae500a        	ldw	x,#20490
1208  033f 8d000000      	callf	f_GPIO_WriteHigh
1210                     ; 265             break;
1212  0343               L351:
1213  0343 84            	pop	a
1214                     ; 268     if (dp == 1) GPIO_WriteLow(SEG_DP);
1216  0344 1e07          	ldw	x,(OFST+7,sp)
1217  0346 5a            	decw	x
1218  0347 260b          	jrne	L551
1221  0349 4b10          	push	#16
1222  034b ae500a        	ldw	x,#20490
1223  034e 8d000000      	callf	f_GPIO_WriteLow
1226  0352 2009          	jra	L751
1227  0354               L551:
1228                     ; 269     else GPIO_WriteHigh(SEG_DP);
1230  0354 4b10          	push	#16
1231  0356 ae500a        	ldw	x,#20490
1232  0359 8d000000      	callf	f_GPIO_WriteHigh
1234  035d               L751:
1235  035d 84            	pop	a
1236                     ; 271     switch (place)
1238  035e 1e05          	ldw	x,(OFST+5,sp)
1240                     ; 303             break;
1241  0360 2725          	jreq	L111
1242  0362 5a            	decw	x
1243  0363 2737          	jreq	L311
1244  0365 5a            	decw	x
1245  0366 2753          	jreq	L511
1246  0368 5a            	decw	x
1247  0369 2769          	jreq	L711
1248                     ; 297         default:
1248                     ; 298             GPIO_WriteHigh(PLACE_0);
1250  036b 8d1a041a      	callf	LC030
1251                     ; 300             GPIO_WriteHigh(PLACE_2);
1253  036f 4b08          	push	#8
1254  0371 ae5014        	ldw	x,#20500
1255  0374 8d000000      	callf	f_GPIO_WriteHigh
1257  0378 84            	pop	a
1258                     ; 301             GPIO_WriteHigh(PLACE_3);
1260  0379 4b04          	push	#4
1261  037b ae5014        	ldw	x,#20500
1262  037e 8d000000      	callf	f_GPIO_WriteHigh
1264  0382 84            	pop	a
1265                     ; 302             GPIO_WriteHigh(LED_COM);
1267  0383 4b02          	push	#2
1269                     ; 303             break;
1271  0385 2044          	jpf	LC023
1272  0387               L111:
1273                     ; 273         case 0:
1273                     ; 274             GPIO_WriteLow(PLACE_0);
1275  0387 4b01          	push	#1
1276  0389 ae501e        	ldw	x,#20510
1277  038c 8d000000      	callf	f_GPIO_WriteLow
1279  0390 84            	pop	a
1280                     ; 275             GPIO_WriteHigh(PLACE_1);
1282  0391 4b02          	push	#2
1283  0393 ae501e        	ldw	x,#20510
1284  0396 8d000000      	callf	f_GPIO_WriteHigh
1286                     ; 276             GPIO_WriteHigh(PLACE_2);
1288                     ; 277             GPIO_WriteHigh(PLACE_3);
1290                     ; 278             break;
1292  039a 2013          	jpf	LC025
1293  039c               L311:
1294                     ; 279         case 1:
1294                     ; 280             GPIO_WriteHigh(PLACE_0);
1296  039c 4b01          	push	#1
1297  039e ae501e        	ldw	x,#20510
1298  03a1 8d000000      	callf	f_GPIO_WriteHigh
1300  03a5 84            	pop	a
1301                     ; 281             GPIO_WriteLow(PLACE_1);
1303  03a6 4b02          	push	#2
1304  03a8 ae501e        	ldw	x,#20510
1305  03ab 8d000000      	callf	f_GPIO_WriteLow
1307                     ; 282             GPIO_WriteHigh(PLACE_2);
1309  03af               LC025:
1310  03af 84            	pop	a
1312  03b0 4b08          	push	#8
1313  03b2 ae5014        	ldw	x,#20500
1314  03b5 8d000000      	callf	f_GPIO_WriteHigh
1316                     ; 283             GPIO_WriteHigh(PLACE_3);
1318                     ; 284             break;
1320  03b9 200d          	jpf	LC024
1321  03bb               L511:
1322                     ; 285         case 2:
1322                     ; 286             GPIO_WriteHigh(PLACE_0);
1324  03bb 8d1a041a      	callf	LC030
1325                     ; 288             GPIO_WriteLow(PLACE_2);
1327  03bf 4b08          	push	#8
1328  03c1 ae5014        	ldw	x,#20500
1329  03c4 8d000000      	callf	f_GPIO_WriteLow
1331                     ; 289             GPIO_WriteHigh(PLACE_3);
1333  03c8               LC024:
1334  03c8 84            	pop	a
1337  03c9 4b04          	push	#4
1338  03cb               LC023:
1339  03cb ae5014        	ldw	x,#20500
1340  03ce 8d000000      	callf	f_GPIO_WriteHigh
1342                     ; 290             break;
1344  03d2 2017          	jra	L361
1345  03d4               L711:
1346                     ; 291         case 3:
1346                     ; 292             GPIO_WriteHigh(PLACE_0);
1348  03d4 8d1a041a      	callf	LC030
1349                     ; 294             GPIO_WriteHigh(PLACE_2);
1351  03d8 4b08          	push	#8
1352  03da ae5014        	ldw	x,#20500
1353  03dd 8d000000      	callf	f_GPIO_WriteHigh
1355  03e1 84            	pop	a
1356                     ; 295             GPIO_WriteLow(PLACE_3);
1358  03e2 4b04          	push	#4
1359  03e4 ae5014        	ldw	x,#20500
1360  03e7 8d000000      	callf	f_GPIO_WriteLow
1362                     ; 296             break;
1364  03eb               L361:
1365                     ; 305 }
1368  03eb 5b02          	addw	sp,#2
1369  03ed 87            	retf	
1370  03ee               LC026:
1371  03ee 4b01          	push	#1
1372  03f0 ae5014        	ldw	x,#20500
1373  03f3 8d000000      	callf	f_GPIO_WriteLow
1375  03f7 84            	pop	a
1376  03f8 87            	retf	
1377  03f9               LC027:
1378  03f9 4b01          	push	#1
1379  03fb ae500f        	ldw	x,#20495
1380  03fe 8d000000      	callf	f_GPIO_WriteLow
1382  0402 84            	pop	a
1383  0403 87            	retf	
1384  0404               LC028:
1385  0404 4b01          	push	#1
1386  0406 ae500f        	ldw	x,#20495
1387  0409 8d000000      	callf	f_GPIO_WriteHigh
1389  040d 84            	pop	a
1390  040e 87            	retf	
1391  040f               LC029:
1392  040f 4b01          	push	#1
1393  0411 ae5014        	ldw	x,#20500
1394  0414 8d000000      	callf	f_GPIO_WriteHigh
1396  0418 84            	pop	a
1397  0419 87            	retf	
1398  041a               LC030:
1399  041a 4b01          	push	#1
1400  041c ae501e        	ldw	x,#20510
1401  041f 8d000000      	callf	f_GPIO_WriteHigh
1403  0423 84            	pop	a
1404                     ; 299             GPIO_WriteHigh(PLACE_1);
1406  0424 4b02          	push	#2
1407  0426 ae501e        	ldw	x,#20510
1408  0429 8d000000      	callf	f_GPIO_WriteHigh
1410  042d 84            	pop	a
1411  042e 87            	retf	
1412  042f               LC031:
1413  042f 4b04          	push	#4
1414  0431 ae500f        	ldw	x,#20495
1415  0434 8d000000      	callf	f_GPIO_WriteLow
1417  0438 84            	pop	a
1418  0439 87            	retf	
1419  043a               LC032:
1420  043a 4b08          	push	#8
1421  043c ae500f        	ldw	x,#20495
1422  043f 8d000000      	callf	f_GPIO_WriteLow
1424  0443 84            	pop	a
1425  0444 87            	retf	
1460                     ; 307 void LED_Control(int name)
1460                     ; 308 {
1461                     .text:	section	.text,new
1462  0000               f_LED_Control:
1464  0000 89            	pushw	x
1465       00000000      OFST:	set	0
1468                     ; 309     display_clear();
1470  0001 8d000000      	callf	f_display_clear
1472                     ; 310     GPIO_WriteLow(LED_COM);
1474  0005 4b02          	push	#2
1475  0007 ae5014        	ldw	x,#20500
1476  000a 8d000000      	callf	f_GPIO_WriteLow
1478  000e 84            	pop	a
1479                     ; 311     switch (name)
1481  000f 1e01          	ldw	x,(OFST+1,sp)
1483                     ; 327         default:
1483                     ; 328             break;
1484  0011 5a            	decw	x
1485  0012 270b          	jreq	L761
1486  0014 5a            	decw	x
1487  0015 270f          	jreq	L171
1488  0017 5a            	decw	x
1489  0018 2710          	jreq	L371
1490  001a 5a            	decw	x
1491  001b 2711          	jreq	L571
1492  001d 2019          	jra	L122
1493                     ; 313         case 0:
1493                     ; 314             break;
1495  001f               L761:
1496                     ; 315         case 1:
1496                     ; 316             GPIO_WriteLow(SEG_A);
1498  001f 4b01          	push	#1
1499  0021 ae5014        	ldw	x,#20500
1501                     ; 317             break;
1503  0024 200d          	jpf	LC033
1504  0026               L171:
1505                     ; 318         case 2:
1505                     ; 319             GPIO_WriteLow(SEG_B);
1507  0026 4b01          	push	#1
1509                     ; 320             break;
1511  0028 2006          	jpf	LC034
1512  002a               L371:
1513                     ; 321         case 3:
1513                     ; 322             GPIO_WriteLow(SEG_C);
1515  002a 4b04          	push	#4
1517                     ; 323             break;
1519  002c 2002          	jpf	LC034
1520  002e               L571:
1521                     ; 324         case 4:
1521                     ; 325             GPIO_WriteLow(SEG_D);
1523  002e 4b08          	push	#8
1524  0030               LC034:
1525  0030 ae500f        	ldw	x,#20495
1527  0033               LC033:
1528  0033 8d000000      	callf	f_GPIO_WriteLow
1529  0037 84            	pop	a
1530                     ; 326             break;
1532                     ; 327         default:
1532                     ; 328             break;
1534  0038               L122:
1535                     ; 330 }
1538  0038 85            	popw	x
1539  0039 87            	retf	
1592                     ; 332 void display_content(char *content, int dp_pos)
1592                     ; 333 {
1593                     .text:	section	.text,new
1594  0000               f_display_content:
1596  0000 89            	pushw	x
1597  0001 89            	pushw	x
1598       00000002      OFST:	set	2
1601                     ; 335     for(i = 0; i < 4; i++)
1603  0002 5f            	clrw	x
1604  0003 1f01          	ldw	(OFST-1,sp),x
1606  0005               L152:
1607                     ; 337         if (i == dp_pos) display_digit((char)content[3-i], i, 1);
1609  0005 1308          	cpw	x,(OFST+6,sp)
1610  0007 2605          	jrne	L752
1613  0009 ae0001        	ldw	x,#1
1616  000c 2001          	jra	L162
1617  000e               L752:
1618                     ; 338         else display_digit((char)content[3-i], i, 0);
1620  000e 5f            	clrw	x
1622  000f               L162:
1623  000f 89            	pushw	x
1624  0010 1e03          	ldw	x,(OFST+1,sp)
1625  0012 89            	pushw	x
1626  0013 ae0003        	ldw	x,#3
1627  0016 72f005        	subw	x,(OFST+3,sp)
1628  0019 72fb07        	addw	x,(OFST+5,sp)
1629  001c f6            	ld	a,(x)
1630  001d 8d000000      	callf	f_display_digit
1631  0021 5b04          	addw	sp,#4
1632                     ; 335     for(i = 0; i < 4; i++)
1634  0023 1e01          	ldw	x,(OFST-1,sp)
1635  0025 5c            	incw	x
1636  0026 1f01          	ldw	(OFST-1,sp),x
1640  0028 a30004        	cpw	x,#4
1641  002b 2fd8          	jrslt	L152
1642                     ; 340 }
1645  002d 5b04          	addw	sp,#4
1646  002f 87            	retf	
1716                     .const:	section	.text
1717  0000               L237:
1718  0000 000003e8      	dc.l	1000
1719  0004               L437:
1720  0004 0000000a      	dc.l	10
1721  0008               L637:
1722  0008 00000064      	dc.l	100
1723                     ; 343 void Display_stuff(long value)
1723                     ; 344 {
1724                     .text:	section	.text,new
1725  0000               f_Display_stuff:
1727  0000 5204          	subw	sp,#4
1728       00000004      OFST:	set	4
1731                     ; 346 	w1 = '0' + (value / 1000) % 10;
1733  0002 96            	ldw	x,sp
1734  0003 1c0008        	addw	x,#OFST+4
1735  0006 8d000000      	callf	d_ltor
1737  000a ae0000        	ldw	x,#L237
1738  000d 8d000000      	callf	d_ldiv
1740  0011 8d830083      	callf	LC035
1741  0015 6b01          	ld	(OFST-3,sp),a
1743                     ; 347 	w0 = '0' + (value / 100) % 10;
1745  0017 96            	ldw	x,sp
1746  0018 1c0008        	addw	x,#OFST+4
1747  001b 8d000000      	callf	d_ltor
1749  001f ae0008        	ldw	x,#L637
1750  0022 8d000000      	callf	d_ldiv
1752  0026 8d830083      	callf	LC035
1753  002a 6b02          	ld	(OFST-2,sp),a
1755                     ; 349 	f1 = '0' + (value / 10) % 10;
1757  002c 96            	ldw	x,sp
1758  002d 1c0008        	addw	x,#OFST+4
1759  0030 8d000000      	callf	d_ltor
1761  0034 ae0004        	ldw	x,#L437
1762  0037 8d000000      	callf	d_ldiv
1764  003b 8d830083      	callf	LC035
1765  003f 6b03          	ld	(OFST-1,sp),a
1767                     ; 350 	f2 = '0' + value % 10;
1769  0041 96            	ldw	x,sp
1770  0042 1c0008        	addw	x,#OFST+4
1771  0045 8d000000      	callf	d_ltor
1773  0049 8d830083      	callf	LC035
1774  004d 6b04          	ld	(OFST+0,sp),a
1776                     ; 352   display_digit(w1, 3, 0);
1778  004f 5f            	clrw	x
1779  0050 89            	pushw	x
1780  0051 ae0003        	ldw	x,#3
1781  0054 89            	pushw	x
1782  0055 7b05          	ld	a,(OFST+1,sp)
1783  0057 8d000000      	callf	f_display_digit
1785  005b 5b04          	addw	sp,#4
1786                     ; 353   display_digit(w0, 2, 1);
1788  005d ae0001        	ldw	x,#1
1789  0060 89            	pushw	x
1790  0061 5c            	incw	x
1791  0062 89            	pushw	x
1792  0063 7b06          	ld	a,(OFST+2,sp)
1793  0065 8d000000      	callf	f_display_digit
1795  0069 5b04          	addw	sp,#4
1796                     ; 354   display_digit(f1, 1, 0);
1798  006b 5f            	clrw	x
1799  006c 89            	pushw	x
1800  006d 5c            	incw	x
1801  006e 89            	pushw	x
1802  006f 7b07          	ld	a,(OFST+3,sp)
1803  0071 8d000000      	callf	f_display_digit
1805  0075 5b04          	addw	sp,#4
1806                     ; 355   display_digit(f2, 0, 0);
1808  0077 5f            	clrw	x
1809  0078 89            	pushw	x
1810  0079 89            	pushw	x
1811  007a 7b08          	ld	a,(OFST+4,sp)
1812  007c 8d000000      	callf	f_display_digit
1814  0080 5b08          	addw	sp,#8
1815                     ; 356 }
1818  0082 87            	retf	
1819  0083               LC035:
1820  0083 ae0004        	ldw	x,#L437
1821  0086 8d000000      	callf	d_lmod
1823  008a a630          	ld	a,#48
1824  008c 8d000000      	callf	d_ladc
1826  0090 b603          	ld	a,c_lreg+3
1827  0092 87            	retf	
1839                     	xdef	f_Display_stuff
1840                     	xdef	f_display_content
1841                     	xdef	f_LED_Control
1842                     	xdef	f_display_digit
1843                     	xdef	f_display_clear
1844                     	xdef	f_display_init
1845                     	xref	f_GPIO_WriteLow
1846                     	xref	f_GPIO_WriteHigh
1847                     	xref	f_GPIO_Init
1848                     	xref.b	c_lreg
1849                     	xref.b	c_x
1868                     	xref	d_ladc
1869                     	xref	d_lmod
1870                     	xref	d_ldiv
1871                     	xref	d_ltor
1872                     	xref	d_jctab
1873                     	end
