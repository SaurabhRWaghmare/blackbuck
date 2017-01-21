h=200;
a=10.6066;
ri=21.21320344;
ro=21.92031;
grid=1.0;
Point(1) = {0, 0, 0, grid};
Point(2) = {a, a, 0, grid};
Point(3) = {ri, ri, 0, grid};
Point(4) = {-a, a, 0, grid};
Point(5) = {-ri, ri, 0, grid};
Point(6) = {-a, -a, 0, grid};
Point(7) = {-ri, -ri, 0, grid};
Point(8) = {a, -a, 0, grid};
Point(9) = {ri, -ri, 0, grid};
Point(10) = {0, 0, h, grid};
Point(11) = {a, a, h, grid};
Point(12) = {ri, ri, h, grid};
Point(13) = {-a, a, h, grid};
Point(14) = {-ri, ri, h, grid};
Point(15) = {-a, -a, h, grid};
Point(16) = {-ri, -ri, h, grid};
Point(17) = {a, -a, h, grid};
Point(18) = {ri, -ri, h, grid};

Point(19) = {ro, ro, 0, grid};
Point(20) = {-ro, ro, 0, grid};
Point(21) = {-ro, -ro, 0, grid};
Point(22) = {ro, -ro, 0, grid};
Point(23) = {ro, ro, h, grid};
Point(24) = {-ro, ro, h, grid};
Point(25) = {-ro, -ro, h, grid};
Point(26) = {ro, -ro, h, grid};

Line(1) = {13, 15};
Line(2) = {15, 17};
Line(3) = {17, 11};
Line(4) = {13, 11};
Line(5) = {11, 12};
Line(6) = {17, 18};
Line(7) = {14, 13};
Line(8) = {16, 15};
Line(9) = {15, 6};
Line(10) = {6, 8};
Line(11) = {8, 2};
Line(12) = {2, 4};
Line(13) = {4, 6};
Line(14) = {17, 8};
Line(15) = {11, 2};
Line(16) = {2, 3};
Line(17) = {8, 9};
Line(18) = {7, 6};
Line(19) = {4, 5};
Circle(20) = {14, 10, 16};
Circle(21) = {16, 10, 18};
Circle(22) = {18, 10, 12};
Circle(23) = {12, 10, 14};
Circle(24) = {9, 1, 3};
Circle(25) = {3, 1, 5};
Circle(26) = {5, 1, 7};
Circle(27) = {7, 1, 9};
Line(28) = {16, 7};
Line(29) = {5, 14};
Line(30) = {12, 3};
Line(31) = {18, 9};
Line(32) = {13, 4};



Line Loop(33) = {23, 7, 4, 5};
Plane Surface(34) = {33};
Line Loop(35) = {5, -22, -6, 3};
Plane Surface(36) = {35};
Line Loop(37) = {6, -21, 8, 2};
Plane Surface(38) = {37};
Line Loop(39) = {7, 1, -8, -20};
Plane Surface(40) = {39};
Line Loop(41) = {4, -3, -2, -1};
Plane Surface(42) = {41};

Line Loop(43) = {26, 18, -13, 19};
Plane Surface(44) = {43};



Line Loop(45) = {25, -19, -12, 16};
Plane Surface(46) = {45};
Line Loop(47) = {24, -16, -11, 17};
Plane Surface(48) = {47};
Line Loop(49) = {17, -27, 18, 10};
Plane Surface(50) = {49};
Line Loop(51) = {12, 13, 10, 11};
Plane Surface(52) = {51};

Line Loop(53) = {9, 10, -14, -2};
Plane Surface(54) = {53};

Line Loop(55) = {3, 15, -11, -14};
Plane Surface(56) = {55};

Line Loop(57) = {4, 15, 12, -32};
Plane Surface(58) = {57};

Line Loop(59) = {1, 9, -13, -32};
Plane Surface(60) = {59};

Line Loop(61) = {30, 25, 29, -23};
Ruled Surface(62) = {61};

Line Loop(63) = {20, 28, -26, 29};
Ruled Surface(64) = {63};

Line Loop(65) = {21, 31, -27, -28};
Ruled Surface(66) = {65};

Line Loop(67) = {22, 30, -24, -31};
Ruled Surface(68) = {67};

Line Loop(69) = {8, 9, -18, -28};
Plane Surface(70) = {69};

Line Loop(71) = {6, 31, -17, -14};
Plane Surface(72) = {71};

Line Loop(73) = {5, 30, -16, -15};
Plane Surface(74) = {73};

Line Loop(75) = {7, 32, 19, 29};
Plane Surface(76) = {75};

Surface Loop(77) = {72, 68, 36, 48, 56, 74};
Volume(78) = {77};
Surface Loop(79) = {58, 74, 76, 62, 46, 34};
Volume(80) = {79};
Surface Loop(81) = {64, 40, 44, 70, 76, 60};
Volume(82) = {81};
Surface Loop(83) = {54, 70, 66, 38, 50, 72};
Volume(84) = {83};
Surface Loop(85) = {54, 42, 52, 56, 58, 60};
Volume(86) = {85};

