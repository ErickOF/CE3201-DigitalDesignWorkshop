module mux_not_test();
logic control;
logic [2:0] b, y;

mux_not DUT(b, control, y);

initial begin
	#10 control = 0; b = 3'b000;
	#1 $display("b = %b, control = %b, y = %b\n", b, control, y);
	#10 control = 0; b = 3'b111;
	#1 $display("b = %b, control = %b, y = %b\n", b, control, y);
	#10 control = 0; b = 3'b001;
	#1 $display("b = %b, control = %b, y = %b\n", b, control, y);
	#10 control = 0; b = 3'b101;
	#1 $display("b = %b, control = %b, y = %b\n", b, control, y);
	
	#10 control = 1; b = 3'b001;
	#1 $display("b = %b, control = %b, y = %b\n", b, control, y);
	#10 control = 1; b = 3'b101;
	#1 $display("b = %b, control = %b, y = %b\n", b, control, y);
	#10 control = 1; b = 3'b001;
	#1 $display("b = %b, control = %b, y = %b\n", b, control, y);
	#10 control = 1; b = 3'b111;
	#1 $display("b = %b, control = %b, y = %b\n", b, control, y);
end

endmodule
