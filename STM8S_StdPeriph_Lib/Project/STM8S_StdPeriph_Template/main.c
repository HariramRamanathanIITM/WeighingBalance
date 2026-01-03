/**
  ******************************************************************************
  * @file    Project/main.c 
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   Main program body
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 


/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "stm8s_gpio.h"
#include "vii_seg.h"
#include "misc.h"

/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

#include <stdio.h>

#define ADC_DAT_PORT    GPIOC
#define ADC_DAT_PIN     GPIO_PIN_6

#define CLK_OUT			    GPIOC, GPIO_PIN_7

#define TARE_PORT       GPIOA
#define TARE_PIN        GPIO_PIN_3

#define CAL_UP_PORT     GPIOC
#define CAL_UP_PIN      GPIO_PIN_2

#define CAL_DOWN_PORT   GPIOA
#define CAL_DOWN_PIN    GPIO_PIN_4

#define UNIT_PORT       GPIOC
#define UNIT_PIN        GPIO_PIN_1

#define DUMMY           GPIOD, GPIO_PIN_7

/*
// Blinker Testing 
void main(void)
{
	display_init();
	while (1)
	{
		display_content("-123", 2);
	}
}
*/

/*
// Button Input Test
void main()
{
  GPIO_Init(TARE_PORT, TARE_PIN, GPIO_MODE_IN_PU_NO_IT);
  display_init();
  while(1)
  {
    if(!(TARE_PORT -> IDR & TARE_PIN)) display_digit('1', 1, 1);
    else display_digit('0', 1, 1);
  }
}
*/

/*
// Memory testing
void main()
{
	int i, j;
  int stable = 0, tare_triggered = 0, status = 0;
	char a, b, c, d;
  display_init();

  while(1)
  {
		// a = FLASH_ReadByte(0x4000);
    // b = FLASH_ReadByte(0x4001);
    // c = FLASH_ReadByte(0x4002);
    // d = FLASH_ReadByte(0x4003);
    // display_digit(a, 0, 1);
    // display_digit(b, 1, 1);
    // display_digit(c, 2, 1);
    // display_digit(d, 3, 1);
    // a, b, c, d = (read4B(0x4000));
    // display_digit(a, 0, 0);
    // display_digit(b, 1, 0);
    // display_digit(c, 2, 0);
    // display_digit(d, 3, 0);
		if (!(TARE_PORT -> IDR & TARE_PIN))
    {
			if (stable < 20) stable ++;
			if ((stable == 20) && (!tare_triggered))
      {
        display_clear();
        if(status == 0) 
        {
          FLASH_Unlock(FLASH_MEMTYPE_DATA);
          write4B(0x4000, (('u9u9')));
					FLASH_Lock(FLASH_MEMTYPE_DATA);
          status = 1;
        }
        else
        {
          FLASH_Unlock(FLASH_MEMTYPE_DATA);
          write4B(0x4000, (('9u9u')));
          FLASH_Lock(FLASH_MEMTYPE_DATA);
          status = 0;
        }
        stable = 0;
        tare_triggered = 1;
			}
		} else
    {
			tare_triggered = 0;
			stable = 0;
		}
  } 
}
*/

/*
void main()
{
  long tare;

  FLASH_Unlock(FLASH_MEMTYPE_DATA);
  while(FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET);
  write4B(0x4070, 1234567890);
  FLASH_Lock(FLASH_MEMTYPE_DATA);
  display_init();
  
  tare = read4B(0x4000);

  while(1)
  {
    Display_stuff(tare);
  }
}
*/

// void TIM4_Init_Multiplexer(void);

// volatile int disp_pos = 0, disp_dp = 0;
// volatile char disp_char = '0';

