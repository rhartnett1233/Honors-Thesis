
module sample_circuit ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10;
  //wire_done

  assign in_0 = in[0];
  assign out[7] = in_6;
  assign in_6  = in[6];
  assign out[6] = in_5;
  assign in_5  = in[5];
  assign out[5] = in_4;
  assign in_4  = in[4];
  assign out[2] = in_1;
  assign in_1  = in[1];
  assign out[0] = in_7;
  assign in_7  = in[7];

  INV_X1 U1 ( .A(in_7), .ZN(n1) );
  INV_X1 U2 ( .A(in[3]), .ZN(n2) );
  INV_X1 U3 ( .A(in[2]), .ZN(n3) );
  INV_X1 U4 ( .A(in_0), .ZN(n4) );
  OR2_X1 U5 ( .A1(n5), .A2(n6), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n1), .ZN(n6) );
  AND2_X1 U7 ( .A1(in_7), .A2(n2), .ZN(n5) );
  OR2_X1 U8 ( .A1(n7), .A2(n8), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n1), .ZN(n8) );
  AND2_X1 U10 ( .A1(in_7), .A2(n3), .ZN(n7) );
  OR2_X1 U11 ( .A1(n9), .A2(n10), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n1), .ZN(n10) );
  AND2_X1 U13 ( .A1(in_7), .A2(n4), .ZN(n9) );
endmodule
//done