module ShiftAdd3(input[7:0] in, output wire [11:0] BCD);

reg [11:0] bcd;

integer i;
always @(in) begin
bcd = 0;
for(i=0; i< 8; i = i + 1) begin
	bcd = {bcd[10:0] , in[7-i]};
	if (i<7 && bcd[3:0] > 4'b0100) begin
	 bcd[3:0] = bcd[3:0] + 4'b0011;
    end
    if(i<7 && bcd[7:4] > 4'b0100) begin
    bcd[7:4] = bcd[7:4] + 4'b0011;
    end
    if(i<7 && bcd[11:8] > 4'b0100) begin
    bcd[11:8] = bcd[11:8] + 4'b0011;
    end
	 end
end

assign BCD = bcd;
endmodule