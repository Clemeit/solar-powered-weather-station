EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Solar Powered Weather Station"
Date "2021-09-22"
Rev "A"
Comp "Team 12"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Switching:LM2596S-ADJ U2
U 1 1 614B5A96
P 3300 3200
F 0 "U2" H 3300 3567 50  0000 C CNN
F 1 "LM2596S-ADJ" H 3300 3476 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-262-5_Vertical" H 3350 2950 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 3300 3200 50  0001 C CNN
	1    3300 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 614B5AA8
P 4850 3550
F 0 "RV4" H 4781 3596 50  0000 R CNN
F 1 "R_POT" H 4781 3505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4850 3550 50  0001 C CNN
F 3 "~" H 4850 3550 50  0001 C CNN
	1    4850 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 614B5AAE
P 4850 4050
F 0 "R4" H 4920 4096 50  0000 L CNN
F 1 "510" H 4920 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4780 4050 50  0001 C CNN
F 3 "~" H 4850 4050 50  0001 C CNN
	1    4850 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 614B5AC0
P 4300 3300
F 0 "L2" V 4490 3300 50  0000 C CNN
F 1 "33uH" V 4399 3300 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L7.0mm_D3.3mm_P10.16mm_Horizontal_Fastron_MICC" H 4300 3300 50  0001 C CNN
F 3 "~" H 4300 3300 50  0001 C CNN
	1    4300 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3300 4150 3300
Wire Wire Line
	3800 3300 4000 3300
Connection ~ 4000 3300
Wire Wire Line
	4450 3300 4850 3300
Connection ~ 3300 4300
$Comp
L power:GND #PWR017
U 1 1 614B5AF9
P 3300 4300
F 0 "#PWR017" H 3300 4050 50  0001 C CNN
F 1 "GND" H 3305 4127 50  0000 C CNN
F 2 "" H 3300 4300 50  0001 C CNN
F 3 "" H 3300 4300 50  0001 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR012
U 1 1 614B5B00
P 2250 3100
F 0 "#PWR012" H 2250 2950 50  0001 C CNN
F 1 "+12V" H 2265 3273 50  0000 C CNN
F 2 "" H 2250 3100 50  0001 C CNN
F 3 "" H 2250 3100 50  0001 C CNN
	1    2250 3100
	1    0    0    -1  
$EndComp
Text Notes 800  7400 0    50   ~ 0
Arduino Pins\n
Text Notes 600  8000 0    50   ~ 0
2x for photoresistors (DIGITAL DATA) X\n3x for servo (5VDC, GND, PWM DATA) X\n?? for wifi module\n4x for barometer (3.3V, GND, I2C CLK ANALOG, I2C DATA ANALOG) X\n3x for humidity (3-5VDC prob 5VDC, GND, DIGITAL DATA ) (4.7k) X\n3x for temperature (3-5VDC prob 5VDC, GND, DIGITAL DATA ) (4.7k) X\n\n
Text Notes 8300 700  0    50   ~ 0
Photoresistor #1
Text Notes 9100 700  0    50   ~ 0
Photoresistor #2
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 617B8219
P 1000 2300
F 0 "J3" H 1050 2400 50  0000 R CNN
F 1 "12-V Battery" H 1050 2500 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1000 2300 50  0001 C CNN
F 3 "~" H 1000 2300 50  0001 C CNN
	1    1000 2300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 J1
U 1 1 617BEDC8
P 1000 1100
F 0 "J1" H 1050 1400 50  0000 R CNN
F 1 "Solar Charge Controller" H 1050 1500 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-6-5.08_1x06_P5.08mm_Horizontal" H 1000 1100 50  0001 C CNN
F 3 "~" H 1000 1100 50  0001 C CNN
	1    1000 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2250 4300 2750 4300
Wire Wire Line
	4850 3300 4850 3400
Wire Wire Line
	3800 3100 4050 3100
Wire Wire Line
	4700 3550 4550 3550
Wire Wire Line
	4550 3550 4550 3100
Wire Wire Line
	4850 3700 4850 3900
Wire Wire Line
	4850 3300 5350 3300
Connection ~ 4850 3300
$Comp
L Device:CP C3
U 1 1 6151D8C9
P 2250 3700
F 0 "C3" H 2368 3746 50  0000 L CNN
F 1 "1000uF" H 2368 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.50mm" H 2288 3550 50  0001 C CNN
F 3 "~" H 2250 3700 50  0001 C CNN
	1    2250 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 6151E7D4
P 5350 3800
F 0 "C4" H 5468 3846 50  0000 L CNN
F 1 "220uF" H 5468 3755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 5388 3650 50  0001 C CNN
F 3 "~" H 5350 3800 50  0001 C CNN
	1    5350 3800
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D2
U 1 1 6151F29D
P 4000 3800
F 0 "D2" V 4046 3672 50  0000 R CNN
F 1 "1N5824" V 3955 3672 50  0000 R CNN
F 2 "Diode_THT:D_5W_P12.70mm_Horizontal" H 4000 3800 50  0001 C CNN
F 3 "~" H 4000 3800 50  0001 C CNN
	1    4000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 3300 5350 3650
Wire Wire Line
	2250 3100 2250 3550
Wire Wire Line
	4000 3300 4000 3600
Wire Wire Line
	3300 4300 4000 4300
Wire Wire Line
	5350 4300 5350 3950
Wire Wire Line
	4850 4300 4850 4200
Connection ~ 4850 4300
Wire Wire Line
	4850 4300 5350 4300
Wire Wire Line
	4000 4000 4000 4300
Connection ~ 4000 4300
Wire Wire Line
	4000 4300 4850 4300
Wire Wire Line
	2250 4300 2250 3850
Wire Wire Line
	3300 3500 3300 4300
Wire Wire Line
	2800 3300 2750 3300
Wire Wire Line
	2750 3300 2750 4300
Connection ~ 2750 4300
Wire Wire Line
	2750 4300 3300 4300
Connection ~ 2250 3100
Wire Wire Line
	2250 3100 2800 3100
