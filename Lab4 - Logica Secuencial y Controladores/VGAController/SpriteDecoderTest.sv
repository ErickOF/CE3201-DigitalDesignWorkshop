module SpriteDecoderTest;

logic [9:0] x, y;
logic [5:0] count;
logic [1:0] t11, t12, t13, t21, t22, t23, t31, t32, t33;
logic sprite1, sprite2;

SpriteDecoder DUT (x, y, t11, t12, t13, t21, t22, t23, t31, t32, t33, sprite1, sprite2);

initial begin
	x = 10'b0;
	y = 10'b0;
	count = 6'b0;
end

always
begin
	#1 $display("x = %d, y = %d, board = [%b %b %b][%b %b %b][%b %b %b], count = %d", x, y, t11, t12, t13, t21, t22, t23, t31, t32, t33, count);
	#20 x = x + 10'b1;
	if (x > 'd763) begin
	    x = 10'b0;
		 y = y + 10'b1;
	end
	if (y > 'd525) begin
	    y = 10'b0;
		 count = count + 10'b1;
	end
	
	if (count == 6'd1) begin
	    t11 = 2'b01;
	end
	else if (count == 6'd2) begin
	    t12 = 2'b01;
	end
	else if (count == 6'd3) begin
	    t13 = 2'b01;
	end
	else if (count == 6'd4) begin
	    t21 = 2'b01;
	end
	else if (count == 6'd5) begin
	    t22 = 2'b01;
	end
	else if (count == 6'd6) begin
	    t23 = 2'b01;
	end
	else if (count == 6'd7) begin
	    t31 = 2'b01;
	end
	else if (count == 6'd8) begin
	    t32 = 2'b01;
	end
	else if (count == 6'd9) begin
	    t33 = 2'b01;
	end
	
	else if (count == 6'd10) begin
	    t11 = 2'b10;
	end
	else if (count == 6'd11) begin
	    t12 = 2'b10;
	end
	else if (count == 6'd12) begin
	    t13 = 2'b10;
	end
	else if (count == 6'd13) begin
	    t21 = 2'b10;
	end
	else if (count == 6'd14) begin
	    t22 = 2'b10;
	end
	else if (count == 6'd15) begin
	    t23 = 2'b10;
	end
	else if (count == 6'd16) begin
	    t31 = 2'b10;
	end
	else if (count == 6'd17) begin
	    t32 = 2'b10;
	end
	else if (count == 6'd18) begin
	    t33 = 2'b10;
	end
end

endmodule // SpriteDecoderTest
