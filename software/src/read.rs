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

use error::*;
use constants::*;
use progress::ProgressReporter;
use serial_port;

/// Opens the passed in serial device name and issues read commands to it
/// to read an entire 128K ROM, and then outputs that to the given output path.
pub fn read_rom<P: AsRef<Path>>(device: &str, output_path: P) -> Result<()> {
    // Open the serial port and read the entire ROM contents from it
    let mut serial_port = serial_port::open(device)?;
    let mut rom_contents: Vec<u8> = Vec::new();
    read_rom_to_vec(&mut serial_port, &mut rom_contents)?;

    // Write the ROM to the output file
    let mut file = File::create(output_path.as_ref())
        .chain_err(&|| format!("Failed to open file {:?}", output_path.as_ref()))?;
    file.write_all(&rom_contents)
        .chain_err(&|| {
                        format!("Failed to write ROM contents to file {:?}",
                                output_path.as_ref())
                    })?;

    println!("Finished!");
    Ok(())
}

// Reads an entire 128K ROM from the given serial port and puts it into the passed in Vec
pub fn read_rom_to_vec<S: Read + Write>(mut serial_port: S, rom_contents: &mut Vec<u8>) -> Result<()> {
    // Read one block at a time
    let block_count = ROM_SIZE / BLOCK_SIZE;
    let mut block: Vec<u8> = vec![0; BLOCK_SIZE];
    let mut progress_reporter = ProgressReporter::new(block_count, format!("Reading {} byte block", BLOCK_SIZE));
    for block_index in 0..block_count {
        let start_index = block_index * BLOCK_SIZE;
        let end_index = start_index + BLOCK_SIZE;

        progress_reporter.progress(1).report();

        // Retry each block up to MAX_FAILURES times
        let mut failures = 0;
        loop {
            let command = generate_read_command(start_index, end_index);
            serial_port.write_all(&command).chain_err(|| "Failed to send read command")?;

            let ack = serial_port
                .read_u8()
                .chain_err(|| "Error receiving ACK from flash programmer")?;
            if ack != 0 {
                return Err(format!("Bad ACK from flash programmer: 0x{:02X}", ack).into());
            }

            serial_port
                .read_exact(&mut block)
                .chain_err(|| "Failed to read data from the ROM")?;

            // Verify the checksum and retry if it fails
            let checksum = serial_port.read_u8().chain_err(|| "Failed to read checksum from ROM")?;
            let sum = block.iter().fold(0, |acc: u8, &data| acc.wrapping_add(data));
            if 0 == checksum.wrapping_add(sum) {
                // Block read successfully; don't retry
                break;
            } else if failures < MAX_FAILURES {
                println!("Checksum verification failed. Retrying block");
                failures += 1;
            } else {
                return Err("Failed to read block too many times. Giving up".into());
            }
        }

        // Add this block's content to the total ROM
        rom_contents.extend(block.iter());
    }
    progress_reporter.finish("");

    Ok(())
}

/// Pushes a 24-bit address onto a Vec
fn push_address(buffer: &mut Vec<u8>, address: usize) {
    buffer.push((address >> 16) as u8);
    buffer.push((address >> 8) as u8);
    buffer.push(address as u8);
}

/// Generates a read command and returns it as a Vec
fn generate_read_command(start_index: usize, end_index: usize) -> Vec<u8> {
    let mut command: Vec<u8> = Vec::new();
    command.push(COMMAND_READ);
    push_address(&mut command, start_index);
    push_address(&mut command, end_index);
    command
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_push_address() {
        let mut command = Vec::new();
        push_address(&mut command, 0xAABBCCDD);
        assert_eq!(3, command.len());
        assert_eq!(0xBB, command[0]);
        assert_eq!(0xCC, command[1]);
        assert_eq!(0xDD, command[2]);
    }

    #[test]
    fn test_generate_read_command() {
        let result = generate_read_command(0xF000, 0xF100);
        assert_eq!(COMMAND_READ, result[0]);
        assert_eq!(0x00, result[1]);
        assert_eq!(0xF0, result[2]);
        assert_eq!(0x00, result[3]);
        assert_eq!(0x00, result[4]);
        assert_eq!(0xF1, result[5]);
        assert_eq!(0x00, result[6]);
    }
}
