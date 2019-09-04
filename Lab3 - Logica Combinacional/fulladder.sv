module fulladder #(parameter N=3)
						(input  logic [N-1:0] a, b,
						 input  logic         cin,
						 output logic [N-1:0] sum, 
						 output logic         cout);
						
logic [N-1:0] s;
logic c1;

always_comb begin
	s = a ^ b ^ cin;
	c1 = (a[N-1] & b[N-1]) | ((a[N-1] | b[N-1]) & cin);
end

assign sum = s;
assign cout = c1;

endmodule