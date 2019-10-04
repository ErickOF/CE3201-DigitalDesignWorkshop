module AddressGenerator(input [9:0] pixelx, pixely, posx, posy,
                        output xm63, ym63,
                        output logic [11:0] address);

// Index X, index Y
logic [9:0] idx, idy;

// Number from 0 to 63
assign idx = pixelx - posx;
assign idy = pixely - posy;

// But only LSBs are needed 2^5
assign address = {idy[5:0], idx[5:0]};

assign xm63 = (idx > 10'd63 ? 1 : 0);
assign ym63 = (idy > 10'd63 ? 1 : 0);

endmodule // AddressGenerator
