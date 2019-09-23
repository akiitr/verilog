module fa_16bit(a,b,cin,sum,cout);
  input [15:0]a;
  input [15:0]b;
  input cin;
  output [15:0]sum;
  output cout;
  wire [15:0]w;
  
  fa f1(a[0],b[0],cin,sum[0],w[0]);
  fa f2(a[1],b[1],w[0],sum[1],w[1]);
  fa f3(a[2],b[2],w[1],sum[2],w[2]);
  fa f4(a[3],b[3],w[2],sum[3],w[3]);
  fa f5(a[4],b[4],w[3],sum[4],w[4]);
  fa f6(a[5],b[5],w[4],sum[5],w[5]);
  fa f7(a[6],b[6],w[5],sum[6],w[6]);
  fa f8(a[7],b[7],w[6],sum[7],w[7]);
  fa f9(a[8],b[8],w[7],sum[8],w[8]);
  fa f10(a[9],b[9],w[8],sum[9],w[9]);
  fa f11(a[10],b[10],w[9],sum[10],w[10]);
  fa f12(a[11],b[11],w[10],sum[11],w[11]);
  fa f13(a[12],b[12],w[11],sum[12],w[12]);
  fa f14(a[13],b[13],w[12],sum[13],w[13]);
  fa f15(a[14],b[14],w[13],sum[14],w[14]);
  fa f16(a[15],b[15],w[14],sum[15],cout);

endmodule
