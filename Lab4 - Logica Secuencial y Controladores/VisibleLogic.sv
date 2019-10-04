module VisibleLogic(input xm63, ym63,
                    input [2:0] color,
                    output visible);

logic background;

// Esta en bg?
assign background = (color == 3'd0);
// si no es bg y no se pasa del sprite
assign visible = ~background && ~(xm63 | ym63);

endmodule // VisibleLogic
