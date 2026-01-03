#include "misc.h"

/* Function to write a long int to flash memory */
void write4B(uint32_t add, long val)
{
    // FLASH_Unlock(FLASH_MEMTYPE_DATA);
    // while(FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET);
    
    FLASH_Unlock(FLASH_MEMTYPE_PROG);
    while(FLASH_GetFlagStatus(FLASH_FLAG_PUL) == RESET);

    FLASH_ProgramByte(add, (val & 0xFF));
    while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET);
    FLASH_ProgramByte(add+1, ((val >> 8) & 0xFF));
    while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET);
    FLASH_ProgramByte(add+2, ((val >> 16) & 0xFF));
    while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET);
    FLASH_ProgramByte(add+3, ((val >> 24) & 0xFF));
    while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET);

    FLASH_Lock(FLASH_MEMTYPE_PROG);
}

/* Function to read a long int from flash memory */
long read4B(uint32_t add)
{
    long val = 0;
    char a, b, c, d;
    a = FLASH_ReadByte(add);
    b = FLASH_ReadByte(add++);
    c = FLASH_ReadByte(add++);
    d = FLASH_ReadByte(add++);
    // val |= FLASH_ReadByte(add);
    // val |= (FLASH_ReadByte(add+1) << 8);
    // val |= (FLASH_ReadByte(add+2) << 16);
    // val |= (FLASH_ReadByte(add+3) << 24);
    val = (d << 24) | (c << 16) | (b << 8) | a;
    return val;
}

void delay_100us(int ms)
{
    int i, j;
    for(i = 0; i < ms; i++) for(j = 0; j < 34; j++);
}

void flash_over(void)
{
    int i, j;
    for (i = 0; i < 4; i++){
        for (j = 0; j < 8; j++)
        {
            display_digit('^', 3, 0);
            delay_100us(62);
            display_digit('^', 2, 1);
            delay_100us(62);
            display_digit('^', 1, 0);
            delay_100us(62);
            display_digit('^', 0, 0);
            delay_100us(62);
        }
        display_clear();
        delay_100us(2500);
    }
}

void flash_under(void)
{
    int i, j;
    for (i = 0; i < 4; i++){
        for (j = 0; j < 8; j++)
        {
            display_digit('u', 3, 0);
            delay_100us(6);
            display_digit('u', 2, 1);
            delay_100us(6);
            display_digit('u', 1, 0);
            delay_100us(6);
            display_digit('u', 0, 0);
            delay_100us(6);
        }
        display_clear();
        delay_100us(250);
    }
}