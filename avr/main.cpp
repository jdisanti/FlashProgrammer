#include <avr/io.h>

#include "pin_config.h"
#include "uart.h"

// Sets the address based on the least significant 17 bits of the passed in address value
void set_address(uint32_t address) {
	// Disable shift register output
	SET_PIN_HIGH(PIN_AOE);

	SET_PIN_LOW(PIN_RCK);
	for (int i = 15; i >= 0; i--) {
		SET_PIN_LOW(PIN_SCK);
		SET_PIN(PIN_SER, address >> i);
		SET_PIN_HIGH(PIN_SCK);
	}
	SET_PIN_HIGH(PIN_RCK);
	SET_PIN_LOW(PIN_RCK);

	SET_PIN(PIN_A16, address >> 16);

	// Enable shift register output
	SET_PIN_LOW(PIN_AOE);
}

void set_data(uint8_t data) {
	SET_PIN(PIN_D0, data);
	SET_PIN(PIN_D1, data >> 1);
	SET_PIN(PIN_D2, data >> 2);
	SET_PIN(PIN_D3, data >> 3);
	SET_PIN(PIN_D4, data >> 4);
	SET_PIN(PIN_D5, data >> 5);
	SET_PIN(PIN_D6, data >> 6);
	SET_PIN(PIN_D7, data >> 7);
}

typedef enum {
	NULL_STATE = 0,

	READ_GET_ADDRESS = 1,
	READ_RETURN_DATA = 3,

	WRITE_GET_ADDRESS = 4,
	WRITE_GET_DATA = 5,
	WRITE_DATA = 6,
} state_t;

// Receiving a 0x55 goes into read mode, and a 0xAA goes into write mode
state_t handle_null_state() {
	if (uart::byte_available()) {
		uint8_t msg = uart::receive_byte();
		if (0x55 == msg) {
			data_input_mode();
			SET_PIN_HIGH(PIN_STU);
			return READ_GET_ADDRESS;
		} else if (0xAA == msg) {
			// TODO: Figure out what to do to enable write mode on the flash chip
			// TODO: data_output_mode();
			return WRITE_GET_ADDRESS;
		}
	}
	return NULL_STATE;
}

static void read_address_from_uart() {
	const uint32_t upper = uart::receive_byte() & 1;
	const uint32_t hi = uart::receive_byte();
	const uint32_t lo = uart::receive_byte();
	const uint32_t address = (upper << 16) | (hi << 8) | lo;
	set_address(address);
}

// Retrieves the desired address and sets it on the bus
state_t handle_read_get_address() {
	read_address_from_uart();
	return READ_RETURN_DATA;
}

state_t handle_read_return_data() {
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
	return NULL_STATE;
}

state_t handle_write_get_address() {
	read_address_from_uart();
	return WRITE_GET_DATA;
}

state_t handle_write_get_data() {
	// TODO
	return NULL_STATE;
}

state_t handle_write_data() {
	// TODO
	return NULL_STATE;
}

state_t handle_state(state_t state) {
	switch (state) {
	case NULL_STATE:
		return handle_null_state();
	case READ_GET_ADDRESS:
		return handle_read_get_address();
	case READ_RETURN_DATA:
		return handle_read_return_data();
	case WRITE_GET_ADDRESS:
		return handle_write_get_address();
	case WRITE_GET_DATA:
		return handle_write_get_data();
	case WRITE_DATA:
		return handle_write_data();
	}
	return NULL_STATE;
}

int main() {
	init_pins();
	data_input_mode();
	uart::init();

	set_address(0x00000000);

	state_t current_state = NULL_STATE;
    while (1) {
		current_state = handle_state(current_state);
    }
}