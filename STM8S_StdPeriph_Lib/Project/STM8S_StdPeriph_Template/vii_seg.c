#include "vii_seg.h"

void display_init(void)
{
    GPIO_Init(SEG_A, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(SEG_B, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(SEG_C, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(SEG_D, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(SEG_E, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(SEG_F, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(SEG_G, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(SEG_DP, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(PLACE_0, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(PLACE_1, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(PLACE_2, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(PLACE_3, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(LED_COM, GPIO_MODE_OUT_PP_LOW_FAST);
    display_clear();
}

void display_clear(void)
{
    GPIO_WriteHigh(SEG_A);
    GPIO_WriteHigh(SEG_B);
    GPIO_WriteHigh(SEG_C);
    GPIO_WriteHigh(SEG_D);
    GPIO_WriteHigh(SEG_E);
    GPIO_WriteHigh(SEG_F);
    GPIO_WriteHigh(SEG_G);
    GPIO_WriteHigh(SEG_DP);
    GPIO_WriteHigh(PLACE_0);
    GPIO_WriteHigh(PLACE_1);
    GPIO_WriteHigh(PLACE_2);
    GPIO_WriteHigh(PLACE_3);
    GPIO_WriteHigh(LED_COM);
}

void display_digit(char digit, int place, int dp)
{
    display_clear();
    switch (digit)
    {
        case '0':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
        case '1':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
        case '2':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteHigh(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case '3':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case '4':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case '5':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case '6':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case '7':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
        case '8':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case '9':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case ' ':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteHigh(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
        case '-':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteHigh(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case 'u':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
        case '^':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteHigh(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
        case 'a':
        case 'A':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case 'b':
        case 'B':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case 'c':
        case 'C':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteHigh(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
        case 'd':
        case 'D':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case 'e':
        case 'E':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteHigh(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case 'f':
        case 'F':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteHigh(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case 'g':
        case 'G':
            GPIO_WriteLow(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteLow(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
        case 'h':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        case 'H':
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteLow(SEG_B);
            GPIO_WriteLow(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteLow(SEG_E);
            GPIO_WriteLow(SEG_F);
            GPIO_WriteLow(SEG_G);
            break;
        default:
            GPIO_WriteHigh(SEG_A);
            GPIO_WriteHigh(SEG_B);
            GPIO_WriteHigh(SEG_C);
            GPIO_WriteHigh(SEG_D);
            GPIO_WriteHigh(SEG_E);
            GPIO_WriteHigh(SEG_F);
            GPIO_WriteHigh(SEG_G);
            break;
    }
    
    if (dp == 1) GPIO_WriteLow(SEG_DP);
    else GPIO_WriteHigh(SEG_DP);
    
    switch (place)
    {
        case 0:
            GPIO_WriteLow(PLACE_0);
            GPIO_WriteHigh(PLACE_1);
            GPIO_WriteHigh(PLACE_2);
            GPIO_WriteHigh(PLACE_3);
            break;
        case 1:
            GPIO_WriteHigh(PLACE_0);
            GPIO_WriteLow(PLACE_1);
            GPIO_WriteHigh(PLACE_2);
            GPIO_WriteHigh(PLACE_3);
            break;
        case 2:
            GPIO_WriteHigh(PLACE_0);
            GPIO_WriteHigh(PLACE_1);
            GPIO_WriteLow(PLACE_2);
            GPIO_WriteHigh(PLACE_3);
            break;
        case 3:
            GPIO_WriteHigh(PLACE_0);
            GPIO_WriteHigh(PLACE_1);
            GPIO_WriteHigh(PLACE_2);
            GPIO_WriteLow(PLACE_3);
            break;
        default:
            GPIO_WriteHigh(PLACE_0);
            GPIO_WriteHigh(PLACE_1);
            GPIO_WriteHigh(PLACE_2);
            GPIO_WriteHigh(PLACE_3);
            GPIO_WriteHigh(LED_COM);
            break;
    }
}

void LED_Control(int name)
{
    display_clear();
    GPIO_WriteLow(LED_COM);
    switch (name)
    {
        case 0:
            break;
        case 1:
            GPIO_WriteLow(SEG_A);
            break;
        case 2:
            GPIO_WriteLow(SEG_B);
            break;
        case 3:
            GPIO_WriteLow(SEG_C);
            break;
        case 4:
            GPIO_WriteLow(SEG_D);
            break;
        default:
            break;
    }
}

void display_content(char *content, int dp_pos)
{
    int i;
    for(i = 0; i < 4; i++)
    {
        if (i == dp_pos) display_digit((char)content[3-i], i, 1);
        else display_digit((char)content[3-i], i, 0);
    }
}

/* Function to display a 4 digit number */
void Display_stuff(long value)
{
	char w1, w0, f1, f2;
	w1 = '0' + (value / 1000) % 10;
	w0 = '0' + (value / 100) % 10;
	
	f1 = '0' + (value / 10) % 10;
	f2 = '0' + value % 10;

  display_digit(w1, 3, 0);
  display_digit(w0, 2, 1);
  display_digit(f1, 1, 0);
  display_digit(f2, 0, 0);
}