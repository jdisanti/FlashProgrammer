#include <avr/io.h>
#include <util/delay.h>

#include "pin_config.h"
#include "states.h"
#include "uart.h"

static uint32_t g_write_address;

state_t handle_write_begin() {
	g_write_address = 0;

	SET_PIN_LOW(PIN_VPP_12V_EN_L);

	SET_PIN_LOW(PIN_CE_L);
	SET_PIN_HIGH(PIN_OE_L);

	data_output_mode();
	return WRITE_BYTE;
}

state_t handle_write_byte() {
	uint8_t data;
	if (!uart::receive_byte(&data)) {
		return WRITE_END;
	}

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
