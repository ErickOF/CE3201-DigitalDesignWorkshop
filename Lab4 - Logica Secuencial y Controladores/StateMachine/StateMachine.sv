module StateMachine(
	input clk, start, rst, TimeOut, Win, Tie, Player, Ready, V,
	output Time, ChangeTurn, ValidateWin, PlayRandom, ValidatePlay, PrintSprint, PrintWin
);

logic [2:0] next_state;
logic [2:0] state;
//States
parameter Inicio=3'b000;
parameter Espera=3'b001;
parameter Random=3'b010;
parameter Jugada=3'b011;
parameter ValidarJugada=3'b100;
parameter ValidarGane=3'b101;
parameter Cambioturno=3'b110;
parameter Fin=3'b111;




always_ff @(posedge clk, posedge rst) begin
	if(rst) begin
		state<= Inicio;
		end
	else begin
		state <= next_state;
		end
end


//combinational logic
always_comb begin
	case(state)
	Inicio:
	begin
		if(start) begin next_state = Espera; Time=1; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
		else begin next_state = Inicio; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end 
	end
	Espera:
	begin
		if(TimeOut) begin next_state = Random; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=1; ValidatePlay=0; PrintSprint=0; PrintWin=0; end 
		else begin next_state = Jugada; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end 
	end
	Random:
	begin
		next_state = ValidarGane; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0;
		//por el momento pasa directo
		//if(V) begin next_state = 3'b101; 
		//else next_state = 3'b001; 
	end
	Jugada:
	begin
		if(Ready) begin next_state = ValidarJugada; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=1; PrintSprint=0; PrintWin=0; end
		else begin next_state = Espera; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
	end
	ValidarJugada:
	begin
		if(V) begin next_state = ValidarGane; Time=0; ChangeTurn=0; ValidateWin=1; PlayRandom=0; ValidatePlay=0; PrintSprint=1; PrintWin=0; end
		else begin next_state = Espera; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
	end
	ValidarGane:
	begin
		if(~ Win && ~ Tie) begin next_state = Cambioturno; Time=0; ChangeTurn=1; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
		else begin next_state = Fin; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=1; end
	end
	Cambioturno:
	begin
		next_state = Espera; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0;
	end
	Fin:
	begin
		if(start) begin next_state = Espera; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
		else begin next_state = Fin; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
	end
	
	endcase

end

endmodule
