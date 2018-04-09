
module scale2_0 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n1;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire n10;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n1bar;
  wire n2bar;
  wire n3bar;
  wire n4bar;
  wire n5bar;
  wire n6bar;
  wire n7bar;
  wire n8bar;
  wire n9bar;
  wire n10bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n1bar = in_7;
  assign n1 = in_7bar;
  assign n2bar = in[3];
  assign n2 = inbar[3];
  assign n3bar = in[2];
  assign n3 = inbar[2];
  assign n4bar = in_0;
  assign n4 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n5),
    .I1(n6)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n5bar),
    .I1(n6bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n6),
    .I0(in[3]),
    .I1(n1)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n6bar),
    .I0(inbar[3]),
    .I1(n1bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n5),
    .I0(in_7),
    .I1(n2)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n5bar),
    .I0(in_7bar),
    .I1(n2bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n7),
    .I1(n8)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n7bar),
    .I1(n8bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n8),
    .I0(in[2]),
    .I1(n1)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n8bar),
    .I0(inbar[2]),
    .I1(n1bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n7),
    .I0(in_7),
    .I1(n3)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n7bar),
    .I0(in_7bar),
    .I1(n3bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n9),
    .I1(n10)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n9bar),
    .I1(n10bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n10),
    .I0(in_0),
    .I1(n1)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n10bar),
    .I0(in_0bar),
    .I1(n1bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n9),
    .I0(in_7),
    .I1(n4)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n9bar),
    .I0(in_7bar),
    .I1(n4bar)
  );
endmodule

module byteXor_0 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n1;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n30;
  wire n31;
  wire n32;
  wire n1bar;
  wire n2bar;
  wire n3bar;
  wire n4bar;
  wire n5bar;
  wire n6bar;
  wire n7bar;
  wire n8bar;
  wire n9bar;
  wire n10bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
  wire n21bar;
  wire n22bar;
  wire n23bar;
  wire n24bar;
  wire n25bar;
  wire n26bar;
  wire n27bar;
  wire n28bar;
  wire n29bar;
  wire n30bar;
  wire n31bar;
  wire n32bar;
//wire_done

 //assign_done

  assign n1bar = n18;
  assign n1 = n18bar;
  assign n2bar = a[7];
  assign n2 = abar[7];
  assign n3bar = n20;
  assign n3 = n20bar;
  assign n4bar = a[6];
  assign n4 = abar[6];
  assign n5bar = n22;
  assign n5 = n22bar;
  assign n6bar = a[5];
  assign n6 = abar[5];
  assign n7bar = n24;
  assign n7 = n24bar;
  assign n8bar = a[4];
  assign n8 = abar[4];
  assign n9bar = n26;
  assign n9 = n26bar;
  assign n10bar = a[3];
  assign n10 = abar[3];
  assign n11bar = n28;
  assign n11 = n28bar;
  assign n12bar = a[2];
  assign n12 = abar[2];
  assign n13bar = n30;
  assign n13 = n30bar;
  assign n14bar = a[1];
  assign n14 = abar[1];
  assign n15bar = n32;
  assign n15 = n32bar;
  assign n16bar = a[0];
  assign n16 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n17),
    .I1(n1)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n17bar),
    .I1(n1bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n18),
    .I0(n2),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n18bar),
    .I0(n2bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n17),
    .I0(b[7]),
    .I1(n2)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n17bar),
    .I0(bbar[7]),
    .I1(n2bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n19),
    .I1(n3)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n19bar),
    .I1(n3bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n20),
    .I0(n4),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n20bar),
    .I0(n4bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n19),
    .I0(b[6]),
    .I1(n4)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n19bar),
    .I0(bbar[6]),
    .I1(n4bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n21),
    .I1(n5)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n21bar),
    .I1(n5bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n22),
    .I0(n6),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n22bar),
    .I0(n6bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n21),
    .I0(b[5]),
    .I1(n6)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n21bar),
    .I0(bbar[5]),
    .I1(n6bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n23),
    .I1(n7)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n23bar),
    .I1(n7bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n24),
    .I0(n8),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n24bar),
    .I0(n8bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n23),
    .I0(b[4]),
    .I1(n8)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n23bar),
    .I0(bbar[4]),
    .I1(n8bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n25),
    .I1(n9)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n25bar),
    .I1(n9bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n26),
    .I0(n10),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n26bar),
    .I0(n10bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n25),
    .I0(b[3]),
    .I1(n10)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n25bar),
    .I0(bbar[3]),
    .I1(n10bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n27),
    .I1(n11)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n27bar),
    .I1(n11bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n28),
    .I0(n12),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n28bar),
    .I0(n12bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n27),
    .I0(b[2]),
    .I1(n12)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n27bar),
    .I0(bbar[2]),
    .I1(n12bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n29),
    .I1(n13)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n29bar),
    .I1(n13bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n30),
    .I0(n14),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n30bar),
    .I0(n14bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n29),
    .I0(b[1]),
    .I1(n14)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n29bar),
    .I0(bbar[1]),
    .I1(n14bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n31),
    .I1(n15)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n31bar),
    .I1(n15bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n32),
    .I0(n16),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n32bar),
    .I0(n16bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n31),
    .I0(b[0]),
    .I1(n16)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n31bar),
    .I0(bbar[0]),
    .I1(n16bar)
  );
endmodule

module byteXor4_0 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n1;
  wire n2;
  wire n3;
  wire n4;
  wire n5;
  wire n6;
  wire n7;
  wire n8;
  wire n9;
  wire n10;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire n21;
  wire n22;
  wire n23;
  wire n24;
  wire n25;
  wire n26;
  wire n27;
  wire n28;
  wire n29;
  wire n30;
  wire n31;
  wire n32;
  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n65;
  wire n66;
  wire n67;
  wire n68;
  wire n69;
  wire n70;
  wire n71;
  wire n72;
  wire n73;
  wire n74;
  wire n75;
  wire n76;
  wire n77;
  wire n78;
  wire n79;
  wire n80;
  wire n81;
  wire n82;
  wire n83;
  wire n84;
  wire n85;
  wire n86;
  wire n87;
  wire n88;
  wire n89;
  wire n90;
  wire n91;
  wire n92;
  wire n93;
  wire n94;
  wire n95;
  wire n96;
  wire n97;
  wire n98;
  wire n99;
  wire n100;
  wire n101;
  wire n102;
  wire n103;
  wire n104;
  wire n105;
  wire n106;
  wire n107;
  wire n108;
  wire n109;
  wire n110;
  wire n111;
  wire n112;
  wire n1bar;
  wire n2bar;
  wire n3bar;
  wire n4bar;
  wire n5bar;
  wire n6bar;
  wire n7bar;
  wire n8bar;
  wire n9bar;
  wire n10bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
  wire n21bar;
  wire n22bar;
  wire n23bar;
  wire n24bar;
  wire n25bar;
  wire n26bar;
  wire n27bar;
  wire n28bar;
  wire n29bar;
  wire n30bar;
  wire n31bar;
  wire n32bar;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
  wire n65bar;
  wire n66bar;
  wire n67bar;
  wire n68bar;
  wire n69bar;
  wire n70bar;
  wire n71bar;
  wire n72bar;
  wire n73bar;
  wire n74bar;
  wire n75bar;
  wire n76bar;
  wire n77bar;
  wire n78bar;
  wire n79bar;
  wire n80bar;
  wire n81bar;
  wire n82bar;
  wire n83bar;
  wire n84bar;
  wire n85bar;
  wire n86bar;
  wire n87bar;
  wire n88bar;
  wire n89bar;
  wire n90bar;
  wire n91bar;
  wire n92bar;
  wire n93bar;
  wire n94bar;
  wire n95bar;
  wire n96bar;
  wire n97bar;
  wire n98bar;
  wire n99bar;
  wire n100bar;
  wire n101bar;
  wire n102bar;
  wire n103bar;
  wire n104bar;
  wire n105bar;
  wire n106bar;
  wire n107bar;
  wire n108bar;
  wire n109bar;
  wire n110bar;
  wire n111bar;
  wire n112bar;
