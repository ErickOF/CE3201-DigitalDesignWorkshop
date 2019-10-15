/*
Lines Printer Module


Inputs:
    x: Pixel x
    y: Pixel y

Outputs:
    R, G, B: RGB colors
    print: signal to indicate if the lines will be drawn
*/
module LinesPrinter(input  [9:0] x, y,
						  output [23:0] RGB,
						  output       print);

// Verify (x, y) position to draw
logic print_x;
logic print_y;

assign print_x = (10'd216 > x && x > 10'd210) || (10'd429 > x && x > 10'd423);
assign print_y = (10'd163 > y && y > 10'd157) || (10'd323 > y && y > 10'd317);

// Output signal
assign print = print_x || print_y;
// Pixel color
assign RGB = 24'b0;

endmodule // LinesPrinter
