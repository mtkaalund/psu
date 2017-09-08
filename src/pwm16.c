#include "pwm16.h"

void pwm16_init() 
{
/*
Notes:
	Power Reduction TC1 bit in Power reduction Register needs to be cleared (set to 0) for TC1 module to work.
	TCNT1
*/
	/* PB1 ~ pin 9 on arduino uno */
	DDRB = _BV(PB1) | _BV(PB2);

	ICR1 = 0xFFFF;
	TCNT1 = 0;	
	/* TC1 Control Register A */
	TCCR1A |= _BV(COM1A1) | _BV(COM1A0) | _BV(COM1B1) | _BV(COM1B0);
	TCCR1A |= _BV(WGM11);
	/* TC1 Control Register B */
	TCCR1B |= _BV(WGM13) | _BV(WGM12); 

	OCR1A = 0x0000;
	OCR1B = 0x0000;

	TCCR1B |= _BV(CS11) | _BV(CS10);
}

void pwm16a_set( uint16_t value )
{
	OCR1A = 0xFFFE - value;
}

void pwm16b_set( uint16_t value )
{
	OCR1B = 0xFFFE - value;
}
