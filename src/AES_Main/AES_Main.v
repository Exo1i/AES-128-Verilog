module AES_Main (
    input clk,
    input [1:0] keyType,
    input wire mode,
    output wire [20:0] sevenSegmentOutput
);

  // just some local params to check key type and modes
  localparam encrypt = 1'b0;
  localparam decrypt = 1'b1;
  localparam mode_128 = 2'b00;
  localparam mode_192 = 2'b01;
  localparam mode_256 = 2'b10;

  //defining the 128bit key
  reg [0:127]key128 = 128'h2b7e151628aed2a6abf7158809cf4f3c; //expected output 3ad77bb40d7a3660a89ecaf32466ef97
  wire [0:1279] key128Exp;

  //defining the 192bit key
  reg [0:191]key192 = 192'h8e73b0f7da0e6452c810f32b809079e562f8ead2522c6b7b; //expected output bd334f1d6e45f25ff712a214571fa5cc
  wire [0:128*12-1] key192Exp;

  //defining the 256bit key
  reg [0:255]key256 = 256'h603deb1015ca71be2b73aef0857d77811f352c073b6108d72d9810a30914dff4; // expected f3eed1bdb5d2a03c064b5a7e3db181f8
  wire [0:128*14-1] key256Exp;

  //this is the plain text that would be encrypted by all keys.
  reg [0:127] plainText = 128'h_6bc1bee22e409f96e93d7e117393172a;

  //here are the expected outputs of each encryption process
  reg [0:127] cipher128 = 128'h3ad77bb40d7a3660a89ecaf32466ef97;
  reg [0:127] cipher192 = 128'hbd334f1d6e45f25ff712a214571fa5cc;
  reg [0:127] cipher256 = 128'hf3eed1bdb5d2a03c064b5a7e3db181f8;

  //just some wires for the outputs of the encryption module
  wire [0:127] cipherText1;
  wire [0:127] cipherText2;
  wire [0:127] cipherText3;

  //just some wires for the outputs of the decryption module
  wire [0:127] plainTextWire1;
  wire [0:127] plainTextWire2;
  wire [0:127] plainTextWire3;


  //seperate clocks for each process
  reg clkDecrypt128 = 0;
  reg clkDecrypt192 = 0;
  reg clkDecrypt256 = 0;

  reg clkEncrypt128 = 0;
  reg clkEncrypt192 = 0;
  reg clkEncrypt256 = 0;

  //expanding the keys before running the main stages
  keySchedule #(10, 4) exp128 (
      key128,
      key128Exp
  );
  keySchedule #(12, 6) exp192 (
      key192,
      key192Exp
  );
  keySchedule #(14, 8) exp256 (
      key256,
      key256Exp
  );

  //instantiate all modules, but no output untill their clk is ready
  aesEncrypt #(10, 4) enc128 (
      clkEncrypt128,
      plainText,
      key128,
      key128Exp,
      cipherText1
  );
  aesEncrypt #(12, 6) enc192 (
      clkEncrypt192,
      plainText,
      key192,
      key192Exp,
      cipherText2
  );
  aesEncrypt #(14, 8) enc256 (
      clkEncrypt256,
      plainText,
      key256,
      key256Exp,
      cipherText3
  );

  Decryption #(10, 4) dec128 (
      clkDecrypt128,
      cipher128,
      key128,
      key128Exp,
      plainTextWire1
  );
  Decryption #(12, 6) dec192 (
      clkDecrypt192,
      cipher192,
      key192,
      key192Exp,
      plainTextWire2
  );
  Decryption #(14, 8) dec256 (
      clkDecrypt256,
      cipher256,
      key256,
      key256Exp,
      plainTextWire3
  );

  //creating reg for 7-segments output
  reg [20:0] sevenSegmentOutputReg;
  assign sevenSegmentOutput = sevenSegmentOutputReg;

  integer roundNum = 0;
  always @(posedge clk) begin
    if (mode == encrypt) begin

      case (keyType)
        mode_128: begin
          if (roundNum == 0) clkEncrypt128 = clk;
          else clkEncrypt128 = ~clkEncrypt128;

          if (roundNum < 10) roundNum = roundNum + 1;
          else if (roundNum == 10) sevenSegmentOutputReg = hexDisplayFunc(cipherText1[127-:8]);
          clkEncrypt128 <= ~clkEncrypt128;
        end

        mode_192: begin
          if (roundNum == 0) clkEncrypt192 = clk;
          else clkEncrypt192 = ~clkEncrypt192;

          if (roundNum < 12) roundNum = roundNum + 1;
          else if (roundNum == 12) sevenSegmentOutputReg = hexDisplayFunc(cipherText1[127-:8]);
          clkEncrypt192 <= ~clkEncrypt192;

        end

        mode_256: begin
          if (roundNum == 0) clkEncrypt256 = clk;
          else clkEncrypt256 = ~clkEncrypt256;

          if (roundNum < 14) roundNum = roundNum + 1;
          else if (roundNum == 14) sevenSegmentOutputReg = hexDisplayFunc(cipherText1[127-:8]);
          clkEncrypt256 <= ~clkEncrypt256;
        end
      endcase

    end else if (mode == decrypt) begin
      case (keyType)
        mode_128: begin
          if (roundNum == 0) clkDecrypt128 = clk;
          else clkDecrypt128 = ~clkDecrypt128;

          if (roundNum < 10) roundNum = roundNum + 1;
          else if (roundNum == 10) sevenSegmentOutputReg = hexDisplayFunc(plainTextWire1[127-:8]);
          clkDecrypt128 <= ~clkDecrypt128;
        end

        mode_192: begin
          if (roundNum == 0) clkDecrypt192 = clk;
          else clkDecrypt192 = ~clkDecrypt192;

          if (roundNum < 12) roundNum = roundNum + 1;
          else if (roundNum == 12) sevenSegmentOutputReg = hexDisplayFunc(plainTextWire2[127-:8]);
          clkDecrypt192 <= ~clkDecrypt192;

        end

        mode_256: begin
          if (roundNum == 0) clkDecrypt256 = clk;
          else clkDecrypt256 = ~clkDecrypt256;

          if (roundNum < 14) roundNum = roundNum + 1;
          else if (roundNum == 14) sevenSegmentOutputReg = hexDisplayFunc(plainTextWire3[127-:8]);
          clkDecrypt256 <= ~clkDecrypt256;
        end
      endcase

    end
  end

  //helper function for displaying the last byte on 3 ss
  function [20:0] hexDisplayFunc;
    input [7:0] in;
    reg [11:0] temp;

    begin
      temp = ShiftAdd3(in);
      hexDisplayFunc[0+:7] = segment7(temp[0+:4]);
      hexDisplayFunc[7+:7] = segment7(temp[4+:4]);
      hexDisplayFunc[14+:7] = segment7(temp[8+:4]);
    end

  endfunction
  function [6:0] segment7;

    input [3:0] ssOutput;

    begin
      case (ssOutput)
        4'b0001: segment7 = 7'b1111001;  // 1
        4'b0010: segment7 = 7'b0100100;  // 2
        4'b0011: segment7 = 7'b0110000;  // 3
        4'b0100: segment7 = 7'b0011001;  // 4
        4'b0101: segment7 = 7'b0010010;  // 5
        4'b0110: segment7 = 7'b0000010;  // 6
        4'b0111: segment7 = 7'b0111000;  // 7
        4'b1000: segment7 = 7'b0000000;  // 8
        4'b1001: segment7 = 7'b0011000;  // 9

        default: segment7 = 7'b1111111;  // Blank display
      endcase
    end

  endfunction

  function [11:0] ShiftAdd3;
    input [7:0] in;

    integer i;
    begin
      ShiftAdd3 = 0;

      for (i = 0; i < 8; i = i + 1) begin
        ShiftAdd3 = {ShiftAdd3[10:0], in[7-i]};
        if (i < 7 && ShiftAdd3[3:0] > 4'b0100) begin
          ShiftAdd3[3:0] = ShiftAdd3[3:0] + 4'b0011;
        end
        if (i < 7 && ShiftAdd3[7:4] > 4'b0100) begin
          ShiftAdd3[7:4] = ShiftAdd3[7:4] + 4'b0011;
        end
        if (i < 7 && ShiftAdd3[11:8] > 4'b0100) begin
          ShiftAdd3[11:8] = ShiftAdd3[11:8] + 4'b0011;
        end
      end
    end
  endfunction

endmodule


