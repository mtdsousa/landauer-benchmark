module CCarryLookahead_16_16_16_InOutT(pA15,pA14,pA13,pA12,pA11,pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB15,pB14,pB13,pB12,pB11,pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, r15,r14,r13,r12,r11,r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cIn, cOut);

input pA15,pA14,pA13,pA12,pA11,pA10,pA9,pA8,pA7,pA6,pA5,pA4,pA3,pA2,pA1,pA0, pB15,pB14,pB13,pB12,pB11,pB10,pB9,pB8,pB7,pB6,pB5,pB4,pB3,pB2,pB1,pB0, cIn;
output r15,r14,r13,r12,r11,r10,r9,r8,r7,r6,r5,r4,r3,r2,r1,r0, cOut;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59, w60, w61, w62, w63, w64, w65, w66, w67, w68, w69, w70, w71, w72, w73, w74, w75, w76, w77, w78, w79, w80, w81, w82, w83, w84, w85, w86, w87, w88, w89, w90, w91, w92, w93, w94, w95, w96, w97, w98, w99, w100, w101, w102, w103, w104, w105, w106, w107, w108, w109, w110, w111, w112, w113, w114, w115, w116, w117, w118, w119, w120, w121, w122, w123, w124, w125, w126, w127, w128, w129, w130, w131, w132, w133, w134, w135, w136, w137, w138, w139, w140, w141, w142, w143, w144, w145, w146, w147, w148, w149, w150, w151, w152, w153, w154, w155, w156, w157, w158, w159, w160, w161, w162, w163, w164, w165, w166, w167, w168, w169, w170, w171, w172, w173, w174, w175, w176, w177, w178, w179, w180, w181, w182, w183, w184, w185, w186, w187, w188, w189, w190, w191, w192, w193, w194, w195, w196, w197, w198, w199, w200, w201, w202, w203, w204, w205, w206, w207, w208, w209, w210, w211, w212, w213, w214, w215, w216, w217, w218, w219, w220, w221, w222, w223, w224, w225, w226, w227, w228, w229, w230, w231, w232, w233, w234, w235, r4294967295;

assign w1 = pA15;
assign w2 = pA14;
assign w3 = pA13;
assign w4 = pA12;
assign w5 = pA11;
assign w6 = pA10;
assign w7 = pA9;
assign w8 = pA8;
assign w9 = pA7;
assign w10 = pA6;
assign w11 = pA5;
assign w12 = pA4;
assign w13 = pA3;
assign w14 = pA2;
assign w15 = pA1;
assign w16 = pA0;
assign w17 = pB15;
assign w18 = pB14;
assign w19 = pB13;
assign w20 = pB12;
assign w21 = pB11;
assign w22 = pB10;
assign w23 = pB9;
assign w24 = pB8;
assign w25 = pB7;
assign w26 = pB6;
assign w27 = pB5;
assign w28 = pB4;
assign w29 = pB3;
assign w30 = pB2;
assign w31 = pB1;
assign w32 = pB0;
assign r15 = w33;
assign r14 = w34;
assign r13 = w35;
assign r12 = w36;
assign r11 = w37;
assign r10 = w38;
assign r9 = w39;
assign r8 = w40;
assign r7 = w41;
assign r6 = w42;
assign r5 = w43;
assign r4 = w44;
assign r3 = w45;
assign r2 = w46;
assign r1 = w47;
assign r0 = w48;
assign r4294967295 = w49;
assign w50 = cIn;
assign cOut = w49;

