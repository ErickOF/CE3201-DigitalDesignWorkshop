module VGAController(input clk,
                     output logic h_sync, v_sync, blank_n, sync_n,
                     output logic [9:0] posx, posy);

// VGA constants
const logic [9:0] H_SYNC_A = 10'd95;
const logic [9:0] H_BACK_PORCH_B = 10'd48;
const logic [9:0] H_DISPLAY_C = 10'd635;
const logic [9:0] H_FRONT_PORCH_D = 10'd15;
//const logic [9:0] H_SYNC_STR = H_FRONT_PORCH_D;
//const logic [9:0] H_SYNC_END = H_SYNC_A + H_FRONT_PORCH_D;
const logic [9:0] H_TOTAL = H_SYNC_A + H_BACK_PORCH_B + H_DISPLAY_C + H_FRONT_PORCH_D;
// const [9:0] H_START = H_SYNC_A + H_BACK_PORCH_B;
// const [9:0] H_END   = H_SYNC_A + H_BACK_PORCH_B + H_DISPLAY_C - 10'b1;

const logic [9:0] V_SYNC_A = 10'd2;
const logic [9:0] V_UP = 10'd33;
const logic [9:0] V_DISPLAY = 10'd480;
const logic [9:0] V_DOWN = 10'd10;
//const logic [9:0] V_SYNC_STR = V_DISPLAY + V_DOWN;
//const logic [9:0] V_SYNC_END = V_DISPLAY + V_DOWN + V_SYNC_A;
const logic [9:0] V_TOTAL = V_SYNC_A + V_UP + V_DISPLAY + V_DOWN;
// const [9:0] V_START = V_SYNC_A + V_UP - 10'b1;
// const [9:0] V_END   = V_SYNC_A + V_UP + V_DISPLAY - 10'b1;

// Vars
logic rsth, rstv;
//logic lower, greater, equal;
logic h_sync_temp1, v_sync_temp1;
//		h_sync_temp2, v_sync_temp2;


Counter h_counter(clk, rsth, posx);
Counter v_counter(rsth, rstv, posy);

initial
begin
    #10 rsth = 0; rstv = 0;
    #10 rsth = 1; rstv = 1;
    #10 rsth = 0; rstv = 0;
end

Comparator hmin_comparator(.signal1(posx), .signal2(H_SYNC_A), .lower(h_sync_temp1), .greater(), .equal());
//Comparator hmin_comparator(posx, H_SYNC_STR, lower, h_sync_temp1, equal);
//Comparator hmax_comparator(posx, H_SYNC_END, h_sync_temp2, greater, equal);
Comparator maxscreenh_comparator(.signal1(posx), .signal2(H_TOTAL), .lower(), .greater(), .equal(rsth)); 

Comparator vmin_comparator(.signal1(posy), .signal2(V_SYNC_A), .lower(v_sync_temp1), .greater(), .equal());
//Comparator vmax_comparator(posy, V_SYNC_END, v_sync_temp2, greater, equal);
Comparator maxscreenv_comparator(.signal1(posy), .signal2(V_TOTAL), .lower(), .greater(), .equal(rstv)); 

assign h_sync = ~h_sync_temp1; //& h_sync_temp2);
assign v_sync = ~v_sync_temp1; //& v_sync_temp2);
assign sync_n = h_sync ^ v_sync;
assign blank_n = h_sync & v_sync;

endmodule // VGAController 