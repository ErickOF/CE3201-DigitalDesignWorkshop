module add_sub_test();
logic [2:0] a, b, y, result_b;
logic 		control, cout;

mux_not DUT_MUX(b, control, result_b);
fulladder DUT_FULLADDER(a, result_b, control, y, cout);

initial begin
	#10 a = 3'b000; b = 3'b000; control = 0;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b111; b = 3'b000; control = 0;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b000; b = 3'b111; control = 0;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b101; b = 3'b010; control = 0;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b010; b = 3'b111; control = 0;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b101; b = 3'b111; control = 0;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b111; b = 3'b111; control = 0;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	
	#10 a = 3'b000; b = 3'b000; control = 1;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b111; b = 3'b000; control = 1;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b000; b = 3'b111; control = 1;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b101; b = 3'b010; control = 1;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b010; b = 3'b111; control = 1;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b101; b = 3'b111; control = 1;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
	#10 a = 3'b111; b = 3'b111; control = 1;
	#1 $display("a = %b, b = %b, b_new=%b, cout = %b, y = %b, control=%b\n", a, b, result_b, cout, y, control);
end

endmodule
