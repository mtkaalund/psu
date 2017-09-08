#ifndef _PWM_18_H_
#define _PWM_18_H_

#include <avr/io.h>
#include <avr/interrupt.h>

#include <util/atomic.h>

#include <stdint.h>

void pwm16_init(void);
void pwm16a_set( uint16_t value );
void pwm16b_set( uint16_t value );

#endif
