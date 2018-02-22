`timescale 1ns / 1ps

module AND2_X1( A1, A2, ZN );
  input wire A1;
  input wire A2;
  //input_done

  output wire ZN;
  //output_done

  //wire_done

  assign ZN = A1 & A2;
endmodule


module OR2_X1( A1, A2, ZN );
  input wire A1;
  input wire A2;
  //input_done

  output wire ZN;
  //output_done

  //wire_done

  assign ZN = A1 | A2;
endmodule

module INV_X1( A, ZN );
  input wire A;
  //input_done

  output wire ZN;
  //output_done

  //wire_done
  
  assign ZN = ~A;
endmodule

/****************************
Mix_Col 0
****************************/
module scale2_0 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10;
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

  INV_X1 U1 ( .A(in_7), .ZN(n1) );
  INV_X1 U2 ( .A(in[3]), .ZN(n2) );
  INV_X1 U3 ( .A(in[2]), .ZN(n3) );
  INV_X1 U4 ( .A(in_0), .ZN(n4) );
  OR2_X1 U5 ( .A1(n5), .A2(n6), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n1), .ZN(n6) );
  AND2_X1 U7 ( .A1(in_7), .A2(n2), .ZN(n5) );
  OR2_X1 U8 ( .A1(n7), .A2(n8), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n1), .ZN(n8) );
  AND2_X1 U10 ( .A1(in_7), .A2(n3), .ZN(n7) );
  OR2_X1 U11 ( .A1(n9), .A2(n10), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n1), .ZN(n10) );
  AND2_X1 U13 ( .A1(in_7), .A2(n4), .ZN(n9) );
endmodule


module byteXor_0 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;
  //wire_done

  INV_X1 U1 ( .A(n18), .ZN(n1) );
  INV_X1 U2 ( .A(a[7]), .ZN(n2) );
  INV_X1 U3 ( .A(n20), .ZN(n3) );
  INV_X1 U4 ( .A(a[6]), .ZN(n4) );
  INV_X1 U5 ( .A(n22), .ZN(n5) );
  INV_X1 U6 ( .A(a[5]), .ZN(n6) );
  INV_X1 U7 ( .A(n24), .ZN(n7) );
  INV_X1 U8 ( .A(a[4]), .ZN(n8) );
  INV_X1 U9 ( .A(n26), .ZN(n9) );
  INV_X1 U10 ( .A(a[3]), .ZN(n10) );
  INV_X1 U11 ( .A(n28), .ZN(n11) );
  INV_X1 U12 ( .A(a[2]), .ZN(n12) );
  INV_X1 U13 ( .A(n30), .ZN(n13) );
  INV_X1 U14 ( .A(a[1]), .ZN(n14) );
  INV_X1 U15 ( .A(n32), .ZN(n15) );
  INV_X1 U16 ( .A(a[0]), .ZN(n16) );
  OR2_X1 U17 ( .A1(n17), .A2(n1), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n2), .A2(b[7]), .ZN(n18) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n2), .ZN(n17) );
  OR2_X1 U20 ( .A1(n19), .A2(n3), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n4), .A2(b[6]), .ZN(n20) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n4), .ZN(n19) );
  OR2_X1 U23 ( .A1(n21), .A2(n5), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n6), .A2(b[5]), .ZN(n22) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n6), .ZN(n21) );
  OR2_X1 U26 ( .A1(n23), .A2(n7), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n8), .A2(b[4]), .ZN(n24) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n8), .ZN(n23) );
  OR2_X1 U29 ( .A1(n25), .A2(n9), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n10), .A2(b[3]), .ZN(n26) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n10), .ZN(n25) );
  OR2_X1 U32 ( .A1(n27), .A2(n11), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n12), .A2(b[2]), .ZN(n28) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n12), .ZN(n27) );
  OR2_X1 U35 ( .A1(n29), .A2(n13), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n14), .A2(b[1]), .ZN(n30) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n14), .ZN(n29) );
  OR2_X1 U38 ( .A1(n31), .A2(n15), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n16), .A2(b[0]), .ZN(n32) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n16), .ZN(n31) );
endmodule


module byteXor4_0 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112;
  //wire_done

  INV_X1 U1 ( .A(n50), .ZN(n1) );
  INV_X1 U2 ( .A(a[7]), .ZN(n2) );
  INV_X1 U3 ( .A(n58), .ZN(n3) );
  INV_X1 U4 ( .A(a[6]), .ZN(n4) );
  INV_X1 U5 ( .A(n66), .ZN(n5) );
  INV_X1 U6 ( .A(a[5]), .ZN(n6) );
  INV_X1 U7 ( .A(n74), .ZN(n7) );
  INV_X1 U8 ( .A(a[4]), .ZN(n8) );
  INV_X1 U9 ( .A(n82), .ZN(n9) );
  INV_X1 U10 ( .A(a[3]), .ZN(n10) );
  INV_X1 U11 ( .A(n90), .ZN(n11) );
  INV_X1 U12 ( .A(a[2]), .ZN(n12) );
  INV_X1 U13 ( .A(n98), .ZN(n13) );
  INV_X1 U14 ( .A(a[1]), .ZN(n14) );
  INV_X1 U15 ( .A(n106), .ZN(n15) );
  INV_X1 U16 ( .A(a[0]), .ZN(n16) );
  INV_X1 U17 ( .A(b[7]), .ZN(n17) );
  INV_X1 U18 ( .A(b[6]), .ZN(n18) );
  INV_X1 U19 ( .A(b[5]), .ZN(n19) );
  INV_X1 U20 ( .A(b[4]), .ZN(n20) );
  INV_X1 U21 ( .A(b[3]), .ZN(n21) );
  INV_X1 U22 ( .A(b[2]), .ZN(n22) );
  INV_X1 U23 ( .A(b[1]), .ZN(n23) );
  INV_X1 U24 ( .A(b[0]), .ZN(n24) );
  INV_X1 U25 ( .A(n54), .ZN(n25) );
  INV_X1 U26 ( .A(c[7]), .ZN(n26) );
  INV_X1 U27 ( .A(n62), .ZN(n27) );
  INV_X1 U28 ( .A(c[6]), .ZN(n28) );
  INV_X1 U29 ( .A(n70), .ZN(n29) );
  INV_X1 U30 ( .A(c[5]), .ZN(n30) );
  INV_X1 U31 ( .A(n78), .ZN(n31) );
  INV_X1 U32 ( .A(c[4]), .ZN(n32) );
  INV_X1 U33 ( .A(n86), .ZN(n33) );
  INV_X1 U34 ( .A(c[3]), .ZN(n34) );
  INV_X1 U35 ( .A(n94), .ZN(n35) );
  INV_X1 U36 ( .A(c[2]), .ZN(n36) );
  INV_X1 U37 ( .A(n102), .ZN(n37) );
  INV_X1 U38 ( .A(c[1]), .ZN(n38) );
  INV_X1 U39 ( .A(n110), .ZN(n39) );
  INV_X1 U40 ( .A(c[0]), .ZN(n40) );
  INV_X1 U41 ( .A(d[7]), .ZN(n41) );
  INV_X1 U42 ( .A(d[6]), .ZN(n42) );
  INV_X1 U43 ( .A(d[5]), .ZN(n43) );
  INV_X1 U44 ( .A(d[4]), .ZN(n44) );
  INV_X1 U45 ( .A(d[3]), .ZN(n45) );
  INV_X1 U46 ( .A(d[2]), .ZN(n46) );
  INV_X1 U47 ( .A(d[1]), .ZN(n47) );
  INV_X1 U48 ( .A(d[0]), .ZN(n48) );
  OR2_X1 U49 ( .A1(n49), .A2(n1), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n51), .A2(n25), .ZN(n50) );
  AND2_X1 U51 ( .A1(n25), .A2(n51), .ZN(n49) );
  AND2_X1 U52 ( .A1(n52), .A2(n53), .ZN(n51) );
  OR2_X1 U53 ( .A1(n2), .A2(b[7]), .ZN(n53) );
  OR2_X1 U54 ( .A1(n17), .A2(a[7]), .ZN(n52) );
  AND2_X1 U55 ( .A1(n55), .A2(n56), .ZN(n54) );
  OR2_X1 U56 ( .A1(n26), .A2(d[7]), .ZN(n56) );
  OR2_X1 U57 ( .A1(n41), .A2(c[7]), .ZN(n55) );
  OR2_X1 U58 ( .A1(n57), .A2(n3), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n59), .A2(n27), .ZN(n58) );
  AND2_X1 U60 ( .A1(n27), .A2(n59), .ZN(n57) );
  AND2_X1 U61 ( .A1(n60), .A2(n61), .ZN(n59) );
  OR2_X1 U62 ( .A1(n4), .A2(b[6]), .ZN(n61) );
  OR2_X1 U63 ( .A1(n18), .A2(a[6]), .ZN(n60) );
  AND2_X1 U64 ( .A1(n63), .A2(n64), .ZN(n62) );
  OR2_X1 U65 ( .A1(n28), .A2(d[6]), .ZN(n64) );
  OR2_X1 U66 ( .A1(n42), .A2(c[6]), .ZN(n63) );
  OR2_X1 U67 ( .A1(n65), .A2(n5), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n67), .A2(n29), .ZN(n66) );
  AND2_X1 U69 ( .A1(n29), .A2(n67), .ZN(n65) );
  AND2_X1 U70 ( .A1(n68), .A2(n69), .ZN(n67) );
  OR2_X1 U71 ( .A1(n6), .A2(b[5]), .ZN(n69) );
  OR2_X1 U72 ( .A1(n19), .A2(a[5]), .ZN(n68) );
  AND2_X1 U73 ( .A1(n71), .A2(n72), .ZN(n70) );
  OR2_X1 U74 ( .A1(n30), .A2(d[5]), .ZN(n72) );
  OR2_X1 U75 ( .A1(n43), .A2(c[5]), .ZN(n71) );
  OR2_X1 U76 ( .A1(n73), .A2(n7), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n75), .A2(n31), .ZN(n74) );
  AND2_X1 U78 ( .A1(n31), .A2(n75), .ZN(n73) );
  AND2_X1 U79 ( .A1(n76), .A2(n77), .ZN(n75) );
  OR2_X1 U80 ( .A1(n8), .A2(b[4]), .ZN(n77) );
  OR2_X1 U81 ( .A1(n20), .A2(a[4]), .ZN(n76) );
  AND2_X1 U82 ( .A1(n79), .A2(n80), .ZN(n78) );
  OR2_X1 U83 ( .A1(n32), .A2(d[4]), .ZN(n80) );
  OR2_X1 U84 ( .A1(n44), .A2(c[4]), .ZN(n79) );
  OR2_X1 U85 ( .A1(n81), .A2(n9), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n83), .A2(n33), .ZN(n82) );
  AND2_X1 U87 ( .A1(n33), .A2(n83), .ZN(n81) );
  AND2_X1 U88 ( .A1(n84), .A2(n85), .ZN(n83) );
  OR2_X1 U89 ( .A1(n10), .A2(b[3]), .ZN(n85) );
  OR2_X1 U90 ( .A1(n21), .A2(a[3]), .ZN(n84) );
  AND2_X1 U91 ( .A1(n87), .A2(n88), .ZN(n86) );
  OR2_X1 U92 ( .A1(n34), .A2(d[3]), .ZN(n88) );
  OR2_X1 U93 ( .A1(n45), .A2(c[3]), .ZN(n87) );
  OR2_X1 U94 ( .A1(n89), .A2(n11), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n91), .A2(n35), .ZN(n90) );
  AND2_X1 U96 ( .A1(n35), .A2(n91), .ZN(n89) );
  AND2_X1 U97 ( .A1(n92), .A2(n93), .ZN(n91) );
  OR2_X1 U98 ( .A1(n12), .A2(b[2]), .ZN(n93) );
  OR2_X1 U99 ( .A1(n22), .A2(a[2]), .ZN(n92) );
  AND2_X1 U100 ( .A1(n95), .A2(n96), .ZN(n94) );
  OR2_X1 U101 ( .A1(n36), .A2(d[2]), .ZN(n96) );
  OR2_X1 U102 ( .A1(n46), .A2(c[2]), .ZN(n95) );
  OR2_X1 U103 ( .A1(n97), .A2(n13), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n99), .A2(n37), .ZN(n98) );
  AND2_X1 U105 ( .A1(n37), .A2(n99), .ZN(n97) );
  AND2_X1 U106 ( .A1(n100), .A2(n101), .ZN(n99) );
  OR2_X1 U107 ( .A1(n14), .A2(b[1]), .ZN(n101) );
  OR2_X1 U108 ( .A1(n23), .A2(a[1]), .ZN(n100) );
  AND2_X1 U109 ( .A1(n103), .A2(n104), .ZN(n102) );
  OR2_X1 U110 ( .A1(n38), .A2(d[1]), .ZN(n104) );
  OR2_X1 U111 ( .A1(n47), .A2(c[1]), .ZN(n103) );
  OR2_X1 U112 ( .A1(n105), .A2(n15), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n107), .A2(n39), .ZN(n106) );
  AND2_X1 U114 ( .A1(n39), .A2(n107), .ZN(n105) );
  AND2_X1 U115 ( .A1(n108), .A2(n109), .ZN(n107) );
  OR2_X1 U116 ( .A1(n16), .A2(b[0]), .ZN(n109) );
  OR2_X1 U117 ( .A1(n24), .A2(a[0]), .ZN(n108) );
  AND2_X1 U118 ( .A1(n111), .A2(n112), .ZN(n110) );
  OR2_X1 U119 ( .A1(n40), .A2(d[0]), .ZN(n112) );
  OR2_X1 U120 ( .A1(n48), .A2(c[0]), .ZN(n111) );
endmodule


module scale2_13 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_14 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_15 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module byteXor_14 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_15 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_16 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor4_13 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_14 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_15 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module mixCol_0 ( in, out );
  input [31:0] in;
  //input_done

  output [31:0] out;
  //output_done

  wire   [7:0] b0_s2;
  wire   [7:0] b1_s2;
  wire   [7:0] b2_s2;
  wire   [7:0] b3_s2;
  wire   [7:0] b0_s3;
  wire   [7:0] b1_s3;
  wire   [7:0] b2_s3;
  wire   [7:0] b3_s3;
  //wire_done

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



/****************************
Mix_Col 1
****************************/
module scale2_1 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_2 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_3 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_4 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module byteXor_2 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_3 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_4 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_5 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor4_1 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_2 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_3 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_4 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module mixCol_1 ( in, out );
  input [31:0] in;
  //input_done

  output [31:0] out;
  //output_done

  wire   [7:0] b0_s2;
  wire   [7:0] b1_s2;
  wire   [7:0] b2_s2;
  wire   [7:0] b3_s2;
  wire   [7:0] b0_s3;
  wire   [7:0] b1_s3;
  wire   [7:0] b2_s3;
  wire   [7:0] b3_s3;
  //wire_done

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



/****************************
Mix_Col 2
****************************/
module scale2_5 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_6 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_7 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_8 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module byteXor_6 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_7 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_8 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_9 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor4_5 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_6 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_7 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_8 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module mixCol_2 ( in, out );
  input [31:0] in;
  //input_done

  output [31:0] out;
  //output_done

  wire   [7:0] b0_s2;
  wire   [7:0] b1_s2;
  wire   [7:0] b2_s2;
  wire   [7:0] b3_s2;
  wire   [7:0] b0_s3;
  wire   [7:0] b1_s3;
  wire   [7:0] b2_s3;
  wire   [7:0] b3_s3;
  //wire_done

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



/****************************
Mix_Col 3
****************************/
module scale2_9 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_10 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_11 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module scale2_12 ( in, out );
  input [7:0] in;
  //input_done

  output [7:0] out;
  //output_done

  wire   in_0, in_6, in_5, in_4, in_1, in_7, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
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

  INV_X1 U1 ( .A(in_7), .ZN(n20) );
  INV_X1 U2 ( .A(in[3]), .ZN(n19) );
  INV_X1 U3 ( .A(in[2]), .ZN(n18) );
  INV_X1 U4 ( .A(in_0), .ZN(n17) );
  OR2_X1 U5 ( .A1(n16), .A2(n15), .ZN(out[4]) );
  AND2_X1 U6 ( .A1(in[3]), .A2(n20), .ZN(n15) );
  AND2_X1 U7 ( .A1(in_7), .A2(n19), .ZN(n16) );
  OR2_X1 U8 ( .A1(n14), .A2(n13), .ZN(out[3]) );
  AND2_X1 U9 ( .A1(in[2]), .A2(n20), .ZN(n13) );
  AND2_X1 U10 ( .A1(in_7), .A2(n18), .ZN(n14) );
  OR2_X1 U11 ( .A1(n12), .A2(n11), .ZN(out[1]) );
  AND2_X1 U12 ( .A1(in_0), .A2(n20), .ZN(n11) );
  AND2_X1 U13 ( .A1(in_7), .A2(n17), .ZN(n12) );
endmodule


module byteXor_10 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_11 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_12 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor_13 ( a, b, y );
  input [7:0] a;
  input [7:0] b;
  //input_done

  output [7:0] y;
  //output_done

  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;
  //wire_done

  INV_X1 U1 ( .A(n47), .ZN(n64) );
  INV_X1 U2 ( .A(a[7]), .ZN(n63) );
  INV_X1 U3 ( .A(n45), .ZN(n62) );
  INV_X1 U4 ( .A(a[6]), .ZN(n61) );
  INV_X1 U5 ( .A(n43), .ZN(n60) );
  INV_X1 U6 ( .A(a[5]), .ZN(n59) );
  INV_X1 U7 ( .A(n41), .ZN(n58) );
  INV_X1 U8 ( .A(a[4]), .ZN(n57) );
  INV_X1 U9 ( .A(n39), .ZN(n56) );
  INV_X1 U10 ( .A(a[3]), .ZN(n55) );
  INV_X1 U11 ( .A(n37), .ZN(n54) );
  INV_X1 U12 ( .A(a[2]), .ZN(n53) );
  INV_X1 U13 ( .A(n35), .ZN(n52) );
  INV_X1 U14 ( .A(a[1]), .ZN(n51) );
  INV_X1 U15 ( .A(n33), .ZN(n50) );
  INV_X1 U16 ( .A(a[0]), .ZN(n49) );
  OR2_X1 U17 ( .A1(n48), .A2(n64), .ZN(y[7]) );
  OR2_X1 U18 ( .A1(n63), .A2(b[7]), .ZN(n47) );
  AND2_X1 U19 ( .A1(b[7]), .A2(n63), .ZN(n48) );
  OR2_X1 U20 ( .A1(n46), .A2(n62), .ZN(y[6]) );
  OR2_X1 U21 ( .A1(n61), .A2(b[6]), .ZN(n45) );
  AND2_X1 U22 ( .A1(b[6]), .A2(n61), .ZN(n46) );
  OR2_X1 U23 ( .A1(n44), .A2(n60), .ZN(y[5]) );
  OR2_X1 U24 ( .A1(n59), .A2(b[5]), .ZN(n43) );
  AND2_X1 U25 ( .A1(b[5]), .A2(n59), .ZN(n44) );
  OR2_X1 U26 ( .A1(n42), .A2(n58), .ZN(y[4]) );
  OR2_X1 U27 ( .A1(n57), .A2(b[4]), .ZN(n41) );
  AND2_X1 U28 ( .A1(b[4]), .A2(n57), .ZN(n42) );
  OR2_X1 U29 ( .A1(n40), .A2(n56), .ZN(y[3]) );
  OR2_X1 U30 ( .A1(n55), .A2(b[3]), .ZN(n39) );
  AND2_X1 U31 ( .A1(b[3]), .A2(n55), .ZN(n40) );
  OR2_X1 U32 ( .A1(n38), .A2(n54), .ZN(y[2]) );
  OR2_X1 U33 ( .A1(n53), .A2(b[2]), .ZN(n37) );
  AND2_X1 U34 ( .A1(b[2]), .A2(n53), .ZN(n38) );
  OR2_X1 U35 ( .A1(n36), .A2(n52), .ZN(y[1]) );
  OR2_X1 U36 ( .A1(n51), .A2(b[1]), .ZN(n35) );
  AND2_X1 U37 ( .A1(b[1]), .A2(n51), .ZN(n36) );
  OR2_X1 U38 ( .A1(n34), .A2(n50), .ZN(y[0]) );
  OR2_X1 U39 ( .A1(n49), .A2(b[0]), .ZN(n33) );
  AND2_X1 U40 ( .A1(b[0]), .A2(n49), .ZN(n34) );
endmodule


module byteXor4_9 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_10 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_11 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module byteXor4_12 ( a, b, c, d, y );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  input [7:0] d;
  //input_done

  output [7:0] y;
  //output_done

  wire   n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224;
  //wire_done

  INV_X1 U1 ( .A(n175), .ZN(n224) );
  INV_X1 U2 ( .A(a[7]), .ZN(n223) );
  INV_X1 U3 ( .A(n167), .ZN(n222) );
  INV_X1 U4 ( .A(a[6]), .ZN(n221) );
  INV_X1 U5 ( .A(n159), .ZN(n220) );
  INV_X1 U6 ( .A(a[5]), .ZN(n219) );
  INV_X1 U7 ( .A(n151), .ZN(n218) );
  INV_X1 U8 ( .A(a[4]), .ZN(n217) );
  INV_X1 U9 ( .A(n143), .ZN(n216) );
  INV_X1 U10 ( .A(a[3]), .ZN(n215) );
  INV_X1 U11 ( .A(n135), .ZN(n214) );
  INV_X1 U12 ( .A(a[2]), .ZN(n213) );
  INV_X1 U13 ( .A(n127), .ZN(n212) );
  INV_X1 U14 ( .A(a[1]), .ZN(n211) );
  INV_X1 U15 ( .A(n119), .ZN(n210) );
  INV_X1 U16 ( .A(a[0]), .ZN(n209) );
  INV_X1 U17 ( .A(b[7]), .ZN(n208) );
  INV_X1 U18 ( .A(b[6]), .ZN(n207) );
  INV_X1 U19 ( .A(b[5]), .ZN(n206) );
  INV_X1 U20 ( .A(b[4]), .ZN(n205) );
  INV_X1 U21 ( .A(b[3]), .ZN(n204) );
  INV_X1 U22 ( .A(b[2]), .ZN(n203) );
  INV_X1 U23 ( .A(b[1]), .ZN(n202) );
  INV_X1 U24 ( .A(b[0]), .ZN(n201) );
  INV_X1 U25 ( .A(n171), .ZN(n200) );
  INV_X1 U26 ( .A(c[7]), .ZN(n199) );
  INV_X1 U27 ( .A(n163), .ZN(n198) );
  INV_X1 U28 ( .A(c[6]), .ZN(n197) );
  INV_X1 U29 ( .A(n155), .ZN(n196) );
  INV_X1 U30 ( .A(c[5]), .ZN(n195) );
  INV_X1 U31 ( .A(n147), .ZN(n194) );
  INV_X1 U32 ( .A(c[4]), .ZN(n193) );
  INV_X1 U33 ( .A(n139), .ZN(n192) );
  INV_X1 U34 ( .A(c[3]), .ZN(n191) );
  INV_X1 U35 ( .A(n131), .ZN(n190) );
  INV_X1 U36 ( .A(c[2]), .ZN(n189) );
  INV_X1 U37 ( .A(n123), .ZN(n188) );
  INV_X1 U38 ( .A(c[1]), .ZN(n187) );
  INV_X1 U39 ( .A(n115), .ZN(n186) );
  INV_X1 U40 ( .A(c[0]), .ZN(n185) );
  INV_X1 U41 ( .A(d[7]), .ZN(n184) );
  INV_X1 U42 ( .A(d[6]), .ZN(n183) );
  INV_X1 U43 ( .A(d[5]), .ZN(n182) );
  INV_X1 U44 ( .A(d[4]), .ZN(n181) );
  INV_X1 U45 ( .A(d[3]), .ZN(n180) );
  INV_X1 U46 ( .A(d[2]), .ZN(n179) );
  INV_X1 U47 ( .A(d[1]), .ZN(n178) );
  INV_X1 U48 ( .A(d[0]), .ZN(n177) );
  OR2_X1 U49 ( .A1(n176), .A2(n224), .ZN(y[7]) );
  OR2_X1 U50 ( .A1(n174), .A2(n200), .ZN(n175) );
  AND2_X1 U51 ( .A1(n200), .A2(n174), .ZN(n176) );
  AND2_X1 U52 ( .A1(n173), .A2(n172), .ZN(n174) );
  OR2_X1 U53 ( .A1(n223), .A2(b[7]), .ZN(n172) );
  OR2_X1 U54 ( .A1(n208), .A2(a[7]), .ZN(n173) );
  AND2_X1 U55 ( .A1(n170), .A2(n169), .ZN(n171) );
  OR2_X1 U56 ( .A1(n199), .A2(d[7]), .ZN(n169) );
  OR2_X1 U57 ( .A1(n184), .A2(c[7]), .ZN(n170) );
  OR2_X1 U58 ( .A1(n168), .A2(n222), .ZN(y[6]) );
  OR2_X1 U59 ( .A1(n166), .A2(n198), .ZN(n167) );
  AND2_X1 U60 ( .A1(n198), .A2(n166), .ZN(n168) );
  AND2_X1 U61 ( .A1(n165), .A2(n164), .ZN(n166) );
  OR2_X1 U62 ( .A1(n221), .A2(b[6]), .ZN(n164) );
  OR2_X1 U63 ( .A1(n207), .A2(a[6]), .ZN(n165) );
  AND2_X1 U64 ( .A1(n162), .A2(n161), .ZN(n163) );
  OR2_X1 U65 ( .A1(n197), .A2(d[6]), .ZN(n161) );
  OR2_X1 U66 ( .A1(n183), .A2(c[6]), .ZN(n162) );
  OR2_X1 U67 ( .A1(n160), .A2(n220), .ZN(y[5]) );
  OR2_X1 U68 ( .A1(n158), .A2(n196), .ZN(n159) );
  AND2_X1 U69 ( .A1(n196), .A2(n158), .ZN(n160) );
  AND2_X1 U70 ( .A1(n157), .A2(n156), .ZN(n158) );
  OR2_X1 U71 ( .A1(n219), .A2(b[5]), .ZN(n156) );
  OR2_X1 U72 ( .A1(n206), .A2(a[5]), .ZN(n157) );
  AND2_X1 U73 ( .A1(n154), .A2(n153), .ZN(n155) );
  OR2_X1 U74 ( .A1(n195), .A2(d[5]), .ZN(n153) );
  OR2_X1 U75 ( .A1(n182), .A2(c[5]), .ZN(n154) );
  OR2_X1 U76 ( .A1(n152), .A2(n218), .ZN(y[4]) );
  OR2_X1 U77 ( .A1(n150), .A2(n194), .ZN(n151) );
  AND2_X1 U78 ( .A1(n194), .A2(n150), .ZN(n152) );
  AND2_X1 U79 ( .A1(n149), .A2(n148), .ZN(n150) );
  OR2_X1 U80 ( .A1(n217), .A2(b[4]), .ZN(n148) );
  OR2_X1 U81 ( .A1(n205), .A2(a[4]), .ZN(n149) );
  AND2_X1 U82 ( .A1(n146), .A2(n145), .ZN(n147) );
  OR2_X1 U83 ( .A1(n193), .A2(d[4]), .ZN(n145) );
  OR2_X1 U84 ( .A1(n181), .A2(c[4]), .ZN(n146) );
  OR2_X1 U85 ( .A1(n144), .A2(n216), .ZN(y[3]) );
  OR2_X1 U86 ( .A1(n142), .A2(n192), .ZN(n143) );
  AND2_X1 U87 ( .A1(n192), .A2(n142), .ZN(n144) );
  AND2_X1 U88 ( .A1(n141), .A2(n140), .ZN(n142) );
  OR2_X1 U89 ( .A1(n215), .A2(b[3]), .ZN(n140) );
  OR2_X1 U90 ( .A1(n204), .A2(a[3]), .ZN(n141) );
  AND2_X1 U91 ( .A1(n138), .A2(n137), .ZN(n139) );
  OR2_X1 U92 ( .A1(n191), .A2(d[3]), .ZN(n137) );
  OR2_X1 U93 ( .A1(n180), .A2(c[3]), .ZN(n138) );
  OR2_X1 U94 ( .A1(n136), .A2(n214), .ZN(y[2]) );
  OR2_X1 U95 ( .A1(n134), .A2(n190), .ZN(n135) );
  AND2_X1 U96 ( .A1(n190), .A2(n134), .ZN(n136) );
  AND2_X1 U97 ( .A1(n133), .A2(n132), .ZN(n134) );
  OR2_X1 U98 ( .A1(n213), .A2(b[2]), .ZN(n132) );
  OR2_X1 U99 ( .A1(n203), .A2(a[2]), .ZN(n133) );
  AND2_X1 U100 ( .A1(n130), .A2(n129), .ZN(n131) );
  OR2_X1 U101 ( .A1(n189), .A2(d[2]), .ZN(n129) );
  OR2_X1 U102 ( .A1(n179), .A2(c[2]), .ZN(n130) );
  OR2_X1 U103 ( .A1(n128), .A2(n212), .ZN(y[1]) );
  OR2_X1 U104 ( .A1(n126), .A2(n188), .ZN(n127) );
  AND2_X1 U105 ( .A1(n188), .A2(n126), .ZN(n128) );
  AND2_X1 U106 ( .A1(n125), .A2(n124), .ZN(n126) );
  OR2_X1 U107 ( .A1(n211), .A2(b[1]), .ZN(n124) );
  OR2_X1 U108 ( .A1(n202), .A2(a[1]), .ZN(n125) );
  AND2_X1 U109 ( .A1(n122), .A2(n121), .ZN(n123) );
  OR2_X1 U110 ( .A1(n187), .A2(d[1]), .ZN(n121) );
  OR2_X1 U111 ( .A1(n178), .A2(c[1]), .ZN(n122) );
  OR2_X1 U112 ( .A1(n120), .A2(n210), .ZN(y[0]) );
  OR2_X1 U113 ( .A1(n118), .A2(n186), .ZN(n119) );
  AND2_X1 U114 ( .A1(n186), .A2(n118), .ZN(n120) );
  AND2_X1 U115 ( .A1(n117), .A2(n116), .ZN(n118) );
  OR2_X1 U116 ( .A1(n209), .A2(b[0]), .ZN(n116) );
  OR2_X1 U117 ( .A1(n201), .A2(a[0]), .ZN(n117) );
  AND2_X1 U118 ( .A1(n114), .A2(n113), .ZN(n115) );
  OR2_X1 U119 ( .A1(n185), .A2(d[0]), .ZN(n113) );
  OR2_X1 U120 ( .A1(n177), .A2(c[0]), .ZN(n114) );
endmodule


module mixCol_3 ( in, out );
  input [31:0] in;
  //input_done

  output [31:0] out;
  //output_done

  wire   [7:0] b0_s2;
  wire   [7:0] b1_s2;
  wire   [7:0] b2_s2;
  wire   [7:0] b3_s2;
  wire   [7:0] b0_s3;
  wire   [7:0] b1_s3;
  wire   [7:0] b2_s3;
  wire   [7:0] b3_s3;
  //wire_done

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



/*******************************************
Main Module
*******************************************/
module mixCol ( in, out );

  input [127:0] in;
  output [127:0] out;

  mixCol_0 m0( .in(in[127:96]), .out(out[127:96]) );
  mixCol_3 m1( .in(in[95:64]), .out(out[95:64]) );
  mixCol_2 m2( .in(in[63:32]), .out(out[63:32]) );
  mixCol_1 m3( .in(in[31:0]), .out(out[31:0]) );

endmodule

//done