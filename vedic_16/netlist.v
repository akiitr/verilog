/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed May  8 23:40:38 2019
/////////////////////////////////////////////////////////////


module vedic_2bit_0 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n1, n2, n4, n5, n6, n7, n8;

  nd02d2 U1 ( .A1(b[0]), .A2(a[1]), .ZN(n4) );
  nd03d2 U2 ( .A1(a[1]), .A2(b[1]), .A3(n8), .ZN(n1) );
  inv0d2 U3 ( .I(n1), .ZN(c[2]) );
  nd02d2 U4 ( .A1(b[0]), .A2(a[0]), .ZN(n2) );
  inv0d2 U5 ( .I(b[1]), .ZN(n7) );
  nr03d2 U6 ( .A1(n2), .A2(n7), .A3(n6), .ZN(c[3]) );
  nd02d2 U7 ( .A1(a[0]), .A2(b[1]), .ZN(n5) );
  inv0d0 U8 ( .I(n2), .ZN(c[0]) );
  nd02d2 U9 ( .A1(b[0]), .A2(a[0]), .ZN(n8) );
  xr02d1 U10 ( .A1(n5), .A2(n4), .Z(c[1]) );
  inv0d2 U11 ( .I(a[1]), .ZN(n6) );
endmodule


module fa_189 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  xr02d2 U1 ( .A1(n5), .A2(c), .Z(s) );
  xr02d7 U2 ( .A1(n2), .A2(b), .Z(n4) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  an02d1 U5 ( .A1(b), .A2(a), .Z(n1) );
  inv0d0 U6 ( .I(n1), .ZN(n3) );
  aoim22d2 U7 ( .A1(n4), .A2(n3), .B1(n1), .B2(c), .Z(ca) );
endmodule


module fa_190 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(n1), .ZN(n2) );
  xr02d1 U3 ( .A1(n7), .A2(c), .Z(s) );
  inv0d1 U4 ( .I(n3), .ZN(n5) );
  xr02d1 U5 ( .A1(b), .A2(n4), .Z(n6) );
  an02d1 U6 ( .A1(n2), .A2(a), .Z(n3) );
  inv0d0 U7 ( .I(a), .ZN(n4) );
  aoim22d1 U8 ( .A1(n6), .A2(n5), .B1(c), .B2(n3), .Z(ca) );
  inv0d2 U9 ( .I(n6), .ZN(n7) );
endmodule


module fa_191 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1;

  buffd1 U1 ( .I(c), .Z(n1) );
  xr03d7 U2 ( .A1(n1), .A2(a), .A3(b), .Z(s) );
  cg01d1 U3 ( .A(b), .B(a), .CI(c), .CO(ca) );
endmodule


module fa_192 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1;

  xr03d1 U1 ( .A1(n1), .A2(c), .A3(b), .Z(s) );
  buffd1 U2 ( .I(a), .Z(n1) );
  cg01d1 U3 ( .A(b), .B(c), .CI(a), .CO(ca) );
endmodule


module fa_4bit_0 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_192 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_191 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_190 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_189 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_2bit_61 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  an02d4 U1 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  inv0d2 U2 ( .I(c[0]), .ZN(n2) );
  nr02d2 U3 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d1 U5 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_62 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  nd02d2 U1 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d2 U2 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  inv0d1 U3 ( .I(c[0]), .ZN(n2) );
  nr02d2 U4 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U5 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_63 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n15, n16, n17;

  nd02d2 U1 ( .A1(a[1]), .A2(b[1]), .ZN(n1) );
  inv0da U2 ( .I(a[0]), .ZN(n10) );
  inv0d2 U3 ( .I(n17), .ZN(n16) );
  nd02d1 U4 ( .A1(n12), .A2(n15), .ZN(n4) );
  nd02d2 U5 ( .A1(n2), .A2(n3), .ZN(n5) );
  nd02d2 U6 ( .A1(n4), .A2(n5), .ZN(c[1]) );
  inv0d1 U7 ( .I(n12), .ZN(n2) );
  inv0d1 U8 ( .I(n15), .ZN(n3) );
  inv0da U9 ( .I(b[0]), .ZN(n6) );
  nr02d2 U10 ( .A1(n6), .A2(n7), .ZN(n11) );
  invbdk U11 ( .I(a[0]), .ZN(n7) );
  inv0d7 U12 ( .I(a[0]), .ZN(n8) );
  invbdf U13 ( .I(b[1]), .ZN(n9) );
  nr02d2 U14 ( .A1(n6), .A2(n8), .ZN(c[0]) );
  nr02d2 U15 ( .A1(n9), .A2(n10), .ZN(n12) );
  nd02d2 U16 ( .A1(a[1]), .A2(b[1]), .ZN(n17) );
  nd02d2 U17 ( .A1(a[1]), .A2(b[0]), .ZN(n15) );
  nr02d2 U18 ( .A1(c[3]), .A2(n1), .ZN(c[2]) );
  an02d4 U19 ( .A1(n16), .A2(n11), .Z(c[3]) );
endmodule


module fa_181 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xr03d2 U1 ( .A1(c), .A2(a), .A3(b), .Z(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_182 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;


  xr03d2 U1 ( .A1(c), .A2(a), .A3(b), .Z(s) );
  cg01d1 U2 ( .A(a), .B(b), .CI(c), .CO(ca) );
endmodule


module fa_183 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1;

  buffd1 U1 ( .I(c), .Z(n1) );
  xr03d2 U2 ( .A1(n1), .A2(a), .A3(b), .Z(s) );
  cg01d1 U3 ( .A(a), .B(b), .CI(c), .CO(ca) );
endmodule


module fa_184 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  xn02d2 U1 ( .A1(n5), .A2(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n5) );
  inv0d0 U3 ( .I(c), .ZN(n2) );
  nd02d0 U4 ( .A1(c), .A2(n6), .ZN(n3) );
  cg01d1 U5 ( .A(c), .B(b), .CI(a), .CO(ca) );
  xr02d1 U6 ( .A1(n5), .A2(b), .Z(n6) );
  nd02d2 U7 ( .A1(n1), .A2(n2), .ZN(n4) );
  nd02d2 U8 ( .A1(n3), .A2(n4), .ZN(s) );
endmodule


module fa_4bit_46 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_184 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_183 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_182 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_181 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_185 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U2 ( .I(a), .ZN(n2) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(b), .ZN(n1) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_186 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(n1), .ZN(n2) );
  an02d1 U2 ( .A1(b), .A2(a), .Z(n1) );
  xn02d2 U3 ( .A1(a), .A2(b), .ZN(n3) );
  inv0d2 U4 ( .I(n3), .ZN(n4) );
  aoim22d1 U5 ( .A1(n3), .A2(n2), .B1(c), .B2(n1), .Z(ca) );
  xr02d1 U6 ( .A1(n4), .A2(c), .Z(s) );
endmodule


module fa_187 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  aoim22d1 U1 ( .A1(n4), .A2(n3), .B1(c), .B2(n2), .Z(ca) );
  xn02d2 U2 ( .A1(a), .A2(b), .ZN(n4) );
  buffd1 U3 ( .I(c), .Z(n1) );
  invbd2 U4 ( .I(n3), .ZN(n2) );
  nd02d2 U5 ( .A1(b), .A2(a), .ZN(n3) );
  xn02d1 U6 ( .A1(n1), .A2(n4), .ZN(s) );
endmodule


module fa_188 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n3) );
  inv0d0 U2 ( .I(c), .ZN(n1) );
  inv0d1 U3 ( .I(n1), .ZN(n2) );
  xn02d1 U4 ( .A1(n2), .A2(n5), .ZN(s) );
  nd02d0 U5 ( .A1(b), .A2(a), .ZN(n4) );
  xn02d1 U6 ( .A1(a), .A2(b), .ZN(n5) );
  aoim22d2 U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
endmodule


module fa_4bit_47 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_188 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_187 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_186 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_185 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_0 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_0 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_63 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_0 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_62 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_47 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_61 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_46 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module fa_281 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  an02d1 U1 ( .A1(n1), .A2(a), .Z(n2) );
  buffd1 U2 ( .I(b), .Z(n1) );
  inv0d0 U3 ( .I(n2), .ZN(n4) );
  inv0d0 U4 ( .I(n5), .ZN(n6) );
  inv0d0 U5 ( .I(a), .ZN(n3) );
  xr02d2 U6 ( .A1(n3), .A2(b), .Z(n5) );
  aoim22d1 U7 ( .A1(n5), .A2(n4), .B1(c), .B2(n2), .Z(ca) );
  xr02d1 U8 ( .A1(n6), .A2(c), .Z(s) );
endmodule


module fa_282 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  buffd1 U1 ( .I(c), .Z(n1) );
  inv0d0 U2 ( .I(n3), .ZN(n2) );
  nd02d0 U3 ( .A1(b), .A2(a), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xn02d2 U5 ( .A1(a), .A2(b), .ZN(n4) );
  aoim22d1 U6 ( .A1(n4), .A2(n3), .B1(c), .B2(n2), .Z(ca) );
  xr02d1 U7 ( .A1(n5), .A2(n1), .Z(s) );
endmodule


module fa_283 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  xn02d4 U1 ( .A1(n5), .A2(n2), .ZN(s) );
  xn02d2 U2 ( .A1(b), .A2(a), .ZN(n5) );
  inv0d1 U3 ( .I(n1), .ZN(n2) );
  inv0d0 U4 ( .I(c), .ZN(n1) );
  an02d1 U5 ( .A1(b), .A2(a), .Z(n3) );
  inv0d0 U6 ( .I(n3), .ZN(n4) );
  aoim22d1 U7 ( .A1(n5), .A2(n4), .B1(c), .B2(n3), .Z(ca) );
endmodule


module fa_284 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(n1), .A2(n4), .ZN(s) );
  buffd1 U2 ( .I(c), .Z(n1) );
  aoim22d2 U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(c), .Z(ca) );
  xn02d1 U4 ( .A1(a), .A2(b), .ZN(n4) );
  inv0d1 U5 ( .I(n3), .ZN(n2) );
  nd02d1 U6 ( .A1(b), .A2(a), .ZN(n3) );
endmodule


module fa_285 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d2 U1 ( .I(n3), .ZN(n2) );
  buffd1 U2 ( .I(c), .Z(n1) );
  xn02d2 U3 ( .A1(a), .A2(b), .ZN(n4) );
  nd02d2 U4 ( .A1(a), .A2(b), .ZN(n3) );
  inv0d0 U5 ( .I(n4), .ZN(n5) );
  aoim22d1 U6 ( .A1(n4), .A2(n3), .B1(c), .B2(n2), .Z(ca) );
  xr02d1 U7 ( .A1(n1), .A2(n5), .Z(s) );
endmodule


module fa_286 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  inv0d0 U1 ( .I(n7), .ZN(n3) );
  inv0d1 U2 ( .I(c), .ZN(n7) );
  inv0d1 U3 ( .I(b), .ZN(n4) );
  inv0d0 U4 ( .I(n5), .ZN(n1) );
  inv0d0 U5 ( .I(n1), .ZN(n2) );
  xn02d1 U6 ( .A1(a), .A2(n4), .ZN(n5) );
  nd02d0 U7 ( .A1(a), .A2(b), .ZN(n8) );
  aoim22d1 U8 ( .A1(n7), .A2(n8), .B1(n6), .B2(n5), .Z(ca) );
  inv0d1 U9 ( .I(n8), .ZN(n6) );
  xr02d1 U10 ( .A1(n3), .A2(n2), .Z(s) );
endmodule


module fa_287 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  xn02d1 U1 ( .A1(n3), .A2(b), .ZN(n1) );
  inv0d2 U2 ( .I(n4), .ZN(n3) );
  xn02d1 U3 ( .A1(a), .A2(b), .ZN(n6) );
  inv0d1 U4 ( .I(a), .ZN(n4) );
  inv0d0 U5 ( .I(n5), .ZN(n2) );
  inv0d1 U6 ( .I(c), .ZN(n5) );
  oaim22d1 U7 ( .A1(n5), .A2(n6), .B1(n3), .B2(b), .ZN(ca) );
  xn02d1 U8 ( .A1(n2), .A2(n1), .ZN(s) );
