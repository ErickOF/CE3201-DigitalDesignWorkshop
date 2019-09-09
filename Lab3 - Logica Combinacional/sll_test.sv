module sll_test();
parameter N = 3;
logic [N-1:0] a, b, c;

//DUT initialization
sll DUT(a ,b, c);

initial begin
 #10 a = 1; b = 1;
 #1 $display("a = %b, b = %b, c = %b\n", a, b, c);
 #10 a = 2; b = 1;
 #1 $display("a = %b, b = %b, c = %b\n", a, b, c);
 #10 a = 3; b = 1;
 #1 $display("a = %b, b = %b, c = %b\n", a, b, c);
 
 end

endmodule 