//wire_done

 //assign_done

  assign n1bar = n50;
  assign n1 = n50bar;
  assign n2bar = a[7];
  assign n2 = abar[7];
  assign n3bar = n58;
  assign n3 = n58bar;
  assign n4bar = a[6];
  assign n4 = abar[6];
  assign n5bar = n66;
  assign n5 = n66bar;
  assign n6bar = a[5];
  assign n6 = abar[5];
  assign n7bar = n74;
  assign n7 = n74bar;
  assign n8bar = a[4];
  assign n8 = abar[4];
  assign n9bar = n82;
  assign n9 = n82bar;
  assign n10bar = a[3];
  assign n10 = abar[3];
  assign n11bar = n90;
  assign n11 = n90bar;
  assign n12bar = a[2];
  assign n12 = abar[2];
  assign n13bar = n98;
  assign n13 = n98bar;
  assign n14bar = a[1];
  assign n14 = abar[1];
  assign n15bar = n106;
  assign n15 = n106bar;
  assign n16bar = a[0];
  assign n16 = abar[0];
  assign n17bar = b[7];
  assign n17 = bbar[7];
  assign n18bar = b[6];
  assign n18 = bbar[6];
  assign n19bar = b[5];
  assign n19 = bbar[5];
  assign n20bar = b[4];
  assign n20 = bbar[4];
  assign n21bar = b[3];
  assign n21 = bbar[3];
  assign n22bar = b[2];
  assign n22 = bbar[2];
  assign n23bar = b[1];
  assign n23 = bbar[1];
  assign n24bar = b[0];
  assign n24 = bbar[0];
  assign n25bar = n54;
  assign n25 = n54bar;
  assign n26bar = c[7];
  assign n26 = cbar[7];
  assign n27bar = n62;
  assign n27 = n62bar;
  assign n28bar = c[6];
  assign n28 = cbar[6];
  assign n29bar = n70;
  assign n29 = n70bar;
  assign n30bar = c[5];
  assign n30 = cbar[5];
  assign n31bar = n78;
  assign n31 = n78bar;
  assign n32bar = c[4];
  assign n32 = cbar[4];
  assign n33bar = n86;
  assign n33 = n86bar;
  assign n34bar = c[3];
  assign n34 = cbar[3];
  assign n35bar = n94;
  assign n35 = n94bar;
  assign n36bar = c[2];
  assign n36 = cbar[2];
  assign n37bar = n102;
  assign n37 = n102bar;
  assign n38bar = c[1];
  assign n38 = cbar[1];
  assign n39bar = n110;
  assign n39 = n110bar;
  assign n40bar = c[0];
  assign n40 = cbar[0];
  assign n41bar = d[7];
  assign n41 = dbar[7];
  assign n42bar = d[6];
  assign n42 = dbar[6];
  assign n43bar = d[5];
  assign n43 = dbar[5];
  assign n44bar = d[4];
  assign n44 = dbar[4];
  assign n45bar = d[3];
  assign n45 = dbar[3];
  assign n46bar = d[2];
  assign n46 = dbar[2];
  assign n47bar = d[1];
  assign n47 = dbar[1];
  assign n48bar = d[0];
  assign n48 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n49),
    .I1(n1)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n49bar),
    .I1(n1bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n50),
    .I0(n51),
    .I1(n25)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n50bar),
    .I0(n51bar),
    .I1(n25bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n49),
    .I0(n25),
    .I1(n51)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n49bar),
    .I0(n25bar),
    .I1(n51bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n51),
    .I0(n52),
    .I1(n53)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n51bar),
    .I0(n52bar),
    .I1(n53bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n53),
    .I0(n2),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n53bar),
    .I0(n2bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n52),
    .I0(n17),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n52bar),
    .I0(n17bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n54),
    .I0(n55),
    .I1(n56)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n54bar),
    .I0(n55bar),
    .I1(n56bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n56),
    .I0(n26),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n56bar),
    .I0(n26bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n55),
    .I0(n41),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n55bar),
    .I0(n41bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n57),
    .I1(n3)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n57bar),
    .I1(n3bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n58),
    .I0(n59),
    .I1(n27)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n58bar),
    .I0(n59bar),
    .I1(n27bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n57),
    .I0(n27),
    .I1(n59)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n57bar),
    .I0(n27bar),
    .I1(n59bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n59),
    .I0(n60),
    .I1(n61)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n59bar),
    .I0(n60bar),
    .I1(n61bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n61),
    .I0(n4),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n61bar),
    .I0(n4bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n60),
    .I0(n18),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n60bar),
    .I0(n18bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n62),
    .I0(n63),
    .I1(n64)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n62bar),
    .I0(n63bar),
    .I1(n64bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n64),
    .I0(n28),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n64bar),
    .I0(n28bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n63),
    .I0(n42),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n63bar),
    .I0(n42bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n65),
    .I1(n5)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n65bar),
    .I1(n5bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n66),
    .I0(n67),
    .I1(n29)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n66bar),
    .I0(n67bar),
    .I1(n29bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n65),
    .I0(n29),
    .I1(n67)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n65bar),
    .I0(n29bar),
    .I1(n67bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n67),
    .I0(n68),
    .I1(n69)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n67bar),
    .I0(n68bar),
    .I1(n69bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n69),
    .I0(n6),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n69bar),
    .I0(n6bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n68),
    .I0(n19),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n68bar),
    .I0(n19bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n70),
    .I0(n71),
    .I1(n72)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n70bar),
    .I0(n71bar),
    .I1(n72bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n72),
    .I0(n30),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n72bar),
    .I0(n30bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n71),
    .I0(n43),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n71bar),
    .I0(n43bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n73),
    .I1(n7)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n73bar),
    .I1(n7bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n74),
    .I0(n75),
    .I1(n31)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n74bar),
    .I0(n75bar),
    .I1(n31bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n73),
    .I0(n31),
    .I1(n75)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n73bar),
    .I0(n31bar),
    .I1(n75bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n75),
    .I0(n76),
    .I1(n77)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n75bar),
    .I0(n76bar),
    .I1(n77bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n77),
    .I0(n8),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n77bar),
    .I0(n8bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n76),
    .I0(n20),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n76bar),
    .I0(n20bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n78),
    .I0(n79),
    .I1(n80)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n78bar),
    .I0(n79bar),
    .I1(n80bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n80),
    .I0(n32),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n80bar),
    .I0(n32bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n79),
    .I0(n44),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n79bar),
    .I0(n44bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n81),
    .I1(n9)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n81bar),
    .I1(n9bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n82),
    .I0(n83),
    .I1(n33)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n82bar),
    .I0(n83bar),
    .I1(n33bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n81),
    .I0(n33),
    .I1(n83)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n81bar),
    .I0(n33bar),
    .I1(n83bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n83),
    .I0(n84),
    .I1(n85)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n83bar),
    .I0(n84bar),
    .I1(n85bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n85),
    .I0(n10),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n85bar),
    .I0(n10bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n84),
    .I0(n21),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n84bar),
    .I0(n21bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n86),
    .I0(n87),
    .I1(n88)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n86bar),
    .I0(n87bar),
    .I1(n88bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n88),
    .I0(n34),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n88bar),
    .I0(n34bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n87),
    .I0(n45),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n87bar),
    .I0(n45bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n89),
    .I1(n11)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n89bar),
    .I1(n11bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n90),
    .I0(n91),
    .I1(n35)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n90bar),
    .I0(n91bar),
    .I1(n35bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n89),
    .I0(n35),
    .I1(n91)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n89bar),
    .I0(n35bar),
    .I1(n91bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n91),
    .I0(n92),
    .I1(n93)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n91bar),
    .I0(n92bar),
    .I1(n93bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n93),
    .I0(n12),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n93bar),
    .I0(n12bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n92),
    .I0(n22),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n92bar),
    .I0(n22bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n94),
    .I0(n95),
    .I1(n96)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n94bar),
    .I0(n95bar),
    .I1(n96bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n96),
    .I0(n36),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n96bar),
    .I0(n36bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n95),
    .I0(n46),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n95bar),
    .I0(n46bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n97),
    .I1(n13)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n97bar),
    .I1(n13bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n98),
    .I0(n99),
    .I1(n37)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n98bar),
    .I0(n99bar),
    .I1(n37bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n97),
    .I0(n37),
    .I1(n99)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n97bar),
    .I0(n37bar),
    .I1(n99bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n99),
    .I0(n100),
    .I1(n101)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n99bar),
    .I0(n100bar),
    .I1(n101bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n101),
    .I0(n14),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n101bar),
    .I0(n14bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n100),
    .I0(n23),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n100bar),
    .I0(n23bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n102),
    .I0(n103),
    .I1(n104)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n102bar),
    .I0(n103bar),
    .I1(n104bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n104),
    .I0(n38),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n104bar),
    .I0(n38bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n103),
    .I0(n47),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n103bar),
    .I0(n47bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n105),
    .I1(n15)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n105bar),
    .I1(n15bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n106),
    .I0(n107),
    .I1(n39)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n106bar),
    .I0(n107bar),
    .I1(n39bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n105),
    .I0(n39),
    .I1(n107)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n105bar),
    .I0(n39bar),
    .I1(n107bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n107),
    .I0(n108),
    .I1(n109)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n107bar),
    .I0(n108bar),
    .I1(n109bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n109),
    .I0(n16),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n109bar),
    .I0(n16bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n108),
    .I0(n24),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n108bar),
    .I0(n24bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n110),
    .I0(n111),
    .I1(n112)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n110bar),
    .I0(n111bar),
    .I1(n112bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n112),
    .I0(n40),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n112bar),
    .I0(n40bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n111),
    .I0(n48),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n111bar),
    .I0(n48bar),
    .I1(cbar[0])
  );