assign w52 = w1 ^ w17;
assign w68 = w1 & w17;
assign w53 = w2 ^ w18;
assign w69 = w2 & w18;
assign w54 = w3 ^ w19;
assign w70 = w3 & w19;
assign w55 = w4 ^ w20;
assign w71 = w4 & w20;
assign w56 = w5 ^ w21;
assign w72 = w5 & w21;
assign w57 = w6 ^ w22;
assign w73 = w6 & w22;
assign w58 = w7 ^ w23;
assign w74 = w7 & w23;
assign w59 = w8 ^ w24;
assign w75 = w8 & w24;
assign w60 = w9 ^ w25;
assign w76 = w9 & w25;
assign w61 = w10 ^ w26;
assign w77 = w10 & w26;
assign w62 = w11 ^ w27;
assign w78 = w11 & w27;
assign w63 = w12 ^ w28;
assign w79 = w12 & w28;
assign w64 = w13 ^ w29;
assign w80 = w13 & w29;
assign w65 = w14 ^ w30;
assign w81 = w14 & w30;
assign w66 = w15 ^ w31;
assign w82 = w15 & w31;
assign w67 = w16 ^ w32;
assign w83 = w16 & w32;
assign w100 = w50 & w52;
assign w101 = w50 & w52 & w53;
assign w102 = w68 & w53;
assign w103 = w50 & w52 & w53 & w54;
assign w104 = w68 & w53 & w54;
assign w105 = w69 & w54;
assign w106 = w50 & w52 & w53 & w54 & w55;
assign w107 = w68 & w53 & w54 & w55;
assign w108 = w69 & w54 & w55;
assign w109 = w70 & w55;
assign w110 = w50 & w52 & w53 & w54 & w55 & w56;
assign w111 = w68 & w53 & w54 & w55 & w56;
assign w112 = w69 & w54 & w55 & w56;
assign w113 = w70 & w55 & w56;
assign w114 = w71 & w56;
assign w115 = w50 & w52 & w53 & w54 & w55 & w56 & w57;
assign w116 = w68 & w53 & w54 & w55 & w56 & w57;
assign w117 = w69 & w54 & w55 & w56 & w57;
assign w118 = w70 & w55 & w56 & w57;
assign w119 = w71 & w56 & w57;
assign w120 = w72 & w57;
assign w121 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58;
assign w122 = w68 & w53 & w54 & w55 & w56 & w57 & w58;
assign w123 = w69 & w54 & w55 & w56 & w57 & w58;
assign w124 = w70 & w55 & w56 & w57 & w58;
assign w125 = w71 & w56 & w57 & w58;
assign w126 = w72 & w57 & w58;
assign w127 = w73 & w58;
assign w128 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59;
assign w129 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59;
assign w130 = w69 & w54 & w55 & w56 & w57 & w58 & w59;
assign w131 = w70 & w55 & w56 & w57 & w58 & w59;
assign w132 = w71 & w56 & w57 & w58 & w59;
assign w133 = w72 & w57 & w58 & w59;
assign w134 = w73 & w58 & w59;
assign w135 = w74 & w59;
assign w136 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w137 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w138 = w69 & w54 & w55 & w56 & w57 & w58 & w59 & w60;
assign w139 = w70 & w55 & w56 & w57 & w58 & w59 & w60;
assign w140 = w71 & w56 & w57 & w58 & w59 & w60;
assign w141 = w72 & w57 & w58 & w59 & w60;
assign w142 = w73 & w58 & w59 & w60;
assign w143 = w74 & w59 & w60;
assign w144 = w75 & w60;
assign w145 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w146 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w147 = w69 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w148 = w70 & w55 & w56 & w57 & w58 & w59 & w60 & w61;
assign w149 = w71 & w56 & w57 & w58 & w59 & w60 & w61;
assign w150 = w72 & w57 & w58 & w59 & w60 & w61;
assign w151 = w73 & w58 & w59 & w60 & w61;
assign w152 = w74 & w59 & w60 & w61;
assign w153 = w75 & w60 & w61;
assign w154 = w76 & w61;
assign w155 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w156 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w157 = w69 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w158 = w70 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w159 = w71 & w56 & w57 & w58 & w59 & w60 & w61 & w62;
assign w160 = w72 & w57 & w58 & w59 & w60 & w61 & w62;
assign w161 = w73 & w58 & w59 & w60 & w61 & w62;
assign w162 = w74 & w59 & w60 & w61 & w62;
assign w163 = w75 & w60 & w61 & w62;
assign w164 = w76 & w61 & w62;
assign w165 = w77 & w62;
assign w166 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w167 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w168 = w69 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w169 = w70 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w170 = w71 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w171 = w72 & w57 & w58 & w59 & w60 & w61 & w62 & w63;
assign w172 = w73 & w58 & w59 & w60 & w61 & w62 & w63;
assign w173 = w74 & w59 & w60 & w61 & w62 & w63;
assign w174 = w75 & w60 & w61 & w62 & w63;
assign w175 = w76 & w61 & w62 & w63;
assign w176 = w77 & w62 & w63;
assign w177 = w78 & w63;
assign w178 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64;
assign w179 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64;
assign w180 = w69 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64;
assign w181 = w70 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64;
assign w182 = w71 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64;
assign w183 = w72 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64;
assign w184 = w73 & w58 & w59 & w60 & w61 & w62 & w63 & w64;
assign w185 = w74 & w59 & w60 & w61 & w62 & w63 & w64;
assign w186 = w75 & w60 & w61 & w62 & w63 & w64;
assign w187 = w76 & w61 & w62 & w63 & w64;
assign w188 = w77 & w62 & w63 & w64;
assign w189 = w78 & w63 & w64;
assign w190 = w79 & w64;
assign w191 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65;
assign w192 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65;
assign w193 = w69 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65;
assign w194 = w70 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65;
assign w195 = w71 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65;
assign w196 = w72 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65;
assign w197 = w73 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65;
assign w198 = w74 & w59 & w60 & w61 & w62 & w63 & w64 & w65;
assign w199 = w75 & w60 & w61 & w62 & w63 & w64 & w65;
assign w200 = w76 & w61 & w62 & w63 & w64 & w65;
assign w201 = w77 & w62 & w63 & w64 & w65;
assign w202 = w78 & w63 & w64 & w65;
assign w203 = w79 & w64 & w65;
assign w204 = w80 & w65;
assign w205 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w206 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w207 = w69 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w208 = w70 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w209 = w71 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w210 = w72 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w211 = w73 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w212 = w74 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w213 = w75 & w60 & w61 & w62 & w63 & w64 & w65 & w66;
assign w214 = w76 & w61 & w62 & w63 & w64 & w65 & w66;
assign w215 = w77 & w62 & w63 & w64 & w65 & w66;
assign w216 = w78 & w63 & w64 & w65 & w66;
assign w217 = w79 & w64 & w65 & w66;
assign w218 = w80 & w65 & w66;
assign w219 = w81 & w66;
assign w220 = w50 & w52 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w221 = w68 & w53 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w222 = w69 & w54 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w223 = w70 & w55 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w224 = w71 & w56 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w225 = w72 & w57 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w226 = w73 & w58 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w227 = w74 & w59 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w228 = w75 & w60 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w229 = w76 & w61 & w62 & w63 & w64 & w65 & w66 & w67;
assign w230 = w77 & w62 & w63 & w64 & w65 & w66 & w67;
assign w231 = w78 & w63 & w64 & w65 & w66 & w67;
assign w232 = w79 & w64 & w65 & w66 & w67;
assign w233 = w80 & w65 & w66 & w67;
assign w234 = w81 & w66 & w67;
assign w235 = w82 & w67;
assign w84 = w68 | w100;
assign w85 = w69 | w101 | w102;
assign w86 = w70 | w103 | w104 | w105;
assign w87 = w71 | w106 | w107 | w108 | w109;
assign w88 = w72 | w110 | w111 | w112 | w113 | w114;
assign w89 = w73 | w115 | w116 | w117 | w118 | w119 | w120;
assign w90 = w74 | w121 | w122 | w123 | w124 | w125 | w126 | w127;
assign w91 = w75 | w128 | w129 | w130 | w131 | w132 | w133 | w134 | w135;
assign w92 = w76 | w136 | w137 | w138 | w139 | w140 | w141 | w142 | w143 | w144;
assign w93 = w77 | w145 | w146 | w147 | w148 | w149 | w150 | w151 | w152 | w153 | w154;
assign w94 = w78 | w155 | w156 | w157 | w158 | w159 | w160 | w161 | w162 | w163 | w164 | w165;
assign w95 = w79 | w166 | w167 | w168 | w169 | w170 | w171 | w172 | w173 | w174 | w175 | w176 | w177;
assign w96 = w80 | w178 | w179 | w180 | w181 | w182 | w183 | w184 | w185 | w186 | w187 | w188 | w189 | w190;
assign w97 = w81 | w191 | w192 | w193 | w194 | w195 | w196 | w197 | w198 | w199 | w200 | w201 | w202 | w203 | w204;
assign w98 = w82 | w205 | w206 | w207 | w208 | w209 | w210 | w211 | w212 | w213 | w214 | w215 | w216 | w217 | w218 | w219;
assign w99 = w83 | w220 | w221 | w222 | w223 | w224 | w225 | w226 | w227 | w228 | w229 | w230 | w231 | w232 | w233 | w234 | w235;
assign w33 = w52 ^ w50;
assign w34 = w53 ^ w84;
assign w35 = w54 ^ w85;
assign w36 = w55 ^ w86;
assign w37 = w56 ^ w87;
assign w38 = w57 ^ w88;
assign w39 = w58 ^ w89;
assign w40 = w59 ^ w90;
assign w41 = w60 ^ w91;
assign w42 = w61 ^ w92;
assign w43 = w62 ^ w93;
assign w44 = w63 ^ w94;
assign w45 = w64 ^ w95;
assign w46 = w65 ^ w96;
assign w47 = w66 ^ w97;
assign w48 = w67 ^ w98;
assign w49 = w99;

endmodule
