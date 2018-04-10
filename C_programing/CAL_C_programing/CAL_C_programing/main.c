/*
 * CAL_C_programing.c
 *
 * Created: 10-Apr-18 8:33:34 AM
 * Author : patih
 */ 

//defining the cpu oterhwise there will be no delay for half a second, L means long
#define F_CPU 10000000L
#include <avr/io.h>
//this is the import for delays
#include <util/delay.h>
//this is parameter 
#define ALL_ON 0xff
//we can use statements as true and fals
#include <stdbool.h>

void led_on();
void led_off();

int main(void)
{
	DDRA = ALL_ON;
	PORTA = 0xfe;
	
	//loop for blinking 
	while(1) //we can put there true or 1 
	{
		//calling functions 
		led_on();
		led_off();
	}
	
	void led_on()
	{
		PORTA = 0xfe;
		_delay_ms(500);
		return;
	}
	
	void led_off()
	{
		PORTA = 0xff;
		_delay_ms(500);
		return;
	}
}

