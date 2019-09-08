module mux_result_test();
logic [2:0] result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, y;
logic [3:0] ALUControl;

mux_result DUT(result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);

initial begin
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b0000;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b0001;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b0010;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b0011;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b0100;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b0101;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b0110;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b0111;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);

	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b1000;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b1001;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b1010;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b1011;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b1100;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b1101;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b1110;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	#10 result_and = 3'b000; result_or = 3'b001; result_xor = 3'b010; result_sum = 3'b011; result_slr = 3'b100; result_sll = 3'b101; result_sar = 3'b110; result_sc = 3'b111; ALUControl = 4'b1111;
	#1 $display("and = %b, or = %b, xor = %b, sum = %b, slr = %b, sll = %b, sar = %b, sc = %b, ALUControl = %b, y = %b\n", result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, y);
	
end

endmodule
