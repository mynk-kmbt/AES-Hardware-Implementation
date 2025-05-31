`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2025 02:12:43
// Design Name: 
// Module Name: MixCol_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MixCol_tb();

    reg [127:0] Mat; 
    wire [127:0] OutMat;
    
    MixCol uut (.Mat(Mat),.OutMat(OutMat));
    
    initial
    begin
    Mat=128'h87f24d976e4c90ec46e74ac3a68cd895;
    end
endmodule
