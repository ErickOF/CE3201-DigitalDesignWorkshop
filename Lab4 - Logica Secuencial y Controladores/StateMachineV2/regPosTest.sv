module regPosTest();

logic en, clock, reset;
logic [1:0] playerID, position;

regPos DUT(en, clock, reset, playerID, position);
	
endmodule 