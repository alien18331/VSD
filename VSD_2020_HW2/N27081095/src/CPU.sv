`include "DataPath.sv"
`include "ControlUnit.sv"
`include "ALUControlUnit.sv"

module CPU(
	input clk, 
	input rst,	
	//IM
	input [31:0] IM_DO,
	//DM
	input [31:0] DM_DO,
	//**** output ****
	//IM
	output logic IM_OE,
	output logic [31:0] IM_A,
	//DM
	output logic DM_OE,
	output logic [3:0] DM_WEB,
	output logic [31:0] DM_A,
	output logic [31:0] DM_DI,
	//stall
	input IM_Stall,
	input DM_Stall,
	//rDone
	input IM_rDone,
	input DM_rDone
);

//ControlUnit
logic ctl_ALUSrc;
logic ctl_MemToReg;
logic ctl_Branch;
logic ctl_MemWrite;
logic ctl_MemRead;
logic [1:0] ctl_ALUOp;
logic ctl_RegWrite;
logic ctl_JalrSel;
logic [1:0] ctl_RWSel;

//DataPath
logic dp_IM_OE;
logic [31:0] dp_IM_Adrs;
logic [6:0] dp_OpCode_ctl;
logic [2:0] dp_Func3_ctl;
logic [1:0] dp_ALUOp_aluctl;
logic [2:0] dp_Func3_aluctl;
logic [6:0] dp_Func7_aluctl;
logic dp_DM_MemRead;
logic [3:0] dp_DM_MemWrite;
logic [31:0] dp_DM_Adrs;
logic [31:0] dp_DM_WData;

//ALUControlUnit
logic [3:0] aluctl_ALUOperation;

// To IM
assign IM_A = dp_IM_Adrs;
assign IM_OE = dp_IM_OE;

// To DM
assign DM_OE = dp_DM_MemRead;
assign DM_WEB = dp_DM_MemWrite;
assign DM_A = dp_DM_Adrs;
assign DM_DI = dp_DM_WData;

DataPath DP(.clk(clk),
			 .rst(rst),
			 //IM
			 .Instr(IM_DO),
			 //ControlUnit
			 .ALUSrc(ctl_ALUSrc),
			 .MemToReg(ctl_MemToReg),
			 .Branch(ctl_Branch),
			 .MemWrite(ctl_MemWrite),
			 .MemRead(ctl_MemRead),
			 .ALUOp(ctl_ALUOp),
			 .RegWrite(ctl_RegWrite),
			 .JalrSel(ctl_JalrSel),
			 .RWSel(ctl_RWSel),
			 //ALUControlUnit
			 .ALUOperation(aluctl_ALUOperation),
			 //DM
			 .DM_RData(DM_DO),
			 //****output****
			 //IM
			 .IM_OE(dp_IM_OE),
			 .IM_Adrs(dp_IM_Adrs),
			 //ControlUnit
			 .tmp_OpCode_A(dp_OpCode_ctl),
			 .tmp_Func3_A(dp_Func3_ctl),
			 //ALUControlUnit
			 .tmp_ALUOp(dp_ALUOp_aluctl),
			 .tmp_Func3_B(dp_Func3_aluctl),
			 .tmp_Func7_B(dp_Func7_aluctl),
			 //DM
			 .tmp_MemRead(dp_DM_MemRead),
			 .tmp_MemWrite(dp_DM_MemWrite),
			 .DM_Adrs(dp_DM_Adrs),
			 .DM_WData(dp_DM_WData),
			 //stall
			 .IM_Stall(IM_Stall),
			 .DM_Stall(DM_Stall),
			 //rDone
			 .IM_rDone(IM_rDone),
			 .DM_rDone(DM_rDone) );
			 

ControlUnit ControlUnit(.OpCode(dp_OpCode_ctl),
						.Func3(dp_Func3_ctl),
						.ALUSrc(ctl_ALUSrc),
						.MemToReg(ctl_MemToReg),
						.Branch(ctl_Branch),
						.MemWrite(ctl_MemWrite),
						.MemRead(ctl_MemRead),
						.ALUOp(ctl_ALUOp),
						.RegWrite(ctl_RegWrite),
						.JalrSel(ctl_JalrSel),
						.RWSel(ctl_RWSel) );

ALUControlUnit ALUControlUnit(.ALUOp(dp_ALUOp_aluctl),
							   .Func3(dp_Func3_aluctl),
							   .Func7(dp_Func7_aluctl),
							   .Operation(aluctl_ALUOperation) );

endmodule
