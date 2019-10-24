module escogerPos(input clk, reset, select,
                output logic [3:0] pos,
					 output logic Ready);
					 
					 


always_ff @(posedge clk, posedge reset)
begin
    if (reset) begin pos <= 4'b0; Ready <= 1'b0; end
	 else if (pos == 4'b1001) pos <= 4'b0;
    else begin 
				pos <= pos + 4'b1; 
				if(select) 
				begin  
					Ready <= 1'b1; 
				end
			end
end


endmodule