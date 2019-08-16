module deco_test();
logic x, y, z, w, a, b, c, d, e, f, g;

// DUT initialization
disp_deco DUT(x,y,z,w,a,b,c,d,e,f,g);

initial begin
    #10 x = 0; y = 0; z = 0; w = 0; // 0
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 0; y = 0; z = 0; w = 1; // 1
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 0; y = 0; z = 1; w = 0; // 2
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 0; y = 0; z = 1; w = 1; // 3
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 0; y = 1; z = 0; w = 0; // 4
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 0; y = 1; z = 0; w = 1; // 5
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 0; y = 1; z = 1; w = 0; // 6
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 0; y = 1; z = 1; w = 1; // 7
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 1; y = 0; z = 0; w = 0; // 8
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 1; y = 0; z = 0; w = 1; // 9
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 1; y = 0; z = 1; w = 0; // A
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 1; y = 0; z = 1; w = 1; // B
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 1; y = 1; z = 0; w = 0; // C
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 1; y = 1; z = 0; w = 1; // D
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 1; y = 1; z = 1; w = 0; // E
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
    
    #10 x = 1; y = 1; z = 1; w = 1; // F
    #1	$display("x = %b, y = %b, z = %b, w = %b, a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b\n", 
    x, y, z, w, a, b, c, d, e, f, g);
end 

endmodule // deco_test