//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 09:20:42 AM
// Design Name: 
// Module Name: Imem
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
//Instruction_Memmory
module Instruction_Memory(rst, clk, read_address, instruction_out);

input rst, clk;
input [31:0] read_address;
output [31:0] instruction_out;
reg [31:0] I_Mem [63:0];  
integer k;
assign instruction_out = I_Mem[read_address];

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        for (k = 0; k < 64; k = k + 1) begin 
            I_Mem[k] = 32'b00;  
        end
    end else begin
        I_Mem[0] = 32'b0000000000000000000000000000000 ;       // no operation
        I_Mem[4] = 32'b0000000_11001_10000_000_01101_0110011;    // add x13, x16, x25
        I_Mem[8] = 32'b0100000_00011_01000_000_00101_0110011;     // sub x5, x8, x3
        I_Mem[12] = 32'b0000000_00011_00010_111_00001_0110011;    // and x1, x2, x3
        I_Mem[16] = 32'b0000000_00101_00011_110_00100_0110011;    // or x4, x3, x5
        I_Mem[20] = 32'b0000000_00101_00011_100_00100_0110011;    // xor x4, x3, x5
	    I_Mem[24] = 32'b0000000_00101_00011_001_00100_0110011;    // sll x4, x3, x5
        I_Mem[28] = 32'b0000000_00101_00011_101_00100_0110011;    // srl x4, x3, x5
        I_Mem[32] = 32'b0100000_00010_00011_101_00101_0110011;    //sra x5, x3, x2
        I_Mem[36] = 32'b0000000_00010_00011_010_00101_0110011;    //slt x5, x3, x2 
        I_Mem[40]  = 32'b000000000010_10101_000_10110_0010011;     // addi x22, x21, 2
        I_Mem[44]  = 32'b000000000011_01000_110_01001_0010011;     // ori x9, x8, 3 
	    I_Mem[48] = 32'b000000000100_01000_110_01001_0010011;     // xori x9, x8, 4
	    I_Mem[52] = 32'b000000000101_00010_111_00001_0010011;     // andi x1, x2, 5
	    I_Mem[56] = 32'b000000000110_00011_001_00100_0010011;    // slli x4, x3, 6
	    I_Mem[60] = 32'b000000000111_00011_101_00100_0010011;    // srli x4, x3, 7 
	    I_Mem[64] = 32'b000000001000_00011_101_00101_0010011;    //srai x5, x3, 8
	    I_Mem[68] = 32'b000000001001_00011_010_00101_0010011;    //slti x5, x3, 9  
	    I_Mem[72]=  32'b000000000101_00011_000_01001_0000011;     // lb x9, 5(x3)
	    I_Mem[76] = 32'b000000000011_00011_001_01001_0000011;    // lh x9, 3(x3)
        I_Mem[80]= 32'b000000001111_00010_010_01000_0000011;    // lw x8, 15(x2) 
        I_Mem[84] =  32'b0000000_01111_00011_000_01000_0100011;     // sb x15, 8(x3), x3 = 12
	    I_Mem[86] =  32'b0000000_01110_00110_001_01010_0100011;     // sh x14, 10(x6), x6 = 44
	    I_Mem[90] = 32'b0000000_01110_00110_010_01100_0100011;     // sw x14, 12(x6), x6 = 44     
	    I_Mem[94] = 32'b0_000000_01001_01001_000_0110_0_1100011;     // beq x9, x9, 12, (PC + 12 if x9 = x9 
	    I_Mem[98] = 32'b0_000000_01001_01001_001_0111_0_1100011;     //bne x9, x9, 14,(PC + 14 if x9 != x9)
        I_Mem[102] =  32'b00000000000000101000_00011_0110111;     // lui x3, 40
        I_Mem[106] =  32'b0000000000000010100_00101_0010111;     // auipc x5, 20 (rd = PC + (imm << 12))
	    I_Mem[110] = 32'b0_00000000_0_0000010100_00001_1101111;         // jal x1, 20
//     I_Mem[0]  = 32'h8c080100;  // Entry 0
//I_Mem[4]  = 32'h01084820;  // Entry 1
//I_Mem[8]  = 32'h212a0002;  // Entry 2
//I_Mem[12] = 32'h01485822;  // Entry 3
//I_Mem[16] = 32'h01686024;  // Entry 4
//I_Mem[20] = 32'h01486825;  // Entry 5
//I_Mem[21] = 32'h01487027;  // Entry 6
//I_Mem[22] = 32'h3c01ffff;  // Entry 7
//I_Mem[23] = 32'h3421ffff;  // Entry 8
//I_Mem[24] = 32'h01417824;  // Entry 9
//I_Mem[25] = 32'h3c01ffff;  // Entry 10
//I_Mem[26] = 32'h3421ffff;  // Entry 11
//I_Mem[27] = 32'h01418025;  // Entry 12
//I_Mem[28] = 32'h010a882a;  // Entry 13
//I_Mem[29] = 32'h29120006;  // Entry 14
//I_Mem[30] = 32'hac120120;  // Entry 15
//I_Mem[31] = 32'h152a0003;  // Entry 16
//I_Mem[32] = 32'h12320001;  // Entry 17
//I_Mem[33] = 32'h02529020;  // Entry 18
//I_Mem[34] = 32'h08000015;  // Entry 19
//I_Mem[35] = 32'h21090001;  // Entry 20
//I_Mem[36] = 32'h01085020;  // Entry 21
        
    end
end

endmodule
module immediate_generator(
    input [31:0] instruction,    
    output reg [31:0] imm_out   
);

    always @(*) begin
        case (instruction[6:0]) 
	    7'b0010011: imm_out = {{20{instruction[31]}}, instruction[31:20]}; // I-type  
            7'b0000011: imm_out = {{20{instruction[31]}}, instruction[31:20]}; // Load-type
            7'b0100011: imm_out = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]}; // Store-type
            7'b1100011: imm_out = {{19{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0}; // B-type 
            7'b0110111: imm_out = {instruction[31:12], 12'b0}; // U-type
	        7'b0010111: imm_out = {instruction[31:12], 12'b0}; // U-type
            7'b1101111: imm_out = {{11{instruction[31]}}, instruction[19:12], instruction[20], instruction[30:21], 1'b0}; // J-type
 
            default: imm_out = 32'b0; // Default case
        endcase
    end

endmodule
