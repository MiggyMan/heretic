EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2935 4979 3135 4979
Text Label 3135 4979 2    39   ~ 0
+5v
Wire Wire Line
	2935 5179 3135 5179
Text Label 3135 5179 2    39   ~ 0
GND
Wire Wire Line
	2935 5079 3135 5079
Text Label 3135 5079 2    39   ~ 0
SDA
Wire Wire Line
	2435 5079 2235 5079
Text Label 2235 5079 0    39   ~ 0
SCL
Wire Wire Line
	2435 5179 2235 5179
Text Label 2235 5179 0    39   ~ 0
RESET
Wire Wire Line
	2435 4979 2235 4979
Text Label 2235 4979 0    39   ~ 0
MISO
Text Label 3363 3554 2    39   ~ 0
RESET
Wire Wire Line
	3163 2654 3363 2654
Text Label 3363 2654 2    39   ~ 0
IN
Wire Wire Line
	3163 2754 3363 2754
Text Label 3363 2754 2    39   ~ 0
SCL
Wire Wire Line
	3163 2854 3363 2854
Text Label 3363 2854 2    39   ~ 0
MISO
Wire Wire Line
	3163 2954 3363 2954
Text Label 3363 2954 2    39   ~ 0
SDA
Wire Wire Line
	2563 3854 2563 4054
Text Label 2563 4054 1    39   ~ 0
GND
Wire Wire Line
	2563 2054 2563 1854
Text Label 2563 1854 3    39   ~ 0
+5v
$Comp
L Device:R_Small R5
U 1 1 6039E5CF
P 9036 3968
F 0 "R5" V 8848 3968 39  0000 C TNN
F 1 "4K7" V 8931 3968 39  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" H 9036 3968 50  0001 C CNN
F 3 "~" H 9036 3968 50  0001 C CNN
F 4 "C25900" V 9036 3968 50  0001 C CNN "LCSC"
	1    9036 3968
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 603ABA2D
P 7037 3720
F 0 "R4" V 6849 3720 39  0000 C TNN
F 1 "18k" V 6932 3720 39  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" H 7037 3720 50  0001 C CNN
F 3 "~" H 7037 3720 50  0001 C CNN
F 4 "C25762" V 7037 3720 50  0001 C CNN "LCSC"
	1    7037 3720
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 603ADFC7
P 6801 3889
F 0 "R2" V 6613 3889 39  0000 C TNN
F 1 "36k" V 6696 3889 39  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" H 6801 3889 50  0001 C CNN
F 3 "~" H 6801 3889 50  0001 C CNN
F 4 "C25783" V 6801 3889 50  0001 C CNN "LCSC"
	1    6801 3889
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 603B2AF0
P 7292 3889
F 0 "R3" V 7104 3889 39  0000 C TNN
F 1 "9k1" V 7187 3889 39  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" H 7292 3889 50  0001 C CNN
F 3 "~" H 7292 3889 50  0001 C CNN
F 4 "C25926" V 7292 3889 50  0001 C CNN "LCSC"
	1    7292 3889
	0    1    1    0   
$EndComp
Wire Wire Line
	8904 3968 8936 3968
Wire Wire Line
	9136 3968 9202 3968
Text Label 9202 3968 0    39   ~ 0
IN
Wire Wire Line
	6901 3889 7037 3889
$Comp
L Device:C_Small C1
U 1 1 603D9499
P 7037 4068
F 0 "C1" H 7129 4106 39  0000 L CNN
F 1 "10uF" H 7129 4031 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7037 4068 50  0001 C CNN
F 3 "~" H 7037 4068 50  0001 C CNN
F 4 "C19702" H 7037 4068 50  0001 C CNN "LCSC"
	1    7037 4068
	1    0    0    -1  
$EndComp
Wire Wire Line
	7037 3968 7037 3889
Connection ~ 7037 3889
Wire Wire Line
	7037 3889 7139 3889
Wire Wire Line
	7037 3889 7037 3820
Wire Wire Line
	8554 4318 8554 4392
Wire Wire Line
	7037 4168 7037 4264
$Comp
L dw_symbols:SS49X U3
U 1 1 60387741
P 8554 3968
F 0 "U3" H 8554 4219 50  0000 C CNN
F 1 "SS49X" H 8554 4154 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92Flat" H 8554 3768 50  0001 C CNN
F 3 "" H 8554 3968 50  0001 C CNN
	1    8554 3968
	0    -1   1    0   
$EndComp
Wire Wire Line
	6767 4264 7037 4264
Connection ~ 7037 4264
Wire Wire Line
	7037 4264 7422 4264
