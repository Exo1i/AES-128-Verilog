module sboxModule(input wire [7: 0] givenData, output wire[7: 0] sboxRes);
  function [7:0] sbox;
    input [7:0] givenData;
    begin
      case(givenData)
        8'h00:
          sbox = 8'h63;
        8'h01:
          sbox = 8'h7c;
        8'h02:
          sbox = 8'h77;
        8'h03:
          sbox = 8'h7b;
        8'h04:
          sbox = 8'hf2;
        8'h05:
          sbox = 8'h6b;
        8'h06:
          sbox = 8'h6f;
        8'h07:
          sbox = 8'hc5;
        8'h08:
          sbox = 8'h30;
        8'h09:
          sbox = 8'h01;
        8'h0a:
          sbox = 8'h67;
        8'h0b:
          sbox = 8'h2b;
        8'h0c:
          sbox = 8'hfe;
        8'h0d:
          sbox = 8'hd7;
        8'h0e:
          sbox = 8'hab;
        8'h0f:
          sbox = 8'h76;
        8'h10:
          sbox = 8'hca;
        8'h11:
          sbox = 8'h82;
        8'h12:
          sbox = 8'hc9;
        8'h13:
          sbox = 8'h7d;
        8'h14:
          sbox = 8'hfa;
        8'h15:
          sbox = 8'h59;
        8'h16:
          sbox = 8'h47;
        8'h17:
          sbox = 8'hf0;
        8'h18:
          sbox = 8'had;
        8'h19:
          sbox = 8'hd4;
        8'h1a:
          sbox = 8'ha2;
        8'h1b:
          sbox = 8'haf;
        8'h1c:
          sbox = 8'h9c;
        8'h1d:
          sbox = 8'ha4;
        8'h1e:
          sbox = 8'h72;
        8'h1f:
          sbox = 8'hc0;
        8'h20:
          sbox = 8'hb7;
        8'h21:
          sbox = 8'hfd;
        8'h22:
          sbox = 8'h93;
        8'h23:
          sbox = 8'h26;
        8'h24:
          sbox = 8'h36;
        8'h25:
          sbox = 8'h3f;
        8'h26:
          sbox = 8'hf7;
        8'h27:
          sbox = 8'hcc;
        8'h28:
          sbox = 8'h34;
        8'h29:
          sbox = 8'ha5;
        8'h2a:
          sbox = 8'he5;
        8'h2b:
          sbox = 8'hf1;
        8'h2c:
          sbox = 8'h71;
        8'h2d:
          sbox = 8'hd8;
        8'h2e:
          sbox = 8'h31;
        8'h2f:
          sbox = 8'h15;
        8'h30:
          sbox = 8'h04;
        8'h31:
          sbox = 8'hc7;
        8'h32:
          sbox = 8'h23;
        8'h33:
          sbox = 8'hc3;
        8'h34:
          sbox = 8'h18;
        8'h35:
          sbox = 8'h96;
        8'h36:
          sbox = 8'h05;
        8'h37:
          sbox = 8'h9a;
        8'h38:
          sbox = 8'h07;
        8'h39:
          sbox = 8'h12;
        8'h3a:
          sbox = 8'h80;
        8'h3b:
          sbox = 8'he2;
        8'h3c:
          sbox = 8'heb;
        8'h3d:
          sbox = 8'h27;
        8'h3e:
          sbox = 8'hb2;
        8'h3f:
          sbox = 8'h75;
        8'h40:
          sbox = 8'h09;
        8'h41:
          sbox = 8'h83;
        8'h42:
          sbox = 8'h2c;
        8'h43:
          sbox = 8'h1a;
        8'h44:
          sbox = 8'h1b;
        8'h45:
          sbox = 8'h6e;
        8'h46:
          sbox = 8'h5a;
        8'h47:
          sbox = 8'ha0;
        8'h48:
          sbox = 8'h52;
        8'h49:
          sbox = 8'h3b;
        8'h4a:
          sbox = 8'hd6;
        8'h4b:
          sbox = 8'hb3;
        8'h4c:
          sbox = 8'h29;
        8'h4d:
          sbox = 8'he3;
        8'h4e:
          sbox = 8'h2f;
        8'h4f:
          sbox = 8'h84;
        8'h50:
          sbox = 8'h53;
        8'h51:
          sbox = 8'hd1;
        8'h52:
          sbox = 8'h00;
        8'h53:
          sbox = 8'hed;
        8'h54:
          sbox = 8'h20;
        8'h55:
          sbox = 8'hfc;
        8'h56:
          sbox = 8'hb1;
        8'h57:
          sbox = 8'h5b;
        8'h58:
          sbox = 8'h6a;
        8'h59:
          sbox = 8'hcb;
        8'h5a:
          sbox = 8'hbe;
        8'h5b:
          sbox = 8'h39;
        8'h5c:
          sbox = 8'h4a;
        8'h5d:
          sbox = 8'h4c;
        8'h5e:
          sbox = 8'h58;
        8'h5f:
          sbox = 8'hcf;
        8'h60:
          sbox = 8'hd0;
        8'h61:
          sbox = 8'hef;
        8'h62:
          sbox = 8'haa;
        8'h63:
          sbox = 8'hfb;
        8'h64:
          sbox = 8'h43;
        8'h65:
          sbox = 8'h4d;
        8'h66:
          sbox = 8'h33;
        8'h67:
          sbox = 8'h85;
        8'h68:
          sbox = 8'h45;
        8'h69:
          sbox = 8'hf9;
        8'h6a:
          sbox = 8'h02;
        8'h6b:
          sbox = 8'h7f;
        8'h6c:
          sbox = 8'h50;
        8'h6d:
          sbox = 8'h3c;
        8'h6e:
          sbox = 8'h9f;
        8'h6f:
          sbox = 8'ha8;
        8'h70:
          sbox = 8'h51;
        8'h71:
          sbox = 8'ha3;
        8'h72:
          sbox = 8'h40;
        8'h73:
          sbox = 8'h8f;
        8'h74:
          sbox = 8'h92;
        8'h75:
          sbox = 8'h9d;
        8'h76:
          sbox = 8'h38;
        8'h77:
          sbox = 8'hf5;
        8'h78:
          sbox = 8'hbc;
        8'h79:
          sbox = 8'hb6;
        8'h7a:
          sbox = 8'hda;
        8'h7b:
          sbox = 8'h21;
        8'h7c:
          sbox = 8'h10;
        8'h7d:
          sbox = 8'hff;
        8'h7e:
          sbox = 8'hf3;
        8'h7f:
          sbox = 8'hd2;
        8'h80:
          sbox = 8'hcd;
        8'h81:
          sbox = 8'h0c;
        8'h82:
          sbox = 8'h13;
        8'h83:
          sbox = 8'hec;
        8'h84:
          sbox = 8'h5f;
        8'h85:
          sbox = 8'h97;
        8'h86:
          sbox = 8'h44;
        8'h87:
          sbox = 8'h17;
        8'h88:
          sbox = 8'hc4;
        8'h89:
          sbox = 8'ha7;
        8'h8a:
          sbox = 8'h7e;
        8'h8b:
          sbox = 8'h3d;
        8'h8c:
          sbox = 8'h64;
        8'h8d:
          sbox = 8'h5d;
        8'h8e:
          sbox = 8'h19;
        8'h8f:
          sbox = 8'h73;
        8'h90:
          sbox = 8'h60;
        8'h91:
          sbox = 8'h81;
        8'h92:
          sbox = 8'h4f;
        8'h93:
          sbox = 8'hdc;
        8'h94:
          sbox = 8'h22;
        8'h95:
          sbox = 8'h2a;
        8'h96:
          sbox = 8'h90;
        8'h97:
          sbox = 8'h88;
        8'h98:
          sbox = 8'h46;
        8'h99:
          sbox = 8'hee;
        8'h9a:
          sbox = 8'hb8;
        8'h9b:
          sbox = 8'h14;
        8'h9c:
          sbox = 8'hde;
        8'h9d:
          sbox = 8'h5e;
        8'h9e:
          sbox = 8'h0b;
        8'h9f:
          sbox = 8'hdb;
        8'ha0:
          sbox = 8'he0;
        8'ha1:
          sbox = 8'h32;
        8'ha2:
          sbox = 8'h3a;
        8'ha3:
          sbox = 8'h0a;
        8'ha4:
          sbox = 8'h49;
        8'ha5:
          sbox = 8'h06;
        8'ha6:
          sbox = 8'h24;
        8'ha7:
          sbox = 8'h5c;
        8'ha8:
          sbox = 8'hc2;
        8'ha9:
          sbox = 8'hd3;
        8'haa:
          sbox = 8'hac;
        8'hab:
          sbox = 8'h62;
        8'hac:
          sbox = 8'h91;
        8'had:
          sbox = 8'h95;
        8'hae:
          sbox = 8'he4;
        8'haf:
          sbox = 8'h79;
        8'hb0:
          sbox = 8'he7;
        8'hb1:
          sbox = 8'hc8;
        8'hb2:
          sbox = 8'h37;
        8'hb3:
          sbox = 8'h6d;
        8'hb4:
          sbox = 8'h8d;
        8'hb5:
          sbox = 8'hd5;
        8'hb6:
          sbox = 8'h4e;
        8'hb7:
          sbox = 8'ha9;
        8'hb8:
          sbox = 8'h6c;
        8'hb9:
          sbox = 8'h56;
        8'hba:
          sbox = 8'hf4;
        8'hbb:
          sbox = 8'hea;
        8'hbc:
          sbox = 8'h65;
        8'hbd:
          sbox = 8'h7a;
        8'hbe:
          sbox = 8'hae;
        8'hbf:
          sbox = 8'h08;
        8'hc0:
          sbox = 8'hba;
        8'hc1:
          sbox = 8'h78;
        8'hc2:
          sbox = 8'h25;
        8'hc3:
          sbox = 8'h2e;
        8'hc4:
          sbox = 8'h1c;
        8'hc5:
          sbox = 8'ha6;
        8'hc6:
          sbox = 8'hb4;
        8'hc7:
          sbox = 8'hc6;
        8'hc8:
          sbox = 8'he8;
        8'hc9:
          sbox = 8'hdd;
        8'hca:
          sbox = 8'h74;
        8'hcb:
          sbox = 8'h1f;
        8'hcc:
          sbox = 8'h4b;
        8'hcd:
          sbox = 8'hbd;
        8'hce:
          sbox = 8'h8b;
        8'hcf:
          sbox = 8'h8a;
        8'hd0:
          sbox = 8'h70;
        8'hd1:
          sbox = 8'h3e;
        8'hd2:
          sbox = 8'hb5;
        8'hd3:
          sbox = 8'h66;
        8'hd4:
          sbox = 8'h48;
        8'hd5:
          sbox = 8'h03;
        8'hd6:
          sbox = 8'hf6;
        8'hd7:
          sbox = 8'h0e;
        8'hd8:
          sbox = 8'h61;
        8'hd9:
          sbox = 8'h35;
        8'hda:
          sbox = 8'h57;
        8'hdb:
          sbox = 8'hb9;
        8'hdc:
          sbox = 8'h86;
        8'hdd:
          sbox = 8'hc1;
        8'hde:
          sbox = 8'h1d;
        8'hdf:
          sbox = 8'h9e;
        8'he0:
          sbox = 8'he1;
        8'he1:
          sbox = 8'hf8;
        8'he2:
          sbox = 8'h98;
        8'he3:
          sbox = 8'h11;
        8'he4:
          sbox = 8'h69;
        8'he5:
          sbox = 8'hd9;
        8'he6:
          sbox = 8'h8e;
        8'he7:
          sbox = 8'h94;
        8'he8:
          sbox = 8'h9b;
        8'he9:
          sbox = 8'h1e;
        8'hea:
          sbox = 8'h87;
        8'heb:
          sbox = 8'he9;
        8'hec:
          sbox = 8'hce;
        8'hed:
          sbox = 8'h55;
        8'hee:
          sbox = 8'h28;
        8'hef:
          sbox = 8'hdf;
        8'hf0:
          sbox = 8'h8c;
        8'hf1:
          sbox = 8'ha1;
        8'hf2:
          sbox = 8'h89;
        8'hf3:
          sbox = 8'h0d;
        8'hf4:
          sbox = 8'hbf;
        8'hf5:
          sbox = 8'he6;
        8'hf6:
          sbox = 8'h42;
        8'hf7:
          sbox = 8'h68;
        8'hf8:
          sbox = 8'h41;
        8'hf9:
          sbox = 8'h99;
        8'hfa:
          sbox = 8'h2d;
        8'hfb:
          sbox = 8'h0f;
        8'hfc:
          sbox = 8'hb0;
        8'hfd:
          sbox = 8'h54;
        8'hfe:
          sbox = 8'hbb;
        8'hff:
          sbox = 8'h16;
      endcase
      ;
    end
  endfunction
  assign sboxRes = sbox(givenData);