Circle(87) = {24, 10, 23};
Circle(88) = {23, 10, 26};
Circle(89) = {26, 10, 25};
Circle(90) = {25, 10, 24};

Circle(91) = {22, 1, 19};
Circle(92) = {19, 1, 20};
Circle(93) = {20, 1, 21};
Circle(94) = {21, 1, 22};


Line(95) = {23, 12};
Line(96) = {24, 14};
Line(97) = {25, 16};
Line(98) = {26, 18};
Line(99) = {22, 9};
Line(100) = {19, 3};
Line(101) = {21, 7};
Line(102) = {20, 5};
Line(103) = {21, 25};
Line(104) = {22, 26};
Line(105) = {20, 24};
Line(106) = {19, 23};


Line Loop(107) = {22, -95, 88, 98};
Plane Surface(108) = {107};
Line Loop(109) = {89, 97, 21, -98};
Plane Surface(110) = {109};
Line Loop(111) = {20, -97, 90, 96};
Plane Surface(112) = {111};
Line Loop(113) = {23, -96, 87, 95};
Plane Surface(114) = {113};

Line Loop(115) = {100, -24, -99, 91};
Plane Surface(116) = {115};
Line Loop(117) = {27, -99, -94, 101};
Plane Surface(118) = {117};
Line Loop(119) = {26, -101, -93, 102};
Plane Surface(120) = {119};
Line Loop(121) = {25, -102, -92, 100};
Plane Surface(122) = {121};

Line Loop(123) = {98, 31, -99, 104};
Plane Surface(124) = {123};
Line Loop(125) = {97, 28, -101, 103};
Plane Surface(126) = {125};
Line Loop(127) = {29, -96, -105, 102};
Plane Surface(128) = {127};
Line Loop(129) = {95, 30, -100, 106};
Plane Surface(130) = {129};

Line Loop(131) = {105, -90, -103, -93};
Ruled Surface(132) = {131};
Line Loop(133) = {94, 104, 89, -103};
Ruled Surface(134) = {133};
Line Loop(135) = {88, -104, 91, 106};
Ruled Surface(136) = {135};
Line Loop(137) = {87, -106, 92, 105};
Ruled Surface(138) = {137};

Surface Loop(139) = {66, 134, 118, 110, 126, 124};
Volume(140) = {139};
Surface Loop(141) = {136, 108, 116, 68, 130, 124};
Volume(142) = {141};
Surface Loop(143) = {138, 114, 122, 62, 128, 130};
Volume(144) = {143};
Surface Loop(145) = {132, 112, 120, 64, 126, 128};
Volume(146) = {145};


Physical Surface(148) = {134, 136, 138, 132};
Physical Surface(149) = {122, 120, 118, 116, 46, 48, 50, 44, 52};


Physical Volume("gb") = {140, 142, 146, 144};
Physical Volume("bulk") = {84, 82, 80, 78, 86};


Transfinite Line {1, 2, 3, 4} = 32;
Transfinite Line {20, 21, 22, 23} = 32;
Transfinite Line {10, 11, 12, 13} = 32;
Transfinite Line {24,25,27, 26} = 32;
Transfinite Line {87,88,89,90} = 32;
Transfinite Line {91,92,93,94} = 32;

Transfinite Line {95,96,97,98,99,100,101,102} = 4;

Transfinite Line {5,6,7,8,16,17,18,19} = 32;


Transfinite Line {9,14,15,32,28,29,30,31} = 40;

Transfinite Line {103,104,105,106} = 40;
Transfinite Surface "*";
Recombine Surface "*";
Transfinite Volume "*";
Coherence;

Point(27) = {0, 0, h+1, grid};
Point(28) = {a, a, h+1, grid};
Point(29) = {ri, ri, h+1, grid};
Point(30) = {-a, a, h+1, grid};
Point(31) = {-ri, ri, h+1, grid};
Point(32) = {-a, -a, h+1, grid};
Point(33) = {-ri, -ri, h+1, grid};
Point(34) = {a, -a, h+1, grid};
Point(35) = {ri, -ri, h+1, grid};
Point(36) = {ro, ro, h+1, grid};
Point(37) = {-ro, ro, h+1, grid};
Point(38) = {-ro, -ro, h+1, grid};
Point(39) = {ro, -ro, h+1, grid};
Line(152) = {30, 28};
Line(153) = {28, 34};
Line(154) = {34, 32};
Line(155) = {32, 30};

Circle(156) = {29, 27, 35};
Circle(157) = {35, 27, 33};
Circle(158) = {33, 27, 31};
Circle(159) = {31, 27, 29};
Circle(160) = {37, 27, 36};
Circle(161) = {36, 27, 39};
Circle(162) = {39, 27, 38};
Circle(163) = {38, 27, 37};
Line(164) = {28, 29};
Line(165) = {29, 36};
Line(166) = {34, 35};
Line(167) = {35, 39};
Line(168) = {32, 33};
Line(169) = {33, 38};
Line(170) = {30, 31};
Line(171) = {31, 37};
Line(172) = {37, 24};
Line(173) = {31, 14};
Line(174) = {29, 12};
Line(175) = {23, 36};
Line(176) = {39, 26};
Line(177) = {18, 35};
Line(178) = {38, 25};
Line(179) = {33, 16};
Line(180) = {32, 15};
Line(181) = {30, 13};
Line(182) = {28, 11};
Line(183) = {34, 17};

