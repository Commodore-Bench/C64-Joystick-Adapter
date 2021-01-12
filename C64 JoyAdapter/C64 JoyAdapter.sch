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
P 1800 3500
F 0 "J2" H 2394 3546 50  0000 L CNN
F 1 "Port 2" H 2394 3455 50  0000 L CNN
F 2 "RND:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 1800 3500 50  0001 C CNN
F 3 "" H 1800 3500 50  0001 C CNN
	1    1800 3500
	-1   0    0    -1  
$EndComp
$Comp
L atari_joystick:Atari_Joystick J1
U 1 1 5FFBE15A
P 1800 5200
F 0 "J1" H 2394 5246 50  0000 L CNN
F 1 "Port 1" H 2394 5155 50  0000 L CNN
F 2 "RND:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 1800 5200 50  0001 C CNN
F 3 "" H 1800 5200 50  0001 C CNN
	1    1800 5200
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
L Switch:SW_Push SW1
U 1 1 5FBBF92E
P 9075 3725
F 0 "SW1" H 8875 3775 50  0000 C CNN
F 1 "RESET" H 9075 3650 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 9075 3925 50  0001 C CNN
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
F 2 "LED_THT:LED_D5.0mm_Clear" H 9075 4800 50  0001 C CNN
F 3 "~" H 9075 4800 50  0001 C CNN
	1    9075 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 4800 8500 4800
Wire Wire Line
	8850 4800 8925 4800
$Comp
L arduino_pro_micro:Arduino_Pro_Micro A1
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
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 9075 4725 50  0001 C CNN
F 3 "~" H 9075 4725 50  0001 C CNN
	1    9075 4525
	1    0    0    -1  
$EndComp
Text GLabel 3200 2850 2    50   Output ~ 0
POT_BY
Text GLabel 3200 2950 2    50   Output ~ 0
POT_BX
Text GLabel 3200 4550 2    50   Output ~ 0
POT_AY
Text GLabel 3200 4650 2    50   Output ~ 0
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
Text GLabel 2100 3300 2    50   Output ~ 0
P2_RIGHT
Text GLabel 2100 3500 2    50   Output ~ 0
P2_LEFT
Text GLabel 2100 3700 2    50   Output ~ 0
P2_DOWN
Text GLabel 2100 3800 2    50   Output ~ 0
P2_FIRE
Text GLabel 2100 3900 2    50   Output ~ 0
P2_UP
Text GLabel 2100 5000 2    50   Output ~ 0
P1_RIGHT
Text GLabel 2100 5200 2    50   Output ~ 0
P1_LEFT
Text GLabel 2100 5400 2    50   Output ~ 0
P1_DOWN
Text GLabel 2100 5500 2    50   Output ~ 0
P1_FIRE
Text GLabel 2100 5600 2    50   Output ~ 0
P1_UP
$Comp
L Device:R_Small R1
U 1 1 6002419F
P 2825 3100
F 0 "R1" V 2775 2900 50  0000 L CNN
F 1 "220K" V 2775 3200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2825 3100 50  0001 C CNN
F 3 "~" H 2825 3100 50  0001 C CNN
	1    2825 3100
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
P 2825 3200
F 0 "R2" V 2775 3000 50  0000 L CNN
F 1 "220K" V 2775 3300 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2825 3200 50  0001 C CNN
F 3 "~" H 2825 3200 50  0001 C CNN
	1    2825 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 3100 2450 3100
Wire Wire Line
	2100 3200 2525 3200
Wire Wire Line
	2925 3100 3200 3100
Wire Wire Line
	3200 3100 3200 3200
Wire Wire Line
	3200 3400 2100 3400
Wire Wire Line
	2925 3200 3200 3200
Connection ~ 3200 3200
Wire Wire Line
	3200 3200 3200 3400
Wire Wire Line
	2525 2950 2525 3200
Connection ~ 2525 3200
Wire Wire Line
	2525 3200 2725 3200
Wire Wire Line
	2450 2850 2450 3100
Connection ~ 2450 3100
Wire Wire Line
	2450 3100 2725 3100
Wire Wire Line
	2525 2950 3200 2950
Wire Wire Line
	2450 2850 3200 2850
$Comp
L Device:R_Small R3
U 1 1 60034C97
P 2825 4800
F 0 "R3" V 2775 4600 50  0000 L CNN
F 1 "220K" V 2775 4900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2825 4800 50  0001 C CNN
F 3 "~" H 2825 4800 50  0001 C CNN
	1    2825 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 60034C9D
P 2825 4900
F 0 "R4" V 2775 4700 50  0000 L CNN
F 1 "220K" V 2775 5000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2825 4900 50  0001 C CNN
F 3 "~" H 2825 4900 50  0001 C CNN
	1    2825 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 4800 2450 4800
Wire Wire Line
	2100 4900 2525 4900
