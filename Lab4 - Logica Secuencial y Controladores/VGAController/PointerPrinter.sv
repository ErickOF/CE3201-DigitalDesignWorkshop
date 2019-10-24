module PointerPrinter(input [9:0] x, y,
							input [3:0] pos,
							output [23:0] RGB,
							output print);
							
logic print_x;
logic print_y;

always_comb begin
case(pos)
	4'd0: begin 
				print_x = (10'd18 < x && x < 10'd198);
				print_y = (10'd150 < y && y < 10'd155);
			end
	4'd1: begin 
				print_x = (10'd230 < x && x < 10'd410);
				print_y = (10'd150 < y && y < 10'd155);
			end
	4'd2: begin 
				print_x = (10'd445 < x && x < 10'd625);
				print_y = (10'd150 < y && y < 10'd155);
			end
	4'd3: begin 
				print_x = (10'd18 < x && x < 10'd198);
				print_y = (10'd310 < y && y < 10'd315);
			end
	4'd4: begin 
				print_x = (10'd230 < x && x < 10'd410);
				print_y = (10'd310 < y && y < 10'd315);
			end
	4'd5: begin 
				print_x = (10'd445 < x && x < 10'd625);
				print_y = (10'd310 < y && y < 10'd315);
			end
	4'd6: begin 
				print_x = (10'd18 < x && x < 10'd198);
				print_y = (10'd470 < y && y < 10'd475);
			end
	4'd7: begin 
				print_x = (10'd230 < x && x < 10'd410);
				print_y = (10'd470 < y && y < 10'd475);
			end
	4'd8: begin 
				print_x = (10'd445 < x && x < 10'd625);
				print_y = (10'd470 < y && y < 10'd475);
			end
	default: begin 
				print_x = (10'd18 < x && x < 10'd198);
				print_y = (10'd150 < y && y < 10'd155);
			end
endcase
end

assign print = print_x & print_y;
assign RGB = 24'hFF8000;
							
endmodule 