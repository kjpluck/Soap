
String translationCredit = "";

// "This is a\ncorona virus"
String Line1 = "This is a\ncorona virus";            

// "They are basically\nballs of RNA"
String Line2 = "They are basically\nballs of RNA";   

// "Protected by protein"
String Line3 = "Protected by protein";

// "Stuck together\nwith grease"
String Line4 = "Stuck together\nwith grease";

// "Plain old everyday soap"
String Line5 = "Plain old everyday soap";

// "Dissolves the grease"
String Line6 = "Dissolves the grease";

// "Destroying the virus"
String Line7 = "Destroying the virus";   

// "WASH\nYOUR\nHANDS"
String Line8 = "WASH\nYOUR\nHANDS";
int Line8FontSize = 200;

import com.hamoid.*;
VideoExport videoExport;
import processing.video.*;

String rnaData = "-0.66172,-1.65431 -1.49569,-3.24974 -1.98517,-4.96294 -0.18179,-0.63627 0,-1.32345 0,-1.98518 0,-0.99259 0.19466,-2.00445 0,-2.97776 -0.14509,-0.72547 -0.81315,-1.26744 -0.99259,-1.98518 -0.48812,-1.95247 -0.6217,-3.97744 -0.99259,-5.95553 -0.62182,-3.31636 -1.70497,-6.56338 -1.98517,-9.92588 -1.18422,-6.57178 0.50752,-13.254 0,-19.85177 -0.17944,-2.33266 -0.69,-4.62821 -0.99259,-6.94811 -0.69003,-5.29019 -0.98694,-10.64064 -1.98518,-15.88142 -0.22926,-1.20361 -3.10293,-7.63215 -3.97035,-8.93329 -0.5191,-0.77865 -1.32345,-1.32345 -1.98518,-1.98518 -0.33086,-0.33086 -0.54869,-0.84462 -0.99259,-0.99259 -0.94165,-0.31388 -1.98517,0 -2.97776,0 -1.98518,0 -3.97036,0 -5.95553,0 -2.6469,0 -5.29381,0 -7.94071,0 -1.32345,0 -2.6602,-0.18716 -3.97035,0 -1.03577,0.14797 -1.9981,0.62522 -2.97777,0.99259 -6.89307,2.58491 -3.17158,0.92975 -8.93329,4.96294 -16.02659,11.21862 -1.95651,-0.28398 -6.94812,5.95553 -0.8769,1.09613 -2.23379,1.78741 -2.97776,2.97777 -0.94433,1.51092 -1.4732,3.25633 -1.98518,4.96294 -1.38123,4.60409 -0.99259,9.17427 -0.99259,13.89624 0,4.30121 0,8.60243 0,12.90364 0,2.31604 -0.38075,4.66359 0,6.94812 0.29292,1.75751 1.18835,3.3693 1.98518,4.96294 3.15394,6.30788 3.78717,6.83452 7.9407,11.91106 1.63637,2 3.34866,3.93767 4.96295,5.95553 1.03344,1.2918 1.65431,2.97777 2.97776,3.97035 1.4254,1.06905 3.25633,1.4732 4.96294,1.98518 4.86857,1.46057 9.88914,0.99259 14.88883,0.99259 2.6469,0 5.2938,0 7.9407,0 0.66173,0 1.35741,0.20926 1.98518,0 1.40373,-0.46791 2.7392,-1.16441 3.97035,-1.98518 2.16581,-1.44387 2.31112,-2.97186 3.97036,-4.96294 2.50064,-3.00077 2.24941,-2.61359 4.96294,-3.97035 0.66172,-0.33086 1.3696,-0.58221 1.98517,-0.99259 0.38933,-0.25955 0.57408,-0.78333 0.99259,-0.99259 0.29593,-0.14796 0.69666,0.14797 0.99259,0 0.41851,-0.20925 0.57408,-0.78333 0.99259,-0.99259 0.0519,-0.026 2.92583,-0.026 2.97776,0 1.9485,0.97425 0.44686,1.88631 0.99259,2.97777 1.05876,2.11752 1.50586,-0.37744 1.98518,2.97776 0.30104,2.1073 0,6.41598 0,8.9333 0,0.18092 0.2255,6.49712 0,6.94812 -0.20926,0.41851 -0.73304,0.60326 -0.99259,0.99258 -1.46456,2.19685 -0.40183,2.25306 -2.97777,3.97036 -4.61367,3.07578 -8.61383,2.97776 -13.89623,2.97776 -3.30863,0 -6.61726,0 -9.92588,0 -1.32346,0 -2.64691,0 -3.97036,0 -0.33086,0 -0.66815,0.0649 -0.99259,0 -1.33769,-0.26754 -2.6469,-0.66172 -3.97035,-0.99259 -1.32345,-0.33086 -2.78591,-0.31576 -3.97035,-0.99258 -1.21878,-0.69645 -1.89939,-2.07912 -2.97777,-2.97777 -1.1605,-1.80131 -3.41954,-1.82022 -4.96294,-2.97776 -0.74866,-0.5615 -1.32345,-1.32346 -1.98518,-1.98518 -0.66172,-0.66173 -1.40057,-1.25442 -1.98517,-1.98518 -0.74523,-0.93153 -1.23995,-2.04623 -1.98518,-2.97776 -0.5846,-0.73076 -1.46607,-1.20653 -1.98517,-1.98518 -0.82077,-1.23115 -1.51727,-2.56662 -1.98518,-3.97035 -0.17788,-0.53362 0,-3.12998 0,-3.97036 0,-3.30862 0,-6.61725 0,-9.92588 0,-0.24073 -0.0319,-2.94584 0,-2.97776 0.23395,-0.23396 0.75863,0.23395 0.99259,0 0.23395,-0.23396 -0.23396,-0.75864 0,-0.99259 0.23395,-0.23396 0.69665,0.14797 0.99259,0 4.54268,-2.27134 -4.21197,0.4114 2.97776,-1.98518 1.29418,-0.43139 2.6469,-0.66172 3.97035,-0.99259 1.32345,-0.33086 2.61452,-0.84194 3.97036,-0.99258 1.64419,-0.18269 3.30862,0 4.96294,0 2.97776,0 5.95553,0 8.93329,0 2.97777,0 5.95553,0 8.9333,0 1.32345,0 2.6726,-0.25955 3.97035,0 0.45882,0.0918 0.55814,0.81881 0.99259,0.99258 1.26661,0.50665 2.75019,0.38251 3.97035,0.99259 0.83703,0.41851 1.32345,1.32345 1.98518,1.98518 0.33086,0.33086 0.71184,0.61826 0.99259,0.99259 0.71576,0.95435 1.14164,2.13422 1.98517,2.97776 0.52314,0.52314 1.52301,0.41488 1.98518,0.99259 2.54193,3.17741 2.54993,7.06794 2.97776,10.91847 0.0731,0.65768 -0.16049,1.34321 0,1.98518 0.50752,2.03008 1.64117,3.89144 1.98518,5.95553 0.32636,1.95816 0,3.97035 0,5.95553 0,2.31604 0,4.63208 0,6.94812 0,2.31603 0,4.63207 0,6.94811 0,0.66173 0.12978,1.3363 0,1.98518 -0.48352,2.41762 -2.51788,6.48823 -3.97035,7.94071 -1.50125,1.50125 -6.74592,0.99258 -8.9333,0.99258 -0.99258,0 -1.99868,0.16319 -2.97776,0 -5.20703,-0.86783 -9.58913,-5.25049 -12.90365,-8.93329 -1.41724,-1.57471 -2.93171,-3.11646 -3.97035,-4.96294 -1.95998,-3.48441 -3.38812,-7.24389 -4.96294,-10.91847 -1.40374,-3.27538 -3.06347,-6.47971 -3.97036,-9.92589 -0.76248,-2.89744 -0.69446,-5.95207 -0.99259,-8.93329 -1.35204,-13.52047 -0.99258,-8.73288 -0.99258,-22.82953 0,-1.98518 0,-3.97035 0,-5.95553 0,-0.99259 -0.19467,-2.00445 0,-2.97777 0.32383,-1.61915 3.69839,-5.52038 3.97035,-5.95552 0.78422,-1.25476 1.09738,-2.78663 1.98518,-3.97036 2.93332,-3.91109 6.70435,-5.83365 10.91847,-7.9407 4.19353,-2.09677 3.98545,-2.42801 8.93329,-2.97777 2.02707,-0.22523 4.79618,0 6.94812,0 0.66173,0 1.32345,0 1.98518,0 0.66172,0 1.37078,-0.24576 1.98517,0 1.10762,0.44305 1.98518,1.32345 2.97777,1.98518 0.99259,0.66172 2.06132,1.22147 2.97776,1.98517 2.86598,2.38832 3.01099,3.0276 4.96294,5.95553 0.66173,0.99259 1.45168,1.91077 1.98518,2.97777 0.46791,0.93582 0.66173,1.98518 0.99259,2.97776 0.33086,0.99259 0.86281,1.93957 0.99259,2.97777 0.32831,2.62646 0,5.2938 0,7.9407 0,1.98518 0.35512,4.00238 0,5.95553 -0.31873,1.75301 -1.38591,3.285 -1.98518,4.96295 -4.27214,11.96198 -1.27162,7.0184 -8.93329,18.85917 -1.5462,2.38958 -2.84739,5.04412 -4.96295,6.94812 -1.32436,1.19193 -3.32525,1.28331 -4.96294,1.98518 -0.68001,0.29143 -1.35077,0.61195 -1.98517,0.99259 -1.02294,0.61376 -1.84604,1.60793 -2.97777,1.98517 -0.63603,0.21201 -6.58819,0 -7.9407,0 -0.66173,0 -1.32346,0 -1.98518,0 -0.33086,0 -0.75863,0.23396 -0.99259,0 -0.52314,-0.52314 -0.5822,-1.3696 -0.99259,-1.98517 -1.97608,-2.96412 -4.6447,-5.52515 -5.95553,-8.9333 -0.97942,-2.54651 -1.55965,-5.24573 -1.98517,-7.9407 -1.11241,-7.04526 -0.99259,-9.14395 -0.99259,-14.88883 0,-2.99406 -0.14038,-7.47113 0.99259,-9.92588 1.08289,-2.34628 3.30862,-3.97036 4.96294,-5.95553 0.82475,-0.98971 7.00076,-8.76636 8.93329,-9.92588 0.55144,-0.33087 7.1687,-2.31604 8.9333,-2.97777 16.48929,-6.18348 -2.72657,0.14828 7.9407,-1.98518 0.72547,-0.14509 1.25972,-0.84749 1.98518,-0.99258 0.97331,-0.19467 1.98518,0 2.97776,0 1.65432,0 3.30863,0 4.96295,0 6.28639,0 12.57278,0 18.85917,0 0.66173,0 1.32345,0 1.98518,0 0.33086,0 0.6787,-0.10463 0.99259,0 3.97035,1.32345 -0.2007,0.95244 4.96294,1.98517 1.62219,0.32444 3.34075,-0.32444 4.96294,0 1.50531,0.30106 2.20393,1.8758 3.97035,0.99259 0.29594,-0.14797 0,-0.66173 0,-0.99259 0,-0.66172 0,-1.32345 0,-1.98517 0,-1.16072 0.18923,-6.28583 0,-6.94812 -0.40649,-1.42273 -1.37288,-2.62332 -1.98517,-3.97036 -3.50061,-7.70133 -2.51773,-7.43222 -7.94071,-14.88882 -0.82563,-1.13525 -1.80979,-2.19911 -2.97776,-2.97776 -0.87056,-0.58038 -2.00632,-0.60401 -2.97777,-0.99259 -0.68691,-0.27477 -1.26743,-0.81316 -1.98517,-0.99259 -0.64197,-0.16049 -1.32346,0 -1.98518,0 -1.65432,0 -3.30863,0 -4.96294,0 -1.32345,0 -2.6469,0 -3.97036,0 -0.99258,0 -2.00445,-0.19466 -2.97776,0 -2.47297,0.49459 -7.55285,5.46497 -9.92588,6.94812 -3.1616,1.97599 -5.34516,1.9348 -7.94071,4.96294 -1.54925,1.80746 -2.15637,4.75774 -2.97776,6.94812 -0.62562,1.6683 -1.55304,3.23439 -1.98518,4.96294 -0.24074,0.96295 0,1.98517 0,2.97776 0,2.97777 0,5.95553 0,8.9333 0,4.96294 0,9.92588 0,14.88882 0,1.98518 -0.19753,3.98021 0,5.95553 0.13574,1.35741 0.66172,2.6469 0.99259,3.97035 0.66172,2.64691 1.37167,5.28222 1.98517,7.94071 0.0162,0.07 1.97976,9.90963 1.98518,9.92588 0.46791,1.40374 1.32345,2.64691 1.98518,3.97036 0.33086,0.66172 0.91088,1.24987 0.99258,1.98517 0.25577,2.30188 -1.63768,5.31043 0,6.94812 1.25989,1.25989 3.1812,-1.98518 4.96295,-1.98518 1.47966,0 2.6469,1.32346 3.97035,1.98518 1.32345,0.66173 2.53487,1.62631 3.97035,1.98518 1.28394,0.32098 2.6469,0 3.97036,0 1.98517,0 3.97035,0 5.95553,0 0.26408,0 2.8958,0.16391 2.97776,0 0.59187,-1.18373 -0.49152,-2.74156 0,-3.97036 0.44305,-1.10761 1.69585,-1.82044 1.98518,-2.97776 0.27249,-1.08997 0,-6.95658 0,-8.93329 0,-4.0624 -0.23396,2.92099 0.99259,-1.98518 0.24073,-0.96295 0,-1.98518 0,-2.97777 0,-0.99258 0,-1.98517 0,-2.97776 0,-0.51905 0.13049,-3.70936 0,-3.97035 -0.20926,-0.41852 -0.73304,-0.60327 -0.99259,-0.99259 -0.41039,-0.61558 -0.41488,-1.52301 -0.99259,-1.98518 -2.53231,-2.02585 -4.2452,-1.81937 -6.94812,-2.97776 -3.64209,-1.5609 -3.96244,-2.57994 -7.94071,-2.97777 -2.39543,-0.23954 -5.36246,0 -7.9407,0 -0.24073,0 -2.94585,-0.0319 -2.97777,0 -0.23395,0.23396 0,0.66173 0,0.99259 0,0.33086 0,0.66172 0,0.99259 0,0.89468 -0.20824,4.3382 0,4.96294 0.52306,1.56917 1.59275,3.047 2.97777,3.97035 1.23115,0.82077 2.78662,1.09738 3.97035,1.98518 8.12037,6.09027 -0.50613,2.2284 8.9333,6.94812 1.59364,0.79682 3.32525,1.28331 4.96294,1.98517 12.65308,5.42275 4.68113,2.55297 14.88882,5.95553 1.72716,0.57572 7.52571,2.67775 9.92588,2.97777 1.76351,0.22044 4.05599,0 5.95553,0 0.65206,0 3.73695,0.1167 3.97036,0 0.29593,-0.14797 -0.23396,-0.75863 0,-0.99259 0.23395,-0.23396 0.75863,0.23396 0.99259,0 0.23395,-0.23396 -0.10463,-0.6787 0,-0.99259 1.56686,-4.7006 0.6082,1.23343 1.98517,-4.96294 0.43659,-1.96463 0.67871,-3.9676 0.99259,-5.95553 0.67872,-4.29857 1.52961,-8.57574 1.98518,-12.90365 0.31172,-2.9614 0,-5.95553 0,-8.93329 0,-1.24261 0.16842,-8.25962 0,-8.9333 -0.35887,-1.43548 -1.46564,-2.5849 -1.98518,-3.97035 -2.14352,-5.71605 0.4766,-2.41372 -2.97776,-7.94071 -1.09315,-1.74903 -4.12181,-5.63831 -5.95553,-6.94811 -1.20406,-0.86004 -2.64691,-1.32346 -3.97036,-1.98518 -5.39018,-2.69509 -3.74345,-2.1766 -10.91847,-3.97035 -7.30635,-1.82659 -10.37218,-2.44245 -17.86659,-2.97777 -2.47565,-0.17683 -5.37465,0 -7.9407,0 -1.98518,0 -3.97036,0 -5.95553,0 -0.33087,0 -0.67871,-0.10463 -0.99259,0 -5.45818,1.81939 -9.75288,9.59973 -12.90365,13.89624 -1.9566,2.66809 -4.15237,5.16661 -5.95553,7.9407 -5.26202,8.09542 -11.00855,18.40749 -13.89624,27.79248 -0.49614,1.61247 -0.66172,3.30862 -0.99258,4.96294 -0.33087,1.65431 -0.80629,3.28618 -0.99259,4.96294 -0.18269,1.64419 0,3.30863 0,4.96294 0,0.33086 0,0.66173 0,0.99259 0,0.33086 -0.14797,0.69665 0,0.99259 0.20925,0.41851 0.62721,0.70028 0.99259,0.99258 1.2918,1.03345 2.67855,1.94433 3.97035,2.97777 0.36538,0.2923 0.56251,0.80827 0.99259,0.99259 1.38154,0.59209 7.75102,2.66707 9.92588,2.97776 0.98261,0.14038 1.98518,0 2.97777,0 0.66172,0 1.32345,0 1.98517,0 0.33086,0 0.69666,0.14797 0.99259,0 0.41851,-0.20925 0.84462,-0.54869 0.99259,-0.99259 0.0524,-0.15718 0.0334,-4.76274 0,-4.96294 -0.22427,-1.34562 -0.38251,-2.75019 -0.99259,-3.97035 -3.15033,-6.30066 -7.77166,-12.20667 -13.89624,-15.88141 -1.9032,-1.14192 -4.01534,-1.89989 -5.95553,-2.97777 -1.04282,-0.57934 -1.82044,-1.69584 -2.97776,-1.98517 -0.48971,-0.12243 -7.53727,0 -8.9333,0 -1.65431,0 -3.30862,0 -4.96294,0 -0.33086,0 -0.66172,0 -0.99258,0 -0.33087,0 -0.69666,-0.14797 -0.99259,0 -0.41852,0.20925 -0.57408,0.78333 -0.99259,0.99258 -0.29593,0.14797 -0.69666,-0.14796 -0.99259,0 -1.35352,0.67676 -2.9506,4.88145 -2.97776,4.96295 -0.20926,0.62776 0.12977,1.3363 0,1.98517 -0.2052,1.02596 -0.60401,2.00632 -0.99259,2.97777 -0.27477,0.68691 -0.88796,1.25278 -0.99259,1.98517 -0.23396,1.63769 0,3.30863 0,4.96295 0,3.63949 0,7.27898 0,10.91847 0,2.31451 -0.39332,4.86925 0.99259,6.94811 0.77865,1.16798 2.06423,1.91198 2.97776,2.97777 5.89881,6.88194 -0.49737,1.52364 7.94071,6.94812 3.01043,1.93528 5.66292,4.50203 8.93329,5.95553 2.7875,1.23888 5.98333,1.20887 8.9333,1.98517 3.34057,0.8791 6.57471,2.13998 9.92588,2.97777 5.92852,1.48213 8.32886,0.99259 14.88882,0.99259 1.98518,0 3.97036,0 5.95553,0 0.99259,0 1.99869,0.16318 2.97777,0 3.35431,-0.55906 11.35864,-5.40311 11.91106,-5.95553 2.40872,-2.40872 3.43953,-5.88648 4.96294,-8.9333 2.57586,-5.15172 5.99941,-13.16692 6.94812,-18.85918 0.76345,-4.58069 0.83255,-9.25511 0.99259,-13.89623 0.23944,-6.94399 0,-13.89624 0,-20.84436 0,-7.60984 0,-15.21968 0,-22.82953 0,-1.32345 0,-2.6469 0,-3.97035 0,-0.33086 0.23395,-0.75863 0,-0.99259 -0.46791,-0.46791 -1.51727,0.46791 -1.98518,0 -0.52314,-0.52314 -0.46945,-1.46203 -0.99259,-1.98517 -2.46425,-2.46425 -10.72951,-5.11107 -13.89623,-5.95553 -2.94741,-0.78598 -5.90965,-1.58203 -8.9333,-1.98518 -1.96776,-0.26237 -3.97035,0 -5.95553,0 -1.65431,0 -3.30863,0 -4.96294,0 -1.98518,0 -3.97035,0 -5.95553,0 -0.99259,0 -1.99868,-0.16318 -2.97776,0 -1.03205,0.17201 -2.02167,0.56765 -2.97777,0.99259 -5.52552,2.45578 -6.86503,3.45471 -11.91106,6.94812 -2.34011,1.62008 -4.6463,3.28889 -6.94812,4.96294 -1.3379,0.97302 -2.59388,2.06011 -3.97035,2.97776 -0.61558,0.41039 -1.46204,0.46945 -1.98518,0.99259 -0.84353,0.84354 -1.32345,1.98518 -1.98517,2.97777 -0.66173,0.99258 -1.32345,1.98517 -1.98518,2.97776 -2.02729,3.04093 -4.2302,6.26219 -4.96294,9.92588 -0.22389,1.11945 0,3.66396 0,4.96294 0,1.57557 -0.48694,3.77932 0.99259,4.96295 1.15542,0.92433 2.83364,1.03792 3.97035,1.98517 0.91644,0.76371 1.05364,2.23254 1.98518,2.97777 0.817,0.6536 1.97174,0.70515 2.97776,0.99259 1.3117,0.37477 2.6469,0.66172 3.97035,0.99258 1.32346,0.33087 2.61989,0.79967 3.97036,0.99259 0.21901,0.0313 6.81666,0.0657 6.94812,0 0.29593,-0.14796 0,-0.66172 0,-0.99259 0,-0.33086 0.23395,-0.75863 0,-0.99258 -0.23396,-0.23396 -0.75864,0.23395 -0.99259,0 -9.50962,-9.50963 12.9014,7.74039 -7.94071,-8.9333 -2.79459,-2.23567 -6.09042,-3.78157 -8.93329,-5.95553 -10.80033,-8.25907 -6.29683,-7.99789 -20.84436,-14.88882 -1.81882,-0.86155 -3.99089,-0.55601 -5.95553,-0.99259 -1.02136,-0.22697 -1.9518,-0.7874 -2.97776,-0.99259 -1.118,-0.2236 -2.77584,0 -3.97036,0 -0.66172,0 -1.32345,0 -1.98517,0 -0.33086,0 -0.69666,-0.14797 -0.99259,0 -0.41851,0.20926 -0.57408,0.78333 -0.99259,0.99259 -0.59186,0.29593 -1.51726,-0.46791 -1.98517,0 -0.23396,0.23395 0.23395,0.75863 0,0.99259 -0.23396,0.23395 -0.75864,-0.23396 -0.99259,0 -0.23396,0.23395 0.14796,0.69665 0,0.99259 -0.12921,0.25842 -1.76852,1.20924 -0.99259,1.98517 0.23395,0.23396 0.75863,-0.23395 0.99259,0 0.23395,0.23396 0,0.66173 0,0.99259 0.33086,0.33086 0.60326,0.73304 0.99259,0.99259 5.40583,3.60389 4.59856,2.8563 10.91847,4.96294 3.97035,1.32345 7.9407,2.6469 11.91106,3.97035 1.98517,0.33087 4.02784,0.41429 5.95553,0.99259 1.41726,0.42518 2.56662,1.51727 3.97035,1.98518 0.56874,0.18958 4.03108,0 4.96294,0 0.44702,0 2.67569,0.15104 2.97776,0 0.41852,-0.20926 0.57408,-0.78333 0.99259,-0.99259 0.29594,-0.14797 0.75864,0.23396 0.99259,0 0.0636,-0.0636 1.86192,-3.78546 1.98518,-3.97035 0.25955,-0.38933 0.78333,-0.57408 0.99259,-0.99259 0.79682,-1.59365 1.35956,-3.29464 1.98517,-4.96294 0.36738,-0.97967 0.52468,-2.04195 0.99259,-2.97777 0.5335,-1.067 1.45168,-1.91076 1.98518,-2.97776 0.68456,-1.36914 -1.20208,-0.88785 0.99259,-1.98518 0.29593,-0.14797 0.75863,0.23396 0.99258,0 0.23396,-0.23395 -0.23395,-0.75863 0,-0.99259 0.23396,-0.23395 0.75864,0.23396 0.99259,0 0.23396,-0.23395 0,-0.66172 0,-0.99259 0,-0.33086 0.23396,-0.75863 0,-0.99258 -0.23395,-0.23396 -0.69665,0.14796 -0.99259,0 -0.41851,-0.20926 -0.66172,-0.66173 -0.99258,-0.99259 -1.98518,-0.33087 -4.01389,-0.46305 -5.95553,-0.99259 -1.71897,-0.46881 -3.25999,-1.46119 -4.96295,-1.98518 -2.60771,-0.80237 -5.30847,-1.26729 -7.9407,-1.98517 -4.40676,-1.20185 -1.42474,-0.99259 -4.96294,-0.99259 -0.33087,0 -0.69666,-0.14797 -0.99259,0 -1.74746,0.87373 -0.58677,1.3545 -0.99259,2.97776 -0.17943,0.71774 -0.75863,1.28331 -0.99259,1.98518 -1.4509,4.3527 -0.81229,4.94111 -1.98517,9.92588 -0.86404,3.67214 -2.2719,7.21268 -2.97777,10.91847 -1.0328,5.42219 -0.99259,10.49239 -0.99259,15.88142 0,1.98517 0,3.97035 0,5.95553 0,0.33086 -0.23395,0.75863 0,0.99258 0.23396,0.23396 0.75864,-0.23395 0.99259,0 0.23396,0.23396 -0.23395,0.75864 0,0.99259 0.46791,0.46791 1.39331,-0.29593 1.98518,0 0.41851,0.20926 0.57407,0.78333 0.99259,0.99259 0.29593,0.14797 0.66172,0 0.99258,0 1.98518,0 3.97036,0 5.95553,0 0.33087,0 0.75864,0.23396 0.99259,0 0.23396,-0.23395 -0.23395,-0.75863 0,-0.99259 0.23396,-0.23395 0.75864,0.23396 0.99259,0 0.23396,-0.23395 0,-0.66172 0,-0.99259 0,-1.98517 0,-3.97035 0,-5.95553";
String proteinData = "-6.38073,2.94077 -10.91218,5.81406 -16.5518,7.12567 -6.63869,3.32689 -7.83386,6.30093 -15.15552,7.50847 -6.44029,1.35001 -10.82669,3.12937 -18.29268,2.43903 -6.26997,0.84663 -8.76233,-1.82252 -10.97561,-4.87805 -1.27896,-4.65167 -3.39785,-9.1942 -4.2683,-14.63415 -1.47481,-3.17103 -0.18016,-9.09838 -0.60975,-13.33546 0.0119,-4.49105 -0.016,-9.03482 0,-13.49381 3.39667,-3.11009 6.45528,-7.5276 9.7561,-9.75609 4.35641,-0.58456 3.79688,-4.16949 8.11738,-4.00153 4.9265,-1.59131 9.60841,-1.71049 13.83384,-3.31555 7.71732,0.005 15.48462,-0.007 23.17073,0 3.54197,1.08443 6.40158,6.17024 10.97561,7.31708 1.83396,-1.93411 0.10514,3.98336 2.54682,6.66267 -0.25937,2.60154 -0.0218,11.94636 -0.10779,10.4105 -0.63897,-8.64049 -3.86052,-13.8747 -3.65854,-22.65867 0.006,-10.73904 -0.008,-21.48687 0,-32.21938 3.18726,-5.7168 3.26361,-12.20698 6.75196,-14.52636 1.09614,-4.59861 4.41809,-5.09471 5.44316,-8.64437 5.02734,-0.60867 8.28882,-2.98892 13.41463,-3.65854 5.63975,-1.7606 12.37504,-1.11346 18.76262,-1.21951 5.78293,-1.07931 8.39209,3.36159 12.9447,3.65854 2.22566,2.19003 3.58864,4.19718 6.09756,6.09756 2.20698,3.84444 4.80681,3.41305 6.09648,9.87905 1.12504,4.73424 3.95938,7.39274 3.65962,13.64541 -0.007,6.37881 0.009,12.81181 0,19.15846 -4.1907,5.46438 -2.86886,18.14636 -9.91778,22.49401 0.0192,4.23161 -4.81654,3.8673 1.51754,3.64124 2.40607,7.04177 -7.45832,19.195 -2.96859,5.54117 0.26332,-6.58709 10.05987,-8.24837 11.36883,-12.16422 7.83012,-2.90542 14.39862,-5.39291 23.17073,-8.53659 7.21104,0.0276 13.59698,-1.90832 21.08544,-1.21951 8.21295,-0.98391 6.59834,1.99513 13.0609,4.87805 2.71372,1.26742 4.36551,3.58079 4.87805,7.31707 -0.004,8.12292 0.006,16.2993 0,24.39025 -2.46361,4.02976 -7.29312,10.08958 -10.94769,14.04678 -4.45058,5.46873 -10.25651,10.4017 -9.78401,12.78248 -6.05499,5.0045 -12.71831,7.62897 -21.95122,8.53659 -7.81244,0.3296 -10.80805,5.46365 -18.3498,2.51826 -4.99989,-2.78009 -7.85933,-3.42826 -12.2458,-6.7419 -2.36057,-5.47899 -9.94171,-5.13515 -13.30684,-9.19099 -4.15408,-1.29571 -5.89369,-4.20297 -9.14634,-6.09756 -1.14592,-2.61008 -2.86518,-4.88564 -5.48781,-6.09757 -2.62559,-4.37542 -2.46406,-11.94216 3.65854,-12.19512 4.3398,3.32365 -7.59844,1.44368 -3.65854,8.81114 4.8e-4,25.51168 -6.4e-4,51.07484 0,76.55472 2.57022,3.40702 0.59708,11.32701 1.21951,16.6773 0.007,13.95264 -0.009,27.9116 0,41.85928 0.8177,7.62016 6.25378,17.23586 9.7561,21.51833 0.33073,5.64363 -0.91878,12.45132 1.23421,16.8001 -0.0348,18.52135 -0.004,37.0942 -0.0147,55.58401 -1.38228,2.91723 -2.95386,2.62886 -5.31094,2.43902 3.67835,0 -7.71818,0 -2.79275,0 -5.36965,-1.11876 -9.04403,2.49147 -8.96948,-2.43902 -2.22449,-5.29538 -3.15121,-12.56394 -3.65854,-20.29881 0,-13.55893 0,-27.11787 0,-40.6768 -3.45287,-5.17973 -2.77119,-10.84471 -4.87804,-17.07317 -4.44493,-6.46407 -7.30286,-12.36901 -6.09756,-20.92709 -0.15599,-14.6254 0.31804,-29.36712 -0.24418,-43.91712 -5.15495,-4.27791 -2.75246,-11.92045 -3.41436,-17.84511 0.0153,-6.1768 -0.0226,-12.3556 0,-18.53019 0.61114,-7.5719 3.39567,-10.46293 3.30646,-16.8984 -0.72917,-9.8603 -0.32674,-20.3479 -2.08695,-29.36389 -1.27727,-3.65227 2.50244,-11.90027 0.14116,-8.08482 -5.43412,3.88957 -0.5125,2.88198 -7.45823,4.34711 -4.77447,2.2195 -2.06649,-1.5134 -3.65854,0";
String lipidData = "1.95657,-5.44283 3.93865,-10.6329 6.10158,-15.96254 1.12607,-4.55438 3.7939,-8.74262 5.32699,-11.8946 0.93533,-3.20625 3.95347,-5.35662 5.77742,-7.47385 -0.24676,-4.75581 1.38549,-9.44459 2.07972,-13.24044 0.71324,-1.70099 0.85074,-3.88917 3.54219,-3.57143 3.0024,0.19245 6.21825,-0.75036 8.60067,1.42857 3.98596,0.53232 7.59274,4.67839 12.47547,5.16723 5.05375,2.37903 10.82883,2.53351 15.74579,5.17487 6.66099,2.38333 12.03687,6.86704 18.18699,10.413 3.25632,1.62711 5.97517,3.2477 8.6252,4.19849 2.06423,0.7896 5.43233,1.40191 6.73069,2.93846 3.92884,0.6551 5.34161,2.07602 8.60973,4.2276 0.29489,2.37632 3.66751,2.48631 4.96655,3.61784 3.60827,2.43474 8.98194,4.38858 13.94656,4.9686 3.94048,1.16061 8.05835,2.66687 11.37726,3.73891 3.96205,-0.43042 2.76165,2.95538 2.90719,5.75135 -0.0649,2.48615 0.33954,5.22134 -0.71595,6.53793 -1.20272,4.29183 -4.16587,8.4979 -5.71263,12.55144 -0.73664,3.20126 -2.03923,5.40646 -3.21428,7.14286 -2.31602,1.99217 -4.33008,5.5004 -6.0788,9.17776 0.18471,4.2326 -3.08575,6.94903 -3.22346,11.17253 -0.89727,2.43055 -1.29594,5.97696 -4.9766,4.27602 -4.18664,0.12081 -7.25287,-3.95185 -11.4872,-3.79992 -2.9893,-1.99545 -8.67179,-2.6459 -12.43739,-5.4954 -5.58019,-1.7313 -11.20774,-3.35653 -16.43941,-6.04528 -6.72105,-1.9754 -12.6846,-5.89878 -19.08568,-8.79109 -5.74814,-1.75389 -9.90489,-6.16328 -15.92573,-7.60633 -5.5802,-1.49035 -9.65943,-6.23914 -15.51375,-5.76586 -3.52747,0.51096 -5.85238,-2.8035 -7.76898,-4.21594 2.53951,0.34331 -2.61535,0.62896 -1.70586,-1.47792 -4.57251,0.74002 -3.27133,-1.74874 -5.31792,-3.66613 -1.71869,0.92881 -0.66357,-1.08918 -1.82494,-0.61959";

