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

#ifndef UART_H_
#define UART_H_

#include <stdint.h>

#define UART_BAUD_RATE        500000UL

namespace uart {
    void init();

    /**
     * Returns true if we can transmit now
     */
    bool can_immediately_transmit();

    /**
     * Waits until we can transmit, and then sends a single byte over UART
     */
    void send_byte(uint8_t value);

    /**
     * Returns true if there's a byte to be read over UART
     */
    bool byte_available();

    /**
     * Receives a single byte from the UART and stuffs the result into
     * the passed in byte pointer. Times out after 100 milliseconds
     * and returns false on timeout. Returns true on success.
     */
    bool receive_byte(uint8_t *result);
}

#endif /* UART_H_ */