$Comp
L Regulator_Switching:LM2596S-ADJ U1
U 1 1 615643A2
P 3300 1200
F 0 "U1" H 3300 1567 50  0000 C CNN
F 1 "LM2596S-ADJ" H 3300 1476 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-262-5_Vertical" H 3350 950 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 3300 1200 50  0001 C CNN
	1    3300 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 6156464C
P 4850 1550
F 0 "RV1" H 4781 1596 50  0000 R CNN
F 1 "R_POT" H 4781 1505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4850 1550 50  0001 C CNN
F 3 "~" H 4850 1550 50  0001 C CNN
	1    4850 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 61564656
P 4850 2050
F 0 "R3" H 4920 2096 50  0000 L CNN
F 1 "510" H 4920 2005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4780 2050 50  0001 C CNN
F 3 "~" H 4850 2050 50  0001 C CNN
	1    4850 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 61564660
P 4300 1300
F 0 "L1" V 4490 1300 50  0000 C CNN
F 1 "33uH" V 4399 1300 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L7.0mm_D3.3mm_P10.16mm_Horizontal_Fastron_MICC" H 4300 1300 50  0001 C CNN
F 3 "~" H 4300 1300 50  0001 C CNN
	1    4300 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1300 4150 1300
Wire Wire Line
	3800 1300 4000 1300
Connection ~ 4000 1300
Wire Wire Line
	4450 1300 4850 1300
Connection ~ 3300 2300
$Comp
L power:GND #PWR08
U 1 1 6156466F
P 3300 2300
F 0 "#PWR08" H 3300 2050 50  0001 C CNN
F 1 "GND" H 3305 2127 50  0000 C CNN
F 2 "" H 3300 2300 50  0001 C CNN
F 3 "" H 3300 2300 50  0001 C CNN
	1    3300 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR03
U 1 1 61564679
P 2250 1100
F 0 "#PWR03" H 2250 950 50  0001 C CNN
F 1 "+12V" H 2265 1273 50  0000 C CNN
F 2 "" H 2250 1100 50  0001 C CNN
F 3 "" H 2250 1100 50  0001 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR04
U 1 1 61564683
P 5350 1300
F 0 "#PWR04" H 5350 1150 50  0001 C CNN
F 1 "+9V" H 5365 1473 50  0000 C CNN
F 2 "" H 5350 1300 50  0001 C CNN
F 3 "" H 5350 1300 50  0001 C CNN
	1    5350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2300 2750 2300
Wire Wire Line
	4850 1300 4850 1400
Wire Wire Line
	3800 1100 4100 1100
Wire Wire Line
	4700 1550 4550 1550
Wire Wire Line
	4550 1550 4550 1100
Wire Wire Line
	4850 1700 4850 1900
Wire Wire Line
	4850 1300 5350 1300
Connection ~ 4850 1300
Connection ~ 5350 1300
$Comp
L Device:CP C1
U 1 1 61564697
P 2250 1700
F 0 "C1" H 2368 1746 50  0000 L CNN
F 1 "1000uF" H 2368 1655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.50mm" H 2288 1550 50  0001 C CNN
F 3 "~" H 2250 1700 50  0001 C CNN
	1    2250 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 615646A1
P 5350 1800
F 0 "C2" H 5468 1846 50  0000 L CNN
F 1 "220uF" H 5468 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 5388 1650 50  0001 C CNN
F 3 "~" H 5350 1800 50  0001 C CNN
	1    5350 1800
	1    0    0    -1  
$EndComp
$Comp
L pspice:DIODE D1
U 1 1 615646AB
P 4000 1800
F 0 "D1" V 4046 1672 50  0000 R CNN
F 1 "1N5824" V 3955 1672 50  0000 R CNN
F 2 "Diode_THT:D_5W_P12.70mm_Horizontal" H 4000 1800 50  0001 C CNN
F 3 "~" H 4000 1800 50  0001 C CNN
	1    4000 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 1300 5350 1650
Wire Wire Line
	2250 1100 2250 1550
Wire Wire Line
	4000 1300 4000 1600
Wire Wire Line
	3300 2300 4000 2300
Wire Wire Line
	5350 2300 5350 1950
Wire Wire Line
	4850 2300 4850 2200
Connection ~ 4850 2300
Wire Wire Line
	4850 2300 5350 2300
Wire Wire Line
	4000 2000 4000 2300
Connection ~ 4000 2300
Wire Wire Line
	4000 2300 4850 2300
Wire Wire Line
	2250 2300 2250 1850
Wire Wire Line
	3300 1500 3300 2300
Wire Wire Line
	2800 1300 2750 1300
Wire Wire Line
	2750 1300 2750 2300
Connection ~ 2750 2300
Wire Wire Line
	2750 2300 3050 2300
Connection ~ 2250 1100
Wire Wire Line
	2250 1100 2600 1100
Text Notes 2150 2750 0    50   ~ 0
5V Switch-Mode Voltage Regulator
Text Notes 2150 750  0    50   ~ 0
9V Switch-Mode Voltage Regulator
Text Notes 700  1150 1    50   ~ 0
Solar Panel
Text Notes 800  1300 1    50   ~ 0
Battery
Text Notes 900  1450 1    50   ~ 0
Load
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 615A1A3F
P 1000 1800
F 0 "J2" H 1050 1900 50  0000 R CNN
F 1 "Solar Panel" H 1050 2000 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1000 1800 50  0001 C CNN
F 3 "~" H 1000 1800 50  0001 C CNN
	1    1000 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 1800 1500 1800
Wire Wire Line
	1500 1800 1500 900 
Wire Wire Line
	1500 900  1200 900 
Wire Wire Line
	1200 1900 1450 1900
Wire Wire Line
	1450 1900 1450 1000
Wire Wire Line
	1450 1000 1200 1000
Wire Wire Line
	1600 1100 1200 1100
Wire Wire Line
	1200 2400 1550 2400
Wire Wire Line
	1550 2400 1550 1200
Wire Wire Line
	1550 1200 1200 1200
Wire Wire Line
	1200 1300 1650 1300