Wire Wire Line
	7037 3620 7037 3453
Wire Wire Line
	7037 3453 6837 3453
Wire Wire Line
	7392 3889 7422 3889
Wire Wire Line
	7422 3889 7422 4264
Wire Wire Line
	6701 3889 6501 3889
Text Label 6501 3889 0    39   ~ 0
PWM
Text Label 6837 3453 0    39   ~ 0
+5v
Text Label 6767 4264 0    39   ~ 0
GND
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6041B433
P 6994 5579
F 0 "H2" V 6956 5729 39  0000 L CNN
F 1 "MountingHole_Pad" V 7031 5729 39  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 6994 5579 50  0001 C CNN
F 3 "~" H 6994 5579 50  0001 C CNN
	1    6994 5579
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6041C5BD
P 6994 5351
F 0 "H1" V 6956 5501 39  0000 L CNN
F 1 "MountingHole_Pad" V 7031 5501 39  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO14580_Pad" H 6994 5351 50  0001 C CNN
F 3 "~" H 6994 5351 50  0001 C CNN
	1    6994 5351
	0    1    1    0   
$EndComp
Wire Wire Line
	6894 5351 6894 5579
Text Label 6716 5351 0    39   ~ 0
GND
Wire Wire Line
	6894 5351 6716 5351
Connection ~ 6894 5351
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 6042834A
P 2635 5079
F 0 "J3" H 2685 5396 50  0000 C CNN
F 1 "ISP" H 2685 5305 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2635 5079 50  0001 C CNN
F 3 "~" H 2635 5079 50  0001 C CNN
	1    2635 5079
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 60434D62
P 4018 4944
F 0 "C2" H 4110 4982 39  0000 L CNN
F 1 "10uF" H 4110 4907 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4018 4944 50  0001 C CNN
F 3 "~" H 4018 4944 50  0001 C CNN
F 4 "C19702" H 4018 4944 50  0001 C CNN "LCSC"
	1    4018 4944
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 604356AB
P 4536 5094
F 0 "J1" H 4616 5086 50  0000 L CNN
F 1 "OUTPUT" H 4616 4995 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4536 5094 50  0001 C CNN
F 3 "~" H 4536 5094 50  0001 C CNN
	1    4536 5094
	1    0    0    -1  
$EndComp
Wire Wire Line
	4336 5394 4136 5394
Text Label 4136 5394 0    39   ~ 0
FAULT
Wire Wire Line
	4336 5294 4136 5294
Text Label 4136 5294 0    39   ~ 0
OUT
Wire Wire Line
	4336 5194 4136 5194
Text Label 4136 5194 0    39   ~ 0
SDA
Wire Wire Line
	4336 5094 4136 5094
Text Label 4136 5094 0    39   ~ 0
SCL
Wire Wire Line
	4336 4994 4095 4994
Wire Wire Line
	4095 4994 4095 5044
Wire Wire Line
	4095 5044 4018 5044
Wire Wire Line
	4336 4894 4095 4894
Wire Wire Line
	4095 4894 4095 4844
Wire Wire Line
	4095 4844 4018 4844
Text Label 4018 4728 3    39   ~ 0
+5v
Wire Wire Line
	4018 4728 4018 4844
Connection ~ 4018 4844
Text Label 4018 5160 1    39   ~ 0
GND
Wire Wire Line
	4018 5160 4018 5044
Connection ~ 4018 5044
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 60459952
P 5399 5119
F 0 "J2" H 5479 5111 50  0000 L CNN
F 1 "OUTPUT" H 5479 5020 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5399 5119 50  0001 C CNN
F 3 "~" H 5399 5119 50  0001 C CNN
	1    5399 5119
	1    0    0    -1  
$EndComp
Wire Wire Line
	5199 5419 4999 5419
Text Label 4999 5419 0    39   ~ 0
FAULT
Wire Wire Line
	5199 5319 4999 5319
Text Label 4999 5319 0    39   ~ 0
OUT
Wire Wire Line
	5199 5219 4999 5219
Text Label 4999 5219 0    39   ~ 0
SDA
Wire Wire Line
	5199 5119 4999 5119
Text Label 4999 5119 0    39   ~ 0
SCL
Wire Wire Line
	5199 5019 4999 5019
Text Label 4999 5019 0    39   ~ 0
GND
Wire Wire Line
	5199 4919 4999 4919
