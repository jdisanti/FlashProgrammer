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
KiCad file formats. The BOM file is also here.

The `PDFs/` directory contains PDF output for the schematic and PCB.

The `software/` directory contains the software that runs on the PC to
communicate with the device over USB serial. It's written in Rust and can
be compiled/run on Linux, Mac, and Windows without a hitch.

Finally, `symbol_generation/` contains some CSV files used to generate
schematic symbols with KiPart.

## What I Learned

This project presented a lot of firsts for me. My previous project, a binary
clock, had taught me how to design a digital circuit with a microcontroller,
draw schematics, and create PCBs.

This project, above all other things, taught me patience. If you read the
next section about the mistakes I made, you'll see why. I learned that I
really need to slow down, be sure to read all of the datasheets, double
check my schematics and footprints, and cross-check my schematic against
the datasheets. Then after all of that, wait a week and then do it again.

Coming from a software background made this a very hard lesson. I'm used to
making small incremental changes and getting test results immediately. Working
in an area where incremental changes are expensive, and where testing is
time-consuming, requires a difficult change of mindset.

Something I didn't do with this project was breadboarding. I wanted to see
if I could design and build a working circuit without that step. I've learned
that I can play around with little "mock" circuits in LTSpice to test some
of my assumptions, and then also build those out on breadboard without having
to build the entire circuit. This was useful for designing the A9 signal/12V
switching circuit.

## Mistakes I Made

Since the goal of this project was to learn, I've decided to document all
the mistakes I made for future reference.

**First board (not in version control)**
- I didn't read the entire datasheet for the MAX662A, and thus, didn't realize
  I needed capacitors on the 12V output. This led to there being no 12V supply
  on that board.
- I tried to be clever and soldered the board up in sections so I could test each
  individually. This is how I discovered the 12V supply wasn't working, but I didn't
  continue testing the other sections after that discovery, and thus, didn't
  discover my next mistake until the next board.

**Second board**
- I got the pins on the SOT-23 2N3906 transistor wrong, and lost a decent
  chunk of time debugging that, and then soldering it on upside-down to fix it.
- I discovered that I couldn't use the daisy chaining pin on the 74HC595
  as the 17th bit of the address. I should have looked at the timing diagram
  in the datasheet to verify my assumption. I was actually able to bodge this
  by severing the A16 line and wiring it to the three unused pins on the micro
  (and setting all three pins to the same output since they were tied together).
- I used the ISP pins for both programming the MCU and talking to the ROM chip,
  but I neglected to add resistors so that I could program the MCU while the
  ROM chip was populated on the board. Unfortunately, I didn't realize this at
  the time, and thought I had fried my MCU somehow. Since I had already discovered
  the address line mistake, I just built another revision instead of doing
  more testing (I didn't have a rework station at the time and didn't want to
  solder another board either).

**Third board**
- I discovered that erasing didn't work because I failed to realize that
  the 12V had to be applied to both the VPP and A9 pins during the erase process.

**Fourth board**
- I didn't put a pull-down resistor on the A9 signal after the diodes. This
  forced me to add a hefty delay loop of 160uS in the code that set the address.
  This mistake is still present in the design since it wasn't fatal.

## License

All of the contents of this package are licensed under the Solderpad 0.51
license. Please read the LICENSE.md included for more details.
