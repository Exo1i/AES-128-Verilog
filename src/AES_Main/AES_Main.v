module AES_Main(
    input clk,
    input [1:0]keyType,
    input wire mode,
    output wire [11:0]shift3Output
  );
  localparam encrypt = 1'b0;
  localparam decrypt = 1'b1;
  localparam mode_128 = 2'b00;
  localparam mode_192 = 2'b01;
  localparam mode_256 = 2'b10;

  reg [0:127]key128 = 128'h2b7e151628aed2a6abf7158809cf4f3c; //expected output 3ad77bb40d7a3660a89ecaf32466ef97
  wire [0:1280]key128Exp;

  reg [0:191]key192 = 192'h8e73b0f7da0e6452c810f32b809079e562f8ead2522c6b7b; //expected output bd334f1d6e45f25ff712a214571fa5cc
  wire [0:128*12-1]key192Exp;

  reg [0:255]key256 = 256'h603deb1015ca71be2b73aef0857d77811f352c073b6108d72d9810a30914dff4; // expected f3eed1bdb5d2a03c064b5a7e3db181f8
  wire [0:128*14-1]key256Exp;

  reg [0:127] plainText= 128'h3ad77bb40d7a3660a89ecaf32466ef97;
  reg [0:127] cipher128= 128'h6bc1bee22e409f96e93d7e117393172a;
  reg [0:127] cipher192= 128'hbd334f1d6e45f25ff712a214571fa5cc;
  reg [0:127] cipher256= 128'hf3eed1bdb5d2a03c064b5a7e3db181f8;
  wire[0:127] cipherText1;
  wire[0:127] cipherText2;
  wire[0:127] cipherText3;
  wire[0:127] plainTextWire1;
  wire[0:127] plainTextWire2;
  wire[0:127] plainTextWire3;

  reg clkDecrypt;
  reg clkEncrypt;

  keySchedule#(10,4) OneTwoEight(key128, key128Exp);
  keySchedule#(12,6) OneTwoNine(key192, key192Exp);
  keySchedule#(14,8) TwoFiveSix(key256, key256Exp);

  aesEncrypt#(10,4)l(clkEncrypt,plainText,key128,key128Exp,cipherText1);
  aesEncrypt#(12,6)l1(clkEncrypt,plainText,key192,key192Exp,cipherText2);
  aesEncrypt#(14,8)l2(clkEncrypt,plainText,key256,key256Exp,cipherText3);

  Decryption#(10,4)l3(clkDecrypt,cipher128,key128,key128Exp,plainTextWire1);
  Decryption#(12,6)l4(clkDecrypt,cipher192,key192,key192Exp,plainTextWire2);
  Decryption#(14,8)l5(clkDecrypt,cipher256,key256,key256Exp,plainTextWire3);

  reg [7:0]shift3Input;
  ShiftAdd3 outPutBCD(shift3Input, shift3Output);
  generate
    always@(posedge clk)
    begin
      if(mode == encrypt)
      begin
        clkEncrypt = clk;
        case(keyType)
          mode_128:
          begin
            #5 shift3Input <=cipherText1[0+:8];
            #5  shift3Input <=cipherText1[8+:8];
            #5 shift3Input <=cipherText1[16+:8];
            #5 shift3Input <=cipherText1[24+:8];
          end
          mode_192:
          begin
            #5 shift3Input <=cipherText2[0+:8];
            #5  shift3Input <=cipherText2[8+:8];
            #5 shift3Input <=cipherText2[16+:8];
            #5 shift3Input <=cipherText2[24+:8];
          end
          mode_256:
          begin
            #5 shift3Input <=cipherText3[0+:8];
            #5  shift3Input <=cipherText3[8+:8];
            #5 shift3Input <=cipherText3[16+:8];
            #5 shift3Input <=cipherText3[24+:8];
          end
        endcase
      end
      else if(mode == decrypt)
      begin
        clkDecrypt = clk;
        case(keyType)
          mode_128:
          begin
            #5 shift3Input <=plainTextWire1[0+:8];
            #5  shift3Input <=plainTextWire1[8+:8];
            #5 shift3Input <=plainTextWire1[16+:8];
            #5 shift3Input <=plainTextWire1[24+:8];
          end
          mode_192:
          begin
            #5 shift3Input <=plainTextWire2[0+:8];
            #5  shift3Input <=plainTextWire2[8+:8];
            #5 shift3Input <=plainTextWire2[16+:8];
            #5 shift3Input <=plainTextWire2[24+:8];
          end
          mode_256:
          begin
            #5 shift3Input <=plainTextWire3[0+:8];
            #5  shift3Input <=plainTextWire3[8+:8];
            #5 shift3Input <=plainTextWire3[16+:8];
            #5 shift3Input <=plainTextWire3[24+:8];
          end
        endcase
      end

    end
  endgenerate
endmodule
