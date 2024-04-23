
module InvMixColumns (A0,A1,A2,A3,B0,B1,B2,B3);

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

