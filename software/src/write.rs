use std::path::Path;
use std::io::prelude::*;
use std::fs::File;
use byteorder::{ReadBytesExt, WriteBytesExt};

use constants::ROM_SIZE;
use read::read_rom_to_vec;
use serial_port;

const COMMAND_ERASE: u8 = 0xEE;
const COMMAND_WRITE: u8 = 0xAA;
const BLOCK_SIZE: usize = 256;

fn erase_rom<S: Read + Write>(mut serial_port: S) {
    serial_port.write_u8(COMMAND_ERASE).expect("Failed to send erase command");
    let ack = serial_port.read_u8().expect("Error receiving ACK for erase");
    if ack != 0 {
        panic!("Failed to erase the ROM: {:02X}", ack);
    }
    println!("ROM Erased");
}

pub fn write_rom<P: AsRef<Path>>(device: &str, input_path: P) {
    let mut rom_contents = Vec::new();
    let file = match File::open(input_path.as_ref()) {
        Ok(file) => file,
        Err(err) => panic!("Failed to open ROM file \"{:?}\": {}", input_path.as_ref(), err),
    };
    let mut file_view = file.take(ROM_SIZE as u64);
    match file_view.read_to_end(&mut rom_contents) {
        Ok(bytes_read) => {
            print!("Read {} bytes from the ROM file", bytes_read);
            if bytes_read < ROM_SIZE {
                println!(". Since this is less than the chip can hold, the remainder will be flashed to 0x00.");
            } else {
                println!(".");
            }
        },
        Err(err) => {
            panic!("Failed to read from ROM file \"{:?}\": {}", input_path.as_ref(), err);
        }
    }
    drop(file_view);

    rom_contents.resize(ROM_SIZE, 0u8);

    let mut serial_port = serial_port::open(device);
    erase_rom(&mut serial_port);
    serial_port.write_u8(COMMAND_WRITE).expect("Failed to send write command");
    if 0 != serial_port.read_u8().expect("Error receiving command ACK") {
        panic!("Unexpected ACK value for write command");
    }

    let block_count = ROM_SIZE / BLOCK_SIZE;
    for block_index in 0..block_count {
        let start_index = block_index * BLOCK_SIZE;
        let end_index = start_index + BLOCK_SIZE;

        println!("Writing {} byte block {} of {}...", BLOCK_SIZE, block_index + 1, block_count);

        let block: &[u8] = &rom_contents[start_index..end_index];
        let checksum: u8 = (block.iter().fold(0, |acc: u8, &data| acc.wrapping_add(data)) as i8).wrapping_neg() as u8;
        serial_port.write_all(block).expect("Failed to send block");
        serial_port.write_u8(checksum).expect("Failed to send checksum");

        let ack = serial_port.read_u8().expect("Error receiving write ACK");
        if ack != 0 {
            panic!("Received error while writing to ROM: 0x{:02X}", ack);
        }
    }

    if 1 != serial_port.read_u8().expect("Error receiving done ACK") {
        panic!("Unexpected done ACK value");
    }

    let mut actual_rom_contents: Vec<u8> = Vec::new();
    read_rom_to_vec(&mut serial_port, &mut actual_rom_contents);

    let mut different = 0;
    for index in 0..ROM_SIZE {
        if rom_contents[index] != actual_rom_contents[index] {
            different += 1;
        }
    }
    if different != 0 {
        panic!("Verification of written contents failed. {} bytes different", different);
    }
}