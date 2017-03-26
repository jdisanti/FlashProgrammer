#ifndef UART_H_
#define UART_H_

#include <stdint.h>

#define UART_BAUD_RATE		250000UL

namespace uart {
	void init();
	bool can_immediately_transmit();
	void send_byte(uint8_t value);
	bool byte_available();
	uint8_t receive_byte();
}

#endif /* UART_H_ */