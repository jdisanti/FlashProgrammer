EESchema Schematic File Version 2
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
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GLS27SF010 U?
U 1 1 58BA7A57
P 2600 3400
F 0 "U?" H 2600 5150 60  0000 C CNN
F 1 "GLS27SF010" H 2600 3350 60  0000 C CNN
F 2 "Housings_DIP:DIP-32_W15.24mm" H 2600 3450 60  0001 C CNN
F 3 "" H 2600 3450 60  0001 C CNN
	1    2600 3400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58BA7A5E
P 2600 3750
F 0 "C?" H 2625 3850 50  0000 L CNN
F 1 "120nF" H 2625 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2638 3600 50  0001 C CNN
F 3 "" H 2600 3750 50  0000 C CNN
	1    2600 3750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 58BA7A65
P 2900 3750
F 0 "#PWR?" H 2900 3500 50  0001 C CNN
F 1 "GND" H 2900 3600 50  0000 C CNN
F 2 "" H 2900 3750 50  0000 C CNN
F 3 "" H 2900 3750 50  0000 C CNN
	1    2900 3750
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 58BA7A6B
P 2300 3750
F 0 "#PWR?" H 2300 3600 50  0001 C CNN
F 1 "VCC" H 2300 3900 50  0000 C CNN
F 2 "" H 2300 3750 50  0000 C CNN
F 3 "" H 2300 3750 50  0000 C CNN
	1    2300 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 3750 2450 3750
Wire Wire Line
	2750 3750 2900 3750
Wire Wire Line
	3050 1900 3450 1900
Wire Wire Line
	3050 2600 3450 2600
Wire Wire Line
	3050 2800 3450 2800
Text Label 3150 1900 0    60   ~ 0
PGM#
Text Label 3200 2600 0    60   ~ 0
OE#
Text Label 3200 2800 0    60   ~ 0
CE#
Wire Wire Line
	3050 1800 3250 1800
Wire Wire Line
	3250 1800 3250 1650
Wire Wire Line
	2150 3300 1950 3300
Wire Wire Line
	1950 3300 1950 3450
$Comp
L VCC #PWR?
U 1 1 58BA7A7D
P 3250 1650
F 0 "#PWR?" H 3250 1500 50  0001 C CNN
F 1 "VCC" H 3250 1800 50  0000 C CNN
F 2 "" H 3250 1650 50  0000 C CNN
F 3 "" H 3250 1650 50  0000 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58BA7A83
P 1950 3450
F 0 "#PWR?" H 1950 3200 50  0001 C CNN
F 1 "GND" H 1950 3300 50  0000 C CNN
F 2 "" H 1950 3450 50  0000 C CNN
F 3 "" H 1950 3450 50  0000 C CNN
	1    1950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1800 1850 1800
Text Label 1900 1800 0    60   ~ 0
VPP
Wire Wire Line
	3050 2300 3900 2300
Wire Wire Line
	3050 2200 3900 2200
Wire Wire Line
	3050 2100 3900 2100
Wire Wire Line
	2150 1900 1400 1900
Wire Wire Line
	2150 2000 1400 2000
Wire Wire Line
	2150 2100 1400 2100
Wire Wire Line
	2150 2200 1400 2200
Wire Wire Line
	2150 2300 1400 2300
Wire Wire Line
	2150 2400 1400 2400
Wire Wire Line
	2150 2500 1400 2500
Wire Wire Line
	2150 2600 1400 2600
Wire Wire Line
	2150 2700 1400 2700
Wire Wire Line
	2150 2800 1400 2800
Wire Wire Line
	2150 2900 1400 2900
Wire Wire Line
	3050 2700 3900 2700
Wire Bus Line
	3900 1350 3900 2700
Wire Bus Line
	1400 1350 1400 2900
