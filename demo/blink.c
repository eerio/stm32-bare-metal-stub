#include<stm32l0xx.h>

#define USERLED_PORT (GPIOB)
#define USERLED_PIN (3U)

void usreled_toggle(void);
void delay(uint32_t n);

void main()
{
	uint32_t t=100000;

	while (1)
	{
		userled_toggle();
		delay(t);
	}
}

void userled_toggle(void)
{
	USERLED_PORT->ODR ^= (1 << USERLED_PIN);
}

void delay(uint32_t n)
{
	while (--n);
}
	
