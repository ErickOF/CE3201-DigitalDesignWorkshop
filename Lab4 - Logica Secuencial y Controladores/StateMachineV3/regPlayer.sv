module regPlayer(input logic enPlayer, clock, reset,
						output [1:0]playerID);
						
always @(negedge clock)

if(reset) 
	playerID <= 1'b01;
		
else
	if(enPlayer)
		playerID <= ~playerID;// keep previous position
				
endmodule 