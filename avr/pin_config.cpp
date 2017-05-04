#include <avr/io.h>
#include <util/delay.h>

#include "pin_config.h"

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
	SET_PIN_HIGH(PIN_VPP_12V_EN_L); // Start in (safe) read mode
	SET_OUTPUT(PIN_VPP_12V_EN_L);
	SET_PIN_HIGH(PIN_A9_VPP_EN_L);
	SET_OUTPUT(PIN_A9_VPP_EN_L);

	SET_OUTPUT(PIN_PGM_L);
	SET_PIN_LOW(PIN_PGM_L);
	SET_OUTPUT(PIN_OE_L);
	SET_PIN_LOW(PIN_OE_L);
	SET_OUTPUT(PIN_CE_L);
	SET_PIN_LOW(PIN_CE_L);

	// Shift register outputs
	SET_OUTPUT(PIN_A_RCK);
	SET_PIN_HIGH(PIN_A_RCK);
	SET_OUTPUT(PIN_A_SCK);
	SET_PIN_HIGH(PIN_A_SCK);
	SET_OUTPUT(PIN_A_SER);
	SET_PIN_LOW(PIN_A_SER);
	SET_OUTPUT(PIN_A_OE_L);
	SET_PIN_LOW(PIN_A_OE_L);

	SET_OUTPUT(PIN_A16);
	SET_PIN_LOW(PIN_A16);
}

// Sets the address based on the least significant 17 bits of the passed in address value
void set_address(uint32_t address) {
	SET_PIN_LOW(PIN_A_RCK);
	for (int8_t i = 15; i >= 0; i--) {
		SET_PIN_LOW(PIN_A_SCK);
		SET_PIN(PIN_A_SER, address >> i);
		SET_PIN_HIGH(PIN_A_SCK);
	}
	SET_PIN_HIGH(PIN_A_RCK);

	SET_PIN(PIN_A16, address >> 16);

	// We have to wait quite a while for the A9 line to change its value
	// due to the capacitance in the trace after the diodes. This could
	// be improved by adding a pull-down resistor.
	for (int8_t i = 0; i < 3; i++) {
		_delay_us(80);
	}
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

// Brings the VPP pin of the ROM back to 12V, and
// returns control of the A9 pin to the shift registers
void reset_12v() {
	SET_PIN_HIGH(PIN_VPP_12V_EN_L);
	SET_PIN_HIGH(PIN_A9_VPP_EN_L);

	// It takes around 13 milliseconds for the voltage to return to normal
	// according to the MAX662A's datasheet
	// Let's wait longer to play it safe
	_delay_ms(20);
}

inline void wait_for_12v_assertion() {
	// It takes about 400 microseconds for the MAX662A's output to reach 12V
	// Rounding that up to 1 millisecond just to be sure
	 _delay_ms(1);
}

// Asserts 12V on the VPP pin of the ROM
void set_12v_vpp() {
	SET_PIN_HIGH(PIN_A9_VPP_EN_L);
	SET_PIN_LOW(PIN_VPP_12V_EN_L);
	wait_for_12v_assertion();
}

// Asserts 12V on the VPP and A9 pins of the ROM
void set_12v_vpp_a9() {
	SET_PIN_LOW(PIN_A9_VPP_EN_L);
	SET_PIN_LOW(PIN_VPP_12V_EN_L);
	wait_for_12v_assertion();
}
