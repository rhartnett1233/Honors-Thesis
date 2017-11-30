module sample_circuit ( a, b, c, y );

  input [2:0] a;
  wire [2:0] abar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
//input_done

  output [2:0] y;
  reg [2:0] ybar;
//output_done

  wire n1;
  wire n2;
  wire n3;
  wire [2:0] n4;
  wire n1bar;
  wire n2bar;
  wire n3bar;
  wire [2:0] n4bar;
//wire_done

  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(n1) );
  OR2_X1 U1bar ( .A1(bbar), .A2(abar), .ZN(n1bar) );
  OR2_X1 U4 ( .A1(c), .A2(n1), .ZN(n2) );
  AND2_X1 U4bar ( .A1(cbar), .A2(n1bar), .ZN(n2bar) );
  assign n3bar = a;
  assign n3 = abar;
  AND2_X1 U4 ( .A1(n2), .A2(n3), .ZN(y) );
  OR2_X1 U4bar ( .A1(n2bar), .A2(n3bar), .ZN(ybar) );
endmodule

module sample_circuit1 ( a, b, c, y );

  input [2:0] a;
//input_done

  output [2:0] y;
//output_done

  wire n1;
  wire n2;
  wire n3;
  wire [2:0] n4;
//wire_done

  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(n1) );
  OR2_X1 U4 ( .A1(c), .A2(n1), .ZN(n2) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  AND2_X1 U4 ( .A1(n2), .A2(n3), .ZN(y) );
endmodule

//done
