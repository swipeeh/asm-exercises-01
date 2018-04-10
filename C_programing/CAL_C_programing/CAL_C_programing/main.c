/*
 * CAL_C_programing.c
 *
 * Created: 10-Apr-18 8:33:34 AM
 * Author : patih
 */ 

//defining the cpu otherwise there will be no delay for half a second, L means long
#define F_CPU 10000000L
#include <avr/io.h>
//this is the import for delays
#include <util/delay.h>
//this is parameter 
#define ALL_ON 0xff
//we can use statements as true and false
#include <stdbool.h>

void led_on(int led_no);
void led_off(int led_no);

int main(void)
{
	DDRA = ALL_ON;
	PORTA = 0xfe;
	
	//loop for blinking 
	while(1) //we can put there true or 1 
	{
		//showing if else statements
		if(1 == 3)
		{
			//do something
		}
		else()
		{
			
		}
		//calling functions 
		led_on(3);
		led_off(3);
	}
}
	void led_on(int led_no)
	{
		PORTA &= ~(1<<led_no); // & ~ this means and inverse
		_delay_ms(500);
		return;
	}
	
	void led_off(int led_no)
	{
		PORTA = ~(1<<led_no);
		_delay_ms(500);
		return;
	}

