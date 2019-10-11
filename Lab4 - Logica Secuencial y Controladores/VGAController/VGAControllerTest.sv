module VGAControllerTest;

logic clk, h_sync, v_sync, blank_n;
logic [9:0] posx, posy;

VGAController DUT(clk, h_sync, v_sync, blank_n, posx, posy);

initial begin
	clk = 0;
end

always
begin
	#40000 clk = ~clk;
	#1 $display("posx = %d, posy = %d", posx, posy);
end

endmodule // VGAControllerTest
