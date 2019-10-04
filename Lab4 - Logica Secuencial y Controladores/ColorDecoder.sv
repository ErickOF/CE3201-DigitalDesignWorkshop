module ColorDecoder (input [2:0] color,
						  output [23:0] RGB);

always_comb
begin
    case (color)
        3'd0: RGB = 24'hAAAAAA;
		  3'd1: RGB = 24'h000000;
		  3'd2: RGB = 24'hFFFFFF;
		  3'd3: RGB = 24'hFF1551;
		  3'd4: RGB = 24'hBF8718;
		  3'd5: RGB = 24'h5EFF00;
		  3'd6: RGB = 24'h008FFF;
		  3'd7: RGB = 24'h02006B;
	 endcase
end

endmodule // ColorDecoder
