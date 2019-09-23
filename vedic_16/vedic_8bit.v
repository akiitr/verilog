module vedic_8bit(a,b,c);
  input [7:0]a;
  input [7:0]b;
  output [15:0]c;
  wire cout;
  wire cin;
  assign cin ={1'b0};
  wire tempc1;
  wire tempc2;
  wire [7:0]w1;
  wire [7:0]w2;
  wire [7:0]w3;
  wire [7:0]w4;
  wire [7:0]w5;
  wire [7:0]w6;
  wire [7:0]w7;
  wire [7:0]w8;
  

  vedic_4bit v1(a[3:0],b[3:0],w1[7:0]);
  assign c[3:0]=w1[3:0];
  assign w2[7:0]={4'b0,w1[7:4]};
  vedic_4bit v2(a[7:4],b[3:0],w3[7:0]);
  fa_8bit f1(w2[7:0],w3[7:0],cin,w4[7:0],tempc1);
  vedic_4bit v3(a[3:0],b[7:4],w5[7:0]);
  fa_8bit f2(w4[7:0],w5[7:0],tempc1,w6[7:0],tempc2);
  assign c[7:4]=w6[3:0];
  assign w7={3'b0,tempc2,w6[7:4]};
  vedic_4bit v4(a[7:4],b[7:4],w8[7:0]);
  fa_8bit f3(w7[7:0],w8[7:0],cin,c[15:8],cout);
endmodule