Wire Wire Line
	2925 4800 3200 4800
Wire Wire Line
	3200 4800 3200 4900
Wire Wire Line
	3200 5100 2100 5100
Wire Wire Line
	2925 4900 3200 4900
Connection ~ 3200 4900
Wire Wire Line
	3200 4900 3200 5100
$Comp
L power:GND #PWR0101
U 1 1 60034CAB
P 3350 4900
F 0 "#PWR0101" H 3350 4650 50  0001 C CNN
F 1 "GND" H 3355 4727 50  0000 C CNN
F 2 "" H 3350 4900 50  0001 C CNN
F 3 "" H 3350 4900 50  0001 C CNN
	1    3350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 4650 2525 4900
Connection ~ 2525 4900
Wire Wire Line
	2525 4900 2725 4900
Wire Wire Line
	2450 4550 2450 4800
Connection ~ 2450 4800
Wire Wire Line
	2450 4800 2725 4800
Wire Wire Line
	2525 4650 3200 4650
Wire Wire Line
	2450 4550 3200 4550
Wire Wire Line
	3350 4900 3350 4800
Wire Wire Line
	3350 4800 3200 4800
Connection ~ 3200 4800
$Comp
L power:GND #PWR0104
U 1 1 6004171F
P 3350 3200
F 0 "#PWR0104" H 3350 2950 50  0001 C CNN
F 1 "GND" H 3355 3027 50  0000 C CNN
F 2 "" H 3350 3200 50  0001 C CNN
F 3 "" H 3350 3200 50  0001 C CNN
	1    3350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3200 3350 3100
Wire Wire Line
	3350 3100 3200 3100
$Comp
L power:VCC #PWR0105
U 1 1 600446E1
P 3525 3300
F 0 "#PWR0105" H 3525 3150 50  0001 C CNN
F 1 "VCC" H 3542 3473 50  0000 C CNN
F 2 "" H 3525 3300 50  0001 C CNN
F 3 "" H 3525 3300 50  0001 C CNN
	1    3525 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 3300 3525 3600
Wire Wire Line
	3525 3600 2100 3600
$Comp
L power:VCC #PWR0106
U 1 1 6004724E
P 3525 5000
F 0 "#PWR0106" H 3525 4850 50  0001 C CNN
F 1 "VCC" H 3542 5173 50  0000 C CNN
F 2 "" H 3525 5000 50  0001 C CNN
F 3 "" H 3525 5000 50  0001 C CNN
	1    3525 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 5000 3525 5300
Wire Wire Line
	3525 5300 2100 5300
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
$Comp
L c64_idc:C64_IDC2_OUT J3
U 1 1 5FFF3ACE
P 2350 1800
F 0 "J3" H 2362 2215 50  0000 C CNN
F 1 "C64 JoyKEY" H 2362 2124 50  0000 C CNN
F 2 "C64_IDC:IDC_Joystick" H 2350 1800 50  0001 C CNN
F 3 "~" H 2350 1800 50  0001 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
Connection ~ 3200 3100
Text GLabel 1825 1900 0    50   Input ~ 0
P2_RIGHT
Text GLabel 1825 1800 0    50   Input ~ 0
P2_LEFT
Text GLabel 1825 1700 0    50   Input ~ 0
P2_DOWN
Text GLabel 1825 1600 0    50   Input ~ 0
P2_UP
Text GLabel 2825 1600 2    50   Input ~ 0
P2_FIRE
$Comp
L power:GND #PWR0108
U 1 1 60007377
P 3275 1875
F 0 "#PWR0108" H 3275 1625 50  0001 C CNN
F 1 "GND" H 3280 1702 50  0000 C CNN
F 2 "" H 3275 1875 50  0001 C CNN
F 3 "" H 3275 1875 50  0001 C CNN
	1    3275 1875
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 6000737E
P 3275 1625
F 0 "#PWR0109" H 3275 1475 50  0001 C CNN
F 1 "VCC" H 3292 1798 50  0000 C CNN
F 2 "" H 3275 1625 50  0001 C CNN
F 3 "" H 3275 1625 50  0001 C CNN
	1    3275 1625
	1    0    0    -1  
$EndComp
Text GLabel 2825 1900 2    50   Input ~ 0
POT_BX
Text GLabel 1825 2000 0    50   Input ~ 0
POT_BY
Wire Wire Line
	1825 1600 1900 1600
Wire Wire Line
	1900 1700 1825 1700
Wire Wire Line
	1825 1800 1900 1800
Wire Wire Line
	1900 1900 1825 1900
Wire Wire Line
	1825 2000 1900 2000
Wire Wire Line
	3275 1625 3275 1700
Wire Wire Line
	3275 1700 2825 1700
Wire Wire Line
	2825 1800 3275 1800
Wire Wire Line
	3275 1800 3275 1875
$EndSCHEMATC
