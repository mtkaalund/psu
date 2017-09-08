#include "adc.h"

void adc_init( void )
{
	ADMUX |= _BV(REFS0); /* Setting voltage reference to AVcc */
}

uint16_t adc_read( uint8_t ch )
{
	ch &= 0x07; /* to get our channel */
	ADMUX &= 0xF8; /* clear previus channel */
	ADMUX |= ch; /* setting the channel */
	ADCSRA |= _BV(ADSC); /* start conversion */
	loop_until_bit_is_set(ADCSRA, ADSC);
	return ADC;	
}

uint16_t adc_temp( )
{
	/* select 1.1V internal vref */
	ADMUX |= _BV(REFS0) | _BV(REFS1);
	/* clear previous channel select */
	ADMUX &= 0xF8;
	/* select channel 8 to read temperature */
	ADMUX |= 0x08;
	/* starting conversion */
	ADCSRA |= _BV(ADSC);
	/* waiting for conversation to finish */
	loop_until_bit_is_set(ADCSRA, ADSC);
	/* change Vref back */
	ADMUX &= ~(_BV(REFS1));

	return ADC;
}
