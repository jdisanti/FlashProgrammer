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
Sheet 2 4
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
L VCC #PWR01
U 1 1 58666138
P 2500 1700
F 0 "#PWR01" H 2500 1550 50  0001 C CNN
F 1 "VCC" H 2500 1850 50  0000 C CNN
F 2 "" H 2500 1700 50  0000 C CNN
F 3 "" H 2500 1700 50  0000 C CNN
	1    2500 1700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 58666150
P 1750 1000
F 0 "#PWR02" H 1750 750 50  0001 C CNN
F 1 "GND" H 1750 850 50  0000 C CNN
F 2 "" H 1750 1000 50  0000 C CNN
F 3 "" H 1750 1000 50  0000 C CNN
	1    1750 1000
	-1   0    0    1   
$EndComp
$Comp
L C C201
U 1 1 58666168
P 1750 1300
F 0 "C201" H 1775 1400 50  0000 L CNN
F 1 "10nF" H 1775 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1788 1150 50  0001 C CNN
F 3 "" H 1750 1300 50  0000 C CNN
	1    1750 1300
	-1   0    0    1   
$EndComp
$Comp
L C C203
U 1 1 586661BE
P 1950 3800
F 0 "C203" H 1975 3900 50  0000 L CNN
F 1 "100nF" H 1975 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1988 3650 50  0001 C CNN
F 3 "" H 1950 3800 50  0000 C CNN
	1    1950 3800
	0    -1   -1   0   
$EndComp
$Comp
L C C202
U 1 1 586661F4
P 1950 3400
F 0 "C202" H 1975 3500 50  0000 L CNN
F 1 "4.7uF" H 1975 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1988 3250 50  0001 C CNN
F 3 "" H 1950 3400 50  0000 C CNN
	1    1950 3400
	0    -1   -1   0   
$EndComp
$Comp
L C C206
U 1 1 5866621B
P 4000 1150
F 0 "C206" H 4025 1250 50  0000 L CNN
F 1 "100nF" H 4025 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4038 1000 50  0001 C CNN
F 3 "" H 4000 1150 50  0000 C CNN
	1    4000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3800 2100 3800
Wire Wire Line
	2250 3600 2400 3600
Wire Wire Line
	2250 3400 2250 3800
Wire Wire Line
	2250 3400 2100 3400
Wire Wire Line
	1500 3600 1650 3600
Wire Wire Line
	1650 3800 1800 3800
Wire Wire Line
	1650 3400 1650 3800
Wire Wire Line
	1650 3400 1800 3400
$Comp
L GND #PWR03
U 1 1 58666A15
P 2400 3600
F 0 "#PWR03" H 2400 3350 50  0001 C CNN
F 1 "GND" H 2400 3450 50  0000 C CNN
F 2 "" H 2400 3600 50  0000 C CNN
F 3 "" H 2400 3600 50  0000 C CNN
	1    2400 3600
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 58666A32
P 1500 3600
F 0 "#PWR04" H 1500 3450 50  0001 C CNN
F 1 "VCC" H 1500 3750 50  0000 C CNN
F 2 "" H 1500 3600 50  0000 C CNN
F 3 "" H 1500 3600 50  0000 C CNN
	1    1500 3600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 58667B03
P 4850 3050
F 0 "#PWR05" H 4850 2800 50  0001 C CNN
F 1 "GND" H 4850 2900 50  0000 C CNN
F 2 "" H 4850 3050 50  0000 C CNN
F 3 "" H 4850 3050 50  0000 C CNN
	1    4850 3050
	1    0    0    -1  
$EndComp
$Comp
L Ferrite_Bead L201
U 1 1 58669A8D
P 2150 1700
F 0 "L201" V 2000 1725 50  0000 C CNN
F 1 "Ferrite_Bead" V 2300 1700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" V 2080 1700 50  0001 C CNN
F 3 "" H 2150 1700 50  0000 C CNN
	1    2150 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 1700 2000 1700
Wire Wire Line
	2300 1700 2500 1700
$Comp
L GND #PWR06
U 1 1 58669DB0
P 1750 2350
F 0 "#PWR06" H 1750 2100 50  0001 C CNN
F 1 "GND" H 1750 2200 50  0000 C CNN
F 2 "" H 1750 2350 50  0000 C CNN
F 3 "" H 1750 2350 50  0000 C CNN
	1    1750 2350
	0    -1   -1   0   
$EndComp
Connection ~ 2250 3600
Connection ~ 1650 3600
Text Notes 900  4150 0    60   ~ 0
Filter capacitors for FT230X (not including filter on 3V3OUT)\nNote, 10nF capacitor must come before the ferrite bead.
$Comp
L LED D201
U 1 1 5866C67B
P 6650 2400
F 0 "D201" H 6650 2500 50  0000 C CNN
F 1 "LED" H 6650 2300 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6650 2400 50  0001 C CNN
F 3 "" H 6650 2400 50  0000 C CNN
	1    6650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2400 7000 2400
