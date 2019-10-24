module RGBDecoderTest;

logic [3:0] visible;
logic [23:0] RGB_sp1, RGB_sp2, RGB_lines;
logic [23:0] RGB;

assign RGB_sp1 = 24'hff0000;
assign RGB_sp2 = 24'h00ff00;
assign RGB_lines = 24'h0000ff;
assign RGB_pointer = 24'h00000f;

RGBDecoder DUT(visible, RGB_sp1, RGB_sp2, RGB_lines, RGB_pointer, RGB);

always
begin
	#10 visible = 4'b0000;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 4'b0001;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 4'b0010;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 4'b0011;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 4'b0100;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 4'b0101;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 4'b0110;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
	#10 visible = 4'b0111;
	#1 $display("visible = %b, RGB_sp1 = %h, RGB_sp2 = %h, RGB_lines = %h, RGB = %h", visible, RGB_sp1, RGB_sp2, RGB_lines, RGB);
end

endmodule // RGBDecoderTest
