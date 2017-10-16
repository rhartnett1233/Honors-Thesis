
module CD2_77 ( a, b, y );
  input a, b;
  //input_done

  output [3:0] y;
  //output_done

  wire   n3, n4;
  //wire_done

  INV_X1 U1 ( .A(a), .ZN(n4) );
  INV_X1 U2 ( .A(b), .ZN(n3) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  AND2_X1 U4 ( .A1(a), .A2(n3), .ZN(y[2]) );
  AND2_X1 U5 ( .A1(b), .A2(n4), .ZN(y[1]) );
  AND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(y[0]) );
endmodule


module CD2_0 ( a, b, y );
  input c, d;
  //input_done

  output [3:0] y;
  //output_done

  wire   n1, n2;
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
  //input_done

  output [15:0] y;
  //output_done

  //wire_done


  AND2_X1 U1 ( .A1(b[1]), .A2(a[2]), .ZN(y[9]) );
  AND2_X1 U2 ( .A1(b[0]), .A2(a[2]), .ZN(y[8]) );
  AND2_X1 U3 ( .A1(b[3]), .A2(a[1]), .ZN(y[7]) );
  AND2_X1 U4 ( .A1(b[2]), .A2(a[1]), .ZN(y[6]) );
  AND2_X1 U5 ( .A1(a[1]), .A2(b[1]), .ZN(y[5]) );
  AND2_X1 U6 ( .A1(a[1]), .A2(b[0]), .ZN(y[4]) );
  AND2_X1 U7 ( .A1(a[0]), .A2(b[3]), .ZN(y[3]) );
  AND2_X1 U8 ( .A1(a[0]), .A2(b[2]), .ZN(y[2]) );
  AND2_X1 U9 ( .A1(a[0]), .A2(b[1]), .ZN(y[1]) );
  AND2_X1 U10 ( .A1(a[3]), .A2(b[3]), .ZN(y[15]) );
  AND2_X1 U11 ( .A1(a[3]), .A2(b[2]), .ZN(y[14]) );
  AND2_X1 U12 ( .A1(a[3]), .A2(b[1]), .ZN(y[13]) );
  AND2_X1 U13 ( .A1(a[3]), .A2(b[0]), .ZN(y[12]) );
  AND2_X1 U14 ( .A1(b[3]), .A2(a[2]), .ZN(y[11]) );
  AND2_X1 U15 ( .A1(b[2]), .A2(a[2]), .ZN(y[10]) );
  AND2_X1 U16 ( .A1(a[0]) .A2(b[0]), .ZN(y[0]) );
endmodule


module CD2_78 ( a, b, y );
  input g, h;
  //input_done

  output [3:0] y;
  //output_done

  wire   n3, n4;
  //wire_done

  INV_X1 U1 ( .A(a), .ZN(n4) );
  INV_X1 U2 ( .A(b), .ZN(n3) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  AND2_X1 U4 ( .A1(a), .A2(n3), .ZN(y[2]) );
  AND2_X1 U5 ( .A1(b), .A2(n4), .ZN(y[1]) );
  AND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(y[0]) );
endmodule


module CD2_79 ( a, b, y );
  input i, j;
  //input_done

  output [3:0] y;
  //output_done

  wire   n3, n4;
  //wire_done

  INV_X1 U1 ( .A(a), .ZN(n4) );
  INV_X1 U2 ( .A(b), .ZN(n3) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  AND2_X1 U4 ( .A1(a), .A2(n3), .ZN(y[2]) );
  AND2_X1 U5 ( .A1(b), .A2(n4), .ZN(y[1]) );
  AND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(y[0]) );
endmodule


module CD2_80 ( a, b, y );
  input k, l;
  //input_done

  output [3:0] y;
  //output_done

  wire   n3, n4;
  //wire_done

  INV_X1 U1 ( .A(a), .ZN(n4) );
  INV_X1 U2 ( .A(b), .ZN(n3) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(y[3]) );
  AND2_X1 U4 ( .A1(a), .A2(n3), .ZN(y[2]) );
  AND2_X1 U5 ( .A1(b), .A2(n4), .ZN(y[1]) );
  AND2_X1 U6 ( .A1(n4), .A2(n3), .ZN(y[0]) );
endmodule

//done
