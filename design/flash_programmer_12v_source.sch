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
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L MAX662A U?
U 1 1 58C44BF6
P 6000 4000
F 0 "U?" H 6000 4550 60  0000 C CNN
F 1 "MAX662A" H 6000 3950 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5900 3900 60  0001 C CNN
F 3 "" H 5900 3900 60  0001 C CNN
	1    6000 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 3800 7000 3800
Wire Wire Line
	7000 3800 7000 4050
Wire Wire Line
	7000 4050 6900 4050
Wire Wire Line
	6600 4050 6450 4050
Wire Wire Line
	6450 4050 6450 3900
Wire Wire Line
	6450 3700 7000 3700
Wire Wire Line
	7000 3700 7000 3450
Wire Wire Line
	7000 3450 6900 3450
Wire Wire Line
	6600 3450 6450 3450
Wire Wire Line
	6450 3450 6450 3600
Wire Wire Line
	4250 3800 5550 3800
$Comp
L GND #PWR?
U 1 1 58C44C09
P 5400 3700
F 0 "#PWR?" H 5400 3450 50  0001 C CNN
F 1 "GND" H 5400 3550 50  0000 C CNN
F 2 "" H 5400 3700 50  0000 C CNN
F 3 "" H 5400 3700 50  0000 C CNN
	1    5400 3700
	0    1    -1   0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 58C44C0F
P 5450 4350
F 0 "#PWR?" H 5450 4200 50  0001 C CNN
F 1 "VCC" H 5450 4500 50  0000 C CNN
F 2 "" H 5450 4350 50  0000 C CNN
F 3 "" H 5450 4350 50  0000 C CNN
	1    5450 4350
	1    0    0    1   
$EndComp
Text Notes 550  1050 0    394  ~ 0
12V Step Up Voltage Supply
$Comp
L C C?
U 1 1 58C44C16
P 5700 4250
F 0 "C?" H 5725 4350 50  0000 L CNN
F 1 "4.7uF" H 5725 4150 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5738 4100 50  0001 C CNN
F 3 "" H 5700 4250 50  0000 C CNN
	1    5700 4250
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 58C44C25
P 6750 3450
F 0 "C?" V 6700 3550 50  0000 L CNN
F 1 "22nF" V 6800 3500 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6788 3300 50  0001 C CNN
F 3 "" H 6750 3450 50  0000 C CNN
	1    6750 3450
	0    -1   1    0   
$EndComp
$Comp
L C C?
U 1 1 58C44C2C
P 6750 4050
F 0 "C?" V 6700 4150 50  0000 L CNN
F 1 "22nF" V 6800 4100 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 6788 3900 50  0001 C CNN
F 3 "" H 6750 4050 50  0000 C CNN
	1    6750 4050
	0    -1   1    0   
$EndComp
Wire Wire Line
	5550 3900 5450 3900
Wire Wire Line
	5450 3900 5450 4350
$Comp
L C C?
U 1 1 58C44C35
P 5050 4100
F 0 "C?" H 5075 4200 50  0000 L CNN
F 1 "4.7uF" H 5075 4000 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5088 3950 50  0001 C CNN
F 3 "" H 5050 4100 50  0000 C CNN
	1    5050 4100
	1    0    0    1   
$EndComp
Wire Wire Line
	4250 3600 5550 3600
Wire Wire Line
	5050 3950 5050 3800
Connection ~ 5050 3800
Wire Wire Line
	5050 4250 5050 4350
$Comp
L GND #PWR?
U 1 1 58C44C40
P 5050 4350
F 0 "#PWR?" H 5050 4100 50  0001 C CNN
F 1 "GND" H 5050 4200 50  0000 C CNN
F 2 "" H 5050 4350 50  0000 C CNN
F 3 "" H 5050 4350 50  0000 C CNN
	1    5050 4350
	-1   0    0    -1  
$EndComp
Text HLabel 4250 3600 0    60   Input ~ 0
VPP_12V_EN_L
$Comp
L GND #PWR?
U 1 1 58C44C4A
P 5950 4250
F 0 "#PWR?" H 5950 4000 50  0001 C CNN
F 1 "GND" H 5950 4100 50  0000 C CNN
F 2 "" H 5950 4250 50  0000 C CNN
F 3 "" H 5950 4250 50  0000 C CNN
	1    5950 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 3700 5550 3700
Text HLabel 4250 3800 0    60   Output ~ 0
VPP_5V_12V
Text Notes 2050 3350 0    60   ~ 0
When VPP_12V_EN_L is pulled HIGH, the MAX662A will supply \n12V (50mA absolute max.) on the VPP_5V_12V line. When \nVPP_12V_EN_L is HIGH, then 5V will be observed on VPP_5V_12V.
Text Notes 7150 3850 0    60   ~ 0
The charge-pump capacitors must be ceramic or\ntantalum in the 0.22uF to 1.0uF range.
Wire Wire Line
	5550 4250 5450 4250
Connection ~ 5450 4250
Wire Wire Line
	5850 4250 5950 4250
Text Notes 4300 5250 0    60   ~ 0
The input and output capacitors can be tantalums,\nceramics, or aluminum electrolytics. Ceramics have\nbeen chosen here for their small profile. The capacitance\nvalue will change if other capacitor types are selected.\nSee the datasheet's Capacitor Selection section for more \ninformation.
$EndSCHEMATC
