module CCarryLookahead_15_15_15_InOutT(pA14,pA13,pA12,pA11,pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB14,pB13,pB12,pB11,pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, r14,r13,r12,r11,r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cIn, cOut);

input pA14,pA13,pA12,pA11,pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB14,pB13,pB12,pB11,pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, cIn;
output r14,r13,r12,r11,r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cOut;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59, w60, w61, w62, w63, w64, w65, w66, w67, w68, w69, w70, w71, w72, w73, w74, w75, w76, w77, w78, w79, w80, w81, w82, w83, w84, w85, w86, w87, w88, w89, w90, w91, w92, w93, w94, w95, w96, w97, w98, w99, w100, w101, w102, w103, w104, w105, w106, w107, w108, w109, w110, w111, w112, w113, w114, w115, w116, w117, w118, w119, w120, w121, w122, w123, w124, w125, w126, w127, w128, w129, w130, w131, w132, w133, w134, w135, w136, w137, w138, w139, w140, w141, w142, w143, w144, w145, w146, w147, w148, w149, w150, w151, w152, w153, w154, w155, w156, w157, w158, w159, w160, w161, w162, w163, w164, w165, w166, w167, w168, w169, w170, w171, w172, w173, w174, w175, w176, w177, w178, w179, w180, w181, w182, w183, w184, w185, w186, w187, w188, w189, w190, w191, w192, w193, w194, w195, w196, w197, w198, w199, w200, w201, w202, w203, w204, w205, w206, w207, w208, w209, w210, w211, w212, w213, r4294967295;

assign w1 = pA14;
assign w2 = pA13;
assign w3 = pA12;
assign w4 = pA11;
assign w5 = pA10;
assign w6 = pA9;
assign w7 = pA8;
assign w8 = pA7;
assign w9 = pA6;
assign w10 = pA5;
assign w11 = pA4;
assign w12 = pA3;
assign w13 = pA2;
assign w14 = pA1;
assign w15 = pA0;
assign w16 = pB14;
assign w17 = pB13;
assign w18 = pB12;
assign w19 = pB11;
assign w20 = pB10;
assign w21 = pB9;
assign w22 = pB8;
assign w23 = pB7;
assign w24 = pB6;
assign w25 = pB5;
assign w26 = pB4;
assign w27 = pB3;
assign w28 = pB2;
assign w29 = pB1;
assign w30 = pB0;
assign r14 = w31;
assign r13 = w32;
assign r12 = w33;
assign r11 = w34;
assign r10 = w35;
assign r9 = w36;
assign r8 = w37;
assign r7 = w38;
assign r6 = w39;
assign r5 = w40;
assign r4 = w41;
assign r3 = w42;
assign r2 = w43;
assign r1 = w44;
assign r0 = w45;
assign r4294967295 = w46;
assign w47 = cIn;
assign cOut = w46;