Text Label 4999 4919 0    39   ~ 0
+5v
Text Label 7539 3657 2    39   ~ 0
OUT
$Comp
L Switch:SW_Push S1
U 1 1 603B572F
P 4003 3654
F 0 "S1" H 4003 3939 39  0000 C TNN
F 1 "CAL" H 4003 3848 39  0000 C TNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 4003 3854 50  0001 C CNN
F 3 "~" H 4003 3854 50  0001 C CNN
F 4 "C127509" H 4003 3654 50  0001 C CNN "LCSC"
	1    4003 3654
	0    1    1    0   
$EndComp
Wire Wire Line
	4003 3854 4003 3964
Text Label 3363 2200 2    39   ~ 0
STATUS
$Comp
L power:GND #PWR0102
U 1 1 603C242B
P 4003 3964
F 0 "#PWR0102" H 4003 3714 50  0001 C CNN
F 1 "GND" H 4008 3791 50  0000 C CNN
F 2 "" H 4003 3964 50  0001 C CNN
F 3 "" H 4003 3964 50  0001 C CNN
	1    4003 3964
	1    0    0    -1  
$EndComp
Wire Wire Line
	8554 3544 8554 3618
Text Label 8554 3544 3    39   ~ 0
+5v
Text Label 8554 4392 1    39   ~ 0
GND
Wire Wire Line
	7139 3889 7139 3657
Wire Wire Line
	7139 3657 7539 3657
Connection ~ 7139 3889
Wire Wire Line
	7139 3889 7192 3889
Wire Wire Line
	3163 3054 3363 3054
Text Label 3363 3054 2    39   ~ 0
PWM
Wire Wire Line
	3930 2200 3992 2200
$Comp
L power:GND #PWR0101
U 1 1 603824C4
P 3992 2200
F 0 "#PWR0101" H 3992 1950 50  0001 C CNN
F 1 "GND" H 3997 2027 50  0000 C CNN
F 2 "" H 3992 2200 50  0001 C CNN
F 3 "" H 3992 2200 50  0001 C CNN
	1    3992 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 6035A5A8
P 3513 2200
F 0 "D1" H 3506 2393 39  0000 C TNN
F 1 "STATUS" H 3506 2318 39  0000 C TNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3513 2200 50  0001 C CNN
F 3 "~" H 3513 2200 50  0001 C CNN
F 4 "C72041" H 3513 2200 50  0001 C CNN "LCSC"
	1    3513 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3663 2200 3730 2200
$Comp
L Device:R_Small R1
U 1 1 6035BFDB
P 3830 2200
F 0 "R1" V 3658 2200 39  0000 C TNN
F 1 "1k" V 3733 2200 39  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" H 3830 2200 50  0001 C CNN
F 3 "~" H 3830 2200 50  0001 C CNN
F 4 "C11702" V 3830 2200 50  0001 C CNN "LCSC"
	1    3830 2200
	0    1    -1   0   
$EndComp
Wire Wire Line
	5745 2824 5807 2824
$Comp
L power:GND #PWR0103
U 1 1 603F6554
P 5807 2824
F 0 "#PWR0103" H 5807 2574 50  0001 C CNN
F 1 "GND" H 5812 2651 50  0000 C CNN
F 2 "" H 5807 2824 50  0001 C CNN
F 3 "" H 5807 2824 50  0001 C CNN
	1    5807 2824
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 603F655A
P 5328 2824
F 0 "D2" H 5321 3017 39  0000 C TNN
F 1 "POWER" H 5321 2942 39  0000 C TNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5328 2824 50  0001 C CNN
F 3 "~" H 5328 2824 50  0001 C CNN
F 4 "C72043" H 5328 2824 50  0001 C CNN "LCSC"
	1    5328 2824
	-1   0    0    1   
$EndComp
Wire Wire Line
	5478 2824 5545 2824
$Comp
L Device:R_Small R6
U 1 1 603F6561
P 5645 2824
F 0 "R6" V 5473 2824 39  0000 C TNN
F 1 "1k" V 5548 2824 39  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" H 5645 2824 50  0001 C CNN
F 3 "~" H 5645 2824 50  0001 C CNN
F 4 "C11702" V 5645 2824 50  0001 C CNN "LCSC"
	1    5645 2824
	0    1    -1   0   
$EndComp
Text Label 4978 2824 0    39   ~ 0
+5v
Wire Wire Line
	5178 2824 4978 2824
$Comp
L Switch:SW_Push S2
U 1 1 603FD170
P 3490 3754
F 0 "S2" H 3490 4039 39  0000 C TNN
F 1 "RSET" H 3490 3948 39  0000 C TNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 3490 3954 50  0001 C CNN
F 3 "~" H 3490 3954 50  0001 C CNN
F 4 "C127509" H 3490 3754 50  0001 C CNN "LCSC"
	1    3490 3754
	0    1    1    0   
