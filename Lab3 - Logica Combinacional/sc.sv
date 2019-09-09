module sc #(parameter N=3)
			  (input  logic [N-1:0] a,
			   output logic [2:0]   resul);

logic [N-1:0] b;

always_comb begin
	b = a >> 2;
end

assign resul = {a[N-2:0], b[0]};
	
endmodule