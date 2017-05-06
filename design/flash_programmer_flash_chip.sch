EESchema Schematic File Version 2
LIBS:gls27sf010
LIBS:atmega328au
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
Sheet 3 7
Title "GLS27SF010 Flash Programmer"
Date "2017-03-11"
Rev "5"
Comp "Copyright 2017 John DiSanti"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C301
U 1 1 58BA7A5E
P 3450 6350
F 0 "C301" V 3300 6250 50  0000 L CNN
F 1 "100nF" V 3600 6250 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3488 6200 50  0001 C CNN
F 3 "" H 3450 6350 50  0000 C CNN
	1    3450 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 7300 3400 7300
Wire Wire Line
	3200 7200 3400 7200
Wire Wire Line
	3200 7100 3400 7100
$Comp
L VCC #PWR015
U 1 1 58BA7A7D
P 3700 6500
F 0 "#PWR015" H 3700 6350 50  0001 C CNN
F 1 "VCC" H 3700 6650 50  0000 C CNN
F 2 "" H 3700 6500 50  0000 C CNN
F 3 "" H 3700 6500 50  0000 C CNN
	1    3700 6500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 58BA7A83
P 3200 6500
F 0 "#PWR016" H 3200 6250 50  0001 C CNN
F 1 "GND" H 3200 6350 50  0000 C CNN
F 2 "" H 3200 6500 50  0000 C CNN
F 3 "" H 3200 6500 50  0000 C CNN
	1    3200 6500
	1    0    0    -1  
$EndComp
Text Label 6250 2450 0    60   ~ 0
A14
Text Label 6250 2550 0    60   ~ 0
A13
Text Label 6250 2950 0    60   ~ 0
A8
Text Label 6250 2750 0    60   ~ 0
A11
Text Label 6250 2850 0    60   ~ 0
A10
Text Label 6250 2250 0    60   ~ 0
A16
Text Label 6250 2350 0    60   ~ 0
A15
Text Label 6250 2650 0    60   ~ 0
A12
Text Label 6250 3050 0    60   ~ 0
A7
Text Label 6250 3150 0    60   ~ 0
A6
Text Label 6250 3250 0    60   ~ 0
A5
Text Label 6250 3350 0    60   ~ 0
A4
Text Label 6250 3450 0    60   ~ 0
A3
Text Label 6250 3550 0    60   ~ 0
A2
Text Label 6250 3650 0    60   ~ 0
A1
Text Label 6250 3750 0    60   ~ 0
A0
Text Label 4800 2650 0    60   ~ 0
D0
Text Label 4800 2750 0    60   ~ 0
D1
Text Label 4800 2850 0    60   ~ 0
D2
Text Label 4800 2950 0    60   ~ 0
D3
Text Label 4800 3050 0    60   ~ 0
D4
Text Label 4800 3150 0    60   ~ 0
D5
Text Label 4800 3250 0    60   ~ 0
D6
Text Label 4800 3350 0    60   ~ 0
D7
Text Notes 600  1100 0    394  ~ 0
Flash ROM
Text HLabel 6750 2350 2    60   Input ~ 0
A[0..15]
Text HLabel 4450 1850 0    60   BiDi ~ 0
D[0..7]
Text HLabel 3400 7200 2    60   Input ~ 0
OE_L
Wire Wire Line
	3100 6000 3650 6000
Text Label 6700 4050 0    60   ~ 0
A9
Text HLabel 3400 7100 2    60   Input ~ 0
CE_L
Text HLabel 3400 7300 2    60   Input ~ 0
PGM_L
$Comp
L GLS27SF010 U301
U 1 1 58C23D60
P 5000 2250
F 0 "U301" H 5200 2500 60  0000 L CNN
F 1 "GLS27SF010" H 5200 2400 60  0000 L CNN
F 2 "Housings_DIP:DIP-32_W15.24mm" H 5000 2250 60  0001 C CNN
F 3 "" H 5000 2250 60  0001 C CNN
	1    5000 2250
	1    0    0    -1  
$EndComp
$Comp
L GLS27SF010 U301
U 2 1 58C23DC8
P 2400 7100
F 0 "U301" H 2600 7350 60  0000 L CNN
F 1 "GLS27SF010" H 2600 7250 60  0000 L CNN
F 2 "Housings_DIP:DIP-32_W15.24mm" H 2400 7100 60  0001 C CNN
F 3 "" H 2400 7100 60  0001 C CNN
	2    2400 7100
	1    0    0    -1  
