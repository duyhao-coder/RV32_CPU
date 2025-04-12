//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 03:23:48 PM
// Design Name: 
// Module Name: MUX
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


module pc_mux(
    input [31:0] pc_in,       
    input [31:0] pc_branch,   
    input pc_select,          
    output reg[31:0] pc_out  
);
   always @(*) begin
        if (pc_select==1'b0) begin
            pc_out = pc_in;  
        end else begin
            pc_out = pc_branch;      
        end
    end

endmodule   


///////////////////////
module MUX2to1 (
    input [31:0] input0,   
    input [31:0] input1,   
    input select,          
    output [31:0] out      
);

    assign out = (select) ? input1 : input0;  

endmodule
////////////////////////////////////////
module MUX2to1_DataMemory (
    input [31:0] input0,  
    input [31:0] input1,  
    input select,         
    output [31:0] out     
);

    assign out = (select) ? input1 : input0; 

endmodule