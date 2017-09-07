#include "interrupt-uart.h"

ISR(USART_RX_vect)
{
	uart_rec_str[uart_rec_index] = UDR0;
	if( ( uart_rec_str[uart_rec_index] == '\r' ) || ( uart_rec_index >= (UART_MAX - 1 ) ) )
	{
		uart_rec_str[uart_rec_index] = '\0';
		uart_rec_index = 0; 
		uart_ready = 1;
	} else {
		uart_rec_index += 1;
		uart_ready = 0;
	}
	
}

void uart_init( void )
{
	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;

#if USE_2X
	UCSR0A |= _BV(U2X0);
#else
	UCSR0A &= ~( _BV(U2X0) );
#endif
	
	UCSR0C = _BV(UCSZ01) | _BV(UCSZ00); /* 8-bit data */
	UCSR0B = _BV(RXEN0) | _BV(TXEN0);   /* Enable RX and TX */
	UCSR0B |= _BV(RXCIE0); /* enable rx interrupt */
}

void uart_putc( unsigned char c, FILE *stream )
{
	if( c == '\n' )
	{
		 uart_putc('\r', stream); 
	}
	loop_until_bit_is_set( UCSR0A, UDRE0 );
	UDR0 = c;
}

unsigned char uart_getc( FILE *stream )
{
	loop_until_bit_is_set( UCSR0A, RXC0 ); /* Wait until data exists */
	return UDR0;
}
