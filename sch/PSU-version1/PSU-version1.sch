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
F3 "5VDC" O R 4350 1900 60 
F4 "DGND" O R 4350 2100 60 
$EndSheet
$Sheet
S 4650 700  2850 1750
U 5777E602
F0 "CurrentShunt" 60
F1 "CurrentShunt.sch" 60
F2 "UnRegulatedVoltage" I L 4650 850 60 
F3 "CurrentShuntVoltage" O R 7500 850 60 
F4 "Ucurrent" O R 7500 1300 60 
F5 "DGND" I L 4650 2100 60 
F6 "5VDC" O L 4650 1900 60 
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
Wire Wire Line
	4350 1900 4650 1900
Wire Wire Line
	4350 2100 4650 2100
$EndSCHEMATC
