EESchema Schematic File Version 2  date Monday 17 December 2012 03:24:18 PM IST
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
LIBS:special
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
LIBS:analogSpice
LIBS:converterSpice
LIBS:digitalSpice
LIBS:linearSpice
LIBS:measurementSpice
LIBS:portSpice
LIBS:sourcesSpice
LIBS:slewRateExample-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "17 dec 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PULSE v1
U 1 1 50CEEB0C
P 4300 4100
F 0 "v1" H 4100 4200 60  0000 C CNN
F 1 "PULSE" H 4100 4050 60  0000 C CNN
F 2 "R1" H 4000 4100 60  0000 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3100 6850 3650
Connection ~ 6850 3400
Connection ~ 4300 4650
Wire Wire Line
	4300 4650 4600 4650
Wire Wire Line
	4600 4650 4600 4400
Wire Wire Line
	6850 3400 6300 3400
Wire Wire Line
	4300 4550 4300 4700
Wire Wire Line
	4900 3500 5300 3500
Wire Wire Line
	4300 3650 4300 3500
Wire Wire Line
	4300 3500 4400 3500
Wire Wire Line
	5300 3300 4300 3300
Wire Wire Line
	4300 3300 4300 3400
Wire Wire Line
	5150 3500 5150 4050
Wire Wire Line
	5150 4050 5550 4050
Connection ~ 5150 3500
Wire Wire Line
	6850 4150 6850 4400
Wire Wire Line
	6050 4050 6550 4050
Wire Wire Line
	6550 4050 6550 3400
Connection ~ 6550 3400
Wire Wire Line
	3400 3100 3400 3550
Wire Wire Line
	3400 3550 4300 3550
Connection ~ 4300 3550
$Comp
L VPLOT8_1 U1
U 2 1 50CEB089
P 6850 2800
F 0 "U1" H 6700 2900 50  0000 C CNN
F 1 "VPLOT8_1" H 7000 2900 50  0000 C CNN
	2    6850 2800
	1    0    0    -1  
$EndComp
$Comp
L VPLOT8_1 U1
U 1 1 50CEB075
P 3400 2800
F 0 "U1" H 3250 2900 50  0000 C CNN
F 1 "VPLOT8_1" H 3550 2900 50  0000 C CNN
	1    3400 2800
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 508245D2
P 4600 4400
F 0 "#FLG01" H 4600 4670 30  0001 C CNN
F 1 "PWR_FLAG" H 4600 4630 30  0000 C CNN
	1    4600 4400
	1    0    0    -1  
$EndComp
$Comp
L UA741 X1
U 1 1 50824595
P 5800 3400
F 0 "X1" H 5950 3550 60  0000 C CNN
F 1 "UA741" H 5950 3650 60  0000 C CNN
	1    5800 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 508240CB
P 4300 3400
F 0 "#PWR02" H 4300 3400 30  0001 C CNN
F 1 "GND" H 4300 3330 30  0001 C CNN
	1    4300 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 508240B7
P 4300 4700
F 0 "#PWR03" H 4300 4700 30  0001 C CNN
F 1 "GND" H 4300 4630 30  0001 C CNN
	1    4300 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 508240AD
P 6850 4400
F 0 "#PWR04" H 6850 4400 30  0001 C CNN
F 1 "GND" H 6850 4330 30  0001 C CNN
	1    6850 4400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 50824073
P 6850 3900
F 0 "R3" V 6930 3900 50  0000 C CNN
F 1 "10000" V 6850 3900 50  0000 C CNN
	1    6850 3900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 50824062
P 4650 3500
F 0 "R1" V 4730 3500 50  0000 C CNN
F 1 "1000" V 4650 3500 50  0000 C CNN
	1    4650 3500
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 50824045
P 5800 4050
F 0 "R2" V 5880 4050 50  0000 C CNN
F 1 "2000" V 5800 4050 50  0000 C CNN
	1    5800 4050
	0    1    1    0   
$EndComp
$EndSCHEMATC
