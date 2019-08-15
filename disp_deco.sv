module disp_deco(input x,
				 input y,
				 input z,
				 input w,
				 output a,
				 output b,
				 output c,
				 output d,
				 output e,
				 output f,
				 output g);
logic U1;
logic U2;
logic U3;
logic U4;
logic U5;
logic U6;
logic U7;

always_comb begin
	U1 = ~((x & ~w) | (~x & z) | (y & z) | (~x & y & w) | (x & ~y & ~z));
	U2 = ~((~x & ~y & w) | (~y & z & ~w) | (~x & z & w) | (x & ~y & ~z) | (x & ~z & w) | (~x & y & ~z & ~w));
	U3 = ~((~x & w) | (~z & w) | (~x & y) | (x & ~y));
	U4 = ~((~x & ~y & z) | (~y & z & w) | (y & ~z & w) | (y & z & ~w) | (x & ~z & ~w));
	U5 = ~((z & ~w) | (x & ~w) | (x & z) | (x & y));
	U6 = ~((y & ~w) | (x & ~y) | (x & z) | (~x & y & ~z));
	U7 = ~((~y & z) | (z & ~w) | (x & ~y) | (x & w) | (~x & y & ~z));
end
			
assign a = U1;
assign b = U2;
assign c = U3;
assign d = U4;
assign e = U5;
assign f = U6;
assign g = U7;

endmodule 		

