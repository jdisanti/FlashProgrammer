128KiB 17-bit Addressed 32-pin Flash ROM Programmer
---------------------------------------------------

This package includes the schematic, PCB design, and software for an USB
Flash Programmer to read/write the contents of 128KiB 32-pin Flash ROM chips,
such as the GLS27SF010 by Greenliant.

This is my second electronics project, and a stepping stone to building my
own 8-bit computer. I made a lot of mistakes along the way and learned a ton.
After four PCB revisions, and hours of frustrating debugging, I finally got it
to successfully erase, write, and verify the contents of a ROM.

## Project Structure

The `avr/` directory contains all of the software to be run on the Atmel
ATMEGA328 chip on the board. This needs to be compiled and programmed onto
the board using an ISP on the ISP headers.

The `design/` directory contains the schematic and PCB design in the original
KiCad file formats.

The `software/` directory contains the software that runs on the PC to
communicate with the device over USB serial. It's written in Rust and can
be compiled/run on Linux, Mac, and Windows without a hitch.

Finally, `symbol_generation/` contains some CSV files used to generate
schematic symbols with KiPart.

## License

All of the contents of this package are licensed under the Solderpad 0.51
license. Please read the LICENSE.md included for more details.
