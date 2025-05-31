`timescale 1ns / 1ps


module top_module_tb();

    reg [127:0] plain_text, key;
    wire [127:0] cypher_text;
    
    top_module uut (.plain_text(plain_text), .key(key), .cypher_text(cypher_text));
    
    initial begin
    plain_text=128'h0123456789abcdeffedcba9876543210;
    key=128'h0f1571c947d9e8590cb7add6af7f6798;
    end
endmodule
