module ColorDecoder2 (input [2:0] color,
						    output [23:0] RGB);

always_comb
begin
    case (color)
        3'd0: RGB = 24'h2AAABA;
		  3'd1: RGB = 24'h000000;
		  3'd2: RGB = 24'hFFFFFF;
		  3'd3: RGB = 24'hDF1551;
		  3'd4: RGB = 24'hBF1018;
		  3'd5: RGB = 24'h50FF00;
		  3'd6: RGB = 24'hF08FFF;
		  3'd7: RGB = 24'h00006B;
	 endcase
end

endmodule // ColorDecoder2
