module xor_gate_test();
logic [2:0] a, b, y;

xor_gate DUT(a, b, y);

initial begin
	#10 a = 3'b000; b = 3'b000;
	#1 $display("a = %b, b = %b, y = %b\n", a, b, y);
	#10 a = 3'b111; b = 3'b000;
	#1 $display("a = %b, b = %b, y = %b\n", a, b, y);
	#10 a = 3'b000; b = 3'b111;
	#1 $display("a = %b, b = %b, y = %b\n", a, b, y);
	#10 a = 3'b101; b = 3'b010;
	#1 $display("a = %b, b = %b, y = %b\n", a, b, y);
	#10 a = 3'b010; b = 3'b111;
	#1 $display("a = %b, b = %b, y = %b\n", a, b, y);
	#10 a = 3'b101; b = 3'b111;
	#1 $display("a = %b, b = %b, y = %b\n", a, b, y);
	#10 a = 3'b111; b = 3'b111;
	#1 $display("a = %b, b = %b, y = %b\n", a, b, y);
end

endmodule