$EndComp
Wire Wire Line
	3163 3554 3490 3554
Wire Wire Line
	3490 3954 3490 4154
Text Label 3490 4154 1    39   ~ 0
+5v
Wire Wire Line
	3163 3454 4003 3454
$Comp
L MCU_Microchip_ATtiny:ATtiny84-20SSU U1
U 1 1 60392B13
P 2563 2954
F 0 "U1" H 2034 3000 50  0000 R CNN
F 1 "ATtiny84-20SSU" H 2034 2909 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2563 2954 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8006.pdf" H 2563 2954 50  0001 C CNN
F 4 " C144333" H 2563 2954 50  0001 C CNN "LCSC"
	1    2563 2954
	1    0    0    -1  
$EndComp
Text Label 3363 2454 2    39   ~ 0
FAULT
Wire Wire Line
	3163 2454 3363 2454
Wire Wire Line
	3930 2454 3992 2454
$Comp
L power:GND #PWR0104
U 1 1 604D50CD
P 3992 2454
F 0 "#PWR0104" H 3992 2204 50  0001 C CNN
F 1 "GND" H 3997 2281 50  0000 C CNN
F 2 "" H 3992 2454 50  0001 C CNN
F 3 "" H 3992 2454 50  0001 C CNN
	1    3992 2454
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 604D50D3
P 3513 2454
F 0 "D3" H 3506 2647 39  0000 C TNN
F 1 "FAULT" H 3506 2572 39  0000 C TNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3513 2454 50  0001 C CNN
F 3 "~" H 3513 2454 50  0001 C CNN
F 4 "C72038" H 3513 2454 50  0001 C CNN "LCSC"
	1    3513 2454
	-1   0    0    1   
$EndComp
Wire Wire Line
	3663 2454 3730 2454
$Comp
L Device:R_Small R9
U 1 1 604D50DA
P 3830 2454
F 0 "R9" V 3658 2454 39  0000 C TNN
F 1 "1k" V 3733 2454 39  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" H 3830 2454 50  0001 C CNN
F 3 "~" H 3830 2454 50  0001 C CNN
F 4 "C11702" V 3830 2454 50  0001 C CNN "LCSC"
	1    3830 2454
	0    1    -1   0   
$EndComp
Wire Wire Line
	3163 2354 3363 2354
Wire Wire Line
	3363 2354 3363 2200
$Comp
L Device:Resonator_Small Y1
U 1 1 604A9451
P 3666 3254
F 0 "Y1" V 3991 3204 50  0000 C CNN
F 1 "AEL ZTT MT 8Mhz" V 3900 3204 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3641 3254 50  0001 C CNN
F 3 "~" H 3641 3254 50  0001 C CNN
	1    3666 3254
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3163 3354 3566 3354
Wire Wire Line
	3163 3254 3370 3254
Wire Wire Line
	3370 3254 3370 3154
Wire Wire Line
	3370 3154 3566 3154
Wire Wire Line
	3866 3254 3928 3254
$Comp
L power:GND #PWR0105
U 1 1 604B0ED1
P 3928 3254
F 0 "#PWR0105" H 3928 3004 50  0001 C CNN
F 1 "GND" H 3933 3081 50  0000 C CNN
F 2 "" H 3928 3254 50  0001 C CNN
F 3 "" H 3928 3254 50  0001 C CNN
	1    3928 3254
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3163 2554 3363 2554
Text Label 3363 2554 2    39   ~ 0
MEM
$Comp
L additional:DS2431 U2
U 1 1 604C04C5
P 7974 2251
F 0 "U2" H 7730 2148 50  0000 R CNN
F 1 "DS2431" H 7730 2239 50  0000 R CNN
F 2 "Package_SO_J-Lead:TSOC-6_3.76x3.94mm_P1.27mm" H 9024 1901 50  0001 C CNN
F 3 "http://pdfserv.maximintegrated.com/en/ds/DS2401.pdf" H 7824 2501 50  0001 C CNN
	1    7974 2251
	-1   0    0    1   
$EndComp
Wire Wire Line
	7974 1851 7974 1789
$Comp
L power:GND #PWR0106
U 1 1 604C52A8
P 7974 1789
F 0 "#PWR0106" H 7974 1539 50  0001 C CNN
F 1 "GND" H 7979 1616 50  0000 C CNN
F 2 "" H 7974 1789 50  0001 C CNN
F 3 "" H 7974 1789 50  0001 C CNN
	1    7974 1789
	-1   0    0    1   
$EndComp
Wire Wire Line
	7674 2251 7474 2251
Text Label 7474 2251 0    39   ~ 0
MEM
$EndSCHEMATC
