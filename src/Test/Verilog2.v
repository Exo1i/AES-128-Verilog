module InvMixCloumns(in,out);

  	input [31:0] in;
  output [31:0]out;
    reg [15:0] Array [3:0][3:0];
	 
	initial begin
        Array[0][0] =  8'h0e;
        Array[0][1] =  8'h0b;
        Array[0][2] =  8'h0d;
        Array[0][3] =  8'h09;

        Array[1][0] =  8'h09;
        Array[1][1] =  8'h0e;
        Array[1][2] =  8'h0b;
        Array[1][3] =  8'h0d;

        Array[2][0] =  8'h0d;
        Array[2][1] =  8'h09;
        Array[2][2] =  8'h0e;
        Array[2][3] =  8'h0b;

        Array[3][0] =  8'h0b;
        Array[3][1] =  8'h0d;
        Array[3][2] =  8'h09;
        Array[3][3] =  8'h0e;
	end
	
  assign out[7:0]    = (Array[0][0] & in[7:0])   ^ (Array[0][1] & in[7:0]) ^  (Array[0][2] & in[7:0]) ^  (Array[0][3] & in[7:0]);
  assign out[15:8]   = (Array[1][0] & in[15:8])  ^ (Array[1][1] & in[15:8]) ^ (Array[1][2] & in[15:8]) ^ (Array[1][3] & in[15:8]);
  assign out[23:16]  = (Array[2][0] & in[23:16]) ^ (Array[2][1] & in[23:1]) ^ (Array[2][2] & in[23:1]) ^ (Array[2][3] & in[23:1]);
  assign out[31:24]  = (Array[3][0] & in[31:24]) ^ (Array[3][1] & in[31:2]) ^ (Array[3][2] & in[31:2]) ^ (Array[3][3] & in[31:2]);

endmodule

