#include <avr/io.h>

#include "pin_config.h"
#include "uart.h"

void data_input_mode() {
	SET_INPUT(PIN_D0);
	SET_INPUT(PIN_D1);
	SET_INPUT(PIN_D2);
	SET_INPUT(PIN_D3);
	SET_INPUT(PIN_D4);
	SET_INPUT(PIN_D5);
	SET_INPUT(PIN_D6);
	SET_INPUT(PIN_D7);

	CLEAR_PULLUP(PIN_D0);
	CLEAR_PULLUP(PIN_D1);
	CLEAR_PULLUP(PIN_D2);
	CLEAR_PULLUP(PIN_D3);
	CLEAR_PULLUP(PIN_D4);
	CLEAR_PULLUP(PIN_D5);
	CLEAR_PULLUP(PIN_D6);
	CLEAR_PULLUP(PIN_D7);
}

void data_output_mode() {
	SET_OUTPUT(PIN_D0);
	SET_OUTPUT(PIN_D1);
	SET_OUTPUT(PIN_D2);
	SET_OUTPUT(PIN_D3);
	SET_OUTPUT(PIN_D4);
	SET_OUTPUT(PIN_D5);
	SET_OUTPUT(PIN_D6);
	SET_OUTPUT(PIN_D7);
}

void init_pins() {
	// Flash outputs
	SET_OUTPUT(PIN_STU);
	SET_OUTPUT(PIN_PGM_L);
	SET_OUTPUT(PIN_CE_L);
	SET_OUTPUT(PIN_OE_L);

	// Shift register outputs
	SET_OUTPUT(PIN_RCK);
	SET_OUTPUT(PIN_SCK);
	SET_OUTPUT(PIN_SER);
	SET_OUTPUT(PIN_AOE);

	// ISP and unused
	SET_INPUT(PIN_ISP_SCK);
	SET_INPUT(PIN_ISP_RST_L);
	SET_INPUT(PIN_UNUSED_PB6);
	SET_INPUT(PIN_UNUSED_PB7);
	SET_INPUT(PIN_UNUSED_PC7);
	SET_INPUT(PIN_UNUSED_PD4);

	CLEAR_PULLUP(PIN_ISP_SCK);
	CLEAR_PULLUP(PIN_ISP_RST_L);
	CLEAR_PULLUP(PIN_UNUSED_PB6);
	CLEAR_PULLUP(PIN_UNUSED_PB7);
	CLEAR_PULLUP(PIN_UNUSED_PC7);
	CLEAR_PULLUP(PIN_UNUSED_PD4);
}

int main() {
	init_pins();
	data_input_mode();
	uart::init();

	uint16_t blink_timer = 0;
    while (1) {
		// Blink the transmit LED for now
		blink_timer++;
		if (blink_timer >= 65000) {
			TOGGLE_PIN(PIN_STU);
			blink_timer = 0;
		}
		
		// Basic UART test
		if (uart::byte_available()) {
			uint8_t val = uart::receive_byte();
			uart::send_byte('r');
			uart::send_byte(':');
			uart::send_byte(' ');
			uart::send_byte(val);
			uart::send_byte('\n');
		}
    }
}