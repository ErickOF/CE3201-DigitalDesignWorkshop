module ClockDivider(input  clk,
                    output clk_div);

logic [27:0] counter = 28'd0;

parameter DIVISOR = 28'd2;

always @(posedge clk)
begin
    counter <= counter + 28'd1;
    if (counter >= (DIVISOR - 1))
	 begin
        counter <= 28'd0;
    end
end

assign clk_div = (counter < DIVISOR / 2 ) ? 1'b0 : 1'b1;

endmodule // ClockDivider
