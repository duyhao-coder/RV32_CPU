`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2025 03:43:12 PM
// Design Name: 
// Module Name: lab1
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


module gates (	input a, b,
				output c, d, e);

	and (c, a, b); 	// c is the output, a and b are inputs
	or  (d, a, b);	// d is the output, a and b are inputs
	xor (e, a, b); 	// e is the output, a and b are inputs
endmodule

