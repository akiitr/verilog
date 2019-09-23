module vedic_4bit(a,b,c);
  input [3:0]a;
  input [3:0]b;
  output [7:0]c;
  wire cout;
  wire cin;
  assign cin ={1'b0};
  wire tempc1;
  wire tempc2;
  wire [3:0]w1;
  wire [3:0]w2;
  wire [3:0]w3;
  wire [3:0]w4;
  wire [3:0]w5;
  wire [3:0]w6;
  wire [3:0]w7;
  wire [3:0]w8;
  

  vedic_2bit v1(a[1:0],b[1:0],w1[3:0]);
  assign c[1:0]=w1[1:0];
  assign w2[3:0]={2'b0,w1[3:2]};
  vedic_2bit v2(a[3:2],b[1:0],w3[3:0]);
  fa_4bit f1(w2[3:0],w3[3:0],cin,w4[3:0],tempc1);
  vedic_2bit v3(a[1:0],b[3:2],w5[3:0]);
  fa_4bit f2(w4[3:0],w5[3:0],tempc1,w6[3:0],tempc2);
  assign c[3:2]=w6[1:0];
  assign w7={1'b0,tempc2,w6[3:2]};
  vedic_2bit v4(a[3:2],b[3:2],w8[3:0]);
  fa_4bit f3(w7[3:0],w8[3:0],cin,c[7:4],cout);
endmodule
