module fulladder #(parameter N=3)
						(input  logic [N-1:0] a, b,
						 input  logic         cin,
						 output logic [N-1:0] sum, 
						 output logic         cout);
						
logic [N-1:0] s;
logic c1;

always_comb begin
	{c1, s} = a + b + cin;
end

assign sum = s;
assign cout = c1;

endmodule