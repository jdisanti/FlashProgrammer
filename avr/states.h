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

#ifndef STATES_H_
#define STATES_H_

/**
 * Describes the various states that the MCU can be in
 */
typedef enum {
    /**
     * While in the idle state, the MCU waits around for any serial communication from the FTDI USB controller
     */
    STATE_IDLE = 0,

    /**
     * The read state requests an address range to read from and then sends the read data with a single-byte checksum
     */
    STATE_READ = 1,

    /**
     * The begin write state initializes the 12V power supply and configures pins for writing
     */
    STATE_WRITE_BEGIN = 4,
    
    /**
     * The write block state receives a 256 byte block of data from the host, and after checksum
     * verification, flashes the block to the ROM chip. If there's no more address space to write to,
     * it switches to the write end state. Otherwise, it repeats itself to write another block.
     */
    STATE_WRITE_BLOCK = 5,

    /**
     * Turns off the high voltage source
     */
    STATE_WRITE_END = 6,

    /**
     * Erases the ROM by inializing the 12V power supply source, applying it to both VPP and A9
     * for 100 milliseconds, and then turning it back off.
     */
    STATE_ERASE = 7,
} state_t;

//
// State handler methods
// 

state_t handle_idle_state();
state_t handle_read();
state_t handle_write_begin();
state_t handle_write_block();
state_t handle_write_end();
state_t handle_erase();

#endif /* STATES_H_ */