
module sample_circuit ( a, b, c, y );
  input a, b, c;
  //input_done

  output y;
  //output_done

  wire   n1, n2;
  //wire_done

  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(n1) );
  OR2_X1 U4 ( .A1(c), .A2(n1), .ZN(n2) );
  AND2_X1 U4 ( .A1(a), .A2(n2), .ZN(y) );
endmodule
//done