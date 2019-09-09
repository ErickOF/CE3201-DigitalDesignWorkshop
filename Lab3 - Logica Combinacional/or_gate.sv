module or_gate #(parameter N=3)
					 (input  logic [N-1:0] a, b,
					  output logic [N-1:0] result);



logic [N-1:0] result_or;

always_comb begin
	result_or <= a | b;
end

assign result = result_or;

endmodule