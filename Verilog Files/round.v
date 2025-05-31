`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module round(text,out);
    input [127:0]text;
    wire [127:0]state, shift;
    output [127:0] out;
     
    sbox t1 (.data(text[7:0]), .dout(state[7:0]));
    sbox t2 (.data(text[15:8]), .dout(state[15:8]));
    sbox t3 (.data(text[23:16]), .dout(state[23:16]));
    sbox t4 (.data(text[31:24]), .dout(state[31:24]));
    sbox t5 (.data(text[39:32]), .dout(state[39:32]));
    sbox t6 (.data(text[47:40]), .dout(state[47:40]));
    sbox t7 (.data(text[55:48]), .dout(state[55:48]));
    sbox t8 (.data(text[63:56]), .dout(state[63:56]));
    sbox t9 (.data(text[71:64]), .dout(state[71:64]));
    sbox t10 (.data(text[79:72]), .dout(state[79:72]));
    sbox t11 (.data(text[87:80]), .dout(state[87:80]));
    sbox t12 (.data(text[95:88]), .dout(state[95:88]));
    sbox t13 (.data(text[103:96]), .dout(state[103:96]));
    sbox t14 (.data(text[111:104]), .dout(state[111:104]));
    sbox t15 (.data(text[119:112]), .dout(state[119:112]));
    sbox t16 (.data(text[127:120]), .dout(state[127:120]));
    
    assign shift = {state[127:120],state[95:88],state[63:56],state[31:24],state[87:80],state[55:48],state[23:16],state[119:112],state[47:40],state[15:8],state[111:104],state[79:72],state[7:0],state[103:96],state[71:64],state[39:32]};
    
    MixCol round (.Mat(shift),.OutMat(out));
endmodule
