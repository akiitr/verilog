module vedic_16bit(a,b,c,clk);
  input [15:0]a;
  input [15:0]b;
  output [31:0]c;
  input clk;
  
  wire cout;
  wire cin;
  assign cin ={1'b0};
  wire tempc1;
  wire tempc2;  
  wire [15:0]w1;
  wire [15:0]w2;
  wire [15:0]w3;
  wire [15:0]w4;
  wire [15:0]w5;
  wire [15:0]w6;
  wire [15:0]w7;
  wire [31:0]w8;
  
  //while making one larger all odd no become 2*n+1 and even no become 2*n
 
  vedic_8bit v1(a[7:0],b[7:0],w1[15:0]);
  assign c[7:0]= (clk == 1'b1) ? w1[7:0] : {8'b0};
  assign w2[15:0]={8'b0,w1[15:8]};
  vedic_8bit v2(a[15:8],b[7:0],w3[15:0]);
  fa_16bit f1(w2[15:0],w3[15:0],cin,w4[15:0],tempc1);
  vedic_8bit v3(a[7:0],b[15:8],w5[15:0]);
  fa_16bit f2(w4[15:0],w5[15:0],tempc1,w6[15:0],tempc2);
  assign c[15:8]=(clk == 1'b1) ? w6[7:0] : {8'b0};
  assign w7={7'b0,tempc2,w6[15:8]};
  vedic_8bit v4(a[15:8],b[15:8],w8[15:0]);
  fa_16bit f3(w7[15:0],w8[15:0],cin,w8[31:16],cout);
  assign c[31:16] = (clk == 1'b1) ? w8[31:16] : {16'b0};
  
endmodule