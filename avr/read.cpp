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

#include "pin_config.h"
#include "states.h"
#include "uart.h"

#define ACK                   0x00
#define ACK_ERR_BAD_REQUEST   0xF1

#define ROM_SIZE              131072

/**
 * Reads a 24-bit address from UART. Returns true on success.
 */
static bool read_address_from_uart(uint32_t *result) {
    uint8_t upper, hi, lo;
    if (!uart::receive_byte(&upper) || !uart::receive_byte(&hi) || !uart::receive_byte(&lo)) {
        return false;
    }
    *result = (((uint32_t) upper) << 16) | (((uint32_t) hi) << 8) | (uint32_t) lo;
    return true;
}

/**
 * Retrieves the desired address and sets it on the bus
 */
state_t handle_read() {
    // Read the desired address range
    uint32_t start, end;
    if (!read_address_from_uart(&start) || !read_address_from_uart(&end)) {
        return STATE_IDLE;
    }
    // Validate the range and exit if it's invalid
    if (start >= end || start >= ROM_SIZE || end > ROM_SIZE) {
        uart::send_byte(ACK_ERR_BAD_REQUEST);
        return STATE_IDLE;
    }

    // Indicate we can fulfill the request
    uart::send_byte(ACK);

    SET_PIN_LOW(PIN_CE_L);
    SET_PIN_LOW(PIN_OE_L);
    data_input_mode();

    // Read, checksum, and send data
    uint8_t checksum = 0;
    for (; start != end; start++) {
        set_address(start);

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
        checksum += data;
    }

    // Send checksum and exit
    uart::send_byte(-checksum);
    return STATE_IDLE;
}
