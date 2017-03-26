#include <avr/io.h>
#include <util/delay.h>

#include "pin_config.h"
#include "uart.h"

// Sets the address based on the least significant 17 bits of the passed in address value
void set_address(uint32_t address) {
	// Disable shift register output
	SET_PIN_HIGH(PIN_A_OE_L);

	SET_PIN_LOW(PIN_A_RCK);
	for (int i = 15; i >= 0; i--) {
		SET_PIN_LOW(PIN_A_SCK);
		SET_PIN(PIN_A_SER, address >> i);
		SET_PIN_HIGH(PIN_A_SCK);
	}
	SET_PIN_HIGH(PIN_A_RCK);
	SET_PIN_LOW(PIN_A_RCK);

	SET_PIN(PIN_A16, address >> 16);

	// Enable shift register output
	SET_PIN_LOW(PIN_A_OE_L);
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

	WRITE_BEGIN = 4,
	WRITE_BYTE = 5,
	WRITE_END = 6,

	ERASE = 7,
} state_t;

// Receiving a 0x55 goes into read mode, and a 0xAA goes into write mode
state_t handle_null_state() {
	if (uart::byte_available()) {
		uint8_t msg = uart::receive_byte();
		if (0x55 == msg) {
			data_input_mode();
			SET_PIN_HIGH(PIN_VPP_12V_EN_L);
			return READ_GET_ADDRESS;
		} else if (0xAA == msg) {
			return WRITE_BEGIN;
		} else if (0xEE == msg) {
			return ERASE;
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

uint32_t g_write_address;

state_t handle_write_begin() {
	g_write_address = 0;

	SET_PIN_LOW(PIN_VPP_12V_EN_L);

	SET_PIN_LOW(PIN_CE_L);
	SET_PIN_HIGH(PIN_OE_L);

	data_output_mode();
	return WRITE_BYTE;
}

state_t handle_write_byte() {
	const uint8_t data = uart::receive_byte();
	set_data(data);
	set_address(g_write_address);

	_delay_us(5); // Tces
	SET_PIN_LOW(PIN_PGM_L);
	_delay_us(25); // Tpw
	SET_PIN_HIGH(PIN_PGM_L);
	_delay_us(5); // Tvph

	g_write_address++;
	if (g_write_address > 0x0001FFFF) {
		return WRITE_END;
	} else {
		return WRITE_BYTE;
	}
}

state_t handle_write_end() {
	SET_PIN_HIGH(PIN_CE_L);
	SET_PIN_LOW(PIN_OE_L);
	data_input_mode();

	SET_PIN_HIGH(PIN_VPP_12V_EN_L);
	return NULL_STATE;
}

state_t handle_erase() {
	set_address(0);
	SET_PIN_LOW(PIN_A9_VPP_EN_L);
	SET_PIN_LOW(PIN_VPP_12V_EN_L);
	// It takes about 400 microseconds for the MAX662A's output to reach 12V
	_delay_us(400);
	SET_PIN_LOW(PIN_CE_L);
	SET_PIN_HIGH(PIN_OE_L);
	_delay_us(1);
	SET_PIN_LOW(PIN_PGM_L);
	_delay_ms(100);
	SET_PIN_HIGH(PIN_PGM_L);
	_delay_us(1);
	SET_PIN_HIGH(PIN_VPP_12V_EN_L);
	SET_PIN_HIGH(PIN_A9_VPP_EN_L);
	SET_PIN_LOW(PIN_OE_L);
	set_address(0);
	_delay_us(1);
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
	case WRITE_BEGIN:
		return handle_write_begin();
	case WRITE_BYTE:
		return handle_write_byte();
	case WRITE_END:
		return handle_write_end();
	case ERASE:
		return handle_erase();
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