Connection ~ 3900 2700
Connection ~ 3900 2300
Connection ~ 3900 2200
Connection ~ 3900 2100
Connection ~ 1400 2800
Connection ~ 1400 2900
Connection ~ 1400 2700
Connection ~ 1400 2600
Connection ~ 1400 2500
Connection ~ 1400 2400
Connection ~ 1400 2300
Connection ~ 1400 2200
Connection ~ 1400 2100
Connection ~ 1400 2000
Connection ~ 1400 1900
Text Label 1400 1700 1    60   ~ 0
A[0..16]
Text Label 7150 4750 1    60   ~ 0
A[0..16]
Wire Wire Line
	3050 2500 3900 2500
Connection ~ 3900 2500
Text Label 3700 2100 0    60   ~ 0
A14
Text Label 3700 2200 0    60   ~ 0
A13
Text Label 3700 2300 0    60   ~ 0
A8
Text Label 3700 2500 0    60   ~ 0
A11
Text Label 3700 2700 0    60   ~ 0
A10
Text Label 1500 1900 0    60   ~ 0
A16
Text Label 1500 2000 0    60   ~ 0
A15
Text Label 1500 2100 0    60   ~ 0
A12
Text Label 1500 2200 0    60   ~ 0
A7
Text Label 1500 2300 0    60   ~ 0
A6
Text Label 1500 2400 0    60   ~ 0
A5
Text Label 1500 2500 0    60   ~ 0
A4
Text Label 1500 2600 0    60   ~ 0
A3
Text Label 1500 2700 0    60   ~ 0
A2
Text Label 1500 2800 0    60   ~ 0
A1
Text Label 1500 2900 0    60   ~ 0
A0
Wire Wire Line
	3050 2900 3450 2900
Wire Wire Line
	3050 3000 3450 3000
Wire Wire Line
	3050 3100 3450 3100
Wire Wire Line
	3050 3200 3450 3200
Wire Wire Line
	3050 3300 3450 3300
Wire Wire Line
	2150 3000 1750 3000
Wire Wire Line
	2150 3100 1750 3100
Wire Wire Line
	2150 3200 1750 3200
Text Label 1850 3000 0    60   ~ 0
D0
Text Label 1850 3100 0    60   ~ 0
D1
Text Label 1850 3200 0    60   ~ 0
D2
Text Label 3250 3300 0    60   ~ 0
D3
Text Label 3250 3200 0    60   ~ 0
D4
Text Label 3250 3100 0    60   ~ 0
D5
Text Label 3250 3000 0    60   ~ 0
D6
Text Label 3250 2900 0    60   ~ 0
D7
Text Notes 1250 1250 0    60   ~ 0
Flash ROM under read/write
Text Notes 1850 4100 0    60   ~ 0
Bypass capacitors for GLS27SF010
Wire Notes Line
	1250 1250 4000 1250
Wire Notes Line
	4000 1250 4000 4200
Wire Notes Line
	4000 4200 1250 4200
Wire Notes Line
	1250 4200 1250 1250
$Comp
L MAX662A U?
U 1 1 58BA7CD2
P 9500 2550
F 0 "U?" H 9500 3100 60  0000 C CNN
F 1 "MAX662A" H 9500 2500 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9400 2450 60  0001 C CNN
F 3 "" H 9400 2450 60  0001 C CNN
	1    9500 2550
	1    0    0    -1  
$EndComp
Text Notes 8750 3400 0    60   ~ 0
Bypass capacitors for MAX662A
Wire Wire Line
	9050 2350 8500 2350
Wire Wire Line
	8500 2350 8500 2600
Wire Wire Line
	8500 2600 8600 2600
Wire Wire Line
	8900 2600 9050 2600
Wire Wire Line
	9050 2600 9050 2450
Wire Wire Line
	9050 2250 8500 2250
Wire Wire Line
	8500 2250 8500 2000
Wire Wire Line
	8500 2000 8600 2000
Wire Wire Line
	8900 2000 9050 2000
Wire Wire Line
	9050 2000 9050 2150
Wire Wire Line
	9950 2350 10750 2350
