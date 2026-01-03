   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  85                     ; 48 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  85                     ; 49 {
  86                     .text:	section	.text,new
  87  0000               f_IWDG_WriteAccessCmd:
  89  0000 88            	push	a
  90       00000000      OFST:	set	0
  93                     ; 51   assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  95  0001 a155          	cp	a,#85
  96  0003 2712          	jreq	L21
  97  0005 4d            	tnz	a
  98  0006 270f          	jreq	L21
  99  0008 ae0033        	ldw	x,#51
 100  000b 89            	pushw	x
 101  000c 5f            	clrw	x
 102  000d 89            	pushw	x
 103  000e ae0000        	ldw	x,#L73
 104  0011 8d000000      	callf	f_assert_failed
 106  0015 5b04          	addw	sp,#4
 107  0017               L21:
 108                     ; 53   IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
 110  0017 7b01          	ld	a,(OFST+1,sp)
 111  0019 c750e0        	ld	20704,a
 112                     ; 54 }
 115  001c 84            	pop	a
 116  001d 87            	retf	
 206                     ; 63 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 206                     ; 64 {
 207                     .text:	section	.text,new
 208  0000               f_IWDG_SetPrescaler:
 210  0000 88            	push	a
 211       00000000      OFST:	set	0
 214                     ; 66   assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 216  0001 4d            	tnz	a
 217  0002 2727          	jreq	L42
 218  0004 a101          	cp	a,#1
 219  0006 2723          	jreq	L42
 220  0008 a102          	cp	a,#2
 221  000a 271f          	jreq	L42
 222  000c a103          	cp	a,#3
 223  000e 271b          	jreq	L42
 224  0010 a104          	cp	a,#4
 225  0012 2717          	jreq	L42
 226  0014 a105          	cp	a,#5
 227  0016 2713          	jreq	L42
 228  0018 a106          	cp	a,#6
 229  001a 270f          	jreq	L42
 230  001c ae0042        	ldw	x,#66
 231  001f 89            	pushw	x
 232  0020 5f            	clrw	x
 233  0021 89            	pushw	x
 234  0022 ae0000        	ldw	x,#L73
 235  0025 8d000000      	callf	f_assert_failed
 237  0029 5b04          	addw	sp,#4
 238  002b               L42:
 239                     ; 68   IWDG->PR = (uint8_t)IWDG_Prescaler;
 241  002b 7b01          	ld	a,(OFST+1,sp)
 242  002d c750e1        	ld	20705,a
 243                     ; 69 }
 246  0030 84            	pop	a
 247  0031 87            	retf	
 280                     ; 78 void IWDG_SetReload(uint8_t IWDG_Reload)
 280                     ; 79 {
 281                     .text:	section	.text,new
 282  0000               f_IWDG_SetReload:
 286                     ; 80   IWDG->RLR = IWDG_Reload;
 288  0000 c750e2        	ld	20706,a
 289                     ; 81 }
 292  0003 87            	retf	
 314                     ; 89 void IWDG_ReloadCounter(void)
 314                     ; 90 {
 315                     .text:	section	.text,new
 316  0000               f_IWDG_ReloadCounter:
 320                     ; 91   IWDG->KR = IWDG_KEY_REFRESH;
 322  0000 35aa50e0      	mov	20704,#170
 323                     ; 92 }
 326  0004 87            	retf	
 348                     ; 99 void IWDG_Enable(void)
 348                     ; 100 {
 349                     .text:	section	.text,new
 350  0000               f_IWDG_Enable:
 354                     ; 101   IWDG->KR = IWDG_KEY_ENABLE;
 356  0000 35cc50e0      	mov	20704,#204
 357                     ; 102 }
 360  0004 87            	retf	
 372                     	xdef	f_IWDG_Enable
 373                     	xdef	f_IWDG_ReloadCounter
 374                     	xdef	f_IWDG_SetReload
 375                     	xdef	f_IWDG_SetPrescaler
 376                     	xdef	f_IWDG_WriteAccessCmd
 377                     	xref	f_assert_failed
 378                     .const:	section	.text
 379  0000               L73:
 380  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 381  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 382  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 383  0036 5f697764672e  	dc.b	"_iwdg.c",0
 403                     	end
