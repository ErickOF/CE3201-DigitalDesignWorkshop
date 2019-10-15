/*
Sprite Printer Module


Inputs:
    xcurrent: Current pixel x
    ycurrent: Current pixel y
	 xsprite: Pixel x where sprite is drawn
    ysprite: Pixel y where sprite is drawn

Outputs:
    R, G, B: RGB colors
    print: signal to indicate if sprite will be drawn
*/
module SpritePrinter2 (input  clk,
                      input  logic [9:0]  posx, posy, pixelx, pixely,
							 output logic        visible,
							 output logic [23:0] RGB);
// Sprite
logic [11:0] address;
logic [2:0] color;
// Sprite
ROMSprite2   ROM (address, clk, color);
// 
ColorDecoder2 DECO (color, RGB);
logic xm63, ym63;
AddressGenerator ADDRESS(pixelx, pixely, posx, posy, xm63, ym63, address);
VisibleLogic VIS(xm63, ym63, color, visible);

endmodule // SpritePrinter2