assign w49 = w1 ^ w16;
assign w64 = w1 & w16;
assign w50 = w2 ^ w17;
assign w65 = w2 & w17;
assign w51 = w3 ^ w18;
assign w66 = w3 & w18;
assign w52 = w4 ^ w19;
assign w67 = w4 & w19;
assign w53 = w5 ^ w20;
assign w68 = w5 & w20;
assign w54 = w6 ^ w21;
assign w69 = w6 & w21;
assign w55 = w7 ^ w22;
assign w70 = w7 & w22;
assign w56 = w8 ^ w23;
assign w71 = w8 & w23;
assign w57 = w9 ^ w24;
assign w72 = w9 & w24;
assign w58 = w10 ^ w25;
assign w73 = w10 & w25;
assign w59 = w11 ^ w26;
assign w74 = w11 & w26;
assign w60 = w12 ^ w27;
assign w75 = w12 & w27;
assign w61 = w13 ^ w28;
assign w76 = w13 & w28;
assign w62 = w14 ^ w29;
assign w77 = w14 & w29;
assign w63 = w15 ^ w30;
assign w78 = w15 & w30;
assign w94 = w47 & w49;
assign w95 = w47 & w49 & w50;
assign w96 = w64 & w50;
assign w97 = w47 & w49 & w50 & w51;
assign w98 = w64 & w50 & w51;
assign w99 = w65 & w51;
assign w100 = w47 & w49 & w50 & w51 & w52;
assign w101 = w64 & w50 & w51 & w52;
assign w102 = w65 & w51 & w52;
assign w103 = w66 & w52;
assign w104 = w47 & w49 & w50 & w51 & w52 & w53;
assign w105 = w64 & w50 & w51 & w52 & w53;
assign w106 = w65 & w51 & w52 & w53;
assign w107 = w66 & w52 & w53;
assign w108 = w67 & w53;
assign w109 = w47 & w49 & w50 & w51 & w52 & w53 & w54;
assign w110 = w64 & w50 & w51 & w52 & w53 & w54;
assign w111 = w65 & w51 & w52 & w53 & w54;
assign w112 = w66 & w52 & w53 & w54;
assign w113 = w67 & w53 & w54;
assign w114 = w68 & w54;
assign w115 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55;
assign w116 = w64 & w50 & w51 & w52 & w53 & w54 & w55;
assign w117 = w65 & w51 & w52 & w53 & w54 & w55;
assign w118 = w66 & w52 & w53 & w54 & w55;
assign w119 = w67 & w53 & w54 & w55;
assign w120 = w68 & w54 & w55;
assign w121 = w69 & w55;
assign w122 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55 & w56;
assign w123 = w64 & w50 & w51 & w52 & w53 & w54 & w55 & w56;
assign w124 = w65 & w51 & w52 & w53 & w54 & w55 & w56;
assign w125 = w66 & w52 & w53 & w54 & w55 & w56;
assign w126 = w67 & w53 & w54 & w55 & w56;
assign w127 = w68 & w54 & w55 & w56;
assign w128 = w69 & w55 & w56;
assign w129 = w70 & w56;
assign w130 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57;
assign w131 = w64 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57;
assign w132 = w65 & w51 & w52 & w53 & w54 & w55 & w56 & w57;
assign w133 = w66 & w52 & w53 & w54 & w55 & w56 & w57;
assign w134 = w67 & w53 & w54 & w55 & w56 & w57;
assign w135 = w68 & w54 & w55 & w56 & w57;
assign w136 = w69 & w55 & w56 & w57;
assign w137 = w70 & w56 & w57;
assign w138 = w71 & w57;
assign w139 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58;
assign w140 = w64 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58;
assign w141 = w65 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58;
assign w142 = w66 & w52 & w53 & w54 & w55 & w56 & w57 & w58;
assign w143 = w67 & w53 & w54 & w55 & w56 & w57 & w58;
assign w144 = w68 & w54 & w55 & w56 & w57 & w58;
assign w145 = w69 & w55 & w56 & w57 & w58;
assign w146 = w70 & w56 & w57 & w58;
assign w147 = w71 & w57 & w58;
assign w148 = w72 & w58;
assign w149 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59;
assign w150 = w64 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59;
assign w151 = w65 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59;
assign w152 = w66 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59;
assign w153 = w67 & w53 & w54 & w55 & w56 & w57 & w58 & w59;
assign w154 = w68 & w54 & w55 & w56 & w57 & w58 & w59;
assign w155 = w69 & w55 & w56 & w57 & w58 & w59;
assign w156 = w70 & w56 & w57 & w58 & w59;
assign w157 = w71 & w57 & w58 & w59;
assign w158 = w72 & w58 & w59;
assign w159 = w73 & w59;
assign w160 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w161 = w64 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w162 = w65 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w163 = w66 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w164 = w67 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w165 = w68 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w166 = w69 & w55 & w56 & w57 & w58 & w59 & w60;
assign w167 = w70 & w56 & w57 & w58 & w59 & w60;
assign w168 = w71 & w57 & w58 & w59 & w60;
assign w169 = w72 & w58 & w59 & w60;
assign w170 = w73 & w59 & w60;
assign w171 = w74 & w60;
assign w172 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w173 = w64 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w174 = w65 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w175 = w66 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w176 = w67 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w177 = w68 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w178 = w69 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w179 = w70 & w56 & w57 & w58 & w59 & w60 & w61;
assign w180 = w71 & w57 & w58 & w59 & w60 & w61;
assign w181 = w72 & w58 & w59 & w60 & w61;
assign w182 = w73 & w59 & w60 & w61;
assign w183 = w74 & w60 & w61;
assign w184 = w75 & w61;
assign w185 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w186 = w64 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w187 = w65 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w188 = w66 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w189 = w67 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w190 = w68 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w191 = w69 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w192 = w70 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w193 = w71 & w57 & w58 & w59 & w60 & w61 & w62;
assign w194 = w72 & w58 & w59 & w60 & w61 & w62;
assign w195 = w73 & w59 & w60 & w61 & w62;
assign w196 = w74 & w60 & w61 & w62;
assign w197 = w75 & w61 & w62;
assign w198 = w76 & w62;
assign w199 = w47 & w49 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w200 = w64 & w50 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w201 = w65 & w51 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w202 = w66 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w203 = w67 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w204 = w68 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w205 = w69 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w206 = w70 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w207 = w71 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w208 = w72 & w58 & w59 & w60 & w61 & w62 & w63;
assign w209 = w73 & w59 & w60 & w61 & w62 & w63;
assign w210 = w74 & w60 & w61 & w62 & w63;
assign w211 = w75 & w61 & w62 & w63;
assign w212 = w76 & w62 & w63;
assign w213 = w77 & w63;
assign w79 = w64 | w94;
assign w80 = w65 | w95 | w96;
assign w81 = w66 | w97 | w98 | w99;
assign w82 = w67 | w100 | w101 | w102 | w103;
assign w83 = w68 | w104 | w105 | w106 | w107 | w108;
assign w84 = w69 | w109 | w110 | w111 | w112 | w113 | w114;
assign w85 = w70 | w115 | w116 | w117 | w118 | w119 | w120 | w121;
assign w86 = w71 | w122 | w123 | w124 | w125 | w126 | w127 | w128 | w129;
assign w87 = w72 | w130 | w131 | w132 | w133 | w134 | w135 | w136 | w137 | w138;
assign w88 = w73 | w139 | w140 | w141 | w142 | w143 | w144 | w145 | w146 | w147 | w148;
assign w89 = w74 | w149 | w150 | w151 | w152 | w153 | w154 | w155 | w156 | w157 | w158 | w159;
assign w90 = w75 | w160 | w161 | w162 | w163 | w164 | w165 | w166 | w167 | w168 | w169 | w170 | w171;
assign w91 = w76 | w172 | w173 | w174 | w175 | w176 | w177 | w178 | w179 | w180 | w181 | w182 | w183 | w184;
assign w92 = w77 | w185 | w186 | w187 | w188 | w189 | w190 | w191 | w192 | w193 | w194 | w195 | w196 | w197 | w198;
assign w93 = w78 | w199 | w200 | w201 | w202 | w203 | w204 | w205 | w206 | w207 | w208 | w209 | w210 | w211 | w212 | w213;
assign w31 = w49 ^ w47;
assign w32 = w50 ^ w79;
assign w33 = w51 ^ w80;
assign w34 = w52 ^ w81;
assign w35 = w53 ^ w82;
assign w36 = w54 ^ w83;
assign w37 = w55 ^ w84;
assign w38 = w56 ^ w85;
assign w39 = w57 ^ w86;
assign w40 = w58 ^ w87;
assign w41 = w59 ^ w88;
assign w42 = w60 ^ w89;
assign w43 = w61 ^ w90;
assign w44 = w62 ^ w91;
assign w45 = w63 ^ w92;
assign w46 = w93;

endmodule