void main()
{
	int active = 0;
	long res = 0;
	int i;
	long tare;
  long calib = 13500;
	long wt;

  char w1, w0, f1, f2;
  int led = 0;
  int counter = 0;

	int tare_triggered = 0;
	int stable_tare = 0;

  int calib_mode = 0;
  int calib_triggered = 0;
  int stable_calib = 0;
  long calib_temp = calib;
	
  int calib_up_trig = 0;
  int calib_down_trig = 0;
  int stable_calib_up = 0;
  int stable_calib_down = 0;
  
  int unit_trig = 0;
  int stable_unit = 0;

  GPIO_Init(ADC_DAT_PORT, ADC_DAT_PIN, GPIO_MODE_IN_FL_NO_IT);
  GPIO_Init(CLK_OUT, GPIO_MODE_OUT_PP_HIGH_FAST);
  GPIO_WriteLow(CLK_OUT);

	GPIO_Init(TARE_PORT, TARE_PIN, GPIO_MODE_IN_PU_NO_IT);
  GPIO_Init(CAL_UP_PORT, CAL_UP_PIN, GPIO_MODE_IN_PU_NO_IT);
  GPIO_Init(CAL_DOWN_PORT, CAL_DOWN_PIN, GPIO_MODE_IN_PU_NO_IT);
  GPIO_Init(UNIT_PORT, UNIT_PIN, GPIO_MODE_IN_PU_NO_IT);

  GPIO_Init(DUMMY, GPIO_MODE_OUT_PP_HIGH_FAST);
  GPIO_WriteLow(DUMMY);

	display_init();
  // TIM4_Init_Multiplexer();
  // enableInterrupts();
  
  tare = read4B(0xFFF0);
  calib = read4B(0xFFF4);

  if ((calib > 10000) && (calib < 15000))
  {
    calib_temp = calib;
  } else
  {
    calib = calib_temp;
  }

	while(1)
  {
    // Looking for initial dip in Data Pin
		if(!(ADC_DAT_PORT -> IDR & ADC_DAT_PIN))
    {
			active = 1;
		}
    else delay_100us(20); // delay to simulate the data-fetching for smooth display Multiplexing
		
    // Data-fetching and handling
		if(active == 1)
    {
			GPIO_WriteHigh(DUMMY);

      res = 0;

			for(i = 0; i < 24; i++)
      {
        GPIO_WriteHigh(CLK_OUT);
        GPIO_WriteLow(CLK_OUT);
				
				res = (res << 1) | ((ADC_DAT_PORT -> IDR & ADC_DAT_PIN));
			}
			active = 0;
			
			// pulse 1 for channel A with gain 128
			GPIO_WriteHigh(CLK_OUT);
      GPIO_WriteLow(CLK_OUT);
			// pulse 2 for channel B with gain 32
      GPIO_WriteHigh(CLK_OUT);
      GPIO_WriteLow(CLK_OUT);
			// pulse 3 for channel A with gain 64
      GPIO_WriteHigh(CLK_OUT);
      GPIO_WriteLow(CLK_OUT);


      // Data Handling
			wt = res - tare; // tare
			
			wt /= calib; // scale calibration
			
      // Section to handle negative numbers, Overweight and Underweight
			if(wt >= 0)
      {
        if (wt > 10000) w1 = w0 = f1 = f2 = '^';
        else
        {
		  		w1 = '0' + (wt / 1000) % 10;
			  	w0 = '0' + (wt / 100) % 10;
				  f1 = '0' + (wt / 10) % 10;
  				f2 = '0' + (wt % 10);
        }
			}
			else
			{
        if (wt * -1 > 1000) w1 = w0 = f1 = f2 = 'u';
        else
        {
  				w1 = '-';
			  	w0 = '0' + (wt * -1 / 100)% 10;
				  f1 = '0' + (wt * -1 / 10) % 10;
  				f2 = '0' + (wt * -1 % 10);
        }
			}
      GPIO_WriteLow(DUMMY);
		}
    
    // Enter Calibration mode
    if (!(CAL_UP_PORT -> IDR & CAL_UP_PIN) & !(CAL_DOWN_PORT -> IDR & CAL_DOWN_PIN))
    {
			if (stable_calib < 20) stable_calib ++;
			if ((stable_calib == 20) && (!tare_triggered))
      {
				calib_mode = 1;
				stable_calib = 0;
				calib_triggered = 1;
			}
		} else
    {
			calib_triggered = 0;
			stable_calib = 0;
		}
    if(calib_mode == 1)
    {
      led = 2;

      // Exit Calib Mode
      if (!(UNIT_PORT -> IDR & UNIT_PIN))
      {
			  if (stable_unit < 20) stable_unit ++;
	  		if ((stable_unit == 20) && (!unit_trig))
        {
          calib = calib_temp;
          write4B(0xFFF4, calib);
			  	calib_mode = 0;
				  stable_unit = 0;
          led = 0;
  				unit_trig = 1;
	  		}
		  } else
      {
	  		unit_trig = 0;
		  	stable_unit = 0;
		  }
      if (!(TARE_PORT -> IDR & TARE_PIN))
      {
			  if (stable_tare < 20) stable_tare ++;
  			if ((stable_tare == 20) && (!tare_triggered))
        {
          calib_temp = calib;
			  	stable_tare = 0;
				  tare_triggered = 1;
  			}
		  } else
      {
	  		tare_triggered = 0;
		  	stable_tare = 0;
  		}
      if (!(CAL_UP_PORT -> IDR & CAL_UP_PIN))
      {
        if (stable_calib_up < 20) stable_calib_up ++;
        if ((stable_calib_up == 20) && (!calib_up_trig))
        {
          if (calib < 15000) calib_temp += 100;
          else flash_over();
          stable_calib_up = 0;
          calib_up_trig = 1;
        }
      } else
      {
        calib_up_trig = 0;
        stable_calib_up = 0;
      }
      if (!(CAL_DOWN_PORT -> IDR & CAL_DOWN_PIN))
      {
        if (stable_calib_down < 20) stable_calib_down ++;
        if ((stable_calib_down == 20) && (!calib_down_trig))
        {
          if (calib > 10000) calib_temp -= 100;
          else flash_under();
          stable_calib_down = 0;
          calib_down_trig = 1;
        }
      } else
      {
        calib_down_trig = 0;
        stable_calib_down = 0;
      }
      wt = res - tare;
      wt = wt / calib_temp;
      w1 = '0' + (wt / 1000) % 10;
      w0 = '0' + (wt / 100) % 10;
      f1 = '0' + (wt / 10) % 10;
      f2 = '0' + (wt % 10);
    } else
    {
  		// Tare button
	  	if (!(TARE_PORT -> IDR & TARE_PIN))
      {
			  if (stable_tare < 20) stable_tare ++;
  			if ((stable_tare == 20) && (!tare_triggered))
        {
		  		tare = res;
          write4B(0xFFF0, tare);
          // tare = read4B(0x4000);
			  	stable_tare = 0;
				  tare_triggered = 1;
  			}
	  	} else
      {
			  tare_triggered = 0;
			  stable_tare = 0;
  		}
    }

    // Display Weight
    switch(counter)
    {
      case 0:
        display_digit(w1, 3, 0);
        counter++;
        break;
      case 1:
        display_digit(w0, 2, 1);
        counter++;
        break;
      case 2:
        display_digit(f1, 1, 0);
        counter++;
        break;
      case 3:
        display_digit(f2, 0, 0);
        counter++;
        break;
      case 4:
        LED_Control(led);
        counter = 0;
        break;
    }
	}
}
/*
void TIM4_Init_Multiplexer(void)
{
  TIM4_DeInit();
  TIM4_TimeBaseInit(TIM4_PRESCALER_16, 3000);
  // TIM4_ClearFlag(TIM4_FLAG_UPDATE);
  TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE);
  TIM4_Cmd(ENABLE);
}

INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
{
  TIM4_ClearITPendingBit(TIM4_IT_UPDATE);

  display_digit(disp_char, disp_pos, disp_dp);
}
*/
#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
