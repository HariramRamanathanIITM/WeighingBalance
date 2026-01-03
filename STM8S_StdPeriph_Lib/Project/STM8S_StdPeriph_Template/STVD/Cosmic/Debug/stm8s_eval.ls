   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  22                     	switch	.data
  23  0000               _LED_PORT:
  24  0000 5023          	dc.w	20515
  25  0002 5023          	dc.w	20515
  26  0004 5023          	dc.w	20515
  27  0006 5023          	dc.w	20515
  28                     .const:	section	.text
  29  0000               _LED_PIN:
  30  0000 08            	dc.b	8
  31  0001 04            	dc.b	4
  32  0002 02            	dc.b	2
  33  0003 01            	dc.b	1
  34                     	switch	.data
  35  0008               _BUTTON_PORT:
  36  0008 500a          	dc.w	20490
  37  000a 5005          	dc.w	20485
  38  000c 5005          	dc.w	20485
  39  000e 5005          	dc.w	20485
  40  0010 5005          	dc.w	20485
  41  0012 500f          	dc.w	20495
  42                     	switch	.const
  43  0004               _BUTTON_PIN:
  44  0004 01            	dc.b	1
  45  0005 20            	dc.b	32
  46  0006 10            	dc.b	16
  47  0007 40            	dc.b	64
  48  0008 80            	dc.b	128
  49  0009 80            	dc.b	128
  50  000a               _BUTTON_EXTI:
  51  000a 02            	dc.b	2
  52  000b 01            	dc.b	1
  53  000c 01            	dc.b	1
  54  000d 01            	dc.b	1
  55  000e 01            	dc.b	1
  56  000f 03            	dc.b	3
 141                     ; 103 void STM_EVAL_LEDInit(Led_TypeDef Led)
 141                     ; 104 {
 143                     .text:	section	.text,new
 144  0000               _STM_EVAL_LEDInit:
 146  0000 88            	push	a
 147       00000000      OFST:	set	0
 150                     ; 106   GPIO_Init(LED_PORT[Led], (GPIO_Pin_TypeDef)LED_PIN[Led], GPIO_MODE_OUT_PP_HIGH_FAST);
 152  0001 4bf0          	push	#240
 153  0003 5f            	clrw	x
 154  0004 97            	ld	xl,a
 155  0005 d60000        	ld	a,(_LED_PIN,x)
 156  0008 88            	push	a
 157  0009 7b03          	ld	a,(OFST+3,sp)
 158  000b 5f            	clrw	x
 159  000c 97            	ld	xl,a
 160  000d 58            	sllw	x
 161  000e de0000        	ldw	x,(_LED_PORT,x)
 162  0011 cd0000        	call	_GPIO_Init
 164                     ; 107 }
 167  0014 5b03          	addw	sp,#3
 168  0016 81            	ret	
 205                     ; 119 void STM_EVAL_LEDOn(Led_TypeDef Led)
 205                     ; 120 {
 206                     .text:	section	.text,new
 207  0000               _STM_EVAL_LEDOn:
 209       00000000      OFST:	set	0
 212                     ; 121   LED_PORT[Led]->ODR |= (uint8_t)LED_PIN[Led];
 214  0000 5f            	clrw	x
 215  0001 97            	ld	xl,a
 216  0002 58            	sllw	x
 217  0003 905f          	clrw	y
 218  0005 de0000        	ldw	x,(_LED_PORT,x)
 219  0008 9097          	ld	yl,a
 220  000a f6            	ld	a,(x)
 221  000b 90da0000      	or	a,(_LED_PIN,y)
 222  000f f7            	ld	(x),a
 223                     ; 122 }
 226  0010 81            	ret	
 263                     ; 134 void STM_EVAL_LEDOff(Led_TypeDef Led)
 263                     ; 135 {
 264                     .text:	section	.text,new
 265  0000               _STM_EVAL_LEDOff:
 267       00000000      OFST:	set	0
 270                     ; 136   LED_PORT[Led]->ODR &= (uint8_t)~LED_PIN[Led];
 272  0000 5f            	clrw	x
 273  0001 97            	ld	xl,a
 274  0002 58            	sllw	x
 275  0003 905f          	clrw	y
 276  0005 9097          	ld	yl,a
 277  0007 de0000        	ldw	x,(_LED_PORT,x)
 278  000a 90d60000      	ld	a,(_LED_PIN,y)
 279  000e 43            	cpl	a
 280  000f f4            	and	a,(x)
 281  0010 f7            	ld	(x),a
 282                     ; 137 }
 285  0011 81            	ret	
 322                     ; 149 void STM_EVAL_LEDToggle(Led_TypeDef Led)
 322                     ; 150 {
 323                     .text:	section	.text,new
 324  0000               _STM_EVAL_LEDToggle:
 326       00000000      OFST:	set	0
 329                     ; 151   LED_PORT[Led]->ODR ^= (uint8_t)LED_PIN[Led];
 331  0000 5f            	clrw	x
 332  0001 97            	ld	xl,a
 333  0002 58            	sllw	x
 334  0003 905f          	clrw	y
 335  0005 de0000        	ldw	x,(_LED_PORT,x)
 336  0008 9097          	ld	yl,a
 337  000a f6            	ld	a,(x)
 338  000b 90d80000      	xor	a,(_LED_PIN,y)
 339  000f f7            	ld	(x),a
 340                     ; 152 }
 343  0010 81            	ret	
 461                     ; 170 void STM_EVAL_PBInit(Button_TypeDef Button, ButtonMode_TypeDef Button_Mode)
 461                     ; 171 {
 462                     .text:	section	.text,new
 463  0000               _STM_EVAL_PBInit:
 465  0000 89            	pushw	x
 466       00000000      OFST:	set	0
 469                     ; 173   if (Button_Mode == BUTTON_MODE_EXTI)
 471  0001 9f            	ld	a,xl
 472  0002 4a            	dec	a
 473  0003 2623          	jrne	L171
 474                     ; 176     GPIO_Init(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button], GPIO_MODE_IN_FL_IT);
 476  0005 4b20          	push	#32
 477  0007 9e            	ld	a,xh
 478  0008 5f            	clrw	x
 479  0009 97            	ld	xl,a
 480  000a d60004        	ld	a,(_BUTTON_PIN,x)
 481  000d 88            	push	a
 482  000e 7b03          	ld	a,(OFST+3,sp)
 483  0010 5f            	clrw	x
 484  0011 97            	ld	xl,a
 485  0012 58            	sllw	x
 486  0013 de0008        	ldw	x,(_BUTTON_PORT,x)
 487  0016 cd0000        	call	_GPIO_Init
 489  0019 85            	popw	x
 490                     ; 177     EXTI_SetExtIntSensitivity((EXTI_Port_TypeDef)BUTTON_EXTI[Button], EXTI_SENSITIVITY_FALL_LOW);
 492  001a 7b01          	ld	a,(OFST+1,sp)
 493  001c 5f            	clrw	x
 494  001d 97            	ld	xl,a
 495  001e d6000a        	ld	a,(_BUTTON_EXTI,x)
 496  0021 5f            	clrw	x
 497  0022 95            	ld	xh,a
 498  0023 cd0000        	call	_EXTI_SetExtIntSensitivity
 501  0026 2016          	jra	L371
 502  0028               L171:
 503                     ; 181     GPIO_Init(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button], GPIO_MODE_IN_FL_NO_IT);
 505  0028 4b00          	push	#0
 506  002a 7b02          	ld	a,(OFST+2,sp)
 507  002c 5f            	clrw	x
 508  002d 97            	ld	xl,a
 509  002e d60004        	ld	a,(_BUTTON_PIN,x)
 510  0031 88            	push	a
 511  0032 7b03          	ld	a,(OFST+3,sp)
 512  0034 5f            	clrw	x
 513  0035 97            	ld	xl,a
 514  0036 58            	sllw	x
 515  0037 de0008        	ldw	x,(_BUTTON_PORT,x)
 516  003a cd0000        	call	_GPIO_Init
 518  003d 85            	popw	x
 519  003e               L371:
 520                     ; 183 }
 523  003e 85            	popw	x
 524  003f 81            	ret	
 563                     ; 197 uint8_t STM_EVAL_PBGetState(Button_TypeDef Button)
 563                     ; 198 {
 564                     .text:	section	.text,new
 565  0000               _STM_EVAL_PBGetState:
 567  0000 88            	push	a
 568       00000000      OFST:	set	0
 571                     ; 199   return GPIO_ReadInputPin(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button]);
 573  0001 5f            	clrw	x
 574  0002 97            	ld	xl,a
 575  0003 d60004        	ld	a,(_BUTTON_PIN,x)
 576  0006 88            	push	a
 577  0007 7b02          	ld	a,(OFST+2,sp)
 578  0009 5f            	clrw	x
 579  000a 97            	ld	xl,a
 580  000b 58            	sllw	x
 581  000c de0008        	ldw	x,(_BUTTON_PORT,x)
 582  000f cd0000        	call	_GPIO_ReadInputPin
 584  0012 5b02          	addw	sp,#2
 587  0014 81            	ret	
 613                     ; 208 void SD_LowLevel_DeInit(void)
 613                     ; 209 {
 614                     .text:	section	.text,new
 615  0000               _SD_LowLevel_DeInit:
 619                     ; 210   SPI_Cmd(DISABLE); /*!< SD_SPI disable */
 621  0000 4f            	clr	a
 622  0001 cd0000        	call	_SPI_Cmd
 624                     ; 213   CLK_PeripheralClockConfig(SD_SPI_CLK, DISABLE);
 626  0004 ae0100        	ldw	x,#256
 627  0007 cd0000        	call	_CLK_PeripheralClockConfig
 629                     ; 216   GPIO_Init(SD_SPI_SCK_GPIO_PORT, SD_SPI_SCK_PIN, GPIO_MODE_IN_FL_NO_IT);
 631  000a 4b00          	push	#0
 632  000c 4b20          	push	#32
 633  000e ae500a        	ldw	x,#20490
 634  0011 cd0000        	call	_GPIO_Init
 636  0014 85            	popw	x
 637                     ; 219   GPIO_Init(SD_SPI_MISO_GPIO_PORT, SD_SPI_MISO_PIN, GPIO_MODE_IN_FL_NO_IT);
 639  0015 4b00          	push	#0
 640  0017 4b80          	push	#128
 641  0019 ae500a        	ldw	x,#20490
 642  001c cd0000        	call	_GPIO_Init
 644  001f 85            	popw	x
 645                     ; 222   GPIO_Init(SD_SPI_MOSI_GPIO_PORT, SD_SPI_MOSI_PIN, GPIO_MODE_IN_FL_NO_IT);
 647  0020 4b00          	push	#0
 648  0022 4b40          	push	#64
 649  0024 ae500a        	ldw	x,#20490
 650  0027 cd0000        	call	_GPIO_Init
 652  002a 85            	popw	x
 653                     ; 225   GPIO_Init(SD_CS_GPIO_PORT, SD_CS_PIN, GPIO_MODE_IN_FL_NO_IT);
 655  002b 4b00          	push	#0
 656  002d 4b20          	push	#32
 657  002f ae5014        	ldw	x,#20500
 658  0032 cd0000        	call	_GPIO_Init
 660  0035 85            	popw	x
 661                     ; 228   GPIO_Init(SD_DETECT_GPIO_PORT, SD_DETECT_PIN, GPIO_MODE_IN_FL_NO_IT);
 663  0036 4b00          	push	#0
 664  0038 4b10          	push	#16
 665  003a ae5014        	ldw	x,#20500
 666  003d cd0000        	call	_GPIO_Init
 668  0040 85            	popw	x
 669                     ; 229 }
 672  0041 81            	ret	
 700                     ; 236 void SD_LowLevel_Init(void)
 700                     ; 237 {
 701                     .text:	section	.text,new
 702  0000               _SD_LowLevel_Init:
 706                     ; 239   CLK_PeripheralClockConfig(SD_SPI_CLK, ENABLE);
 708  0000 ae0101        	ldw	x,#257
 709  0003 cd0000        	call	_CLK_PeripheralClockConfig
 711                     ; 242   GPIO_ExternalPullUpConfig(SD_SPI_SCK_GPIO_PORT, (GPIO_Pin_TypeDef)(SD_SPI_MISO_PIN | SD_SPI_MOSI_PIN | \
 711                     ; 243                             SD_SPI_SCK_PIN), ENABLE);
 713  0006 4b01          	push	#1
 714  0008 4be0          	push	#224
 715  000a ae500a        	ldw	x,#20490
 716  000d cd0000        	call	_GPIO_ExternalPullUpConfig
 718  0010 85            	popw	x
 719                     ; 246   SPI_Init( SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_2, SPI_MODE_MASTER,
 719                     ; 247            SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE, SPI_DATADIRECTION_2LINES_FULLDUPLEX,
 719                     ; 248            SPI_NSS_SOFT, 0x07);
 721  0011 4b07          	push	#7
 722  0013 4b02          	push	#2
 723  0015 4b00          	push	#0
 724  0017 4b01          	push	#1
 725  0019 4b02          	push	#2
 726  001b 4b04          	push	#4
 727  001d 5f            	clrw	x
 728  001e cd0000        	call	_SPI_Init
 730  0021 5b06          	addw	sp,#6
 731                     ; 252   SPI_Cmd( ENABLE);
 733  0023 a601          	ld	a,#1
 734  0025 cd0000        	call	_SPI_Cmd
 736                     ; 255   GPIO_Init(SD_CS_GPIO_PORT, SD_CS_PIN, GPIO_MODE_OUT_PP_HIGH_SLOW);
 738  0028 4bd0          	push	#208
 739  002a 4b20          	push	#32
 740  002c ae5014        	ldw	x,#20500
 741  002f cd0000        	call	_GPIO_Init
 743  0032 85            	popw	x
 744                     ; 256 }
 747  0033 81            	ret	
 775                     ; 263 void sEE_LowLevel_DeInit(void)
 775                     ; 264 {
 776                     .text:	section	.text,new
 777  0000               _sEE_LowLevel_DeInit:
 781                     ; 266   I2C_Cmd(DISABLE);
 783  0000 4f            	clr	a
 784  0001 cd0000        	call	_I2C_Cmd
 786                     ; 269   I2C_DeInit();
 788  0004 cd0000        	call	_I2C_DeInit
 790                     ; 272   CLK_PeripheralClockConfig(sEE_I2C_CLK, DISABLE);
 792  0007 5f            	clrw	x
 793  0008 cd0000        	call	_CLK_PeripheralClockConfig
 795                     ; 276   GPIO_Init(sEE_I2C_SCL_GPIO_PORT, sEE_I2C_SCL_PIN, GPIO_MODE_IN_PU_NO_IT);
 797  000b 4b40          	push	#64
 798  000d 4b02          	push	#2
 799  000f ae5014        	ldw	x,#20500
 800  0012 cd0000        	call	_GPIO_Init
 802  0015 85            	popw	x
 803                     ; 279   GPIO_Init(sEE_I2C_SDA_GPIO_PORT, sEE_I2C_SDA_PIN, GPIO_MODE_IN_PU_NO_IT);
 805  0016 4b40          	push	#64
 806  0018 4b04          	push	#4
 807  001a ae5014        	ldw	x,#20500
 808  001d cd0000        	call	_GPIO_Init
 810  0020 85            	popw	x
 811                     ; 280 }
 814  0021 81            	ret	
 838                     ; 287 void sEE_LowLevel_Init(void)
 838                     ; 288 {
 839                     .text:	section	.text,new
 840  0000               _sEE_LowLevel_Init:
 844                     ; 290   CLK_PeripheralClockConfig(sEE_I2C_CLK, ENABLE);
 846  0000 ae0001        	ldw	x,#1
 848                     ; 292 }
 851  0003 cc0000        	jp	_CLK_PeripheralClockConfig
 974                     	xdef	_BUTTON_EXTI
 975                     	xdef	_BUTTON_PIN
 976                     	xdef	_BUTTON_PORT
 977                     	xdef	_LED_PIN
 978                     	xdef	_LED_PORT
 979                     	xdef	_sEE_LowLevel_Init
 980                     	xdef	_sEE_LowLevel_DeInit
 981                     	xdef	_SD_LowLevel_Init
 982                     	xdef	_SD_LowLevel_DeInit
 983                     	xdef	_STM_EVAL_PBGetState
 984                     	xdef	_STM_EVAL_PBInit
 985                     	xdef	_STM_EVAL_LEDToggle
 986                     	xdef	_STM_EVAL_LEDOff
 987                     	xdef	_STM_EVAL_LEDOn
 988                     	xdef	_STM_EVAL_LEDInit
 989                     	xref	_SPI_Cmd
 990                     	xref	_SPI_Init
 991                     	xref	_I2C_Cmd
 992                     	xref	_I2C_DeInit
 993                     	xref	_GPIO_ExternalPullUpConfig
 994                     	xref	_GPIO_ReadInputPin
 995                     	xref	_GPIO_Init
 996                     	xref	_EXTI_SetExtIntSensitivity
 997                     	xref	_CLK_PeripheralClockConfig
1016                     	end
