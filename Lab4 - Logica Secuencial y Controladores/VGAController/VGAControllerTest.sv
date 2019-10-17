module VGAControllerTest;

logic clk, rst, h_sync, v_sync, blank_n, sync_n;
logic [9:0] posx, posy;

VGAController DUT(clk, rst, h_sync, v_sync, blank_n, sync_n, posx, posy);

initial begin
	clk = 0;
	#10 rst = 0;
	#10 rst = 1;
	#10 rst = 0;
end

always
begin
	#10 clk = ~clk;
end

endmodule // VGAControllerTest
