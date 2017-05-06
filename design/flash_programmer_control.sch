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
Sheet 6 7
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
L C C603
U 1 1 58C245FA
P 10050 5950
F 0 "C603" H 10075 6050 50  0000 L CNN
F 1 "100nF" H 10075 5850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 10088 5800 50  0001 C CNN
F 3 "" H 10050 5950 50  0000 C CNN
	1    10050 5950
	-1   0    0    -1  
$EndComp
$Comp
L C C602
U 1 1 58C24601
P 9500 5950
F 0 "C602" H 9525 6050 50  0000 L CNN
F 1 "100nF" H 9525 5850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 9538 5800 50  0001 C CNN
F 3 "" H 9500 5950 50  0000 C CNN
	1    9500 5950
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 58C24608
P 10050 6250
F 0 "#PWR028" H 10050 6000 50  0001 C CNN
F 1 "GND" H 10050 6100 50  0000 C CNN
F 2 "" H 10050 6250 50  0000 C CNN
F 3 "" H 10050 6250 50  0000 C CNN
	1    10050 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 58C2460E
P 9500 6250
F 0 "#PWR029" H 9500 6000 50  0001 C CNN
F 1 "GND" H 9500 6100 50  0000 C CNN
F 2 "" H 9500 6250 50  0000 C CNN
F 3 "" H 9500 6250 50  0000 C CNN
	1    9500 6250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR030
U 1 1 58C24614
P 10050 5650
F 0 "#PWR030" H 10050 5500 50  0001 C CNN
F 1 "VCC" H 10050 5800 50  0000 C CNN
F 2 "" H 10050 5650 50  0000 C CNN
F 3 "" H 10050 5650 50  0000 C CNN
	1    10050 5650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR031
U 1 1 58C2461A
P 9500 5650
F 0 "#PWR031" H 9500 5500 50  0001 C CNN
F 1 "VCC" H 9500 5800 50  0000 C CNN
F 2 "" H 9500 5650 50  0000 C CNN
F 3 "" H 9500 5650 50  0000 C CNN
	1    9500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5650 10050 5800
Wire Wire Line
	9500 5650 9500 5800
Wire Wire Line
	10050 6100 10050 6250
Wire Wire Line
	9500 6100 9500 6250
Text Notes 8700 6650 0    60   ~ 0
Bypass capacitors for ATMEGA328-AU
$Comp
L R R601
U 1 1 58C24693
P 2900 3950
F 0 "R601" V 2980 3950 50  0000 C CNN
F 1 "4.7k" V 2900 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2830 3950 50  0001 C CNN
F 3 "" H 2900 3950 50  0000 C CNN
	1    2900 3950
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR032
U 1 1 58C2469D
P 2650 3950
F 0 "#PWR032" H 2650 3700 50  0001 C CNN
F 1 "GND" H 2650 3800 50  0000 C CNN
F 2 "" H 2650 3950 50  0000 C CNN
F 3 "" H 2650 3950 50  0000 C CNN
	1    2650 3950
	0    1    -1   0   
$EndComp
$Comp
L C C601
U 1 1 58C246AA
P 8950 5950
F 0 "C601" H 8975 6050 50  0000 L CNN
F 1 "100nF" H 8975 5850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8988 5800 50  0001 C CNN
F 3 "" H 8950 5950 50  0000 C CNN
	1    8950 5950
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 58C246B1
P 8950 6250
F 0 "#PWR033" H 8950 6000 50  0001 C CNN
F 1 "GND" H 8950 6100 50  0000 C CNN
F 2 "" H 8950 6250 50  0000 C CNN
F 3 "" H 8950 6250 50  0000 C CNN
	1    8950 6250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR034
U 1 1 58C246B7
P 8950 5650
F 0 "#PWR034" H 8950 5500 50  0001 C CNN
F 1 "VCC" H 8950 5800 50  0000 C CNN
F 2 "" H 8950 5650 50  0000 C CNN
F 3 "" H 8950 5650 50  0000 C CNN
	1    8950 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5650 8950 5800
Wire Wire Line
	8950 6100 8950 6250
$Comp
L CONN_02X03 P601
U 1 1 58C249FC
P 5750 6100
F 0 "P601" H 5750 6300 50  0000 C CNN
F 1 "ISP" H 5750 5900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 5750 4900 50  0001 C CNN
F 3 "" H 5750 4900 50  0000 C CNN
	1    5750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6000 6100 6000
