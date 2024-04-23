module MixColumns(A0,A1,A2,A3,B0,B1,B2,B3);

input [7:0]A0;
input [7:0]A1;
input [7:0]A2;
input [7:0]A3;

output [7:0]B0;
output [7:0]B1;
output [7:0]B2;
output [7:0]B3;

wire [7:0]a0;
wire [7:0]a1;
wire [7:0]a2;
wire [7:0]a3;

wire [7:0]b0;
wire [7:0]b1;
wire [7:0]b2;
wire [7:0]b3;

wire [3:0]temp;

assign a0 = A0;
assign temp[0] = a0 >> 7;
assign b0 = (A0 << 1) ^ (temp[0] * 8'h1B);

assign a1 = A1;
assign temp[1] = a1 >> 7;
assign b1 = (A1 << 1) ^ (temp[1] * 8'h1B);

assign a2 = A2;
assign temp[2] = a2 >> 7;
assign b2 = (A2 << 1) ^ (temp[2] * 8'h1B);

assign a3 = A3;
assign temp[3] = a3 >> 7;
assign b3 = (A3 << 1) ^ (temp[3] * 8'h1B);

assign B0 = b0 ^ a3 ^ a2 ^ b1 ^ a1;
assign B1 = b1 ^ a0 ^ a3 ^ b2 ^ a2;
assign B2 = b2 ^ a1 ^ a0 ^ b3 ^ a3;
assign B3 = b3 ^ a2 ^ a1 ^ b0 ^ a0;

endmodule