endmodule

module scale2_13 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_14 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_15 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module byteXor_14 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_15 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_16 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor4_13 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_14 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_15 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module mixCol_0 ( in, out );

  input wire [31:0] in;
//input_done

  output wire [31:0] out;
//output_done

  wire [7:0] b0_s2;
  wire [7:0] b1_s2;
  wire [7:0] b2_s2;
  wire [7:0] b3_s2;
  wire [7:0] b0_s3;
  wire [7:0] b1_s3;
  wire [7:0] b2_s3;
  wire [7:0] b3_s3;
//wire_done

 //assign_done

  scale2_0 b0_scale2 ( .in(in[31:24]), .out(b0_s2) );
  scale2_15 b1_scale2 ( .in(in[23:16]), .out(b1_s2) );
  scale2_14 b2_scale2 ( .in(in[15:8]), .out(b2_s2) );
  scale2_13 b3_scale2 ( .in(in[7:0]), .out(b3_s2) );
  byteXor_0 b0_scale3 ( .a(in[31:24]), .b(b0_s2), .y(b0_s3) );
  byteXor_16 b1_scale3 ( .a(in[23:16]), .b(b1_s2), .y(b1_s3) );
  byteXor_15 b2_scale3 ( .a(in[15:8]), .b(b2_s2), .y(b2_s3) );
  byteXor_14 b3_scale3 ( .a(in[7:0]), .b(b3_s2), .y(b3_s3) );
  byteXor4_0 out0 ( .a(b0_s2), .b(b1_s3), .c(in[15:8]), .d(in[7:0]), .y(
        out[31:24]) );
  byteXor4_15 out1 ( .a(in[31:24]), .b(b1_s2), .c(b2_s3), .d(in[7:0]), .y(
        out[23:16]) );
  byteXor4_14 out2 ( .a(in[31:24]), .b(in[23:16]), .c(b2_s2), .d(b3_s3), .y(
        out[15:8]) );
  byteXor4_13 out3 ( .a(b0_s3), .b(in[23:16]), .c(in[15:8]), .d(b3_s2), .y(
        out[7:0]) );
endmodule

module scale2_1 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_2 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_3 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_4 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module byteXor_2 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_3 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_4 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_5 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor4_1 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_2 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_3 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_4 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module mixCol_1 ( in, out );

  input wire [31:0] in;
//input_done

  output wire [31:0] out;
//output_done

  wire [7:0] b0_s2;
  wire [7:0] b1_s2;
  wire [7:0] b2_s2;
  wire [7:0] b3_s2;
  wire [7:0] b0_s3;
  wire [7:0] b1_s3;
  wire [7:0] b2_s3;
  wire [7:0] b3_s3;
//wire_done

 //assign_done

  scale2_4 b0_scale2 ( .in(in[31:24]), .out(b0_s2) );
  scale2_3 b1_scale2 ( .in(in[23:16]), .out(b1_s2) );
  scale2_2 b2_scale2 ( .in(in[15:8]), .out(b2_s2) );
  scale2_1 b3_scale2 ( .in(in[7:0]), .out(b3_s2) );
  byteXor_5 b0_scale3 ( .a(in[31:24]), .b(b0_s2), .y(b0_s3) );
  byteXor_4 b1_scale3 ( .a(in[23:16]), .b(b1_s2), .y(b1_s3) );
  byteXor_3 b2_scale3 ( .a(in[15:8]), .b(b2_s2), .y(b2_s3) );
  byteXor_2 b3_scale3 ( .a(in[7:0]), .b(b3_s2), .y(b3_s3) );
  byteXor4_4 out0 ( .a(b0_s2), .b(b1_s3), .c(in[15:8]), .d(in[7:0]), .y(
        out[31:24]) );
  byteXor4_3 out1 ( .a(in[31:24]), .b(b1_s2), .c(b2_s3), .d(in[7:0]), .y(
        out[23:16]) );
  byteXor4_2 out2 ( .a(in[31:24]), .b(in[23:16]), .c(b2_s2), .d(b3_s3), .y(
        out[15:8]) );
  byteXor4_1 out3 ( .a(b0_s3), .b(in[23:16]), .c(in[15:8]), .d(b3_s2), .y(
        out[7:0]) );
endmodule

module scale2_5 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_6 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_7 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_8 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module byteXor_6 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_7 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_8 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_9 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor4_5 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_6 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_7 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_8 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module mixCol_2 ( in, out );

  input wire [31:0] in;
//input_done

  output wire [31:0] out;
//output_done

  wire [7:0] b0_s2;
  wire [7:0] b1_s2;
  wire [7:0] b2_s2;
  wire [7:0] b3_s2;
  wire [7:0] b0_s3;
  wire [7:0] b1_s3;
  wire [7:0] b2_s3;
  wire [7:0] b3_s3;
//wire_done

 //assign_done

  scale2_8 b0_scale2 ( .in(in[31:24]), .out(b0_s2) );
  scale2_7 b1_scale2 ( .in(in[23:16]), .out(b1_s2) );
  scale2_6 b2_scale2 ( .in(in[15:8]), .out(b2_s2) );
  scale2_5 b3_scale2 ( .in(in[7:0]), .out(b3_s2) );
  byteXor_9 b0_scale3 ( .a(in[31:24]), .b(b0_s2), .y(b0_s3) );
  byteXor_8 b1_scale3 ( .a(in[23:16]), .b(b1_s2), .y(b1_s3) );
  byteXor_7 b2_scale3 ( .a(in[15:8]), .b(b2_s2), .y(b2_s3) );
  byteXor_6 b3_scale3 ( .a(in[7:0]), .b(b3_s2), .y(b3_s3) );
  byteXor4_8 out0 ( .a(b0_s2), .b(b1_s3), .c(in[15:8]), .d(in[7:0]), .y(
        out[31:24]) );
  byteXor4_7 out1 ( .a(in[31:24]), .b(b1_s2), .c(b2_s3), .d(in[7:0]), .y(
        out[23:16]) );
  byteXor4_6 out2 ( .a(in[31:24]), .b(in[23:16]), .c(b2_s2), .d(b3_s3), .y(
        out[15:8]) );
  byteXor4_5 out3 ( .a(b0_s3), .b(in[23:16]), .c(in[15:8]), .d(b3_s2), .y(
        out[7:0]) );
endmodule