$Comp
L power:+12V #PWR010
U 1 1 615BD252
P 1200 2900
F 0 "#PWR010" H 1200 2750 50  0001 C CNN
F 1 "+12V" V 1200 3100 50  0000 C CNN
F 2 "" H 1200 2900 50  0001 C CNN
F 3 "" H 1200 2900 50  0001 C CNN
	1    1200 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 615BD7D4
P 1200 1400
F 0 "#PWR05" H 1200 1150 50  0001 C CNN
F 1 "GND" V 1200 1200 50  0000 C CNN
F 2 "" H 1200 1400 50  0001 C CNN
F 3 "" H 1200 1400 50  0001 C CNN
	1    1200 1400
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 615D960E
P 6950 2100
F 0 "A1" H 6450 3200 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 6450 3100 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 6950 2100 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 6950 2100 50  0001 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 615F9E91
P 8650 1850
F 0 "RV2" H 8581 1896 50  0000 R CNN
F 1 "R_POT" H 8581 1805 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 8650 1850 50  0001 C CNN
F 3 "~" H 8650 1850 50  0001 C CNN
	1    8650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1700 8650 1650
Wire Wire Line
	8650 1650 8450 1650
Wire Wire Line
	8450 1650 8450 1550
Connection ~ 8650 1650
Wire Wire Line
	8800 1850 8850 1850
Wire Wire Line
	8850 1850 8850 1950
$Comp
L power:GND #PWR06
U 1 1 61604B16
P 8850 1950
F 0 "#PWR06" H 8850 1700 50  0001 C CNN
F 1 "GND" H 8855 1777 50  0000 C CNN
F 2 "" H 8850 1950 50  0001 C CNN
F 3 "" H 8850 1950 50  0001 C CNN
	1    8850 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 61608901
P 9450 1850
F 0 "RV3" H 9381 1896 50  0000 R CNN
F 1 "R_POT" H 9381 1805 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 9450 1850 50  0001 C CNN
F 3 "~" H 9450 1850 50  0001 C CNN
	1    9450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1700 9450 1650
Wire Wire Line
	9450 1650 9250 1650
Wire Wire Line
	9250 1650 9250 1550
Connection ~ 9450 1650
Wire Wire Line
	9600 1850 9650 1850
Wire Wire Line
	9650 1850 9650 1950
$Comp
L power:GND #PWR07
U 1 1 61608912
P 9650 1950
F 0 "#PWR07" H 9650 1700 50  0001 C CNN
F 1 "GND" H 9655 1777 50  0000 C CNN
F 2 "" H 9650 1950 50  0001 C CNN
F 3 "" H 9650 1950 50  0001 C CNN
	1    9650 1950
	1    0    0    -1  
$EndComp
Text GLabel 8450 1550 1    50   Input ~ 0
AnalogPhoto1
Text GLabel 9250 1550 1    50   Input ~ 0
AnalogPhoto2
Wire Wire Line
	6850 3200 6850 3250
Wire Wire Line
	6850 3250 6950 3250
Wire Wire Line
	7050 3250 7050 3200
Wire Wire Line
	6950 3250 6950 3200
Connection ~ 6950 3250
Wire Wire Line
	6950 3250 7050 3250
Wire Wire Line
	6950 3250 6950 3300
$Comp
L power:GND #PWR014
U 1 1 61634E69
P 6950 3300
F 0 "#PWR014" H 6950 3050 50  0001 C CNN
F 1 "GND" H 6955 3127 50  0000 C CNN
F 2 "" H 6950 3300 50  0001 C CNN
F 3 "" H 6950 3300 50  0001 C CNN
	1    6950 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR01
U 1 1 61638887
P 6850 1000
F 0 "#PWR01" H 6850 850 50  0001 C CNN
F 1 "+9V" V 6850 1200 50  0000 C CNN
F 2 "" H 6850 1000 50  0001 C CNN
F 3 "" H 6850 1000 50  0001 C CNN
	1    6850 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 616407AA
P 7050 1000
F 0 "#PWR02" H 7050 850 50  0001 C CNN
F 1 "+3.3V" V 7050 1250 50  0000 C CNN
F 2 "" H 7050 1000 50  0001 C CNN
F 3 "" H 7050 1000 50  0001 C CNN
	1    7050 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 616D1F32
P 5350 3300
F 0 "#PWR013" H 5350 3150 50  0001 C CNN
F 1 "+5V" H 5365 3473 50  0000 C CNN
F 2 "" H 5350 3300 50  0001 C CNN
F 3 "" H 5350 3300 50  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
Connection ~ 5350 3300
NoConn ~ 7450 1500
NoConn ~ 7450 1700
NoConn ~ 7450 1900
NoConn ~ 7450 2300
NoConn ~ 7450 2400
NoConn ~ 7450 2800
NoConn ~ 7450 2900
NoConn ~ 6450 2800
NoConn ~ 6450 2700
NoConn ~ 6450 2600
NoConn ~ 6450 2500
NoConn ~ 6450 2400
NoConn ~ 6450 2300
NoConn ~ 8650 2000
NoConn ~ 9450 2000
Text GLabel 7550 2600 2    50   Input ~ 0
BaroCLK
Text GLabel 7550 2500 2    50   Input ~ 0
BaroDATA
Wire Wire Line
	7550 2500 7450 2500
Wire Wire Line
	7450 2600 7550 2600
Wire Wire Line
	7450 2100 7550 2100
Wire Wire Line
	7450 2200 7550 2200
Text GLabel 7550 2200 2    50   Input ~ 0
AnalogPhoto1
Text GLabel 7550 2100 2    50   Input ~ 0
AnalogPhoto2
Wire Wire Line
	3950 5550 3850 5550
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J4
U 1 1 61605F6B
P 4150 5350
F 0 "J4" H 4200 5667 50  0000 C CNN
F 1 "ESP8266" H 4200 5576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4150 5350 50  0001 C CNN
F 3 "~" H 4150 5350 50  0001 C CNN
	1    4150 5350
	1    0    0    -1  
