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
Sheet 7 7
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
L LED D702
U 1 1 58C75BBE
P 3700 4000
F 0 "D702" H 3700 4100 50  0000 C CNN
F 1 "LED" H 3700 3900 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3700 4000 50  0001 C CNN
F 3 "" H 3700 4000 50  0000 C CNN
	1    3700 4000
	-1   0    0    1   
$EndComp
Text Notes 2700 3800 0    118  ~ 0
Rx/Tx
$Comp
L R R702
U 1 1 58C75BC8
P 2850 4000
F 0 "R702" V 2930 4000 50  0000 C CNN
F 1 "150" V 2850 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2780 4000 50  0001 C CNN
F 3 "" H 2850 4000 50  0000 C CNN
	1    2850 4000
	0    -1   1    0   
$EndComp
$Comp
L VCC #PWR040
U 1 1 58C75BD0
P 2150 4000
F 0 "#PWR040" H 2150 3850 50  0001 C CNN
F 1 "VCC" H 2150 4150 50  0000 C CNN
F 2 "" H 2150 4000 50  0000 C CNN
F 3 "" H 2150 4000 50  0000 C CNN
	1    2150 4000
	0    -1   1    0   
$EndComp
$Comp
L LED D701
U 1 1 58C75BD6
P 3700 3100
F 0 "D701" H 3700 3200 50  0000 C CNN
F 1 "LED" H 3700 3000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3700 3100 50  0001 C CNN
F 3 "" H 3700 3100 50  0000 C CNN
	1    3700 3100
	-1   0    0    1   
$EndComp
$Comp
L R R701
U 1 1 58C75BDD
P 2850 3100
F 0 "R701" V 2930 3100 50  0000 C CNN
F 1 "150" V 2850 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2780 3100 50  0001 C CNN
F 3 "" H 2850 3100 50  0000 C CNN
	1    2850 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 3100 3000 3100
Wire Wire Line
	3850 3100 4850 3100
Wire Wire Line
	2500 3100 2700 3100
Text Notes 2700 2900 0    118  ~ 0
Power
$Comp
L LED D703
U 1 1 58C75D1A
P 3700 4900
F 0 "D703" H 3700 5000 50  0000 C CNN
F 1 "LED" H 3700 4800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 3700 4900 50  0001 C CNN
F 3 "" H 3700 4900 50  0000 C CNN
	1    3700 4900
	-1   0    0    1   
$EndComp
$Comp
L R R703
U 1 1 58C75D21
P 2850 4900
F 0 "R703" V 2930 4900 50  0000 C CNN
F 1 "150" V 2850 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2780 4900 50  0001 C CNN
F 3 "" H 2850 4900 50  0000 C CNN
	1    2850 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 4900 2700 4900
Wire Wire Line
	3550 4900 3000 4900
$Comp
L GND #PWR041
U 1 1 58C75D2A
P 5200 4000
F 0 "#PWR041" H 5200 3750 50  0001 C CNN
F 1 "GND" H 5200 3850 50  0000 C CNN
F 2 "" H 5200 4000 50  0000 C CNN
F 3 "" H 5200 4000 50  0000 C CNN
	1    5200 4000
	0    -1   -1   0   
$EndComp
Text Notes 2700 4700 0    118  ~ 0
Flash
Wire Wire Line
	3850 4900 4100 4900
Wire Wire Line
	4300 5200 4300 5450
Wire Wire Line
	4700 5450 5100 5450
$Comp
L R R704
U 1 1 58C75D3B
P 4550 5450
F 0 "R704" V 4450 5450 50  0000 C CNN
F 1 "10k" V 4550 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4480 5450 50  0001 C CNN
F 3 "" H 4550 5450 50  0000 C CNN
	1    4550 5450
	0    -1   -1   0   
$EndComp
$Comp
L Q_PNP_BEC Q701
U 1 1 58C75D42
P 4300 5000
F 0 "Q701" V 4250 5100 50  0000 L CNN
F 1 "2N3906" V 4500 4850 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4500 5100 50  0001 C CNN
F 3 "" H 4300 5000 50  0000 C CNN
	1    4300 5000
	0    1    -1   0   
$EndComp
Text HLabel 5100 5450 2    60   Input ~ 0
VPP_12V_EN_L
Text Notes 650  1150 0    394  ~ 0
LED Indicators
Wire Wire Line
	2500 3100 2500 4900
Wire Wire Line
	2150 4000 2700 4000
Connection ~ 2500 4000
Wire Wire Line
	3000 4000 3550 4000
Wire Wire Line
	3850 4000 4000 4000
Text HLabel 4000 4000 2    60   Input ~ 0
RX_TX_L
Wire Wire Line
	4850 3100 4850 4900
Wire Wire Line
	4850 4000 5200 4000
Connection ~ 4850 4000
Wire Wire Line
	4850 4900 4500 4900
Wire Wire Line
	4300 5450 4400 5450
Text Notes 6550 3650 0    118  ~ 0
Signal Descriptions
Text Notes 6700 4550 0    60   ~ 0
RX_TX_L\n  Enable for the Rx/Tx indicator. When LOW, the\n  Rx/Tx LED should turn on. Latching is expected\n  to already be done at the signal source.\n\nVPP_12V_EN_L\n  Enable for the Flash indicator. When LOW, the\n  Flash LED should turn on.\n
$EndSCHEMATC
