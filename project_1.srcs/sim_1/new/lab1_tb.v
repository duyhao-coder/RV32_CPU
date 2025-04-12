`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2025 03:44:34 PM
// Design Name: 
// Module Name: lab1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb;
	reg a, b;
	wire c, d, e;
	integer i;

	gates u0 ( .a(a), .b(b), .c(c), .d(d), .e(e));

	initial begin
		{a, b} = 0;

      $monitor ("[T=%0t a=%0b b=%0b c(and)=%0b d(or)=%0b e(xor)=%0b", $time, a, b, c, d, e);

		for (i = 0; i < 10; i = i+1) begin
			#1 	a <= $random;
				b <= $random;
		end
	end
endmodule