$EndComp
Text GLabel 6350 1500 0    50   Input ~ 0
Arduino_RX
Text GLabel 6350 1600 0    50   Input ~ 0
Arduino_TX
Wire Wire Line
	6450 1500 6350 1500
Wire Wire Line
	6350 1600 6450 1600
Text GLabel 6350 1800 0    50   Input ~ 0
ServoPWM
Wire Wire Line
	6350 1800 6450 1800
Text Notes 3600 5000 0    50   ~ 0
WiFi Module
$Comp
L Connector:TestPoint TP6
U 1 1 616DFEC1
P 9450 1650
F 0 "TP6" V 9404 1838 50  0000 L CNN
F 1 "PR2_TP" V 9495 1838 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9650 1650 50  0001 C CNN
F 3 "~" H 9650 1650 50  0001 C CNN
	1    9450 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 616E18C2
P 8650 1650
F 0 "TP5" V 8604 1838 50  0000 L CNN
F 1 "PR1_TP" V 8695 1838 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 8850 1650 50  0001 C CNN
F 3 "~" H 8850 1650 50  0001 C CNN
	1    8650 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 616E3C83
P 4850 3300
F 0 "TP8" H 4700 3600 50  0000 L CNN
F 1 "5V_Output_TP" H 4700 3500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5050 3300 50  0001 C CNN
F 3 "~" H 5050 3300 50  0001 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 616E439D
P 4850 1300
F 0 "TP4" H 4700 1600 50  0000 L CNN
F 1 "9V_Output_TP" H 4700 1500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5050 1300 50  0001 C CNN
F 3 "~" H 5050 1300 50  0001 C CNN
	1    4850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1300 1650 2800
Wire Wire Line
	1650 2800 1200 2800
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 616EE870
P 1000 2800
F 0 "J5" H 1050 2900 50  0000 R CNN
F 1 "Power Switch" H 1050 3000 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 1000 2800 50  0001 C CNN
F 3 "~" H 1000 2800 50  0001 C CNN
	1    1000 2800
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 6170C31D
P 4050 3100
F 0 "TP7" H 3900 3400 50  0000 L CNN
F 1 "5V_Feedback_TP" H 3900 3300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4250 3100 50  0001 C CNN
F 3 "~" H 4250 3100 50  0001 C CNN
	1    4050 3100
	1    0    0    -1  
$EndComp
Connection ~ 4050 3100
Wire Wire Line
	4050 3100 4550 3100
$Comp
L Connector:TestPoint TP3
U 1 1 6170C810
P 4100 1100
F 0 "TP3" H 3950 1400 50  0000 L CNN
F 1 "9V_Feedback_TP" H 3950 1300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4300 1100 50  0001 C CNN
F 3 "~" H 4300 1100 50  0001 C CNN
	1    4100 1100
	1    0    0    -1  
$EndComp
Connection ~ 4100 1100
Wire Wire Line
	4100 1100 4550 1100
Text GLabel 7150 950  1    50   Input ~ 0
5V_Ref
Text GLabel 8650 1150 1    50   Input ~ 0
5V_Ref
Text GLabel 9450 1150 1    50   Input ~ 0
5V_Ref
$Comp
L Connector:TestPoint TP1
U 1 1 61730150
P 7400 850
F 0 "TP1" V 7354 1038 50  0000 L CNN
F 1 "5V_Ref_TP" V 7445 1038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 7600 850 50  0001 C CNN
F 3 "~" H 7600 850 50  0001 C CNN
	1    7400 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1000 7050 1050
Wire Wire Line
	6850 1000 6850 1100
Wire Wire Line
	7150 1000 7150 1100
$Comp
L Connector:TestPoint TP2
U 1 1 6173F275
P 7400 1050
F 0 "TP2" V 7354 1238 50  0000 L CNN
F 1 "3.3V_Ref_TP" V 7445 1238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 7600 1050 50  0001 C CNN
F 3 "~" H 7600 1050 50  0001 C CNN
	1    7400 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1050 7400 1050
Connection ~ 7050 1050
Wire Wire Line
	7050 1050 7050 1100
Wire Wire Line
	7150 1000 7400 1000
Wire Wire Line
	7400 1000 7400 850 
Wire Wire Line
	7150 1000 7150 950 
Connection ~ 7150 1000
Wire Notes Line
	950  900  700  900 
Wire Notes Line
	950  1000 700  1000
Wire Notes Line
	950  1100 800  1100
Wire Notes Line
	950  1200 800  1200
Wire Notes Line
	950  1300 900  1300
Wire Notes Line
	950  1400 900  1400
Text Notes 700  900  0    50   ~ 0
+
Text Notes 800  1100 0    50   ~ 0
+
Text Notes 900  1300 0    50   ~ 0
+
Text Notes 850  1800 0    50   ~ 0
+
Text Notes 850  2300 0    50   ~ 0
+
Text GLabel 6350 1700 0    50   Input ~ 0
DS18B20Data
Wire Wire Line
	6350 1700 6450 1700
Text GLabel 6350 2200 0    50   Input ~ 0
DHT22Data
Wire Wire Line
	6450 2200 6350 2200
NoConn ~ 6450 2100
NoConn ~ 6450 2000
NoConn ~ 6450 1900
NoConn ~ 7250 3000
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 615516B0
P 2600 1100
F 0 "#FLG0101" H 2600 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 2600 1273 50  0000 C CNN
F 2 "" H 2600 1100 50  0001 C CNN
F 3 "~" H 2600 1100 50  0001 C CNN
	1    2600 1100
	1    0    0    -1  
$EndComp
Connection ~ 2600 1100
Wire Wire Line
	2600 1100 2800 1100
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 615523F1
P 3050 2300
F 0 "#FLG0102" H 3050 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 3050 2473 50  0000 C CNN
F 2 "" H 3050 2300 50  0001 C CNN
F 3 "~" H 3050 2300 50  0001 C CNN
	1    3050 2300
	1    0    0    -1  
