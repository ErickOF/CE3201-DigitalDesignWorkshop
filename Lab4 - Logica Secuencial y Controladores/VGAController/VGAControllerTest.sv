module VGAControllerTest;

logic clk, h_sync, v_sync, blank_n, sync_n;
logic [9:0] posx, posy;

VGAController DUT(clk, h_sync, v_sync, blank_n, sync_n, posx, posy);

initial begin
	clk = 0;
end

always
begin
	#10 clk = ~clk;
	#1 $display("posx = %d, posy = %d", posx, posy);
end

endmodule // VGAControllerTest