Text Label 10600 2350 0    60   ~ 0
VPP
$Comp
L GND #PWR?
U 1 1 58BA7CE6
P 10200 2000
F 0 "#PWR?" H 10200 1750 50  0001 C CNN
F 1 "GND" H 10200 1850 50  0000 C CNN
F 2 "" H 10200 2000 50  0000 C CNN
F 3 "" H 10200 2000 50  0000 C CNN
	1    10200 2000
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR?
U 1 1 58BA7CEC
P 10050 2600
F 0 "#PWR?" H 10050 2450 50  0001 C CNN
F 1 "VCC" H 10050 2750 50  0000 C CNN
F 2 "" H 10050 2600 50  0000 C CNN
F 3 "" H 10050 2600 50  0000 C CNN
	1    10050 2600
	-1   0    0    1   
$EndComp
Text Label 10050 2000 1    60   ~ 0
STU
Text Notes 8300 1700 0    60   ~ 0
12V Step Up Voltage Supply
$Comp
L C C?
U 1 1 58BA7CF4
P 9500 3050
F 0 "C?" H 9525 3150 50  0000 L CNN
F 1 "4.7uF" H 9525 2950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9538 2900 50  0001 C CNN
F 3 "" H 9500 3050 50  0000 C CNN
	1    9500 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 58BA7CFB
P 9800 3050
F 0 "#PWR?" H 9800 2800 50  0001 C CNN
F 1 "GND" H 9800 2900 50  0000 C CNN
F 2 "" H 9800 3050 50  0000 C CNN
F 3 "" H 9800 3050 50  0000 C CNN
	1    9800 3050
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 58BA7D01
P 9200 3050
F 0 "#PWR?" H 9200 2900 50  0001 C CNN
F 1 "VCC" H 9200 3200 50  0000 C CNN
F 2 "" H 9200 3050 50  0000 C CNN
F 3 "" H 9200 3050 50  0000 C CNN
	1    9200 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 3050 9350 3050
Wire Wire Line
	9650 3050 9800 3050
$Comp
L C C?
U 1 1 58BA7D09
P 8750 2000
F 0 "C?" H 8775 2100 50  0000 L CNN
F 1 "22nF" H 8775 1900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8788 1850 50  0001 C CNN
F 3 "" H 8750 2000 50  0000 C CNN
	1    8750 2000
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 58BA7D10
P 8750 2600
F 0 "C?" H 8775 2700 50  0000 L CNN
F 1 "22nF" H 8775 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8788 2450 50  0001 C CNN
F 3 "" H 8750 2600 50  0000 C CNN
	1    8750 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 2450 10050 2450
Wire Wire Line
	10050 2450 10050 2600
$Comp
L C C?
U 1 1 58BA7D19
P 10450 2650
F 0 "C?" H 10475 2750 50  0000 L CNN
F 1 "4.7uF" H 10475 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10488 2500 50  0001 C CNN
F 3 "" H 10450 2650 50  0000 C CNN
	1    10450 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 2150 10050 2150
Wire Wire Line
	10050 2150 10050 1850
Wire Wire Line
	9950 2250 10200 2250
Wire Wire Line
	10200 2250 10200 2000
Wire Wire Line
	10450 2500 10450 2350
Connection ~ 10450 2350
Wire Wire Line
	10450 2800 10450 2900
$Comp
L GND #PWR?
U 1 1 58BA7D27
P 10450 2900
F 0 "#PWR?" H 10450 2650 50  0001 C CNN
F 1 "GND" H 10450 2750 50  0000 C CNN
F 2 "" H 10450 2900 50  0000 C CNN
F 3 "" H 10450 2900 50  0000 C CNN
	1    10450 2900
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 58BA7E7D
P 2450 5700
F 0 "D?" H 2450 5800 50  0000 C CNN
F 1 "LED" H 2450 5600 50  0000 C CNN
F 2 "LEDs:LED_0805" H 2450 5700 50  0001 C CNN
F 3 "" H 2450 5700 50  0000 C CNN
	1    2450 5700
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 58BA7E84
P 2000 5700
F 0 "R?" V 2080 5700 50  0000 C CNN
F 1 "150" V 2000 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 5700 50  0001 C CNN
F 3 "" H 2000 5700 50  0000 C CNN
	1    2000 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 5700 1700 5700
Wire Wire Line
	2300 5700 2150 5700