Wire Wire Line
	6000 6100 6450 6100
Wire Wire Line
	6000 6200 6100 6200
Wire Wire Line
	5500 6000 5050 6000
Wire Wire Line
	5500 6100 5050 6100
Wire Wire Line
	5500 6200 5050 6200
Text Label 5450 6000 2    60   ~ 0
ISP_MISO
Text Label 5050 6100 0    60   ~ 0
ISP_SCK
Text Label 5050 6200 0    60   ~ 0
ISP_RST_L
Text Label 6050 6100 0    60   ~ 0
ISP_MOSI
Wire Wire Line
	6100 6000 6100 5900
Wire Wire Line
	6100 6200 6100 6300
$Comp
L VCC #PWR035
U 1 1 58C24A0F
P 6100 5900
F 0 "#PWR035" H 6100 5750 50  0001 C CNN
F 1 "VCC" H 6100 6050 50  0000 C CNN
F 2 "" H 6100 5900 50  0000 C CNN
F 3 "" H 6100 5900 50  0000 C CNN
	1    6100 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 58C24A15
P 6100 6300
F 0 "#PWR036" H 6100 6050 50  0001 C CNN
F 1 "GND" H 6100 6150 50  0000 C CNN
F 2 "" H 6100 6300 50  0000 C CNN
F 3 "" H 6100 6300 50  0000 C CNN
	1    6100 6300
	1    0    0    -1  
$EndComp
Text Notes 4950 5650 0    60   ~ 0
ISP Programming Interface
Text Label 3050 3950 0    60   ~ 0
UNUSED
Text HLabel 7650 4700 2    60   Output ~ 0
VPP_12V_EN_L
Text HLabel 7650 4800 2    60   Output ~ 0
A9_VPP_EN_L
Text Notes 650  1150 0    394  ~ 0
Control
$Comp
L ATMEGA328-AU U?
U 1 1 58C491ED
P 3900 3550
AR Path="/58C491ED" Ref="U?"  Part="1" 
AR Path="/58C243E5/58C491ED" Ref="U601"  Part="1" 
F 0 "U601" H 4100 3800 60  0000 L CNN
F 1 "ATMEGA328-AU" H 4100 3700 60  0000 L CNN
F 2 "TQFP_32_7mm_0.8mm_pitch:TQFP-32" H 3900 3550 60  0001 C CNN
F 3 "" H 3900 3550 60  0001 C CNN
	1    3900 3550
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328-AU U?
U 2 1 58C4927B
P 7200 2150
AR Path="/58C4927B" Ref="U?"  Part="2" 
AR Path="/58C243E5/58C4927B" Ref="U601"  Part="2" 
F 0 "U601" H 7400 2400 60  0000 L CNN
F 1 "ATMEGA328-AU" H 7400 2300 60  0000 L CNN
F 2 "TQFP_32_7mm_0.8mm_pitch:TQFP-32" H 7200 2150 60  0001 C CNN
F 3 "" H 7200 2150 60  0001 C CNN
	2    7200 2150
	-1   0    0    -1  
$EndComp
$Comp
L ATMEGA328-AU U?
U 3 1 58C492C6
P 3900 4200
AR Path="/58C492C6" Ref="U?"  Part="3" 
AR Path="/58C243E5/58C492C6" Ref="U601"  Part="3" 
F 0 "U601" H 4100 4450 60  0000 L CNN
F 1 "ATMEGA328-AU" H 4100 4350 60  0000 L CNN
F 2 "TQFP_32_7mm_0.8mm_pitch:TQFP-32" H 3900 4200 60  0001 C CNN
F 3 "" H 3900 4200 60  0001 C CNN
	3    3900 4200
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328-AU U?
U 4 1 58C49325
P 7200 4100
AR Path="/58C49325" Ref="U?"  Part="4" 
AR Path="/58C243E5/58C49325" Ref="U601"  Part="4" 
F 0 "U601" H 7400 4350 60  0000 L CNN
F 1 "ATMEGA328-AU" H 7400 4250 60  0000 L CNN
F 2 "TQFP_32_7mm_0.8mm_pitch:TQFP-32" H 7200 4100 60  0001 C CNN
F 3 "" H 7200 4100 60  0001 C CNN
	4    7200 4100
	-1   0    0    -1  
