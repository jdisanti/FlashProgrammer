#[macro_use]
extern crate clap;
extern crate serial;

mod read;
mod write;
mod erase;
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
            (@arg INPUT: +required "Sets the input file to read from"))
        (@subcommand erase =>
            (about: "erases the ROM")
            (@arg DEVICE: +required "Sets the serial port to use")))
        .get_matches();

    if let Some(ref matches) = matches.subcommand_matches("read") {
        read::read_rom(matches.value_of("DEVICE").unwrap(),
                       matches.value_of("OUTPUT").unwrap());
    } else if let Some(ref matches) = matches.subcommand_matches("write") {
        write::write_rom(matches.value_of("DEVICE").unwrap(),
                         matches.value_of("INPUT").unwrap());
    } else if let Some(ref matches) = matches.subcommand_matches("erase") {
        erase::erase_rom(matches.value_of("DEVICE").unwrap());
    }
}
