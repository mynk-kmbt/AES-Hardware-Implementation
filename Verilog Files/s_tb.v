`timescale 1ns / 1ps

module s_tb();
    reg [127:0] key;
    wire [31:0] w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w33,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43;
	 Key_expansion uut (.key(key),.w0(w0),.w1(w1),.w2(w2),.w3(w3),.w4(w4),.w5(w5),.w6(w6),.w7(w7),.w8(w8),.w9(w9),.w10(w10),.w11(w11),.w12(w12),.w13(w13),.w14(w14),.w15(w15),.w16(w16),.w17(w17),.w18(w18),.w19(w19),.w20(w20),.w21(w21),.w22(w22),.w23(w23),.w24(w24),.w25(w25),.w26(w26),.w27(w27),.w28(w28),.w29(w29),.w30(w30),.w31(w31),.w32(w32),.w33(w33),.w34(w34),.w35(w35),.w36(w36),.w37(w37),.w38(w38),.w39(w39),.w40(w40),.w41(w41),.w42(w42),.w43(w43));
	
	 initial
	 begin
	 key={8'h0f,8'h15,8'h71,8'hc9,8'h47,8'hd9,8'he8,8'h59,8'h0c,8'hb7,8'had,8'hd6,8'haf,8'h7f,8'h67,8'h98};#10;
	 $finish;
	 end
	 
endmodule
