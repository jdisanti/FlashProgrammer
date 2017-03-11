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
Sheet 4 5
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
L C C401
U 1 1 58BA7A5E
P 2800 6150
F 0 "C401" V 2950 6050 50  0000 L CNN
F 1 "100nF" V 2650 6050 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 2838 6000 50  0001 C CNN
F 3 "" H 2800 6150 50  0000 C CNN
	1    2800 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 7100 2750 7100
Wire Wire Line
	2550 7000 2750 7000
Wire Wire Line
	2550 6900 2750 6900
$Comp
L VCC #PWR043
U 1 1 58BA7A7D
P 3050 6300
F 0 "#PWR043" H 3050 6150 50  0001 C CNN
F 1 "VCC" H 3050 6450 50  0000 C CNN
F 2 "" H 3050 6300 50  0000 C CNN
F 3 "" H 3050 6300 50  0000 C CNN
	1    3050 6300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR044
U 1 1 58BA7A83
P 2550 6300
F 0 "#PWR044" H 2550 6050 50  0001 C CNN
F 1 "GND" H 2550 6150 50  0000 C CNN
F 2 "" H 2550 6300 50  0000 C CNN
F 3 "" H 2550 6300 50  0000 C CNN
	1    2550 6300
	1    0    0    -1  
$EndComp
Text Label 4100 2500 0    60   ~ 0
A14
Text Label 4100 2600 0    60   ~ 0
A13
Text Label 4100 3000 0    60   ~ 0
A8
Text Label 4100 2800 0    60   ~ 0
A11
Text Label 4100 2900 0    60   ~ 0
A10
Text Label 4100 2300 0    60   ~ 0
A16
Text Label 4100 2400 0    60   ~ 0
A15
Text Label 4100 2700 0    60   ~ 0
A12
Text Label 4100 3100 0    60   ~ 0
A7
Text Label 4100 3200 0    60   ~ 0
A6
Text Label 4100 3300 0    60   ~ 0
A5
Text Label 4100 3400 0    60   ~ 0
A4
Text Label 4100 3500 0    60   ~ 0
A3
Text Label 4100 3600 0    60   ~ 0
A2
Text Label 4100 3700 0    60   ~ 0
A1
Text Label 4100 3800 0    60   ~ 0
A0
Text Label 2650 2700 0    60   ~ 0
D0
Text Label 2650 2800 0    60   ~ 0
D1
Text Label 2650 2900 0    60   ~ 0
D2
Text Label 2650 3000 0    60   ~ 0
D3
Text Label 2650 3100 0    60   ~ 0
D4
Text Label 2650 3200 0    60   ~ 0
D5
Text Label 2650 3300 0    60   ~ 0
D6
Text Label 2650 3400 0    60   ~ 0
D7
Text Notes 650  1150 0    394  ~ 0
Flash ROM
Text HLabel 4500 2000 2    60   Input ~ 0
A[0..16]
Text HLabel 2400 2000 0    60   BiDi ~ 0
D[0..7]
Text HLabel 2750 7000 2    60   Input ~ 0
OE_L
Wire Wire Line
	2450 5800 3000 5800
Text Label 4550 4100 0    60   ~ 0
A9
Text HLabel 2750 6900 2    60   Input ~ 0
CE_L
Text HLabel 2750 7100 2    60   Input ~ 0
PGM_L
$Comp
L GLS27SF010 U401
U 1 1 58C23D60
P 2850 2300
F 0 "U401" H 3050 2550 60  0000 L CNN
F 1 "GLS27SF010" H 3050 2450 60  0000 L CNN
F 2 "Housings_DIP:DIP-32_W15.24mm" H 2850 2300 60  0001 C CNN
F 3 "" H 2850 2300 60  0001 C CNN
	1    2850 2300
	1    0    0    -1  
$EndComp
$Comp
L GLS27SF010 U401
U 2 1 58C23DC8
P 1750 6900
F 0 "U401" H 1950 7150 60  0000 L CNN
F 1 "GLS27SF010" H 1950 7050 60  0000 L CNN
F 2 "Housings_DIP:DIP-32_W15.24mm" H 1750 6900 60  0001 C CNN
F 3 "" H 1750 6900 60  0001 C CNN
	2    1750 6900
	1    0    0    -1  
