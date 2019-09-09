module sar_test#(parameter N=3)();
logic [N-1:0] a;
logic [N-1:0] b;
logic [N-1:0] c;

sar DUT(a,b,c);

initial begin
	#10 a = 3'b100; b = 3'b001; 
	#1	$display("a = %b, b = %b, c= %b\n", a, b, c);
	#10 a = 3'b010; b = 3'b001; 
	#1 $display("a = %b, b = %b, c= %b\n", a, b, c);		
	#10 a = 3'b100; b = 3'b011;
	#1 $display("a = %b, b = %b, c= %b\n", a, b, c);
end 


endmodule // sar_test