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

int main(void)
{
	DDRA = ALL_ON;
	PORTA = 0xfe;
	
	//loop for blinking 
	while(1)
	{
		PORTA = 0xfe;
		//delay
		_delay_ms(500);
		PORTA = 0xff;
		//delay	
		_delay_ms(500);
	}
}

