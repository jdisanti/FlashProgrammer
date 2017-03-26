use std::time::Duration;

use serial;
use serial::prelude::*;

const SERIAL_SETTINGS: serial::PortSettings = serial::PortSettings {
    baud_rate: serial::BaudOther(500_000),
    char_size: serial::Bits8,
    parity: serial::ParityNone,
    stop_bits: serial::Stop1,
    flow_control: serial::FlowNone
};

pub fn open(device: &str) -> serial::SystemPort {
    let mut serial_port = match serial::open(device) {
        Ok(port) => port,
        Err(err) => panic!("Failed to open serial port: {}", err),
    };

    if let Err(err) = serial_port.configure(&SERIAL_SETTINGS) {
        panic!("Failed to configure the serial port: {}", err);
    }

    if let Err(err) = serial_port.set_timeout(Duration::from_secs(1)) {
        panic!("Failed to set timeout on serial port: {}", err);
    }

    serial_port
}