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

// Messages for use by the idle state
#define MSG_READ         0x55
#define MSG_WRITE        0xAA
#define MSG_ERASE        0xEE

state_t handle_idle_state() {
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
    return STATE_IDLE;
}

state_t handle_state(state_t state) {
    switch (state) {
    case STATE_IDLE:
        return handle_idle_state();
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
    return STATE_IDLE;
}

int main() {
    init_pins();
    data_input_mode();
    uart::init();

    set_address(0);

    state_t current_state = STATE_IDLE;
    while (1) {
        current_state = handle_state(current_state);
    }
}