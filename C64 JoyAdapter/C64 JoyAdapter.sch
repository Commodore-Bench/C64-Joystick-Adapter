EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "C64 Joystick Adapter"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Allows the connection of C64 controllers to modern PC over USB."
$EndDescr
$Comp
L atari_joystick:Atari_Joystick J2
U 1 1 5FFBB4AE
P 3750 3525
F 0 "J2" H 4344 3571 50  0000 L CNN
F 1 "Port 2" H 4344 3480 50  0000 L CNN
F 2 "RND:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 3750 3525 50  0001 C CNN
F 3 "" H 3750 3525 50  0001 C CNN
	1    3750 3525
	-1   0    0    -1  
$EndComp
$Comp
L atari_joystick:Atari_Joystick J1
U 1 1 5FFBE15A
P 3750 5225
F 0 "J1" H 4344 5271 50  0000 L CNN
F 1 "Port 1" H 4344 5180 50  0000 L CNN
F 2 "RND:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 3750 5225 50  0001 C CNN
F 3 "" H 3750 5225 50  0001 C CNN
	1    3750 5225
	-1   0    0    -1  
$EndComp
$Comp
L mounting:Mounting M1
U 1 1 6002CE00
P 10775 550
F 0 "M1" H 10775 650 50  0001 C CNN
F 1 "Mounting" H 10775 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10775 550 50  0001 C CNN
F 3 "~" H 10775 550 50  0001 C CNN
	1    10775 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 6002E2AC
P 10900 550
F 0 "M2" H 10900 650 50  0001 C CNN
F 1 "Mounting" H 10900 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10900 550 50  0001 C CNN
F 3 "~" H 10900 550 50  0001 C CNN
	1    10900 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 6002E709
P 11025 550
F 0 "M3" H 11025 650 50  0001 C CNN
F 1 "Mounting" H 11025 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 11025 550 50  0001 C CNN
F 3 "~" H 11025 550 50  0001 C CNN
	1    11025 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 6002EC01
P 11150 550
F 0 "M4" H 11150 650 50  0001 C CNN
F 1 "Mounting" H 11150 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 11150 550 50  0001 C CNN
F 3 "~" H 11150 550 50  0001 C CNN
	1    11150 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M5
U 1 1 60066A2A
P 10525 550
F 0 "M5" H 10525 650 50  0001 C CNN
F 1 "Mounting" H 10525 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10525 550 50  0001 C CNN
F 3 "~" H 10525 550 50  0001 C CNN
	1    10525 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M6
U 1 1 60066A30
P 10650 550
F 0 "M6" H 10650 650 50  0001 C CNN
F 1 "Mounting" H 10650 475 50  0001 C CNN
F 2 "mounting:M3_pin" H 10650 550 50  0001 C CNN
F 3 "~" H 10650 550 50  0001 C CNN
	1    10650 550 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FBBF92E
P 9075 3725
F 0 "SW1" H 8875 3775 50  0000 C CNN
F 1 "RESET" H 9075 3650 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 9075 3925 50  0001 C CNN
F 3 "~" H 9075 3925 50  0001 C CNN
	1    9075 3725
	1    0    0    -1  
$EndComp
NoConn ~ 8325 3525
NoConn ~ 7375 3525
NoConn ~ 7375 3625
Wire Wire Line
	7950 4950 7850 4950
Wire Wire Line
	7750 4950 7750 4875
Wire Wire Line
	7850 4875 7850 4950
Connection ~ 7850 4950
Wire Wire Line
	7850 4950 7750 4950
Wire Wire Line
	7950 4875 7950 4950
$Comp
L power:VCC #PWR0102
U 1 1 5FBC8167
P 7850 3275
F 0 "#PWR0102" H 7850 3125 50  0001 C CNN
F 1 "VCC" H 7867 3448 50  0000 C CNN
F 2 "" H 7850 3275 50  0001 C CNN
F 3 "" H 7850 3275 50  0001 C CNN
	1    7850 3275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FBD56FF
P 9450 5025
F 0 "#PWR0103" H 9450 4775 50  0001 C CNN
F 1 "GND" H 9455 4852 50  0000 C CNN
F 2 "" H 9450 5025 50  0001 C CNN
F 3 "" H 9450 5025 50  0001 C CNN
	1    9450 5025
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FBD6E88
P 9075 4800
F 0 "D1" H 9075 4700 50  0000 C CNN
F 1 "PWR" H 9075 4900 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 9075 4800 50  0001 C CNN
F 3 "~" H 9075 4800 50  0001 C CNN
	1    9075 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 4800 8500 4800
Wire Wire Line
	8850 4800 8925 4800
