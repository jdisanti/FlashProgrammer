#include <avr/io.h>
#include <util/delay.h>

#include "pin_config.h"
#include "states.h"
#include "uart.h"

#define ACK					0x00
#define ACK_ERR_BAD_REQUEST 0xF1

#define ROM_SIZE			131072

static bool read_address_from_uart(uint32_t *result) {
	uint8_t upper, hi, lo;
	if (!uart::receive_byte(&upper) || !uart::receive_byte(&hi) || !uart::receive_byte(&lo)) {
		return false;
	}
	*result = (((uint32_t) upper) << 16) | (((uint32_t) hi) << 8) | (uint32_t) lo;
	return true;
}

// Retrieves the desired address and sets it on the bus
state_t handle_read() {
	uint32_t start, end;
	if (!read_address_from_uart(&start) || !read_address_from_uart(&end)) {
		return NULL_STATE;
	}
	if (start >= end || start >= ROM_SIZE || end > ROM_SIZE) {
		uart::send_byte(ACK_ERR_BAD_REQUEST);
		return NULL_STATE;
	}

	uart::send_byte(ACK);

	SET_PIN_LOW(PIN_CE_L);
	SET_PIN_LOW(PIN_OE_L);
	data_input_mode();

	uint8_t checksum = 0;
	for (; start != end; start++) {
		set_address(start);
		_delay_us(1);

		uint8_t data = 0;
		data = data | GET_PIN(PIN_D0);
		data = data | (GET_PIN(PIN_D1) << 1);
		data = data | (GET_PIN(PIN_D2) << 2);
		data = data | (GET_PIN(PIN_D3) << 3);
		data = data | (GET_PIN(PIN_D4) << 4);
		data = data | (GET_PIN(PIN_D5) << 5);
		data = data | (GET_PIN(PIN_D6) << 6);
		data = data | (GET_PIN(PIN_D7) << 7);
		uart::send_byte(data);
		checksum += data;
	}

	uart::send_byte(-checksum);
	return NULL_STATE;
}