$EndComp
Connection ~ 3050 2300
Wire Wire Line
	3050 2300 3300 2300
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61552D43
P 5350 1300
F 0 "#FLG0103" H 5350 1375 50  0001 C CNN
F 1 "PWR_FLAG" V 5350 1428 50  0000 L CNN
F 2 "" H 5350 1300 50  0001 C CNN
F 3 "~" H 5350 1300 50  0001 C CNN
	1    5350 1300
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61553A50
P 5350 3300
F 0 "#FLG0104" H 5350 3375 50  0001 C CNN
F 1 "PWR_FLAG" V 5350 3428 50  0000 L CNN
F 2 "" H 5350 3300 50  0001 C CNN
F 3 "~" H 5350 3300 50  0001 C CNN
	1    5350 3300
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 615D88BC
P 950 3350
F 0 "H1" V 904 3500 50  0000 L CNN
F 1 "MountingHole_Pad" V 995 3500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D4.0mm" H 950 3350 50  0001 C CNN
F 3 "~" H 950 3350 50  0001 C CNN
	1    950  3350
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 615D954E
P 950 3550
F 0 "H2" V 904 3700 50  0000 L CNN
F 1 "MountingHole_Pad" V 995 3700 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D4.0mm" H 950 3550 50  0001 C CNN
F 3 "~" H 950 3550 50  0001 C CNN
	1    950  3550
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 615D982B
P 950 3750
F 0 "H3" V 904 3900 50  0000 L CNN
F 1 "MountingHole_Pad" V 995 3900 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D4.0mm" H 950 3750 50  0001 C CNN
F 3 "~" H 950 3750 50  0001 C CNN
	1    950  3750
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 615D9B42
P 950 3950
F 0 "H4" V 904 4100 50  0000 L CNN
F 1 "MountingHole_Pad" V 995 4100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D4.0mm" H 950 3950 50  0001 C CNN
F 3 "~" H 950 3950 50  0001 C CNN
	1    950  3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 615D9F8B
P 800 4100
F 0 "#PWR024" H 800 3850 50  0001 C CNN
F 1 "GND" H 805 3927 50  0000 C CNN
F 2 "" H 800 4100 50  0001 C CNN
F 3 "" H 800 4100 50  0001 C CNN
	1    800  4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4100 800  3950
Wire Wire Line
	800  3350 850  3350
Wire Wire Line
	850  3550 800  3550
Connection ~ 800  3550
Wire Wire Line
	800  3550 800  3350
Wire Wire Line
	850  3750 800  3750
Connection ~ 800  3750
Wire Wire Line
	800  3750 800  3550
Wire Wire Line
	850  3950 800  3950
Connection ~ 800  3950
Wire Wire Line
	800  3950 800  3750
$Comp
L Device:R R5
U 1 1 615A058E
P 9050 3850
F 0 "R5" H 9120 3896 50  0000 L CNN
F 1 "4.7k" H 9120 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8980 3850 50  0001 C CNN
F 3 "~" H 9050 3850 50  0001 C CNN
	1    9050 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 6165E700
P 8850 4150
F 0 "#PWR019" H 8850 3900 50  0001 C CNN
F 1 "GND" V 8850 3950 50  0000 C CNN
F 2 "" H 8850 4150 50  0001 C CNN
F 3 "" H 8850 4150 50  0001 C CNN
	1    8850 4150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 6165F1D6
P 8850 3950
F 0 "#PWR018" H 8850 3800 50  0001 C CNN
F 1 "+5V" V 8850 4150 50  0000 C CNN
F 2 "" H 8850 3950 50  0001 C CNN
F 3 "" H 8850 3950 50  0001 C CNN
	1    8850 3950
	0    -1   -1   0   
$EndComp
Text GLabel 9150 4050 0    50   Input ~ 0
DHT22Data
Text Notes 8600 3600 0    50   ~ 0
Humidity Sensor\n
$Comp
L power:+5V #PWR022
U 1 1 616802B5
P 9200 5550
F 0 "#PWR022" H 9200 5400 50  0001 C CNN
F 1 "+5V" V 9200 5750 50  0000 C CNN
F 2 "" H 9200 5550 50  0001 C CNN
F 3 "" H 9200 5550 50  0001 C CNN
	1    9200 5550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 61680CF5
P 9200 5650
F 0 "#PWR023" H 9200 5400 50  0001 C CNN
F 1 "GND" V 9200 5450 50  0000 C CNN
F 2 "" H 9200 5650 50  0001 C CNN
F 3 "" H 9200 5650 50  0001 C CNN
	1    9200 5650
	0    1    1    0   
$EndComp
Text GLabel 9200 5450 0    50   Input ~ 0
ServoPWM
Text GLabel 9150 4850 0    50   Input ~ 0
DS18B20Data
Text Notes 8600 4400 0    50   ~ 0
Temperature Sensor
Text Notes 8600 5300 0    50   ~ 0
Servo Motor
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 614FFA5A
P 9500 5550
F 0 "J9" H 9580 5592 50  0000 L CNN
F 1 "Servo Motor" H 9580 5501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9500 5550 50  0001 C CNN
F 3 "~" H 9500 5550 50  0001 C CNN
	1    9500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4050 9200 4050
Connection ~ 9200 4050
Wire Wire Line
	9200 4050 9300 4050
Wire Wire Line
	8850 3950 8900 3950
Wire Wire Line
	8900 3950 8900 3850
Connection ~ 8900 3950
$Comp
L Device:R R6
U 1 1 61584C2D
P 9050 4650
F 0 "R6" H 9120 4696 50  0000 L CNN
F 1 "4.7k" H 9120 4605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8980 4650 50  0001 C CNN
F 3 "~" H 9050 4650 50  0001 C CNN
	1    9050 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 615850BD
P 8850 4950
F 0 "#PWR021" H 8850 4700 50  0001 C CNN
F 1 "GND" V 8850 4750 50  0000 C CNN
F 2 "" H 8850 4950 50  0001 C CNN
F 3 "" H 8850 4950 50  0001 C CNN
	1    8850 4950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 615850C7
P 8850 4750
F 0 "#PWR020" H 8850 4600 50  0001 C CNN
F 1 "+5V" V 8850 4950 50  0000 C CNN
F 2 "" H 8850 4750 50  0001 C CNN
F 3 "" H 8850 4750 50  0001 C CNN
	1    8850 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 4850 9200 4850
