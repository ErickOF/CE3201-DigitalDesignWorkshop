module ALU #(parameter n=128)
				(input  logic [n-1:0] a, b,
				 input  logic [3:0]   ALUControl,
				 output logic [n-1:0] result,
				 output logic         Z, N, V, C);

logic 		  cout;
logic [n-1:0] result_and;
logic [n-1:0] result_or;
logic [n-1:0] result_xor;
logic [n-1:0] result_sum;
logic [n-1:0] result_mux_not;
logic [n-1:0] result_slr;
logic [n-1:0] result_sll;
logic [n-1:0] result_sar;
logic [n-1:0] result_sc;

and_gate       and_module            (a, b, result_and);
or_gate        or_module             (a, b, result_or);
xor_gate       xor_module            (a, b, result_xor);
mux_not        mux_not_module        (b, ALUControl[0], result_mux_not);
fulladder      fulladder_module      (a, result_mux_not, ALUControl[0], result_sum, cout);
slr            slr_module            (a, b, result_slr);
sll            sll_module            (a, b, result_sll);
mux_result     mux_result_module     (result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc, ALUControl, result);
flag_generator flag_generator_module (result, ALUControl, cout, Z, N, V, C);

endmodule