Text Notes 5950 2650 0    60   ~ 0
Transmission Indicator LED
$Comp
L FT230X U201
U 1 1 5866F07F
P 4850 2650
F 0 "U201" H 4350 3600 60  0000 C CNN
F 1 "FT230X" H 5200 2600 60  0000 C CNN
F 2 "ssop-16:SSOP-16" H 4850 2650 60  0001 C CNN
F 3 "" H 4850 2650 60  0001 C CNN
	1    4850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2050 1500 2050
Wire Wire Line
	1750 1450 1750 2050
Connection ~ 1750 1700
Wire Wire Line
	1750 1150 1750 1000
Wire Wire Line
	1500 2350 1750 2350
Wire Wire Line
	4750 1550 4750 1450
$Comp
L VCC #PWR07
U 1 1 5867040E
P 4750 1450
F 0 "#PWR07" H 4750 1300 50  0001 C CNN
F 1 "VCC" H 4750 1600 50  0000 C CNN
F 2 "" H 4750 1450 50  0000 C CNN
F 3 "" H 4750 1450 50  0000 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2850 4750 2950
Wire Wire Line
	4750 2950 4950 2950
Wire Wire Line
	4950 2950 4950 2850
Wire Wire Line
	4850 2950 4850 3050
Connection ~ 4850 2950
Wire Wire Line
	4000 1850 4100 1850
Wire Wire Line
	4000 1300 4000 2450
Wire Wire Line
	4000 1000 4000 750 
$Comp
L GND #PWR08
U 1 1 58670F4A
P 4000 750
F 0 "#PWR08" H 4000 500 50  0001 C CNN
F 1 "GND" H 4000 600 50  0000 C CNN
F 2 "" H 4000 750 50  0000 C CNN
F 3 "" H 4000 750 50  0000 C CNN
	1    4000 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 2450 4100 2450
Connection ~ 4000 1850
Wire Wire Line
	4950 1550 4950 1500
Wire Wire Line
	4950 1500 4000 1500
Connection ~ 4000 1500
Wire Wire Line
	5550 2500 5650 2500
Wire Wire Line
	5650 2500 5650 2400
Wire Wire Line
	5550 2400 6000 2400
Connection ~ 5650 2400
NoConn ~ 5550 2300
NoConn ~ 5550 2600
NoConn ~ 5550 2000
NoConn ~ 5550 2100
$Comp
L R R202
U 1 1 58674423
P 3500 2250
F 0 "R202" V 3580 2250 50  0000 C CNN
F 1 "27" V 3500 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3430 2250 50  0001 C CNN
F 3 "" H 3500 2250 50  0000 C CNN
	1    3500 2250
	0    1    1    0   
$EndComp
$Comp
L R R201
U 1 1 586744C9
P 3500 2150
F 0 "R201" V 3400 2150 50  0000 C CNN
F 1 "27" V 3500 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3430 2150 50  0001 C CNN
F 3 "" H 3500 2150 50  0000 C CNN
	1    3500 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 2150 3650 2150
Wire Wire Line
	4100 2250 3650 2250
$Comp
L C C204
U 1 1 5867487B
P 2450 2600
F 0 "C204" H 2475 2700 50  0000 L CNN
F 1 "47pF" H 2475 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2488 2450 50  0001 C CNN
F 3 "" H 2450 2600 50  0000 C CNN
	1    2450 2600
	1    0    0    -1  
$EndComp
$Comp
L C C205
U 1 1 58674901
P 2850 2600
F 0 "C205" H 2875 2700 50  0000 L CNN
F 1 "47pF" H 2875 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2888 2450 50  0001 C CNN
F 3 "" H 2850 2600 50  0000 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2150 3350 2150
Wire Wire Line
	1500 2250 3350 2250
Wire Wire Line
	2450 2450 2450 2150
Connection ~ 2450 2150
Wire Wire Line
	2850 2450 2850 2250
Connection ~ 2850 2250
Wire Wire Line
	2450 2750 2450 2850
Wire Wire Line
	2450 2850 2850 2850
Wire Wire Line
	2850 2850 2850 2750
Wire Wire Line
	2650 2850 2650 2950
Connection ~ 2650 2850
$Comp
L GND #PWR09
U 1 1 58674AD8
P 2650 2950
F 0 "#PWR09" H 2650 2700 50  0001 C CNN
F 1 "GND" H 2650 2800 50  0000 C CNN
F 2 "" H 2650 2950 50  0000 C CNN
F 3 "" H 2650 2950 50  0000 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
Text Notes 1950 1450 0    60   ~ 0
Ferrite bead and capacitor should be\nas close as possible to the USB port\nto prevent any noise from going\nback to the USB host.
Text Notes 4350 1100 0    60   ~ 0
100nF capacitor should be as close\nto the VCCIO pin as possible to \nact as a bypass capacitor for it.
$Comp
L R R203
U 1 1 58678751
P 6150 2400
F 0 "R203" V 6230 2400 50  0000 C CNN
F 1 "150" V 6150 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6080 2400 50  0001 C CNN
F 3 "" H 6150 2400 50  0000 C CNN
	1    6150 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 2400 6300 2400
