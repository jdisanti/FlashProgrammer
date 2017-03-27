#include <avr/io.h>
#include <util/delay.h>

#include "pin_config.h"
#include "states.h"
#include "uart.h"

#define BLOCK_SIZE			256
#define ROM_SIZE			131072

#define ACK					0x00
#define ACK_FAIL_CHECKSUM	0xF9

static uint32_t g_write_address;

state_t handle_write_begin() {
	g_write_address = 0;

	SET_PIN_LOW(PIN_VPP_12V_EN_L);
	SET_PIN_HIGH(PIN_OE_L);

	data_output_mode();
	return WRITE_BLOCK;
}

void write_value(uint32_t address, uint8_t val) {
	set_data(val);
	set_address(g_write_address);

	_delay_us(5); // Tces
	SET_PIN_LOW(PIN_PGM_L);
	_delay_us(25); // Tpw
	SET_PIN_HIGH(PIN_PGM_L);
	_delay_us(5); // Tvph
}

state_t handle_write_block() {
	uint8_t checksum, sum = 0;
	uint8_t block[BLOCK_SIZE];
	for (uint16_t i = 0; i < BLOCK_SIZE; i++) {
		if (!uart::receive_byte(&block[i])) {
			return WRITE_END;
		}
		sum += block[i];
	}
	if (!uart::receive_byte(&checksum)) {
		return WRITE_END;
	}
	sum += checksum;
	if (sum != 0) {
		uart::send_byte(ACK_FAIL_CHECKSUM);
		return WRITE_END;
	}

	for (uint16_t i = 0; i < BLOCK_SIZE; i++) {
		write_value(g_write_address, block[i]);
		g_write_address++;
	}

	uart::send_byte(ACK);
	if (g_write_address >= ROM_SIZE) {
		return WRITE_END;
	} else {
		return WRITE_BLOCK;
	}
}

state_t handle_write_end() {
	data_input_mode();
	SET_PIN_LOW(PIN_OE_L);
	SET_PIN_HIGH(PIN_VPP_12V_EN_L);
	return NULL_STATE;
}

state_t handle_erase() {
	set_address(0);
	SET_PIN_LOW(PIN_A9_VPP_EN_L);
	SET_PIN_LOW(PIN_VPP_12V_EN_L);
	// It takes about 400 microseconds for the MAX662A's output to reach 12V
	_delay_us(400);
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

	uart::send_byte(ACK);
	return NULL_STATE;
}