$Comp
L GND #PWR?
U 1 1 58BA7E8D
P 3350 5700
F 0 "#PWR?" H 3350 5450 50  0001 C CNN
F 1 "GND" H 3350 5550 50  0000 C CNN
F 2 "" H 3350 5700 50  0000 C CNN
F 3 "" H 3350 5700 50  0000 C CNN
	1    3350 5700
	0    -1   -1   0   
$EndComp
Text Notes 1450 5350 0    60   ~ 0
Write indicator light
Text Label 3450 6450 2    60   ~ 0
STU
$Comp
L 2N3906 U?
U 1 1 58BA7E95
P 3050 5800
F 0 "U?" H 3050 6150 60  0000 C CNN
F 1 "2N3906" H 3050 6050 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3050 5800 60  0001 C CNN
F 3 "" H 3050 5800 60  0001 C CNN
	1    3050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5700 2750 5700
$Comp
L VCC #PWR?
U 1 1 58BA7E9D
P 1700 5700
F 0 "#PWR?" H 1700 5550 50  0001 C CNN
F 1 "VCC" H 1700 5850 50  0000 C CNN
F 2 "" H 1700 5700 50  0000 C CNN
F 3 "" H 1700 5700 50  0000 C CNN
	1    1700 5700
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 58BA7EA3
P 3050 6200
F 0 "R?" V 3130 6200 50  0000 C CNN
F 1 "10k" V 3050 6200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2980 6200 50  0001 C CNN
F 3 "" H 3050 6200 50  0000 C CNN
	1    3050 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 5950 3050 6050
Wire Wire Line
	3050 6350 3050 6450
Wire Wire Line
	3050 6450 3450 6450
Wire Notes Line
	1450 5350 3550 5350
Wire Notes Line
	3550 5350 3550 6500
Wire Notes Line
	3550 6500 1450 6500
Wire Notes Line
	1450 6500 1450 5350
Wire Bus Line
	5100 7300 6350 7300
Text Label 5250 7300 0    60   ~ 0
A[0..16]
Text HLabel 6350 7300 2    60   Input ~ 0
A[0..16]
Wire Bus Line
	3450 2900 3450 3750
Connection ~ 3450 3000
Connection ~ 3450 3100
Connection ~ 3450 3200
Connection ~ 3450 3300
Wire Bus Line
	1750 3000 1750 3750
Connection ~ 1750 3100
Connection ~ 1750 3200
Text Label 1750 3750 1    60   ~ 0
D[0..7]
Wire Bus Line
	5100 7450 6350 7450
Text Label 5250 7450 0    60   ~ 0
D[0..7]
Text HLabel 6350 7450 2    60   Input ~ 0
D[0..7]
$Comp
L D_Schottky D?
U 1 1 58BAFC52
P 6400 5050
F 0 "D?" H 6400 5150 50  0000 C CNN
F 1 "BAT54" H 6400 4950 50  0000 C CNN
F 2 "" H 6400 5050 50  0000 C CNN
F 3 "" H 6400 5050 50  0000 C CNN
	1    6400 5050
	1    0    0    -1  
$EndComp
Wire Bus Line
	7150 5050 7150 4350
Wire Wire Line
	7150 5050 6550 5050
Text Label 6750 5050 0    60   ~ 0
A9
Wire Wire Line
	5400 5050 6250 5050
Wire Wire Line
	7150 5350 5900 5350
Text Label 6750 5350 0    60   ~ 0
VPP
Wire Wire Line
	5900 5350 5900 5050
Connection ~ 5900 5050
Text Label 5500 5050 0    60   ~ 0
A9_P
Wire Wire Line
	3050 2400 3450 2400
Text Label 3150 2400 0    60   ~ 0
A9_P
Text Notes 5150 5550 0    60   ~ 0
TODO: VPP needs to be disconnected somehow when not in write mode
Wire Wire Line
	5100 7600 6350 7600
Text HLabel 6350 7600 2    60   Input ~ 0
STU
Text Label 5250 7600 0    60   ~ 0
STU
$EndSCHEMATC
