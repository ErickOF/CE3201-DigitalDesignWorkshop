module flag_generator #(parameter n=3)
					        (input  logic [n-1:0] a, b, sum,
					         input  logic [3:0]   ALUControl,
								input  logic         cout,
					         output logic         Z, N, V, C);

logic result_z, result_n, result_v, result_c;
logic ALUControl_nand;

always_comb begin
	ALUControl_nand = ~& sum[n-1:1];
	result_z = &(~sum);
	result_n = sum[n-1];
	result_c = ALUControl_nand & cout;
	result_v = (ALUControl[0] ^ a[n-1] ^ b[n-1]) & (a[n-1] ^ sum[n-1]) & ALUControl_nand;
end

assign Z = result_z;
assign N = result_n;
assign V = result_v;
assign C = result_c;

endmodule