$EndComp
$Comp
L ATMEGA328-AU U?
U 5 1 58C49392
P 3900 2150
AR Path="/58C49392" Ref="U?"  Part="5" 
AR Path="/58C243E5/58C49392" Ref="U601"  Part="5" 
F 0 "U601" H 4100 2400 60  0000 L CNN
F 1 "ATMEGA328-AU" H 4100 2300 60  0000 L CNN
F 2 "TQFP_32_7mm_0.8mm_pitch:TQFP-32" H 3900 2150 60  0001 C CNN
F 3 "" H 3900 2150 60  0001 C CNN
	5    3900 2150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR037
U 1 1 58C4C1FF
P 3650 2250
F 0 "#PWR037" H 3650 2100 50  0001 C CNN
F 1 "VCC" H 3650 2400 50  0000 C CNN
F 2 "" H 3650 2250 50  0000 C CNN
F 3 "" H 3650 2250 50  0000 C CNN
	1    3650 2250
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR038
U 1 1 58C4C23D
P 3650 2550
F 0 "#PWR038" H 3650 2300 50  0001 C CNN
F 1 "GND" H 3650 2400 50  0000 C CNN
F 2 "" H 3650 2550 50  0000 C CNN
F 3 "" H 3650 2550 50  0000 C CNN
	1    3650 2550
	0    1    -1   0   
$EndComp
Wire Wire Line
	3900 2150 3750 2150
Wire Wire Line
	3750 2150 3750 2350
Wire Wire Line
	3650 2250 3900 2250
Wire Wire Line
	3750 2350 3900 2350
Connection ~ 3750 2250
Wire Wire Line
	3650 2550 3900 2550
Wire Wire Line
	3900 2450 3750 2450
Wire Wire Line
	3750 2450 3750 2650
Connection ~ 3750 2550
$Comp
L R R602
U 1 1 58C4DE7A
P 3350 4800
F 0 "R602" V 3430 4800 50  0000 C CNN
F 1 "10k" V 3350 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3280 4800 50  0001 C CNN
F 3 "" H 3350 4800 50  0000 C CNN
	1    3350 4800
	0    -1   1    0   
$EndComp
$Comp
L VCC #PWR039
U 1 1 58C4E0E4
P 2950 4800
F 0 "#PWR039" H 2950 4650 50  0001 C CNN
F 1 "VCC" H 2950 4950 50  0000 C CNN
F 2 "" H 2950 4800 50  0000 C CNN
F 3 "" H 2950 4800 50  0000 C CNN
	1    2950 4800
	0    -1   1    0   
$EndComp
Wire Wire Line
	3500 4800 3900 4800
Wire Wire Line
	3200 4800 2950 4800
Text Label 3300 5050 2    60   ~ 0
ISP_RST_L
Wire Wire Line
	3700 4800 3700 5050
Wire Wire Line
	3700 5050 2850 5050
Connection ~ 3700 4800
Wire Wire Line
	8350 2350 7200 2350
Wire Wire Line
	8350 2250 7200 2250
Wire Wire Line
	8350 2150 7200 2150
Text Label 8250 3350 0    60   ~ 0
D0
Text Label 8250 3450 0    60   ~ 0
D1
Text Label 8250 2750 0    60   ~ 0
D2
Text Label 8250 2350 0    60   ~ 0
D3
Text Label 8250 2250 0    60   ~ 0
D4
Text Label 8250 2150 0    60   ~ 0
D5
Text Label 8250 2450 0    60   ~ 0
D6
Text Label 8250 3050 0    60   ~ 0
D7
$Comp
L R R603
U 1 1 58C506E5
P 7800 2450
F 0 "R603" V 7880 2450 50  0000 C CNN
F 1 "4.7k" V 7800 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7730 2450 50  0001 C CNN
F 3 "" H 7800 2450 50  0000 C CNN
	1    7800 2450
	0    1    1    0   
$EndComp
$Comp
L R R604
U 1 1 58C50CD3
P 7800 2750
F 0 "R604" V 7880 2750 50  0000 C CNN
F 1 "4.7k" V 7800 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7730 2750 50  0001 C CNN
F 3 "" H 7800 2750 50  0000 C CNN
	1    7800 2750
	0    1    1    0   
$EndComp
$Comp
L R R605
U 1 1 58C50D81
P 7800 3050
F 0 "R605" V 7880 3050 50  0000 C CNN
F 1 "4.7k" V 7800 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7730 3050 50  0001 C CNN
F 3 "" H 7800 3050 50  0000 C CNN
	1    7800 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 2450 7650 2450
Wire Wire Line
	7200 2550 7500 2550
Wire Wire Line
	7500 2550 7500 2750
