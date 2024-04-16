module MixColumns(in,out);

    input [3:0] in;
    output [3:0]out;
    reg [15:0] Array [3:0][3:0];
    initial begin
        Array[0][0] =  8'h02;
        Array[0][1] =  8'h03;
        Array[0][2] =  8'h01;
        Array[0][3] =  8'h01;

        Array[1][0] =  8'h01;
        Array[1][1] =  8'h02;
        Array[1][2] =  8'h03;
        Array[1][3] =  8'h01;

        Array[2][0] =  8'h01;
        Array[2][1] =  8'h01;
        Array[2][2] =  8'h02;
        Array[2][3] =  8'h03;

        Array[3][0] =  8'h03;
        Array[3][1] =  8'h01;
        Array[3][2] =  8'h01;
        Array[3][3] =  8'h03;
    end

    assign out[0]  = (Array[0][0] & in[0]) ^ (Array[0][1] & in[1]) ^ (Array[0][2] & in[2]) ^ (Array[0][3] & in[3]);
    assign out[1]  = (Array[1][0] & in[0]) ^ (Array[1][1] & in[1]) ^ (Array[1][2] & in[2]) ^ (Array[1][3] & in[3]);
    assign out[2]  = (Array[2][0] & in[0]) ^ (Array[2][1] & in[1]) ^ (Array[2][2] & in[2]) ^ (Array[2][3] & in[3]);
    assign out[3]  = (Array[3][0] & in[0]) ^ (Array[3][1] & in[1]) ^ (Array[3][2] & in[2]) ^ (Array[3][3] & in[3]);

endmodule

