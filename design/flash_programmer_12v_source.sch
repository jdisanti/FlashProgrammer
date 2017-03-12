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
Sheet 4 7
Title "GLS27SF010 Flash Programmer"
Date "2017-03-11"
Rev "5"
Comp "John DiSanti"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MAX662A U401
U 1 1 58C44BF6
P 5650 4050
F 0 "U401" H 5650 4600 60  0000 C CNN
F 1 "MAX662A" H 5650 4000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5550 3950 60  0001 C CNN
F 3 "" H 5550 3950 60  0001 C CNN
	1    5650 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 3850 6650 3850
Wire Wire Line
	6650 3850 6650 4100
Wire Wire Line
	6650 4100 6550 4100
Wire Wire Line
	6250 4100 6100 4100
Wire Wire Line
	6100 4100 6100 3950
Wire Wire Line
	6100 3750 6650 3750
Wire Wire Line
	6650 3750 6650 3500
Wire Wire Line
	6650 3500 6550 3500
Wire Wire Line
	6250 3500 6100 3500
Wire Wire Line
	6100 3500 6100 3650
Wire Wire Line
	3900 3850 5200 3850
$Comp
L GND #PWR018
U 1 1 58C44C09
P 5050 3750
F 0 "#PWR018" H 5050 3500 50  0001 C CNN
F 1 "GND" H 5050 3600 50  0000 C CNN
F 2 "" H 5050 3750 50  0000 C CNN
F 3 "" H 5050 3750 50  0000 C CNN
	1    5050 3750
	0    1    -1   0   
$EndComp
$Comp
L VCC #PWR019
U 1 1 58C44C0F
P 5100 4400
F 0 "#PWR019" H 5100 4250 50  0001 C CNN
F 1 "VCC" H 5100 4550 50  0000 C CNN
F 2 "" H 5100 4400 50  0000 C CNN
F 3 "" H 5100 4400 50  0000 C CNN
	1    5100 4400
	1    0    0    1   
$EndComp
Text Notes 650  1150 0    394  ~ 0
12V Step Up Voltage Supply
$Comp
L C C402
U 1 1 58C44C16
P 5350 4300
F 0 "C402" V 5200 4200 50  0000 L CNN
F 1 "4.7uF" V 5500 4200 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5388 4150 50  0001 C CNN
F 3 "" H 5350 4300 50  0000 C CNN
	1    5350 4300
	0    1    1    0   
$EndComp
$Comp
L C C403
U 1 1 58C44C25
P 6400 3500
F 0 "C403" V 6250 3450 50  0000 L CNN
F 1 "22nF" V 6550 3450 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6438 3350 50  0001 C CNN
F 3 "" H 6400 3500 50  0000 C CNN
	1    6400 3500
	0    -1   1    0   
$EndComp
$Comp
L C C404
U 1 1 58C44C2C
P 6400 4100
F 0 "C404" V 6250 4050 50  0000 L CNN
F 1 "22nF" V 6550 4050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6438 3950 50  0001 C CNN
F 3 "" H 6400 4100 50  0000 C CNN
	1    6400 4100
	0    -1   1    0   
$EndComp
Wire Wire Line
	5200 3950 5100 3950
Wire Wire Line
	5100 3950 5100 4400
$Comp
L C C401
U 1 1 58C44C35
P 4700 4150
F 0 "C401" H 4725 4250 50  0000 L CNN
F 1 "4.7uF" H 4725 4050 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4738 4000 50  0001 C CNN
F 3 "" H 4700 4150 50  0000 C CNN
	1    4700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3650 5200 3650
Wire Wire Line
	4700 4000 4700 3850
Connection ~ 4700 3850
Wire Wire Line
	4700 4300 4700 4400
$Comp
L GND #PWR020
U 1 1 58C44C40
P 4700 4400
F 0 "#PWR020" H 4700 4150 50  0001 C CNN
F 1 "GND" H 4700 4250 50  0000 C CNN
F 2 "" H 4700 4400 50  0000 C CNN
F 3 "" H 4700 4400 50  0000 C CNN
	1    4700 4400
	-1   0    0    -1  
$EndComp
Text HLabel 3900 3650 0    60   Input ~ 0
VPP_12V_EN_L
$Comp
L GND #PWR021
U 1 1 58C44C4A
P 5600 4300
F 0 "#PWR021" H 5600 4050 50  0001 C CNN
F 1 "GND" H 5600 4150 50  0000 C CNN
F 2 "" H 5600 4300 50  0000 C CNN
F 3 "" H 5600 4300 50  0000 C CNN
	1    5600 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 3750 5200 3750
Text HLabel 3900 3850 0    60   Output ~ 0
VPP_5V_12V
Text Notes 1700 3400 0    60   ~ 0
When VPP_12V_EN_L is pulled HIGH, the MAX662A will supply \n12V (50mA absolute max.) on the VPP_5V_12V line. When \nVPP_12V_EN_L is HIGH, then 5V will be observed on VPP_5V_12V.
Text Notes 6800 3900 0    60   ~ 0
The charge-pump capacitors must be ceramic or\ntantalum in the 0.22uF to 1.0uF range.
Wire Wire Line
	5200 4300 5100 4300
Connection ~ 5100 4300
Wire Wire Line
	5500 4300 5600 4300
Text Notes 3950 5300 0    60   ~ 0
The input and output capacitors can be tantalums,\nceramics, or aluminum electrolytics. Ceramics have\nbeen chosen here for their small profile. The capacitance\nvalue will change if other capacitor types are selected.\nSee the datasheet's Capacitor Selection section for more \ninformation.
Text Notes 8450 1800 2    118  ~ 0
Signal Descriptions
Text Notes 7000 2650 0    60   ~ 0
VPP_12V_EN_L\n  Enables voltage boost to 12V when LOW.\n\nVPP_5V_12V\n  Output from step up converter. Should be\n  12V when VPP_12V_EN_L is LOW, and 5V\n  when it is HIGH.
$EndSCHEMATC
