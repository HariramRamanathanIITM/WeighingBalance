   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.13.3 - 22 May 2025
   3                     ; Generator (Limited) V4.6.5 - 22 May 2025
   4                     ; Optimizer V4.6.5 - 22 May 2025
  50                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  50                     ; 54 {
  51                     .text:	section	.text,new
  52  0000               f_NonHandledInterrupt:
  56                     ; 58 }
  59  0000 80            	iret	
  81                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  81                     ; 67 {
  82                     .text:	section	.text,new
  83  0000               f_TRAP_IRQHandler:
  87                     ; 71 }
  90  0000 80            	iret	
 112                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 112                     ; 79 
 112                     ; 80 {
 113                     .text:	section	.text,new
 114  0000               f_TLI_IRQHandler:
 118                     ; 84 }
 121  0000 80            	iret	
 143                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 143                     ; 92 {
 144                     .text:	section	.text,new
 145  0000               f_AWU_IRQHandler:
 149                     ; 96 }
 152  0000 80            	iret	
 174                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 174                     ; 104 {
 175                     .text:	section	.text,new
 176  0000               f_CLK_IRQHandler:
 180                     ; 108 }
 183  0000 80            	iret	
 206                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 206                     ; 116 {
 207                     .text:	section	.text,new
 208  0000               f_EXTI_PORTA_IRQHandler:
 212                     ; 120 }
 215  0000 80            	iret	
 238                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 238                     ; 128 {
 239                     .text:	section	.text,new
 240  0000               f_EXTI_PORTB_IRQHandler:
 244                     ; 132 }
 247  0000 80            	iret	
 270                     ; 139 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 270                     ; 140 {
 271                     .text:	section	.text,new
 272  0000               f_EXTI_PORTC_IRQHandler:
 276                     ; 144 }
 279  0000 80            	iret	
 302                     ; 151 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 302                     ; 152 {
 303                     .text:	section	.text,new
 304  0000               f_EXTI_PORTD_IRQHandler:
 308                     ; 156 }
 311  0000 80            	iret	
 334                     ; 163 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 334                     ; 164 {
 335                     .text:	section	.text,new
 336  0000               f_EXTI_PORTE_IRQHandler:
 340                     ; 168 }
 343  0000 80            	iret	
 365                     ; 215 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 365                     ; 216 {
 366                     .text:	section	.text,new
 367  0000               f_SPI_IRQHandler:
 371                     ; 220 }
 374  0000 80            	iret	
 397                     ; 227 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 397                     ; 228 {
 398                     .text:	section	.text,new
 399  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 403                     ; 232 }
 406  0000 80            	iret	
 429                     ; 239 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 429                     ; 240 {
 430                     .text:	section	.text,new
 431  0000               f_TIM1_CAP_COM_IRQHandler:
 435                     ; 244 }
 438  0000 80            	iret	
 461                     ; 277  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 461                     ; 278  {
 462                     .text:	section	.text,new
 463  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 467                     ; 282  }
 470  0000 80            	iret	
 493                     ; 289  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 493                     ; 290  {
 494                     .text:	section	.text,new
 495  0000               f_TIM2_CAP_COM_IRQHandler:
 499                     ; 294  }
 502  0000 80            	iret	
 525                     ; 304  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 525                     ; 305  {
 526                     .text:	section	.text,new
 527  0000               f_TIM3_UPD_OVF_BRK_IRQHandler:
 531                     ; 309  }
 534  0000 80            	iret	
 557                     ; 316  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 557                     ; 317  {
 558                     .text:	section	.text,new
 559  0000               f_TIM3_CAP_COM_IRQHandler:
 563                     ; 321  }
 566  0000 80            	iret	
 588                     ; 382 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 588                     ; 383 {
 589                     .text:	section	.text,new
 590  0000               f_I2C_IRQHandler:
 594                     ; 387 }
 597  0000 80            	iret	
 620                     ; 395  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 620                     ; 396  {
 621                     .text:	section	.text,new
 622  0000               f_UART2_TX_IRQHandler:
 626                     ; 400  }
 629  0000 80            	iret	
 652                     ; 407  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 652                     ; 408  {
 653                     .text:	section	.text,new
 654  0000               f_UART2_RX_IRQHandler:
 658                     ; 412  }
 661  0000 80            	iret	
 683                     ; 461  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 683                     ; 462  {
 684                     .text:	section	.text,new
 685  0000               f_ADC1_IRQHandler:
 689                     ; 466  }
 692  0000 80            	iret	
 715                     ; 488  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 715                     ; 489  {
 716                     .text:	section	.text,new
 717  0000               f_TIM4_UPD_OVF_IRQHandler:
 721                     ; 493  }
 724  0000 80            	iret	
 747                     ; 502 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 747                     ; 503 {
 748                     .text:	section	.text,new
 749  0000               f_EEPROM_EEC_IRQHandler:
 753                     ; 507 }
 756  0000 80            	iret	
 768                     	xdef	f_EEPROM_EEC_IRQHandler
 769                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 770                     	xdef	f_ADC1_IRQHandler
 771                     	xdef	f_UART2_TX_IRQHandler
 772                     	xdef	f_UART2_RX_IRQHandler
 773                     	xdef	f_I2C_IRQHandler
 774                     	xdef	f_TIM3_CAP_COM_IRQHandler
 775                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 776                     	xdef	f_TIM2_CAP_COM_IRQHandler
 777                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 778                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 779                     	xdef	f_TIM1_CAP_COM_IRQHandler
 780                     	xdef	f_SPI_IRQHandler
 781                     	xdef	f_EXTI_PORTE_IRQHandler
 782                     	xdef	f_EXTI_PORTD_IRQHandler
 783                     	xdef	f_EXTI_PORTC_IRQHandler
 784                     	xdef	f_EXTI_PORTB_IRQHandler
 785                     	xdef	f_EXTI_PORTA_IRQHandler
 786                     	xdef	f_CLK_IRQHandler
 787                     	xdef	f_AWU_IRQHandler
 788                     	xdef	f_TLI_IRQHandler
 789                     	xdef	f_TRAP_IRQHandler
 790                     	xdef	f_NonHandledInterrupt
 809                     	end