Connection ~ 9200 4850
Wire Wire Line
	9200 4850 9250 4850
Wire Wire Line
	8850 4750 8900 4750
Wire Wire Line
	8900 4750 8900 4650
Connection ~ 8900 4750
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 61654EC5
P 9500 4050
F 0 "J7" H 9580 4092 50  0000 L CNN
F 1 "DHT22" H 9580 4001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9500 4050 50  0001 C CNN
F 3 "~" H 9500 4050 50  0001 C CNN
	1    9500 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 616558B9
P 9500 4850
F 0 "J8" H 9580 4892 50  0000 L CNN
F 1 "Temperature Sensor" H 9580 4801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9500 4850 50  0001 C CNN
F 3 "~" H 9500 4850 50  0001 C CNN
	1    9500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5650 9300 5650
Wire Wire Line
	8850 4950 9300 4950
Wire Wire Line
	9200 4850 9200 4650
Wire Wire Line
	8850 4150 9300 4150
Wire Wire Line
	9200 4050 9200 3850
Wire Wire Line
	8900 3950 9300 3950
$Comp
L Connector:TestPoint TP10
U 1 1 616E2495
P 9250 5400
F 0 "TP10" H 9250 5700 50  0000 L CNN
F 1 "Servo_PWM_TP" H 9250 5600 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9450 5400 50  0001 C CNN
F 3 "~" H 9450 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 616E2AC0
P 9250 4700
F 0 "TP9" H 9300 4950 50  0000 L CNN
F 1 "DS18B20_Data_TP" H 9300 4850 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9450 4700 50  0001 C CNN
F 3 "~" H 9450 4700 50  0001 C CNN
	1    9250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4750 9300 4750
Wire Wire Line
	9250 4700 9250 4850
Connection ~ 9250 4850
Wire Wire Line
	9250 4850 9300 4850
Wire Wire Line
	9200 5450 9250 5450
Text GLabel 9150 3250 0    50   Input ~ 0
BaroCLK
Text GLabel 9150 3350 0    50   Input ~ 0
BaroDATA
Text Notes 8600 2900 0    50   ~ 0
Barometer\n
$Comp
L power:+3.3V #PWR015
U 1 1 614D5DDD
P 8850 3050
F 0 "#PWR015" H 8850 2900 50  0001 C CNN
F 1 "+3.3V" V 8865 3178 50  0000 L CNN
F 2 "" H 8850 3050 50  0001 C CNN
F 3 "" H 8850 3050 50  0001 C CNN
	1    8850 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 614D6BAB
P 8850 3150
F 0 "#PWR016" H 8850 2900 50  0001 C CNN
F 1 "GND" V 8855 3022 50  0000 R CNN
F 2 "" H 8850 3150 50  0001 C CNN
F 3 "" H 8850 3150 50  0001 C CNN
	1    8850 3150
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 6163F6DC
P 9500 3150
F 0 "J6" H 9580 3142 50  0000 L CNN
F 1 "BMP180" H 9580 3051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9500 3150 50  0001 C CNN
F 3 "~" H 9500 3150 50  0001 C CNN
	1    9500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3250 9300 3250
Wire Wire Line
	8850 3050 9300 3050
$Comp
L Connector_Generic:Conn_01x02 R1
U 1 1 6153F89A
P 8850 1350
F 0 "R1" H 8930 1342 50  0000 L CNN
F 1 "PhotoR" H 8930 1251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8850 1350 50  0001 C CNN
F 3 "~" H 8850 1350 50  0001 C CNN
	1    8850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1150 8650 1350
Wire Wire Line
	8650 1450 8650 1650
$Comp
L Connector_Generic:Conn_01x02 R2
U 1 1 6154D0DB
P 9650 1350
F 0 "R2" H 9730 1342 50  0000 L CNN
F 1 "PhotoR" H 9730 1251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9650 1350 50  0001 C CNN
F 3 "~" H 9650 1350 50  0001 C CNN
	1    9650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1150 9450 1350
Wire Wire Line
	9450 1450 9450 1650
$Comp
L Connector_Generic:Conn_02x06_Counter_Clockwise J10
U 1 1 6174C42B
P 4150 6400
F 0 "J10" H 4200 6817 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 4200 6726 50  0000 C CNN
F 2 "SamacSys_Parts:Level_shifter" H 4150 6400 50  0001 C CNN
F 3 "~" H 4150 6400 50  0001 C CNN
	1    4150 6400
	1    0    0    -1  
$EndComp
Text GLabel 2850 6250 2    50   Input ~ 0
Arduino_RX
Text GLabel 2850 6450 2    50   Input ~ 0
Arduino_TX
Text GLabel 4450 6600 2    50   Input ~ 0
WIFI_RX_3V3
Text GLabel 4450 6700 2    50   Input ~ 0
WIFI_TX_3V3
Text GLabel 3950 6500 0    50   Input ~ 0
5V_Ref
$Comp
L power:GND #PWR025
U 1 1 6174E8F8
P 3950 6400
F 0 "#PWR025" H 3950 6150 50  0001 C CNN
F 1 "GND" V 3955 6272 50  0000 R CNN
F 2 "" H 3950 6400 50  0001 C CNN
F 3 "" H 3950 6400 50  0001 C CNN
	1    3950 6400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6174F197
P 4450 6400
F 0 "#PWR027" H 4450 6150 50  0001 C CNN
F 1 "GND" V 4455 6272 50  0000 R CNN
F 2 "" H 4450 6400 50  0001 C CNN
F 3 "" H 4450 6400 50  0001 C CNN
	1    4450 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 6174F84B
P 4450 6500
F 0 "#PWR028" H 4450 6350 50  0001 C CNN
F 1 "+3.3V" V 4465 6628 50  0000 L CNN
F 2 "" H 4450 6500 50  0001 C CNN
F 3 "" H 4450 6500 50  0001 C CNN
	1    4450 6500
	0    1    1    0   