$EndComp
$Comp
L GLS27SF010 U401
U 3 1 58C23E29
P 1750 5700
F 0 "U401" H 1950 5950 60  0000 L CNN
F 1 "GLS27SF010" H 1950 5850 60  0000 L CNN
F 2 "Housings_DIP:DIP-32_W15.24mm" H 1750 5700 60  0001 C CNN
F 3 "" H 1750 5700 60  0001 C CNN
	3    1750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6000 2550 6000
Wire Wire Line
	2550 6000 2550 6150
Wire Wire Line
	2550 6150 2550 6300
Wire Wire Line
	2450 5900 3050 5900
Wire Wire Line
	3050 5900 3050 6150
Wire Wire Line
	3050 6150 3050 6300
Wire Wire Line
	4050 3800 4300 3800
Wire Wire Line
	4050 3700 4300 3700
Wire Wire Line
	4050 3600 4300 3600
Wire Wire Line
	4050 3500 4300 3500
Wire Wire Line
	4050 3400 4300 3400
Wire Wire Line
	4050 3300 4300 3300
Wire Wire Line
	4050 3200 4300 3200
Wire Wire Line
	4050 3100 4300 3100
Wire Wire Line
	4050 3000 4300 3000
Wire Wire Line
	4050 2900 4300 2900
Wire Wire Line
	4050 2800 4300 2800
Wire Wire Line
	4050 2700 4300 2700
Wire Wire Line
	4050 2600 4300 2600
Wire Wire Line
	4050 2500 4300 2500
Wire Wire Line
	4050 2400 4300 2400
Wire Wire Line
	4050 2300 4300 2300
Wire Wire Line
	2850 2700 2600 2700
Wire Wire Line
	2850 2800 2600 2800
Wire Wire Line
	2850 2900 2600 2900
Wire Wire Line
	2850 3000 2600 3000
Wire Wire Line
	2850 3100 2600 3100
Wire Wire Line
	2850 3200 2600 3200
Wire Wire Line
	2850 3300 2600 3300
Wire Wire Line
	2850 3400 2600 3400
Wire Bus Line
	4400 2000 4400 2400
Wire Bus Line
	4400 2400 4400 2500
Wire Bus Line
	4400 2500 4400 2600
Wire Bus Line
	4400 2600 4400 2700
Wire Bus Line
	4400 2700 4400 2800
Wire Bus Line
	4400 2800 4400 2900
Wire Bus Line
	4400 2900 4400 3000
Wire Bus Line
	4400 3000 4400 3100
Wire Bus Line
	4400 3100 4400 3200
Wire Bus Line
	4400 3200 4400 3300
Wire Bus Line
	4400 3300 4400 3400
Wire Bus Line
	4400 3400 4400 3500
Wire Bus Line
	4400 3500 4400 3600
Wire Bus Line
	4400 3600 4400 3700
Wire Bus Line
	4400 3700 4400 3800
Wire Bus Line
	4400 3800 4400 3900
Wire Bus Line
	4400 3900 4400 4000
Wire Bus Line
	4400 2000 4500 2000
Entry Wire Line
	4300 3800 4400 3900
Entry Wire Line
	4300 3700 4400 3800
Entry Wire Line
	4300 3600 4400 3700
Entry Wire Line
	4300 3500 4400 3600
Entry Wire Line
	4300 3400 4400 3500
Entry Wire Line
	4300 3300 4400 3400
Entry Wire Line
	4300 3200 4400 3300
Entry Wire Line
	4300 3100 4400 3200
Entry Wire Line
	4300 3000 4400 3100
Entry Wire Line
	4300 2900 4400 3000
Entry Wire Line
	4300 2800 4400 2900
Entry Wire Line
	4300 2700 4400 2800
Entry Wire Line
	4300 2600 4400 2700
Entry Wire Line
	4300 2500 4400 2600
Entry Wire Line
	4300 2400 4400 2500
Wire Bus Line
	2500 2000 2500 2600
Wire Bus Line
	2500 2600 2500 2700
Wire Bus Line
	2500 2700 2500 2800
Wire Bus Line
	2500 2800 2500 2900
Wire Bus Line
	2500 2900 2500 3000
Wire Bus Line
	2500 3000 2500 3100
Wire Bus Line
	2500 3100 2500 3200
Wire Bus Line
	2500 3200 2500 3300
