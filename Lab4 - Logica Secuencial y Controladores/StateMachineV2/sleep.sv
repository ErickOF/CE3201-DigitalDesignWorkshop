
module sleep(input inclok,
				output outclok, timeup);

logic[39:0] counter=40'd0;

logic [1:0] rst=1'd0;

//parameter DIVISOR = 28'd150150150;

parameter DIVISOR = 40'd61500000000; //30 segundos deberia ser este 

always @(posedge inclok)

begin

 counter <= counter + 40'd1;
 
 if(counter>=(DIVISOR-1))
	begin
	
	rst <= rst + 40'd1;
	counter <= 40'd0;
	
	end
	
 else if(rst>1'd0)
	begin
	
		rst <= rst + 40'd0;
		counter <= 40'd0;
		
	end
	
end

assign outclok = (counter<DIVISOR/2)?1'b0:1'b1;

assign timeup = (rst>1'd0)?1'b0:1'b1;

endmodule