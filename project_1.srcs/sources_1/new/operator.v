//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 03:31:29 PM
// Design Name: 
// Module Name: operator
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

module Branch_Adder(
    input [31:0] PC,                    
    input [31:0] offset,                 
    output reg [31:0] branch_target     
);

    always @(*) begin
        branch_target <= PC + (offset );  
    end

endmodule
