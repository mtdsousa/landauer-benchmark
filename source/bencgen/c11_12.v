module CRippleCarryAdder_12_12_12_InOutT(pA11,pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB11,pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, r11,r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cIn, cOut);

input pA11,pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB11,pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, cIn;
output r11,r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cOut;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59, w60, w61, w62, w63, w64, w65, w66, w67, w68, w69, w70, w71, w72, w73, w74, w75, w76, w77, w78, w79, w80, w81, w82, w83, w84, w85, w86;

assign w1 = pA11;
assign w2 = pA10;
assign w3 = pA9;
assign w4 = pA8;
assign w5 = pA7;
assign w6 = pA6;
assign w7 = pA5;
assign w8 = pA4;
assign w9 = pA3;
assign w10 = pA2;
assign w11 = pA1;
assign w12 = pA0;
assign w13 = pB11;
assign w14 = pB10;
assign w15 = pB9;
assign w16 = pB8;
assign w17 = pB7;
assign w18 = pB6;
assign w19 = pB5;
assign w20 = pB4;
assign w21 = pB3;
assign w22 = pB2;
assign w23 = pB1;
assign w24 = pB0;
assign r11 = w25;
assign r10 = w26;
assign r9 = w27;
assign r8 = w28;
assign r7 = w29;
assign r6 = w30;
assign r5 = w31;
assign r4 = w32;
assign r3 = w33;
assign r2 = w34;
assign r1 = w35;
assign r0 = w36;
assign w38 = cIn;
assign cOut = w37;

assign w41 = w1 ^ w13;
assign w25 = w41 ^ w38;
assign w42 = w38 & w41;
assign w43 = w13 & w1;
assign w40 = w42 | w43;
assign w45 = w2 ^ w14;
assign w26 = w45 ^ w40;
assign w46 = w40 & w45;
assign w47 = w14 & w2;
assign w44 = w46 | w47;
assign w49 = w3 ^ w15;
assign w27 = w49 ^ w44;
assign w50 = w44 & w49;
assign w51 = w15 & w3;
assign w48 = w50 | w51;
assign w53 = w4 ^ w16;
assign w28 = w53 ^ w48;
assign w54 = w48 & w53;
assign w55 = w16 & w4;
assign w52 = w54 | w55;
assign w57 = w5 ^ w17;
assign w29 = w57 ^ w52;
assign w58 = w52 & w57;
assign w59 = w17 & w5;
assign w56 = w58 | w59;
assign w61 = w6 ^ w18;
assign w30 = w61 ^ w56;
assign w62 = w56 & w61;
assign w63 = w18 & w6;
assign w60 = w62 | w63;
assign w65 = w7 ^ w19;
assign w31 = w65 ^ w60;
assign w66 = w60 & w65;
assign w67 = w19 & w7;
assign w64 = w66 | w67;
assign w69 = w8 ^ w20;
assign w32 = w69 ^ w64;
assign w70 = w64 & w69;
assign w71 = w20 & w8;
assign w68 = w70 | w71;
assign w73 = w9 ^ w21;
assign w33 = w73 ^ w68;
assign w74 = w68 & w73;
assign w75 = w21 & w9;
assign w72 = w74 | w75;
assign w77 = w10 ^ w22;
assign w34 = w77 ^ w72;
assign w78 = w72 & w77;
assign w79 = w22 & w10;
assign w76 = w78 | w79;
assign w81 = w11 ^ w23;
assign w35 = w81 ^ w76;
assign w82 = w76 & w81;
assign w83 = w23 & w11;
assign w80 = w82 | w83;
assign w84 = w12 ^ w24;
assign w36 = w84 ^ w80;
assign w85 = w80 & w84;
assign w86 = w24 & w12;
assign w37 = w85 | w86;

endmodule

