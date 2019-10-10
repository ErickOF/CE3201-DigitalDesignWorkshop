module player_selection(input clock,
								input [1:0] playerID,
								input[3:0] position,
								input logic[1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9,
								output logic[1:0] tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9,
								output logic[1:0] nextPlayer,
								output logic[3:0] selPos);

// Position 1 

 always @(posedge clock)
 
 begin

   if(pos1 == 2'b00) 
	
		begin
		
		tmp1 <= playerID;// position player selected

		nextPlayer <= ~nextPlayer;
		
		selPos <= position;
			
		end
		
   else 
	
		tmp1 <= pos1;// keep previous position
		

   if(pos2 == 2'b00)
	
		begin
		
		tmp2 <= playerID;// position player selected
	 
		nextPlayer <= ~nextPlayer;
		
		selPos <= position;
			
		end
		
   else 
	
		tmp2 <= pos2;// keep previous position

   if(pos3==2'b00)
	
		begin
	
		tmp3 <= playerID;// position player selected
	 
		nextPlayer <= ~nextPlayer;

		selPos <= position;
			
		end
		
   else
	
		tmp3 <= pos3;// keep previous position
 

   if(pos4 == 2'b00)
	
		begin
	
		tmp4 <= playerID;// position player selected
		
		nextPlayer <= ~nextPlayer;
		
		selPos <= position;
			
		end
	 
   else
	
    tmp4 <= pos4;// keep previous position
	 

   if(pos5 == 2'b00)
	
		begin
	
		tmp5 <= playerID;// position player selected
		
		nextPlayer <= ~nextPlayer;
		
		selPos <= position;
			
		end
		
   else 
	
    tmp5 <= pos5;// keep previous position

   if(pos6==2'b00)
	
		begin
		
		tmp6 <= playerID;// position player selected
		
		nextPlayer <= ~nextPlayer;
		
		selPos <= position;
			
		end
		
   else 
	
		tmp6 <= pos6;// keep previous position
	 

   if(pos7 == 2'b00)
	
		begin
	
		tmp7 <= playerID;// position player selected
		
		nextPlayer <= ~nextPlayer;
		
		selPos <= position;
			
		end
	 
   else 
	
    tmp7 <= pos7;// keep previous position
	 

   if(pos8 == 2'b00)
	
		begin
		
		tmp8 <= playerID; // position player selected
		
		nextPlayer <= ~nextPlayer;
		
		selPos <= position;
			
		end
		
   else 
	
    tmp8 <= pos8; // keep previous position

   if(pos9 == 2'b00)
	
		begin
		
		tmp9 <= playerID;// position player selected
		
		nextPlayer <= ~nextPlayer;

		selPos <= position;
			
		end
		
   else
	
    tmp9 <= pos9;// keep previous position
 
 end
 
endmodule 