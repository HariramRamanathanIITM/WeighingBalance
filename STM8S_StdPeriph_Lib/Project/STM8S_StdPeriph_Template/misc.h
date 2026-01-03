#include "stm8s.h"
#include "stm8s_flash.h"
#include "vii_seg.h"

void write4B(uint32_t add, long val);
long read4B(uint32_t add);
void delay_100us(int ms);
void flash_over(void);
void flash_under(void);
