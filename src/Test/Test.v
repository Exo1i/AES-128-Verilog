`include "Verilog2.v"
include "Verilog3.v"

module Test(in,out);

input [31:0]in;
output [31:0]out;
wire [31:0]w;

initial begin
 in = 32'h12345678;
 end
 
 MixColumns(in,w);
 InvMixColumns(w,out);

endmodule