$EndComp
Text Notes 2650 5850 0    50   ~ 0
Level Shifter and WiFi Switch
$Comp
L Connector:TestPoint TP11
U 1 1 61750685
P 4850 2300
F 0 "TP11" H 4700 2600 50  0000 L CNN
F 1 "9V_Ground_TP" H 4700 2500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5050 2300 50  0001 C CNN
F 3 "~" H 5050 2300 50  0001 C CNN
	1    4850 2300
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 617510A5
P 4850 4300
F 0 "TP12" H 4700 4600 50  0000 L CNN
F 1 "5V_Ground_TP" H 4700 4500 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5050 4300 50  0001 C CNN
F 3 "~" H 5050 4300 50  0001 C CNN
	1    4850 4300
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:LL3301AF065QJ SW1
U 1 1 61752BEC
P 6050 5600
F 0 "SW1" H 6650 5865 50  0000 C CNN
F 1 "RESET" H 6650 5774 50  0000 C CNN
F 2 "SamacSys_Parts:LL3301FF065QJ" H 6050 5800 50  0001 C CNN
F 3 "~" H 6050 5800 50  0001 C CNN
	1    6050 5600
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:LL3301AF065QJ SW2
U 1 1 6175374B
P 6050 6150
F 0 "SW2" H 6650 6415 50  0000 C CNN
F 1 "FLASH" H 6650 6324 50  0000 C CNN
F 2 "SamacSys_Parts:LL3301FF065QJ" H 6050 6350 50  0001 C CNN
F 3 "~" H 6050 6350 50  0001 C CNN
	1    6050 6150
	1    0    0    -1  
$EndComp
Text GLabel 5950 6150 0    50   Input ~ 0
WIFI_FLASH
Wire Wire Line
	3850 5350 3950 5350
Text GLabel 5950 5600 0    50   Input ~ 0
WIFI_RST
Wire Wire Line
	5950 5600 6000 5600
Wire Wire Line
	6000 5600 6000 5500
Connection ~ 6000 5600
Wire Wire Line
	6000 5600 6050 5600
$Comp
L Device:R_Small R7
U 1 1 6176C4C5
P 6000 5400
F 0 "R7" H 5850 5450 50  0000 L CNN
F 1 "10k" H 5800 5350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6000 5400 50  0001 C CNN
F 3 "~" H 6000 5400 50  0001 C CNN
	1    6000 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 6176D093
P 6000 5300
F 0 "#PWR026" H 6000 5150 50  0001 C CNN
F 1 "+3.3V" H 5700 5450 50  0000 L CNN
F 2 "" H 6000 5300 50  0001 C CNN
F 3 "" H 6000 5300 50  0001 C CNN
	1    6000 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 6176D90A
P 6050 5700
F 0 "#PWR029" H 6050 5450 50  0001 C CNN
F 1 "GND" V 6055 5572 50  0000 R CNN
F 2 "" H 6050 5700 50  0001 C CNN
F 3 "" H 6050 5700 50  0001 C CNN
	1    6050 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 6150 6050 6150
$Comp
L power:GND #PWR030
U 1 1 6178EB00
P 6050 6250
F 0 "#PWR030" H 6050 6000 50  0001 C CNN
F 1 "GND" V 6055 6122 50  0000 R CNN
F 2 "" H 6050 6250 50  0001 C CNN
F 3 "" H 6050 6250 50  0001 C CNN
	1    6050 6250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 6178EF72
P 7050 3250
F 0 "TP13" V 7004 3438 50  0000 L CNN
F 1 "Arduino_Ground_TP" V 7095 3438 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 7250 3250 50  0001 C CNN
F 3 "~" H 7250 3250 50  0001 C CNN
	1    7050 3250
	0    1    1    0   
$EndComp
Connection ~ 7050 3250
NoConn ~ 7250 5600
NoConn ~ 7250 5700
NoConn ~ 7250 6150
NoConn ~ 7250 6250
Text GLabel 4050 6950 0    50   Input ~ 0
WIFI_RX_3V3
Text GLabel 4050 7050 0    50   Input ~ 0
WIFI_TX_3V3
$Comp
L Connector:TestPoint TP16
U 1 1 6185080B
P 4050 6950
F 0 "TP16" V 4050 7150 50  0000 L CNN
F 1 "3V3_RX" V 4050 7350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4250 6950 50  0001 C CNN
F 3 "~" H 4250 6950 50  0001 C CNN
	1    4050 6950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 61850A8E
P 4050 7050
F 0 "TP17" V 4050 7250 50  0000 L CNN
F 1 "3V3_TX" V 4050 7450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4250 7050 50  0001 C CNN
F 3 "~" H 4250 7050 50  0001 C CNN
	1    4050 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 5550 4550 5550
Wire Wire Line
	4450 5450 4500 5450
Wire Wire Line
	4450 5350 4550 5350
Wire Wire Line
	3950 5250 3850 5250
Wire Wire Line
	4500 5250 4550 5250
Wire Wire Line
	4450 5250 4500 5250
Connection ~ 4500 5250
Wire Wire Line
	4500 5450 4500 5250
$Comp
L power:+3.3V #PWR09
U 1 1 6160D457
P 4550 5250
F 0 "#PWR09" H 4550 5100 50  0001 C CNN
F 1 "+3.3V" V 4565 5378 50  0000 L CNN
F 2 "" H 4550 5250 50  0001 C CNN
F 3 "" H 4550 5250 50  0001 C CNN
	1    4550 5250
	0    1    1    0   
$EndComp
Text GLabel 4550 5550 2    50   Input ~ 0
WIFI_TX_3V3
Text GLabel 4550 5350 2    50   Input ~ 0
WIFI_RST
NoConn ~ 3950 5450
$Comp
L power:GND #PWR011
U 1 1 61616BF4
P 3850 5550
F 0 "#PWR011" H 3850 5300 50  0001 C CNN
F 1 "GND" V 3855 5422 50  0000 R CNN
F 2 "" H 3850 5550 50  0001 C CNN
F 3 "" H 3850 5550 50  0001 C CNN
	1    3850 5550
	0    1    1    0   
