use std::path::Path;
use std::io::prelude::*;
use std::fs::File;

use serial_port;

const BLOCK_SIZE: usize = 256;
const ROM_SIZE: usize = 131072;

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

pub fn read_rom<P: AsRef<Path>>(device: &str, output_path: P) {
    let mut serial_port = serial_port::open(device);

    let mut file_contents: Vec<u8> = Vec::new();

    let block_count = ROM_SIZE / BLOCK_SIZE;
    let mut block: Vec<u8> = vec![0; BLOCK_SIZE];
    for block_index in 0..block_count {
        let start_index = block_index * BLOCK_SIZE;
        let end_index = start_index + BLOCK_SIZE;

        println!("Reading {} byte block {} of {} (0x{:06X} - 0x{:06X})...", BLOCK_SIZE, block_index + 1, block_count, start_index, end_index);
        let mut failures = 0;
        loop {
            let mut command: Vec<u8> = Vec::new();
            command.push(COMMAND_READ);
            push_address(&mut command, start_index);
            push_address(&mut command, end_index);
            if let Err(err) = serial_port.write_all(&command) {
                panic!("Failed to send read command: {}", err);
            }

            let mut ack = [0u8; 1];
            if let Err(err) = serial_port.read_exact(&mut ack) {
                panic!("Error receiving ACK from flash programmer: {}", err);
            }
            if ack[0] != 0 {
                panic!("Bad ACK from flash programmer: 0x{:02X}", ack[0]);
            }

            if let Err(err) = serial_port.read_exact(&mut block) {
                panic!("Failed to read data from the ROM: {}", err);
            }

            let mut checksum = [0u8; 1];
            if let Err(err) = serial_port.read_exact(&mut checksum) {
                panic!("Failed to read checksum from ROM: {}", err);
            }

            // Verify the checksum and retry if it fails
            if 0 == checksum[0].wrapping_add(block.iter().fold(0, |acc, &data| acc.wrapping_add(data))) {
                // Block read successfully; don't retry
                break;
            } else if failures < MAX_FAILURES {
                println!("Checksum verification failed. Retrying block.");
                failures += 1;
            } else {
                panic!("Failed to read block too many times. Giving up.");
            }
        }

        file_contents.extend(block.iter());
    }

    let mut file = match File::create(output_path.as_ref()) {
        Ok(file) => file,
        Err(err) => panic!("Failed to open file {:?}: {}", output_path.as_ref(), err),
    };
    if let Err(err) = file.write_all(&file_contents) {
        panic!("Failed to write ROM contents to file {:?}: {}", output_path.as_ref(), err);
    }
}