module scale2_9 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_10 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_11 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module scale2_12 ( in, out );

  input wire [7:0] in;
  wire [7:0] inbar;
  assign inbar[0] = ~in[0];
  assign inbar[1] = ~in[1];
  assign inbar[2] = ~in[2];
  assign inbar[3] = ~in[3];
  assign inbar[4] = ~in[4];
  assign inbar[5] = ~in[5];
  assign inbar[6] = ~in[6];
  assign inbar[7] = ~in[7];
//input_done

  output wire [7:0] out;
  wire [7:0] outbar;
//output_done

  wire in_0;
  wire in_6;
  wire in_5;
  wire in_4;
  wire in_1;
  wire in_7;
  wire n11;
  wire n12;
  wire n13;
  wire n14;
  wire n15;
  wire n16;
  wire n17;
  wire n18;
  wire n19;
  wire n20;
  wire in_0bar;
  wire in_6bar;
  wire in_5bar;
  wire in_4bar;
  wire in_1bar;
  wire in_7bar;
  wire n11bar;
  wire n12bar;
  wire n13bar;
  wire n14bar;
  wire n15bar;
  wire n16bar;
  wire n17bar;
  wire n18bar;
  wire n19bar;
  wire n20bar;
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
  assign in_0bar = inbar[0];
  assign outbar[7] = in_6bar;
  assign in_6bar = inbar[6];
  assign outbar[6] = in_5bar;
  assign in_5bar = inbar[5];
  assign outbar[5] = in_4bar;
  assign in_4bar = inbar[4];
  assign outbar[2] = in_1bar;
  assign in_1bar = inbar[1];
  assign outbar[0] = in_7bar;
  assign in_7bar = inbar[7];
//assign_done

  assign n20bar = in_7;
  assign n20 = in_7bar;
  assign n19bar = in[3];
  assign n19 = inbar[3];
  assign n18bar = in[2];
  assign n18 = inbar[2];
  assign n17bar = in_0;
  assign n17 = in_0bar;
  //OR U5
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U5 (
    .O(out[4]),
    .I0(n16),
    .I1(n15)
  );
  //AND U5bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U5bar (
    .O(outbar[4]),
    .I0(n16bar),
    .I1(n15bar)
  );
  //AND U6
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U6 (
    .O(n15),
    .I0(in[3]),
    .I1(n20)
  );
  //OR U6bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U6bar (
    .O(n15bar),
    .I0(inbar[3]),
    .I1(n20bar)
  );
  //AND U7
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U7 (
    .O(n16),
    .I0(in_7),
    .I1(n19)
  );
  //OR U7bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U7bar (
    .O(n16bar),
    .I0(in_7bar),
    .I1(n19bar)
  );
  //OR U8
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U8 (
    .O(out[3]),
    .I0(n14),
    .I1(n13)
  );
  //AND U8bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U8bar (
    .O(outbar[3]),
    .I0(n14bar),
    .I1(n13bar)
  );
  //AND U9
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U9 (
    .O(n13),
    .I0(in[2]),
    .I1(n20)
  );
  //OR U9bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U9bar (
    .O(n13bar),
    .I0(inbar[2]),
    .I1(n20bar)
  );
  //AND U10
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U10 (
    .O(n14),
    .I0(in_7),
    .I1(n18)
  );
  //OR U10bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U10bar (
    .O(n14bar),
    .I0(in_7bar),
    .I1(n18bar)
  );
  //OR U11
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U11 (
    .O(out[1]),
    .I0(n12),
    .I1(n11)
  );
  //AND U11bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U11bar (
    .O(outbar[1]),
    .I0(n12bar),
    .I1(n11bar)
  );
  //AND U12
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U12 (
    .O(n11),
    .I0(in_0),
    .I1(n20)
  );
  //OR U12bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U12bar (
    .O(n11bar),
    .I0(in_0bar),
    .I1(n20bar)
  );
  //AND U13
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U13 (
    .O(n12),
    .I0(in_7),
    .I1(n17)
  );
  //OR U13bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U13bar (
    .O(n12bar),
    .I0(in_7bar),
    .I1(n17bar)
  );
endmodule

module byteXor_10 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_11 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_12 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor_13 ( a, b, y );

  input wire [7:0] a;
  input wire [7:0] b;
  wire [7:0] abar;
  wire [7:0] bbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n33;
  wire n34;
  wire n35;
  wire n36;
  wire n37;
  wire n38;
  wire n39;
  wire n40;
  wire n41;
  wire n42;
  wire n43;
  wire n44;
  wire n45;
  wire n46;
  wire n47;
  wire n48;
  wire n49;
  wire n50;
  wire n51;
  wire n52;
  wire n53;
  wire n54;
  wire n55;
  wire n56;
  wire n57;
  wire n58;
  wire n59;
  wire n60;
  wire n61;
  wire n62;
  wire n63;
  wire n64;
  wire n33bar;
  wire n34bar;
  wire n35bar;
  wire n36bar;
  wire n37bar;
  wire n38bar;
  wire n39bar;
  wire n40bar;
  wire n41bar;
  wire n42bar;
  wire n43bar;
  wire n44bar;
  wire n45bar;
  wire n46bar;
  wire n47bar;
  wire n48bar;
  wire n49bar;
  wire n50bar;
  wire n51bar;
  wire n52bar;
  wire n53bar;
  wire n54bar;
  wire n55bar;
  wire n56bar;
  wire n57bar;
  wire n58bar;
  wire n59bar;
  wire n60bar;
  wire n61bar;
  wire n62bar;
  wire n63bar;
  wire n64bar;
