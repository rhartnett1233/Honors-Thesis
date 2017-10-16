module CD2_77 ( a, b, y );

  input a;
  input b;
  assign abar = ~a;
  assign bbar = ~b;
//input_done

  output [3:0] y;
  reg [3:0] ybar;
//output_done

  wire n3;
  wire n4;
  wire n3bar;
  wire n4bar;
//wire_done

  assign n4bar = a;
  assign n4 = abar;
  assign n3bar = b;
  assign n3 = bbar;
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  OR2_X1 U3bar ( .A1(bbar), .A2(abar), .ZN(ybar[3]);
  AND2_X1 U4 ( .A1(a), .A2(n3), .ZN(y[2]) );
  OR2_X1 U4bar ( .A1(abar), .A2(n3bar), .ZN(ybar[2]);
  AND2_X1 U5 ( .A1(b), .A2(n4), .ZN(y[1]) );
  OR2_X1 U5bar ( .A1(bbar), .A2(n4bar), .ZN(ybar[1]);
  AND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(y[0]) );
  OR2_X1 U6bar ( .A1(n4bar), .A2(n3bar), .ZN(ybar[0]);
endmodule

module CD2_0 ( a, b, y );

  input c;
  input d;
//input_done

  output [3:0] y;
//output_done

  wire n1;
  wire n2;
//wire_done

  INV_X1 U1 ( .A(a), .ZN(n1) );
  INV_X1 U2 ( .A(b), .ZN(n2) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  AND2_X1 U4 ( .A1(a), .A2(n2), .ZN(y[2]) );
  AND2_X1 U5 ( .A1(b), .A2(n1), .ZN(y[1]) );
  AND2_X1 U6 ( .A1(n1), .A2(n2), .ZN(y[0]) );
endmodule

module CD4_0 ( a, b, y );

  input [3:0] e;
  input [3:0] f;
  assign ebar[0] = ~e[0];
  assign ebar[1] = ~e[1];
  assign ebar[2] = ~e[2];
  assign ebar[3] = ~e[3];
  assign fbar[0] = ~f[0];
  assign fbar[1] = ~f[1];
  assign fbar[2] = ~f[2];
  assign fbar[3] = ~f[3];
//input_done

  output [15:0] y;
  reg [15:0] ybar;
//output_done

//wire_done

  AND2_X1 U1 ( .A1(b[1]), .A2(a[2]), .ZN(y[9]) );
  OR2_X1 U1bar ( .A1(bbar[1]), .A2(abar[2]), .ZN(ybar[9]);
  AND2_X1 U2 ( .A1(b[0]), .A2(a[2]), .ZN(y[8]) );
  OR2_X1 U2bar ( .A1(bbar[0]), .A2(abar[2]), .ZN(ybar[8]);
  AND2_X1 U3 ( .A1(b[3]), .A2(a[1]), .ZN(y[7]) );
  OR2_X1 U3bar ( .A1(bbar[3]), .A2(abar[1]), .ZN(ybar[7]);
  AND2_X1 U4 ( .A1(b[2]), .A2(a[1]), .ZN(y[6]) );
  OR2_X1 U4bar ( .A1(bbar[2]), .A2(abar[1]), .ZN(ybar[6]);
  AND2_X1 U5 ( .A1(a[1]), .A2(b[1]), .ZN(y[5]) );
  OR2_X1 U5bar ( .A1(abar[1]), .A2(bbar[1]), .ZN(ybar[5]);
  AND2_X1 U6 ( .A1(a[1]), .A2(b[0]), .ZN(y[4]) );
  OR2_X1 U6bar ( .A1(abar[1]), .A2(bbar[0]), .ZN(ybar[4]);
  AND2_X1 U7 ( .A1(a[0]), .A2(b[3]), .ZN(y[3]) );
  OR2_X1 U7bar ( .A1(abar[0]), .A2(bbar[3]), .ZN(ybar[3]);
  AND2_X1 U8 ( .A1(a[0]), .A2(b[2]), .ZN(y[2]) );
  OR2_X1 U8bar ( .A1(abar[0]), .A2(bbar[2]), .ZN(ybar[2]);
  AND2_X1 U9 ( .A1(a[0]), .A2(b[1]), .ZN(y[1]) );
  OR2_X1 U9bar ( .A1(abar[0]), .A2(bbar[1]), .ZN(ybar[1]);
  AND2_X1 U10 ( .A1(a[3]), .A2(b[3]), .ZN(y[15]) );
  OR2_X1 U10bar ( .A1(abar[3]), .A2(bbar[3]), .ZN(ybar[15]);
  AND2_X1 U11 ( .A1(a[3]), .A2(b[2]), .ZN(y[14]) );
  OR2_X1 U11bar ( .A1(abar[3]), .A2(bbar[2]), .ZN(ybar[14]);
  AND2_X1 U12 ( .A1(a[3]), .A2(b[1]), .ZN(y[13]) );
  OR2_X1 U12bar ( .A1(abar[3]), .A2(bbar[1]), .ZN(ybar[13]);
  AND2_X1 U13 ( .A1(a[3]), .A2(b[0]), .ZN(y[12]) );
  OR2_X1 U13bar ( .A1(abar[3]), .A2(bbar[0]), .ZN(ybar[12]);
  AND2_X1 U14 ( .A1(b[3]), .A2(a[2]), .ZN(y[11]) );
  OR2_X1 U14bar ( .A1(bbar[3]), .A2(abar[2]), .ZN(ybar[11]);
  AND2_X1 U15 ( .A1(b[2]), .A2(a[2]), .ZN(y[10]) );
  OR2_X1 U15bar ( .A1(bbar[2]), .A2(abar[2]), .ZN(ybar[10]);
  AND2_X1 U16 ( .A1(a[0]) .A2(b[0]), .ZN(y[0]) );
  OR2_X1 U16bar ( .A1(abar[0]), .A2(bbar[0]), .ZN(ybar[0]);
endmodule

module CD2_78 ( a, b, y );

  input g;
  input h;
//input_done

  output [3:0] y;
//output_done

  wire n3;
  wire n4;
//wire_done

  INV_X1 U1 ( .A(a), .ZN(n4) );
  INV_X1 U2 ( .A(b), .ZN(n3) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  AND2_X1 U4 ( .A1(a), .A2(n3), .ZN(y[2]) );
  AND2_X1 U5 ( .A1(b), .A2(n4), .ZN(y[1]) );
  AND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(y[0]) );
endmodule

module CD2_79 ( a, b, y );

  input i;
  input j;
//input_done

  output [3:0] y;
//output_done

  wire n3;
  wire n4;
//wire_done

  INV_X1 U1 ( .A(a), .ZN(n4) );
  INV_X1 U2 ( .A(b), .ZN(n3) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  AND2_X1 U4 ( .A1(a), .A2(n3), .ZN(y[2]) );
  AND2_X1 U5 ( .A1(b), .A2(n4), .ZN(y[1]) );
  AND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(y[0]) );
endmodule

module CD2_80 ( a, b, y );

  input k;
  input l;
  assign kbar = ~k;
  assign lbar = ~l;
//input_done

  output [3:0] y;
  reg [3:0] ybar;
//output_done

  wire n3;
  wire n4;
  wire n3bar;
  wire n4bar;
//wire_done

  assign n4bar = a;
  assign n4 = abar;
  assign n3bar = b;
  assign n3 = bbar;
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  OR2_X1 U3bar ( .A1(bbar), .A2(abar), .ZN(ybar[3]);
  AND2_X1 U4 ( .A1(a), .A2(n3), .ZN(y[2]) );
  OR2_X1 U4bar ( .A1(abar), .A2(n3bar), .ZN(ybar[2]);
  AND2_X1 U5 ( .A1(b), .A2(n4), .ZN(y[1]) );
  OR2_X1 U5bar ( .A1(bbar), .A2(n4bar), .ZN(ybar[1]);
  AND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(y[0]) );
  OR2_X1 U6bar ( .A1(n4bar), .A2(n3bar), .ZN(ybar[0]);
endmodule

//done