$EndComp
Text GLabel 3850 5350 0    50   Input ~ 0
WIFI_FLASH
Text GLabel 3850 5250 0    50   Input ~ 0
WIFI_RX_3V3
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 617CA5B9
P 1400 4650
F 0 "J11" H 1480 4642 50  0000 L CNN
F 1 "External_12V" H 1480 4551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1400 4650 50  0001 C CNN
F 3 "~" H 1400 4650 50  0001 C CNN
	1    1400 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 617CB6EF
P 1400 4900
F 0 "J12" H 1480 4892 50  0000 L CNN
F 1 "External_9V" H 1480 4801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1400 4900 50  0001 C CNN
F 3 "~" H 1400 4900 50  0001 C CNN
	1    1400 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 617CBD42
P 1400 5150
F 0 "J13" H 1480 5142 50  0000 L CNN
F 1 "External_5V" H 1480 5051 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1400 5150 50  0001 C CNN
F 3 "~" H 1400 5150 50  0001 C CNN
	1    1400 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 617CC1E3
P 1400 5400
F 0 "J14" H 1480 5392 50  0000 L CNN
F 1 "External_3V3" H 1480 5301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1400 5400 50  0001 C CNN
F 3 "~" H 1400 5400 50  0001 C CNN
	1    1400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4750 1150 4750
Wire Wire Line
	1150 4750 1150 5000
Wire Wire Line
	1150 5000 1200 5000
Wire Wire Line
	1150 5000 1150 5250
Wire Wire Line
	1150 5250 1200 5250
Connection ~ 1150 5000
Wire Wire Line
	1150 5250 1150 5500
Wire Wire Line
	1150 5500 1200 5500
Connection ~ 1150 5250
Wire Wire Line
	1150 5500 1150 5600
Connection ~ 1150 5500
$Comp
L power:GND #PWR0101
U 1 1 617E7538
P 1150 5600
F 0 "#PWR0101" H 1150 5350 50  0001 C CNN
F 1 "GND" H 1155 5427 50  0000 C CNN
F 2 "" H 1150 5600 50  0001 C CNN
F 3 "" H 1150 5600 50  0001 C CNN
	1    1150 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 617E7F5F
P 1050 5400
F 0 "#PWR0102" H 1050 5250 50  0001 C CNN
F 1 "+3.3V" V 1050 5550 50  0000 L CNN
F 2 "" H 1050 5400 50  0001 C CNN
F 3 "" H 1050 5400 50  0001 C CNN
	1    1050 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 5400 1200 5400
$Comp
L power:+5V #PWR0103
U 1 1 617F0786
P 1050 5150
F 0 "#PWR0103" H 1050 5000 50  0001 C CNN
F 1 "+5V" V 1050 5350 50  0000 L CNN
F 2 "" H 1050 5150 50  0001 C CNN
F 3 "" H 1050 5150 50  0001 C CNN
	1    1050 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 5150 1200 5150
$Comp
L power:+12V #PWR0104
U 1 1 617F8FDE
P 1050 4650
F 0 "#PWR0104" H 1050 4500 50  0001 C CNN
F 1 "+12V" V 1050 4800 50  0000 L CNN
F 2 "" H 1050 4650 50  0001 C CNN
F 3 "" H 1050 4650 50  0001 C CNN
	1    1050 4650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 4650 1200 4650
Wire Wire Line
	1200 4900 1050 4900
$Comp
L power:+9V #PWR0105
U 1 1 6180FB1A
P 1050 4900
F 0 "#PWR0105" H 1050 4750 50  0001 C CNN
F 1 "+9V" V 1050 5100 50  0000 L CNN
F 2 "" H 1050 4900 50  0001 C CNN
F 3 "" H 1050 4900 50  0001 C CNN
	1    1050 4900
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J15
U 1 1 61899E94
P 2650 6350
F 0 "J15" H 2568 6025 50  0000 C CNN
F 1 "WiFi_RX_Switch" H 2568 6116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2650 6350 50  0001 C CNN
F 3 "~" H 2650 6350 50  0001 C CNN
	1    2650 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 6600 3450 6600
Wire Wire Line
	3450 6350 2850 6350
Wire Wire Line
	3950 6700 3450 6700
Wire Wire Line
	3450 6950 2850 6950
Wire Wire Line
	3450 6700 3450 6950
Wire Wire Line
	3450 6350 3450 6600
$Comp
L Connector_Generic:Conn_01x03 J16
U 1 1 6189C417
P 2650 6950
F 0 "J16" H 2568 6625 50  0000 C CNN
F 1 "WiFi_TX_Switch" H 2568 6716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2650 6950 50  0001 C CNN
F 3 "~" H 2650 6950 50  0001 C CNN
	1    2650 6950
	-1   0    0    1   
$EndComp
Text Label 3450 6350 0    50   ~ 0
WiFi_RX
Text Label 3450 6700 0    50   ~ 0
WiFI_TX
Text GLabel 2850 7050 2    50   Input ~ 0
Arduino_TX
Text GLabel 2850 6850 2    50   Input ~ 0
Arduino_RX
$Comp
L Connector:TestPoint TP14
U 1 1 6191AD96
P 9650 1850
F 0 "TP14" V 9604 2038 50  0000 L CNN
F 1 "PR1_TP" V 9695 2038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 9850 1850 50  0001 C CNN
F 3 "~" H 9850 1850 50  0001 C CNN
	1    9650 1850
	0    1    1    0   
$EndComp
Connection ~ 9650 1850
Wire Wire Line
	8850 3150 9300 3150
Wire Wire Line
	9150 3350 9300 3350
Wire Wire Line
	9200 5550 9300 5550
Wire Wire Line
	9250 5450 9250 5400
Connection ~ 9250 5450
Wire Wire Line
	9250 5450 9300 5450
Wire Wire Line
	1200 2300 1600 2300
Text Notes 6000 5000 0    50   ~ 0
WiFi Program Control
Wire Wire Line
	1600 1100 1600 2300
$EndSCHEMATC
