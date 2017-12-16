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
LIBS:Velocimetro-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Velocimetro - Controle Analógico"
Date "2017-11-11"
Rev ""
Comp "Julio Cesar Ferreira Lima"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L HC-SR04 U1
U 1 1 59FCD2B8
P 2250 4050
F 0 "U1" H 2000 3750 60  0000 C CNN
F 1 "HC-SR04" H 2150 4350 60  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_4pol" H 2250 4050 60  0001 C CNN
F 3 "" H 2250 4050 60  0000 C CNN
	1    2250 4050
	1    0    0    -1  
$EndComp
Text GLabel 6650 3800 1    39   Input ~ 0
+5V
Text GLabel 6750 3800 1    39   Input ~ 0
GND
Text GLabel 5350 3800 1    39   Input ~ 0
+5V
Text GLabel 5250 3800 1    39   Input ~ 0
GND
Text GLabel 2850 3900 0    39   Input ~ 0
+5V
Text GLabel 2850 4200 0    39   Input ~ 0
GND
Text GLabel 6350 3800 1    39   Input ~ 0
GND
$Comp
L LCD16X2 DS1
U 1 1 59FCD203
P 6000 4400
F 0 "DS1" H 5200 4800 50  0000 C CNN
F 1 "LCD16X2" H 6700 4800 50  0000 C CNN
F 2 "Displays:WC1602A" H 6000 4350 50  0001 C CIN
F 3 "" H 6000 4400 50  0001 C CNN
	1    6000 4400
	-1   0    0    1   
$EndComp
$Comp
L HC-SR04 U2
U 1 1 59FD05A0
P 2250 4900
F 0 "U2" H 2000 4600 60  0000 C CNN
F 1 "HC-SR04" H 2150 5200 60  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_4pol" H 2250 4900 60  0001 C CNN
F 3 "" H 2250 4900 60  0000 C CNN
	1    2250 4900
	1    0    0    -1  
$EndComp
Text GLabel 2850 4750 0    39   Input ~ 0
+5V
Text GLabel 2850 5050 0    39   Input ~ 0
GND
$Comp
L SW_DIP_x01 SW1
U 1 1 59FD070F
P 9000 4350
F 0 "SW1" H 9000 4500 50  0000 C CNN
F 1 "SW_DIP_x01" H 9000 4200 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 9000 4350 50  0001 C CNN
F 3 "" H 9000 4350 50  0001 C CNN
	1    9000 4350
	0    -1   -1   0   
$EndComp
$Comp
L SW_DIP_x01 SW2
U 1 1 59FD076F
P 10100 4350
F 0 "SW2" H 10100 4500 50  0000 C CNN
F 1 "SW_DIP_x01" H 10100 4200 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 10100 4350 50  0001 C CNN
F 3 "" H 10100 4350 50  0001 C CNN
	1    10100 4350
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 59FD0C09
P 9000 3800
F 0 "R3" V 9080 3800 50  0000 C CNN
F 1 "1k" V 9000 3800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8930 3800 50  0001 C CNN
F 3 "" H 9000 3800 50  0001 C CNN
	1    9000 3800
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 59FD0C95
P 10100 3800
F 0 "R4" V 10180 3800 50  0000 C CNN
F 1 "1k" V 10100 3800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 10030 3800 50  0001 C CNN
F 3 "" H 10100 3800 50  0001 C CNN
	1    10100 3800
	-1   0    0    1   
$EndComp
Text GLabel 10100 3550 1    39   Input ~ 0
+5V
Text GLabel 9000 3550 1    39   Input ~ 0
+5V
$Comp
L Buzzer BZ1
U 1 1 5A078E0B
P 2250 3450
F 0 "BZ1" H 2400 3500 50  0000 L CNN
F 1 "Buzzer" H 2400 3400 50  0000 L CNN
F 2 "Buzzers_Beepers:Buzzer_12x9.5RM7.6" V 2225 3550 50  0001 C CNN
F 3 "" V 2225 3550 50  0001 C CNN
	1    2250 3450
	-1   0    0    -1  
