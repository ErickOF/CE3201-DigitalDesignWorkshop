module ClockDividerTest;

logic clk, clk_div;

ClockDivider DUT(clk, clk_div);

initial begin
  clk = 0;
  forever #10 clk = ~clk;
end
      
endmodule // ClockDividerTest