Transfinite Line {152, 153, 154, 155} = 32;
Transfinite Line {156, 157, 158, 159} = 32;
Transfinite Line {160, 161, 162, 163} = 32;

Transfinite Line {164, 166, 168, 170} = 32;

Transfinite Line {165, 167, 169, 171} = 4;

Transfinite Line {172,173,174,175,176,177,178,179,180,181,182,183} = 4;

Line Loop(184) = {163, -171, -158, 169};
Ruled Surface(185) = {184};
Line Loop(186) = {160, -165, -159, 171};
Ruled Surface(187) = {186};
Line Loop(188) = {161, -167, -156, 165};
Ruled Surface(189) = {188};
Line Loop(190) = {157, 169, -162, -167};
Ruled Surface(191) = {190};
Transfinite Surface "*";
Recombine Surface "*";
Transfinite Volume "*";
Coherence;
Line Loop(192) = {152, 153, 154, 155};
Plane Surface(193) = {192};
Line Loop(194) = {158, -170, -155, 168};
Ruled Surface(195) = {194};
Line Loop(196) = {170, 159, -164, -152};
Ruled Surface(197) = {196};
Line Loop(198) = {164, 156, -166, -153};
Ruled Surface(199) = {198};
Line Loop(200) = {154, 168, -157, -166};
Ruled Surface(201) = {200};
Line Loop(202) = {155, 181, 1, -180};
Ruled Surface(203) = {202};
Line Loop(204) = {152, 182, -4, -181};
Ruled Surface(205) = {204};
Line Loop(206) = {182, -3, -183, -153};
Ruled Surface(207) = {206};
Line Loop(208) = {183, -2, -180, -154};
Ruled Surface(209) = {208};
Line Loop(210) = {168, 179, 8, -180};
Ruled Surface(211) = {210};
Line Loop(212) = {169, 178, 97, -179};
Ruled Surface(213) = {212};
Line Loop(214) = {171, 172, 96, -173};
Ruled Surface(215) = {214};
Line Loop(216) = {170, 173, 7, -181};
Ruled Surface(217) = {216};
Line Loop(218) = {182, 5, -174, -164};
Ruled Surface(219) = {218};
Line Loop(220) = {165, -175, 95, -174};
Ruled Surface(221) = {220};
Line Loop(222) = {166, -177, -6, -183};
Ruled Surface(223) = {222};
Line Loop(224) = {167, 176, 98, 177};
Ruled Surface(225) = {224};
Line Loop(226) = {158, 173, 20, -179};
Ruled Surface(227) = {226};
Line Loop(228) = {159, 174, 23, -173};
Ruled Surface(229) = {228};
Line Loop(230) = {174, -22, 177, -156};
Ruled Surface(231) = {230};
Line Loop(232) = {157, 179, 21, 177};
Ruled Surface(233) = {232};
Line Loop(234) = {162, 178, -89, -176};
Ruled Surface(235) = {234};
Line Loop(236) = {176, -88, 175, 161};
Ruled Surface(237) = {236};
Line Loop(238) = {160, -175, -87, -172};
Ruled Surface(239) = {238};
Line Loop(240) = {172, -90, -178, 163};
Ruled Surface(241) = {240};
Surface Loop(242) = {193, 42, 203, 205, 207, 209};
Volume(243) = {242};
Surface Loop(244) = {195, 40, 227, 203, 217, 211};
Volume(245) = {244};
Surface Loop(246) = {211, 209, 223, 201, 38, 233};
Volume(247) = {246};
Surface Loop(248) = {199, 36, 207, 223, 219, 231};
Volume(249) = {248};
Surface Loop(250) = {34, 197, 205, 219, 217, 229};
Volume(251) = {250};
Surface Loop(252) = {225, 235, 191, 213, 233, 110};
Volume(253) = {252};
Surface Loop(254) = {237, 189, 225, 221, 231, 108};
Volume(255) = {254};
Surface Loop(256) = {239, 187, 229, 215, 221, 114};
Volume(257) = {256};
Surface Loop(258) = {112, 185, 241, 227, 215, 213};
Volume(259) = {258};

Physical Surface(260) = {239, 241, 235, 237};
Physical Surface("surface_top") = {199, 193, 201, 195, 197};
Physical Surface("gb_top") = {185, 187, 191, 189};



Physical Volume("surface") = {243, 251, 249, 247, 245};
Physical Volume("gb_surface") = {257, 255, 253, 259};


Transfinite Surface "*";
Recombine Surface "*";
Transfinite Volume "*";
Coherence;