$Comp
L promicro:Arduino_Pro_Micro A1
U 1 1 5FBBE539
P 7850 3775
F 0 "A1" H 7575 4175 50  0000 C CNN
F 1 "Arduino_Pro_Micro" V 7850 3475 50  0000 C CNN
F 2 "arduino_pro_micro:Arduino_Pro_Micro" H 7800 3775 50  0001 C CNN
F 3 "~" H 7800 3775 50  0001 C CNN
	1    7850 3775
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60015843
P 9075 4525
F 0 "SW2" H 8875 4575 50  0000 C CNN
F 1 "MODE" H 9075 4450 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 9075 4725 50  0001 C CNN
F 3 "~" H 9075 4725 50  0001 C CNN
	1    9075 4525
	1    0    0    -1  
$EndComp
Text GLabel 5150 2875 2    50   Output ~ 0
POT_BY
Text GLabel 5150 2975 2    50   Output ~ 0
POT_BX
Text GLabel 5150 4575 2    50   Output ~ 0
POT_AY
Text GLabel 5150 4675 2    50   Output ~ 0
POT_AX
Text GLabel 8400 4125 2    50   Input ~ 0
POT_AY
Text GLabel 8400 4225 2    50   Input ~ 0
POT_AX
Wire Wire Line
	8325 4225 8400 4225
Wire Wire Line
	8325 4125 8400 4125
Text GLabel 8400 3925 2    50   Input ~ 0
POT_BY
Text GLabel 8400 4025 2    50   Input ~ 0
POT_BX
Wire Wire Line
	8325 3925 8400 3925
Wire Wire Line
	8400 4025 8325 4025
Wire Wire Line
	8325 4625 8500 4625
Wire Wire Line
	8500 4625 8500 4800
Text GLabel 4050 3325 2    50   Output ~ 0
P2_RIGHT
Text GLabel 4050 3525 2    50   Output ~ 0
P2_LEFT
Text GLabel 4050 3725 2    50   Output ~ 0
P2_DOWN
Text GLabel 4050 3825 2    50   Output ~ 0
P2_FIRE
Text GLabel 4050 3925 2    50   Output ~ 0
P2_UP
Text GLabel 4050 5025 2    50   Output ~ 0
P1_RIGHT
Text GLabel 4050 5225 2    50   Output ~ 0
P1_LEFT
Text GLabel 4050 5425 2    50   Output ~ 0
P1_DOWN
Text GLabel 4050 5525 2    50   Output ~ 0
P1_FIRE
Text GLabel 4050 5625 2    50   Output ~ 0
P1_UP
$Comp
L Device:R_Small R1
U 1 1 6002419F
P 4775 3125
F 0 "R1" V 4725 2925 50  0000 L CNN
F 1 "220K" V 4725 3225 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4775 3125 50  0001 C CNN
F 3 "~" H 4775 3125 50  0001 C CNN
	1    4775 3125
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 60024503
P 8750 4800
F 0 "R5" V 8650 4750 50  0000 L CNN
F 1 "330" V 8850 4725 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 8750 4800 50  0001 C CNN
F 3 "~" H 8750 4800 50  0001 C CNN
	1    8750 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 600255F0
P 4775 3225
F 0 "R2" V 4725 3025 50  0000 L CNN
F 1 "220K" V 4725 3325 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4775 3225 50  0001 C CNN
F 3 "~" H 4775 3225 50  0001 C CNN
	1    4775 3225
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3125 4400 3125
Wire Wire Line
	4050 3225 4475 3225
Wire Wire Line
	4875 3125 5150 3125
Wire Wire Line
	5150 3125 5150 3225
Wire Wire Line
	5150 3425 4050 3425
Wire Wire Line
	4875 3225 5150 3225
Connection ~ 5150 3225
Wire Wire Line
	5150 3225 5150 3425
Wire Wire Line
	4475 2975 4475 3225
Connection ~ 4475 3225
Wire Wire Line
	4475 3225 4675 3225
Wire Wire Line
	4400 2875 4400 3125
Connection ~ 4400 3125
Wire Wire Line
	4400 3125 4675 3125
Wire Wire Line
	4475 2975 5150 2975
Wire Wire Line
	4400 2875 5150 2875
$Comp
L Device:R_Small R3
U 1 1 60034C97
P 4775 4825
F 0 "R3" V 4725 4625 50  0000 L CNN
F 1 "220K" V 4725 4925 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4775 4825 50  0001 C CNN
F 3 "~" H 4775 4825 50  0001 C CNN
	1    4775 4825
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 60034C9D
P 4775 4925
F 0 "R4" V 4725 4725 50  0000 L CNN
F 1 "220K" V 4725 5025 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4775 4925 50  0001 C CNN
F 3 "~" H 4775 4925 50  0001 C CNN
	1    4775 4925
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4825 4400 4825
Wire Wire Line
	4050 4925 4475 4925
Wire Wire Line
	4875 4825 5150 4825
Wire Wire Line
	5150 4825 5150 4925
Wire Wire Line
	5150 5125 4050 5125
