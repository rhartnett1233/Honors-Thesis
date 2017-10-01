module sample_circuit ( a, b, c, d, out );
  input a;
  input b;
  input c;
  input d;
  output out;

  wire n0, n1, n2, n3;

  // AND2_X1 U3 ( .A1(sel), .A2(b[9]), .ZN(n3) );
  // OR2_X1 U2 ( .A1(n2), .A2(n3), .ZN(y[9]) );

  AND2_X1 U0 ( .A1(a), .A2(b), .ZN(n0) );
  OR2_X1 U1 ( .A1(a), .A2(n0), .ZN(n1) );
  AND2_X1 U2 ( .A1(n0), .A2(c), .ZN(n2) );
  OR2_X1 U3 ( .A1(n1), .A2(n2), .ZN(n3) );
  OR2_X1 U4 ( .A1(n3), .A2(d), .ZN(out) );


endmodule
