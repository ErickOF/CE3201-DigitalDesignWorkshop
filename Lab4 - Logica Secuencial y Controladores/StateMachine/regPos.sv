module regPos(input logic en, clock, reset, 
				  input logic[1:0] playerID,
				  output [1:0]position);

always @(negedge clock)

	if(reset) 
		position <= 1'b00;
		
		else
	
			if(en)
				position <= playerID;// keep previous position
 
endmodule 