$EndComp
$Comp
L GLS27SF010 U301
U 3 1 58C23E29
P 2400 5900
F 0 "U301" H 2600 6150 60  0000 L CNN
F 1 "GLS27SF010" H 2600 6050 60  0000 L CNN
F 2 "Housings_DIP:DIP-32_W15.24mm" H 2400 5900 60  0001 C CNN
F 3 "" H 2400 5900 60  0001 C CNN
	3    2400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6200 3200 6200
Wire Wire Line
	3200 6200 3200 6500
Wire Wire Line
	3100 6100 3700 6100
Wire Wire Line
	3700 6100 3700 6500
Wire Wire Line
	6200 3750 6450 3750
Wire Wire Line
	6200 3650 6450 3650
Wire Wire Line
	6200 3550 6450 3550
Wire Wire Line
	6200 3450 6450 3450
Wire Wire Line
	6200 3350 6450 3350
Wire Wire Line
	6200 3250 6450 3250
Wire Wire Line
	6200 3150 6450 3150
Wire Wire Line
	6200 3050 6450 3050
Wire Wire Line
	6200 2950 6450 2950
Wire Wire Line
	6200 2850 6450 2850
Wire Wire Line
	6200 2750 6450 2750
Wire Wire Line
	6200 2650 6450 2650
Wire Wire Line
	6200 2550 6450 2550
Wire Wire Line
	6200 2450 6450 2450
Wire Wire Line
	6200 2350 6450 2350
Wire Wire Line
	6200 2250 6750 2250
Wire Wire Line
	5000 2650 4750 2650
Wire Wire Line
	5000 2750 4750 2750
Wire Wire Line
	5000 2850 4750 2850
Wire Wire Line
	5000 2950 4750 2950
Wire Wire Line
	5000 3050 4750 3050
Wire Wire Line
	5000 3150 4750 3150
Wire Wire Line
	5000 3250 4750 3250
Wire Wire Line
	5000 3350 4750 3350
Wire Bus Line
	6550 2450 6550 3950
Entry Wire Line
	6450 3750 6550 3850
Entry Wire Line
	6450 3650 6550 3750
Entry Wire Line
	6450 3550 6550 3650
Entry Wire Line
	6450 3450 6550 3550
Entry Wire Line
	6450 3350 6550 3450
Entry Wire Line
	6450 3250 6550 3350
Entry Wire Line
	6450 3150 6550 3250
Entry Wire Line
	6450 3050 6550 3150
Entry Wire Line
	6450 2950 6550 3050
Entry Wire Line
	6450 2850 6550 2950
Entry Wire Line
	6450 2750 6550 2850
Entry Wire Line
	6450 2650 6550 2750
Entry Wire Line
	6450 2550 6550 2650
Entry Wire Line
	6450 2450 6550 2550
Entry Wire Line
	6450 2350 6550 2450
Wire Bus Line
	4650 1950 4650 3250
Entry Wire Line
	6550 3950 6650 4050
Text HLabel 3650 6000 2    60   Input ~ 0
VPP_5V_12V
Text HLabel 8750 5150 2    60   Input ~ 0
A9_VPP_EN_L
$Comp
L D_Schottky D301
U 1 1 58C55F37
P 7150 4350
F 0 "D301" V 7250 4450 50  0000 C CNN
F 1 "BAT54" V 7150 4500 50  0000 C CNN
F 2 "Diodes_SMD:D_SOT-23_ANK" H 7150 4350 50  0001 C CNN
F 3 "" H 7150 4350 50  0000 C CNN
	1    7150 4350
	0    -1   -1   0   
$EndComp
$Comp
L R R302
U 1 1 58C56660
P 8400 5150
F 0 "R302" V 8480 5150 50  0000 C CNN
F 1 "10k" V 8400 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 5150 50  0001 C CNN
F 3 "" H 8400 5150 50  0000 C CNN
	1    8400 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 5150 8100 5150
Wire Wire Line
	7800 5350 7800 5450
$Comp
L GND #PWR017
U 1 1 58C5689C
P 7800 5450
F 0 "#PWR017" H 7800 5200 50  0001 C CNN
F 1 "GND" H 7800 5300 50  0000 C CNN
F 2 "" H 7800 5450 50  0000 C CNN
F 3 "" H 7800 5450 50  0000 C CNN
	1    7800 5450
	1    0    0    -1  
