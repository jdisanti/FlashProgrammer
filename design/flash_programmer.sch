EESchema Schematic File Version 2
LIBS:gls27sf010
LIBS:flash_programmer
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:flash_programmer-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 4
Title "Flash ROM Programmer for GLS27SF010"
Date "2017-02-12"
Rev "4"
Comp "John DiSanti"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3150 3700 550  600 
U 58665314
F0 "FTDI Circuit" 59
F1 "flash_programmer_ftdi.sch" 59
F2 "RXD" O R 3700 3900 60 
F3 "TXD" I R 3700 4100 60 
$EndSheet
Wire Wire Line
	3700 3900 4650 3900
Wire Wire Line
	3700 4100 4650 4100
$Sheet
S 4650 3600 1150 1300
U 58C243E5
F0 "Control Circuitry" 60
F1 "flash_programmer_control.sch" 60
F2 "RXD" I L 4650 4100 60 
F3 "TXD" O L 4650 3900 60 
F4 "D[0..7]" B R 5800 3800 60 
F5 "A[0..16]" O R 5800 4000 60 
F6 "PGM_L" O R 5800 4200 60 
F7 "OE_L" O R 5800 4400 60 
F8 "CE_L" O R 5800 4600 60 
F9 "STU" O R 5800 4800 60 
$EndSheet
$Sheet
S 6400 3600 1000 1300
U 58BA78AE
F0 "Flash Circuitry" 60
F1 "flash_programmer_flash_chip.sch" 60
F2 "A[0..16]" I L 6400 4000 60 
F3 "D[0..7]" B L 6400 3800 60 
F4 "OE_L" I L 6400 4400 60 
F5 "STU" I L 6400 4800 60 
F6 "CE_L" I L 6400 4600 60 
F7 "PGM_L" I L 6400 4200 60 
$EndSheet
Wire Bus Line
	5800 3800 6400 3800
Wire Bus Line
	5800 4000 6400 4000
Wire Wire Line
	5800 4200 6400 4200
Wire Wire Line
	5800 4400 6400 4400
Wire Wire Line
	5800 4600 6400 4600
Wire Wire Line
	5800 4800 6400 4800
$EndSCHEMATC
