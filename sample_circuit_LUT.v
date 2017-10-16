module sample_circuit ( a, b, c, d, out );
  input [3:0] a;

  //input_done

  output [2:0] outa;
  //output_done

  //wire_done

  //AND U0
  LUT2 U0(
    .INIT(4'h8)
  ) LUT2_inst (
    .O(n0)
    .I0(a[0])
    .I1(a[1])
  );
  //OR U1
  LUT2 U1(
    .INIT(4'he)
  ) LUT2_inst (
    .O(n1)
    .I0(a[0])
    .I1(n0)
  );
  //AND U2
  LUT2 U2(
    .INIT(4'h8)
  ) LUT2_inst (
    .O(n2)
    .I0(n0)
    .I1(a[2])
  );
  //OR U3
  LUT2 U3(
    .INIT(4'he)
  ) LUT2_inst (
    .O(n3)
    .I0(n1)
    .I1(n2)
  );
  //OR U4
  LUT2 U4(
    .INIT(4'he)
  ) LUT2_inst (
    .O(n4)
    .I0(n3)
    .I1(a[3])
  );
  INV_X1 U5 ( .A(n4), .ZN(out) );


endmodule

//done