Wire Wire Line
	4875 4925 5150 4925
Connection ~ 5150 4925
Wire Wire Line
	5150 4925 5150 5125
$Comp
L power:GND #PWR0101
U 1 1 60034CAB
P 5300 4925
F 0 "#PWR0101" H 5300 4675 50  0001 C CNN
F 1 "GND" H 5305 4752 50  0000 C CNN
F 2 "" H 5300 4925 50  0001 C CNN
F 3 "" H 5300 4925 50  0001 C CNN
	1    5300 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 4675 4475 4925
Connection ~ 4475 4925
Wire Wire Line
	4475 4925 4675 4925
Wire Wire Line
	4400 4575 4400 4825
Connection ~ 4400 4825
Wire Wire Line
	4400 4825 4675 4825
Wire Wire Line
	4475 4675 5150 4675
Wire Wire Line
	4400 4575 5150 4575
Wire Wire Line
	5300 4925 5300 4825
Wire Wire Line
	5300 4825 5150 4825
Connection ~ 5150 4825
$Comp
L power:GND #PWR0104
U 1 1 6004171F
P 5300 3225
F 0 "#PWR0104" H 5300 2975 50  0001 C CNN
F 1 "GND" H 5305 3052 50  0000 C CNN
F 2 "" H 5300 3225 50  0001 C CNN
F 3 "" H 5300 3225 50  0001 C CNN
	1    5300 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3225 5300 3125
Wire Wire Line
	5300 3125 5150 3125
$Comp
L power:VCC #PWR0105
U 1 1 600446E1
P 5475 3325
F 0 "#PWR0105" H 5475 3175 50  0001 C CNN
F 1 "VCC" H 5492 3498 50  0000 C CNN
F 2 "" H 5475 3325 50  0001 C CNN
F 3 "" H 5475 3325 50  0001 C CNN
	1    5475 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 3325 5475 3625
Wire Wire Line
	5475 3625 4050 3625
$Comp
L power:VCC #PWR0106
U 1 1 6004724E
P 5475 5025
F 0 "#PWR0106" H 5475 4875 50  0001 C CNN
F 1 "VCC" H 5492 5198 50  0000 C CNN
F 2 "" H 5475 5025 50  0001 C CNN
F 3 "" H 5475 5025 50  0001 C CNN
	1    5475 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 5025 5475 5325
Wire Wire Line
	5475 5325 4050 5325
Text GLabel 7300 4625 0    50   Input ~ 0
P2_RIGHT
Text GLabel 7300 4525 0    50   Input ~ 0
P2_LEFT
Text GLabel 7300 4425 0    50   Input ~ 0
P2_DOWN
Text GLabel 8400 4425 2    50   Input ~ 0
P2_FIRE
Text GLabel 7300 4325 0    50   Input ~ 0
P2_UP
Text GLabel 7300 4225 0    50   Input ~ 0
P1_RIGHT
Text GLabel 7300 4125 0    50   Input ~ 0
P1_LEFT
Text GLabel 7300 4025 0    50   Input ~ 0
P1_DOWN
Text GLabel 8400 4325 2    50   Input ~ 0
P1_FIRE
Text GLabel 7300 3925 0    50   Input ~ 0
P1_UP
Wire Wire Line
	8325 4325 8400 4325
Wire Wire Line
	8325 4425 8400 4425
Wire Wire Line
	8875 4525 8325 4525
Wire Wire Line
	9275 4525 9450 4525
Wire Wire Line
	9450 4525 9450 3725
Wire Wire Line
	9450 4525 9450 4800
Wire Wire Line
	9225 4800 9450 4800
Connection ~ 9450 4525
Connection ~ 9450 4800
Wire Wire Line
	8325 3725 8875 3725
Wire Wire Line
	9275 3725 9450 3725
Wire Wire Line
	7300 3925 7375 3925
Wire Wire Line
	7375 4025 7300 4025
Wire Wire Line
	7300 4125 7375 4125
Wire Wire Line
	7375 4225 7300 4225
Wire Wire Line
	7300 4325 7375 4325
Wire Wire Line
	7375 4425 7300 4425
Wire Wire Line
	7375 4525 7300 4525
Wire Wire Line
	7300 4625 7375 4625
Wire Wire Line
	9450 4800 9450 5025
$Comp
L power:GND #PWR0107
U 1 1 60098DD9
P 7950 5025
F 0 "#PWR0107" H 7950 4775 50  0001 C CNN
F 1 "GND" H 7955 4852 50  0000 C CNN
F 2 "" H 7950 5025 50  0001 C CNN
F 3 "" H 7950 5025 50  0001 C CNN
	1    7950 5025
	1    0    0    -1  
$EndComp
Connection ~ 7950 4950
Wire Wire Line
	7950 4950 7950 5025
$EndSCHEMATC
