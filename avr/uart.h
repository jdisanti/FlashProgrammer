#ifndef UART_H_
#define UART_H_

#include <stdint.h>

#define UART_BAUD_RATE		500000UL

namespace uart {
	void init();
	bool can_immediately_transmit();
	void send_byte(uint8_t value);
	bool byte_available();
	bool receive_byte(uint8_t *result);
}

#endif /* UART_H_ */