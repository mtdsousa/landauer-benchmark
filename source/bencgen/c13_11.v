module CCarryLookahead_11_11_11_InOutT(pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cIn, cOut);

input pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, cIn;
output r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cOut;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59, w60, w61, w62, w63, w64, w65, w66, w67, w68, w69, w70, w71, w72, w73, w74, w75, w76, w77, w78, w79, w80, w81, w82, w83, w84, w85, w86, w87, w88, w89, w90, w91, w92, w93, w94, w95, w96, w97, w98, w99, w100, w101, w102, w103, w104, w105, w106, w107, w108, w109, w110, w111, w112, w113, w114, w115, w116, w117, w118, w119, w120, w121, w122, w123, w124, w125, w126, w127, w128, w129, w130, w131, w132, w133, w134, w135, r4294967295;

assign w1 = pA10;
assign w2 = pA9;
assign w3 = pA8;
assign w4 = pA7;
assign w5 = pA6;
assign w6 = pA5;
assign w7 = pA4;
assign w8 = pA3;
assign w9 = pA2;
assign w10 = pA1;
assign w11 = pA0;
assign w12 = pB10;
assign w13 = pB9;
assign w14 = pB8;
assign w15 = pB7;
assign w16 = pB6;
assign w17 = pB5;
assign w18 = pB4;
assign w19 = pB3;
assign w20 = pB2;
assign w21 = pB1;
assign w22 = pB0;
assign r10 = w23;
assign r9 = w24;
assign r8 = w25;
assign r7 = w26;
assign r6 = w27;
assign r5 = w28;
assign r4 = w29;
assign r3 = w30;
assign r2 = w31;
assign r1 = w32;
assign r0 = w33;
assign r4294967295 = w34;
assign w35 = cIn;
assign cOut = w34;

