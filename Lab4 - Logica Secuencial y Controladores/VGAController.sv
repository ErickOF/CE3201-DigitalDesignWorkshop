module VGAController(input  logic clk,
                     output logic h_sync, v_sync, print,
                     output logic [9:0] x, y);

// VGA constants
localparam H_SYNC_A = 96;
localparam H_BACK_PORCH_B = 48;
localparam H_DISPLAY_C = 640;
localparam H_FRONT_PORCH_D = 16;
localparam H_TOTAL = H_SYNC_A + H_BACK_PORCH_B + H_DISPLAY_C + H_FRONT_PORCH_D - 1;
localparam H_START = H_DISPLAY_C + H_FRONT_PORCH_D;
localparam H_END = H_DISPLAY_C + H_FRONT_PORCH_D + H_SYNC_A - 1;

localparam V_UP = 33;
localparam V_DISPLAY = 480;
localparam V_DOWN = 10;
localparam V_SYNC_A = 2;
localparam V_TOTAL = V_UP + V_DISPLAY + V_DOWN + V_SYNC_A - 1;
localparam V_START = V_DISPLAY + V_DOWN;
localparam V_END = V_DISPLAY + V_DOWN + V_SYNC_A - 1;


endmodule // VGAController