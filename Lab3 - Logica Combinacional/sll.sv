module sll #(parameter N=3)
				(input  logic [N-1:0] a, b,
				 output logic [N-1:0] r_sll);

logic [N-1:0] r;

always_comb begin
	r = a << b;
end

assign r_sll = r;
	
endmodule 