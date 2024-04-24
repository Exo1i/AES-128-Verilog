module InvMixColumns_192(A,B);

input [191:0]A;
output [191:0]B;
// Split the 192-bit input into six 32-bit segments
wire [31:0] input_wires[5:0];
assign input_wires[0] = A[191:160];
assign input_wires[1] = A[159:128];
assign input_wires[2] = A[127:96];
assign input_wires[3] = A[95:64];
assign input_wires[4] = A[63:32];
assign input_wires[5] = A[31:0];

// Outputs for each MixColumns instance
wire [31:0] output_wires[5:0];

// Instantiate the MixColumns module six times
InvMxColumns mix0(input_wires[0][31:24], input_wires[0][23:16], input_wires[0][15:8], input_wires[0][7:0],
                       output_wires[0][7:0], output_wires[0][15:8], output_wires[0][23:16], output_wires[0][31:24]);


InvMxColumns mix1(input_wires[1][31:24], input_wires[1][23:16], input_wires[1][15:8], input_wires[1][7:0],
                       output_wires[1][7:0], output_wires[1][15:8], output_wires[1][23:16], output_wires[1][31:24]);


InvMxColumns mix2(input_wires[2][31:24], input_wires[2][23:16], input_wires[2][15:8], input_wires[2][7:0],
                       output_wires[2][7:0], output_wires[2][15:8], output_wires[2][23:16], output_wires[2][31:24]);


InvMxColumns mix3(input_wires[3][31:24], input_wires[3][23:16], input_wires[3][15:8], input_wires[3][7:0],
                       output_wires[3][7:0], output_wires[3][15:8], output_wires[3][23:16], output_wires[3][31:24]);


InvMxColumns mix4(input_wires[4][31:24], input_wires[4][23:16], input_wires[4][15:8], input_wires[4][7:0],
                       output_wires[4][7:0], output_wires[4][15:8], output_wires[4][23:16], output_wires[4][31:24]);

InvMxColumns mix5(input_wires[5][31:24], input_wires[5][23:16], input_wires[5][15:8], input_wires[5][7:0],
                       output_wires[5][7:0], output_wires[5][15:8], output_wires[5][23:16], output_wires[5][31:24]);
							  
							  
// Combine the 32-bit segments into the 192-bit output
assign B[191:160] = output_wires[5];
assign B[159:128] = output_wires[4];
assign B[127:96] = output_wires[3];
assign B[95:64] = output_wires[2];
assign B[63:32] = output_wires[1];
assign B[31:0] = output_wires[0];

endmodule


module InvMxColumns (A0,A1,A2,A3,B0,B1,B2,B3);

input [7:0]A0;
input [7:0]A1;
input [7:0]A2;
input [7:0]A3;

output [7:0]B0;
output [7:0]B1;
output [7:0]B2;
output [7:0]B3;
  
  function [7:0] xtime(input [7:0] A,input integer n);
integer i;
begin
for(i = 0;i < n;i =i + 1)
	begin
		A = (A << 1) ^ (((A >> 7) & 1) * 8'h1b);
	end
	xtime = A;
end 
endfunction

function [7:0] xtime0e(input [7:0] A);
begin
	xtime0e = xtime(A,3) ^ xtime(A,2) ^ xtime(A,1);
end 
endfunction
function [7:0] xtime0b(input [7:0] A);
begin
	xtime0b = xtime(A,3) ^ xtime(A,1) ^ A;
end 
endfunction
function [7:0] xtime0d(input [7:0] A);
begin
	xtime0d = xtime(A,3) ^ xtime(A,2) ^ A;
end 
endfunction
function [7:0] xtime09(input [7:0] A);
begin
	xtime09 = xtime(A,3) ^ A;
end 
endfunction


assign B0 = xtime0e(A0) ^ xtime0b(A1) ^ xtime0d(A2) ^ xtime09(A3);
assign B1 = xtime09(A0) ^ xtime0e(A1) ^ xtime0b(A2) ^ xtime0d(A3);
assign B2 = xtime0d(A0) ^ xtime09(A1) ^ xtime0e(A2) ^ xtime0b(A3);
assign B3 = xtime0b(A0) ^ xtime0d(A1) ^ xtime09(A2) ^ xtime0e(A3);


endmodule
