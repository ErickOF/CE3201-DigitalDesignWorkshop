module RandomPlay(input clock,
						input [1:0] playerID,
						output logic [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,
						output [1:0]nextPlayer,
						output [1:0] tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9);
						
// Verifies which position is available to play

 always @(posedge clock)
 
 begin
 
	if(pos1 == 2'b00) 
	
		begin 
		
		tmp1 = playerID;
		nextPlayer <= ~nextPlayer;
			
		end

	else if(pos7 == 2'b00) 
	
		begin
		
		tmp7 <= playerID;
		
		nextPlayer <= ~nextPlayer;
			
		end
		
	else if(pos2 == 2'b00) 
	
		begin
		
		tmp2 <= playerID;
		nextPlayer <= ~nextPlayer;
			
		end

	else if(pos4 == 2'b00)
	
		begin
		
		tmp4 <= playerID;
		
		nextPlayer <= ~nextPlayer;
			
		end
		
	else if(pos5 == 2'b00)
	
		begin
		
		tmp5 <= playerID;
		
		nextPlayer <= ~nextPlayer;
			
		end
		
	else if(pos9 == 2'b00)
	
		begin
		
		pos9 <= playerID;
		
		nextPlayer <= ~nextPlayer;
			
		end
		
	else if(pos6 == 2'b00)

		begin
		
		tmp6 <= playerID;
		
		nextPlayer <= ~nextPlayer;
			
		end
		
	else if(pos8 == 2'b00)
	
		begin
		
		tmp8 <= playerID;

		nextPlayer <= ~nextPlayer;
			
		end

	else if(pos3 == 2'b00)

		begin
		
		tmp3 <= playerID;
		nextPlayer <= ~nextPlayer;
			
		end
		
 end 
 
endmodule
			