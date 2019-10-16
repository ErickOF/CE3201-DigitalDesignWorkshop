module RGBDecoder(input logic [2:0] visible,
                  input [23:0] RGB1, RGB2, RGB3,
						output [23:0] RGB);

logic [23:0] RGB_output;

always_comb
begin
    case (visible)
        3'b001: RGB_output = RGB3;
		  3'b010: RGB_output = RGB2;
		  3'b100: RGB_output = RGB1;
	     default: RGB_output = 24'hFFFFFF;
	 endcase
end

assign RGB = RGB_output;

endmodule // RGBDecoder
