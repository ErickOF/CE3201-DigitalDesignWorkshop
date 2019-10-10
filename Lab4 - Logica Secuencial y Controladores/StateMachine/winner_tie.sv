module winner_tie(input clock,
						input [1:0]playerID,
						input logic [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,
						output [1:0]winner);
						

always @(posedge clock)
 
begin

	if(pos1 == playerID && pos2 == playerID && pos3 == playerID)
	
		winner <= playerID;
		
	if(pos4 == playerID && pos5 == playerID && pos6 == playerID)
	
		winner <= playerID;
		
	if(pos7 == playerID && pos8 == playerID && pos9 == playerID)
	
		winner <= playerID;
		
	if(pos1 == playerID && pos4 == playerID && pos7 == playerID)
	
		winner <= playerID;
		
	if(pos2 == playerID && pos5 == playerID && pos8 == playerID)
	
		winner <= playerID;
		
	if(pos3 == playerID && pos6 == playerID && pos9 == playerID)
	
		winner <= playerID;
		
	if(pos1 == playerID && pos5 == playerID && pos9 == playerID)
	
		winner <= playerID;
		
	if(pos3 == playerID && pos5 == playerID && pos7 == playerID)
	
		winner <= playerID;
		
	if(pos1 == playerID && pos2 == playerID && pos3 == playerID)
	
		winner <= playerID;

end

endmodule
