module sar #(parameter N=3)
            (input logic  [N-1:0] a, b,
             output logic [N-1:0] r_sar);

logic signed [N-1:0] result;

always_comb begin
	result = a >>> b;
end

assign r_sar = result;

endmodule