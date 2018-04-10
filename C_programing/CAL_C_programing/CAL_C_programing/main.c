/*
 * CAL_C_programing.c
 *
 * Created: 10-Apr-18 8:33:34 AM
 * Author : patih
 */ 

#include <avr/io.h>
#define ALL_ON 0xff

int main(void)
{
	DDRA = ALL_ON;
	PORTA = 0xfe;
}

