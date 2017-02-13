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
Text Notes 600  650  0    60   ~ 0
Debug Pads
Text Label 1150 1000 0    60   ~ 0
VPP
Text Label 1300 1100 2    60   ~ 0
STU
Text HLabel 1100 1000 0    60   Input ~ 0
VPP
Text HLabel 1100 1100 0    60   Input ~ 0
STU
Wire Wire Line
	1600 1000 1100 1000
Wire Wire Line
	1600 1100 1100 1100
$Comp
L CONN_01X02 P3
U 1 1 588F382D
P 1800 1050
F 0 "P3" H 1800 1200 50  0000 C CNN
F 1 "CONN_01X02" V 1900 1050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1800 1050 50  0001 C CNN
F 3 "" H 1800 1050 50  0000 C CNN
	1    1800 1050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
