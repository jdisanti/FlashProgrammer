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

use std::time::Duration;

use error::*;

use serial;
use serial::prelude::*;

const SERIAL_SETTINGS: serial::PortSettings = serial::PortSettings {
    baud_rate: serial::BaudOther(500_000),
    char_size: serial::Bits8,
    parity: serial::ParityNone,
    stop_bits: serial::Stop1,
    flow_control: serial::FlowNone,
};

pub fn open(device: &str) -> Result<serial::SystemPort> {
    let mut serial_port = serial::open(device)
        .chain_err(|| format!("Failed to open serial port {}", device))?;
    serial_port
        .configure(&SERIAL_SETTINGS)
        .chain_err(|| "Failed to configure the serial port")?;
    serial_port
        .set_timeout(Duration::from_secs(1))
        .chain_err(|| "Failed to set timeout on serial port")?;
    Ok(serial_port)
}