endmodule


module fa_288 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  inv0d1 U1 ( .I(a), .ZN(n1) );
  oaim22d1 U2 ( .A1(n3), .A2(n2), .B1(a), .B2(b), .ZN(ca) );
  xn02d1 U3 ( .A1(c), .A2(n3), .ZN(s) );
  inv0d0 U4 ( .I(c), .ZN(n2) );
  xr02d1 U5 ( .A1(n1), .A2(b), .Z(n3) );
endmodule


module fa_8bit_0 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_288 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_287 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_286 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_285 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_284 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_283 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_282 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_281 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module vedic_2bit_49 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_50 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n1, n4, n5, n6;

  nd12d0 U1 ( .A1(n6), .A2(c[0]), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_51 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d2 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_52 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  an02d4 U1 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  invbd2 U2 ( .I(c[0]), .ZN(n2) );
  nr02d2 U3 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d1 U5 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module fa_145 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_146 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d1 U2 ( .I(n4), .ZN(n5) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_147 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  invbd2 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_148 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  xn02d2 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_37 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_148 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_147 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_146 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_145 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_149 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_150 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  invbd2 U2 ( .I(n4), .ZN(n1) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  aor22d1 U4 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_151 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(n4), .ZN(n5) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_152 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n2) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  invbd2 U3 ( .I(n4), .ZN(n1) );
  oaim22d1 U4 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .ZN(ca) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_4bit_38 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_152 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_151 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_150 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_149 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_153 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_154 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_155 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  xn02d1 U1 ( .A1(n3), .A2(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n3) );
  aor22d2 U3 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d0 U4 ( .I(n3), .ZN(n2) );
  xr02d1 U5 ( .A1(c), .A2(n1), .Z(s) );
endmodule


module fa_156 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_39 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_156 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_155 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_154 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_153 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_13 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_52 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_51 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_39 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_50 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_38 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_49 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_37 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_53 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_54 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd02d2 U2 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d7 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd12d0 U4 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U5 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_55 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_56 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d2 U1 ( .I(c[0]), .ZN(n2) );
  nd02d2 U2 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d4 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nr02d2 U4 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U5 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module fa_157 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_158 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_159 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d1 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_160 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_40 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_160 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_159 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_158 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_157 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_161 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_162 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_163 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_164 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d2 U1 ( .I(n4), .ZN(n1) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  oaim22d1 U3 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .ZN(ca) );
  inv0d2 U4 ( .I(a), .ZN(n3) );
  xr02d1 U5 ( .A1(n3), .A2(b), .Z(n4) );
  inv0d2 U6 ( .I(b), .ZN(n2) );
endmodule


module fa_4bit_41 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_164 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_163 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_162 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_161 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_165 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_166 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_167 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_168 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  xn02d2 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U3 ( .I(a), .ZN(n2) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_42 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_168 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_167 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_166 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_165 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_14 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_56 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_55 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_42 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_54 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_41 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_53 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_40 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_57 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n1, n4, n5, n6;

  nd12d1 U1 ( .A1(n6), .A2(c[0]), .ZN(n1) );
  inv0d2 U2 ( .I(n1), .ZN(c[3]) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d1 U5 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_58 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  nr02d1 U1 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  inv0d0 U2 ( .I(c[0]), .ZN(n2) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_59 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  an02d7 U1 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d2 U2 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d2 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  inv0d1 U4 ( .I(c[0]), .ZN(n2) );
  nr02d2 U5 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_60 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5, n6;

  nd02d2 U1 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  xr02d2 U2 ( .A1(n5), .A2(n4), .Z(c[1]) );
  inv0d0 U3 ( .I(n3), .ZN(c[0]) );
  nr02d1 U4 ( .A1(n6), .A2(n3), .ZN(c[3]) );
  nd02d2 U5 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d2 U6 ( .A1(n2), .A2(n6), .ZN(c[2]) );
  nr02d2 U7 ( .A1(n6), .A2(n3), .ZN(n2) );
  nd02d1 U8 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d2 U9 ( .A1(b[0]), .A2(a[0]), .ZN(n3) );
endmodule


module fa_169 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(a), .ZN(n2) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_170 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xr02d1 U1 ( .A1(n2), .A2(b), .Z(n4) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  oai22d1 U3 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(ca) );
  inv0d2 U4 ( .I(c), .ZN(n3) );
  inv0d1 U5 ( .I(a), .ZN(n2) );
  inv0d0 U6 ( .I(b), .ZN(n1) );
endmodule


module fa_171 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xr02d1 U1 ( .A1(n3), .A2(b), .Z(n4) );
  inv0d2 U2 ( .I(n2), .ZN(s) );
  inv0d0 U3 ( .I(n3), .ZN(n1) );
  invbd2 U4 ( .I(a), .ZN(n3) );
  cg01d2 U5 ( .A(n1), .B(b), .CI(c), .CO(ca) );
  xr02d1 U6 ( .A1(c), .A2(n4), .Z(n2) );
endmodule


module fa_172 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(a), .A2(b), .ZN(n4) );
  xr03d2 U2 ( .A1(c), .A2(a), .A3(b), .Z(s) );
  inv0d1 U3 ( .I(a), .ZN(n2) );
  inv0d0 U4 ( .I(b), .ZN(n1) );
  inv0d0 U5 ( .I(c), .ZN(n3) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_43 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_172 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_171 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_170 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_169 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_173 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_174 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  oai22d2 U1 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(ca) );
  inv0d1 U2 ( .I(n4), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n4) );
  xn02d2 U4 ( .A1(n1), .A2(n5), .ZN(s) );
  inv0d0 U5 ( .I(b), .ZN(n2) );
  inv0d2 U6 ( .I(a), .ZN(n3) );
  xr02d1 U7 ( .A1(n3), .A2(b), .Z(n5) );
endmodule


module fa_175 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(n3), .ZN(n1) );
  oaim22d1 U2 ( .A1(n3), .A2(n4), .B1(a), .B2(b), .ZN(ca) );
  invbd2 U3 ( .I(a), .ZN(n2) );
  inv0d2 U4 ( .I(c), .ZN(n3) );
  xn02d1 U5 ( .A1(n1), .A2(n4), .ZN(s) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
endmodule


module fa_176 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(a), .ZN(n3) );
  xr02d1 U2 ( .A1(n3), .A2(b), .Z(n4) );
  xn02d2 U3 ( .A1(c), .A2(n4), .ZN(s) );
  aor22d2 U4 ( .A1(c), .A2(n1), .B1(n2), .B2(b), .Z(ca) );
  inv0d2 U5 ( .I(n4), .ZN(n1) );
  inv0d0 U6 ( .I(n3), .ZN(n2) );
endmodule


module fa_4bit_44 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_176 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_175 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_174 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_173 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_177 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(n1) );
  oai22d2 U2 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(ca) );
  inv0d2 U3 ( .I(c), .ZN(n4) );
  xn02d1 U4 ( .A1(n1), .A2(n5), .ZN(s) );
  inv0d0 U5 ( .I(b), .ZN(n2) );
  inv0d0 U6 ( .I(a), .ZN(n3) );
  xr02d1 U7 ( .A1(n3), .A2(b), .Z(n5) );
endmodule


module fa_178 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  oai22d1 U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xn02d2 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  inv0d2 U5 ( .I(c), .ZN(n3) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
endmodule


module fa_179 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  xr02d1 U4 ( .A1(c), .A2(n5), .Z(s) );
  inv0d0 U5 ( .I(n4), .ZN(n5) );
  oai22d2 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(b), .A2(n2), .Z(n4) );
endmodule


module fa_180 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  oai22d1 U2 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U3 ( .A1(n2), .A2(b), .Z(n4) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  inv0d2 U5 ( .I(a), .ZN(n2) );
  xn02d1 U6 ( .A1(c), .A2(n4), .ZN(s) );
endmodule


module fa_4bit_45 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_180 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_179 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_178 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_177 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_15 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_60 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_59 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_45 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_58 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_44 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_57 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_43 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module fa_265 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(a), .ZN(n2) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_266 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;


  cg01d1 U1 ( .A(a), .B(b), .CI(c), .CO(ca) );
  xr03d2 U2 ( .A1(c), .A2(a), .A3(b), .Z(s) );
endmodule


module fa_267 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  buffd1 U1 ( .I(c), .Z(n1) );
  inv0d0 U2 ( .I(n3), .ZN(n2) );
  xn02d2 U3 ( .A1(n1), .A2(n5), .ZN(s) );
  xr02d2 U4 ( .A1(n4), .A2(b), .Z(n5) );
  aor22d2 U5 ( .A1(n6), .A2(c), .B1(a), .B2(n2), .Z(ca) );
  inv0d0 U6 ( .I(b), .ZN(n3) );
  inv0d0 U7 ( .I(a), .ZN(n4) );
  inv0d2 U8 ( .I(n5), .ZN(n6) );
endmodule


module fa_268 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7;

  inv0d0 U1 ( .I(a), .ZN(n6) );
  xn02d2 U2 ( .A1(a), .A2(b), .ZN(n7) );
  inv0d2 U3 ( .I(n7), .ZN(n4) );
  nd02d1 U4 ( .A1(c), .A2(n7), .ZN(n2) );
  nd02d2 U5 ( .A1(n1), .A2(n4), .ZN(n3) );
  nd02d2 U6 ( .A1(n2), .A2(n3), .ZN(s) );
  inv0d2 U7 ( .I(c), .ZN(n1) );
  oaim22d1 U8 ( .A1(n6), .A2(n5), .B1(c), .B2(n4), .ZN(ca) );
  inv0d0 U9 ( .I(b), .ZN(n5) );
endmodule


module fa_269 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  xn02d2 U1 ( .A1(c), .A2(n2), .ZN(n1) );
  xn02d2 U2 ( .A1(a), .A2(n3), .ZN(n2) );
  inv0d1 U3 ( .I(b), .ZN(n3) );
  inv0d2 U4 ( .I(n1), .ZN(s) );
  aor22d2 U5 ( .A1(c), .A2(n2), .B1(a), .B2(b), .Z(ca) );
endmodule


module fa_270 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  xr03d2 U1 ( .A1(c), .A2(a), .A3(b), .Z(s) );
  inv0d0 U2 ( .I(a), .ZN(n2) );
  aor22d2 U3 ( .A1(n1), .A2(c), .B1(n3), .B2(b), .Z(ca) );
  xr02d1 U4 ( .A1(a), .A2(b), .Z(n1) );
  inv0d1 U5 ( .I(n2), .ZN(n3) );
endmodule


module fa_271 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;


  xr03d2 U1 ( .A1(c), .A2(a), .A3(b), .Z(s) );
  cg01d1 U2 ( .A(b), .B(a), .CI(c), .CO(ca) );
endmodule


module fa_272 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2;

  xn02d7 U1 ( .A1(n2), .A2(c), .ZN(s) );
  xn02d7 U2 ( .A1(a), .A2(b), .ZN(n2) );
  oaim22d1 U3 ( .A1(n2), .A2(n1), .B1(a), .B2(b), .ZN(ca) );
  inv0d0 U4 ( .I(c), .ZN(n1) );
endmodule


module fa_8bit_10 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_272 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_271 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_270 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_269 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_268 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_267 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_266 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_265 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module fa_273 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7;

  inv0d1 U1 ( .I(n2), .ZN(n1) );
  nd02d2 U2 ( .A1(c), .A2(n7), .ZN(n4) );
  nd02d2 U3 ( .A1(n2), .A2(n3), .ZN(n5) );
  nd02d2 U4 ( .A1(n4), .A2(n5), .ZN(s) );
  inv0d2 U5 ( .I(c), .ZN(n2) );
  inv0d2 U6 ( .I(n7), .ZN(n3) );
  cg01d1 U7 ( .A(a), .B(b), .CI(n1), .CO(ca) );
  inv0d2 U8 ( .I(a), .ZN(n6) );
  xr02d1 U9 ( .A1(n6), .A2(b), .Z(n7) );
endmodule


module fa_274 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  nd02d2 U1 ( .A1(c), .A2(n5), .ZN(n2) );
  nd12d2 U2 ( .A1(c), .A2(n1), .ZN(n3) );
  xr02d1 U3 ( .A1(n4), .A2(b), .Z(n5) );
  inv0d1 U4 ( .I(n5), .ZN(n1) );
  aor22d2 U5 ( .A1(c), .A2(n1), .B1(a), .B2(b), .Z(ca) );
  invbd2 U6 ( .I(a), .ZN(n4) );
  nd02d2 U7 ( .A1(n3), .A2(n2), .ZN(s) );
endmodule


module fa_275 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  xn02d1 U1 ( .A1(a), .A2(b), .ZN(n3) );
  xr03d7 U2 ( .A1(c), .A2(a), .A3(b), .Z(s) );
  nd02d0 U3 ( .A1(b), .A2(a), .ZN(n2) );
  inv0d1 U4 ( .I(n2), .ZN(n1) );
  aoim22d2 U5 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .Z(ca) );
