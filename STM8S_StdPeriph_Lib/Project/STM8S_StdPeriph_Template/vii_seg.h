#include "stm8s_gpio.h"

#define SEG_A		GPIOE, GPIO_PIN_0
#define SEG_B		GPIOD, GPIO_PIN_0
#define SEG_C		GPIOD, GPIO_PIN_2
#define SEG_D		GPIOD, GPIO_PIN_3
#define SEG_E		GPIOA, GPIO_PIN_6
#define SEG_F		GPIOA, GPIO_PIN_5
#define SEG_G		GPIOC, GPIO_PIN_3
#define SEG_DP		GPIOC, GPIO_PIN_4

#define PLACE_0		GPIOG, GPIO_PIN_0
#define PLACE_1		GPIOG, GPIO_PIN_1
#define PLACE_2		GPIOE, GPIO_PIN_3
#define PLACE_3		GPIOE, GPIO_PIN_2

#define LED_COM	GPIOE, GPIO_PIN_1

void display_init(void);
void display_clear(void);
void display_digit(char digit, int place, int dp);
void LED_Control(int name);
void display_content(char *content, int dp_pos);
void Display_stuff(long grams);