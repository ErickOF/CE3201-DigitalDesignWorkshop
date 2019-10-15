module SpriteDecoder (input [9:0] x, y,
                      input [1:0] t11, t12, t13, t21, t22, t23, t31, t32, t33,
						    output logic sprite1, sprite2);

logic [2:0] visiblex, visibley;
logic [17:0] board;
logic sprite_visible_f1, sprite_visible_f2, sprite_visible_f3, sprite_visible, sp1_visible, sp2_visible;

always begin
    visiblex[0] = (10'd134 > x && x > 10'd70) ? 1'b1 : 1'b0;
	 visiblex[1] = (10'd352 > x && x > 10'd288) ? 1'b1 : 1'b0;
	 visiblex[2] = (10'd569 > x && x > 10'd505) ? 1'b1 : 1'b0;
	 visibley[0] = (10'd110 > y && y > 10'd46) ? 1'b1 : 1'b0;
    visibley[1] = (10'd272 > y && y > 10'd208) ? 1'b1 : 1'b0;
    visibley[2] = (10'd426 > y && y > 10'd362) ? 1'b1 : 1'b0;
end

assign sprite_visible_f1 = (visiblex[0] && visibley[0]) || (visiblex[0] && visibley[1]) || (visiblex[0] && visibley[2]);
assign sprite_visible_f2 = (visiblex[1] && visibley[0]) || (visiblex[1] && visibley[1]) || (visiblex[1] && visibley[2]);
assign sprite_visible_f3 = (visiblex[2] && visibley[0]) || (visiblex[2] && visibley[1]) || (visiblex[2] && visibley[2]);
assign sprite_visible = sprite_visible_f1 || sprite_visible_f2 || sprite_visible_f3;

assign board = {t11, t12, t13, t21, t22, t23, t31, t32, t33};
assign sp1_visible = |(board ~^ 18'b010101010101010101);
assign sp2_visible = |(board ~^ 18'b101010101010101010);

assign sprite1 = sprite_visible && sp1_visible;
assign sprite2 = sprite_visible && sp2_visible;

endmodule // SpriteDecoder
