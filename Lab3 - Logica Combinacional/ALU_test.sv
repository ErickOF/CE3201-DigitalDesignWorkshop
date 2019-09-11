module ALU_test();
logic [3:0] ALUControl;
logic [3:0] a, b, result;
logic			Z, N, V, C;

ALU DUT(a, b, ALUControl, result, Z, N, V, C);

initial begin
	// ADD
	#10 a = 4'b0000; b = 4'b0000; ALUControl = 4'b0000;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0000; b = 4'b1111; ALUControl = 4'b0000;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b0000; ALUControl = 4'b0000;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b0000;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0110; b = 4'b0001; ALUControl = 4'b0000;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0001; b = 4'b0111; ALUControl = 4'b0000;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	// SUB
	#10 a = 4'b0000; b = 4'b0000; ALUControl = 4'b0001;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0000; b = 4'b1111; ALUControl = 4'b0001;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b0000; ALUControl = 4'b0001;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b0001;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0110; b = 4'b0001; ALUControl = 4'b0001;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0001; b = 4'b0111; ALUControl = 4'b0001;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	// AND
	#10 a = 4'b1111; b = 4'b0000; ALUControl = 4'b0010;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0011; b = 4'b0111; ALUControl = 4'b0010;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1100; b = 4'b1110; ALUControl = 4'b0010;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b0010;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	// OR
	#10 a = 4'b1111; b = 4'b0000; ALUControl = 4'b0011;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0011; b = 4'b0111; ALUControl = 4'b0011;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1100; b = 4'b1110; ALUControl = 4'b0011;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b0011;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	// XOR
	#10 a = 4'b1111; b = 4'b0000; ALUControl = 4'b0100;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0011; b = 4'b0111; ALUControl = 4'b0100;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1100; b = 4'b1110; ALUControl = 4'b0100;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b0100;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	// SLL
	#10 a = 4'b1111; b = 4'b0000; ALUControl = 4'b0101;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0011; b = 4'b0111; ALUControl = 4'b0101;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1100; b = 4'b1110; ALUControl = 4'b0101;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b0101;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	// SLR
	#10 a = 4'b1111; b = 4'b0000; ALUControl = 4'b0110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0011; b = 4'b0111; ALUControl = 4'b0110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1100; b = 4'b1110; ALUControl = 4'b0110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b0110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	// SAR
	#10 a = 4'b0000; b = 4'b0000; ALUControl = 4'b0110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0001; b = 4'b0111; ALUControl = 4'b0110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1010; b = 4'b1110; ALUControl = 4'b0110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b0110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	// SC
	#10 a = 4'b0000; b = 4'b0000; ALUControl = 4'b1000;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0001; b = 4'b0111; ALUControl = 4'b1001;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b0010; b = 4'b1110; ALUControl = 4'b1010;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1011; b = 4'b1111; ALUControl = 4'b1011;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1101; b = 4'b1111; ALUControl = 4'b1100;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1001; b = 4'b1111; ALUControl = 4'b1101;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1100; b = 4'b1111; ALUControl = 4'b1110;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
	#10 a = 4'b1111; b = 4'b1111; ALUControl = 4'b1111;
	#1 $display("a=%b, b=%b, ALUControl=%b, result=%b, Z=%b, N=%b, V=%b, C=%b\n", a, b, ALUControl, result, Z, N, V, C);
end

endmodule
