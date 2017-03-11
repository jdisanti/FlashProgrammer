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
Sheet 1 5
Title "GLS27SF010 Flash Programmer"
Date "2017-03-11"
Rev "5"
Comp "John DiSanti"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3050 3900 550  600 
U 58665314
F0 "FTDI USB Serial Interface" 59
F1 "flash_programmer_ftdi.sch" 59
F2 "RXD" O R 3600 4100 60 
F3 "TXD" I R 3600 4300 60 
$EndSheet
Wire Wire Line
	3600 4100 4550 4100
Wire Wire Line
	3600 4300 4550 4300
$Sheet
S 4550 3800 1150 1300
U 58C243E5
F0 "Control" 60
F1 "flash_programmer_control.sch" 60
F2 "RXD" I L 4550 4300 60 
F3 "TXD" O L 4550 4100 60 
F4 "D[0..7]" B R 5700 4200 60 
F5 "A[0..16]" O R 5700 4350 60 
F6 "PGM_L" O R 5700 4500 60 
F7 "OE_L" O R 5700 4650 60 
F8 "CE_L" O R 5700 4800 60 
F9 "VPP_12V_EN_L" O R 5700 4000 60 
F10 "A9_VPP_EN_L" O R 5700 4950 60 
$EndSheet
$Sheet
S 6300 3800 1000 1300
U 58BA78AE
F0 "Flash ROM" 60
F1 "flash_programmer_flash_chip.sch" 60
F2 "A[0..16]" I L 6300 4350 60 
F3 "D[0..7]" B L 6300 4200 60 
F4 "OE_L" I L 6300 4650 60 
F5 "CE_L" I L 6300 4800 60 
F6 "PGM_L" I L 6300 4500 60 
F7 "VPP_12V" O R 7300 4000 60 
F8 "A9_VPP_EN_L" O L 6300 4950 60 
$EndSheet
Text Label 3900 4100 0    60   ~ 0
COM1
Text Label 3900 4300 0    60   ~ 0
COM2
$Sheet
S 6300 2600 1000 850 
U 58C44875
F0 "12V PSU" 60
F1 "flash_programmer_12v_source.sch" 60
F2 "VPP_12V_EN_L" I L 6300 3250 60 
F3 "VPP_5V_12V" O R 7300 2900 60 
$EndSheet
Wire Wire Line
	5700 4000 5950 4000
Wire Wire Line
	5950 4000 5950 3250
Wire Wire Line
	5950 3250 6300 3250
Wire Bus Line
	5700 4200 6300 4200
Wire Bus Line
	5700 4350 6300 4350
Wire Wire Line
	5700 4500 6300 4500
Wire Wire Line
	5700 4650 6300 4650
Wire Wire Line
	5700 4800 6300 4800
Wire Wire Line
	5700 4950 6300 4950
Wire Wire Line
	7300 2900 7700 2900
Wire Wire Line
	7700 2900 7700 4000
Wire Wire Line
	7700 4000 7300 4000
Text Notes 650  1150 0    394  ~ 0
GLS27SF010 Flash Programmer
Text Notes 700  1450 0    118  ~ 0
Designed by John DiSanti, 2016-2017
Text Notes 700  1950 0    79   ~ 0
USB peripheral that reads, erases, and writes the GLS27SF010 Flash ROM.\nThis was made as a learning exercise, and as the first step in a home-made\n6502 computer as the ROM flasher.
$EndSCHEMATC
