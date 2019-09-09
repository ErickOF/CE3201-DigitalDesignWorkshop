module srl_test();
parameter N = 3;
logic [N-1:0] a, b, c;

//DUT initialization
slr DUT(a ,b, c);

initial begin
 #10 a = 4; b = 1;
 #1 $display("a = %b, b = %b, c = %b\n", a, b, c);
 #10 a = 3; b = 2;
 #1 $display("a = %b, b = %b, c = %b\n", a, b, c);
 #10 a = 4; b = 2;
 #1 $display("a = %b, b = %b, c = %b\n", a, b, c);
 
 end

endmodule 