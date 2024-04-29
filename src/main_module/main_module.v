module main_module#(parameter N=128,parameter Nr=10,parameter Nk=4)(plain_text,key,cipher_text);

input [127:0] plain_text;
input [N-1:0] key;
output [127:0] cipher_text;
wire [(128*(Nr+1))-1 :0] fullkeys;
wire [127:0] states [Nr+1:0];

wire [N-1:0] afterSubBytes;
wire [N-1:0] afterShiftRows;

keySchedule #(Nr,Nk) ke (key,fullkeys);

addRoundKey addrk1 (plain_text,states[0],fullkeys[((128*(Nr+1))-1)-:128]);

genvar i;
generate
	
	for(i=1; i < Nr ;i=i+1)begin : AES_ENCRYPT
		Encryption_Round er(states[i-1],fullkeys[(((128*(Nr+1))-1)-128*i)-:128],states[i]);
		end
		SubBytes sb(states[Nr-1],afterSubBytes);
		ShiftRows sr(afterSubBytes,afterShiftRows);
		addRoundKey addrk2(afterShiftRows,states[Nr],fullkeys[N-1:0]);
			assign cipher_text = states[Nr];

endgenerate
endmodule