//wire_done

 //assign_done

  assign n64bar = n47;
  assign n64 = n47bar;
  assign n63bar = a[7];
  assign n63 = abar[7];
  assign n62bar = n45;
  assign n62 = n45bar;
  assign n61bar = a[6];
  assign n61 = abar[6];
  assign n60bar = n43;
  assign n60 = n43bar;
  assign n59bar = a[5];
  assign n59 = abar[5];
  assign n58bar = n41;
  assign n58 = n41bar;
  assign n57bar = a[4];
  assign n57 = abar[4];
  assign n56bar = n39;
  assign n56 = n39bar;
  assign n55bar = a[3];
  assign n55 = abar[3];
  assign n54bar = n37;
  assign n54 = n37bar;
  assign n53bar = a[2];
  assign n53 = abar[2];
  assign n52bar = n35;
  assign n52 = n35bar;
  assign n51bar = a[1];
  assign n51 = abar[1];
  assign n50bar = n33;
  assign n50 = n33bar;
  assign n49bar = a[0];
  assign n49 = abar[0];
  //OR U17
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U17 (
    .O(y[7]),
    .I0(n48),
    .I1(n64)
  );
  //AND U17bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U17bar (
    .O(ybar[7]),
    .I0(n48bar),
    .I1(n64bar)
  );
  //OR U18
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U18 (
    .O(n47),
    .I0(n63),
    .I1(b[7])
  );
  //AND U18bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U18bar (
    .O(n47bar),
    .I0(n63bar),
    .I1(bbar[7])
  );
  //AND U19
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U19 (
    .O(n48),
    .I0(b[7]),
    .I1(n63)
  );
  //OR U19bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U19bar (
    .O(n48bar),
    .I0(bbar[7]),
    .I1(n63bar)
  );
  //OR U20
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U20 (
    .O(y[6]),
    .I0(n46),
    .I1(n62)
  );
  //AND U20bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U20bar (
    .O(ybar[6]),
    .I0(n46bar),
    .I1(n62bar)
  );
  //OR U21
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U21 (
    .O(n45),
    .I0(n61),
    .I1(b[6])
  );
  //AND U21bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U21bar (
    .O(n45bar),
    .I0(n61bar),
    .I1(bbar[6])
  );
  //AND U22
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U22 (
    .O(n46),
    .I0(b[6]),
    .I1(n61)
  );
  //OR U22bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U22bar (
    .O(n46bar),
    .I0(bbar[6]),
    .I1(n61bar)
  );
  //OR U23
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U23 (
    .O(y[5]),
    .I0(n44),
    .I1(n60)
  );
  //AND U23bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U23bar (
    .O(ybar[5]),
    .I0(n44bar),
    .I1(n60bar)
  );
  //OR U24
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U24 (
    .O(n43),
    .I0(n59),
    .I1(b[5])
  );
  //AND U24bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U24bar (
    .O(n43bar),
    .I0(n59bar),
    .I1(bbar[5])
  );
  //AND U25
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U25 (
    .O(n44),
    .I0(b[5]),
    .I1(n59)
  );
  //OR U25bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U25bar (
    .O(n44bar),
    .I0(bbar[5]),
    .I1(n59bar)
  );
  //OR U26
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U26 (
    .O(y[4]),
    .I0(n42),
    .I1(n58)
  );
  //AND U26bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U26bar (
    .O(ybar[4]),
    .I0(n42bar),
    .I1(n58bar)
  );
  //OR U27
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U27 (
    .O(n41),
    .I0(n57),
    .I1(b[4])
  );
  //AND U27bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U27bar (
    .O(n41bar),
    .I0(n57bar),
    .I1(bbar[4])
  );
  //AND U28
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U28 (
    .O(n42),
    .I0(b[4]),
    .I1(n57)
  );
  //OR U28bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U28bar (
    .O(n42bar),
    .I0(bbar[4]),
    .I1(n57bar)
  );
  //OR U29
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U29 (
    .O(y[3]),
    .I0(n40),
    .I1(n56)
  );
  //AND U29bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U29bar (
    .O(ybar[3]),
    .I0(n40bar),
    .I1(n56bar)
  );
  //OR U30
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U30 (
    .O(n39),
    .I0(n55),
    .I1(b[3])
  );
  //AND U30bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U30bar (
    .O(n39bar),
    .I0(n55bar),
    .I1(bbar[3])
  );
  //AND U31
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U31 (
    .O(n40),
    .I0(b[3]),
    .I1(n55)
  );
  //OR U31bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U31bar (
    .O(n40bar),
    .I0(bbar[3]),
    .I1(n55bar)
  );
  //OR U32
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U32 (
    .O(y[2]),
    .I0(n38),
    .I1(n54)
  );
  //AND U32bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U32bar (
    .O(ybar[2]),
    .I0(n38bar),
    .I1(n54bar)
  );
  //OR U33
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U33 (
    .O(n37),
    .I0(n53),
    .I1(b[2])
  );
  //AND U33bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U33bar (
    .O(n37bar),
    .I0(n53bar),
    .I1(bbar[2])
  );
  //AND U34
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U34 (
    .O(n38),
    .I0(b[2]),
    .I1(n53)
  );
  //OR U34bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U34bar (
    .O(n38bar),
    .I0(bbar[2]),
    .I1(n53bar)
  );
  //OR U35
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U35 (
    .O(y[1]),
    .I0(n36),
    .I1(n52)
  );
  //AND U35bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U35bar (
    .O(ybar[1]),
    .I0(n36bar),
    .I1(n52bar)
  );
  //OR U36
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U36 (
    .O(n35),
    .I0(n51),
    .I1(b[1])
  );
  //AND U36bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U36bar (
    .O(n35bar),
    .I0(n51bar),
    .I1(bbar[1])
  );
  //AND U37
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U37 (
    .O(n36),
    .I0(b[1]),
    .I1(n51)
  );
  //OR U37bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U37bar (
    .O(n36bar),
    .I0(bbar[1]),
    .I1(n51bar)
  );
  //OR U38
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U38 (
    .O(y[0]),
    .I0(n34),
    .I1(n50)
  );
  //AND U38bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U38bar (
    .O(ybar[0]),
    .I0(n34bar),
    .I1(n50bar)
  );
  //OR U39
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U39 (
    .O(n33),
    .I0(n49),
    .I1(b[0])
  );
  //AND U39bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U39bar (
    .O(n33bar),
    .I0(n49bar),
    .I1(bbar[0])
  );
  //AND U40
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U40 (
    .O(n34),
    .I0(b[0]),
    .I1(n49)
  );
  //OR U40bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U40bar (
    .O(n34bar),
    .I0(bbar[0]),
    .I1(n49bar)
  );
endmodule

module byteXor4_9 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_10 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_11 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module byteXor4_12 ( a, b, c, d, y );

  input wire [7:0] a;
  input wire [7:0] b;
  input wire [7:0] c;
  input wire [7:0] d;
  wire [7:0] abar;
  wire [7:0] bbar;
  wire [7:0] cbar;
  wire [7:0] dbar;
  assign abar[0] = ~a[0];
  assign abar[1] = ~a[1];
  assign abar[2] = ~a[2];
  assign abar[3] = ~a[3];
  assign abar[4] = ~a[4];
  assign abar[5] = ~a[5];
  assign abar[6] = ~a[6];
  assign abar[7] = ~a[7];
  assign bbar[0] = ~b[0];
  assign bbar[1] = ~b[1];
  assign bbar[2] = ~b[2];
  assign bbar[3] = ~b[3];
  assign bbar[4] = ~b[4];
  assign bbar[5] = ~b[5];
  assign bbar[6] = ~b[6];
  assign bbar[7] = ~b[7];
  assign cbar[0] = ~c[0];
  assign cbar[1] = ~c[1];
  assign cbar[2] = ~c[2];
  assign cbar[3] = ~c[3];
  assign cbar[4] = ~c[4];
  assign cbar[5] = ~c[5];
  assign cbar[6] = ~c[6];
  assign cbar[7] = ~c[7];
  assign dbar[0] = ~d[0];
  assign dbar[1] = ~d[1];
  assign dbar[2] = ~d[2];
  assign dbar[3] = ~d[3];
  assign dbar[4] = ~d[4];
  assign dbar[5] = ~d[5];
  assign dbar[6] = ~d[6];
  assign dbar[7] = ~d[7];
//input_done

  output wire [7:0] y;
  wire [7:0] ybar;
//output_done

  wire n113;
  wire n114;
  wire n115;
  wire n116;
  wire n117;
  wire n118;
  wire n119;
  wire n120;
  wire n121;
  wire n122;
  wire n123;
  wire n124;
  wire n125;
  wire n126;
  wire n127;
  wire n128;
  wire n129;
  wire n130;
  wire n131;
  wire n132;
  wire n133;
  wire n134;
  wire n135;
  wire n136;
  wire n137;
  wire n138;
  wire n139;
  wire n140;
  wire n141;
  wire n142;
  wire n143;
  wire n144;
  wire n145;
  wire n146;
  wire n147;
  wire n148;
  wire n149;
  wire n150;
  wire n151;
  wire n152;
  wire n153;
  wire n154;
  wire n155;
  wire n156;
  wire n157;
  wire n158;
  wire n159;
  wire n160;
  wire n161;
  wire n162;
  wire n163;
  wire n164;
  wire n165;
  wire n166;
  wire n167;
  wire n168;
  wire n169;
  wire n170;
  wire n171;
  wire n172;
  wire n173;
  wire n174;
  wire n175;
  wire n176;
  wire n177;
  wire n178;
  wire n179;
  wire n180;
  wire n181;
  wire n182;
  wire n183;
  wire n184;
  wire n185;
  wire n186;
  wire n187;
  wire n188;
  wire n189;
  wire n190;
  wire n191;
  wire n192;
  wire n193;
  wire n194;
  wire n195;
  wire n196;
  wire n197;
  wire n198;
  wire n199;
  wire n200;
  wire n201;
  wire n202;
  wire n203;
  wire n204;
  wire n205;
  wire n206;
  wire n207;
  wire n208;
  wire n209;
  wire n210;
  wire n211;
  wire n212;
  wire n213;
  wire n214;
  wire n215;
  wire n216;
  wire n217;
  wire n218;
  wire n219;
  wire n220;
  wire n221;
  wire n222;
  wire n223;
  wire n224;
  wire n113bar;
  wire n114bar;
  wire n115bar;
  wire n116bar;
  wire n117bar;
  wire n118bar;
  wire n119bar;
  wire n120bar;
  wire n121bar;
  wire n122bar;
  wire n123bar;
  wire n124bar;
  wire n125bar;
  wire n126bar;
  wire n127bar;
  wire n128bar;
  wire n129bar;
  wire n130bar;
  wire n131bar;
  wire n132bar;
  wire n133bar;
  wire n134bar;
  wire n135bar;
  wire n136bar;
  wire n137bar;
  wire n138bar;
  wire n139bar;
  wire n140bar;
  wire n141bar;
  wire n142bar;
  wire n143bar;
  wire n144bar;
  wire n145bar;
  wire n146bar;
  wire n147bar;
  wire n148bar;
  wire n149bar;
  wire n150bar;
  wire n151bar;
  wire n152bar;
  wire n153bar;
  wire n154bar;
  wire n155bar;
  wire n156bar;
  wire n157bar;
  wire n158bar;
  wire n159bar;
  wire n160bar;
  wire n161bar;
  wire n162bar;
  wire n163bar;
  wire n164bar;
  wire n165bar;
  wire n166bar;
  wire n167bar;
  wire n168bar;
  wire n169bar;
  wire n170bar;
  wire n171bar;
  wire n172bar;
  wire n173bar;
  wire n174bar;
  wire n175bar;
  wire n176bar;
  wire n177bar;
  wire n178bar;
  wire n179bar;
  wire n180bar;
  wire n181bar;
  wire n182bar;
  wire n183bar;
  wire n184bar;
  wire n185bar;
  wire n186bar;
  wire n187bar;
  wire n188bar;
  wire n189bar;
  wire n190bar;
  wire n191bar;
  wire n192bar;
  wire n193bar;
  wire n194bar;
  wire n195bar;
  wire n196bar;
  wire n197bar;
  wire n198bar;
  wire n199bar;
  wire n200bar;
  wire n201bar;
  wire n202bar;
  wire n203bar;
  wire n204bar;
  wire n205bar;
  wire n206bar;
  wire n207bar;
  wire n208bar;
  wire n209bar;
  wire n210bar;
  wire n211bar;
  wire n212bar;
  wire n213bar;
  wire n214bar;
  wire n215bar;
  wire n216bar;
  wire n217bar;
  wire n218bar;
  wire n219bar;
  wire n220bar;
  wire n221bar;
  wire n222bar;
  wire n223bar;
  wire n224bar;
