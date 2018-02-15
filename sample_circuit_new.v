module sample_circuit ( a, b, c, y );

  input a;
  input b;
  input c;
  wire abar;
  wire bbar;
  wire cbar;
  assign abar = ~a;
  assign bbar = ~b;
  assign cbar = ~c;
//input_done

  output y;
  wire ybar;
//output_done

  wire n1;
  wire n2;
  wire n1bar;
  wire n2bar;
//wire_done

  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(n1) );
  OR2_X1 U1bar ( .A1(bbar), .A2(abar), .ZN(n1bar) );
  OR2_X1 U4 ( .A1(c), .A2(n1), .ZN(n2) );
  AND2_X1 U4bar ( .A1(cbar), .A2(n1bar), .ZN(n2bar) );
  AND2_X1 U4 ( .A1(a), .A2(n2), .ZN(y) );
  OR2_X1 U4bar ( .A1(abar), .A2(n2bar), .ZN(ybar) );
endmodule

//done
