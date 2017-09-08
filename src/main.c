#include <ctype.h>
#include <string.h>

#include <avr/io.h>
#include <avr/pgmspace.h>

#include "pwm16.h"
#include "macros.h"
#include "messages.h"
#include "interrupt-uart.h"

FILE uart_out = FDEV_SETUP_STREAM( uart_putc, NULL, _FDEV_SETUP_WRITE );
FILE uart_in  = FDEV_SETUP_STREAM( NULL, uart_getc, _FDEV_SETUP_READ  );

extern volatile uint8_t uart_ready;
extern volatile char uart_rec_str[UART_MAX];
extern volatile uint8_t uart_rec_index;

uint16_t string_to_uint16( char * str, uint8_t len );
uint16_t str_cpy_to_uint16( char * str );

int main( void )
{
	/* All initialization */
	uart_init();
	pwm16_init();

	stdout = &uart_out;
	stdin  = &uart_in;

	sei();	/* Interrupts enabled */

	/* Welcome screen */
	print_welcome( );

	for(;;) {
		
		if( uart_ready == 1 ) /* If any serial communication is received */
		{
			uint8_t size_array = strlen( uart_rec_str ); /* Getting the size of the array */
			if(size_array > 6)
			{
				/* To be pasing of the commands */
				switch( uart_rec_str[0] )
				{
				case 's': /* set command */
					/* here we check if the command is "set " */
					if(uart_rec_str[1] == 'e' && uart_rec_str[2] == 't' && uart_rec_str[3] == ' ')
					{
						switch(uart_rec_str[4])
						{
						case 'a':
							/* 	setting ampere, after this and the space,
								it assumes a numerical value.
								Or more correctly it will ignore the value
								after this character.
							*/
							;
							uint16_t a_value;
							a_value = str_cpy_to_uint16( (char *) uart_rec_str );

							printf_P(PSTR("Setting amp to %imA\n"), a_value);
							pwm16a_set( a_value );
							/* Still need to set the ampere */
							break;
						case 'v':
							/*	setting voltage, after this and the space,
								it assumes a numerical value.
								Or more correctly it will ignore the value
								after this character.
							*/
							;
							uint16_t v_value;
							v_value = str_cpy_to_uint16( (char *) uart_rec_str );
							printf_P(PSTR("Setting voltage to %imV\n"), v_value);
							pwm16b_set(v_value); /* Setting pwm value */
							break;
						default:
							print_help();
							break;
						}
					}
					break;
				case 'g': /* get command */
					/* here we check if the command is "get " */
					if(uart_rec_str[1] == 'e' && uart_rec_str[2] == 't' && uart_rec_str[3] == ' ')
					{
						switch(uart_rec_str[4])
						{
						case 'a': /* retrieves current amp output, and limit */
							printf_P( PSTR("%imA\n"), 0);
							break;
						case 'v': /* retrieves current voltage output, and limit */
							printf_P( PSTR("%imV\n"), 0);
							break;
						}
					}
					break;
				default: /* default message, if command is not in command structure */
					print_help();
					break;
				}
			}
			uart_ready = 0;
		}
	}
	
	return 0;
}

uint16_t string_to_uint16( char * str, uint8_t len )
{
	uint16_t value = 0;

	for( uint8_t i = 0; i < len; i++ )
	{
		value = value * 10 + ( str[i] - '0' );
	}

	return value;
}

uint16_t str_cpy_to_uint16( char * str )
{
	uint16_t value = 0;
	if( ( strlen( str ) > 6 ) && ( strlen( str ) < UART_MAX ) )
	{
		if( isdigit( str[6] ) )
		{
			char buffer[ UART_MAX - 6 ];
			strncpy(buffer, str+6, 6);
			value = string_to_uint16( buffer, strlen( buffer ) );
		}
	}
	return value;
}	