//wire_done

 //assign_done

  assign n224bar = n175;
  assign n224 = n175bar;
  assign n223bar = a[7];
  assign n223 = abar[7];
  assign n222bar = n167;
  assign n222 = n167bar;
  assign n221bar = a[6];
  assign n221 = abar[6];
  assign n220bar = n159;
  assign n220 = n159bar;
  assign n219bar = a[5];
  assign n219 = abar[5];
  assign n218bar = n151;
  assign n218 = n151bar;
  assign n217bar = a[4];
  assign n217 = abar[4];
  assign n216bar = n143;
  assign n216 = n143bar;
  assign n215bar = a[3];
  assign n215 = abar[3];
  assign n214bar = n135;
  assign n214 = n135bar;
  assign n213bar = a[2];
  assign n213 = abar[2];
  assign n212bar = n127;
  assign n212 = n127bar;
  assign n211bar = a[1];
  assign n211 = abar[1];
  assign n210bar = n119;
  assign n210 = n119bar;
  assign n209bar = a[0];
  assign n209 = abar[0];
  assign n208bar = b[7];
  assign n208 = bbar[7];
  assign n207bar = b[6];
  assign n207 = bbar[6];
  assign n206bar = b[5];
  assign n206 = bbar[5];
  assign n205bar = b[4];
  assign n205 = bbar[4];
  assign n204bar = b[3];
  assign n204 = bbar[3];
  assign n203bar = b[2];
  assign n203 = bbar[2];
  assign n202bar = b[1];
  assign n202 = bbar[1];
  assign n201bar = b[0];
  assign n201 = bbar[0];
  assign n200bar = n171;
  assign n200 = n171bar;
  assign n199bar = c[7];
  assign n199 = cbar[7];
  assign n198bar = n163;
  assign n198 = n163bar;
  assign n197bar = c[6];
  assign n197 = cbar[6];
  assign n196bar = n155;
  assign n196 = n155bar;
  assign n195bar = c[5];
  assign n195 = cbar[5];
  assign n194bar = n147;
  assign n194 = n147bar;
  assign n193bar = c[4];
  assign n193 = cbar[4];
  assign n192bar = n139;
  assign n192 = n139bar;
  assign n191bar = c[3];
  assign n191 = cbar[3];
  assign n190bar = n131;
  assign n190 = n131bar;
  assign n189bar = c[2];
  assign n189 = cbar[2];
  assign n188bar = n123;
  assign n188 = n123bar;
  assign n187bar = c[1];
  assign n187 = cbar[1];
  assign n186bar = n115;
  assign n186 = n115bar;
  assign n185bar = c[0];
  assign n185 = cbar[0];
  assign n184bar = d[7];
  assign n184 = dbar[7];
  assign n183bar = d[6];
  assign n183 = dbar[6];
  assign n182bar = d[5];
  assign n182 = dbar[5];
  assign n181bar = d[4];
  assign n181 = dbar[4];
  assign n180bar = d[3];
  assign n180 = dbar[3];
  assign n179bar = d[2];
  assign n179 = dbar[2];
  assign n178bar = d[1];
  assign n178 = dbar[1];
  assign n177bar = d[0];
  assign n177 = dbar[0];
  //OR U49
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U49 (
    .O(y[7]),
    .I0(n176),
    .I1(n224)
  );
  //AND U49bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U49bar (
    .O(ybar[7]),
    .I0(n176bar),
    .I1(n224bar)
  );
  //OR U50
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U50 (
    .O(n175),
    .I0(n174),
    .I1(n200)
  );
  //AND U50bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U50bar (
    .O(n175bar),
    .I0(n174bar),
    .I1(n200bar)
  );
  //AND U51
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U51 (
    .O(n176),
    .I0(n200),
    .I1(n174)
  );
  //OR U51bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U51bar (
    .O(n176bar),
    .I0(n200bar),
    .I1(n174bar)
  );
  //AND U52
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U52 (
    .O(n174),
    .I0(n173),
    .I1(n172)
  );
  //OR U52bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U52bar (
    .O(n174bar),
    .I0(n173bar),
    .I1(n172bar)
  );
  //OR U53
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U53 (
    .O(n172),
    .I0(n223),
    .I1(b[7])
  );
  //AND U53bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U53bar (
    .O(n172bar),
    .I0(n223bar),
    .I1(bbar[7])
  );
  //OR U54
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U54 (
    .O(n173),
    .I0(n208),
    .I1(a[7])
  );
  //AND U54bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U54bar (
    .O(n173bar),
    .I0(n208bar),
    .I1(abar[7])
  );
  //AND U55
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U55 (
    .O(n171),
    .I0(n170),
    .I1(n169)
  );
  //OR U55bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U55bar (
    .O(n171bar),
    .I0(n170bar),
    .I1(n169bar)
  );
  //OR U56
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U56 (
    .O(n169),
    .I0(n199),
    .I1(d[7])
  );
  //AND U56bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U56bar (
    .O(n169bar),
    .I0(n199bar),
    .I1(dbar[7])
  );
  //OR U57
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U57 (
    .O(n170),
    .I0(n184),
    .I1(c[7])
  );
  //AND U57bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U57bar (
    .O(n170bar),
    .I0(n184bar),
    .I1(cbar[7])
  );
  //OR U58
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U58 (
    .O(y[6]),
    .I0(n168),
    .I1(n222)
  );
  //AND U58bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U58bar (
    .O(ybar[6]),
    .I0(n168bar),
    .I1(n222bar)
  );
  //OR U59
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U59 (
    .O(n167),
    .I0(n166),
    .I1(n198)
  );
  //AND U59bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U59bar (
    .O(n167bar),
    .I0(n166bar),
    .I1(n198bar)
  );
  //AND U60
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U60 (
    .O(n168),
    .I0(n198),
    .I1(n166)
  );
  //OR U60bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U60bar (
    .O(n168bar),
    .I0(n198bar),
    .I1(n166bar)
  );
  //AND U61
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U61 (
    .O(n166),
    .I0(n165),
    .I1(n164)
  );
  //OR U61bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U61bar (
    .O(n166bar),
    .I0(n165bar),
    .I1(n164bar)
  );
  //OR U62
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U62 (
    .O(n164),
    .I0(n221),
    .I1(b[6])
  );
  //AND U62bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U62bar (
    .O(n164bar),
    .I0(n221bar),
    .I1(bbar[6])
  );
  //OR U63
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U63 (
    .O(n165),
    .I0(n207),
    .I1(a[6])
  );
  //AND U63bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U63bar (
    .O(n165bar),
    .I0(n207bar),
    .I1(abar[6])
  );
  //AND U64
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U64 (
    .O(n163),
    .I0(n162),
    .I1(n161)
  );
  //OR U64bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U64bar (
    .O(n163bar),
    .I0(n162bar),
    .I1(n161bar)
  );
  //OR U65
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U65 (
    .O(n161),
    .I0(n197),
    .I1(d[6])
  );
  //AND U65bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U65bar (
    .O(n161bar),
    .I0(n197bar),
    .I1(dbar[6])
  );
  //OR U66
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U66 (
    .O(n162),
    .I0(n183),
    .I1(c[6])
  );
  //AND U66bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U66bar (
    .O(n162bar),
    .I0(n183bar),
    .I1(cbar[6])
  );
  //OR U67
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U67 (
    .O(y[5]),
    .I0(n160),
    .I1(n220)
  );
  //AND U67bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U67bar (
    .O(ybar[5]),
    .I0(n160bar),
    .I1(n220bar)
  );
  //OR U68
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U68 (
    .O(n159),
    .I0(n158),
    .I1(n196)
  );
  //AND U68bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U68bar (
    .O(n159bar),
    .I0(n158bar),
    .I1(n196bar)
  );
  //AND U69
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U69 (
    .O(n160),
    .I0(n196),
    .I1(n158)
  );
  //OR U69bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U69bar (
    .O(n160bar),
    .I0(n196bar),
    .I1(n158bar)
  );
  //AND U70
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U70 (
    .O(n158),
    .I0(n157),
    .I1(n156)
  );
  //OR U70bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U70bar (
    .O(n158bar),
    .I0(n157bar),
    .I1(n156bar)
  );
  //OR U71
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U71 (
    .O(n156),
    .I0(n219),
    .I1(b[5])
  );
  //AND U71bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U71bar (
    .O(n156bar),
    .I0(n219bar),
    .I1(bbar[5])
  );
  //OR U72
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U72 (
    .O(n157),
    .I0(n206),
    .I1(a[5])
  );
  //AND U72bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U72bar (
    .O(n157bar),
    .I0(n206bar),
    .I1(abar[5])
  );
  //AND U73
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U73 (
    .O(n155),
    .I0(n154),
    .I1(n153)
  );
  //OR U73bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U73bar (
    .O(n155bar),
    .I0(n154bar),
    .I1(n153bar)
  );
  //OR U74
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U74 (
    .O(n153),
    .I0(n195),
    .I1(d[5])
  );
  //AND U74bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U74bar (
    .O(n153bar),
    .I0(n195bar),
    .I1(dbar[5])
  );
  //OR U75
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U75 (
    .O(n154),
    .I0(n182),
    .I1(c[5])
  );
  //AND U75bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U75bar (
    .O(n154bar),
    .I0(n182bar),
    .I1(cbar[5])
  );
  //OR U76
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U76 (
    .O(y[4]),
    .I0(n152),
    .I1(n218)
  );
  //AND U76bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U76bar (
    .O(ybar[4]),
    .I0(n152bar),
    .I1(n218bar)
  );
  //OR U77
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U77 (
    .O(n151),
    .I0(n150),
    .I1(n194)
  );
  //AND U77bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U77bar (
    .O(n151bar),
    .I0(n150bar),
    .I1(n194bar)
  );
  //AND U78
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U78 (
    .O(n152),
    .I0(n194),
    .I1(n150)
  );
  //OR U78bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U78bar (
    .O(n152bar),
    .I0(n194bar),
    .I1(n150bar)
  );
  //AND U79
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U79 (
    .O(n150),
    .I0(n149),
    .I1(n148)
  );
  //OR U79bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U79bar (
    .O(n150bar),
    .I0(n149bar),
    .I1(n148bar)
  );
  //OR U80
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U80 (
    .O(n148),
    .I0(n217),
    .I1(b[4])
  );
  //AND U80bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U80bar (
    .O(n148bar),
    .I0(n217bar),
    .I1(bbar[4])
  );
  //OR U81
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U81 (
    .O(n149),
    .I0(n205),
    .I1(a[4])
  );
  //AND U81bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U81bar (
    .O(n149bar),
    .I0(n205bar),
    .I1(abar[4])
  );
  //AND U82
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U82 (
    .O(n147),
    .I0(n146),
    .I1(n145)
  );
  //OR U82bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U82bar (
    .O(n147bar),
    .I0(n146bar),
    .I1(n145bar)
  );
  //OR U83
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U83 (
    .O(n145),
    .I0(n193),
    .I1(d[4])
  );
  //AND U83bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U83bar (
    .O(n145bar),
    .I0(n193bar),
    .I1(dbar[4])
  );
  //OR U84
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U84 (
    .O(n146),
    .I0(n181),
    .I1(c[4])
  );
  //AND U84bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U84bar (
    .O(n146bar),
    .I0(n181bar),
    .I1(cbar[4])
  );
  //OR U85
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U85 (
    .O(y[3]),
    .I0(n144),
    .I1(n216)
  );
  //AND U85bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U85bar (
    .O(ybar[3]),
    .I0(n144bar),
    .I1(n216bar)
  );
  //OR U86
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U86 (
    .O(n143),
    .I0(n142),
    .I1(n192)
  );
  //AND U86bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U86bar (
    .O(n143bar),
    .I0(n142bar),
    .I1(n192bar)
  );
  //AND U87
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U87 (
    .O(n144),
    .I0(n192),
    .I1(n142)
  );
  //OR U87bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U87bar (
    .O(n144bar),
    .I0(n192bar),
    .I1(n142bar)
  );
  //AND U88
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U88 (
    .O(n142),
    .I0(n141),
    .I1(n140)
  );
  //OR U88bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U88bar (
    .O(n142bar),
    .I0(n141bar),
    .I1(n140bar)
  );
  //OR U89
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U89 (
    .O(n140),
    .I0(n215),
    .I1(b[3])
  );
  //AND U89bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U89bar (
    .O(n140bar),
    .I0(n215bar),
    .I1(bbar[3])
  );
  //OR U90
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U90 (
    .O(n141),
    .I0(n204),
    .I1(a[3])
  );
  //AND U90bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U90bar (
    .O(n141bar),
    .I0(n204bar),
    .I1(abar[3])
  );
  //AND U91
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U91 (
    .O(n139),
    .I0(n138),
    .I1(n137)
  );
  //OR U91bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U91bar (
    .O(n139bar),
    .I0(n138bar),
    .I1(n137bar)
  );
  //OR U92
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U92 (
    .O(n137),
    .I0(n191),
    .I1(d[3])
  );
  //AND U92bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U92bar (
    .O(n137bar),
    .I0(n191bar),
    .I1(dbar[3])
  );
  //OR U93
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U93 (
    .O(n138),
    .I0(n180),
    .I1(c[3])
  );
  //AND U93bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U93bar (
    .O(n138bar),
    .I0(n180bar),
    .I1(cbar[3])
  );
  //OR U94
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U94 (
    .O(y[2]),
    .I0(n136),
    .I1(n214)
  );
  //AND U94bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U94bar (
    .O(ybar[2]),
    .I0(n136bar),
    .I1(n214bar)
  );
  //OR U95
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U95 (
    .O(n135),
    .I0(n134),
    .I1(n190)
  );
  //AND U95bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U95bar (
    .O(n135bar),
    .I0(n134bar),
    .I1(n190bar)
  );
  //AND U96
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U96 (
    .O(n136),
    .I0(n190),
    .I1(n134)
  );
  //OR U96bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U96bar (
    .O(n136bar),
    .I0(n190bar),
    .I1(n134bar)
  );
  //AND U97
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U97 (
    .O(n134),
    .I0(n133),
    .I1(n132)
  );
  //OR U97bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U97bar (
    .O(n134bar),
    .I0(n133bar),
    .I1(n132bar)
  );
  //OR U98
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U98 (
    .O(n132),
    .I0(n213),
    .I1(b[2])
  );
  //AND U98bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U98bar (
    .O(n132bar),
    .I0(n213bar),
    .I1(bbar[2])
  );
  //OR U99
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U99 (
    .O(n133),
    .I0(n203),
    .I1(a[2])
  );
  //AND U99bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U99bar (
    .O(n133bar),
    .I0(n203bar),
    .I1(abar[2])
  );
  //AND U100
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U100 (
    .O(n131),
    .I0(n130),
    .I1(n129)
  );
  //OR U100bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U100bar (
    .O(n131bar),
    .I0(n130bar),
    .I1(n129bar)
  );
  //OR U101
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U101 (
    .O(n129),
    .I0(n189),
    .I1(d[2])
  );
  //AND U101bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U101bar (
    .O(n129bar),
    .I0(n189bar),
    .I1(dbar[2])
  );
  //OR U102
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U102 (
    .O(n130),
    .I0(n179),
    .I1(c[2])
  );
  //AND U102bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U102bar (
    .O(n130bar),
    .I0(n179bar),
    .I1(cbar[2])
  );
  //OR U103
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U103 (
    .O(y[1]),
    .I0(n128),
    .I1(n212)
  );
  //AND U103bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U103bar (
    .O(ybar[1]),
    .I0(n128bar),
    .I1(n212bar)
  );
  //OR U104
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U104 (
    .O(n127),
    .I0(n126),
    .I1(n188)
  );
  //AND U104bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U104bar (
    .O(n127bar),
    .I0(n126bar),
    .I1(n188bar)
  );
  //AND U105
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U105 (
    .O(n128),
    .I0(n188),
    .I1(n126)
  );
  //OR U105bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U105bar (
    .O(n128bar),
    .I0(n188bar),
    .I1(n126bar)
  );
  //AND U106
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U106 (
    .O(n126),
    .I0(n125),
    .I1(n124)
  );
  //OR U106bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U106bar (
    .O(n126bar),
    .I0(n125bar),
    .I1(n124bar)
  );
  //OR U107
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U107 (
    .O(n124),
    .I0(n211),
    .I1(b[1])
  );
  //AND U107bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U107bar (
    .O(n124bar),
    .I0(n211bar),
    .I1(bbar[1])
  );
  //OR U108
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U108 (
    .O(n125),
    .I0(n202),
    .I1(a[1])
  );
  //AND U108bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U108bar (
    .O(n125bar),
    .I0(n202bar),
    .I1(abar[1])
  );
  //AND U109
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U109 (
    .O(n123),
    .I0(n122),
    .I1(n121)
  );
  //OR U109bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U109bar (
    .O(n123bar),
    .I0(n122bar),
    .I1(n121bar)
  );
  //OR U110
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U110 (
    .O(n121),
    .I0(n187),
    .I1(d[1])
  );
  //AND U110bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U110bar (
    .O(n121bar),
    .I0(n187bar),
    .I1(dbar[1])
  );
  //OR U111
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U111 (
    .O(n122),
    .I0(n178),
    .I1(c[1])
  );
  //AND U111bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U111bar (
    .O(n122bar),
    .I0(n178bar),
    .I1(cbar[1])
  );
  //OR U112
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U112 (
    .O(y[0]),
    .I0(n120),
    .I1(n210)
  );
  //AND U112bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U112bar (
    .O(ybar[0]),
    .I0(n120bar),
    .I1(n210bar)
  );
  //OR U113
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U113 (
    .O(n119),
    .I0(n118),
    .I1(n186)
  );
  //AND U113bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U113bar (
    .O(n119bar),
    .I0(n118bar),
    .I1(n186bar)
  );
  //AND U114
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U114 (
    .O(n120),
    .I0(n186),
    .I1(n118)
  );
  //OR U114bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U114bar (
    .O(n120bar),
    .I0(n186bar),
    .I1(n118bar)
  );
  //AND U115
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U115 (
    .O(n118),
    .I0(n117),
    .I1(n116)
  );
  //OR U115bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U115bar (
    .O(n118bar),
    .I0(n117bar),
    .I1(n116bar)
  );
  //OR U116
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U116 (
    .O(n116),
    .I0(n209),
    .I1(b[0])
  );
  //AND U116bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U116bar (
    .O(n116bar),
    .I0(n209bar),
    .I1(bbar[0])
  );
  //OR U117
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U117 (
    .O(n117),
    .I0(n201),
    .I1(a[0])
  );
  //AND U117bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U117bar (
    .O(n117bar),
    .I0(n201bar),
    .I1(abar[0])
  );
  //AND U118
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U118 (
    .O(n115),
    .I0(n114),
    .I1(n113)
  );
  //OR U118bar
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U118bar (
    .O(n115bar),
    .I0(n114bar),
    .I1(n113bar)
  );
  //OR U119
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U119 (
    .O(n113),
    .I0(n185),
    .I1(d[0])
  );
  //AND U119bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U119bar (
    .O(n113bar),
    .I0(n185bar),
    .I1(dbar[0])
  );
  //OR U120
  LUT2 #(
    .INIT(4'he)
  ) LUT2_U120 (
    .O(n114),
    .I0(n177),
    .I1(c[0])
  );
  //AND U120bar
  LUT2 #(
    .INIT(4'h8)
  ) LUT2_U120bar (
    .O(n114bar),
    .I0(n177bar),
    .I1(cbar[0])
  );
