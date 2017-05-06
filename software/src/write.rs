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
use byteorder::{ReadBytesExt, WriteBytesExt};

use constants::*;
use error::*;
use read::read_rom_to_vec;
use progress::ProgressReporter;
use serial_port;

/// Writes the contents of the given file name to the given serial device
pub fn write_rom<P: AsRef<Path>>(device: &str, input_path: P) -> Result<()> {
    let rom_contents = read_rom_file(input_path)?;
    let mut serial_port = serial_port::open(device)?;

    erase_rom(&mut serial_port)?;

    // Start the write sequence
    serial_port
        .write_u8(COMMAND_WRITE)
        .chain_err(|| "Failed to send write command")?;
    if 0 != serial_port.read_u8().chain_err(|| "Error receiving command ACK")? {
        return Err("Unexpected ACK value for write command".into());
    }

    // Loop over each block of data, send it to the device with a checksum byte, and wait for acknowledgement
    let block_count = ROM_SIZE / BLOCK_SIZE;
    let mut progress_reporter = ProgressReporter::new(block_count, format!("Writing {} byte block", BLOCK_SIZE));
    for block_index in 0..block_count {
        let start_index = block_index * BLOCK_SIZE;
        let end_index = start_index + BLOCK_SIZE;

        progress_reporter.progress(1).report();

        let block: &[u8] = &rom_contents[start_index..end_index];
        let checksum: u8 = (block.iter().fold(0, |acc: u8, &data| acc.wrapping_add(data)) as i8).wrapping_neg() as u8;
        serial_port.write_all(block).chain_err(|| "Failed to send block")?;
        serial_port.write_u8(checksum).chain_err(|| "Failed to send checksum")?;

        let ack = serial_port.read_u8().chain_err(|| "Error receiving write ACK")?;
        if ack != 0 {
            return Err(format!("Received error while writing to ROM: 0x{:02X}", ack).into());
        }
    }

    if 1 != serial_port.read_u8().chain_err(|| "Error receiving done ACK")? {
        return Err("Unexpected done ACK value".into());
    }

    progress_reporter.finish("Finished writing ROM. Going to verify now.");
    verify_rom(&mut serial_port, &rom_contents)?;
    Ok(())
}

/// Sends the erase command to the flash programmer and waits for it to finish
fn erase_rom<S: Read + Write>(mut serial_port: S) -> Result<()> {
    serial_port
        .write_u8(COMMAND_ERASE)
        .chain_err(|| "Failed to send erase command")?;
    let ack = serial_port.read_u8().chain_err(|| "Error receiving ACK for erase")?;
    if ack != 0 {
        Err(format!("Failed to erase the ROM: {:02X}", ack).into())
    } else {
        println!("ROM Erased");
        Ok(())
    }
}

/// Reads the entire ROM and compares it to the expected contents.
/// Returns an error if the contents don't match.
fn verify_rom<S: Read + Write>(serial_port: S, expected_contents: &Vec<u8>) -> Result<()> {
    let mut actual_contents: Vec<u8> = Vec::new();
    read_rom_to_vec(serial_port, &mut actual_contents)?;

    let mut different = 0;
    for index in 0..ROM_SIZE {
        if expected_contents[index] != actual_contents[index] {
            different += 1;
        }
    }
    if different != 0 {
        return Err(format!("Verification of written contents failed. {} bytes different",
                           different)
                           .into());
    }
    println!("Verified content written successfully.");
    Ok(())
}

/// Reads the first 128KiB of a file into a Vec, or if the file is
/// not that large, reads the entire file and pads it with zeroes
/// until it is the desired length.
fn read_rom_file<P: AsRef<Path>>(input_path: P) -> Result<Vec<u8>> {
    let file = File::open(input_path.as_ref())
        .chain_err(&|| format!("Failed to open ROM file \"{:?}\"", input_path.as_ref()))?;

    let mut rom_contents = Vec::new();
    let bytes_read = {
        let mut file_view = file.take(ROM_SIZE as u64);
        file_view
            .read_to_end(&mut rom_contents)
            .chain_err(&|| format!("Failed to read from ROM file \"{:?}\"", input_path.as_ref()))?
    };
    print!("Read {} bytes from the ROM file", bytes_read);
    if bytes_read < ROM_SIZE {
        println!(". Since this is less than the chip can hold, the remainder will be flashed to 0x00.");
    } else {
        println!(".");
    }

    rom_contents.resize(ROM_SIZE, 0u8);
    Ok(rom_contents)
}
