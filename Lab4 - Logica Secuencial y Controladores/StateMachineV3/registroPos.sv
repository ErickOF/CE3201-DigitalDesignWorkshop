  
module registroPos(input logic clock, reset,
						 input logic [1:0] playerID,
						 input logic en1, en2, en3, en4, en5, en6, en7, en8, en9,
						 output logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9 //Boxes with ID
						 );
						 

regPos box1(en1, clock, reset, playerID, pos1);
regPos box2(en2, clock, reset, playerID, pos2);
regPos box3(en3, clock, reset, playerID, pos3);
regPos box4(en4, clock, reset, playerID, pos4);
regPos box5(en5, clock, reset, playerID, pos5);
regPos box6(en6, clock, reset, playerID, pos6);
regPos box7(en7, clock, reset, playerID, pos7);
regPos box8(en8, clock, reset, playerID, pos8);
regPos box9(en9, clock, reset, playerID, pos9);

endmodule