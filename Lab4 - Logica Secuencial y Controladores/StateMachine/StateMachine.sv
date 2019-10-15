module StateMachine(
	input clk, start, rst, TimeOut, Win, Tie, Player, Ready, V,
	output Time, ChangeTurn, ValidateWin, PlayRandom, ValidatePlay, PrintSprint, PrintWin,
);

logic [2:0] next_state;
logic [2:0] state;

always_ff @(posedge clk, posedge rst) begin
	if(rst) begin
		state<= 3'b000;
		end
	else begin
		state <= next_state;
		end
end


//combinational logic
always_comb begin
	case(state)
	3'b000:
	begin
		if(start) begin next_state = 3'b001; Time=1; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end
		else begin next_state = 3'b000; Time=0; ChangeTurn=0; ValidateWin=0; PlayRandom=0; ValidatePlay=0; PrintSprint=0; PrintWin=0; end 
	end
	3'b001:
	begin
		if(TimeOut) next_state = 3'b010; 
		else next_state = 3'b011; 
	end
	3'b010:
	begin
		if(V) next_state = 3'b101; 
		else next_state = 3'b001; 
	end
	3'b011:
	begin
		if(Ready) next_state = 3'b100; 
		else next_state = 3'b001; 
	end
	3'b100:
	begin
		if(V) next_state = 3'b101; 
		else next_state = 3'b001;
	end
	3'b101:
	begin
		if(~ Win && ~ Tie) next_state = 3'b110; 
		else next_state = 3'b111;
	end
	3'b110:
	begin
		next_state = 3'b001; 
	end
	3'b111:
	begin
		if(start) next_state = 3'b001; 
		else next_state = 3'b110; 
	end
	
	endcase

end

endmodule
