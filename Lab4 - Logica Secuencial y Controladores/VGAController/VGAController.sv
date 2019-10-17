module VGAController(input clk,
                     output logic h_sync, v_sync, blank_n, sync_n,
                     output logic [9:0] posx, posy);

// VGA constants
const logic [9:0] H_SYNC_A = 10'd95;
const logic [9:0] H_BACK_PORCH_B = 10'd48;
const logic [9:0] H_DISPLAY_C = 10'd635;
const logic [9:0] H_FRONT_PORCH_D = 10'd15;
const logic [9:0] H_SYNC = H_FRONT_PORCH_D + H_BACK_PORCH_B + H_DISPLAY_C - 10'd1;
const logic [9:0] H_SCR = H_SYNC_A + H_BACK_PORCH_B;
const logic [9:0] H_TOTAL = H_SYNC_A + H_BACK_PORCH_B + H_DISPLAY_C + H_FRONT_PORCH_D;

const logic [9:0] V_SYNC_A = 10'd2;
const logic [9:0] V_UP = 10'd33;
const logic [9:0] V_DISPLAY = 10'd480;
const logic [9:0] V_DOWN = 10'd10;
const logic [9:0] V_SYNC = V_DISPLAY + V_DOWN + V_UP - 10'd1;
const logic [9:0] V_SCR = V_UP + V_SYNC_A;
const logic [9:0] V_TOTAL = V_SYNC_A + V_UP + V_DISPLAY + V_DOWN;

// Vars
logic rsth, rstv, h_sync_temp, v_sync_temp;
logic [9:0] hcount, vcount;

Counter h_counter(clk, rsth, hcount);
Counter v_counter(rsth, rstv, vcount);

initial
begin
    #10 rsth = 0; rstv = 0;
    #10 rsth = 1; rstv = 1;
    #10 rsth = 0; rstv = 0;
end

Comparator hmin_comparator(.signal1(hcount), .signal2(H_SYNC), .lower(), .greater(h_sync_temp), .equal());
//Comparator hmax_comparator(posx, H_SYNC_END, h_sync_temp2, greater, equal);
Comparator maxscreenh_comparator(.signal1(hcount), .signal2(H_TOTAL), .lower(), .greater(), .equal(rsth)); 

Comparator vmin_comparator(.signal1(vcount), .signal2(V_SYNC), .lower(), .greater(v_sync_temp), .equal());
//Comparator vmax_comparator(posy, V_SYNC_END, v_sync_temp2, greater, equal);
Comparator maxscreenv_comparator(.signal1(vcount), .signal2(V_TOTAL), .lower(), .greater(), .equal(rstv)); 

assign h_sync = ~h_sync_temp;
assign v_sync = ~v_sync_temp;
assign sync_n = 1'b1;
assign blank_n = 1'b1;
assign posx = hcount > H_BACK_PORCH_B ? (hcount - H_BACK_PORCH_B) : 10'b0;
assign posy = vcount > V_UP ? (vcount - V_UP) : 10'b0;

endmodule // VGAController 