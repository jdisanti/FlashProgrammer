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
Sheet 5 7
Title "GLS27SF010 Flash Programmer"
Date "2017-03-11"
Rev "5"
Comp "Copyright 2017 John DiSanti"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 700  1150 0    394  ~ 0
Address Bus
$Comp
L 74HC595 U501
U 1 1 58C6A1CF
P 4000 3600
F 0 "U501" H 4150 4200 50  0000 C CNN
F 1 "74HC595" H 4000 3000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 4000 3600 50  0001 C CNN
F 3 "" H 4000 3600 50  0000 C CNN
	1    4000 3600
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U502
U 1 1 58C6A1D6
P 4000 5050
F 0 "U502" H 4150 5650 50  0000 C CNN
F 1 "74HC595" H 4000 4450 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 4000 5050 50  0001 C CNN
F 3 "" H 4000 5050 50  0000 C CNN
	1    4000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4050 4800 4050
Wire Wire Line
	4800 4050 4800 4350
Wire Wire Line
	4800 4350 3200 4350
Wire Wire Line
	3200 4350 3200 4600
Wire Wire Line
	3200 4600 3300 4600
Wire Wire Line
	3300 4800 2550 4800
Wire Wire Line
	3300 5100 2550 5100
Wire Wire Line
	3300 3650 2550 3650
Wire Wire Line
	3300 3350 2550 3350
Wire Wire Line
	3150 4900 3300 4900
Wire Wire Line
	3300 3150 2550 3150
Wire Wire Line
	3300 5200 2550 5200
Wire Wire Line
	3300 3750 2550 3750
Wire Wire Line
	4700 5300 5250 5300
Wire Wire Line
	4700 5200 5250 5200
Wire Wire Line
	4700 5100 5250 5100
Wire Wire Line
	4700 5000 5250 5000
Wire Wire Line
	4700 4900 5250 4900
Wire Wire Line
	4700 4800 5250 4800
Wire Wire Line
	4700 4600 5250 4600
Wire Wire Line
	4700 3850 5250 3850
Wire Wire Line
	4700 3750 5250 3750
Wire Wire Line
	4700 3650 5250 3650
Wire Wire Line
	4700 3550 5250 3550
Wire Wire Line
	4700 3450 5250 3450
Wire Wire Line
	4700 3350 5250 3350
Wire Wire Line
	4700 3250 5250 3250
Wire Wire Line
	4700 3150 5250 3150
Text Label 4850 3150 0    60   ~ 0
A0
Text Label 4850 3250 0    60   ~ 0
A1
Text Label 4850 3350 0    60   ~ 0
A2
Text Label 4850 3450 0    60   ~ 0
A3
Text Label 4850 3550 0    60   ~ 0
A4
Text Label 4850 3650 0    60   ~ 0
A5
Text Label 4850 3750 0    60   ~ 0
A6
Text Label 4850 3850 0    60   ~ 0
A7
Text Label 4750 4600 0    60   ~ 0
A8
Text Label 4750 4800 0    60   ~ 0
A10
Text Label 4750 4900 0    60   ~ 0
A11
Text Label 4750 5000 0    60   ~ 0
A12
Text Label 4750 5100 0    60   ~ 0
A13
Text Label 4750 5200 0    60   ~ 0
A14
Text Label 4750 5300 0    60   ~ 0
A15
Wire Wire Line
	4700 4700 5250 4700
Text Label 4750 4700 0    60   ~ 0
A9
$Comp
L C C501
U 1 1 58C6A23F
P 7450 4250
F 0 "C501" H 7475 4350 50  0000 L CNN
F 1 "100nF" H 7475 4150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7488 4100 50  0001 C CNN
F 3 "" H 7450 4250 50  0000 C CNN
	1    7450 4250
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 58C6A246
P 7450 4550
F 0 "#PWR022" H 7450 4300 50  0001 C CNN
F 1 "GND" H 7450 4400 50  0000 C CNN
F 2 "" H 7450 4550 50  0000 C CNN
F 3 "" H 7450 4550 50  0000 C CNN
	1    7450 4550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR023
U 1 1 58C6A24C
P 7450 3950
F 0 "#PWR023" H 7450 3800 50  0001 C CNN
F 1 "VCC" H 7450 4100 50  0000 C CNN
F 2 "" H 7450 3950 50  0000 C CNN
F 3 "" H 7450 3950 50  0000 C CNN
	1    7450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3950 7450 4100
Wire Wire Line
	7450 4400 7450 4550
$Comp
L C C502
U 1 1 58C6A255
P 8050 4250
F 0 "C502" H 8075 4350 50  0000 L CNN
F 1 "100nF" H 8075 4150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8088 4100 50  0001 C CNN
F 3 "" H 8050 4250 50  0000 C CNN
	1    8050 4250
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 58C6A25C
P 8050 4550
F 0 "#PWR024" H 8050 4300 50  0001 C CNN
F 1 "GND" H 8050 4400 50  0000 C CNN
F 2 "" H 8050 4550 50  0000 C CNN
F 3 "" H 8050 4550 50  0000 C CNN
	1    8050 4550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR025
