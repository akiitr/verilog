`timescale 1ns / 1ps

module AES_TB;

	// Inputs
	reg clk;
     reg [127:0] datain,key; 

	// Outputs
	wire [127:0] finalout;

	// Instantiate the Unit Under Test (UUT)
	AES_TOP uut (
		.clk(clk),.datain(datain),.key(key),
		.finalout(finalout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
           
	     #100;
/*
         * TIMEGRP "key" OFFSET = IN 6.4 ns VALID 6 ns AFTER "clk" HIGH;
         * TIMEGRP "state" OFFSET = IN 6.4 ns VALID 6 ns AFTER "clk" HIGH;
         * TIMEGRP "out" OFFSET = OUT 2.2 ns BEFORE "clk" HIGH;
         */


	 @ (negedge clk);
        # 2;
        datain = 128'h3243f6a8_885a308d_313198a2_e0370734;
        key   = 128'h2b7e1516_28aed2a6_abf71588_09cf4f3c;
        #10;
        datain = 128'h00112233_44556677_8899aabb_ccddeeff;
        key   = 128'h00010203_04050607_08090a0b_0c0d0e0f;
        #10;
        datain = 128'h0;
        key   = 128'h0;
        #10;
        datain = 128'h0;
        key   = 128'h1;
        #10;
        datain = 128'h1;
        key   = 128'h0;
        #170;
        if (finalout !== 128'h3925841d02dc09fbdc118597196a0b32)
          begin $display("E"); $finish; end
        #10;
        if (finalout !== 128'h69c4e0d86a7b0430d8cdb78070b4c55a)
          begin $display("E"); $finish; end
        #10;
        if (finalout !== 128'h66_e9_4b_d4_ef_8a_2c_3b_88_4c_fa_59_ca_34_2b_2e)
          begin $display("E"); $finish; end
        #10;
        if (finalout !== 128'h05_45_aa_d5_6d_a2_a9_7c_36_63_d1_43_2a_3d_1c_84)
          begin $display("E"); $finish; end
        #10;
        if (finalout !== 128'h58_e2_fc_ce_fa_7e_30_61_36_7f_1d_57_a4_e7_45_5a)
          begin $display("E"); $finish; end
        $display("Good.");
        $finish;
	end
      
    always #5 clk = ~clk;
endmodule
	
      