assign w37 = w1 ^ w12;
assign w48 = w1 & w12;
assign w38 = w2 ^ w13;
assign w49 = w2 & w13;
assign w39 = w3 ^ w14;
assign w50 = w3 & w14;
assign w40 = w4 ^ w15;
assign w51 = w4 & w15;
assign w41 = w5 ^ w16;
assign w52 = w5 & w16;
assign w42 = w6 ^ w17;
assign w53 = w6 & w17;
assign w43 = w7 ^ w18;
assign w54 = w7 & w18;
assign w44 = w8 ^ w19;
assign w55 = w8 & w19;
assign w45 = w9 ^ w20;
assign w56 = w9 & w20;
assign w46 = w10 ^ w21;
assign w57 = w10 & w21;
assign w47 = w11 ^ w22;
assign w58 = w11 & w22;
assign w70 = w35 & w37;
assign w71 = w35 & w37 & w38;
assign w72 = w48 & w38;
assign w73 = w35 & w37 & w38 & w39;
assign w74 = w48 & w38 & w39;
assign w75 = w49 & w39;
assign w76 = w35 & w37 & w38 & w39 & w40;
assign w77 = w48 & w38 & w39 & w40;
assign w78 = w49 & w39 & w40;
assign w79 = w50 & w40;
assign w80 = w35 & w37 & w38 & w39 & w40 & w41;
assign w81 = w48 & w38 & w39 & w40 & w41;
assign w82 = w49 & w39 & w40 & w41;
assign w83 = w50 & w40 & w41;
assign w84 = w51 & w41;
assign w85 = w35 & w37 & w38 & w39 & w40 & w41 & w42;
assign w86 = w48 & w38 & w39 & w40 & w41 & w42;
assign w87 = w49 & w39 & w40 & w41 & w42;
assign w88 = w50 & w40 & w41 & w42;
assign w89 = w51 & w41 & w42;
assign w90 = w52 & w42;
assign w91 = w35 & w37 & w38 & w39 & w40 & w41 & w42 & w43;
assign w92 = w48 & w38 & w39 & w40 & w41 & w42 & w43;
assign w93 = w49 & w39 & w40 & w41 & w42 & w43;
assign w94 = w50 & w40 & w41 & w42 & w43;
assign w95 = w51 & w41 & w42 & w43;
assign w96 = w52 & w42 & w43;
assign w97 = w53 & w43;
assign w98 = w35 & w37 & w38 & w39 & w40 & w41 & w42 & w43 & w44;
assign w99 = w48 & w38 & w39 & w40 & w41 & w42 & w43 & w44;
assign w100 = w49 & w39 & w40 & w41 & w42 & w43 & w44;
assign w101 = w50 & w40 & w41 & w42 & w43 & w44;
assign w102 = w51 & w41 & w42 & w43 & w44;
assign w103 = w52 & w42 & w43 & w44;
assign w104 = w53 & w43 & w44;
assign w105 = w54 & w44;
assign w106 = w35 & w37 & w38 & w39 & w40 & w41 & w42 & w43 & w44 & w45;
assign w107 = w48 & w38 & w39 & w40 & w41 & w42 & w43 & w44 & w45;
assign w108 = w49 & w39 & w40 & w41 & w42 & w43 & w44 & w45;
assign w109 = w50 & w40 & w41 & w42 & w43 & w44 & w45;
assign w110 = w51 & w41 & w42 & w43 & w44 & w45;
assign w111 = w52 & w42 & w43 & w44 & w45;
assign w112 = w53 & w43 & w44 & w45;
assign w113 = w54 & w44 & w45;
assign w114 = w55 & w45;
assign w115 = w35 & w37 & w38 & w39 & w40 & w41 & w42 & w43 & w44 & w45 & w46;
assign w116 = w48 & w38 & w39 & w40 & w41 & w42 & w43 & w44 & w45 & w46;
assign w117 = w49 & w39 & w40 & w41 & w42 & w43 & w44 & w45 & w46;
assign w118 = w50 & w40 & w41 & w42 & w43 & w44 & w45 & w46;
assign w119 = w51 & w41 & w42 & w43 & w44 & w45 & w46;
assign w120 = w52 & w42 & w43 & w44 & w45 & w46;
assign w121 = w53 & w43 & w44 & w45 & w46;
assign w122 = w54 & w44 & w45 & w46;
assign w123 = w55 & w45 & w46;
assign w124 = w56 & w46;
assign w125 = w35 & w37 & w38 & w39 & w40 & w41 & w42 & w43 & w44 & w45 & w46 & w47;
assign w126 = w48 & w38 & w39 & w40 & w41 & w42 & w43 & w44 & w45 & w46 & w47;
assign w127 = w49 & w39 & w40 & w41 & w42 & w43 & w44 & w45 & w46 & w47;
assign w128 = w50 & w40 & w41 & w42 & w43 & w44 & w45 & w46 & w47;
assign w129 = w51 & w41 & w42 & w43 & w44 & w45 & w46 & w47;
assign w130 = w52 & w42 & w43 & w44 & w45 & w46 & w47;
assign w131 = w53 & w43 & w44 & w45 & w46 & w47;
assign w132 = w54 & w44 & w45 & w46 & w47;
assign w133 = w55 & w45 & w46 & w47;
assign w134 = w56 & w46 & w47;
assign w135 = w57 & w47;
assign w59 = w48 | w70;
assign w60 = w49 | w71 | w72;
assign w61 = w50 | w73 | w74 | w75;
assign w62 = w51 | w76 | w77 | w78 | w79;
assign w63 = w52 | w80 | w81 | w82 | w83 | w84;
assign w64 = w53 | w85 | w86 | w87 | w88 | w89 | w90;
assign w65 = w54 | w91 | w92 | w93 | w94 | w95 | w96 | w97;
assign w66 = w55 | w98 | w99 | w100 | w101 | w102 | w103 | w104 | w105;
assign w67 = w56 | w106 | w107 | w108 | w109 | w110 | w111 | w112 | w113 | w114;
assign w68 = w57 | w115 | w116 | w117 | w118 | w119 | w120 | w121 | w122 | w123 | w124;
assign w69 = w58 | w125 | w126 | w127 | w128 | w129 | w130 | w131 | w132 | w133 | w134 | w135;
assign w23 = w37 ^ w35;
assign w24 = w38 ^ w59;
assign w25 = w39 ^ w60;
assign w26 = w40 ^ w61;
assign w27 = w41 ^ w62;
assign w28 = w42 ^ w63;
assign w29 = w43 ^ w64;
assign w30 = w44 ^ w65;
assign w31 = w45 ^ w66;
assign w32 = w46 ^ w67;
assign w33 = w47 ^ w68;
assign w34 = w69;

endmodule