$EndComp
Text GLabel 2450 3550 2    39   Input ~ 0
GND
$Comp
L GND #PWR01
U 1 1 5A07A075
P 9000 4950
F 0 "#PWR01" H 9000 4700 50  0001 C CNN
F 1 "GND" H 9000 4800 50  0000 C CNN
F 2 "" H 9000 4950 50  0001 C CNN
F 3 "" H 9000 4950 50  0001 C CNN
	1    9000 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A07A09B
P 10100 4950
F 0 "#PWR02" H 10100 4700 50  0001 C CNN
F 1 "GND" H 10100 4800 50  0000 C CNN
F 2 "" H 10100 4950 50  0001 C CNN
F 3 "" H 10100 4950 50  0001 C CNN
	1    10100 4950
	1    0    0    -1  
$EndComp
Text GLabel 2450 3350 2    39   Input ~ 0
buzzer
Text GLabel 2850 4000 0    39   Input ~ 0
uS01-2
Text GLabel 2850 4100 0    39   Input ~ 0
uS01-3
Text GLabel 2850 4850 0    39   Input ~ 0
uS02-2
Text GLabel 2850 4950 0    39   Input ~ 0
uS02-3
Text GLabel 5450 3800 1    39   Input ~ 0
d7
Text GLabel 5550 3800 1    39   Input ~ 0
d6
Text GLabel 5650 3800 1    39   Input ~ 0
d5
Text GLabel 5750 3800 1    39   Input ~ 0
d4
Text GLabel 6250 3800 1    39   Input ~ 0
e
Text GLabel 6450 3800 1    39   Input ~ 0
rs
Text GLabel 6550 3800 1    39   Input ~ 0
v0
Text GLabel 5500 1900 0    39   Input ~ 0
uS02-3
Text GLabel 5500 2000 0    39   Input ~ 0
uS02-2
Text GLabel 5500 1700 0    39   Input ~ 0
uS01-3
Text GLabel 5500 1800 0    39   Input ~ 0
uS01-2
Text GLabel 5500 1500 0    39   Input ~ 0
v0
Text GLabel 5500 1600 0    39   Input ~ 0
buzzer
Text GLabel 6650 1500 2    39   Input ~ 0
d7
Text GLabel 6650 1600 2    39   Input ~ 0
d6
Text GLabel 6650 1700 2    39   Input ~ 0
d5
Text GLabel 6650 1800 2    39   Input ~ 0
d4
Text GLabel 6650 2100 2    39   Input ~ 0
btn-2
Text GLabel 6650 2200 2    39   Input ~ 0
btn-1
Text GLabel 6650 2000 2    39   Input ~ 0
rs
Text GLabel 6650 1900 2    39   Input ~ 0
e
Text GLabel 5500 2500 0    39   Input ~ 0
GND
Text GLabel 5500 2600 0    39   Input ~ 0
+5V
$Comp
L R R1
U 1 1 5A07D479
P 7200 3800
F 0 "R1" V 7280 3800 50  0000 C CNN
F 1 "22k" V 7200 3800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7130 3800 50  0001 C CNN
F 3 "" H 7200 3800 50  0001 C CNN
	1    7200 3800
	-1   0    0    1   
$EndComp
Text GLabel 7200 3550 1    39   Input ~ 0
+5V
$Comp
L GND #PWR03
U 1 1 5A07D481
P 7200 4950
F 0 "#PWR03" H 7200 4700 50  0001 C CNN
F 1 "GND" H 7200 4800 50  0000 C CNN
F 2 "" H 7200 4950 50  0001 C CNN
F 3 "" H 7200 4950 50  0001 C CNN
	1    7200 4950
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A07D4BE
P 7200 4350
F 0 "R2" V 7280 4350 50  0000 C CNN
F 1 "1k" V 7200 4350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7130 4350 50  0001 C CNN
F 3 "" H 7200 4350 50  0001 C CNN
	1    7200 4350
	-1   0    0    1   
$EndComp
Text GLabel 7350 4100 2    39   Input ~ 0
v0
Text GLabel 9150 4000 2    39   Input ~ 0
btn-1
Text GLabel 10250 4000 2    39   Input ~ 0
btn-2
$Comp
L arduino_pro_mini uP1
U 1 1 5A07BFF0
P 6100 2000
F 0 "uP1" H 6100 2600 60  0000 C CNN
F 1 "arduino_pro_mini" H 6050 1300 60  0000 C CNN
F 2 "mysensors_arduino:pro_mini" H 6100 2000 60  0001 C CNN
F 3 "" H 6100 2000 60  0000 C CNN
	1    6100 2000
	1    0    0    -1  
