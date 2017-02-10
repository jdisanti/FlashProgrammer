EESchema Schematic File Version 2
LIBS:atmega328p_tqfn
LIBS:gls27sf010
LIBS:max662a
LIBS:2n3904
LIBS:2n3906
LIBS:ft232rl
LIBS:ft230x
LIBS:debug_pad
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
Text Notes 750  750  0    60   ~ 0
Debug Pads
Text Label 1300 1100 0    60   ~ 0
VPP
Text Label 1300 1550 0    60   ~ 0
A0
Text Label 1300 1650 0    60   ~ 0
A1
Text Label 1300 1750 0    60   ~ 0
A2
Text Label 1300 2300 0    60   ~ 0
A16
Text Label 1300 2200 0    60   ~ 0
A9
Text Label 1300 2100 0    60   ~ 0
A8
Text Label 1450 1200 2    60   ~ 0
STU
Text HLabel 1250 1100 0    60   Input ~ 0
VPP
Text HLabel 1250 1550 0    60   Input ~ 0
A0
Text HLabel 1250 1650 0    60   Input ~ 0
A1
Text HLabel 1250 1750 0    60   Input ~ 0
A2
Text HLabel 1250 1200 0    60   Input ~ 0
STU
Text HLabel 1250 2100 0    60   Input ~ 0
A8
Text HLabel 1250 2200 0    60   Input ~ 0
A9
Text HLabel 1250 2300 0    60   Input ~ 0
A16
Wire Wire Line
	1750 1100 1250 1100
Wire Wire Line
	1750 1550 1250 1550
Wire Wire Line
	1750 1650 1250 1650
Wire Wire Line
	1750 1750 1250 1750
Wire Wire Line
	1750 2100 1250 2100
Wire Wire Line
	1750 2200 1250 2200
Wire Wire Line
	1750 2300 1250 2300
Wire Wire Line
	1750 1200 1250 1200
$Comp
L CONN_01X02 P3
U 1 1 588F382D
P 1950 1150
F 0 "P3" H 1950 1300 50  0000 C CNN
F 1 "CONN_01X02" V 2050 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1950 1150 50  0001 C CNN
F 3 "" H 1950 1150 50  0000 C CNN
	1    1950 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P5
U 1 1 588F4116
P 1950 2200
F 0 "P5" H 1950 2400 50  0000 C CNN
F 1 "CONN_01X03" V 2050 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1950 2200 50  0001 C CNN
F 3 "" H 1950 2200 50  0000 C CNN
	1    1950 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 588F41D3
P 1950 1650
F 0 "P4" H 1950 1850 50  0000 C CNN
F 1 "CONN_01X03" V 2050 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1950 1650 50  0001 C CNN
F 3 "" H 1950 1650 50  0000 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
