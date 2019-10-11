module TicTacToeTest;

logic clk, vga_clk, vga_sync_n, vga_blank_n, vga_vs, vga_hs;
logic [7:0] VGA_R, VGA_G, VGA_B;

TicTacToe DUT(clk, vga_clk, vga_sync_n, vga_blank_n, vga_vs, vga_hs, VGA_R, VGA_G, VGA_B);

initial begin
	clk = 0;
end

always
begin
	#20000 clk = ~clk;
	#1 $display("R = %d, G = %d, B = %d", VGA_R, VGA_G, VGA_B);
end

endmodule // TicTacToeTest