$EndComp
$Comp
L HC-05 U3
U 1 1 5A07DA8E
P 2250 5650
F 0 "U3" H 2000 5350 60  0000 C CNN
F 1 "HC-05" H 2150 5950 60  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_4pol" H 2250 5650 60  0001 C CNN
F 3 "" H 2250 5650 60  0000 C CNN
	1    2250 5650
	1    0    0    -1  
$EndComp
Text GLabel 2550 5500 2    39   Input ~ 0
+5V
Text GLabel 2550 5800 2    39   Input ~ 0
blue-RXD
Text GLabel 2550 5700 2    39   Input ~ 0
blue-TXD
Text GLabel 2550 5600 2    39   Input ~ 0
GND
Text GLabel 5550 2100 0    39   Input ~ 0
blue-RXD
Text GLabel 5550 2200 0    39   Input ~ 0
blue-TXD
$Comp
L USB_OTG J1
U 1 1 5A07E96A
P 2100 1800
F 0 "J1" H 1900 2250 50  0000 L CNN
F 1 "USB_OTG" H 1900 2150 50  0000 L CNN
F 2 "Connectors:USB_Mini-B" H 2250 1750 50  0001 C CNN
F 3 "" H 2250 1750 50  0001 C CNN
	1    2100 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5A07EB3C
P 2500 1600
F 0 "#PWR04" H 2500 1450 50  0001 C CNN
F 1 "+5V" H 2500 1740 50  0000 C CNN
F 2 "" H 2500 1600 50  0001 C CNN
F 3 "" H 2500 1600 50  0001 C CNN
	1    2500 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A07EBC6
P 2100 2300
F 0 "#PWR05" H 2100 2050 50  0001 C CNN
F 1 "GND" H 2100 2150 50  0000 C CNN
F 2 "" H 2100 2300 50  0001 C CNN
F 3 "" H 2100 2300 50  0001 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
Text GLabel 2200 2250 2    39   Input ~ 0
GND
Text GLabel 2600 1600 2    39   Input ~ 0
+5V
$Comp
L C C1
U 1 1 5A0A4B20
P 8600 4350
F 0 "C1" H 8625 4450 50  0000 L CNN
F 1 "100n" H 8625 4250 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 8638 4200 50  0001 C CNN
F 3 "" H 8600 4350 50  0001 C CNN
	1    8600 4350
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A0A4B9D
P 9700 4350
F 0 "C2" H 9725 4450 50  0000 L CNN
F 1 "100n" H 9725 4250 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 9738 4200 50  0001 C CNN
F 3 "" H 9700 4350 50  0001 C CNN
	1    9700 4350
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J3
U 1 1 5A0A58E8
P 3150 4950
F 0 "J3" H 3200 5250 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 3200 4650 50  0000 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-1034_2x05x2.54mm_Straight" H 3150 4950 50  0001 C CNN
F 3 "" H 3150 4950 50  0001 C CNN
	1    3150 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3900 2850 3900
Wire Wire Line
	2950 4200 2850 4200
Wire Wire Line
	6350 3800 6350 3900
Wire Wire Line
	6650 3800 6650 3900
Wire Wire Line
	6750 3800 6750 3900
Wire Wire Line
	5350 3800 5350 3900
Wire Wire Line
	5250 3800 5250 3900
Wire Wire Line
	2950 4750 2850 4750
Wire Wire Line
	2950 5050 2850 5050
Wire Wire Line
	2350 3550 2450 3550
Wire Wire Line
	10100 3650 10100 3550
Wire Wire Line
	9000 3650 9000 3550
Wire Wire Line
	9000 4650 9000 4950
Wire Wire Line
	10100 4650 10100 4950
Wire Wire Line
	10100 3950 10100 4050
Connection ~ 10100 4000
Wire Wire Line
	2950 4850 2850 4850
Wire Wire Line
	2950 4950 2850 4950
