/*
Comparator Module

Inputs:
    signal1: First signal to compare
    signal2: Second signal to compare

Outputs:
    equal: indicate if signals are equal
*/
module Comparator(input [9:0] signal1, signal2,
						output logic lower, greater, equal);

assign lower   = signal1 < signal2 ? 1'b1 : 1'b0;
assign greater = signal1 > signal2 ? 1'b1 : 1'b0;
assign equal   = signal1 == signal2 ? 1'b1 : 1'b0;

endmodule // Comparator