endmodule


module fa_276 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xr02d1 U1 ( .A1(n4), .A2(c), .Z(s) );
  inv0d1 U2 ( .I(n2), .ZN(n1) );
  nd02d0 U3 ( .A1(b), .A2(a), .ZN(n2) );
  inv0d0 U4 ( .I(n3), .ZN(n4) );
  xn02d1 U5 ( .A1(a), .A2(b), .ZN(n3) );
  aoim22d2 U6 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .Z(ca) );
endmodule


module fa_277 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  invbd2 U1 ( .I(c), .ZN(n3) );
  inv0d1 U2 ( .I(n5), .ZN(n2) );
  nd02d0 U3 ( .A1(b), .A2(a), .ZN(n5) );
  inv0d1 U4 ( .I(n6), .ZN(n1) );
  inv0d0 U5 ( .I(n3), .ZN(n4) );
  aoim22d1 U6 ( .A1(n3), .A2(n5), .B1(n1), .B2(n2), .Z(ca) );
  xn02d1 U7 ( .A1(n6), .A2(n4), .ZN(s) );
  xn02d7 U8 ( .A1(a), .A2(b), .ZN(n6) );
endmodule


module fa_278 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(c), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  nd02d1 U3 ( .A1(b), .A2(a), .ZN(n4) );
  xn02d7 U4 ( .A1(a), .A2(b), .ZN(n5) );
  inv0d1 U5 ( .I(n4), .ZN(n3) );
  xn02d1 U6 ( .A1(n2), .A2(n5), .ZN(s) );
  aoim22d2 U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
endmodule


module fa_279 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  xr02d1 U1 ( .A1(n2), .A2(n6), .Z(s) );
  inv0d0 U2 ( .I(c), .ZN(n1) );
  inv0d1 U3 ( .I(n1), .ZN(n2) );
  nd02d0 U4 ( .A1(b), .A2(a), .ZN(n4) );
  inv0d1 U5 ( .I(n4), .ZN(n3) );
  xn02d1 U6 ( .A1(a), .A2(b), .ZN(n5) );
  inv0d0 U7 ( .I(n5), .ZN(n6) );
  aoim22d2 U8 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
endmodule


module fa_280 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  nd02d1 U1 ( .A1(b), .A2(a), .ZN(n3) );
  oaim21d1 U2 ( .B1(c), .B2(n1), .A(n3), .ZN(ca) );
  inv0d0 U3 ( .I(n4), .ZN(n1) );
  buffd1 U4 ( .I(c), .Z(n2) );
  xn02d1 U5 ( .A1(a), .A2(b), .ZN(n4) );
  xn02d1 U6 ( .A1(n2), .A2(n4), .ZN(s) );
endmodule


module fa_8bit_11 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_280 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_279 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_278 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_277 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_276 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_275 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_274 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_273 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module vedic_8bit_0 ( a, b, c );
  input [7:0] a;
  input [7:0] b;
  output [15:0] c;
  wire   tempc1, \w7[4] ;
  wire   [7:4] w1;
  wire   [7:0] w3;
  wire   [7:0] w4;
  wire   [7:0] w5;
  wire   [7:4] w6;
  wire   [7:0] w8;

  vedic_4bit_0 v1 ( .a(a[3:0]), .b(b[3:0]), .c({w1, c[3:0]}) );
  vedic_4bit_15 v2 ( .a(a[7:4]), .b(b[3:0]), .c(w3) );
  fa_8bit_0 f1 ( .a({1'b0, 1'b0, 1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(tempc1) );
  vedic_4bit_14 v3 ( .a(a[3:0]), .b(b[7:4]), .c(w5) );
  fa_8bit_11 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[7:4]}), .cout(
        \w7[4] ) );
  vedic_4bit_13 v4 ( .a(a[7:4]), .b(b[7:4]), .c(w8) );
  fa_8bit_10 f3 ( .a({1'b0, 1'b0, 1'b0, \w7[4] , w6}), .b(w8), .cin(1'b0), 
        .sum(c[15:8]) );
endmodule


module fa_0 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n3) );
  inv0d0 U2 ( .I(n2), .ZN(n1) );
  oaim22d1 U3 ( .A1(n5), .A2(n4), .B1(a), .B2(n1), .ZN(ca) );
  inv0d0 U4 ( .I(c), .ZN(n4) );
  inv0d0 U5 ( .I(b), .ZN(n2) );
  xn02d1 U6 ( .A1(c), .A2(n5), .ZN(s) );
  xr02d1 U7 ( .A1(n3), .A2(b), .Z(n5) );
endmodule


module fa_321 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  aoim22d2 U1 ( .A1(n5), .A2(n4), .B1(c), .B2(n3), .Z(ca) );
  inv0d0 U2 ( .I(c), .ZN(n1) );
  inv0d1 U3 ( .I(n1), .ZN(n2) );
  nd02d0 U4 ( .A1(b), .A2(a), .ZN(n4) );
  inv0d0 U5 ( .I(n4), .ZN(n3) );
  xn02d2 U6 ( .A1(a), .A2(b), .ZN(n5) );
  inv0d0 U7 ( .I(n5), .ZN(n6) );
  xr02d1 U8 ( .A1(n2), .A2(n6), .Z(s) );
endmodule


module fa_322 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  buffd1 U1 ( .I(c), .Z(n1) );
  xr02d1 U2 ( .A1(n5), .A2(n1), .Z(s) );
  aoim22d1 U3 ( .A1(n4), .A2(n3), .B1(c), .B2(n2), .Z(ca) );
  nd02d0 U4 ( .A1(b), .A2(a), .ZN(n3) );
  inv0d0 U5 ( .I(n3), .ZN(n2) );
  xn02d2 U6 ( .A1(a), .A2(b), .ZN(n4) );
  inv0d0 U7 ( .I(n4), .ZN(n5) );
endmodule


module fa_323 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  inv0d0 U1 ( .I(n3), .ZN(n4) );
  an02d1 U2 ( .A1(n2), .A2(a), .Z(n5) );
  xr02d1 U3 ( .A1(b), .A2(a), .Z(n1) );
  buffd1 U4 ( .I(b), .Z(n2) );
  inv0d2 U5 ( .I(c), .ZN(n3) );
  aoim22d1 U6 ( .A1(n3), .A2(n6), .B1(n1), .B2(n5), .Z(ca) );
  inv0d2 U7 ( .I(n5), .ZN(n6) );
  xr02d1 U8 ( .A1(n4), .A2(n1), .Z(s) );
endmodule


module fa_324 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  inv0d0 U1 ( .I(c), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  xn02d1 U3 ( .A1(b), .A2(a), .ZN(n7) );
  buffd1 U4 ( .I(n2), .Z(n3) );
  xr02d1 U5 ( .A1(n8), .A2(n3), .Z(s) );
  inv0d0 U6 ( .I(n7), .ZN(n8) );
  inv0d1 U7 ( .I(n6), .ZN(n5) );
  buffd1 U8 ( .I(b), .Z(n4) );
  nd02d0 U9 ( .A1(n4), .A2(a), .ZN(n6) );
  aoim22d2 U10 ( .A1(n7), .A2(n6), .B1(c), .B2(n5), .Z(ca) );
endmodule


module fa_325 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  nd02d0 U1 ( .A1(b), .A2(a), .ZN(n1) );
  oaim21d1 U2 ( .B1(c), .B2(n2), .A(n1), .ZN(ca) );
  inv0d1 U3 ( .I(n4), .ZN(n2) );
  buffd1 U4 ( .I(c), .Z(n3) );
  xn02d2 U5 ( .A1(a), .A2(b), .ZN(n4) );
  inv0d0 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(n3), .A2(n5), .Z(s) );
endmodule


