module StateMachineStruct(input clk, start, rst, TimeOut, Win, Tie, Player, Ready, V,
								  output Time, ChangeTurn, ValidateWin, PlayRandom, ValidatePlay, PrintSprint, PrintWin);
	

logic [2:0] next_state, state;
logic [3:0]position;

PlayRandomLogic playRand(clk, rst, position);
validarGaneLogic validateWinner(clk, rst, ValidateWin, Player);
validarJugadaLogic validatePl(clk, rst, ValidatePlay, Player, position, V);


endmodule
