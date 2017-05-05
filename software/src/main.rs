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

extern crate byteorder;
#[macro_use]
extern crate clap;
extern crate serial;
extern crate term;

mod constants;
mod read;
mod write;
mod serial_port;

fn main() {
    let matches = clap_app!(flash_programmer =>
        (version: "1.0")
        (author: "John DiSanti <johndisanti@gmail.com>")
        (about: "Flash programmer software")
        (@subcommand read =>
            (about: "reads contents of flash ROM to file")
            (@arg DEVICE: +required "Sets the serial port to use")
            (@arg OUTPUT: +required "Sets the output file to write to"))
        (@subcommand write =>
            (about: "writes the contents of a file to the ROM")
            (@arg DEVICE: +required "Sets the serial port to use")
            (@arg INPUT: +required "Sets the input file to read from")))
        .get_matches();

    if let Some(ref matches) = matches.subcommand_matches("read") {
        read::read_rom(matches.value_of("DEVICE").unwrap(),
                       matches.value_of("OUTPUT").unwrap());
    } else if let Some(ref matches) = matches.subcommand_matches("write") {
        write::write_rom(matches.value_of("DEVICE").unwrap(),
                         matches.value_of("INPUT").unwrap());
    }
}
