#ifndef PIN_CONFIG_H_
#define PIN_CONFIG_H_

/* Pin manipulation macros */

#define _SET(type, name, bit)			type ## name  |= _BV(bit)
#define _CLEAR(type, name, bit)			type ## name  &= ~ _BV(bit)
#define _TOGGLE(type, name, bit)		type ## name  ^= _BV(bit)
#define _GET(type, name, bit)			((type ## name >> bit) &  1)
#define _PUT(type, name, bit, value)	type ## name = (type ## name & (~_BV(bit))) | ((1 & (uint8_t) (value)) << (bit))

#define INPUT	0
#define OUTPUT	1

#define SET_PIN_MODE(pin, mode) _PUT(DDR, pin, mode)
#define SET_OUTPUT(pin)			_SET(DDR, pin)
#define SET_INPUT(pin)			_CLEAR(DDR, pin)
#define SET_PIN_HIGH(pin)		_SET(PORT, pin)
#define SET_PIN_LOW(pin)		_CLEAR(PORT, pin)
#define TOGGLE_PIN(pin)			_TOGGLE(PORT, pin)
#define GET_PIN(pin)			_GET(PIN, pin)
#define SET_PIN(pin, value)		_PUT(PORT, pin, value)
#define SET_PULLUP(pin)			_SET(PORT, pin)
#define CLEAR_PULLUP(pin)		_CLEAR(PORT, pin)

/* Pin configs */

// Port B
#define PIN_D5				B,0
#define PIN_D4				B,1
#define PIN_D3				B,2
#define PIN_D6				B,3
#define PIN_D2				B,4
#define PIN_D7				B,5
#define PIN_D0				B,6
#define PIN_D1				B,7

// Port C
#define PIN_UNUSED_PC0		C,0
#define PIN_UNUSED_PC1		C,1
#define PIN_A_SCK			C,2
#define PIN_A_RCK			C,3
#define PIN_CE_L			C,4
#define PIN_OE_L			C,5
#define PIN_ISP_RST_L		C,6
#define PIN_UNUSED_PC7		C,7

// Port D
#define PIN_RXD				D,0
#define PIN_TXD				D,1
#define PIN_PGM_L			D,2
#define PIN_A_OE_L			D,3
#define PIN_A_SER			D,4
#define PIN_A16				D,5
#define PIN_VPP_12V_EN_L	D,6
#define PIN_A9_VPP_EN_L		D,7

void init_pins();
void data_output_mode();
void data_input_mode();
void set_address(uint32_t address);
void set_data(uint8_t data);

void reset_12v();
void set_12v_vpp();
void set_12v_vpp_a9();

#endif /* PIN_CONFIG_H_ */