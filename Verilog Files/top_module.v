`timescale 1ns / 1ps


module top_module(plain_text, key, cypher_text);
    input [127:0] plain_text, key;
    output [127:0] cypher_text;
    
//    wire [127:0] plain_text_transpose;
//    assign plain_text_transpose={plain_text[127:120],plain_text[95:88],plain_text[63:56],plain_text[31:24],plain_text[119:112],plain_text[87:80],plain_text[55:48],plain_text[23:16],plain_text[111:104],plain_text[79:72],plain_text[47:40],plain_text[15:8],plain_text[103:96],plain_text[71:64],plain_text[39:32],plain_text[7:0]};
    
    wire [127:0] round1,round2,round3,round4,round5,round6,round7,round8,round9,round10;
    wire [31:0] w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43;
    
    Key_expansion key_call (key,w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43);
    
    
    round r1 (plain_text^{w0,w1,w2,w3},round1);
    round r2 (round1^{w4,w5,w6,w7},round2);
    round r3 (round2^{w8,w9,w10,w11},round3);
    round r4 (round3^{w12,w13,w14,w15},round4);
    round r5 (round4^{w16,w17,w18,w19},round5);
    round r6 (round5^{w20,w21,w22,w23},round6);
    round r7 (round6^{w24,w25,w26,w27},round7);
    round r8 (round7^{w28,w29,w30,w31},round8);
    round r9 (round8^{w32,w33,w34,w35},round9);
    endround r10 (round9^{w36,w37,w38,w39}, round10);
    
    assign cypher_text=round10^{w40,w41,w42,w43};

endmodule