U 1 1 58C6A262
P 8050 3950
F 0 "#PWR025" H 8050 3800 50  0001 C CNN
F 1 "VCC" H 8050 4100 50  0000 C CNN
F 2 "" H 8050 3950 50  0000 C CNN
F 3 "" H 8050 3950 50  0000 C CNN
	1    8050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3950 8050 4100
Wire Wire Line
	8050 4400 8050 4550
Text Notes 6750 4950 0    60   ~ 0
Bypass capacitors for 74HC595 (one per IC)
NoConn ~ 4700 5500
Wire Wire Line
	3300 3450 3150 3450
Text HLabel 5650 5600 2    60   Output ~ 0
A[0..15]
Text Label 3800 4350 0    60   ~ 0
A_SER_QH
Text HLabel 2550 3150 0    60   Input ~ 0
A_SER
Text HLabel 2550 3350 0    60   Input ~ 0
A_SCK
$Comp
L R R501
U 1 1 58C6AA3E
P 3000 3450
F 0 "R501" V 3080 3450 50  0000 C CNN
F 1 "10k" V 3000 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2930 3450 50  0001 C CNN
F 3 "" H 3000 3450 50  0000 C CNN
	1    3000 3450
	0    1    1    0   
$EndComp
$Comp
L R R502
U 1 1 58C6AA7C
P 3000 4900
F 0 "R502" V 3080 4900 50  0000 C CNN
F 1 "10k" V 3000 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2930 4900 50  0001 C CNN
F 3 "" H 3000 4900 50  0000 C CNN
	1    3000 4900
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR026
U 1 1 58C6AABB
P 2750 3450
F 0 "#PWR026" H 2750 3300 50  0001 C CNN
F 1 "VCC" H 2750 3600 50  0000 C CNN
F 2 "" H 2750 3450 50  0000 C CNN
F 3 "" H 2750 3450 50  0000 C CNN
	1    2750 3450
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR027
U 1 1 58C6AADB
P 2750 4900
F 0 "#PWR027" H 2750 4750 50  0001 C CNN
F 1 "VCC" H 2750 5050 50  0000 C CNN
F 2 "" H 2750 4900 50  0000 C CNN
F 3 "" H 2750 4900 50  0000 C CNN
	1    2750 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 3450 2850 3450
Wire Wire Line
	2750 4900 2850 4900
Text HLabel 2550 4800 0    60   Input ~ 0
A_SCK
Text HLabel 2550 3650 0    60   Input ~ 0
A_RCK
Text HLabel 2550 3750 0    60   Input ~ 0
A_OE_L
Text HLabel 2550 5100 0    60   Input ~ 0
A_RCK
Text HLabel 2550 5200 0    60   Input ~ 0
A_OE_L
Entry Wire Line
	5250 3150 5350 3250
Entry Wire Line
	5250 3250 5350 3350
Entry Wire Line
	5250 3350 5350 3450
Entry Wire Line
	5250 3450 5350 3550
Entry Wire Line
	5250 3550 5350 3650
Entry Wire Line
	5250 3650 5350 3750
Entry Wire Line
	5250 3750 5350 3850
Entry Wire Line
	5250 3850 5350 3950
Entry Wire Line
	5250 4600 5350 4700
Entry Wire Line
	5250 4700 5350 4800
Entry Wire Line
	5250 4800 5350 4900
Entry Wire Line
	5250 4900 5350 5000
Entry Wire Line
	5250 5000 5350 5100
Entry Wire Line
	5250 5100 5350 5200
Entry Wire Line
	5250 5200 5350 5300
Entry Wire Line
	5250 5300 5350 5400
Wire Bus Line
	5350 3250 5350 5500
Wire Bus Line
	5350 5500 5450 5600
Wire Bus Line
	5450 5600 5650 5600
Text Notes 6750 3400 0    60   ~ 0
A_SER\n  Serial input for the shift registers.\n\nA_SCK\n  Shift register clock input. Shifts input from\n  A_SER on its rising edge.\n\nA_RCK\n  Storage register clock input. Moves register\n  contents to output latches on rising edge.\n\nA_OE_L\n  Output enable for shift registers. When HIGH,\n  the address pins will go into tri-state.\n\nA[0..15]\n  Address bus output.
Text Notes 8150 1600 2    118  ~ 0
Signal Descriptions
Wire Notes Line
	2800 5300 2800 6050
Text Notes 1750 6400 0    60   ~ 0
A future revision can remove the A_OE_L signal\nand instead just pull these pins low since the\nsignal had to always be kept low in software anyway.
$EndSCHEMATC
