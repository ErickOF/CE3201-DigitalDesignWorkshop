module sc_test();
logic [2:0] a;
logic [2:0] c;

sc DUT(a, c);

initial begin
	#10 a = 3'b100; 
	#1	$display("a = %b, c= %b\n", a, c);
	#10 a = 3'b010;  
	#1 $display("a = %b, c= %b\n", a, c);		
	#10 a = 3'b100; 
	#1 $display("a = %b, c= %b\n", a, c);
end 


endmodule // and_test