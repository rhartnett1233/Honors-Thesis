
module sample_circuit ( a, b, c, y );
  input [2:0] a;
  //input_done

  output [2:0] y;
  //output_done

  wire   n1, n2, n3;
  wire [2:0] n4;
  //wire_done

  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(n1) );
  OR2_X1 U4 ( .A1(c), .A2(n1), .ZN(n2) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  AND2_X1 U4 ( .A1(n2), .A2(n3), .ZN(y) );
endmodule

module sample_circuit1 ( a, b, c, y );
  input [2:0] a;
  //input_done

  output [2:0] y;
  //output_done

  wire   n1, n2, n3;
  wire [2:0] n4;
  //wire_done

  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(n1) );
  OR2_X1 U4 ( .A1(c), .A2(n1), .ZN(n2) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  AND2_X1 U4 ( .A1(n2), .A2(n3), .ZN(y) );
endmodule
//done