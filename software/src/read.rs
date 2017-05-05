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

use std::path::Path;
use std::io::prelude::*;
use std::fs::File;
use byteorder::ReadBytesExt;
use term;

use constants::ROM_SIZE;
use serial_port;

const BLOCK_SIZE: usize = 256;
const COMMAND_READ: u8 = 0x55;
const MAX_FAILURES: usize = 3;

fn push_address(buffer: &mut Vec<u8>, address: usize) {
    buffer.push((address >> 16) as u8);
    buffer.push((address >> 8) as u8);
    buffer.push(address as u8);
}

#[test]
fn test_push_address() {
    let mut command = Vec::new();
    push_address(&mut command, 0xAABBCCDD);
    assert_eq!(3, command.len());
    assert_eq!(0xBB, command[0]);
    assert_eq!(0xCC, command[1]);
    assert_eq!(0xDD, command[2]);
}

fn generate_read_command(start_index: usize, end_index: usize) -> Vec<u8> {
    let mut command: Vec<u8> = Vec::new();
    command.push(COMMAND_READ);
    push_address(&mut command, start_index);
    push_address(&mut command, end_index);
    command
}

pub fn read_rom_to_vec<S: Read + Write>(mut serial_port: S, rom_contents: &mut Vec<u8>) {
    let mut t = term::stdout().unwrap();

    let block_count = ROM_SIZE / BLOCK_SIZE;
    let mut block: Vec<u8> = vec![0; BLOCK_SIZE];
    for block_index in 0..block_count {
        let start_index = block_index * BLOCK_SIZE;
        let end_index = start_index + BLOCK_SIZE;

        write!(t, "Reading {} byte block {} of {}...", BLOCK_SIZE, block_index + 1, block_count).unwrap();
        t.carriage_return().unwrap();
        let mut failures = 0;
        loop {
            let command = generate_read_command(start_index, end_index);
            serial_port.write_all(&command).expect("Failed to send read command");

            let ack = serial_port.read_u8().expect("Error receiving ACK from flash programmer");
            if ack != 0 {
                panic!("Bad ACK from flash programmer: 0x{:02X}", ack);
            }

            serial_port.read_exact(&mut block).expect("Failed to read data from the ROM");

            // Verify the checksum and retry if it fails
            let checksum = serial_port.read_u8().expect("Failed to read checksum from ROM");
            if 0 == checksum.wrapping_add(block.iter().fold(0, |acc, &data| acc.wrapping_add(data))) {
                // Block read successfully; don't retry
                break;
            } else if failures < MAX_FAILURES {
                println!("\nChecksum verification failed. Retrying block");
                failures += 1;
            } else {
                panic!("Failed to read block too many times. Giving up");
            }
        }

        rom_contents.extend(block.iter());
    }
}

pub fn read_rom<P: AsRef<Path>>(device: &str, output_path: P) {
    let mut serial_port = serial_port::open(device);
    let mut rom_contents: Vec<u8> = Vec::new();

    read_rom_to_vec(&mut serial_port, &mut rom_contents);

    let mut file = match File::create(output_path.as_ref()) {
        Ok(file) => file,
        Err(err) => panic!("Failed to open file {:?}: {}", output_path.as_ref(), err),
    };
    if let Err(err) = file.write_all(&rom_contents) {
        panic!("Failed to write ROM contents to file {:?}: {}", output_path.as_ref(), err);
    }
}