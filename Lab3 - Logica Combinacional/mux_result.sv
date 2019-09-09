module mux_result #(parameter N=3)
					    (input  logic [N-1:0] result_and, result_or, result_xor, result_sum, result_slr, result_sll, result_sar, result_sc,
					     input  logic [3:0]   ALUControl,
					     output logic [N-1:0] y);
						
logic [N-1:0] result;

always_comb begin
	case (ALUControl)
		4'b0000, 4'b0001 : result <= result_sum;
		4'b0010 : result <= result_and;
		4'b0011 : result <= result_or;
		4'b0100 : result <= result_xor;
		4'b0101 : result <= result_sll;
		4'b0110 : result <= result_slr;
		4'b0111 : result <= result_sar;
		default : result <= result_sc;
	endcase
end

assign y = result;

endmodule