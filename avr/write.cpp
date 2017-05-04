//
// 128K 17-bit Addressed 32-pin Flash ROM Programmer
// Copyright 2017 John DiSanti
//
// Copyright and related rights are licensed under the Solderpad Hardware License, Version 0.51 (the "License");
// you may not use this file except in compliance with the License. You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law or agreed to in writing, software,
// hardware and materials distributed under this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES
// OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#include <avr/io.h>
#include <util/delay.h>

#include "pin_config.h"
#include "states.h"
#include "uart.h"

#define BLOCK_SIZE           256
#define ROM_SIZE             131072

#define ACK                  0x00
#define ACK_DONE             0x01
#define ACK_FAIL_CHECKSUM    0xF9
#define ACK_FAIL_RECV        0xF8

/** Global address shared between all three write states */
static uint32_t g_write_address;

state_t handle_write_begin() {
    g_write_address = 0;
    set_address(0);

    SET_PIN_HIGH(PIN_OE_L);
    set_12v_vpp();
    data_output_mode();

    uart::send_byte(ACK);
    return STATE_WRITE_BLOCK;
}

void write_byte(uint32_t address, uint8_t val) {
    set_data(val);
    set_address(address);

    // Writing is done by pulling PGM_L low for ~20 microseconds
    _delay_us(5); // Tces
    SET_PIN_LOW(PIN_PGM_L);
    _delay_us(25); // Tpw
    SET_PIN_HIGH(PIN_PGM_L);
    _delay_us(5); // Tvph
}

state_t handle_write_block() {
    // Receive a block of data from the host
    uint8_t checksum, sum = 0;
    uint8_t block[BLOCK_SIZE];
    for (uint16_t i = 0; i < BLOCK_SIZE; i++) {
        // If we fail to receive another byte, then send a fail ack and exit
        if (!uart::receive_byte(&block[i])) {
            uart::send_byte(ACK_FAIL_RECV);
            return STATE_WRITE_END;
        }
        sum += block[i];
    }
    // If we fail to receive the checksum, then send a fail ack and exit
    if (!uart::receive_byte(&checksum)) {
        uart::send_byte(ACK_FAIL_RECV);
        return STATE_WRITE_END;
    }
    // Verify the checksum
    sum += checksum;
    if (sum != 0) {
        // If invalid, send fail ack and exit
        uart::send_byte(ACK_FAIL_CHECKSUM);
        return STATE_WRITE_END;
    }

    // Write each byte in the received block
    for (uint16_t i = 0; i < BLOCK_SIZE; i++) {
        write_byte(g_write_address, block[i]);
        g_write_address++;
    }

    // Send success ack and either continue to the next block or finish
    uart::send_byte(ACK);
    if (g_write_address >= ROM_SIZE) {
        return STATE_WRITE_END;
    } else {
        return STATE_WRITE_BLOCK;
    }
}

state_t handle_write_end() {
    data_input_mode();
    SET_PIN_LOW(PIN_OE_L);
    reset_12v();

    uart::send_byte(ACK_DONE);
    return STATE_IDLE;
}

state_t handle_erase() {
    // Apply 12V to both VPP and A9
    set_address(0);
    set_12v_vpp_a9();
    SET_PIN_HIGH(PIN_OE_L);

    // Pull PGM_L low for 100 milliseconds to erase
    _delay_us(1);
    SET_PIN_LOW(PIN_PGM_L);
    _delay_ms(100);
    SET_PIN_HIGH(PIN_PGM_L);
    _delay_us(1);

    // Turn the 12V supply back off
    SET_PIN_LOW(PIN_OE_L);
    reset_12v();
    set_address(0);

    uart::send_byte(ACK);
    return STATE_IDLE;
}