module fa_326 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  buffd1 U1 ( .I(c), .Z(n1) );
  xn02d1 U2 ( .A1(a), .A2(b), .ZN(n4) );
  aoim22d1 U3 ( .A1(n4), .A2(n3), .B1(c), .B2(n2), .Z(ca) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  an02d1 U5 ( .A1(b), .A2(a), .Z(n2) );
  inv0d0 U6 ( .I(n2), .ZN(n3) );
  xr02d1 U7 ( .A1(n5), .A2(n1), .Z(s) );
endmodule


module fa_327 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  xn02d1 U1 ( .A1(a), .A2(b), .ZN(n5) );
  inv0d0 U2 ( .I(c), .ZN(n1) );
  inv0d0 U3 ( .I(n1), .ZN(n2) );
  inv0d0 U4 ( .I(n5), .ZN(n6) );
  an02d1 U5 ( .A1(b), .A2(a), .Z(n3) );
  inv0d0 U6 ( .I(n3), .ZN(n4) );
  aoim22d2 U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
  xr02d1 U8 ( .A1(n2), .A2(n6), .Z(s) );
endmodule


module fa_328 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  xr02d1 U1 ( .A1(n3), .A2(n5), .Z(s) );
  nd02d0 U2 ( .A1(b), .A2(a), .ZN(n1) );
  oaim21d1 U3 ( .B1(c), .B2(n2), .A(n1), .ZN(ca) );
  inv0d1 U4 ( .I(n4), .ZN(n2) );
  buffd1 U5 ( .I(c), .Z(n3) );
  inv0d0 U6 ( .I(n4), .ZN(n5) );
  xn02d1 U7 ( .A1(a), .A2(b), .ZN(n4) );
endmodule


module fa_329 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  xn02d1 U1 ( .A1(a), .A2(b), .ZN(n6) );
  nd12d2 U2 ( .A1(n1), .A2(a), .ZN(n5) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  buffd1 U4 ( .I(c), .Z(n2) );
  xn02d1 U5 ( .A1(n3), .A2(n2), .ZN(s) );
  xn02d1 U6 ( .A1(a), .A2(b), .ZN(n3) );
  inv0d2 U7 ( .I(n5), .ZN(n4) );
  aoim22d1 U8 ( .A1(n6), .A2(n5), .B1(c), .B2(n4), .Z(ca) );
endmodule


module fa_330 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  inv0d0 U1 ( .I(c), .ZN(n1) );
  inv0d0 U2 ( .I(n1), .ZN(n2) );
  an02d1 U3 ( .A1(a), .A2(b), .Z(n4) );
  buffd1 U4 ( .I(n2), .Z(n3) );
  xn02d2 U5 ( .A1(a), .A2(b), .ZN(n6) );
  aoim22d1 U6 ( .A1(n6), .A2(n5), .B1(c), .B2(n4), .Z(ca) );
  xn02d2 U7 ( .A1(n3), .A2(n6), .ZN(s) );
  inv0d1 U8 ( .I(n4), .ZN(n5) );
endmodule


module fa_331 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  cg01d1 U1 ( .A(b), .B(a), .CI(c), .CO(ca) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n3), .ZN(n1) );
  xr02d1 U4 ( .A1(a), .A2(b), .Z(n2) );
  xr02d1 U5 ( .A1(n1), .A2(n2), .Z(s) );
endmodule


module fa_332 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  buffd1 U1 ( .I(n6), .Z(n1) );
  inv0d2 U2 ( .I(n10), .ZN(n9) );
  nd02d1 U3 ( .A1(a), .A2(b), .ZN(n4) );
  nd02d2 U4 ( .A1(n2), .A2(n3), .ZN(n5) );
  nd02d2 U5 ( .A1(n4), .A2(n5), .ZN(n11) );
  inv0d1 U6 ( .I(a), .ZN(n2) );
  inv0d0 U7 ( .I(b), .ZN(n3) );
  bufbd3 U8 ( .I(a), .Z(n6) );
  xn02d1 U9 ( .A1(n1), .A2(b), .ZN(n7) );
  buffd1 U10 ( .I(c), .Z(n8) );
  aoim22d2 U11 ( .A1(n11), .A2(n10), .B1(n9), .B2(c), .Z(ca) );
  nd02d2 U12 ( .A1(b), .A2(n6), .ZN(n10) );
  xn02d1 U13 ( .A1(n8), .A2(n7), .ZN(s) );
endmodule


module fa_333 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  inv0d2 U1 ( .I(n8), .ZN(n7) );
  nd02d0 U2 ( .A1(a), .A2(b), .ZN(n3) );
  nd02d2 U3 ( .A1(n1), .A2(n2), .ZN(n4) );
  nd02d2 U4 ( .A1(n3), .A2(n4), .ZN(n9) );
  inv0d1 U5 ( .I(a), .ZN(n1) );
  inv0d0 U6 ( .I(b), .ZN(n2) );
  inv0d1 U7 ( .I(n9), .ZN(n10) );
  nd12d2 U8 ( .A1(n5), .A2(a), .ZN(n8) );
  inv0d0 U9 ( .I(b), .ZN(n5) );
  buffd1 U10 ( .I(c), .Z(n6) );
  aoim22d1 U11 ( .A1(n9), .A2(n8), .B1(c), .B2(n7), .Z(ca) );
  xr02d1 U12 ( .A1(n10), .A2(n6), .Z(s) );
endmodule


module fa_334 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  inv0d0 U1 ( .I(c), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  an02d1 U3 ( .A1(a), .A2(b), .Z(n3) );
  aoim22d2 U4 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
  xn02d2 U5 ( .A1(a), .A2(b), .ZN(n5) );
  inv0d1 U6 ( .I(n3), .ZN(n4) );
  inv0d0 U7 ( .I(n5), .ZN(n6) );
  xr02d1 U8 ( .A1(n2), .A2(n6), .Z(s) );
endmodule


module fa_335 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  aor22d2 U1 ( .A1(a), .A2(b), .B1(c), .B2(n4), .Z(ca) );
  xn02d2 U2 ( .A1(a), .A2(n5), .ZN(n1) );
  inv0d0 U3 ( .I(b), .ZN(n5) );
  xn02d1 U4 ( .A1(a), .A2(n5), .ZN(n4) );
  inv0d0 U5 ( .I(n3), .ZN(n2) );
  inv0d0 U6 ( .I(c), .ZN(n3) );
  xr02d1 U7 ( .A1(n2), .A2(n1), .Z(s) );
endmodule


module fa_16bit_0 ( a, b, cin, sum, cout );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;

  wire   [14:0] w;

  fa_0 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_335 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_334 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_333 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_332 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_331 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_330 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_329 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(w[7]) );
  fa_328 f9 ( .a(a[8]), .b(b[8]), .c(w[7]), .s(sum[8]), .ca(w[8]) );
  fa_327 f10 ( .a(a[9]), .b(b[9]), .c(w[8]), .s(sum[9]), .ca(w[9]) );
  fa_326 f11 ( .a(a[10]), .b(b[10]), .c(w[9]), .s(sum[10]), .ca(w[10]) );
  fa_325 f12 ( .a(a[11]), .b(b[11]), .c(w[10]), .s(sum[11]), .ca(w[11]) );
  fa_324 f13 ( .a(a[12]), .b(b[12]), .c(w[11]), .s(sum[12]), .ca(w[12]) );
  fa_323 f14 ( .a(a[13]), .b(b[13]), .c(w[12]), .s(sum[13]), .ca(w[13]) );
  fa_322 f15 ( .a(a[14]), .b(b[14]), .c(w[13]), .s(sum[14]), .ca(w[14]) );
  fa_321 f16 ( .a(a[15]), .b(b[15]), .c(w[14]), .s(sum[15]), .ca(cout) );
endmodule


module vedic_2bit_1 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_2 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_3 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_4 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d1 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module fa_1 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_2 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_3 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_1 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_4 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_3 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_2 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_1 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_5 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_6 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_7 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_8 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_2 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_8 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_7 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_6 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_5 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_9 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_10 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_11 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_12 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_3 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_12 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_11 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_10 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_9 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_1 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_4 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_3 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_3 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_2 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_2 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_1 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_1 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_5 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_6 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_7 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_8 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  nd12d1 U1 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  an02d1 U2 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  xr02d1 U5 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U6 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  inv0d2 U7 ( .I(n4), .ZN(c[3]) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module fa_13 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_14 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_15 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_16 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_4 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_16 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_15 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_14 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_13 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_17 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_18 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_19 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_20 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_5 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_20 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_19 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_18 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_17 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_21 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_22 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_23 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_24 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_6 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_24 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_23 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_22 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_21 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_2 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_8 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_7 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_6 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_6 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_5 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_5 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_4 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_9 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_10 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_11 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_12 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d1 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module fa_25 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_26 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_27 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_28 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_7 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_28 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_27 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_26 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_25 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_29 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_30 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_31 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_32 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_8 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_32 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_31 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_30 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_29 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_33 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_34 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_35 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_36 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_9 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_36 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_35 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_34 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_33 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_3 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_12 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_11 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_9 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_10 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_8 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_9 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_7 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_13 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_14 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_15 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  nd12d1 U1 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U2 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U3 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U4 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U5 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U6 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  inv0d2 U7 ( .I(n4), .ZN(c[3]) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_16 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  nd12d1 U1 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  an02d1 U2 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  xr02d1 U5 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U6 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  inv0d2 U7 ( .I(n4), .ZN(c[3]) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module fa_37 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_38 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_39 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_40 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  invbd2 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_10 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_40 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_39 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_38 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_37 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_41 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_42 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_43 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_44 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_11 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_44 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_43 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_42 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_41 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_45 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_46 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_47 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_48 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_12 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_48 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_47 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_46 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_45 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_4 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_16 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_15 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_12 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_14 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_11 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_13 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_10 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module fa_193 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_194 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_195 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_196 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(a), .ZN(n2) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_197 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_198 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_199 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_200 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_8bit_1 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_200 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_199 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_198 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_197 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_196 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_195 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_194 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_193 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module fa_201 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_202 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_203 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_204 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_205 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_206 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_207 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  aor22d2 U1 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  invbd2 U2 ( .I(n4), .ZN(n1) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_208 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  aor22d2 U1 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d0 U2 ( .I(n4), .ZN(n1) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_8bit_2 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_208 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_207 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_206 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_205 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_204 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_203 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_202 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_201 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module fa_209 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_210 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_211 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_212 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_213 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_214 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_215 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_216 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(a), .ZN(n2) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_8bit_3 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_216 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_215 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_214 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_213 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_212 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_211 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_210 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_209 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module vedic_8bit_1 ( a, b, c );
  input [7:0] a;
  input [7:0] b;
  output [15:0] c;
  wire   tempc1, \w7[4] ;
  wire   [7:4] w1;
  wire   [7:0] w3;
  wire   [7:0] w4;
  wire   [7:0] w5;
  wire   [7:4] w6;
  wire   [7:0] w8;

  vedic_4bit_4 v1 ( .a(a[3:0]), .b(b[3:0]), .c({w1, c[3:0]}) );
  vedic_4bit_3 v2 ( .a(a[7:4]), .b(b[3:0]), .c(w3) );
  fa_8bit_3 f1 ( .a({1'b0, 1'b0, 1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(tempc1) );
  vedic_4bit_2 v3 ( .a(a[3:0]), .b(b[7:4]), .c(w5) );
  fa_8bit_2 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[7:4]}), .cout(
        \w7[4] ) );
  vedic_4bit_1 v4 ( .a(a[7:4]), .b(b[7:4]), .c(w8) );
  fa_8bit_1 f3 ( .a({1'b0, 1'b0, 1'b0, \w7[4] , w6}), .b(w8), .cin(1'b0), 
        .sum(c[15:8]) );
endmodule


module vedic_2bit_17 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_18 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_19 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_20 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  nd12d1 U1 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  an02d1 U2 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  xr02d1 U5 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U6 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  inv0d2 U7 ( .I(n4), .ZN(c[3]) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module fa_49 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_50 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d1 U3 ( .I(n4), .ZN(n5) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_51 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  invbd2 U3 ( .I(n4), .ZN(n5) );
  inv0d0 U4 ( .I(b), .ZN(n1) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_52 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d2 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_13 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_52 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_51 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_50 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_49 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_53 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_54 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d2 U3 ( .I(a), .ZN(n2) );
  xr02d1 U4 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_55 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_56 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_14 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_56 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_55 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_54 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_53 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_57 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_58 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_59 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_60 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_15 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_60 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_59 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_58 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_57 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_5 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_20 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_19 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_15 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_18 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_14 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_17 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_13 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_21 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  nd12d1 U1 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U2 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  an02d1 U4 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U5 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U6 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  inv0d2 U7 ( .I(n4), .ZN(c[3]) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_22 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_23 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_24 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  invbd2 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module fa_61 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_62 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_63 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_64 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d7 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_16 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_64 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_63 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_62 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_61 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_65 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_66 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_67 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  invbd2 U1 ( .I(n4), .ZN(n1) );
  inv0d0 U2 ( .I(n3), .ZN(n2) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  aor22d1 U4 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_68 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_17 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_68 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_67 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_66 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_65 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_69 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_70 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_71 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_72 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U3 ( .I(a), .ZN(n2) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_18 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_72 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_71 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_70 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_69 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_6 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_24 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_23 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_18 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_22 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_17 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_21 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_16 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_25 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  nr02d1 U1 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  inv0d0 U2 ( .I(c[0]), .ZN(n2) );
  nd02d1 U3 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_26 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_27 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_28 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  nd12d1 U1 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  an02d1 U2 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  xr02d1 U5 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U6 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  inv0d2 U7 ( .I(n4), .ZN(c[3]) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module fa_73 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d2 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_74 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d1 U3 ( .I(n4), .ZN(n5) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_75 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d2 U3 ( .I(a), .ZN(n2) );
  xr02d1 U4 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_76 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d2 U3 ( .I(a), .ZN(n2) );
  xr02d1 U4 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_19 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_76 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_75 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_74 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_73 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_77 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_78 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_79 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  aor22d2 U1 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d2 U2 ( .I(n4), .ZN(n1) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_80 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_20 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_80 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_79 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_78 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_77 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_81 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_82 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_83 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_84 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_21 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_84 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_83 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_82 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_81 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_7 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_28 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_27 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_21 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_26 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_20 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_25 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_19 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_29 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  invbd2 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_30 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(c[3]) );
  nd12d0 U2 ( .A1(n5), .A2(c[0]), .ZN(n4) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n2) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n3) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n3), .A2(n2), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n5) );
  nr02d1 U8 ( .A1(c[3]), .A2(n5), .ZN(c[2]) );
endmodule


module vedic_2bit_31 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_32 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  invbd2 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module fa_85 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_86 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d1 U3 ( .I(a), .ZN(n2) );
  xr02d1 U4 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_87 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_88 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  invbd2 U2 ( .I(n4), .ZN(n5) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_22 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_88 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_87 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_86 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_85 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_89 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_90 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_91 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_92 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n2) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  invbd2 U3 ( .I(n4), .ZN(n1) );
  oaim22d1 U4 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .ZN(ca) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_4bit_23 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_92 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_91 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_90 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_89 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_93 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_94 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_95 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_96 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_24 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_96 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_95 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_94 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_93 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_8 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_32 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_31 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_24 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_30 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_23 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_29 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_22 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module fa_217 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_218 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_219 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(b), .ZN(n2) );
  inv0d0 U2 ( .I(n4), .ZN(n1) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  oaim22d1 U4 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .ZN(ca) );
  inv0d0 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_220 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d1 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_221 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  invbd2 U1 ( .I(n4), .ZN(n5) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_222 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_223 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_224 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d7 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_8bit_4 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_224 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_223 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_222 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_221 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_220 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_219 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_218 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_217 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module fa_225 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_226 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d2 U3 ( .I(a), .ZN(n2) );
  xr02d1 U4 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_227 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_228 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  aor22d2 U1 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  invbd2 U2 ( .I(n4), .ZN(n1) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_229 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_230 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  xn02d1 U1 ( .A1(n3), .A2(b), .ZN(n1) );
  aor22d2 U2 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  inv0d2 U4 ( .I(a), .ZN(n3) );
  xr02d1 U5 ( .A1(c), .A2(n1), .Z(s) );
endmodule


module fa_231 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_232 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  aor22d2 U1 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  invbd2 U2 ( .I(n4), .ZN(n1) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_8bit_5 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_232 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_231 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_230 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_229 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_228 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_227 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_226 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_225 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module fa_233 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_234 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_235 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_236 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_237 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_238 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_239 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_240 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(a), .ZN(n2) );
  xn02d1 U4 ( .A1(c), .A2(n4), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_8bit_6 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_240 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_239 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_238 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_237 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_236 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_235 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_234 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_233 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module vedic_8bit_2 ( a, b, c );
  input [7:0] a;
  input [7:0] b;
  output [15:0] c;
  wire   tempc1, \w7[4] ;
  wire   [7:4] w1;
  wire   [7:0] w3;
  wire   [7:0] w4;
  wire   [7:0] w5;
  wire   [7:4] w6;
  wire   [7:0] w8;

  vedic_4bit_8 v1 ( .a(a[3:0]), .b(b[3:0]), .c({w1, c[3:0]}) );
  vedic_4bit_7 v2 ( .a(a[7:4]), .b(b[3:0]), .c(w3) );
  fa_8bit_6 f1 ( .a({1'b0, 1'b0, 1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(tempc1) );
  vedic_4bit_6 v3 ( .a(a[3:0]), .b(b[7:4]), .c(w5) );
  fa_8bit_5 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[7:4]}), .cout(
        \w7[4] ) );
  vedic_4bit_5 v4 ( .a(a[7:4]), .b(b[7:4]), .c(w8) );
  fa_8bit_4 f3 ( .a({1'b0, 1'b0, 1'b0, \w7[4] , w6}), .b(w8), .cin(1'b0), 
        .sum(c[15:8]) );
endmodule


module vedic_2bit_33 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  nr02d1 U1 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  inv0d0 U2 ( .I(c[0]), .ZN(n2) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_34 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  nr02d1 U1 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  inv0d0 U2 ( .I(c[0]), .ZN(n2) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_35 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_36 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  invbd2 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module fa_97 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_98 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  inv0d1 U2 ( .I(n4), .ZN(n5) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_99 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  invbd2 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_100 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d7 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_25 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_100 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_99 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_98 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_97 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_101 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_102 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(n4), .ZN(n1) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  aor22d1 U4 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_103 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(n4), .ZN(n5) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_104 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n2) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  invbd2 U3 ( .I(n4), .ZN(n1) );
  oaim22d1 U4 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .ZN(ca) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_4bit_26 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_104 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_103 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_102 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_101 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_105 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_106 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_107 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  inv0d1 U1 ( .I(b), .ZN(n2) );
  xn02d1 U2 ( .A1(n3), .A2(b), .ZN(n1) );
  inv0d1 U3 ( .I(a), .ZN(n3) );
  oaim22d1 U4 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .ZN(ca) );
  xr02d1 U5 ( .A1(c), .A2(n1), .Z(s) );
endmodule


module fa_108 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_27 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_108 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_107 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_106 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_105 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_9 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_36 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_35 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_27 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_34 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_26 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_33 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_25 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_37 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_38 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  nr02d1 U1 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  inv0d0 U2 ( .I(c[0]), .ZN(n2) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_39 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_40 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  invbd2 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module fa_109 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_110 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_111 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_112 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_28 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_112 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_111 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_110 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_109 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_113 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_114 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d1 U3 ( .I(n4), .ZN(n5) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_115 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(n4), .ZN(n5) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_116 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n2) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  invbd2 U3 ( .I(n4), .ZN(n1) );
  oaim22d1 U4 ( .A1(n3), .A2(n2), .B1(n1), .B2(c), .ZN(ca) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_4bit_29 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_116 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_115 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_114 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_113 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_117 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_118 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_119 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_120 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_30 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_120 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_119 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_118 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_117 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_10 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_40 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_39 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_30 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_38 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_29 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_37 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_28 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_41 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  nr02d1 U1 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  inv0d0 U2 ( .I(c[0]), .ZN(n2) );
  an02d1 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d1 U5 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_42 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d1 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_43 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  xr02d2 U1 ( .A1(n5), .A2(n4), .Z(c[1]) );
  an02d2 U2 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nd02d2 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  inv0d1 U4 ( .I(c[0]), .ZN(n2) );
  nr02d2 U5 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U6 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_44 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d2 U1 ( .I(c[0]), .ZN(n2) );
  nd02d2 U2 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  an02d4 U3 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  nr02d2 U4 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U5 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module fa_121 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_122 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d1 U3 ( .I(n4), .ZN(n5) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_123 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n3) );
  inv0d2 U3 ( .I(a), .ZN(n2) );
  xr02d1 U4 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_124 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d2 U3 ( .I(a), .ZN(n2) );
  xr02d1 U4 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_31 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_124 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_123 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_122 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_121 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_125 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_126 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_127 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  invbd2 U1 ( .I(n4), .ZN(n1) );
  inv0d0 U2 ( .I(n3), .ZN(n2) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  aor22d1 U4 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_128 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_32 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_128 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_127 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_126 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_125 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_129 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_130 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n5) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_131 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_132 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U3 ( .I(a), .ZN(n2) );
  inv0d0 U4 ( .I(c), .ZN(n3) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_4bit_33 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_132 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_131 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_130 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_129 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_11 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_44 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_43 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_33 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_42 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_32 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_41 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_31 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module vedic_2bit_45 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  inv0d2 U1 ( .I(c[0]), .ZN(n2) );
  nr02d2 U2 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d1 U3 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d1 U4 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_46 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  nr02d1 U1 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  inv0d0 U2 ( .I(c[0]), .ZN(n2) );
  nd02d1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  nd02d1 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  an02d1 U5 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_47 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n2, n4, n5, n6;

  an02d4 U1 ( .A1(b[0]), .A2(a[0]), .Z(c[0]) );
  inv0d2 U2 ( .I(c[0]), .ZN(n2) );
  nr02d2 U3 ( .A1(n6), .A2(n2), .ZN(c[3]) );
  nd02d2 U4 ( .A1(b[1]), .A2(a[0]), .ZN(n5) );
  nd02d2 U5 ( .A1(a[1]), .A2(b[0]), .ZN(n4) );
  xr02d1 U6 ( .A1(n5), .A2(n4), .Z(c[1]) );
  nd02d1 U7 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d1 U8 ( .A1(c[3]), .A2(n6), .ZN(c[2]) );
endmodule


module vedic_2bit_48 ( a, b, c );
  input [1:0] a;
  input [1:0] b;
  output [3:0] c;
  wire   n1, n2, n3, n4, n5, n6;

  nd02d2 U1 ( .A1(a[1]), .A2(b[0]), .ZN(n3) );
  nd12d2 U2 ( .A1(n6), .A2(c[0]), .ZN(n5) );
  nd02d1 U3 ( .A1(b[1]), .A2(a[0]), .ZN(n4) );
  bufbd1 U4 ( .I(n6), .Z(n1) );
  nd02d2 U5 ( .A1(b[0]), .A2(a[0]), .ZN(n2) );
  nd02d2 U6 ( .A1(a[1]), .A2(b[1]), .ZN(n6) );
  nr02d2 U7 ( .A1(c[3]), .A2(n1), .ZN(c[2]) );
  inv0d2 U8 ( .I(n2), .ZN(c[0]) );
  xr02d1 U9 ( .A1(n4), .A2(n3), .Z(c[1]) );
  inv0d2 U10 ( .I(n5), .ZN(c[3]) );
endmodule


module fa_133 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_134 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  oai22d2 U1 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(ca) );
  xn02d1 U2 ( .A1(n1), .A2(n5), .ZN(s) );
  inv0d1 U3 ( .I(c), .ZN(n4) );
  inv0d2 U4 ( .I(n4), .ZN(n1) );
  inv0d1 U5 ( .I(a), .ZN(n3) );
  inv0d0 U6 ( .I(b), .ZN(n2) );
  xr02d1 U7 ( .A1(n3), .A2(b), .Z(n5) );
endmodule


module fa_135 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  xr02d1 U1 ( .A1(n3), .A2(b), .Z(n5) );
  xr02d1 U2 ( .A1(n3), .A2(b), .Z(n1) );
  invbd2 U3 ( .I(a), .ZN(n3) );
  xn02d1 U4 ( .A1(c), .A2(n1), .ZN(s) );
  inv0d0 U5 ( .I(b), .ZN(n2) );
  inv0d1 U6 ( .I(c), .ZN(n4) );
  oai22d1 U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(ca) );
endmodule


module fa_136 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  inv0d2 U2 ( .I(n4), .ZN(n5) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_4bit_34 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_136 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_135 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_134 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_133 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_137 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(b), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n2) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  xr02d1 U4 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_138 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2;

  cg01d1 U1 ( .A(a), .B(b), .CI(c), .CO(ca) );
  invbd2 U2 ( .I(a), .ZN(n1) );
  xn02d1 U3 ( .A1(c), .A2(n2), .ZN(s) );
  xr02d1 U4 ( .A1(n1), .A2(b), .Z(n2) );
endmodule


module fa_139 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(c), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  inv0d1 U3 ( .I(n5), .ZN(n3) );
  inv0d1 U4 ( .I(a), .ZN(n4) );
  aor22d4 U5 ( .A1(a), .A2(b), .B1(n3), .B2(c), .Z(ca) );
  xn02d1 U6 ( .A1(n2), .A2(n5), .ZN(s) );
  xr02d1 U7 ( .A1(n4), .A2(b), .Z(n5) );
endmodule


module fa_140 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  inv0d1 U1 ( .I(c), .ZN(n4) );
  oaim22d1 U2 ( .A1(n5), .A2(n4), .B1(n2), .B2(b), .ZN(ca) );
  inv0d1 U3 ( .I(n5), .ZN(n6) );
  inv0d0 U4 ( .I(n4), .ZN(n1) );
  inv0d0 U5 ( .I(n3), .ZN(n2) );
  inv0d2 U6 ( .I(a), .ZN(n3) );
  xr02d1 U7 ( .A1(n3), .A2(b), .Z(n5) );
  xr02d1 U8 ( .A1(n1), .A2(n6), .Z(s) );
endmodule


module fa_4bit_35 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_140 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_139 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_138 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_137 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module fa_141 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  oai22d1 U1 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(ca) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  inv0d2 U5 ( .I(c), .ZN(n3) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
endmodule


module fa_142 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  inv0d0 U1 ( .I(n4), .ZN(n1) );
  inv0d1 U2 ( .I(c), .ZN(n4) );
  xr02d1 U3 ( .A1(n1), .A2(n6), .Z(s) );
  inv0d0 U4 ( .I(n5), .ZN(n6) );
  inv0d0 U5 ( .I(b), .ZN(n2) );
  inv0d0 U6 ( .I(a), .ZN(n3) );
  oai22d2 U7 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(ca) );
  xr02d1 U8 ( .A1(n3), .A2(b), .Z(n5) );
endmodule


module fa_143 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d2 U1 ( .I(n5), .ZN(n3) );
  xr02d1 U2 ( .A1(n4), .A2(b), .Z(n5) );
  inv0d2 U3 ( .I(a), .ZN(n4) );
  inv0d0 U4 ( .I(n1), .ZN(n2) );
  inv0d0 U5 ( .I(b), .ZN(n1) );
  aor22d2 U6 ( .A1(a), .A2(n2), .B1(n3), .B2(c), .Z(ca) );
  xr02d1 U7 ( .A1(c), .A2(n3), .Z(s) );
endmodule


module fa_144 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(c), .ZN(n3) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  xn02d1 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  oai22d2 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
endmodule


module fa_4bit_36 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;

  wire   [2:0] w;

  fa_144 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_143 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_142 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_141 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(cout) );
endmodule


module vedic_4bit_12 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [7:0] c;
  wire   tempc1, \w7[2] ;
  wire   [3:2] w1;
  wire   [3:0] w3;
  wire   [3:0] w4;
  wire   [3:0] w5;
  wire   [3:2] w6;
  wire   [3:0] w8;

  vedic_2bit_48 v1 ( .a(a[1:0]), .b(b[1:0]), .c({w1, c[1:0]}) );
  vedic_2bit_47 v2 ( .a(a[3:2]), .b(b[1:0]), .c(w3) );
  fa_4bit_36 f1 ( .a({1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(
        tempc1) );
  vedic_2bit_46 v3 ( .a(a[1:0]), .b(b[3:2]), .c(w5) );
  fa_4bit_35 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[3:2]}), .cout(
        \w7[2] ) );
  vedic_2bit_45 v4 ( .a(a[3:2]), .b(b[3:2]), .c(w8) );
  fa_4bit_34 f3 ( .a({1'b0, \w7[2] , w6}), .b(w8), .cin(1'b0), .sum(c[7:4]) );
endmodule


module fa_241 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(b), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_242 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2;

  xn02d1 U1 ( .A1(n2), .A2(b), .ZN(n1) );
  inv0d0 U2 ( .I(a), .ZN(n2) );
  aor22d2 U3 ( .A1(n1), .A2(c), .B1(a), .B2(b), .Z(ca) );
  xr02d1 U4 ( .A1(c), .A2(n1), .Z(s) );
endmodule


module fa_243 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  xr02d1 U1 ( .A1(c), .A2(n5), .Z(s) );
  oai22d1 U2 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(ca) );
  invbd2 U3 ( .I(n4), .ZN(n5) );
  inv0d0 U4 ( .I(b), .ZN(n1) );
  inv0d0 U5 ( .I(a), .ZN(n2) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
  inv0d2 U7 ( .I(c), .ZN(n3) );
endmodule


module fa_244 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2;

  xn02d1 U1 ( .A1(n2), .A2(b), .ZN(n1) );
  aor22d2 U2 ( .A1(c), .A2(n1), .B1(a), .B2(b), .Z(ca) );
  xr02d1 U3 ( .A1(c), .A2(n1), .Z(s) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
endmodule


module fa_245 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  xn02d2 U2 ( .A1(a), .A2(b), .ZN(n4) );
  inv0d1 U3 ( .I(a), .ZN(n3) );
  invbd2 U4 ( .I(n4), .ZN(n1) );
  aor22d2 U5 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d0 U6 ( .I(n3), .ZN(n2) );
endmodule


module fa_246 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  inv0d1 U1 ( .I(a), .ZN(n3) );
  xn02d2 U2 ( .A1(a), .A2(b), .ZN(n5) );
  inv0d1 U3 ( .I(n4), .ZN(n1) );
  inv0d1 U4 ( .I(n5), .ZN(n6) );
  inv0d0 U5 ( .I(b), .ZN(n2) );
  oai22d2 U6 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(ca) );
  inv0d2 U7 ( .I(c), .ZN(n4) );
  xr02d1 U8 ( .A1(n1), .A2(n6), .Z(s) );
endmodule


module fa_247 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(n4), .ZN(n5) );
  xn02d1 U2 ( .A1(a), .A2(b), .ZN(n4) );
  oai22d1 U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  inv0d0 U5 ( .I(b), .ZN(n1) );
  inv0d1 U6 ( .I(c), .ZN(n3) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_248 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_8bit_7 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_248 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_247 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_246 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_245 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_244 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_243 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_242 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_241 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module fa_249 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(n3), .ZN(n2) );
  aor22d2 U3 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d0 U4 ( .I(n4), .ZN(n1) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_250 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(a), .ZN(n3) );
  aor22d2 U2 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  xn02d2 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d1 U4 ( .I(n4), .ZN(n1) );
  inv0d0 U5 ( .I(n3), .ZN(n2) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_251 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  xn02d2 U2 ( .A1(c), .A2(n4), .ZN(s) );
  oai22d2 U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  inv0d2 U6 ( .I(c), .ZN(n3) );
endmodule


module fa_252 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  aor22d2 U1 ( .A1(c), .A2(n1), .B1(n2), .B2(b), .Z(ca) );
  inv0d1 U2 ( .I(n4), .ZN(n1) );
  inv0d0 U3 ( .I(n3), .ZN(n2) );
  xn02d2 U4 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_253 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  xn02d1 U1 ( .A1(n3), .A2(b), .ZN(n1) );
  inv0d0 U2 ( .I(n3), .ZN(n2) );
  aor22d2 U3 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  inv0d2 U4 ( .I(a), .ZN(n3) );
  xr02d1 U5 ( .A1(c), .A2(n1), .Z(s) );
endmodule


module fa_254 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(b), .ZN(n1) );
  xr02d4 U2 ( .A1(c), .A2(n5), .Z(s) );
  inv0d0 U3 ( .I(n4), .ZN(n5) );
  oai22d2 U4 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d2 U5 ( .I(a), .ZN(n2) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
  inv0d2 U7 ( .I(c), .ZN(n3) );
endmodule


module fa_255 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  aor22d4 U1 ( .A1(n1), .A2(c), .B1(n2), .B2(b), .Z(ca) );
  xn02d1 U2 ( .A1(c), .A2(n4), .ZN(s) );
  invbd2 U3 ( .I(n4), .ZN(n1) );
  inv0d0 U4 ( .I(n3), .ZN(n2) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_256 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(n4), .ZN(n1) );
  xn02d7 U2 ( .A1(c), .A2(n4), .ZN(s) );
  aor22d2 U3 ( .A1(c), .A2(n1), .B1(n2), .B2(b), .Z(ca) );
  inv0d0 U4 ( .I(n3), .ZN(n2) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_8bit_8 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_256 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_255 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_254 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_253 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_252 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_251 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_250 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_249 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module fa_257 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(n3), .A2(b), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n4) );
  aor22d2 U3 ( .A1(n1), .A2(c), .B1(a), .B2(b), .Z(ca) );
  inv0d0 U4 ( .I(n4), .ZN(n2) );
  inv0d0 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n2), .A2(n1), .Z(s) );
endmodule


module fa_258 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  aor22d2 U1 ( .A1(a), .A2(b), .B1(c), .B2(n1), .Z(ca) );
  inv0d0 U2 ( .I(n5), .ZN(n1) );
  inv0d0 U3 ( .I(c), .ZN(n2) );
  inv0d1 U4 ( .I(n2), .ZN(n3) );
  xn02d1 U5 ( .A1(n3), .A2(n5), .ZN(s) );
  inv0d0 U6 ( .I(a), .ZN(n4) );
  xr02d1 U7 ( .A1(n4), .A2(b), .Z(n5) );
endmodule


module fa_259 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  invbd2 U1 ( .I(c), .ZN(n3) );
  oaim22d1 U2 ( .A1(n4), .A2(n3), .B1(a), .B2(b), .ZN(ca) );
  inv0d0 U3 ( .I(n3), .ZN(n1) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  inv0d0 U5 ( .I(a), .ZN(n2) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
  xr02d1 U7 ( .A1(n1), .A2(n5), .Z(s) );
endmodule


module fa_260 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d2 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d0 U4 ( .I(a), .ZN(n2) );
  oai22d2 U5 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
endmodule


module fa_261 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1;

  aor22d4 U1 ( .A1(n1), .A2(c), .B1(a), .B2(b), .Z(ca) );
  xr02d2 U2 ( .A1(a), .A2(b), .Z(n1) );
  xr02d1 U3 ( .A1(c), .A2(n1), .Z(s) );
endmodule


module fa_262 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1;

  xr02d1 U1 ( .A1(a), .A2(b), .Z(n1) );
  aor22d4 U2 ( .A1(a), .A2(b), .B1(n1), .B2(c), .Z(ca) );
  xr02d1 U3 ( .A1(c), .A2(n1), .Z(s) );
endmodule


module fa_263 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  inv0d1 U2 ( .I(b), .ZN(n1) );
  inv0d1 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(n4), .ZN(n5) );
  oai22d2 U5 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
  xr02d1 U7 ( .A1(c), .A2(n5), .Z(s) );
endmodule


module fa_264 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(b), .ZN(n1) );
  inv0d1 U4 ( .I(a), .ZN(n2) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n4) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_8bit_9 ( a, b, cin, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input cin;
  output cout;

  wire   [6:0] w;

  fa_264 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_263 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_262 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_261 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_260 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_259 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_258 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_257 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(cout) );
endmodule


module vedic_8bit_3 ( a, b, c );
  input [7:0] a;
  input [7:0] b;
  output [15:0] c;
  wire   tempc1, \w7[4] ;
  wire   [7:4] w1;
  wire   [7:0] w3;
  wire   [7:0] w4;
  wire   [7:0] w5;
  wire   [7:4] w6;
  wire   [7:0] w8;

  vedic_4bit_12 v1 ( .a(a[3:0]), .b(b[3:0]), .c({w1, c[3:0]}) );
  vedic_4bit_11 v2 ( .a(a[7:4]), .b(b[3:0]), .c(w3) );
  fa_8bit_9 f1 ( .a({1'b0, 1'b0, 1'b0, 1'b0, w1}), .b(w3), .cin(1'b0), .sum(w4), .cout(tempc1) );
  vedic_4bit_10 v3 ( .a(a[3:0]), .b(b[7:4]), .c(w5) );
  fa_8bit_8 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum({w6, c[7:4]}), .cout(
        \w7[4] ) );
  vedic_4bit_9 v4 ( .a(a[7:4]), .b(b[7:4]), .c(w8) );
  fa_8bit_7 f3 ( .a({1'b0, 1'b0, 1'b0, \w7[4] , w6}), .b(w8), .cin(1'b0), 
        .sum(c[15:8]) );
endmodule


module fa_289 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  inv0d0 U1 ( .I(n9), .ZN(n3) );
  xr02d2 U2 ( .A1(n7), .A2(b), .Z(n9) );
  inv0d0 U3 ( .I(n2), .ZN(n1) );
  nd02d2 U4 ( .A1(c), .A2(n9), .ZN(n4) );
  nd02d2 U5 ( .A1(n2), .A2(n3), .ZN(n5) );
  nd02d2 U6 ( .A1(n5), .A2(n4), .ZN(s) );
  invbd2 U7 ( .I(c), .ZN(n2) );
  inv0d0 U8 ( .I(b), .ZN(n6) );
  inv0d0 U9 ( .I(a), .ZN(n7) );
  inv0d0 U10 ( .I(n1), .ZN(n8) );
  oai22d1 U11 ( .A1(n9), .A2(n8), .B1(n7), .B2(n6), .ZN(ca) );
endmodule


module fa_290 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(n1), .A2(n4), .ZN(s) );
  buffd2 U2 ( .I(c), .Z(n1) );
  aoim22d2 U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(c), .Z(ca) );
  nd02d0 U4 ( .A1(b), .A2(a), .ZN(n3) );
  inv0d0 U5 ( .I(n3), .ZN(n2) );
  xn02d1 U6 ( .A1(a), .A2(b), .ZN(n4) );
endmodule


module fa_291 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xr02d1 U1 ( .A1(n1), .A2(n4), .Z(s) );
  inv0d0 U2 ( .I(c), .ZN(n1) );
  aoim22d2 U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(c), .Z(ca) );
  inv0d0 U4 ( .I(n3), .ZN(n2) );
  xn02d1 U5 ( .A1(a), .A2(b), .ZN(n4) );
  nd02d1 U6 ( .A1(b), .A2(a), .ZN(n3) );
endmodule


module fa_292 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  inv0d0 U1 ( .I(n5), .ZN(n2) );
  nd02d0 U2 ( .A1(b), .A2(a), .ZN(n5) );
  inv0d0 U3 ( .I(n6), .ZN(n1) );
  xn02d1 U4 ( .A1(n4), .A2(n6), .ZN(s) );
  inv0d0 U5 ( .I(n3), .ZN(n4) );
  aoim22d1 U6 ( .A1(n3), .A2(n5), .B1(n1), .B2(n2), .Z(ca) );
  inv0d2 U7 ( .I(c), .ZN(n3) );
  xn02d1 U8 ( .A1(a), .A2(b), .ZN(n6) );
endmodule


module fa_293 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  inv0d0 U1 ( .I(n6), .ZN(n1) );
  inv0d0 U2 ( .I(n3), .ZN(n4) );
  aoim22d1 U3 ( .A1(n3), .A2(n5), .B1(n1), .B2(n2), .Z(ca) );
  invbdk U4 ( .I(n5), .ZN(n2) );
  inv0d2 U5 ( .I(c), .ZN(n3) );
  nd02d4 U6 ( .A1(b), .A2(a), .ZN(n5) );
  xn02d1 U7 ( .A1(n4), .A2(n6), .ZN(s) );
  xn02d1 U8 ( .A1(a), .A2(b), .ZN(n6) );
endmodule


module fa_294 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7;

  inv0d0 U1 ( .I(n2), .ZN(n1) );
  xn02d1 U2 ( .A1(n5), .A2(n3), .ZN(s) );
  xn02d7 U3 ( .A1(a), .A2(b), .ZN(n7) );
  inv0d2 U4 ( .I(n7), .ZN(n3) );
  inv0d2 U5 ( .I(c), .ZN(n2) );
  inv0d0 U6 ( .I(n1), .ZN(n5) );
  aoim22d1 U7 ( .A1(n2), .A2(n6), .B1(n3), .B2(n4), .Z(ca) );
  invbdk U8 ( .I(n6), .ZN(n4) );
  nd02d4 U9 ( .A1(b), .A2(a), .ZN(n6) );
endmodule


module fa_295 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  buffd1 U1 ( .I(c), .Z(n1) );
  xn02d2 U2 ( .A1(n1), .A2(n4), .ZN(s) );
  aoim22d2 U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(c), .Z(ca) );
  nd02d0 U4 ( .A1(b), .A2(a), .ZN(n3) );
  inv0d0 U5 ( .I(n3), .ZN(n2) );
  xn02d1 U6 ( .A1(a), .A2(b), .ZN(n4) );
endmodule


module fa_296 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(n1), .A2(n4), .ZN(s) );
  nd02d2 U2 ( .A1(b), .A2(a), .ZN(n3) );
  xn02d2 U3 ( .A1(a), .A2(b), .ZN(n4) );
  buffd1 U4 ( .I(c), .Z(n1) );
  aoim22d1 U5 ( .A1(n4), .A2(n3), .B1(c), .B2(n2), .Z(ca) );
  inv0d1 U6 ( .I(n3), .ZN(n2) );
endmodule


module fa_297 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(n1), .A2(n4), .ZN(s) );
  buffd1 U2 ( .I(c), .Z(n1) );
  xn02d2 U3 ( .A1(a), .A2(b), .ZN(n4) );
  nd02d2 U4 ( .A1(b), .A2(a), .ZN(n3) );
  aoim22d1 U5 ( .A1(n4), .A2(n3), .B1(c), .B2(n2), .Z(ca) );
  inv0d1 U6 ( .I(n3), .ZN(n2) );
endmodule


module fa_298 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  xr02d1 U1 ( .A1(n5), .A2(n1), .Z(s) );
  xn02d1 U2 ( .A1(a), .A2(b), .ZN(n4) );
  nd02d1 U3 ( .A1(b), .A2(a), .ZN(n3) );
  buffd1 U4 ( .I(c), .Z(n1) );
  inv0d1 U5 ( .I(n3), .ZN(n2) );
  aoim22d2 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(c), .Z(ca) );
  inv0d0 U7 ( .I(n4), .ZN(n5) );
endmodule


module fa_299 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7;

  inv0d2 U1 ( .I(c), .ZN(n1) );
  inv0d0 U2 ( .I(c), .ZN(n6) );
  xn02d1 U3 ( .A1(a), .A2(n3), .ZN(n5) );
  inv0d0 U4 ( .I(b), .ZN(n3) );
  inv0d1 U5 ( .I(n2), .ZN(n7) );
  xr02d1 U6 ( .A1(n4), .A2(n5), .Z(s) );
  an02d2 U7 ( .A1(b), .A2(a), .Z(n2) );
  inv0d0 U8 ( .I(n6), .ZN(n4) );
  aoim22d1 U9 ( .A1(n1), .A2(n7), .B1(n5), .B2(n2), .Z(ca) );
endmodule


module fa_300 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  xn02d1 U1 ( .A1(n2), .A2(n1), .ZN(s) );
  buffd1 U2 ( .I(n5), .Z(n1) );
  nd02d1 U3 ( .A1(b), .A2(a), .ZN(n4) );
  buffd1 U4 ( .I(c), .Z(n2) );
  aoim22d2 U5 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
  xn02d1 U6 ( .A1(a), .A2(b), .ZN(n5) );
  inv0d1 U7 ( .I(n4), .ZN(n3) );
endmodule


module fa_301 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  buffd1 U1 ( .I(c), .Z(n1) );
  xn02d1 U2 ( .A1(n1), .A2(n4), .ZN(s) );
  xn02d2 U3 ( .A1(a), .A2(b), .ZN(n4) );
  aoim22d2 U4 ( .A1(n4), .A2(n3), .B1(n2), .B2(c), .Z(ca) );
  inv0d1 U5 ( .I(n3), .ZN(n2) );
  nd02d1 U6 ( .A1(b), .A2(a), .ZN(n3) );
endmodule


module fa_302 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6, n7;

  inv0d1 U1 ( .I(n3), .ZN(n4) );
  inv0d0 U2 ( .I(c), .ZN(n1) );
  inv0d1 U3 ( .I(n1), .ZN(n2) );
  nd02d0 U4 ( .A1(b), .A2(a), .ZN(n6) );
  inv0d0 U5 ( .I(n7), .ZN(n3) );
  xn02d1 U6 ( .A1(n2), .A2(n4), .ZN(s) );
  xn02d2 U7 ( .A1(a), .A2(b), .ZN(n7) );
  aoim22d2 U8 ( .A1(n7), .A2(n6), .B1(n5), .B2(c), .Z(ca) );
  inv0d1 U9 ( .I(n6), .ZN(n5) );
endmodule


module fa_303 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  buffd1 U1 ( .I(c), .Z(n1) );
  xn02d2 U2 ( .A1(a), .A2(b), .ZN(n4) );
  nd02d2 U3 ( .A1(b), .A2(a), .ZN(n3) );
  inv0d1 U4 ( .I(n3), .ZN(n2) );
  xn02d1 U5 ( .A1(n1), .A2(n4), .ZN(s) );
  aoim22d1 U6 ( .A1(n4), .A2(n3), .B1(c), .B2(n2), .Z(ca) );
endmodule


module fa_304 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xr02d2 U1 ( .A1(b), .A2(n2), .Z(n4) );
  inv0d2 U2 ( .I(a), .ZN(n2) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  inv0d0 U4 ( .I(b), .ZN(n1) );
  xn02d1 U5 ( .A1(c), .A2(n4), .ZN(s) );
  oai22d1 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
endmodule


module fa_16bit_1 ( a, b, cin, sum, cout );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;

  wire   [14:0] w;

  fa_304 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_303 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_302 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_301 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_300 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_299 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_298 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_297 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(w[7]) );
  fa_296 f9 ( .a(a[8]), .b(b[8]), .c(w[7]), .s(sum[8]), .ca(w[8]) );
  fa_295 f10 ( .a(a[9]), .b(b[9]), .c(w[8]), .s(sum[9]), .ca(w[9]) );
  fa_294 f11 ( .a(a[10]), .b(b[10]), .c(w[9]), .s(sum[10]), .ca(w[10]) );
  fa_293 f12 ( .a(a[11]), .b(b[11]), .c(w[10]), .s(sum[11]), .ca(w[11]) );
  fa_292 f13 ( .a(a[12]), .b(b[12]), .c(w[11]), .s(sum[12]), .ca(w[12]) );
  fa_291 f14 ( .a(a[13]), .b(b[13]), .c(w[12]), .s(sum[13]), .ca(w[13]) );
  fa_290 f15 ( .a(a[14]), .b(b[14]), .c(w[13]), .s(sum[14]), .ca(w[14]) );
  fa_289 f16 ( .a(a[15]), .b(b[15]), .c(w[14]), .s(sum[15]), .ca(cout) );
endmodule


module fa_305 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d1 U1 ( .I(a), .ZN(n2) );
  oai22d2 U2 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(ca) );
  inv0d0 U3 ( .I(c), .ZN(n3) );
  xn02d2 U4 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U5 ( .I(b), .ZN(n1) );
  xr02d1 U6 ( .A1(n2), .A2(b), .Z(n4) );
endmodule


module fa_306 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(n4), .ZN(n1) );
  oaim22d1 U2 ( .A1(n3), .A2(n2), .B1(c), .B2(n1), .ZN(ca) );
  xn02d2 U3 ( .A1(c), .A2(n4), .ZN(s) );
  inv0d0 U4 ( .I(b), .ZN(n2) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_307 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(n4), .A2(c), .ZN(s) );
  invbd2 U2 ( .I(n4), .ZN(n1) );
  oaim22d1 U3 ( .A1(n3), .A2(n2), .B1(c), .B2(n1), .ZN(ca) );
  inv0d0 U4 ( .I(b), .ZN(n2) );
  inv0d2 U5 ( .I(a), .ZN(n3) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_308 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  nd02d0 U1 ( .A1(a), .A2(b), .ZN(n2) );
  xn02d2 U2 ( .A1(n5), .A2(c), .ZN(s) );
  nd02d2 U3 ( .A1(c), .A2(n3), .ZN(n1) );
  nd02d2 U4 ( .A1(n1), .A2(n2), .ZN(ca) );
  inv0d0 U5 ( .I(n5), .ZN(n3) );
  inv0d1 U6 ( .I(a), .ZN(n4) );
  xr02d1 U7 ( .A1(n4), .A2(b), .Z(n5) );
endmodule


module fa_309 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  inv0d0 U1 ( .I(n4), .ZN(n1) );
  inv0d1 U2 ( .I(a), .ZN(n3) );
  aor22d2 U3 ( .A1(c), .A2(n1), .B1(n2), .B2(b), .Z(ca) );
  inv0d0 U4 ( .I(n3), .ZN(n2) );
  xn02d1 U5 ( .A1(n4), .A2(c), .ZN(s) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_310 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d1 U1 ( .A1(n4), .A2(c), .ZN(s) );
  inv0d1 U2 ( .I(a), .ZN(n3) );
  invbd2 U3 ( .I(n4), .ZN(n1) );
  inv0d0 U4 ( .I(n3), .ZN(n2) );
  aor22d2 U5 ( .A1(c), .A2(n1), .B1(n2), .B2(b), .Z(ca) );
  xr02d1 U6 ( .A1(n3), .A2(b), .Z(n4) );
endmodule


module fa_311 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3;

  invbd2 U1 ( .I(a), .ZN(n2) );
  inv0d0 U2 ( .I(n3), .ZN(n1) );
  aor22d2 U3 ( .A1(c), .A2(n1), .B1(a), .B2(b), .Z(ca) );
  xn02d1 U4 ( .A1(n3), .A2(c), .ZN(s) );
  xr02d1 U5 ( .A1(n2), .A2(b), .Z(n3) );
endmodule


module fa_312 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4;

  xn02d2 U1 ( .A1(n4), .A2(n2), .ZN(s) );
  buffd1 U2 ( .I(c), .Z(n2) );
  oaim21d1 U3 ( .B1(c), .B2(n1), .A(n3), .ZN(ca) );
  inv0d0 U4 ( .I(n4), .ZN(n1) );
  nd02d0 U5 ( .A1(b), .A2(a), .ZN(n3) );
  xn02d1 U6 ( .A1(a), .A2(b), .ZN(n4) );
endmodule


module fa_313 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d1 U1 ( .I(n5), .ZN(n2) );
  nd02d0 U2 ( .A1(b), .A2(a), .ZN(n5) );
  xr02d1 U3 ( .A1(a), .A2(b), .Z(n1) );
  inv0d0 U4 ( .I(n3), .ZN(n4) );
  aoim22d1 U5 ( .A1(n3), .A2(n5), .B1(n1), .B2(n2), .Z(ca) );
  inv0d2 U6 ( .I(c), .ZN(n3) );
  xr02d4 U7 ( .A1(n4), .A2(n1), .Z(s) );
endmodule


module fa_314 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5, n6;

  xn02d2 U1 ( .A1(n4), .A2(n6), .ZN(s) );
  invbd2 U2 ( .I(c), .ZN(n3) );
  inv0d0 U3 ( .I(n6), .ZN(n1) );
  inv0d0 U4 ( .I(n3), .ZN(n4) );
  aoim22d1 U5 ( .A1(n3), .A2(n2), .B1(n1), .B2(n5), .Z(ca) );
  invbdk U6 ( .I(n5), .ZN(n2) );
  an02d2 U7 ( .A1(b), .A2(a), .Z(n5) );
  xn02d1 U8 ( .A1(a), .A2(b), .ZN(n6) );
endmodule


module fa_315 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(c), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  nd02d0 U3 ( .A1(b), .A2(a), .ZN(n4) );
  inv0d1 U4 ( .I(n4), .ZN(n3) );
  xn02d1 U5 ( .A1(a), .A2(b), .ZN(n5) );
  xn02d1 U6 ( .A1(n2), .A2(n5), .ZN(s) );
  aoim22d2 U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
endmodule


module fa_316 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  xr02d1 U1 ( .A1(a), .A2(b), .Z(n1) );
  invbd2 U2 ( .I(c), .ZN(n2) );
  inv0d0 U3 ( .I(n2), .ZN(n3) );
  aoim22d1 U4 ( .A1(n2), .A2(n5), .B1(n1), .B2(n4), .Z(ca) );
  xr02d4 U5 ( .A1(n3), .A2(n1), .Z(s) );
  nd02d0 U6 ( .A1(b), .A2(a), .ZN(n5) );
  inv0d1 U7 ( .I(n5), .ZN(n4) );
endmodule


module fa_317 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  aoim22d2 U1 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
  xn02d2 U2 ( .A1(a), .A2(b), .ZN(n5) );
  an02d1 U3 ( .A1(b), .A2(a), .Z(n3) );
  inv0d0 U4 ( .I(c), .ZN(n1) );
  inv0d1 U5 ( .I(n1), .ZN(n2) );
  inv0d1 U6 ( .I(n3), .ZN(n4) );
  xn02d1 U7 ( .A1(n2), .A2(n5), .ZN(s) );
endmodule


module fa_318 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(n4), .ZN(n3) );
  xn02d1 U2 ( .A1(n2), .A2(n5), .ZN(s) );
  inv0d0 U3 ( .I(c), .ZN(n1) );
  inv0d1 U4 ( .I(n1), .ZN(n2) );
  xn02d2 U5 ( .A1(a), .A2(b), .ZN(n5) );
  nd02d0 U6 ( .A1(b), .A2(a), .ZN(n4) );
  aoim22d2 U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
endmodule


module fa_319 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  inv0d0 U1 ( .I(c), .ZN(n1) );
  inv0d1 U2 ( .I(n1), .ZN(n2) );
  nd02d0 U3 ( .A1(b), .A2(a), .ZN(n4) );
  xn02d2 U4 ( .A1(a), .A2(b), .ZN(n5) );
  inv0d1 U5 ( .I(n4), .ZN(n3) );
  xn02d1 U6 ( .A1(n2), .A2(n5), .ZN(s) );
  aoim22d2 U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(c), .Z(ca) );
endmodule


module fa_320 ( a, b, c, s, ca );
  input a, b, c;
  output s, ca;
  wire   n1, n2, n3, n4, n5;

  buffd1 U1 ( .I(c), .Z(n1) );
  aoim22d2 U2 ( .A1(n4), .A2(n3), .B1(n2), .B2(c), .Z(ca) );
  inv0d1 U3 ( .I(n3), .ZN(n2) );
  nd02d0 U4 ( .A1(b), .A2(a), .ZN(n3) );
  xn02d1 U5 ( .A1(a), .A2(b), .ZN(n4) );
  inv0d0 U6 ( .I(n4), .ZN(n5) );
  xr02d1 U7 ( .A1(n1), .A2(n5), .Z(s) );
endmodule


module fa_16bit_2 ( a, b, cin, sum, cout );
  input [15:0] a;
  input [15:0] b;
  output [15:0] sum;
  input cin;
  output cout;

  wire   [14:0] w;

  fa_320 f1 ( .a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .ca(w[0]) );
  fa_319 f2 ( .a(a[1]), .b(b[1]), .c(w[0]), .s(sum[1]), .ca(w[1]) );
  fa_318 f3 ( .a(a[2]), .b(b[2]), .c(w[1]), .s(sum[2]), .ca(w[2]) );
  fa_317 f4 ( .a(a[3]), .b(b[3]), .c(w[2]), .s(sum[3]), .ca(w[3]) );
  fa_316 f5 ( .a(a[4]), .b(b[4]), .c(w[3]), .s(sum[4]), .ca(w[4]) );
  fa_315 f6 ( .a(a[5]), .b(b[5]), .c(w[4]), .s(sum[5]), .ca(w[5]) );
  fa_314 f7 ( .a(a[6]), .b(b[6]), .c(w[5]), .s(sum[6]), .ca(w[6]) );
  fa_313 f8 ( .a(a[7]), .b(b[7]), .c(w[6]), .s(sum[7]), .ca(w[7]) );
  fa_312 f9 ( .a(a[8]), .b(b[8]), .c(w[7]), .s(sum[8]), .ca(w[8]) );
  fa_311 f10 ( .a(a[9]), .b(b[9]), .c(w[8]), .s(sum[9]), .ca(w[9]) );
  fa_310 f11 ( .a(a[10]), .b(b[10]), .c(w[9]), .s(sum[10]), .ca(w[10]) );
  fa_309 f12 ( .a(a[11]), .b(b[11]), .c(w[10]), .s(sum[11]), .ca(w[11]) );
  fa_308 f13 ( .a(a[12]), .b(b[12]), .c(w[11]), .s(sum[12]), .ca(w[12]) );
  fa_307 f14 ( .a(a[13]), .b(b[13]), .c(w[12]), .s(sum[13]), .ca(w[13]) );
  fa_306 f15 ( .a(a[14]), .b(b[14]), .c(w[13]), .s(sum[14]), .ca(w[14]) );
  fa_305 f16 ( .a(a[15]), .b(b[15]), .c(w[14]), .s(sum[15]), .ca(cout) );
endmodule


module vedic_16bit ( a, b, c, clk );
  input [15:0] a;
  input [15:0] b;
  output [31:0] c;
  input clk;
  wire   tempc1, \w7[8] , n1, n2, n3, n4;
  wire   [15:0] w1;
  wire   [15:0] w3;
  wire   [15:0] w4;
  wire   [15:0] w5;
  wire   [15:0] w6;
  wire   [31:0] w8;

  vedic_8bit_0 v1 ( .a(a[7:0]), .b(b[7:0]), .c(w1) );
  vedic_8bit_3 v2 ( .a(a[15:8]), .b(b[7:0]), .c(w3) );
  fa_16bit_0 f1 ( .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, w1[15:8]}), .b(w3), .cin(1'b0), .sum(w4), .cout(tempc1) );
  vedic_8bit_2 v3 ( .a(a[7:0]), .b(b[15:8]), .c(w5) );
  fa_16bit_2 f2 ( .a(w4), .b(w5), .cin(tempc1), .sum(w6), .cout(\w7[8] ) );
  vedic_8bit_1 v4 ( .a(a[15:8]), .b(b[15:8]), .c(w8[15:0]) );
  fa_16bit_1 f3 ( .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, \w7[8] , 
        w6[15:8]}), .b(w8[15:0]), .cin(1'b0), .sum(w8[31:16]) );
  an02d1 U34 ( .A1(w8[29]), .A2(n1), .Z(c[29]) );
  an02d0 U35 ( .A1(w8[26]), .A2(n1), .Z(c[26]) );
  an02d1 U36 ( .A1(w1[0]), .A2(n4), .Z(c[0]) );
  an02d0 U37 ( .A1(w8[17]), .A2(n2), .Z(c[17]) );
  an02d1 U38 ( .A1(w8[19]), .A2(n2), .Z(c[19]) );
  an02d0 U39 ( .A1(w8[22]), .A2(n2), .Z(c[22]) );
  an02d0 U40 ( .A1(w1[7]), .A2(n3), .Z(c[7]) );
  an02d0 U41 ( .A1(w8[27]), .A2(n1), .Z(c[27]) );
  an02d0 U42 ( .A1(w6[4]), .A2(n3), .Z(c[12]) );
  an02d0 U43 ( .A1(w8[28]), .A2(n1), .Z(c[28]) );
  an02d0 U44 ( .A1(w6[7]), .A2(n2), .Z(c[15]) );
  an02d0 U45 ( .A1(w8[21]), .A2(n2), .Z(c[21]) );
  buffd1 U46 ( .I(clk), .Z(n3) );
  buffd1 U47 ( .I(clk), .Z(n2) );
  buffd1 U48 ( .I(clk), .Z(n1) );
  buffd1 U49 ( .I(clk), .Z(n4) );
  an02d1 U50 ( .A1(w1[1]), .A2(n4), .Z(c[1]) );
  an02d1 U51 ( .A1(w1[2]), .A2(n4), .Z(c[2]) );
  an02d1 U52 ( .A1(w1[3]), .A2(n4), .Z(c[3]) );
  an02d1 U53 ( .A1(w1[4]), .A2(n4), .Z(c[4]) );
  an02d1 U54 ( .A1(w1[5]), .A2(n3), .Z(c[5]) );
  an02d1 U55 ( .A1(w1[6]), .A2(n3), .Z(c[6]) );
  an02d1 U56 ( .A1(w6[0]), .A2(n3), .Z(c[8]) );
  an02d1 U57 ( .A1(w6[1]), .A2(n3), .Z(c[9]) );
  an02d1 U58 ( .A1(w6[2]), .A2(n3), .Z(c[10]) );
  an02d1 U59 ( .A1(w6[3]), .A2(n3), .Z(c[11]) );
  an02d1 U60 ( .A1(w6[5]), .A2(n3), .Z(c[13]) );
  an02d1 U61 ( .A1(w6[6]), .A2(n2), .Z(c[14]) );
  an02d1 U62 ( .A1(w8[16]), .A2(n2), .Z(c[16]) );
  an02d1 U63 ( .A1(w8[18]), .A2(n2), .Z(c[18]) );
  an02d1 U64 ( .A1(w8[20]), .A2(n2), .Z(c[20]) );
  an02d1 U65 ( .A1(w8[23]), .A2(n1), .Z(c[23]) );
  an02d1 U66 ( .A1(w8[24]), .A2(n1), .Z(c[24]) );
  an02d1 U67 ( .A1(w8[25]), .A2(n1), .Z(c[25]) );
  an02d1 U68 ( .A1(w8[30]), .A2(n1), .Z(c[30]) );
  an02d1 U69 ( .A1(w8[31]), .A2(n1), .Z(c[31]) );
endmodule

