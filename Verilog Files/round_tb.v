`timescale 1ns / 1ps


module round_tb();

    reg [127:0]text;
    wire [127:0] out;
    round uut (.text(text), .out(out));
    
    initial begin
    text=128'hEA04658583455D965C3398B0F02DADC5;
    end     
endmodule
