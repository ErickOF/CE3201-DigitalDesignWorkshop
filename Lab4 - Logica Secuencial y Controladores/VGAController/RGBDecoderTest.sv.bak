module RGBDecoderTest;

logic [2:0] visible;
logic [23:0] RGB_sp1, RGB_sp2, RGB_lines;
logic [23:0] RGB;

assign RGB_sp1 = 24'hff0000;
assign RGB_sp2 = 24'h00ff00;
assign RGB_lines = 24'h0000ff;

RGBDecoder DUT(visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);

always
begin
	#10 visible = 3'b000;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 3'b001;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 3'b010;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 3'b011;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 3'b100;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 3'b101;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 3'b110;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 3'b111;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
end

endmodule // RGBDecoderTest
