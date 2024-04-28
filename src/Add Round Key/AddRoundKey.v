module addRoundKey(
  input wire[127:0] crtState,input wire[127:0] crtRoundKey,output wire[127:0] newState);
  assign newState = crtState^crtRoundKey; 
endmodule