Point[] rnaPoints = new Point[1047];
Point[] proteinPoints = new Point[195];
Point[] lipidPoints = new Point[96];

PFont helveticaLarge;

void setup()
{
  size(1000,1000);
  
  parsePoints(rnaData, rnaPoints);
  parsePoints(proteinData, proteinPoints);
  parsePoints(lipidData, lipidPoints);
  
  //noFill();
  strokeWeight(3);
  frameRate(10);
  
  textAlign(CENTER, CENTER);
  
  helveticaLarge = createFont("helvetica-normal-58c348882d347.ttf", 64);
  textFont(helveticaLarge);
  textSize(90);
  
  videoExport = new VideoExport(this);
  videoExport.setFrameRate(10);
  videoExport.startMovie();
}

void draw()
{
  background(255);
  
  pushStyle();
    fill(0);
    textSize(25);
    textAlign(RIGHT);
    text("PixelMoversAndMakers.com\n@KevPluck\n"+translationCredit, 980, 30);
  popStyle();
  
  pushMatrix();
    translate(0,-120);
    pushStyle();
      
      if(frameCount >= 30 && frameCount < 60)
        strokeWeight(10);
        
      int alpha=255;
      
      if(frameCount>210)
        alpha -= (frameCount-210) * 32;
      if(alpha<0) alpha = 0;
      
      stroke(170,12,120,alpha);
      
      drawShape(new Point(500,570), rnaPoints, 2, 10);
    popStyle();
    
    pushStyle();
      stroke(134,75,121);
      if(frameCount >= 60 && frameCount < 90)
        strokeWeight(10);
      
      float angle = 0;
      if(frameCount>180)
        angle=(frameCount-180)*0.1;
      for(int i=0; i<12; i++)
      {
        pushMatrix();
        translate(500,500);
        rotate(i * 3.14159/6);
        translate(0,-300);
        translate(0, -angle*100);
        rotate(angle * sin(i+1));
        drawShape(new Point(0,0), proteinPoints, 0.5, 5);
        popMatrix();
      }
    popStyle();
    
    pushStyle();
      alpha=255;
      if(frameCount>160)
        alpha -= (frameCount-160) * 20;
      if(alpha<0) alpha = 0;
      stroke(236,177,51,alpha);
      if(frameCount >= 90 && frameCount < 120)
        strokeWeight(10);
      
      for(int i=0; i<12; i++)
      {
        pushMatrix();
        translate(500,500);
        rotate(i * 3.14159/6);
        translate(30,-220);
        rotate(-.1);
        drawShape(new Point(0,0), lipidPoints, .7, 5);
        popMatrix();
      }
    popStyle();
    
    if(frameCount > 120)
    {
      pushStyle();
      stroke(0,0,255);
      pushMatrix();
      rotate(3.1415/4.0);
      for(int x = 0; x<100; x++)
      {
        float radius = random(60)+20;
        ellipse((frameCount - 120)*20 + random(200), random(1500)-750, radius, radius);
      }
      popMatrix();
      popStyle();
    }
  popMatrix();
  
  pushStyle();
  fill(0);
  if(frameCount > 5 && frameCount < 30)
    text(Line1, 500, 850);
    
  if(frameCount >= 30 && frameCount < 60)
    text(Line2, 500, 850);
    
  if(frameCount >= 60 && frameCount < 90)
    text(Line3, 500, 850);
    
  if(frameCount >= 90 && frameCount < 120)
    text(Line4, 500, 850);
    
  if(frameCount >= 120 && frameCount < 150)
    text(Line5, 500, 850);
    
  if(frameCount >= 150 && frameCount < 180)
    text(Line6, 500, 850);
    
  if(frameCount >= 180 && frameCount < 210)
    text(Line7, 500, 850);
    
  if(frameCount >= 220)
  {
    textSize(Line8FontSize);
    text(Line8, 500, 500);
  }
  popStyle();
  
  
   videoExport.saveFrame();
   if(frameCount>250)
   {
      videoExport.endMovie();
      exit();
   }
}

void parsePoints(String data, Point[] points)
{
  String[] strings = data.split(" ");
  for(int i = 0; i < strings.length; i++)
  {
    String[] coordinate = strings[i].split(",");
    points[i] = new Point(float(coordinate[0]), float(coordinate[1]));
  }
}

void drawShape(Point start, Point[] points, float scale, float wiggle)
{
  float halfWiggle = wiggle/2.0;
  float startx;
  float starty;
  float endx=0;
  float endy=0;
  
  pushMatrix();
  
    translate(start.x,start.y);
    Point relativePos = new Point(0,0);
    
    for(int i=0; i < points.length; i+=3)
    {
      Point thePoint = points[i+2];
      
      if(i == 0)
      {
        startx = random(wiggle)-halfWiggle;
        starty = random(wiggle)-halfWiggle;
      }
      else
      {
        startx = endx;
        starty = endy;
      }
      
      endx = (relativePos.x + thePoint.x) * scale + random(wiggle)-halfWiggle;
      endy = (relativePos.y + thePoint.y) * scale + random(wiggle)-halfWiggle;
      
      line(startx, starty, endx, endy);
      
      relativePos.x += thePoint.x;
      relativePos.y += thePoint.y;
    }
  popMatrix();
}
