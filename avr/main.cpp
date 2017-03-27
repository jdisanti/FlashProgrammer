#include <avr/io.h>
#include <util/delay.h>

#include "pin_config.h"
#include "states.h"
#include "uart.h"

#define MSG_READ	0x55
#define MSG_WRITE	0xAA
#define MSG_ERASE	0xEE

// Receiving a 0x55 goes into read mode, and a 0xAA goes into write mode
state_t handle_null_state() {
	if (uart::byte_available()) {
		uint8_t msg;
		if (uart::receive_byte(&msg)) {
			if (MSG_READ == msg) {
				return READ;
			} else if (MSG_WRITE == msg) {
				return WRITE_BEGIN;
			} else if (MSG_ERASE == msg) {
				return ERASE;
			}
		}
	}
	return NULL_STATE;
}

state_t handle_state(state_t state) {
	switch (state) {
	case NULL_STATE:
		return handle_null_state();
	case READ:
		return handle_read();
	case WRITE_BEGIN:
		return handle_write_begin();
	case WRITE_BLOCK:
		return handle_write_block();
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

	set_address(0);

	state_t current_state = NULL_STATE;
    while (1) {
		current_state = handle_state(current_state);
    }
}