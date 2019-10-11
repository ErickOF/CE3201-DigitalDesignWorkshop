module ClockDividerTest;

logic clk, clk_div;

ClockDivider DUT(clk, clk_div);

initial begin
    clk = 0;
end

always
    #10 clk = ~clk;
      
endmodule // ClockDividerTest
