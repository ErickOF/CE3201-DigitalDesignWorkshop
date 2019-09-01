module AND_GATE #(parameter n = 3)
			(input  logic [n-1:0] A, B,
			 input  logic [3:0]   control,
			 output logic [n-1:0] result,
			 output logic         N, Z, C, V);
	
	logic cout;
	
	always @ (A or B or control)
		if (control == 0) result <= A & B;
		else if (control == 1) result <= A | B;
		else if (control == 2) result <= A ^ B;
		else if (control == 4) {cout, result} <= A + B;
		else if (control == 5) {cout, result} <= A - B;
		else result <= 0;
	
	assign N = result[n-1];
	assign C = cout & ~(control[2] | control[3]);
	assign V = ~(A[n-1] ^ B[n-1] ^ control[0]) & (result[n-1] ^ A[n-1]) & ~(control[2] | control[3]);
endmodule