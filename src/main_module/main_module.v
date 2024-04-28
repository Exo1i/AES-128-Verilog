module main_module(
    input [127:0] plain_text,
    input [127:0] key,
    output reg [127:0] cipher_text,
    input clk  // Module Required To Be Pipelined
);

reg [127:0] state0_reg[1:0], state1_reg[1:0];

wire [1407:0] expanded_key;

keySchedule ks(key,expanded_key);

addRoundKey rk_initial(plain_text,expanded_key[127:0],state1_reg[0]);

genvar i;
generate
for (i = 1; i <= 9; i = i + 1) begin : AES_CIPHER
    SubBytes s(state1_reg[0], state1_reg[1]);
    ShiftRows sr(state1_reg[1], state0_reg[1]);
    MixColumns mx(state0_reg[1], state0_reg[0]);
    addRoundKey k(state0_reg[0], expanded_key[(128*i) +: 128], state1_reg[0]);
end
endgenerate

SubBytes s_final(state1_reg[0], state1_reg[1]);
ShiftRows sr_final(state1_reg[1], state0_reg[1]);
addRoundKey k_final(state0_reg[1], expanded_key[1407:1280], state0_reg[0]);

always @(posedge clk) begin
    cipher_text <= state0_reg[0];
	 //state1_reg[0] <= state0_reg[0];
    //state1_reg[1] <= state1_reg[0]; 
	 //state0_reg[1] <= state1_reg[1];
	 //state0_reg[0] <= state0_reg[1];
end

endmodule
