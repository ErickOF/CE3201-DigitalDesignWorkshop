module VGAController(input clk,
					      output logic h_sync, v_sync, blank_n, sync_n,
						   output logic [9:0] posx, posy);

// VGA constants
localparam H_SYNC_A = 96;
localparam H_BACK_PORCH_B = 48;
localparam H_DISPLAY_C = 640;
localparam H_FRONT_PORCH_D = 16;
localparam H_TOTAL = H_SYNC_A + H_BACK_PORCH_B + H_DISPLAY_C + H_FRONT_PORCH_D - 1;
localparam H_START = H_SYNC_A + H_BACK_PORCH_B;
localparam H_END   = H_SYNC_A + H_BACK_PORCH_B + H_DISPLAY_C - 1;

localparam V_UP = 33;
localparam V_DISPLAY = 480;
localparam V_DOWN = 10;
localparam V_SYNC_A = 2;
localparam V_TOTAL = V_SYNC_A + V_UP + V_DISPLAY + V_DOWN - 1;
localparam V_START = V_SYNC_A + V_UP - 1;
localparam V_END   = V_SYNC_A + V_UP + V_DISPLAY - 1;

// Vars
logic rsth, rstv;
logic lower, greater, equal;
logic h_sync_temp1, v_sync_temp1;
logic h_sync_temp2, v_sync_temp2;


Counter h_counter(clk, rsth, posx);
Counter v_counter(rsth, rstv, posy);

initial
begin
    #10 rsth = 0; rstv = 0;
    #10 rsth = 1; rstv = 1;
	 #10 rsth = 0; rstv = 0;
end

Comparator hmin_comparator(posx, H_START, lower, h_sync_temp1, equal);
Comparator hmax_comparator(posx, H_END, h_sync_temp2, greater, equal);
Comparator maxscreenh_comparator(posx, H_TOTAL, lower, greater, rsth); 

Comparator vmin_comparator(posy, V_START, lower, v_sync_temp1, equal);
Comparator vmax_comparator(posy, V_END, v_sync_temp2, greater, equal);
Comparator maxscreenv_comparator(posy, V_TOTAL, lower, greater, rstv); 

assign h_sync = h_sync_temp1 & h_sync_temp2;
assign v_sync = v_sync_temp1 & v_sync_temp2;
assign sync_n = h_sync ^ v_sync;
assign blank_n = h_sync & v_sync;

endmodule // VGAController
