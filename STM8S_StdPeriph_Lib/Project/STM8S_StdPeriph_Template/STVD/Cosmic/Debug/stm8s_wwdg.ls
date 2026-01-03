   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  70                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  70                     ; 54 {
  71                     .text:	section	.text,new
  72  0000               f_WWDG_Init:
  74  0000 89            	pushw	x
  75       00000000      OFST:	set	0
  78                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  80  0001 9f            	ld	a,xl
  81  0002 a180          	cp	a,#128
  82  0004 250f          	jrult	L01
  83  0006 ae0038        	ldw	x,#56
  84  0009 89            	pushw	x
  85  000a 5f            	clrw	x
  86  000b 89            	pushw	x
  87  000c ae0000        	ldw	x,#L33
  88  000f 8d000000      	callf	f_assert_failed
  90  0013 5b04          	addw	sp,#4
  91  0015               L01:
  92                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  94  0015 357f50d2      	mov	20690,#127
  95                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  97  0019 7b01          	ld	a,(OFST+1,sp)
  98  001b aac0          	or	a,#192
  99  001d c750d1        	ld	20689,a
 100                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 102  0020 7b02          	ld	a,(OFST+2,sp)
 103  0022 a47f          	and	a,#127
 104  0024 aa40          	or	a,#64
 105  0026 c750d2        	ld	20690,a
 106                     ; 61 }
 109  0029 85            	popw	x
 110  002a 87            	retf	
 144                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 144                     ; 70 {
 145                     .text:	section	.text,new
 146  0000               f_WWDG_SetCounter:
 148  0000 88            	push	a
 149       00000000      OFST:	set	0
 152                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 154  0001 a180          	cp	a,#128
 155  0003 250f          	jrult	L02
 156  0005 ae0048        	ldw	x,#72
 157  0008 89            	pushw	x
 158  0009 5f            	clrw	x
 159  000a 89            	pushw	x
 160  000b ae0000        	ldw	x,#L33
 161  000e 8d000000      	callf	f_assert_failed
 163  0012 5b04          	addw	sp,#4
 164  0014               L02:
 165                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 167  0014 7b01          	ld	a,(OFST+1,sp)
 168  0016 a47f          	and	a,#127
 169  0018 c750d1        	ld	20689,a
 170                     ; 77 }
 173  001b 84            	pop	a
 174  001c 87            	retf	
 196                     ; 86 uint8_t WWDG_GetCounter(void)
 196                     ; 87 {
 197                     .text:	section	.text,new
 198  0000               f_WWDG_GetCounter:
 202                     ; 88   return(WWDG->CR);
 204  0000 c650d1        	ld	a,20689
 207  0003 87            	retf	
 229                     ; 96 void WWDG_SWReset(void)
 229                     ; 97 {
 230                     .text:	section	.text,new
 231  0000               f_WWDG_SWReset:
 235                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 237  0000 358050d1      	mov	20689,#128
 238                     ; 99 }
 241  0004 87            	retf	
 276                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 276                     ; 109 {
 277                     .text:	section	.text,new
 278  0000               f_WWDG_SetWindowValue:
 280  0000 88            	push	a
 281       00000000      OFST:	set	0
 284                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 286  0001 a180          	cp	a,#128
 287  0003 250f          	jrult	L43
 288  0005 ae006f        	ldw	x,#111
 289  0008 89            	pushw	x
 290  0009 5f            	clrw	x
 291  000a 89            	pushw	x
 292  000b ae0000        	ldw	x,#L33
 293  000e 8d000000      	callf	f_assert_failed
 295  0012 5b04          	addw	sp,#4
 296  0014               L43:
 297                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 299  0014 7b01          	ld	a,(OFST+1,sp)
 300  0016 a47f          	and	a,#127
 301  0018 aa40          	or	a,#64
 302  001a c750d2        	ld	20690,a
 303                     ; 114 }
 306  001d 84            	pop	a
 307  001e 87            	retf	
 319                     	xdef	f_WWDG_SetWindowValue
 320                     	xdef	f_WWDG_SWReset
 321                     	xdef	f_WWDG_GetCounter
 322                     	xdef	f_WWDG_SetCounter
 323                     	xdef	f_WWDG_Init
 324                     	xref	f_assert_failed
 325                     .const:	section	.text
 326  0000               L33:
 327  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 328  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 329  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 330  0036 5f777764672e  	dc.b	"_wwdg.c",0
 350                     	end
