module escogerPosTest();

logic clk, reset, select, Ready;
logic [3:0] pos;


escogerPos DUT(clk, reset, select, pos, Ready);

initial begin
   clk = 0;
	reset = 0;
	#10 reset = 1;
	#10 reset = 0;
	#10 clk = 1; reset = 1; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 0; reset = 0; select = 0;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	#10 clk = 1; reset = 0; select = 1;
	#1 $display("clk = %b, reset = %b, select = %b, pos= %b, Ready= %b\n", clk, reset, select, pos, Ready);
	
	
	
end

endmodule
