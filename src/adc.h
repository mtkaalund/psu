#ifndef _ADC_H_
#define _ADC_H_

#include <avr/io.h>

void adc_init( void );
uint16_t adc_read( uint8_t ch );

#endif