endmodule

module mixCol_3 ( in, out );

  input wire [31:0] in;
//input_done

  output wire [31:0] out;
//output_done

  wire [7:0] b0_s2;
  wire [7:0] b1_s2;
  wire [7:0] b2_s2;
  wire [7:0] b3_s2;
  wire [7:0] b0_s3;
  wire [7:0] b1_s3;
  wire [7:0] b2_s3;
  wire [7:0] b3_s3;
//wire_done

 //assign_done

  scale2_12 b0_scale2 ( .in(in[31:24]), .out(b0_s2) );
  scale2_11 b1_scale2 ( .in(in[23:16]), .out(b1_s2) );
  scale2_10 b2_scale2 ( .in(in[15:8]), .out(b2_s2) );
  scale2_9 b3_scale2 ( .in(in[7:0]), .out(b3_s2) );
  byteXor_13 b0_scale3 ( .a(in[31:24]), .b(b0_s2), .y(b0_s3) );
  byteXor_12 b1_scale3 ( .a(in[23:16]), .b(b1_s2), .y(b1_s3) );
  byteXor_11 b2_scale3 ( .a(in[15:8]), .b(b2_s2), .y(b2_s3) );
  byteXor_10 b3_scale3 ( .a(in[7:0]), .b(b3_s2), .y(b3_s3) );
  byteXor4_12 out0 ( .a(b0_s2), .b(b1_s3), .c(in[15:8]), .d(in[7:0]), .y(
        out[31:24]) );
  byteXor4_11 out1 ( .a(in[31:24]), .b(b1_s2), .c(b2_s3), .d(in[7:0]), .y(
        out[23:16]) );
  byteXor4_10 out2 ( .a(in[31:24]), .b(in[23:16]), .c(b2_s2), .d(b3_s3), .y(
        out[15:8]) );
  byteXor4_9 out3 ( .a(b0_s3), .b(in[23:16]), .c(in[15:8]), .d(b3_s2), .y(
        out[7:0]) );
endmodule

module mixCol_LUT ( in, out );

  input wire [127:0] in;
//input_done

  output [127:0] out;
//output_done

//wire_done

 //assign_done

  mixCol_0 m0( .in(in[127:96]), .out(out[127:96]) );
  mixCol_3 m1( .in(in[95:64]), .out(out[95:64]) );
  mixCol_2 m2( .in(in[63:32]), .out(out[63:32]) );
  mixCol_1 m3( .in(in[31:0]), .out(out[31:0]) );
endmodule

//done
