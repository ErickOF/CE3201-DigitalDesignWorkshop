module TicTacToe(input clk, rst, click, select,
                 output logic vga_clk, vga_sync_n, vga_blank_n, vga_vs, vga_hs,
                 output logic [7:0] VGA_R, VGA_G, VGA_B);

logic [9:0] posx, posy;
logic [3:0] posIn;
logic vga_clk_t, ready;
logic [23:0] RGB_p1, RGB_p2, RGB_lines, RGB_pointer, RGB;
logic sp1_visible, sp2_visible, lines_visible, pointer_visible;

ClockDivider clock_divider(clk, vga_clk_t);
VGAController VGA(vga_clk_t, rst, vga_hs, vga_vs, vga_blank_n, vga_sync_n, posx, posy);

escogerPos pointer(rst, click, select, posIn, ready);

SpritePrinter sp1(vga_clk_t, posx, posy, 10'd64, 10'd64, sp1_visible, RGB_p1);
SpritePrinter2 sp2(vga_clk_t, posx, posy, 10'd64, 10'd64, sp2_visible, RGB_p2);
LinesPrinter lines(posx, posy, RGB_lines, lines_visible);
PointerPrinter pointerp(posx, posy, 4'd0, RGB_pointer, pointer_visible);

RGBDecoder rgb_decoder({pointer_visible, sp1_visible, sp2_visible, lines_visible}, RGB_p1, RGB_p2, RGB_lines, RGB_pointer, RGB);

assign vga_clk = vga_clk_t;
assign {VGA_R, VGA_G, VGA_B} = RGB;

endmodule // TicTacToe
