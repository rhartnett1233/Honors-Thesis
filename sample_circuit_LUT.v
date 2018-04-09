module INV_X1( A, ZN );
  input A;
  //input_done

  output ZN;
  //output_done

  //wire_done
  
  assign ZN = ~A;
endmodule


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
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n5),
    .I1(n6)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n6),
    .I0(in[3]),
    .I1(n1)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n5),
    .I0(in_7),
    .I1(n2)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n7),
    .I1(n8)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n8),
    .I0(in[2]),
    .I1(n1)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n7),
    .I0(in_7),
    .I1(n3)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n9),
    .I1(n10)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n10),
    .I0(in_0),
    .I1(n1)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n9),
    .I0(in_7),
    .I1(n4)
  );
endmodule
//done