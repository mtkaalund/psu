EESchema Schematic File Version 2
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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:logo
LIBS:maxim
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:Worldsemi
LIBS:Xicor
LIBS:Zilog
LIBS:PSU-version1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "PSU"
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3700 1700 0    60   Input ~ 0
UnRegulatedVoltage
Text HLabel 5350 1700 0    60   Output ~ 0
CurrentShuntVoltage
$Comp
L R R9
U 1 1 5777F411
P 4550 1950
F 0 "R9" V 4630 1950 50  0000 C CNN
F 1 "R" V 4550 1950 50  0000 C CNN
F 2 "" V 4480 1950 50  0000 C CNN
F 3 "" H 4550 1950 50  0000 C CNN
	1    4550 1950
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5777F54F
P 4550 2100
F 0 "R10" V 4630 2100 50  0000 C CNN
F 1 "R" V 4550 2100 50  0000 C CNN
F 2 "" V 4480 2100 50  0000 C CNN
F 3 "" H 4550 2100 50  0000 C CNN
	1    4550 2100
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5777F5AA
P 4550 2250
F 0 "R11" V 4630 2250 50  0000 C CNN
F 1 "R" V 4550 2250 50  0000 C CNN
F 2 "" V 4480 2250 50  0000 C CNN
F 3 "" H 4550 2250 50  0000 C CNN
	1    4550 2250
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5777F5EB
P 4550 2400
F 0 "R12" V 4630 2400 50  0000 C CNN
F 1 "R" V 4550 2400 50  0000 C CNN
F 2 "" V 4480 2400 50  0000 C CNN
F 3 "" H 4550 2400 50  0000 C CNN
	1    4550 2400
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5777F62C
P 4550 2550
F 0 "R13" V 4630 2550 50  0000 C CNN
F 1 "R" V 4550 2550 50  0000 C CNN
F 2 "" V 4480 2550 50  0000 C CNN
F 3 "" H 4550 2550 50  0000 C CNN
	1    4550 2550
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 5777F667
P 4550 2700
F 0 "R14" V 4630 2700 50  0000 C CNN
F 1 "R" V 4550 2700 50  0000 C CNN
F 2 "" V 4480 2700 50  0000 C CNN
F 3 "" H 4550 2700 50  0000 C CNN
	1    4550 2700
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5777F6AC
P 4550 2850
F 0 "R15" V 4630 2850 50  0000 C CNN
F 1 "R" V 4550 2850 50  0000 C CNN
F 2 "" V 4480 2850 50  0000 C CNN
F 3 "" H 4550 2850 50  0000 C CNN
	1    4550 2850
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 5777F6EB
P 4550 3000
F 0 "R16" V 4630 3000 50  0000 C CNN
F 1 "R" V 4550 3000 50  0000 C CNN
F 2 "" V 4480 3000 50  0000 C CNN
F 3 "" H 4550 3000 50  0000 C CNN
	1    4550 3000
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 5777F728
P 4550 3150
F 0 "R17" V 4630 3150 50  0000 C CNN
F 1 "R" V 4550 3150 50  0000 C CNN
F 2 "" V 4480 3150 50  0000 C CNN
F 3 "" H 4550 3150 50  0000 C CNN
	1    4550 3150
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 5777F761
P 4550 3300
F 0 "R18" V 4630 3300 50  0000 C CNN
F 1 "R" V 4550 3300 50  0000 C CNN
F 2 "" V 4480 3300 50  0000 C CNN
F 3 "" H 4550 3300 50  0000 C CNN
	1    4550 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1700 3900 1700
Wire Wire Line
	3900 1700 3900 1950
Wire Wire Line
	3900 1950 4400 1950
Wire Wire Line
	4700 1950 5350 1950
Wire Wire Line
	5350 1950 5350 1700
Wire Wire Line
	4700 1950 4700 3300
Wire Wire Line
	4700 2850 4700 3150
Connection ~ 4700 3150
Connection ~ 4700 2400
Connection ~ 4700 2250
Connection ~ 4700 2850
Connection ~ 4700 2700
Connection ~ 4700 3000
Connection ~ 4700 2100
Wire Wire Line
	4700 2550 4700 2700
Connection ~ 4700 2550
Wire Wire Line
	4400 1950 4400 3300
Connection ~ 4400 3150
Connection ~ 4400 3000
Connection ~ 4400 2850
Connection ~ 4400 2700
Connection ~ 4400 2550
Connection ~ 4400 2400
Connection ~ 4400 2250
Connection ~ 4400 2100
$Comp
L R R7
U 1 1 5777FB16
P 4050 3850
F 0 "R7" V 4130 3850 50  0000 C CNN
F 1 "R" V 4050 3850 50  0000 C CNN
F 2 "" V 3980 3850 50  0000 C CNN
F 3 "" H 4050 3850 50  0000 C CNN
	1    4050 3850
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 5777FBEA
P 5200 3850
F 0 "R20" V 5280 3850 50  0000 C CNN
F 1 "R" V 5200 3850 50  0000 C CNN
F 2 "" V 5130 3850 50  0000 C CNN
F 3 "" H 5200 3850 50  0000 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3700 4050 3300
Wire Wire Line
	4050 3300 4400 3300
