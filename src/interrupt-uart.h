#ifndef _INTERRUPT_UART_H_
#define _INTERRUPT_UART_H_

#include <avr/io.h>
#include <avr/interrupt.h>

#include <stdio.h>

#ifndef BAUD
#define BAUD 9600
#endif

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include <util/setbaud.h>

#include "macros.h"

void uart_init( void );
void uart_putc( unsigned char c, FILE *stream );
unsigned char uart_getc( FILE *stream );


#define UART_MAX 12

volatile uint8_t uart_ready;
volatile char uart_rec_str[UART_MAX];
volatile uint8_t uart_rec_index;

#endif