Wire Wire Line
	2950 4000 2850 4000
Wire Wire Line
	2950 4100 2850 4100
Wire Wire Line
	2350 3350 2450 3350
Wire Wire Line
	5450 3800 5450 3900
Wire Wire Line
	5550 3800 5550 3900
Wire Wire Line
	5650 3800 5650 3900
Wire Wire Line
	5750 3800 5750 3900
Wire Wire Line
	6250 3800 6250 3900
Wire Wire Line
	6450 3800 6450 3900
Wire Wire Line
	6550 3800 6550 3900
Wire Wire Line
	5500 1600 5650 1600
Wire Wire Line
	5500 1500 5650 1500
Wire Wire Line
	6500 1500 6650 1500
Wire Wire Line
	6500 1600 6650 1600
Wire Wire Line
	6500 1700 6650 1700
Wire Wire Line
	6500 1800 6650 1800
Wire Wire Line
	6500 1900 6650 1900
Wire Wire Line
	6500 2000 6650 2000
Wire Wire Line
	6500 2100 6650 2100
Wire Wire Line
	6500 2200 6650 2200
Wire Wire Line
	5500 2600 5650 2600
Connection ~ 9000 4000
Wire Wire Line
	9000 3950 9000 4050
Wire Wire Line
	7200 3650 7200 3550
Wire Wire Line
	7200 4500 7200 4950
Wire Wire Line
	7200 3950 7200 4200
Wire Wire Line
	7200 4100 7350 4100
Connection ~ 7200 4100
Wire Wire Line
	8600 4000 9150 4000
Wire Wire Line
	9700 4000 10250 4000
Wire Wire Line
	2450 5500 2550 5500
Wire Wire Line
	2450 5800 2550 5800
Wire Wire Line
	2450 5600 2550 5600
Wire Wire Line
	2450 5700 2550 5700
Wire Wire Line
	5650 2100 5550 2100
Wire Wire Line
	5650 2200 5550 2200
Wire Wire Line
	2400 1600 2600 1600
Wire Wire Line
	2100 2200 2100 2300
Wire Wire Line
	2000 2200 2000 2250
Wire Wire Line
	2000 2250 2200 2250
Connection ~ 2100 2250
Connection ~ 2500 1600
Wire Wire Line
	5500 2500 5650 2500
Wire Wire Line
	5500 1700 5650 1700
Wire Wire Line
	5500 1800 5650 1800
Wire Wire Line
	5500 1900 5650 1900
Wire Wire Line
	5500 2000 5650 2000
Wire Wire Line
	9700 4200 9700 4000
Wire Wire Line
	9700 4500 9700 4700
Wire Wire Line
	9700 4700 10100 4700
Connection ~ 10100 4700
Wire Wire Line
	8600 4500 8600 4700
Wire Wire Line
	8600 4700 9000 4700
Connection ~ 9000 4700
Wire Wire Line
	8600 4200 8600 4000
Wire Notes Line
	2500 4700 2500 5100
Wire Notes Line
	2500 3850 2500 4250
$Comp
L Conn_02x05_Odd_Even J2
U 1 1 5A0A615F
P 3150 4100
F 0 "J2" H 3200 4400 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 3200 3800 50  0000 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-1034_2x05x2.54mm_Straight" H 3150 4100 50  0001 C CNN
F 3 "" H 3150 4100 50  0001 C CNN
	1    3150 4100
	1    0    0    -1  
$EndComp
Text Notes 2500 3750 0    39   Italic 8
CONNECTED BY CABLE
Text Notes 2500 4600 0    39   Italic 8
CONNECTED BY CABLE
Text GLabel 3550 4000 2    39   Input ~ 0
uS01-2
Text GLabel 3550 4100 2    39   Input ~ 0
uS01-3
Wire Wire Line
	3450 4000 3550 4000
Wire Wire Line
	3450 4100 3550 4100
Text GLabel 3550 4850 2    39   Input ~ 0
uS02-2
Text GLabel 3550 4950 2    39   Input ~ 0
uS02-3
Wire Wire Line
	3450 4850 3550 4850
Wire Wire Line
	3450 4950 3550 4950
$EndSCHEMATC
