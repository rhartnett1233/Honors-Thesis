module sample_circuit ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n1;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire n10;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n1bar;
  wire n2bar;
  wire n3bar;
  wire n4bar;
  wire n5bar;
  wire n6bar;
  wire n7bar;
  wire n8bar;
  wire n9bar;
  wire n10bar;
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
  assign in_0bar = in_0bar;
  assign outbar[7] = outbar[7];
  assign in_6bar = in_6bar;
  assign outbar[6] = outbar[6];
  assign in_5bar = in_5bar;
  assign outbar[5] = outbar[5];
  assign in_4bar = in_4bar;
  assign outbar[2] = outbar[2];
  assign in_1bar = in_1bar;
  assign outbar[0] = outbar[0];
  assign in_7bar = in_7bar;
//assign_done

  assign n1bar = in_7;
  assign n1 = in_7bar;
  assign n2bar = in[3];
  assign n2 = inbar[3];
  assign n3bar = in[2];
  assign n3 = inbar[2];
  assign n4bar = in_0;
  assign n4 = in_0bar;
  OR2_X1 U5 ( .A1(n5), .A2(n6), .ZN(out[4]) );
  AND2_X1 U5bar ( .A1(n5bar), .A2(n6bar), .ZN(outbar[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n1), .ZN(n6) );
  OR2_X1 U6bar ( .A1(inbar[3]), .A2(n1bar), .ZN(n6bar) );
  AND2_X1 U7 ( .A1(in_7), .A2(n2), .ZN(n5) );
  OR2_X1 U7bar ( .A1(in_7bar), .A2(n2bar), .ZN(n5bar) );
  OR2_X1 U8 ( .A1(n7), .A2(n8), .ZN(out[3]) );
  AND2_X1 U8bar ( .A1(n7bar), .A2(n8bar), .ZN(outbar[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n1), .ZN(n8) );
  OR2_X1 U9bar ( .A1(inbar[2]), .A2(n1bar), .ZN(n8bar) );
  AND2_X1 U10 ( .A1(in_7), .A2(n3), .ZN(n7) );
  OR2_X1 U10bar ( .A1(in_7bar), .A2(n3bar), .ZN(n7bar) );
  OR2_X1 U11 ( .A1(n9), .A2(n10), .ZN(out[1]) );
  AND2_X1 U11bar ( .A1(n9bar), .A2(n10bar), .ZN(outbar[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n1), .ZN(n10) );
  OR2_X1 U12bar ( .A1(in_0bar), .A2(n1bar), .ZN(n10bar) );
  AND2_X1 U13 ( .A1(in_7), .A2(n4), .ZN(n9) );
  OR2_X1 U13bar ( .A1(in_7bar), .A2(n4bar), .ZN(n9bar) );
endmodule

//done