endmodule

module keySchedule( input wire [127:0] inputKey, output wire [1279:0] expandedRoundKey);

  wire [31:0] keyScheduleHelperResWire1;
  wire [31:0] keyScheduleHelperResWire2;
  wire [31:0] keyScheduleHelperResWire3;
  wire [31:0] keyScheduleHelperResWire4;
  wire [31:0] keyScheduleHelperResWire5;
  wire [31:0] keyScheduleHelperResWire6;
  wire [31:0] keyScheduleHelperResWire7;
  wire [31:0] keyScheduleHelperResWire8;
  wire [31:0] keyScheduleHelperResWire9;
  wire [31:0] keyScheduleHelperResWire10;

  reg [127:0]round1Key;
  wire [127:0]round1Wire;
  assign round1Wire = round1Key;

  reg [127:0]round2Key;
  wire [127:0]round2Wire;
  assign round2Wire = round2Key;

  reg [127:0]round3Key;
  wire [127:0]round3Wire;
  assign round3Wire = round3Key;

  reg [127:0]round4Key;
  wire [127:0]round4Wire;
  assign round4Wire = round4Key;

  reg [127:0]round5Key;
  wire [127:0]round5Wire;
  assign round5Wire = round5Key;

  reg [127:0]round6Key;
  wire [127:0]round6Wire;
  assign round6Wire = round6Key;

  reg [127:0]round7Key;
  wire [127:0]round7Wire;
  assign round7Wire = round7Key;

  reg [127:0]round8Key;
  wire [127:0]round8Wire;
  assign round8Wire = round8Key;

  reg [127:0]round9Key;
  wire [127:0]round9Wire;
  assign round9Wire = round9Key;

  reg [127:0]round10Key;
  wire [127:0]round10Wire;
  assign round10Wire = round10Key;

  initial
  begin
    round1Key = 0;
    round2Key = 0;
    round3Key = 0;
    round4Key = 0;
    round5Key = 0;
    round6Key = 0;
    round7Key = 0;
    round8Key = 0;
    round9Key = 0;
    round10Key = 0;
  end

  keyScheduleHelper keyScheduleTask1(.key(inputKey[31:0]), .roundNumber(1), .processedW4(keyScheduleHelperResWire1));
  keyScheduleHelper keyScheduleTask2(.key(round1Wire[31:0]), .roundNumber(2), .processedW4(keyScheduleHelperResWire2));
  keyScheduleHelper keyScheduleTask3(.key(round2Wire[31:0]), .roundNumber(3), .processedW4(keyScheduleHelperResWire3));
  keyScheduleHelper keyScheduleTask4(.key(round3Wire[31:0]), .roundNumber(4), .processedW4(keyScheduleHelperResWire4));
  keyScheduleHelper keyScheduleTask5(.key(round4Wire[31:0]), .roundNumber(5), .processedW4(keyScheduleHelperResWire5));
  keyScheduleHelper keyScheduleTask6(.key(round5Wire[31:0]), .roundNumber(6), .processedW4(keyScheduleHelperResWire6));
  keyScheduleHelper keyScheduleTask7(.key(round6Wire[31:0]), .roundNumber(7), .processedW4(keyScheduleHelperResWire7));
  keyScheduleHelper keyScheduleTask8(.key(round7Wire[31:0]), .roundNumber(8), .processedW4(keyScheduleHelperResWire8));
  keyScheduleHelper keyScheduleTask9(.key(round8Wire[31:0]), .roundNumber(9), .processedW4(keyScheduleHelperResWire9));
  keyScheduleHelper keyScheduleTask10(.key(round9Wire[31:0]), .roundNumber(10), .processedW4(keyScheduleHelperResWire10));

  always @( keyScheduleHelperResWire1)
  begin
    round1Key[127:96] =  keyScheduleHelperResWire1^inputKey[127:96];
    round1Key[95:64] =  keyScheduleHelperResWire1^inputKey[127:96]^inputKey[95:64];
    round1Key[63:32] =  keyScheduleHelperResWire1^inputKey[127:96]^inputKey[95:64]^inputKey[63:32];
    round1Key[31:0] =  keyScheduleHelperResWire1^inputKey[127:96]^inputKey[95:64]^inputKey[63:32]^inputKey[31:0];
  end

  always @( keyScheduleHelperResWire2)
  begin
    round2Key[127:96] =  keyScheduleHelperResWire2^round1Wire[127:96];
    round2Key[95:64] =  keyScheduleHelperResWire2^round1Wire[127:96]^round1Wire[95:64];
    round2Key[63:32] =  keyScheduleHelperResWire2^round1Wire[127:96]^round1Wire[95:64]^round1Wire[63:32];
    round2Key[31:0] =  keyScheduleHelperResWire2^round1Wire[127:96]^round1Wire[95:64]^round1Wire[63:32]^round1Wire[31:0];
  end

  always @( keyScheduleHelperResWire3)
  begin
    round3Key[127:96] =  keyScheduleHelperResWire3^round2Wire[127:96];
    round3Key[95:64] =  keyScheduleHelperResWire3^round2Wire[127:96]^round2Wire[95:64];
    round3Key[63:32] =  keyScheduleHelperResWire3^round2Wire[127:96]^round2Wire[95:64]^round2Wire[63:32];
    round3Key[31:0] =  keyScheduleHelperResWire3^round2Wire[127:96]^round2Wire[95:64]^round2Wire[63:32]^round2Wire[31:0];
  end

  always @( keyScheduleHelperResWire4)
  begin
    round4Key[127:96] =  keyScheduleHelperResWire4^round3Wire[127:96];
    round4Key[95:64] =  keyScheduleHelperResWire4^round3Wire[127:96]^round3Wire[95:64];
    round4Key[63:32] =  keyScheduleHelperResWire4^round3Wire[127:96]^round3Wire[95:64]^round3Wire[63:32];
    round4Key[31:0] =  keyScheduleHelperResWire4^round3Wire[127:96]^round3Wire[95:64]^round3Wire[63:32]^round3Wire[31:0];
  end

  always @( keyScheduleHelperResWire5)
  begin
    round5Key[127:96] =  keyScheduleHelperResWire5^round4Wire[127:96];
    round5Key[95:64] =  keyScheduleHelperResWire5^round4Wire[127:96]^round4Wire[95:64];
    round5Key[63:32] =  keyScheduleHelperResWire5^round4Wire[127:96]^round4Wire[95:64]^round4Wire[63:32];
    round5Key[31:0] =  keyScheduleHelperResWire5^round4Wire[127:96]^round4Wire[95:64]^round4Wire[63:32]^round4Wire[31:0];
  end

  always @( keyScheduleHelperResWire6)
  begin
    round6Key[127:96] =  keyScheduleHelperResWire6^round5Wire[127:96];
    round6Key[95:64] =  keyScheduleHelperResWire6^round5Wire[127:96]^round5Wire[95:64];
    round6Key[63:32] =  keyScheduleHelperResWire6^round5Wire[127:96]^round5Wire[95:64]^round5Wire[63:32];
    round6Key[31:0] =  keyScheduleHelperResWire6^round5Wire[127:96]^round5Wire[95:64]^round5Wire[63:32]^round5Wire[31:0];
  end

  always @( keyScheduleHelperResWire7)
  begin
    round7Key[127:96] =  keyScheduleHelperResWire7^round6Wire[127:96];
    round7Key[95:64] =  keyScheduleHelperResWire7^round6Wire[127:96]^round6Wire[95:64];
    round7Key[63:32] =  keyScheduleHelperResWire7^round6Wire[127:96]^round6Wire[95:64]^round6Wire[63:32];
    round7Key[31:0] =  keyScheduleHelperResWire7^round6Wire[127:96]^round6Wire[95:64]^round6Wire[63:32]^round6Wire[31:0];
  end

  always @( keyScheduleHelperResWire8)
  begin
    round8Key[127:96] =  keyScheduleHelperResWire8^round7Wire[127:96];
    round8Key[95:64] =  keyScheduleHelperResWire8^round7Wire[127:96]^round7Wire[95:64];
    round8Key[63:32] =  keyScheduleHelperResWire8^round7Wire[127:96]^round7Wire[95:64]^round7Wire[63:32];
    round8Key[31:0] =  keyScheduleHelperResWire8^round7Wire[127:96]^round7Wire[95:64]^round7Wire[63:32]^round7Wire[31:0];
  end

  always @( keyScheduleHelperResWire9)
  begin
    round9Key[127:96] =  keyScheduleHelperResWire9^round8Wire[127:96];
    round9Key[95:64] =  keyScheduleHelperResWire9^round8Wire[127:96]^round8Wire[95:64];
    round9Key[63:32] =  keyScheduleHelperResWire9^round8Wire[127:96]^round8Wire[95:64]^round8Wire[63:32];
    round9Key[31:0] =  keyScheduleHelperResWire9^round8Wire[127:96]^round8Wire[95:64]^round8Wire[63:32]^round8Wire[31:0];
  end

  always @( keyScheduleHelperResWire10)
  begin
    round10Key[127:96] =  keyScheduleHelperResWire10^round9Wire[127:96];
    round10Key[95:64] =  keyScheduleHelperResWire10^round9Wire[127:96]^round9Wire[95:64];
    round10Key[63:32] =  keyScheduleHelperResWire10^round9Wire[127:96]^round9Wire[95:64]^round9Wire[63:32];
    round10Key[31:0] =  keyScheduleHelperResWire10^round9Wire[127:96]^round9Wire[95:64]^round9Wire[63:32]^round9Wire[31:0];
  end
  assign expandedRoundKey= {round1Key,round2Key,round3Key,round4Key,round5Key,round6Key,round7Key,round8Key,round9Key,round10Key};
