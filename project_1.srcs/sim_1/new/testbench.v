`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 05:02:13 PM
// Design Name: 
// Module Name: testbench
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


// Testbench for top module

module main_tb;

    reg clk, rst;
    
    main UUT (
        .clk(clk), 
        .rst(rst)
    );

    // Clock generation
    initial begin
        clk = 0;
    end

    always #50 clk = ~clk; 

    // Reset generation
    initial begin
        rst = 1'b1;
        #50;
        rst = 1'b0; 
        #5200; 
    end

    
    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, UUT);          
    end

endmodule