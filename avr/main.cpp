#include <avr/io.h>
#include <util/delay.h>

#include "pin_config.h"
#include "states.h"
#include "uart.h"

#define MSG_READ		0x55
#define MSG_WRITE		0xAA
#define MSG_ERASE		0xEE

state_t handle_null_state() {
	if (uart::byte_available()) {
		uint8_t msg;
		if (uart::receive_byte(&msg)) {
			if (MSG_READ == msg) {
				return STATE_READ;
			} else if (MSG_WRITE == msg) {
				return STATE_WRITE_BEGIN;
			} else if (MSG_ERASE == msg) {
				return STATE_ERASE;
			}
		}
	}
	return NULL_STATE;
}

state_t handle_state(state_t state) {
	switch (state) {
	case NULL_STATE:
		return handle_null_state();
	case STATE_READ:
		return handle_read();
	case STATE_WRITE_BEGIN:
		return handle_write_begin();
	case STATE_WRITE_BLOCK:
		return handle_write_block();
	case STATE_WRITE_END:
		return handle_write_end();
	case STATE_ERASE:
		return handle_erase();
	}
	return NULL_STATE;
}

int main() {
	init_pins();
	data_input_mode();
	uart::init();

	set_address(0);

	// TODO: Debug code; remove this
	/*while (1) {
		for (uint16_t i = 0; i < 0xFFFF; i++) {
			SET_PIN_HIGH(PIN_PGM_L);
			set_address(i);
			_delay_ms(1);
			SET_PIN_LOW(PIN_PGM_L);
			_delay_ms(1);
			SET_PIN_HIGH(PIN_PGM_L);
		}
		for (uint8_t i = 0; i < 0xFF; i++) {
			_delay_ms(10);
		}
	}*/
	// END REMOVE

	state_t current_state = NULL_STATE;
    while (1) {
		current_state = handle_state(current_state);
    }
}