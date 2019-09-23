module vedic_2bit(a,b,c);
  input [1:0]a;
  input [1:0]b;
  output [3:0]c;
  wire [3:0]w; 
  
  assign w[0] =(a[0]&b[0]);
  assign w[1] =(a[0]&b[1])^(a[1]&b[0]);
  assign w[2] =(a[1]&b[1])^((a[0]&b[1])&(a[1]&b[0]));
  assign w[3] =(a[1]&b[1])&((a[0]&b[1])&(a[1]&b[0]));
  assign c={w[3],w[2],w[1],w[0]};
  
endmodule
