module CRippleCarryAdder_11_11_11_InOutT(pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cIn, cOut);

input pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, cIn;
output r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cOut;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59, w60, w61, w62, w63, w64, w65, w66, w67, w68, w69, w70, w71, w72, w73, w74, w75, w76, w77, w78, w79;

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
assign w35 = cIn;
assign cOut = w34;

assign w38 = w1 ^ w12;
assign w23 = w38 ^ w35;
assign w39 = w35 & w38;
assign w40 = w12 & w1;
assign w37 = w39 | w40;
assign w42 = w2 ^ w13;
assign w24 = w42 ^ w37;
assign w43 = w37 & w42;
assign w44 = w13 & w2;
assign w41 = w43 | w44;
assign w46 = w3 ^ w14;
assign w25 = w46 ^ w41;
assign w47 = w41 & w46;
assign w48 = w14 & w3;
assign w45 = w47 | w48;
assign w50 = w4 ^ w15;
assign w26 = w50 ^ w45;
assign w51 = w45 & w50;
assign w52 = w15 & w4;
assign w49 = w51 | w52;
assign w54 = w5 ^ w16;
assign w27 = w54 ^ w49;
assign w55 = w49 & w54;
assign w56 = w16 & w5;
assign w53 = w55 | w56;
assign w58 = w6 ^ w17;
assign w28 = w58 ^ w53;
assign w59 = w53 & w58;
assign w60 = w17 & w6;
assign w57 = w59 | w60;
assign w62 = w7 ^ w18;
assign w29 = w62 ^ w57;
assign w63 = w57 & w62;
assign w64 = w18 & w7;
assign w61 = w63 | w64;
assign w66 = w8 ^ w19;
assign w30 = w66 ^ w61;
assign w67 = w61 & w66;
assign w68 = w19 & w8;
assign w65 = w67 | w68;
assign w70 = w9 ^ w20;
assign w31 = w70 ^ w65;
assign w71 = w65 & w70;
assign w72 = w20 & w9;
assign w69 = w71 | w72;
assign w74 = w10 ^ w21;
assign w32 = w74 ^ w69;
assign w75 = w69 & w74;
assign w76 = w21 & w10;
assign w73 = w75 | w76;
assign w77 = w11 ^ w22;
assign w33 = w77 ^ w73;
assign w78 = w73 & w77;
assign w79 = w22 & w11;
assign w34 = w78 | w79;

endmodule