Wire Bus Line
	2500 2000 2400 2000
Entry Wire Line
	2500 3300 2600 3400
Entry Wire Line
	2500 3200 2600 3300
Entry Wire Line
	2500 3100 2600 3200
Entry Wire Line
	2500 3000 2600 3100
Entry Wire Line
	2500 2900 2600 3000
Entry Wire Line
	2500 2800 2600 2900
Entry Wire Line
	2500 2700 2600 2800
Entry Wire Line
	2500 2600 2600 2700
Entry Wire Line
	4300 2300 4400 2400
Entry Wire Line
	4400 4000 4500 4100
Wire Wire Line
	4500 4100 5900 4100
Text HLabel 3000 5800 2    60   Output ~ 0
VPP_12V
Text HLabel 8050 5200 2    60   Output ~ 0
A9_VPP_EN_L
$Comp
L D_Schottky D?
U 1 1 58C55F37
P 6050 4100
F 0 "D?" H 6050 4200 50  0000 C CNN
F 1 "BAT54" H 6050 4000 50  0000 C CNN
F 2 "" H 6050 4100 50  0000 C CNN
F 3 "" H 6050 4100 50  0000 C CNN
	1    6050 4100
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 58C56660
P 7700 5200
F 0 "R?" V 7780 5200 50  0000 C CNN
F 1 "1k" V 7700 5200 50  0000 C CNN
F 2 "" V 7630 5200 50  0000 C CNN
F 3 "" H 7700 5200 50  0000 C CNN
	1    7700 5200
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 58C5670A
P 7200 5200
F 0 "Q?" H 7400 5250 50  0000 L CNN
F 1 "2N3904" H 7400 5150 50  0000 L CNN
F 2 "" H 7400 5300 50  0000 C CNN
F 3 "" H 7200 5200 50  0000 C CNN
	1    7200 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 5200 7400 5200
Wire Wire Line
	7100 5400 7100 5500
$Comp
L GND #PWR?
U 1 1 58C5689C
P 7100 5500
F 0 "#PWR?" H 7100 5250 50  0001 C CNN
F 1 "GND" H 7100 5350 50  0000 C CNN
F 2 "" H 7100 5500 50  0000 C CNN
F 3 "" H 7100 5500 50  0000 C CNN
	1    7100 5500
	1    0    0    -1  
$EndComp
Text HLabel 8050 4700 2    60   Output ~ 0
VPP_12V
Wire Wire Line
	8050 5200 7850 5200
Wire Wire Line
	7100 5000 7100 4700
$Comp
L R R?
U 1 1 58C56ACC
P 7700 4700
F 0 "R?" V 7780 4700 50  0000 C CNN
F 1 "1k" V 7700 4700 50  0000 C CNN
F 2 "" V 7630 4700 50  0000 C CNN
F 3 "" H 7700 4700 50  0000 C CNN
	1    7700 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 4700 8050 4700
Wire Wire Line
	7000 4700 7100 4700
Wire Wire Line
	7100 4700 7550 4700
Connection ~ 7100 4700
$Comp
L D_Schottky D?
U 1 1 58C56F28
P 6850 4700
F 0 "D?" H 6850 4800 50  0000 C CNN
F 1 "BAT54" H 6850 4600 50  0000 C CNN
F 2 "" H 6850 4700 50  0000 C CNN
F 3 "" H 6850 4700 50  0000 C CNN
	1    6850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4700 6400 4700
Wire Wire Line
	6400 4700 6700 4700
Wire Wire Line
	6200 4100 6400 4100
Wire Wire Line
	6400 4100 6400 4700
Connection ~ 6400 4700
Wire Wire Line
	3450 4700 3450 4300
Text Label 4000 4700 0    60   ~ 0
A9_VPP
Text Notes 5900 3650 0    118  ~ 0
TODO: Read datasheets to confirm voltage drops\nand resistor values on the A9_VPP selection circuit.
Text Notes 4650 3050 0    118  ~ 0
TODO: Write description of what this circuit is doing.
Wire Wire Line
	2650 6150 2550 6150
Connection ~ 2550 6150
Wire Wire Line
	2950 6150 3050 6150
Connection ~ 3050 6150
Text Notes 5200 6000 0    118  ~ 0
TODO: Double check pinouts on SOT-23 packages.
$EndSCHEMATC
