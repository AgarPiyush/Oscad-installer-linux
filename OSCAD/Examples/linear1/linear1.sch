EESchema Schematic File Version 2  date Monday 17 December 2012 11:24:11 AM IST
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
LIBS:linear1-cache
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
Connection ~ 5500 2900
Wire Wire Line
	5350 2900 5750 2900
Connection ~ 7300 2750
Wire Wire Line
	7300 2750 7700 2750
Wire Wire Line
	6700 2500 7300 2500
Connection ~ 5800 3800
Wire Wire Line
	5800 3800 5800 4000
Connection ~ 4600 3800
Wire Wire Line
	4600 3500 4600 3800
Wire Wire Line
	7300 2900 7050 2900
Wire Wire Line
	6400 2900 6400 3000
Wire Wire Line
	3750 2900 3950 2900
Wire Wire Line
	4750 2900 4450 2900
Wire Wire Line
	6550 2900 6250 2900
Connection ~ 6400 2900
Wire Wire Line
	4600 3000 4600 2900
Connection ~ 4600 2900
Wire Wire Line
	3750 3800 7300 3800
Wire Wire Line
	7300 3800 7300 3500
Connection ~ 5500 3800
Wire Wire Line
	6400 3500 6400 3800
Connection ~ 6400 3800
Wire Wire Line
	7300 2500 7300 3000
Connection ~ 7300 2900
Wire Wire Line
	6850 3800 6850 3600
Connection ~ 6850 3800
Connection ~ 5650 2900
Wire Wire Line
	5650 2900 5650 2500
Wire Wire Line
	5650 2500 6100 2500
$Comp
L VPRINT1 U1
U 1 1 506964BE
P 7700 2450
F 0 "U1" H 7550 2550 50  0001 C CNN
F 1 "VPRINT1" H 7850 2550 50  0000 C CNN
	1    7700 2450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 50695F5E
P 6850 3600
F 0 "#FLG01" H 6850 3870 30  0001 C CNN
F 1 "PWR_FLAG" H 6850 3830 30  0000 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 50695EE6
P 5800 4000
F 0 "#PWR02" H 5800 4000 30  0001 C CNN
F 1 "GND" H 5800 3930 30  0001 C CNN
	1    5800 4000
	1    0    0    -1  
$EndComp
Text Label 6100 3800 0    60   ~ 0
c
Text Label 6350 2750 0    60   ~ 0
c
Text Label 6450 2750 0    60   ~ 0
b
Text Label 6550 2900 0    60   ~ 0
b
Text Label 5100 3150 0    60   ~ 0
b
Text Label 5000 3150 0    60   ~ 0
a
Text Label 7150 2900 0    60   ~ 0
a
$Comp
L VCVS E1
U 1 1 50695730
P 5050 2950
F 0 "E1" H 4850 3050 50  0000 C CNN
F 1 "0.5" H 4850 2900 50  0000 C CNN
	1    5050 2950
	1    0    0    -1  
$EndComp
$Comp
L DC I1
U 1 1 506956A6
P 5500 3350
F 0 "I1" H 5300 3450 60  0000 C CNN
F 1 "1" H 5300 3300 60  0000 C CNN
F 2 "R1" H 5200 3350 60  0000 C CNN
	1    5500 3350
	-1   0    0    1   
$EndComp
$Comp
L DC V1
U 1 1 50695694
P 3750 3350
F 0 "V1" H 3550 3450 60  0000 C CNN
F 1 "1" H 3550 3300 60  0000 C CNN
F 2 "R1" H 3450 3350 60  0000 C CNN
	1    3750 3350
	1    0    0    -1  
$EndComp
$Comp
L VCCS G1
U 1 1 5069566A
P 6400 2550
F 0 "G1" H 6200 2650 50  0000 C CNN
F 1 "0.5" H 6200 2500 50  0000 C CNN
	1    6400 2550
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 506955DC
P 7300 3250
F 0 "R6" V 7380 3250 50  0000 C CNN
F 1 "1" V 7300 3250 50  0000 C CNN
	1    7300 3250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 506955D8
P 6400 3250
F 0 "R3" V 6480 3250 50  0000 C CNN
F 1 "1" V 6400 3250 50  0000 C CNN
	1    6400 3250
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 506955D1
P 6800 2900
F 0 "R5" V 6880 2900 50  0000 C CNN
F 1 "0.5" V 6800 2900 50  0000 C CNN
	1    6800 2900
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 506955CC
P 6000 2900
F 0 "R4" V 6080 2900 50  0000 C CNN
F 1 "1" V 6000 2900 50  0000 C CNN
	1    6000 2900
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 506955C7
P 4600 3250
F 0 "R2" V 4680 3250 50  0000 C CNN
F 1 "1" V 4600 3250 50  0000 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 506955C2
P 4200 2900
F 0 "R1" V 4280 2900 50  0000 C CNN
F 1 "1" V 4200 2900 50  0000 C CNN
	1    4200 2900
	0    1    1    0   
$EndComp
$EndSCHEMATC
