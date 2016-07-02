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
LIBS:PSU-version1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "PSU"
Date ""
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1550 700  2800 1750
U 5777E5D3
F0 "VoltageInput" 60
F1 "VoltageInput.sch" 60
F2 "UnRegulateVoltage" O R 4350 850 60 
$EndSheet
$Sheet
S 4650 700  2850 1750
U 5777E602
F0 "CurrentShunt" 60
F1 "CurrentShunt.sch" 60
F2 "UnRegulatedVoltage" I L 4650 850 60 
F3 "CurrentShuntVoltage" O R 7500 850 60 
$EndSheet
$Sheet
S 7850 700  2850 1700
U 5777E625
F0 "VoltageRegulate" 60
F1 "VoltageRegulate.sch" 60
$EndSheet
$Sheet
S 7850 2950 2850 1100
U 5777E65D
F0 "ControlPanel" 60
F1 "ControlPanel.sch" 60
$EndSheet
Wire Wire Line
	4350 850  4650 850 
$Sheet
S 4700 2950 2800 1100
U 57780113
F0 "MCU" 60
F1 "MCU.sch" 60
$EndSheet
$EndSCHEMATC
