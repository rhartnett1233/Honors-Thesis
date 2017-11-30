module sample_circuit ( a, b, c, y );

  input [2:0] a;
  wire [2:0] a;
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
  wire n1bar;
  wire n2bar;
  wire n3bar;
//wire_done

  //AND U1
  LUT2 U1(
    .INIT(4'h8)
  ) LUT2_inst (
    .O(n1)
    .I0(b)
    .I1(a)
  );
  //OR U1bar
  LUT2 U1bar(
    .INIT(4'he)
  ) LUT2_inst (
    .O(n1bar)
    .I0(bbar)
    .I1(abar)
  );
  //OR U4
  LUT2 U4(
    .INIT(4'he)
  ) LUT2_inst (
    .O(n2)
    .I0(c)
    .I1(n1)
  );
  //AND U4bar
  LUT2 U4bar(
    .INIT(4'h8)
  ) LUT2_inst (
    .O(n2bar)
    .I0(cbar)
    .I1(n1bar)
  );
  assign n3bar = a;
  assign n3 = abar;
  //AND U4
  LUT2 U4(
    .INIT(4'h8)
  ) LUT2_inst (
    .O(y)
    .I0(n2)
    .I1(n3)
  );
  //OR U4bar
  LUT2 U4bar(
    .INIT(4'he)
  ) LUT2_inst (
    .O(ybar)
    .I0(n2bar)
    .I1(n3bar)
  );
endmodule

//done