Wire Wire Line
	7500 2750 7650 2750
Wire Wire Line
	7200 2650 7450 2650
Wire Wire Line
	7450 2650 7450 3050
Wire Wire Line
	7450 3050 7650 3050
Wire Wire Line
	7950 2450 8350 2450
Wire Wire Line
	7950 2750 8350 2750
Wire Wire Line
	7950 3050 8350 3050
Wire Wire Line
	7600 2450 7600 2650
Wire Wire Line
	7600 2650 8200 2650
Connection ~ 7600 2450
Wire Wire Line
	7600 2750 7600 2950
Wire Wire Line
	7600 2950 8200 2950
Connection ~ 7600 2750
Wire Wire Line
	7600 3050 7600 3250
Wire Wire Line
	7600 3250 8200 3250
Connection ~ 7600 3050
Text Label 8150 3250 2    60   ~ 0
ISP_SCK
Text Label 8150 2950 2    60   ~ 0
ISP_MISO
Text Label 8150 2650 2    60   ~ 0
ISP_MOSI
Wire Wire Line
	7200 2750 7400 2750
Wire Wire Line
	7400 2750 7400 3350
Wire Wire Line
	7400 3350 8350 3350
Wire Wire Line
	7200 2850 7350 2850
Wire Wire Line
	7350 2850 7350 3450
Wire Wire Line
	7350 3450 8350 3450
Entry Wire Line
	8350 2150 8450 2250
Entry Wire Line
	8350 2250 8450 2350
Entry Wire Line
	8350 2350 8450 2450
Entry Wire Line
	8350 2450 8450 2550
Entry Wire Line
	8350 2750 8450 2850
Entry Wire Line
	8350 3050 8450 3150
Entry Wire Line
	8350 3350 8450 3450
Entry Wire Line
	8350 3450 8450 3550
Wire Bus Line
	8450 2250 8450 3650
Text HLabel 8650 3750 2    60   BiDi ~ 0
D[0..7]
Wire Wire Line
	7200 4200 7650 4200
Wire Wire Line
	7200 4100 7650 4100
Text HLabel 7650 4200 2    60   Output ~ 0
TXD
Text HLabel 7650 4100 2    60   Input ~ 0
RXD
Wire Wire Line
	7200 4300 7650 4300
Text HLabel 7650 4300 2    60   Output ~ 0
PGM_L
Wire Wire Line
	3900 4600 2700 4600
Wire Wire Line
	3900 4700 2700 4700
Text HLabel 2700 4700 0    60   Output ~ 0
OE_L
Text HLabel 2700 4600 0    60   Output ~ 0
CE_L
Wire Wire Line
	3900 4500 2700 4500
Wire Wire Line
	3900 4400 2700 4400
Wire Wire Line
	7200 4500 7650 4500
Wire Wire Line
	7200 4400 7650 4400
Wire Wire Line
	7200 4700 7650 4700
Wire Wire Line
	7200 4800 7650 4800
Wire Wire Line
	7200 4600 7650 4600
Wire Wire Line
	3750 2650 3900 2650
Wire Wire Line
	3450 4200 3900 4200
Wire Wire Line
	3450 4300 3900 4300
Wire Wire Line
	3450 3950 3050 3950
Wire Wire Line
	2750 3950 2650 3950
Wire Wire Line
	3450 3750 3900 3750
Connection ~ 3450 4200
Wire Wire Line
	3450 3650 3900 3650
Connection ~ 3450 3750
Wire Wire Line
	3450 3550 3900 3550
Connection ~ 3450 3650
Wire Wire Line
	3450 3550 3450 4300
Connection ~ 3450 3950
Text HLabel 2700 4400 0    60   Output ~ 0
A_SCK
Text HLabel 2700 4500 0    60   Output ~ 0
A_RCK
Text HLabel 7650 4400 2    60   Output ~ 0
A_OE_L
Text HLabel 7650 4500 2    60   Output ~ 0
A_SER
Text HLabel 7650 4600 2    60   Output ~ 0
A16
Entry Bus Bus
	8450 3650 8550 3750
Wire Bus Line
	8550 3750 8650 3750
Text Notes 750  1500 0    118  ~ 0
Signal descriptions are on the other sheets.
Text Notes 7500 1900 0    60   ~ 0
Resistors have been placed on D2, D6, and D7 so that\nin-circuit programming can still occur while the\nFlash ROM chip is in place.
$EndSCHEMATC
