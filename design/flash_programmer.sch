EESchema Schematic File Version 2
LIBS:gls27sf010
LIBS:atmega328p
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
Sheet 1 7
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
S 2550 5150 950  900 
U 58665314
F0 "FTDI USB Serial Interface" 59
F1 "flash_programmer_ftdi.sch" 59
F2 "RXD" I R 3500 5850 60 
F3 "TXD" O R 3500 5650 60 
F4 "RX_TX_L" O L 2550 5350 60 
$EndSheet
Wire Wire Line
	3500 5650 4050 5650
Wire Wire Line
	3500 5850 4050 5850
$Sheet
S 6550 3450 1000 1300
U 58BA78AE
F0 "Flash ROM" 60
F1 "flash_programmer_flash_chip.sch" 60
F2 "OE_L" I L 6550 4300 60 
F3 "CE_L" I L 6550 4450 60 
F4 "PGM_L" I L 6550 4150 60 
F5 "A16" I R 7550 4200 60 
F6 "A[0..15]" I R 7550 4000 60 
F7 "D[0..7]" B L 6550 3850 60 
F8 "A9_VPP_EN_L" I L 6550 4600 60 
F9 "VPP_5V_12V" I R 7550 3650 60 
$EndSheet
Text Label 3650 5650 0    60   ~ 0
COM1
Text Label 3650 5850 0    60   ~ 0
COM2
$Sheet
S 6550 2250 1000 850 
U 58C44875
F0 "12V PSU" 60
F1 "flash_programmer_12v_source.sch" 60
F2 "VPP_12V_EN_L" I L 6550 2900 60 
F3 "VPP_5V_12V" O R 7550 2550 60 
$EndSheet
Wire Wire Line
	5850 3650 6200 3650
Wire Wire Line
	6200 3650 6200 2900
Wire Wire Line
	3800 2900 6550 2900
Wire Bus Line
	5850 3850 6550 3850
Wire Wire Line
	5850 4150 6550 4150
Wire Wire Line
	5850 4300 6550 4300
Wire Wire Line
	5850 4450 6550 4450
Wire Wire Line
	5850 4600 6550 4600
Wire Wire Line
	7550 2550 7950 2550
Wire Wire Line
	7950 2550 7950 3650
Wire Wire Line
	7950 3650 7550 3650
Text Notes 650  1150 0    394  ~ 0
GLS27SF010 Flash Programmer
Text Notes 700  1450 0    118  ~ 0
Designed by John DiSanti, 2016-2017
Text Notes 700  1950 0    79   ~ 0
USB peripheral that reads, erases, and writes the GLS27SF010 Flash ROM.\nThis was made as a learning exercise, and as the first step in a home-made\n6502 computer as the ROM flasher.
$Sheet
S 6550 5100 1000 1050
U 58C678D4
F0 "Address Bus" 60
F1 "flash_programmer_address_bus.sch" 60
F2 "A_SER" I L 6550 5350 60 
F3 "A_SCK" I L 6550 5550 60 
F4 "A_RCK" I L 6550 5750 60 
F5 "A_OE_L" I L 6550 5950 60 
F6 "A[0..15]" O R 7550 5600 60 
$EndSheet
$Sheet
S 4050 3450 1800 2700
U 58C243E5
F0 "Control" 60
F1 "flash_programmer_control.sch" 60
F2 "RXD" I L 4050 5650 60 
F3 "PGM_L" O R 5850 4150 60 
F4 "OE_L" O R 5850 4300 60 
F5 "CE_L" O R 5850 4450 60 
F6 "VPP_12V_EN_L" O R 5850 3650 60 
F7 "A9_VPP_EN_L" O R 5850 4600 60 
F8 "A_SCK" O R 5850 5550 60 
F9 "A_RCK" O R 5850 5750 60 
F10 "A_OE_L" O R 5850 5950 60 
F11 "A_SER" O R 5850 5350 60 
F12 "TXD" O L 4050 5850 60 
F13 "A16" O R 5850 4950 60 
F14 "D[0..7]" B R 5850 3850 60 
$EndSheet
Wire Wire Line
	5850 5350 6550 5350
Wire Wire Line
	5850 5550 6550 5550
Wire Wire Line
	5850 5750 6550 5750
Wire Wire Line
	5850 5950 6550 5950
Wire Bus Line
	7550 5600 8650 5600
Wire Bus Line
	8650 5600 8650 4000
Wire Bus Line
	8650 4000 7550 4000
$Sheet
S 2550 3750 950  850 
U 58C7589B
F0 "LED Indicators" 60
F1 "flash_programmer_leds.sch" 60
F2 "VPP_12V_EN_L" I R 3500 4000 60 
F3 "RX_TX_L" I L 2550 4350 60 
$EndSheet
Wire Wire Line
	2550 5350 2250 5350
Wire Wire Line
	2250 5350 2250 4350
Wire Wire Line
	2250 4350 2550 4350
Wire Wire Line
	3500 4000 3800 4000
Wire Wire Line
	3800 4000 3800 2900
Connection ~ 6200 2900
Wire Wire Line
	5850 4950 8450 4950
Wire Wire Line
	8450 4950 8450 4200
Wire Wire Line
	8450 4200 7550 4200
$EndSCHEMATC