Wire Wire Line
	4700 3300 5200 3300
Wire Wire Line
	5200 3300 5200 3700
Wire Wire Line
	4050 4200 4050 4000
Wire Wire Line
	5200 4200 5200 4000
$Comp
L MCP601 U3
U 1 1 5779561D
P 5200 5700
F 0 "U3" H 5250 5900 50  0000 C CNN
F 1 "MCP601" H 5400 5500 50  0000 C CNN
F 2 "" H 5150 5800 50  0000 C CNN
F 3 "" H 5250 5900 50  0000 C CNN
	1    5200 5700
	1    0    0    -1  
$EndComp
Text Label 5200 4200 0    60   ~ 0
Ua
Text Label 4050 4200 0    60   ~ 0
Ub
$Comp
L R R8
U 1 1 5779584F
P 4250 5950
F 0 "R8" V 4330 5950 50  0000 C CNN
F 1 "R" V 4250 5950 50  0000 C CNN
F 2 "" V 4180 5950 50  0000 C CNN
F 3 "" H 4250 5950 50  0000 C CNN
	1    4250 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 57795950
P 5100 6100
F 0 "#PWR14" H 5100 5850 50  0001 C CNN
F 1 "GND" H 5100 5950 50  0000 C CNN
F 2 "" H 5100 6100 50  0000 C CNN
F 3 "" H 5100 6100 50  0000 C CNN
	1    5100 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 57795980
P 4250 6400
F 0 "#PWR12" H 4250 6150 50  0001 C CNN
F 1 "GND" H 4250 6250 50  0000 C CNN
F 2 "" H 4250 6400 50  0000 C CNN
F 3 "" H 4250 6400 50  0000 C CNN
	1    4250 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5600 4900 5600
Wire Wire Line
	4250 5800 4250 5600
Connection ~ 4250 5600
Wire Wire Line
	4250 6400 4250 6100
Wire Wire Line
	4900 5800 4450 5800
Text Label 4450 5800 0    60   ~ 0
Ua
Text Label 3850 5600 0    60   ~ 0
Ub
Wire Wire Line
	5100 6100 5100 6000
$Comp
L R R19
U 1 1 5779601F
P 5150 6400
F 0 "R19" V 5230 6400 50  0000 C CNN
F 1 "R" V 5150 6400 50  0000 C CNN
F 2 "" V 5080 6400 50  0000 C CNN
F 3 "" H 5150 6400 50  0000 C CNN
	1    5150 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 5800 4700 6400
Wire Wire Line
	4700 6400 5000 6400
Connection ~ 4700 5800
Wire Wire Line
	5300 6400 5700 6400
Wire Wire Line
	5700 6400 5700 5700
Wire Wire Line
	5500 5700 6100 5700
Connection ~ 5700 5700
Text HLabel 6100 5700 0    60   Output ~ 0
Ucurrent
$Comp
L +5VD #PWR13
U 1 1 577962D3
P 5100 5200
F 0 "#PWR13" H 5100 5050 50  0001 C CNN
F 1 "+5VD" H 5100 5340 50  0000 C CNN
F 2 "" H 5100 5200 50  0000 C CNN
F 3 "" H 5100 5200 50  0000 C CNN
	1    5100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5400 5100 5200
$Comp
L +5VD #PWR10
U 1 1 577963BA
P 2250 5500
F 0 "#PWR10" H 2250 5350 50  0001 C CNN
F 1 "+5VD" H 2250 5640 50  0000 C CNN
F 2 "" H 2250 5500 50  0000 C CNN
F 3 "" H 2250 5500 50  0000 C CNN
	1    2250 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 577963EC
P 2250 6100
F 0 "#PWR11" H 2250 5850 50  0001 C CNN
F 1 "GND" H 2250 5950 50  0000 C CNN
F 2 "" H 2250 6100 50  0000 C CNN
F 3 "" H 2250 6100 50  0000 C CNN
	1    2250 6100
	1    0    0    -1  
$EndComp
Text HLabel 2150 6000 0    60   Input ~ 0
DGND
Text HLabel 2150 5900 0    60   Output ~ 0
DGND
Wire Wire Line
	2150 5900 2250 5900
Wire Wire Line
	2250 5900 2250 6100
Wire Wire Line
	2150 6000 2250 6000
Connection ~ 2250 6000
Text HLabel 2150 5600 0    60   Output ~ 0
5VDC
Text HLabel 2150 5700 0    60   Input ~ 0
5VDC
Wire Wire Line
	2150 5700 2250 5700
Wire Wire Line
	2250 5700 2250 5500
Wire Wire Line
	2150 5600 2250 5600
Connection ~ 2250 5600
$EndSCHEMATC
