`timescale 1ns / 1ps

module g_func(word,round,wordout);
    input [31:0] word;
    input [3:0]round;
    output reg [31:0] wordout;
    wire [31:0]shiftword;
    wire [31:0]subword;
  
  
    assign shiftword={word[23:16],word[15:8],word[7:0],word[31:24]};
       
    sbox u1 (.data(shiftword[7:0]),.dout(subword[7:0]));
    sbox u2 (.data(shiftword[15:8]),.dout(subword[15:8]));
    sbox u3 (.data(shiftword[23:16]),.dout(subword[23:16]));
    sbox u4 (.data(shiftword[31:24]),.dout(subword[31:24]));
      


    always@(*)
        begin
        case (round)
        1:wordout=subword^{8'h01,24'h0};
        2:wordout=subword^{8'h02,24'h0};
        3:wordout=subword^{8'h04,24'h0};
        4:wordout=subword^{8'h08,24'h0};
        5:wordout=subword^{8'h10,24'h0};
        6:wordout=subword^{8'h20,24'h0};
        7:wordout=subword^{8'h40,24'h0};
        8:wordout=subword^{8'h80,24'h0};
        9:wordout=subword^{8'h1B,24'h0};
        10:wordout=subword^{8'h36,24'h0};
        default :wordout=0;
        endcase
        end
        
endmodule


