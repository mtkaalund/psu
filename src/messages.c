#include "messages.h"

/* Construct of help message in program memory, save on ram */
const char help_string_1[] PROGMEM = "Accepted commands is  ";
const char help_string_2[] PROGMEM = "set v xxxxx           ";
const char help_string_3[] PROGMEM = "   where xxxx is in mV";
const char help_string_4[] PROGMEM = "set a xxxxx           ";
const char help_string_5[] PROGMEM = "   where xxxx is in mA";

const char * const help_msg[] PROGMEM = {
	help_string_1,
	help_string_2,
	help_string_3,
	help_string_4,
	help_string_5
	};

const uint8_t help_size = 5;
const uint8_t help_len  = 22;

/* Construct of welcome message in program memory */
const char welcome_msg_1[] PROGMEM = "Digital Controlled Power Supply";
const char welcome_msg_2[] PROGMEM = "Version 0.1                    ";
const char welcome_msg_3[] PROGMEM = "Created by M.T. Kaalund        ";

const char * const welcome_msg[] PROGMEM = { 
	welcome_msg_1, 
	welcome_msg_2, 
	welcome_msg_3 
	};

const uint8_t welcome_size = 3;
const uint8_t welcome_len  = 32;

/* Implementation for print function */

void print_welcome( void )
{
	char buffer[welcome_len];
	for(uint8_t i = 0; i < welcome_size; i++)
	{
		strcpy_P( buffer, (PGM_P)pgm_read_word( &( welcome_msg[i] ) ) );
		printf( "%s\n", buffer );
	}
}

void print_help( void )
{
	char buffer[help_len];
	for(unsigned char i = 0; i < help_size; i++)
	{
		strcpy_P( buffer, (PGM_P)pgm_read_word( &( help_msg[i] ) ) );
		printf( "%s\n", buffer );
	}
}
