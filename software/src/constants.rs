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

/// Size of the Flash ROMs supported by this device
pub const ROM_SIZE: usize = 131072;

/// Size of chunks that are individually transmitted and checksummed
pub const BLOCK_SIZE: usize = 256;

/// Max attempts before failing
pub const MAX_FAILURES: usize = 3;

/// Command byte for starting a read
pub const COMMAND_READ: u8 = 0x55;

/// Command byte for erasing the ROM
pub const COMMAND_ERASE: u8 = 0xEE;

/// Command byte for starting the write sequence
pub const COMMAND_WRITE: u8 = 0xAA;
