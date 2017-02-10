#include <avr/io.h>

#include "uart.h"

#define UART_BAUD_PRESCALE	((F_CPU / (UART_BAUD_RATE * 16UL)) - 1)

namespace uart {

	void init() {
		// Set baud rate
		UBRR0H = UART_BAUD_PRESCALE >> 8;
		UBRR0L = UART_BAUD_PRESCALE;

		// Enable transmit and receive
		UCSR0B |= (1 << TXEN0) | (1 << RXEN0);
	}

	bool can_immediately_transmit() {
		return UCSR0A & (1 << UDRE0);
	}
	
	void send_byte(uint8_t value) {
		// Wait for previous byte to finish transmitting
		while (!can_immediately_transmit())
			;
		UDR0 = value;
	}

	bool byte_available() {
		return UCSR0A & (1 << RXC0);
	}

	uint8_t receive_byte() {
		while (!byte_available())
			;
		return UDR0;
	}

}