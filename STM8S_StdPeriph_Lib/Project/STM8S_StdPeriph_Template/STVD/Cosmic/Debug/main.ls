   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
 278                     .const:	section	.text
 279  0000               L23:
 280  0000 00002711      	dc.l	10001
 281  0004               L43:
 282  0004 00003a98      	dc.l	15000
 283  0008               L06:
 284  0008 000003e8      	dc.l	1000
 285  000c               L26:
 286  000c 0000000a      	dc.l	10
 287  0010               L46:
 288  0010 00000064      	dc.l	100
 289  0014               L66:
 290  0014 000003e9      	dc.l	1001
 291                     ; 165 void main()
 291                     ; 166 {
 292                     .text:	section	.text,new
 293  0000               f_main:
 295  0000 5238          	subw	sp,#56
 296       00000038      OFST:	set	56
 299                     ; 167 	int active = 0;
 301  0002 5f            	clrw	x
 302  0003 1f2d          	ldw	(OFST-11,sp),x
 304                     ; 168 	long res = 0;
 306  0005 1f2b          	ldw	(OFST-13,sp),x
 307  0007 1f29          	ldw	(OFST-15,sp),x
 309                     ; 171   long calib = 13500;
 311                     ; 175   int led = 0;
 313  0009 1f07          	ldw	(OFST-49,sp),x
 315                     ; 176   int counter = 0;
 317  000b 1f25          	ldw	(OFST-19,sp),x
 319                     ; 178 	int tare_triggered = 0;
 321  000d 1f27          	ldw	(OFST-17,sp),x
 323                     ; 179 	int stable_tare = 0;
 325  000f 1f33          	ldw	(OFST-5,sp),x
 327                     ; 181   int calib_mode = 0;
 329  0011 1f09          	ldw	(OFST-47,sp),x
 331                     ; 182   int calib_triggered = 0;
 333                     ; 183   int stable_calib = 0;
 335  0013 1f15          	ldw	(OFST-35,sp),x
 337                     ; 184   long calib_temp = calib;
 339  0015 ae34bc        	ldw	x,#13500
 340  0018 1f23          	ldw	(OFST-21,sp),x
 341  001a 5f            	clrw	x
 342  001b 1f21          	ldw	(OFST-23,sp),x
 344                     ; 186   int calib_up_trig = 0;
 346  001d 1f0b          	ldw	(OFST-45,sp),x
 348                     ; 187   int calib_down_trig = 0;
 350  001f 1f0d          	ldw	(OFST-43,sp),x
 352                     ; 188   int stable_calib_up = 0;
 354  0021 1f17          	ldw	(OFST-33,sp),x
 356                     ; 189   int stable_calib_down = 0;
 358  0023 1f19          	ldw	(OFST-31,sp),x
 360                     ; 191   int unit_trig = 0;
 362  0025 1f0f          	ldw	(OFST-41,sp),x
 364                     ; 192   int stable_unit = 0;
 366  0027 1f1b          	ldw	(OFST-29,sp),x
 368                     ; 194   GPIO_Init(ADC_DAT_PORT, ADC_DAT_PIN, GPIO_MODE_IN_FL_NO_IT);
 370  0029 4b00          	push	#0
 371  002b 4b40          	push	#64
 372  002d ae500a        	ldw	x,#20490
 373  0030 8d000000      	callf	f_GPIO_Init
 375  0034 85            	popw	x
 376                     ; 195   GPIO_Init(CLK_OUT, GPIO_MODE_OUT_PP_HIGH_FAST);
 378  0035 4bf0          	push	#240
 379  0037 4b80          	push	#128
 380  0039 ae500a        	ldw	x,#20490
 381  003c 8d000000      	callf	f_GPIO_Init
 383  0040 85            	popw	x
 384                     ; 196   GPIO_WriteLow(CLK_OUT);
 386  0041 4b80          	push	#128
 387  0043 ae500a        	ldw	x,#20490
 388  0046 8d000000      	callf	f_GPIO_WriteLow
 390  004a 84            	pop	a
 391                     ; 198 	GPIO_Init(TARE_PORT, TARE_PIN, GPIO_MODE_IN_PU_NO_IT);
 393  004b 4b40          	push	#64
 394  004d 4b08          	push	#8
 395  004f ae5000        	ldw	x,#20480
 396  0052 8d000000      	callf	f_GPIO_Init
 398  0056 85            	popw	x
 399                     ; 199   GPIO_Init(CAL_UP_PORT, CAL_UP_PIN, GPIO_MODE_IN_PU_NO_IT);
 401  0057 4b40          	push	#64
 402  0059 4b04          	push	#4
 403  005b ae500a        	ldw	x,#20490
 404  005e 8d000000      	callf	f_GPIO_Init
 406  0062 85            	popw	x
 407                     ; 200   GPIO_Init(CAL_DOWN_PORT, CAL_DOWN_PIN, GPIO_MODE_IN_PU_NO_IT);
 409  0063 4b40          	push	#64
 410  0065 4b10          	push	#16
 411  0067 ae5000        	ldw	x,#20480
 412  006a 8d000000      	callf	f_GPIO_Init
 414  006e 85            	popw	x
 415                     ; 201   GPIO_Init(UNIT_PORT, UNIT_PIN, GPIO_MODE_IN_PU_NO_IT);
 417  006f 4b40          	push	#64
 418  0071 4b02          	push	#2
 419  0073 ae500a        	ldw	x,#20490
 420  0076 8d000000      	callf	f_GPIO_Init
 422  007a 85            	popw	x
 423                     ; 203 	display_init();
 425  007b 8d000000      	callf	f_display_init
 427                     ; 207   tare = read4B(0xFFF0);
 429  007f aefff0        	ldw	x,#65520
 430  0082 89            	pushw	x
 431  0083 5f            	clrw	x
 432  0084 89            	pushw	x
 433  0085 8d000000      	callf	f_read4B
 435  0089 5b04          	addw	sp,#4
 436  008b 96            	ldw	x,sp
 437  008c 1c0011        	addw	x,#OFST-39
 438  008f 8d000000      	callf	d_rtol
 441                     ; 208   calib = read4B(0xFFF4);
 443  0093 aefff4        	ldw	x,#65524
 444  0096 89            	pushw	x
 445  0097 5f            	clrw	x
 446  0098 89            	pushw	x
 447  0099 8d000000      	callf	f_read4B
 449  009d 5b04          	addw	sp,#4
 450  009f 96            	ldw	x,sp
 451  00a0 1c002f        	addw	x,#OFST-9
 452  00a3 8d000000      	callf	d_rtol
 455                     ; 210   if ((calib > 10000) && (calib < 15000))
 457  00a7 96            	ldw	x,sp
 458  00a8 1c002f        	addw	x,#OFST-9
 459  00ab 8d450445      	callf	LC010
 461  00af 2f11          	jrslt	L571
 463  00b1 96            	ldw	x,sp
 464  00b2 8d500450      	callf	LC011
 466  00b6 2e0a          	jrsge	L571
 467                     ; 212     calib_temp = calib;
 469  00b8 1e31          	ldw	x,(OFST-7,sp)
 470  00ba 1f23          	ldw	(OFST-21,sp),x
 471  00bc 1e2f          	ldw	x,(OFST-9,sp)
 472  00be 1f21          	ldw	(OFST-23,sp),x
 475  00c0 2008          	jra	L102
 476  00c2               L571:
 477                     ; 215     calib = calib_temp;
 479  00c2 1e23          	ldw	x,(OFST-21,sp)
 480  00c4 1f31          	ldw	(OFST-7,sp),x
 481  00c6 1e21          	ldw	x,(OFST-23,sp)
 482  00c8 1f2f          	ldw	(OFST-9,sp),x
 484  00ca               L102:
 485                     ; 221 		if(!(ADC_DAT_PORT -> IDR & ADC_DAT_PIN))
 487  00ca 720c500b07    	btjt	20491,#6,L502
 488                     ; 223 			active = 1;
 490  00cf ae0001        	ldw	x,#1
 491  00d2 1f2d          	ldw	(OFST-11,sp),x
 494  00d4 2009          	jra	L702
 495  00d6               L502:
 496                     ; 225     else delay_100us(20); // delay to simulate the data-fetching for smooth display Multiplexing
 498  00d6 ae0014        	ldw	x,#20
 499  00d9 8d000000      	callf	f_delay_100us
 501  00dd 1e2d          	ldw	x,(OFST-11,sp)
 502  00df               L702:
 503                     ; 228 		if(active == 1)
 505  00df 5a            	decw	x
 506  00e0 2704acec01ec  	jrne	L112
 507                     ; 230 			res = 0;
 509  00e6 5f            	clrw	x
 510  00e7 1f2b          	ldw	(OFST-13,sp),x
 511  00e9 1f29          	ldw	(OFST-15,sp),x
 513                     ; 232 			for(i = 0; i < 24; i++)
 515  00eb 1f2d          	ldw	(OFST-11,sp),x
 517  00ed               L312:
 518                     ; 234         GPIO_WriteHigh(CLK_OUT);
 520  00ed 8d150415      	callf	LC007
 521                     ; 237 				res = (res << 1) | ((ADC_DAT_PORT -> IDR & ADC_DAT_PIN));
 523  00f1 c6500b        	ld	a,20491
 524  00f4 a440          	and	a,#64
 525  00f6 b703          	ld	c_lreg+3,a
 526  00f8 3f02          	clr	c_lreg+2
 527  00fa 3f01          	clr	c_lreg+1
 528  00fc 3f00          	clr	c_lreg
 529  00fe 96            	ldw	x,sp
 530  00ff 5c            	incw	x
 531  0100 8d000000      	callf	d_rtol
 534  0104 96            	ldw	x,sp
 535  0105 1c0029        	addw	x,#OFST-15
 536  0108 8d000000      	callf	d_ltor
 538  010c 3803          	sll	c_lreg+3
 539  010e 3902          	rlc	c_lreg+2
 540  0110 3901          	rlc	c_lreg+1
 541  0112 96            	ldw	x,sp
 542  0113 3900          	rlc	c_lreg
 543  0115 5c            	incw	x
 544  0116 8d000000      	callf	d_lor
 546  011a 96            	ldw	x,sp
 547  011b 1c0029        	addw	x,#OFST-15
 548  011e 8d000000      	callf	d_rtol
 551                     ; 232 			for(i = 0; i < 24; i++)
 553  0122 1e2d          	ldw	x,(OFST-11,sp)
 554  0124 5c            	incw	x
 555  0125 1f2d          	ldw	(OFST-11,sp),x
 559  0127 a30018        	cpw	x,#24
 560  012a 2fc1          	jrslt	L312
 561                     ; 239 			active = 0;
 563  012c 5f            	clrw	x
 564  012d 1f2d          	ldw	(OFST-11,sp),x
 566                     ; 242 			GPIO_WriteHigh(CLK_OUT);
 568  012f 8d150415      	callf	LC007
 569                     ; 245       GPIO_WriteHigh(CLK_OUT);
 571  0133 8d150415      	callf	LC007
 572                     ; 248       GPIO_WriteHigh(CLK_OUT);
 574  0137 8d150415      	callf	LC007
 575                     ; 253 			wt = res - tare; // tare
 577  013b 96            	ldw	x,sp
 578  013c 1c0029        	addw	x,#OFST-15
 579  013f 8d000000      	callf	d_ltor
 581  0143 96            	ldw	x,sp
 582  0144 1c0011        	addw	x,#OFST-39
 583  0147 8d000000      	callf	d_lsub
 585  014b 96            	ldw	x,sp
 586  014c 1c0035        	addw	x,#OFST-3
 587  014f 8d000000      	callf	d_rtol
 590                     ; 255 			wt /= calib; // scale calibration
 592  0153 96            	ldw	x,sp
 593  0154 1c0035        	addw	x,#OFST-3
 594  0157 8d000000      	callf	d_ltor
 596  015b 96            	ldw	x,sp
 597  015c 1c002f        	addw	x,#OFST-9
 598  015f 8d000000      	callf	d_ldiv
 600  0163 96            	ldw	x,sp
 601  0164 1c0035        	addw	x,#OFST-3
 602  0167 8d000000      	callf	d_rtol
 605                     ; 258 			if(wt >= 0)
 607  016b 0d35          	tnz	(OFST-3,sp)
 608  016d 96            	ldw	x,sp
 609  016e 2b38          	jrmi	L122
 610                     ; 260         if (wt > 10000) w1 = w0 = f1 = f2 = '^';
 612  0170 1c0035        	addw	x,#OFST-3
 613  0173 8d450445      	callf	LC010
 615  0177 2f04          	jrslt	L322
 618  0179 a65e          	ld	a,#94
 620  017b 203a          	jpf	LC003
 621  017d               L322:
 622                     ; 263 		  		w1 = '0' + (wt / 1000) % 10;
 624  017d 96            	ldw	x,sp
 625  017e 8d5e045e      	callf	LC012
 626  0182 8d0f040f      	callf	LC006
 627  0186 6b1d          	ld	(OFST-27,sp),a
 629                     ; 264 			  	w0 = '0' + (wt / 100) % 10;
 631  0188 96            	ldw	x,sp
 632  0189 8d690469      	callf	LC013
 633  018d 8d0f040f      	callf	LC006
 634  0191 6b1e          	ld	(OFST-26,sp),a
 636                     ; 265 				  f1 = '0' + (wt / 10) % 10;
 638  0193 96            	ldw	x,sp
 639  0194 8d740474      	callf	LC014
 640  0198 8d0f040f      	callf	LC006
 641  019c 6b1f          	ld	(OFST-25,sp),a
 643                     ; 266   				f2 = '0' + (wt % 10);
 645  019e 96            	ldw	x,sp
 646  019f 1c0035        	addw	x,#OFST-3
 647  01a2 8d000000      	callf	d_ltor
 651  01a6 203e          	jpf	LC002
 652  01a8               L122:
 653                     ; 271         if (wt * -1 > 1000) w1 = w0 = f1 = f2 = 'u';
 655  01a8 8d2a042a      	callf	LC008
 657  01ac ae0014        	ldw	x,#L66
 658  01af 8d000000      	callf	d_lcmp
 660  01b3 2f0c          	jrslt	L132
 663  01b5 a675          	ld	a,#117
 664  01b7               LC003:
 665  01b7 6b20          	ld	(OFST-24,sp),a
 667  01b9 6b1f          	ld	(OFST-25,sp),a
 669  01bb 6b1e          	ld	(OFST-26,sp),a
 671  01bd 6b1d          	ld	(OFST-27,sp),a
 674  01bf 202b          	jra	L112
 675  01c1               L132:
 676                     ; 274   				w1 = '-';
 678  01c1 a62d          	ld	a,#45
 679  01c3 6b1d          	ld	(OFST-27,sp),a
 681                     ; 275 			  	w0 = '0' + (wt * -1 / 100)% 10;
 683  01c5 96            	ldw	x,sp
 684  01c6 8d2a042a      	callf	LC008
 686  01ca ae0010        	ldw	x,#L46
 687  01cd 8d0f040f      	callf	LC006
 688  01d1 6b1e          	ld	(OFST-26,sp),a
 690                     ; 276 				  f1 = '0' + (wt * -1 / 10) % 10;
 692  01d3 96            	ldw	x,sp
 693  01d4 8d2a042a      	callf	LC008
 695  01d8 ae000c        	ldw	x,#L26
 696  01db 8d0f040f      	callf	LC006
 697  01df 6b1f          	ld	(OFST-25,sp),a
 699                     ; 277   				f2 = '0' + (wt * -1 % 10);
 701  01e1 96            	ldw	x,sp
 702  01e2 8d2a042a      	callf	LC008
 706  01e6               LC002:
 707  01e6 8d350435      	callf	LC009
 708  01ea 6b20          	ld	(OFST-24,sp),a
 710  01ec               L112:
 711                     ; 283     if (!(CAL_UP_PORT -> IDR & CAL_UP_PIN) & !(CAL_DOWN_PORT -> IDR & CAL_DOWN_PIN))
 713  01ec 7208500105    	btjt	20481,#4,L07
 714  01f1 ae0001        	ldw	x,#1
 715  01f4 2001          	jra	L27
 716  01f6               L07:
 717  01f6 5f            	clrw	x
 718  01f7               L27:
 719  01f7 1f03          	ldw	(OFST-53,sp),x
 721  01f9 c6500b        	ld	a,20491
 722  01fc a504          	bcp	a,#4
 723  01fe 2605          	jrne	L47
 724  0200 ae0001        	ldw	x,#1
 725  0203 2001          	jra	L67
 726  0205               L47:
 727  0205 5f            	clrw	x
 728  0206               L67:
 729  0206 01            	rrwa	x,a
 730  0207 1404          	and	a,(OFST-52,sp)
 731  0209 01            	rrwa	x,a
 732  020a 1403          	and	a,(OFST-53,sp)
 733  020c 01            	rrwa	x,a
 734  020d 5d            	tnzw	x
 735  020e 2716          	jreq	L532
 736                     ; 285 			if (stable_calib < 20) stable_calib ++;
 738  0210 1e15          	ldw	x,(OFST-35,sp)
 739  0212 a30014        	cpw	x,#20
 740  0215 2e03          	jrsge	L732
 743  0217 5c            	incw	x
 744  0218 1f15          	ldw	(OFST-35,sp),x
 746  021a               L732:
 747                     ; 286 			if ((stable_calib == 20) && (!tare_triggered))
 749  021a a30014        	cpw	x,#20
 750  021d 260a          	jrne	L342
 752  021f 1e27          	ldw	x,(OFST-17,sp)
 753  0221 2606          	jrne	L342
 754                     ; 288 				calib_mode = 1;
 756  0223 5c            	incw	x
 757  0224 1f09          	ldw	(OFST-47,sp),x
 759                     ; 289 				stable_calib = 0;
 760                     ; 290 				calib_triggered = 1;
 762  0226               L532:
 763                     ; 294 			calib_triggered = 0;
 765                     ; 295 			stable_calib = 0;
 768  0226 5f            	clrw	x
 769  0227 1f15          	ldw	(OFST-35,sp),x
 771  0229               L342:
 772                     ; 297     if(calib_mode == 1)
 774  0229 1e09          	ldw	x,(OFST-47,sp)
 775  022b 5a            	decw	x
 776  022c 2704ac830383  	jrne	L542
 777                     ; 299       led = 2;
 779  0232 ae0002        	ldw	x,#2
 780  0235 1f07          	ldw	(OFST-49,sp),x
 782                     ; 302       if (!(UNIT_PORT -> IDR & UNIT_PIN))
 784  0237 7202500b39    	btjt	20491,#1,L742
 785                     ; 304 			  if (stable_unit < 20) stable_unit ++;
 787  023c 1e1b          	ldw	x,(OFST-29,sp)
 788  023e a30014        	cpw	x,#20
 789  0241 2e03          	jrsge	L152
 792  0243 5c            	incw	x
 793  0244 1f1b          	ldw	(OFST-29,sp),x
 795  0246               L152:
 796                     ; 305 	  		if ((stable_unit == 20) && (!unit_trig))
 798  0246 a30014        	cpw	x,#20
 799  0249 262f          	jrne	L552
 801  024b 1e0f          	ldw	x,(OFST-41,sp)
 802  024d 262b          	jrne	L552
 803                     ; 307           calib = calib_temp;
 805  024f 1e23          	ldw	x,(OFST-21,sp)
 806  0251 1f31          	ldw	(OFST-7,sp),x
 807  0253 1e21          	ldw	x,(OFST-23,sp)
 808  0255 1f2f          	ldw	(OFST-9,sp),x
 810                     ; 308           write4B(0xFFF4, calib);
 812  0257 1e31          	ldw	x,(OFST-7,sp)
 813  0259 89            	pushw	x
 814  025a 1e31          	ldw	x,(OFST-7,sp)
 815  025c 89            	pushw	x
 816  025d aefff4        	ldw	x,#65524
 817  0260 89            	pushw	x
 818  0261 5f            	clrw	x
 819  0262 89            	pushw	x
 820  0263 8d000000      	callf	f_write4B
 822  0267 5b08          	addw	sp,#8
 823                     ; 309 			  	calib_mode = 0;
 825  0269 5f            	clrw	x
 826  026a 1f09          	ldw	(OFST-47,sp),x
 828                     ; 310 				  stable_unit = 0;
 830  026c 1f1b          	ldw	(OFST-29,sp),x
 832                     ; 311           led = 0;
 834  026e 1f07          	ldw	(OFST-49,sp),x
 836                     ; 312   				unit_trig = 1;
 838  0270 5c            	incw	x
 839  0271 1f0f          	ldw	(OFST-41,sp),x
 841  0273 2005          	jra	L552
 842  0275               L742:
 843                     ; 316 	  		unit_trig = 0;
 845  0275 5f            	clrw	x
 846  0276 1f0f          	ldw	(OFST-41,sp),x
 848                     ; 317 		  	stable_unit = 0;
 850  0278 1f1b          	ldw	(OFST-29,sp),x
 852  027a               L552:
 853                     ; 319       if (!(TARE_PORT -> IDR & TARE_PIN))
 855  027a 7206500123    	btjt	20481,#3,L752
 856                     ; 321 			  if (stable_tare < 20) stable_tare ++;
 858  027f 1e33          	ldw	x,(OFST-5,sp)
 859  0281 a30014        	cpw	x,#20
 860  0284 2e03          	jrsge	L162
 863  0286 5c            	incw	x
 864  0287 1f33          	ldw	(OFST-5,sp),x
 866  0289               L162:
 867                     ; 322   			if ((stable_tare == 20) && (!tare_triggered))
 869  0289 a30014        	cpw	x,#20
 870  028c 2619          	jrne	L562
 872  028e 1e27          	ldw	x,(OFST-17,sp)
 873  0290 2615          	jrne	L562
 874                     ; 324           calib_temp = calib;
 876  0292 1e31          	ldw	x,(OFST-7,sp)
 877  0294 1f23          	ldw	(OFST-21,sp),x
 878  0296 1e2f          	ldw	x,(OFST-9,sp)
 879  0298 1f21          	ldw	(OFST-23,sp),x
 881                     ; 325 			  	stable_tare = 0;
 883  029a 5f            	clrw	x
 884  029b 1f33          	ldw	(OFST-5,sp),x
 886                     ; 326 				  tare_triggered = 1;
 888  029d 5c            	incw	x
 889  029e 1f27          	ldw	(OFST-17,sp),x
 891  02a0 2005          	jra	L562
 892  02a2               L752:
 893                     ; 330 	  		tare_triggered = 0;
 895  02a2 5f            	clrw	x
 896  02a3 1f27          	ldw	(OFST-17,sp),x
 898                     ; 331 		  	stable_tare = 0;
 900  02a5 1f33          	ldw	(OFST-5,sp),x
 902  02a7               L562:
 903                     ; 333       if (!(CAL_UP_PORT -> IDR & CAL_UP_PIN))
 905  02a7 7204500b32    	btjt	20491,#2,L762
 906                     ; 335         if (stable_calib_up < 20) stable_calib_up ++;
 908  02ac 1e17          	ldw	x,(OFST-33,sp)
 909  02ae a30014        	cpw	x,#20
 910  02b1 2e03          	jrsge	L172
 913  02b3 5c            	incw	x
 914  02b4 1f17          	ldw	(OFST-33,sp),x
 916  02b6               L172:
 917                     ; 336         if ((stable_calib_up == 20) && (!calib_up_trig))
 919  02b6 a30014        	cpw	x,#20
 920  02b9 2628          	jrne	L103
 922  02bb 1e0b          	ldw	x,(OFST-45,sp)
 923  02bd 2624          	jrne	L103
 924                     ; 338           if (calib < 15000) calib_temp += 100;
 926  02bf 96            	ldw	x,sp
 927  02c0 8d500450      	callf	LC011
 929  02c4 2e0c          	jrsge	L572
 932  02c6 96            	ldw	x,sp
 933  02c7 1c0021        	addw	x,#OFST-23
 934  02ca a664          	ld	a,#100
 935  02cc 8d000000      	callf	d_lgadc
 939  02d0 2004          	jra	L772
 940  02d2               L572:
 941                     ; 339           else flash_over();
 943  02d2 8d000000      	callf	f_flash_over
 945  02d6               L772:
 946                     ; 340           stable_calib_up = 0;
 948  02d6 5f            	clrw	x
 949  02d7 1f17          	ldw	(OFST-33,sp),x
 951                     ; 341           calib_up_trig = 1;
 953  02d9 5c            	incw	x
 954  02da 1f0b          	ldw	(OFST-45,sp),x
 956  02dc 2005          	jra	L103
 957  02de               L762:
 958                     ; 345         calib_up_trig = 0;
 960  02de 5f            	clrw	x
 961  02df 1f0b          	ldw	(OFST-45,sp),x
 963                     ; 346         stable_calib_up = 0;
 965  02e1 1f17          	ldw	(OFST-33,sp),x
 967  02e3               L103:
 968                     ; 348       if (!(CAL_DOWN_PORT -> IDR & CAL_DOWN_PIN))
 970  02e3 7208500135    	btjt	20481,#4,L303
 971                     ; 350         if (stable_calib_down < 20) stable_calib_down ++;
 973  02e8 1e19          	ldw	x,(OFST-31,sp)
 974  02ea a30014        	cpw	x,#20
 975  02ed 2e03          	jrsge	L503
 978  02ef 5c            	incw	x
 979  02f0 1f19          	ldw	(OFST-31,sp),x
 981  02f2               L503:
 982                     ; 351         if ((stable_calib_down == 20) && (!calib_down_trig))
 984  02f2 a30014        	cpw	x,#20
 985  02f5 262b          	jrne	L513
 987  02f7 1e0d          	ldw	x,(OFST-43,sp)
 988  02f9 2627          	jrne	L513
 989                     ; 353           if (calib > 10000) calib_temp -= 100;
 991  02fb 96            	ldw	x,sp
 992  02fc 1c002f        	addw	x,#OFST-9
 993  02ff 8d450445      	callf	LC010
 995  0303 2f0c          	jrslt	L113
 998  0305 96            	ldw	x,sp
 999  0306 1c0021        	addw	x,#OFST-23
1000  0309 a664          	ld	a,#100
1001  030b 8d000000      	callf	d_lgsbc
1005  030f 2004          	jra	L313
1006  0311               L113:
1007                     ; 354           else flash_under();
1009  0311 8d000000      	callf	f_flash_under
1011  0315               L313:
1012                     ; 355           stable_calib_down = 0;
1014  0315 5f            	clrw	x
1015  0316 1f19          	ldw	(OFST-31,sp),x
1017                     ; 356           calib_down_trig = 1;
1019  0318 5c            	incw	x
1020  0319 1f0d          	ldw	(OFST-43,sp),x
1022  031b 2005          	jra	L513
1023  031d               L303:
1024                     ; 360         calib_down_trig = 0;
1026  031d 5f            	clrw	x
1027  031e 1f0d          	ldw	(OFST-43,sp),x
1029                     ; 361         stable_calib_down = 0;
1031  0320 1f19          	ldw	(OFST-31,sp),x
1033  0322               L513:
1034                     ; 363       wt = res - tare;
1036  0322 96            	ldw	x,sp
1037  0323 1c0029        	addw	x,#OFST-15
1038  0326 8d000000      	callf	d_ltor
1040  032a 96            	ldw	x,sp
1041  032b 1c0011        	addw	x,#OFST-39
1042  032e 8d000000      	callf	d_lsub
1044  0332 96            	ldw	x,sp
1045  0333 1c0035        	addw	x,#OFST-3
1046  0336 8d000000      	callf	d_rtol
1049                     ; 364       wt = wt / calib_temp;
1051  033a 96            	ldw	x,sp
1052  033b 1c0035        	addw	x,#OFST-3
1053  033e 8d000000      	callf	d_ltor
1055  0342 96            	ldw	x,sp
1056  0343 1c0021        	addw	x,#OFST-23
1057  0346 8d000000      	callf	d_ldiv
1059  034a 96            	ldw	x,sp
1060  034b 1c0035        	addw	x,#OFST-3
1061  034e 8d000000      	callf	d_rtol
1064                     ; 365       w1 = '0' + (wt / 1000) % 10;
1066  0352 96            	ldw	x,sp
1067  0353 8d5e045e      	callf	LC012
1068  0357 8d0f040f      	callf	LC006
1069  035b 6b1d          	ld	(OFST-27,sp),a
1071                     ; 366       w0 = '0' + (wt / 100) % 10;
1073  035d 96            	ldw	x,sp
1074  035e 8d690469      	callf	LC013
1075  0362 8d0f040f      	callf	LC006
1076  0366 6b1e          	ld	(OFST-26,sp),a
1078                     ; 367       f1 = '0' + (wt / 10) % 10;
1080  0368 96            	ldw	x,sp
1081  0369 8d740474      	callf	LC014
1082  036d 8d0f040f      	callf	LC006
1083  0371 6b1f          	ld	(OFST-25,sp),a
1085                     ; 368       f2 = '0' + (wt % 10);
1087  0373 96            	ldw	x,sp
1088  0374 1c0035        	addw	x,#OFST-3
1089  0377 8d000000      	callf	d_ltor
1091  037b 8d350435      	callf	LC009
1092  037f 6b20          	ld	(OFST-24,sp),a
1095  0381 203f          	jra	L713
1096  0383               L542:
1097                     ; 372 	  	if (!(TARE_PORT -> IDR & TARE_PIN))
1099  0383 7206500135    	btjt	20481,#3,L123
1100                     ; 374 			  if (stable_tare < 20) stable_tare ++;
1102  0388 1e33          	ldw	x,(OFST-5,sp)
1103  038a a30014        	cpw	x,#20
1104  038d 2e03          	jrsge	L323
1107  038f 5c            	incw	x
1108  0390 1f33          	ldw	(OFST-5,sp),x
1110  0392               L323:
1111                     ; 375   			if ((stable_tare == 20) && (!tare_triggered))
1113  0392 a30014        	cpw	x,#20
1114  0395 262b          	jrne	L713
1116  0397 1e27          	ldw	x,(OFST-17,sp)
1117  0399 2627          	jrne	L713
1118                     ; 377 		  		tare = res;
1120  039b 1e2b          	ldw	x,(OFST-13,sp)
1121  039d 1f13          	ldw	(OFST-37,sp),x
1122  039f 1e29          	ldw	x,(OFST-15,sp)
1123  03a1 1f11          	ldw	(OFST-39,sp),x
1125                     ; 378           write4B(0xFFF0, tare);
1127  03a3 1e13          	ldw	x,(OFST-37,sp)
1128  03a5 89            	pushw	x
1129  03a6 1e13          	ldw	x,(OFST-37,sp)
1130  03a8 89            	pushw	x
1131  03a9 aefff0        	ldw	x,#65520
1132  03ac 89            	pushw	x
1133  03ad 5f            	clrw	x
1134  03ae 89            	pushw	x
1135  03af 8d000000      	callf	f_write4B
1137  03b3 5b08          	addw	sp,#8
1138                     ; 380 			  	stable_tare = 0;
1140  03b5 5f            	clrw	x
1141  03b6 1f33          	ldw	(OFST-5,sp),x
1143                     ; 381 				  tare_triggered = 1;
1145  03b8 5c            	incw	x
1146  03b9 1f27          	ldw	(OFST-17,sp),x
1148  03bb 2005          	jra	L713
1149  03bd               L123:
1150                     ; 385 			  tare_triggered = 0;
1152  03bd 5f            	clrw	x
1153  03be 1f27          	ldw	(OFST-17,sp),x
1155                     ; 386 			  stable_tare = 0;
1157  03c0 1f33          	ldw	(OFST-5,sp),x
1159  03c2               L713:
1160                     ; 391     switch(counter)
1162  03c2 1e25          	ldw	x,(OFST-19,sp)
1164                     ; 412         break;
1165  03c4 2710          	jreq	L3
1166  03c6 5a            	decw	x
1167  03c7 2717          	jreq	L5
1168  03c9 5a            	decw	x
1169  03ca 271e          	jreq	L7
1170  03cc 5a            	decw	x
1171  03cd 272c          	jreq	L11
1172  03cf 5a            	decw	x
1173  03d0 2730          	jreq	L31
1174  03d2 acca00ca      	jra	L102
1175  03d6               L3:
1176                     ; 393       case 0:
1176                     ; 394         display_digit(w1, 3, 0);
1178  03d6 5f            	clrw	x
1179  03d7 89            	pushw	x
1180  03d8 ae0003        	ldw	x,#3
1181  03db 89            	pushw	x
1182  03dc 7b21          	ld	a,(OFST-23,sp)
1184                     ; 395         counter++;
1185                     ; 396         break;
1187  03de 2010          	jpf	LC005
1188  03e0               L5:
1189                     ; 397       case 1:
1189                     ; 398         display_digit(w0, 2, 1);
1191  03e0 5c            	incw	x
1192  03e1 89            	pushw	x
1193  03e2 ae0002        	ldw	x,#2
1194  03e5 89            	pushw	x
1195  03e6 7b22          	ld	a,(OFST-22,sp)
1197                     ; 399         counter++;
1198                     ; 400         break;
1200  03e8 2006          	jpf	LC005
1201  03ea               L7:
1202                     ; 401       case 2:
1202                     ; 402         display_digit(f1, 1, 0);
1204  03ea 5f            	clrw	x
1205  03eb 89            	pushw	x
1206  03ec 5c            	incw	x
1207  03ed 89            	pushw	x
1208  03ee 7b23          	ld	a,(OFST-21,sp)
1210                     ; 403         counter++;
1212  03f0               LC005:
1213  03f0 8d000000      	callf	f_display_digit
1214  03f4 5b04          	addw	sp,#4
1218  03f6 1e25          	ldw	x,(OFST-19,sp)
1219  03f8 5c            	incw	x
1220                     ; 404         break;
1222  03f9 200e          	jpf	LC001
1223  03fb               L11:
1224                     ; 405       case 3:
1224                     ; 406         display_digit(f2, 0, 0);
1226  03fb 5f            	clrw	x
1227  03fc 89            	pushw	x
1228  03fd 89            	pushw	x
1229  03fe 7b24          	ld	a,(OFST-20,sp)
1231                     ; 407         counter++;
1232                     ; 408         break;
1234  0400 20ee          	jpf	LC005
1235  0402               L31:
1236                     ; 409       case 4:
1236                     ; 410         LED_Control(led);
1238  0402 1e07          	ldw	x,(OFST-49,sp)
1239  0404 8d000000      	callf	f_LED_Control
1241                     ; 411         counter = 0;
1243  0408 5f            	clrw	x
1244  0409               LC001:
1245  0409 1f25          	ldw	(OFST-19,sp),x
1247                     ; 412         break;
1249  040b acca00ca      	jra	L102
1251  040f               LC006:
1252  040f 8d000000      	callf	d_ldiv
1254  0413 2020          	jpf	LC009
1255  0415               LC007:
1256  0415 4b80          	push	#128
1257  0417 ae500a        	ldw	x,#20490
1258  041a 8d000000      	callf	f_GPIO_WriteHigh
1260  041e 84            	pop	a
1261                     ; 235         GPIO_WriteLow(CLK_OUT);
1263  041f 4b80          	push	#128
1264  0421 ae500a        	ldw	x,#20490
1265  0424 8d000000      	callf	f_GPIO_WriteLow
1267  0428 84            	pop	a
1268  0429 87            	retf	
1269  042a               LC008:
1270  042a 1c0035        	addw	x,#OFST-3
1271  042d 8d000000      	callf	d_ltor
1273  0431 ac000000      	jpf	d_lneg
1274  0435               LC009:
1275  0435 ae000c        	ldw	x,#L26
1276  0438 8d000000      	callf	d_lmod
1278  043c a630          	ld	a,#48
1279  043e 8d000000      	callf	d_ladc
1281  0442 b603          	ld	a,c_lreg+3
1282  0444 87            	retf	
1283  0445               LC010:
1284  0445 8d000000      	callf	d_ltor
1286  0449 ae0000        	ldw	x,#L23
1287  044c ac000000      	jpf	d_lcmp
1288  0450               LC011:
1289  0450 1c002f        	addw	x,#OFST-9
1290  0453 8d000000      	callf	d_ltor
1292  0457 ae0004        	ldw	x,#L43
1293  045a ac000000      	jpf	d_lcmp
1294  045e               LC012:
1295  045e 1c0035        	addw	x,#OFST-3
1296  0461 8d000000      	callf	d_ltor
1298  0465 ae0008        	ldw	x,#L06
1299  0468 87            	retf	
1300  0469               LC013:
1301  0469 1c0035        	addw	x,#OFST-3
1302  046c 8d000000      	callf	d_ltor
1304  0470 ae0010        	ldw	x,#L46
1305  0473 87            	retf	
1306  0474               LC014:
1307  0474 1c0035        	addw	x,#OFST-3
1308  0477 8d000000      	callf	d_ltor
1310  047b ae000c        	ldw	x,#L26
1311  047e 87            	retf	
1345                     ; 442 void assert_failed(u8* file, u32 line)
1345                     ; 443 { 
1346                     .text:	section	.text,new
1347  0000               f_assert_failed:
1351  0000               L353:
1352  0000 20fe          	jra	L353
1364                     	xdef	f_main
1365                     	xref	f_flash_under
1366                     	xref	f_flash_over
1367                     	xref	f_delay_100us
1368                     	xref	f_read4B
1369                     	xref	f_write4B
1370                     	xref	f_LED_Control
1371                     	xref	f_display_digit
1372                     	xref	f_display_init
1373                     	xdef	f_assert_failed
1374                     	xref	f_GPIO_WriteLow
1375                     	xref	f_GPIO_WriteHigh
1376                     	xref	f_GPIO_Init
1377                     	xref.b	c_lreg
1378                     	xref.b	c_x
1397                     	xref	d_lgsbc
1398                     	xref	d_lgadc
1399                     	xref	d_lneg
1400                     	xref	d_ladc
1401                     	xref	d_lmod
1402                     	xref	d_ldiv
1403                     	xref	d_lsub
1404                     	xref	d_lor
1405                     	xref	d_lcmp
1406                     	xref	d_ltor
1407                     	xref	d_rtol
1408                     	end
