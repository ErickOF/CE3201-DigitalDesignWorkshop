module xor_gate #(parameter N=3)
					  (input  logic [N-1:0] a, b,
					   output logic [N-1:0] result);



logic [N-1:0] result_xor;

always_comb begin
	result_xor <= a ^ b;
end

assign result = result_xor;

endmodule