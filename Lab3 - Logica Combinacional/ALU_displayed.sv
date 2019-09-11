module ALU_displayed #(parameter n=3)
				(input  logic [n-1:0] a, b,
				 input  logic [3:0]   ALUControl,
				 output logic [6:0]   result,
				 output logic         Z, N, V, C);

logic 		  cout;
logic [n-1:0] result_alu;

ALU       alu_module  (a, b, ALUControl, result_alu, Z, N, V, C);
deco      deco_module (0, result_alu[2], result_alu[1], result_alu[0], result[0], result[1], result[2], result[3], result[4], result[5], result[6]);

endmodule // ALU_displayed