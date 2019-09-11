module flag_generator_test();
logic [3:0] ALUControl;
logic [2:0] a, b, result;
logic			cout, Z, N, V, C;

flag_generator DUT(a, b, result, ALUControl, cout, Z, N, V, C);

initial begin
	// Add, Sub
	#10 a = 3'b000; b = 3'b000; result = 3'b000; ALUControl = 4'b0000; cout = 0;
	#1 $display("a=%b, b=%b, result=%b, ALUControl=%b; cout=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, result, ALUControl, cout, Z, N, V, C);
	#10 a = 3'b000; b = 3'b111; result = 3'b111; ALUControl = 4'b0000; cout = 0;
	#1 $display("a=%b, b=%b, result=%b, ALUControl=%b; cout=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, result, ALUControl, cout, Z, N, V, C);
	#10 a = 3'b111; b = 3'b111; result = 3'b110; ALUControl = 4'b0000; cout = 1;
	#1 $display("a=%b, b=%b, result=%b, ALUControl=%b; cout=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, result, ALUControl, cout, Z, N, V, C);
	#10 a = 3'b111; b = 3'b111; result = 3'b000; ALUControl = 4'b0001; cout = 1;
	#1 $display("a=%b, b=%b, result=%b, ALUControl=%b; cout=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, result, ALUControl, cout, Z, N, V, C);
	
	// AND
	#10 a = 3'b111; b = 3'b111; result = 3'b111; ALUControl = 4'b0010; cout = 0;
	#1 $display("a=%b, b=%b, result=%b, ALUControl=%b; cout=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, result, ALUControl, cout, Z, N, V, C);
	// OR
	#10 a = 3'b100; b = 3'b010; result = 3'b110; ALUControl = 4'b0011; cout = 0;
	#1 $display("a=%b, b=%b, result=%b, ALUControl=%b; cout=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, result, ALUControl, cout, Z, N, V, C);
	// XOR
	#10 a = 3'b010; b = 3'b000; result = 3'b101; ALUControl = 4'b0100; cout = 0;
	#1 $display("a=%b, b=%b, result=%b, ALUControl=%b; cout=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, result, ALUControl, cout, Z, N, V, C);
end

endmodule
