module RGBDecoder(input logic [3:0] visible,
                  input [23:0] RGB1, RGB2, RGB3, RGB4,
						output [23:0] RGB);

logic [23:0] RGB_output;

always_comb
begin
    case (visible)
        4'b0001: RGB_output = RGB3;
		  4'b0010: RGB_output = RGB2;
		  4'b0100: RGB_output = RGB1;
		  4'b1000: RGB_output = RGB4;
	     default: RGB_output = 24'hFFFFFF;
	 endcase
end

assign RGB = RGB_output;

endmodule // RGBDecoder
