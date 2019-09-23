module fa_8bit(a,b,cin,sum,cout);
  input [7:0]a;
  input [7:0]b;
  input cin;
  output [7:0]sum;
  output cout;
  wire [7:0]w;
  
  fa f1(a[0],b[0],cin,sum[0],w[0]);
  fa f2(a[1],b[1],w[0],sum[1],w[1]);
  fa f3(a[2],b[2],w[1],sum[2],w[2]);
  fa f4(a[3],b[3],w[2],sum[3],w[3]);
  fa f5(a[4],b[4],w[3],sum[4],w[4]);
  fa f6(a[5],b[5],w[4],sum[5],w[5]);
  fa f7(a[6],b[6],w[5],sum[6],w[6]);
  fa f8(a[7],b[7],w[6],sum[7],cout);
  

endmodule
