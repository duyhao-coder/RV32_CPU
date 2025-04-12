`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2025 03:41:30 PM
// Design Name: 
// Module Name: main
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


module main(
		  input clk, rst
		); 
wire [31:0] PC_main, PC_next_main, PC_wire, Instruction_main, read_data1, read_data2_main, ALU_RESULT, branch_target, immgen_wire,muxtoAlu,read_data_wire,WB_data_wire;
wire RegWrite,ALUSrc, MemRead,MemWrite,MemToReg,Branch,Zero;
wire [1:0] ALUOp_wire;
wire [3:0] ALUcontrol_wire;

program_counter PC(.clk(clk),.rst(rst),.pc_in(PC_wire),.pc_out(PC_main));
pc_adder PC_Adder(.pc_in(PC_main),.pc_next(PC_next_main));
pc_mux pc_mux(.pc_in(PC_next_main),.pc_branch(branch_target),.pc_select(Branch&Zero),.pc_out(PC_wire));
Instruction_Memory Instr_Mem(.rst(rst),.clk(clk),.read_address(PC_main),.instruction_out(Instruction_main));
Register_File Reg_File(.rst(rst), .clk(clk), .RegWrite(RegWrite), .Rs1(Instruction_main[19:15]), .Rs2(Instruction_main[24:20]), .Rd(Instruction_main[11:7]), .Write_data(WB_data_wire), .read_data1(read_data1), .read_data2(read_data2_main));
main_control_unit Control_Unit(.opcode(Instruction_main[6:0]),.RegWrite(RegWrite),.MemRead(MemRead),.MemWrite(MemWrite),.MemToReg(MemToReg),.ALUSrc(ALUSrc),.Branch(Branch),.ALUOp(ALUOp_wire));
ALU_Control ALU_Control(.funct3(Instruction_main[14:12]),.funct7(Instruction_main[31:25]),.ALUOp(ALUOp_wire),.ALUcontrol_Out(ALUcontrol_wire));
ALU ALU(.A(read_data1),.B(muxtoAlu),.ALUcontrol_In(ALUcontrol_wire),.Result(ALU_RESULT),.Zero(Zero));
immediate_generator Imm_Gen(.instruction(Instruction_main),.imm_out(immgen_wire));
MUX2to1 Imm_Mux(.input0(read_data2_main),.input1(immgen_wire),.select(ALUSrc),.out(muxtoAlu));
Data_Memory Data_Mem(.clk(clk),.rst(rst),.MemRead(MemRead),.MemWrite(MemWrite),.address(ALU_RESULT),.write_data(read_data2_main),.read_data(read_data_wire));
MUX2to1_DataMemory WB_Mux(.input0(ALU_RESULT),.input1(read_data_wire),.select(MemToReg),.out(WB_data_wire));
Branch_Adder Branch_Adder(.PC(PC_main), .offset(immgen_wire), .branch_target(branch_target));






endmodule