module ALU #(parameter n = 3)
				(input  logic [n-1:0] a, b,
				 input  logic [3:0]   control,
				 output logic [n-1:0] result,
				 output logic         Z, N, V, C);

logic [n - 1: 0] result_and;
logic [n - 1: 0] result_or;
logic [n - 1: 0] result_xor;
logic [n - 1: 0] result_sum;
logic [n - 1: 0] result_mux_not;
logic [n - 1: 0] result_slr;
logic [n - 1: 0] result_sll;
logic [n - 1: 0] result_sar;

and_gate  and_module       (a, b, result_and);
or_gate   or_module        (a, b, result_or);
xor_gate  xor_module       (a, b, result_xor);
mux_not   mux_not_module   (b, control[0], result_mux_not);
fulladder fulladder_module (a, result_mux_not, 0, result_sum);
slr       slr_module       (a, b, result_slr);
sll       sll_module       (a, b, result_sll);

endmodule