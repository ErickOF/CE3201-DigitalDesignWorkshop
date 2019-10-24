module regWinTie(input logic en, clock, reset, 
				  output logic WinTie);

always @(negedge clock)

	if(reset) 
		WinTie <= 1'b0;
		
	else
		if(en)
			WinTie <= 1'b1;
		else 
			WinTie <= 1'b0;// keep tie
 
endmodule 