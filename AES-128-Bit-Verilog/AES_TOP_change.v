`timescale 1ns / 1ps

module AES_TOP(clk,datain,key,finalout);
    input clk;
    input [127:0] datain,key;
    output [127:0] finalout;

wire [127:0] tempout;

aescipher u1(.clk(clk),.datain(datain),.key(key),.dataout(tempout));

assign finalout = tempout[127:0];

endmodule
