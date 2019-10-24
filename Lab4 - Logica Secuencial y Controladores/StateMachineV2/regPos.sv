module regPos(input logic en, clock, reset, 
				  input logic [1:0] playerID,
				  output reg [1:0] position);

always @(negedge clock)

	if(reset) 
		position <= 2'b00;
		
	else
		if(en)
			position <= playerID;
		else 
			position <= 2'b00;// keep previous position
 
endmodule 