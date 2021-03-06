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

#include "uart.h"

#define UART_BAUD_PRESCALE    ((F_CPU / (UART_BAUD_RATE * 16UL)) - 1)

namespace uart {

    void init() {
        // Set baud rate
        UBRR0H = UART_BAUD_PRESCALE >> 8;
        UBRR0L = UART_BAUD_PRESCALE;

        // Enable transmit and receive
        UCSR0B |= (1 << TXEN0) | (1 << RXEN0);
    }

    bool can_immediately_transmit() {
        return UCSR0A & (1 << UDRE0);
    }
    
    void send_byte(uint8_t value) {
        // Wait for previous byte to finish transmitting
        while (!can_immediately_transmit())
            ;
        UDR0 = value;
    }

    bool byte_available() {
        return UCSR0A & (1 << RXC0);
    }

    bool receive_byte(uint8_t *result) {
        // Calculate a timeout value of 100 milliseconds
        const uint16_t timeout_val = (uint16_t) ((F_CPU / 1024) / 10);

        // Use F_CPU/1024 prescaler in CTC mode, and start the timer
        TCCR1B = (1 << WGM12) | (1 << CS10) | (1 << CS12);
        TCNT1 = 0;
        OCR1A = timeout_val;
        TIFR1 |= (1 << OCF1A); // Reset the timer

        while (!byte_available()) {
            // If our timer expired
            if (TIFR1 & (1 << OCF1A)) {
                // Reset the timer
                TIFR1 |= (1 << OCF1A);
                return false;
            }
        }

        *result = UDR0;
        return true;
    }

}