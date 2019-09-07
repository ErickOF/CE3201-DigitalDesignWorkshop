module flag_generator #(parameter n=3)
					        (input  logic [n-1:0] result,
					         input  logic [3:0]   ALUControl,
								input  logic         cout,
					         output logic         Z, N, V, C);

logic result_z, result_n, result_v, result_c;

always_comb begin
	result_z = ~&result;
	result_n = result[n-1];
	result_c = (& result[n-1:1]) & cout;
end

assign Z = result_z;
assign N = result_n;
assign V = result_v;
assign C = result_c;

endmodule