module mux_not #(parameter N=3)
					 (input  logic [N-1:0] b,
					  input  logic         control,
					  output logic [N-1:0] y);
						
logic [N-1:0] result;

always_comb begin
	result = control ? ~b : b;
end

assign y = result;

endmodule