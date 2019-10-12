module TicTacToe (input clk,
					   output logic vga_clk, vga_sync_n, vga_blank_n, vga_vs, vga_hs,
						output logic [7:0] VGA_R, VGA_G, VGA_B);

logic [9:0] posx, posy;
logic vga_clk_t;
ClockDivider clock_divider(clk, vga_clk_t);
VGAController DUT(vga_clk_t, vga_hs, vga_vs, vga_blank_n, vga_sync_n, posx, posy);

assign vga_clk = vga_clk_t;
assign VGA_R = 8'h00;
assign VGA_G = 8'h00;
assign VGA_B = 8'hff;

endmodule // TicTacToe