$EndComp
Text HLabel 8750 4650 2    60   Input ~ 0
VPP_5V_12V
Wire Wire Line
	8750 5150 8550 5150
Wire Wire Line
	7800 4950 7800 4650
$Comp
L R R301
U 1 1 58C56ACC
P 8400 4650
F 0 "R301" V 8480 4650 50  0000 C CNN
F 1 "1k" V 8400 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 4650 50  0001 C CNN
F 3 "" H 8400 4650 50  0000 C CNN
	1    8400 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 4650 8750 4650
Wire Wire Line
	7600 4650 8250 4650
Connection ~ 7800 4650
$Comp
L D_Schottky D302
U 1 1 58C56F28
P 7450 4650
F 0 "D302" H 7450 4750 50  0000 C CNN
F 1 "BAT54" H 7450 4550 50  0000 C CNN
F 2 "Diodes_SMD:D_SOT-23_ANK" H 7450 4650 50  0001 C CNN
F 3 "" H 7450 4650 50  0000 C CNN
	1    7450 4650
	1    0    0    -1  
$EndComp
Connection ~ 7150 4650
Wire Wire Line
	5600 4650 5600 4250
Text Label 6150 4650 0    60   ~ 0
A9_VPP
Wire Wire Line
	3300 6350 3200 6350
Connection ~ 3200 6350
Wire Wire Line
	3600 6350 3700 6350
Connection ~ 3700 6350
Text Notes 7600 4250 0    60   ~ 0
When A9_VPP_EN_L is HIGH, VPP_5V_12V is diverted\nto GND so that 12V is not asserted on the A9_VPP line.\nThe diode then prevents the A9 signal from also\ngetting diverted to ground.\n\nWhen A9_VPP_EN_L is LOW, VPP_5V_12V gets asserted\non the A9_VPP line, and the value of A9 no longer\nmatters. The diode should prevent the 12V from\ndamaging anything on the A9 line.
Text HLabel 6750 2250 2    60   Input ~ 0
A16
Entry Bus Bus
	4550 1850 4650 1950
Wire Bus Line
	4550 1850 4450 1850
Wire Bus Line
	6550 2450 6650 2350
Wire Bus Line
	6650 2350 6750 2350
Entry Wire Line
	4650 2550 4750 2650
Entry Wire Line
	4650 2650 4750 2750
Entry Wire Line
	4650 2750 4750 2850
Entry Wire Line
	4650 2850 4750 2950
Entry Wire Line
	4650 2950 4750 3050
Entry Wire Line
	4650 3050 4750 3150
Entry Wire Line
	4650 3150 4750 3250
Entry Wire Line
	4650 3250 4750 3350
Text Notes 1100 4700 0    60   ~ 0
D[0..7]\n  Data bus\n\nA[0..15]\n  First 16-bits of the address bus.\n\nA16\n  The 17th bit of the address bus. This had to be\n  separate from A[0..15] due to KiCad limitations\n  since it's coming from Control instead of from\n  the Address Bus.\n\nVPP_12V\n  Input from 12V power supply.\n\nA9_VPP_EN_L\n  Enable for asserting 12V on the A9 line.\n\nCE_L\n  Enable for the Flash ROM. Pulled LOW\n  for all read, erase, and write operations.\n\nOE_L\n  Enable for outputting data to the data\n  bus from the Flash ROM.\n\nPGM_L\n  Enable for erasing/writing the Flash ROM.
Wire Wire Line
	7150 4500 7150 4650
Wire Wire Line
	7150 4050 7150 4200
Wire Wire Line
	5600 4650 7300 4650
Wire Wire Line
	7150 4050 6650 4050
Text Notes 2600 1850 2    118  ~ 0
Signal Descriptions
$Comp
L Q_NPN_BEC Q301
U 1 1 58CA5836
P 7900 5150
F 0 "Q301" H 8100 5200 50  0000 L CNN
F 1 "2N3904" H 8100 5100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 8100 5250 50  0001 C CNN
F 3 "" H 7900 5150 50  0000 C CNN
	1    7900 5150
	-1   0    0    -1  
$EndComp
Wire Notes Line
	5900 4750 5900 5100
Text Notes 5000 5450 0    60   ~ 0
A future revision should add a pull-down\nresistor to the A9 line here so that the A9\nsignal can propagate faster than 160uS.
$EndSCHEMATC