Text HLabel 6000 1900 2    60   Input ~ 0
RXD
Text HLabel 6000 1800 2    60   Output ~ 0
TXD
$Comp
L VCC #PWR010
U 1 1 5868E582
P 7000 2400
F 0 "#PWR010" H 7000 2250 50  0001 C CNN
F 1 "VCC" H 7000 2550 50  0000 C CNN
F 2 "" H 7000 2400 50  0000 C CNN
F 3 "" H 7000 2400 50  0000 C CNN
	1    7000 2400
	0    1    1    0   
$EndComp
Text Label 2950 2150 0    60   ~ 0
USBDM
Text Label 2950 2250 0    60   ~ 0
USBDP
Text Label 4150 1500 0    60   ~ 0
VCCIO
$Comp
L USB_B P201
U 1 1 5866CC44
P 1200 2250
F 0 "P201" H 1400 2050 50  0000 C CNN
F 1 "USB_B" H 1150 2450 50  0000 C CNN
F 2 "Connectors:USB_B" V 1150 2150 50  0001 C CNN
F 3 "" V 1150 2150 50  0000 C CNN
	1    1200 2250
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 588E2AB4
P 1100 2550
F 0 "#PWR011" H 1100 2300 50  0001 C CNN
F 1 "GND" H 1100 2400 50  0000 C CNN
F 2 "" H 1100 2550 50  0000 C CNN
F 3 "" H 1100 2550 50  0000 C CNN
	1    1100 2550
	1    0    0    -1  
$EndComp
$Comp
L LED D202
U 1 1 58C28B58
P 6950 3500
F 0 "D202" H 6950 3600 50  0000 C CNN
F 1 "LED" H 6950 3400 50  0000 C CNN
F 2 "LEDs:LED_0805" H 6950 3500 50  0001 C CNN
F 3 "" H 6950 3500 50  0000 C CNN
	1    6950 3500
	-1   0    0    1   
$EndComp
$Comp
L R R204
U 1 1 58C28B5F
P 6500 3500
F 0 "R204" V 6580 3500 50  0000 C CNN
F 1 "150" V 6500 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6430 3500 50  0001 C CNN
F 3 "" H 6500 3500 50  0000 C CNN
	1    6500 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 3500 6650 3500
Wire Wire Line
	7100 3500 7350 3500
$Comp
L GND #PWR012
U 1 1 58C28B68
P 7350 3500
F 0 "#PWR012" H 7350 3250 50  0001 C CNN
F 1 "GND" H 7350 3350 50  0000 C CNN
F 2 "" H 7350 3500 50  0000 C CNN
F 3 "" H 7350 3500 50  0000 C CNN
	1    7350 3500
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR013
U 1 1 58C28B6E
P 6200 3500
F 0 "#PWR013" H 6200 3350 50  0001 C CNN
F 1 "VCC" H 6200 3650 50  0000 C CNN
F 2 "" H 6200 3500 50  0000 C CNN
F 3 "" H 6200 3500 50  0000 C CNN
	1    6200 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3500 6350 3500
Text Notes 5950 3300 0    60   ~ 0
Power indicator light
Wire Wire Line
	5550 1800 6000 1800
Wire Wire Line
	5550 1900 6000 1900
$Comp
L PWR_FLAG #FLG014
U 1 1 58C31847
P 10250 1100
F 0 "#FLG014" H 10250 1195 50  0001 C CNN
F 1 "PWR_FLAG" H 10250 1280 50  0000 C CNN
F 2 "" H 10250 1100 50  0000 C CNN
F 3 "" H 10250 1100 50  0000 C CNN
	1    10250 1100
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR015
U 1 1 58C31886
P 10500 1100
F 0 "#PWR015" H 10500 950 50  0001 C CNN
F 1 "VCC" H 10500 1250 50  0000 C CNN
F 2 "" H 10500 1100 50  0000 C CNN
F 3 "" H 10500 1100 50  0000 C CNN
	1    10500 1100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 58C318BE
P 10500 1600
F 0 "#PWR016" H 10500 1350 50  0001 C CNN
F 1 "GND" H 10500 1450 50  0000 C CNN
F 2 "" H 10500 1600 50  0000 C CNN
F 3 "" H 10500 1600 50  0000 C CNN
	1    10500 1600
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG017
U 1 1 58C3195A
P 10250 1600
F 0 "#FLG017" H 10250 1695 50  0001 C CNN
F 1 "PWR_FLAG" H 10250 1780 50  0000 C CNN
F 2 "" H 10250 1600 50  0000 C CNN
F 3 "" H 10250 1600 50  0000 C CNN
	1    10250 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10250 1100 10500 1100
Wire Wire Line
	10250 1600 10500 1600
Text Notes 9700 800  0    60   ~ 0
Power flag hacks for KiCad's\nelectrical rule checks
$EndSCHEMATC
