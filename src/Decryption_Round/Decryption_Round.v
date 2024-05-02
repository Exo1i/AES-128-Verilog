module Decryption_Round (
    in,
    key,
    out
);

  input [127:0] in;
  output [127:0] out;
  input [127:0] key;

  function [127:0] addRoundKey;
    input [127:0] crtState;
    input [127:0] crtRoundKey;
    begin
      addRoundKey = crtState ^ crtRoundKey;
    end
  endfunction

  wire [127:0] afterSubBytes;
  wire [127:0] afterShiftRows;
  wire [127:0] afterMixColumns;
  wire [127:0] afterAddroundKey;

  InvSubBytes s (
      in,
      afterSubBytes
  );
  InverseShiftRows r (
      afterSubBytes,
      afterShiftRows
  );
  OrgMixColumns m (
      addRoundKey (afterShiftRows, key),
      out
  );

endmodule