endmodule



module keyScheduleHelper(input wire[31:0]key,input wire[3:0]roundNumber,output wire [31:0] processedW4);

  wire [31:0] processedW;
  wire [31:0] tempprocessedW;

  ///@details Step 1: subword step
  subWord step0(.incomingData(key),.processedData(processedW));


  ///@details Step 2:left circular shift
  assign tempprocessedW = {processedW[23:0],processedW[31:24]};

  ///@details Step 3:calculate Rcon using hardcoded values instead of calculations
  rcon step1(.incomingData(tempprocessedW),.processedData(processedW4),.crtRoundNumber(roundNumber));

endmodule


module subWord(input wire[31:0]incomingData,output wire[31:0]processedData);
  sboxModule step2(.givenData(incomingData[31:24]),.sboxRes(processedData[31:24]));
  sboxModule step3(.givenData(incomingData[23:16]),.sboxRes(processedData[23:16]));
  sboxModule step4(.givenData(incomingData[15:8]),.sboxRes(processedData[15:8]));
  sboxModule step5(.givenData(incomingData[7:0]),.sboxRes(processedData[7:0]));
endmodule

module rcon(input wire[31:0]incomingData,output wire[31:0]processedData,input wire[3:0]crtRoundNumber);
  reg [31:0]c;
  always @*
  begin
    begin
      case(crtRoundNumber)
        0:
          c = incomingData;
        1:
          c = incomingData ^ 32'h01_00_00_00;
        2:
          c = incomingData ^ 32'h02_00_00_00;
        3:
          c = incomingData ^ 32'h04_00_00_00;
        4:
          c = incomingData ^ 32'h08_00_00_00;
        5:
          c = incomingData ^ 32'h10_00_00_00;
        6:
          c = incomingData ^ 32'h20_00_00_00;
        7:
          c = incomingData ^ 32'h40_00_00_00;
        8:
          c = incomingData ^ 32'h80_00_00_00;
        9:
          c = incomingData ^ 32'h1B_00_00_00;
        10:
          c = incomingData ^ 32'h36_00_00_00;
      endcase
    end ;
  end

  assign processedData = c;
endmodule
