/*   
1. must have DM_rdone
2. IM_Stall & DM_Stall should be posedge at same time
3. regfile not necessarily be a flipflop
4. confition IM_Stall||DM_Stall should be stable pipeline register
5. PC update shoube be at !IM_Stall&&!DM_Stall
6. Reg_A and Reg_B shoube be empty when Stall on
7. Reg_B shoube be empty when PCSel on
8. Reg_C and Reg_D shoube consider the DM_rDone signal
9. Reg_C Mem_WData shoube reset when DM_rDone
10. 
*/

`include "add4.sv"
`include "ALU.sv"
`include "mux2.sv"
`include "mux4.sv"
`include "ForwardUnit.sv"
`include "BranchUnit.sv"
`include "HazardUnit.sv"
`include "ImmGenUnit.sv"
`include "PC.sv"
`include "RegFile.sv"
`include "RegPack.sv"
`include "DataType.sv"

import RegPack::*; 
 
module DataPath(
	input clk,
	input rst,
	// IM
	input [31:0] Instr,
	// ControlUnit
	input ALUSrc,
	input MemToReg,
	input Branch,
	input MemWrite,
	input MemRead,
	input [1:0] ALUOp,
	input RegWrite,
	input JalrSel,
	input [1:0] RWSel,
	// ALUControlUnit
	input [3:0] ALUOperation,
	// DM 
	input [31:0] DM_RData,	
	// IM
	output logic IM_OE,
	output logic [31:0] IM_Adrs,
	// ControlUnit
	output logic [6:0] tmp_OpCode_A,
	output logic [2:0] tmp_Func3_A,
	// ALUControlUnit
	output logic [1:0] tmp_ALUOp,
	output logic [2:0] tmp_Func3_B,
	output logic [6:0] tmp_Func7_B,
	// DM
	output logic tmp_MemRead,
	output logic [3:0] tmp_MemWrite,
	output logic [31:0] DM_Adrs,
	output logic [31:0] DM_WData,
	//stall
	input IM_Stall,
	input DM_Stall,
	//rDone
	input IM_rDone,
	input DM_rDone
);

logic start;

// IF Reg
logic [31:0] CurPC, PCPlus4, NextPC;

// ID Reg
logic [31:0] regFile_RD1, regFile_RD2;
logic [31:0] ImmG;

// EX Reg
logic PcSel, Stall;
logic [1:0] FA_Sel, FB_Sel;
logic [31:0] AluSrcA, AluSrcB, AluSrcB_tmp, AluResult;
logic [31:0] BrPC;
logic [31:0] PC_Imm, PC_4;

// MEM Reg
logic [31:0] regFile_WData_MEM;
logic [31:0] SWTypeResult;

// WB Reg
logic [4:0] regFile_WAdrs;
logic [31:0] regFile_WData;
logic [31:0] mem2regSrc;
logic [31:0] LWTypeResult;

logic tmp_RegWrite;
logic [31:0] tmp_MemRData;


if_id_reg A;
id_ex_reg B;
ex_mem_reg C;
mem_wb_reg D;

always_ff@(posedge clk) begin
	if(rst) start <= 1'b0;
	else start <= 1'b1;
end


//************************ IF ************************//

// To IM (for sync of Reg_A's PC and Instr)
assign IM_Adrs = (!start) ? 32'b0 :
				 (Stall || (!IM_Stall)) ? IM_Adrs : CurPC;				 

always_ff@(posedge clk) begin
	if(rst) IM_OE <= 1'b0;
	else begin
		if(Stall) IM_OE <= 1'b0;
		else IM_OE <= 1'b1;
	end
end

add4 PC_Add4(.D(CurPC),
			 .Q(PCPlus4) );

mux2 PC_Mux(.D0(PCPlus4),
		    .D1(BrPC),
		    .sel(PcSel),
		    .Q(NextPC) );
		   
PC PC(.clk(clk),
	  .rst(rst),
	  .start(start),
	  .Stall(Stall),
	  .IM_Stall(IM_Stall),
	  .DM_Stall(DM_Stall),
	  .NextPC(NextPC),
	  .CurPC(CurPC) );
	  
// A Reg
always_ff@(posedge clk) begin
	if(rst) begin
		A.IF_PC 	<= 32'b0;
		A.IF_Instr 	<= 32'b0;
	end
	else if(PcSel) begin //flush
		A.IF_PC 	<= (IM_Stall) ? A.IF_PC : 32'b0;
		A.IF_Instr 	<= (IM_Stall) ? A.IF_Instr : 32'b0;
	end
	else if(Stall||IM_Stall||DM_Stall) begin //Stall
		A.IF_PC 	<= A.IF_PC;
		A.IF_Instr 	<= A.IF_Instr;
	end
	else if(start) begin
		A.IF_PC 	<= CurPC;
		A.IF_Instr 	<= Instr;
	end
end

//************************ ID ************************//

// To ControlUnit
assign tmp_OpCode_A	= (Stall) ? 7'b0 : A.IF_Instr[6:0];
assign tmp_Func3_A 	= (Stall) ? 3'b0 : A.IF_Instr[14:12];

RegFile RegFile(.rst(rst),
				.RegWrite(D.RegWrite),
				.RS1(A.IF_Instr[19:15]),
				.RS2(A.IF_Instr[24:20]),
				.W_Adrs(regFile_WAdrs),
				.W_Data(regFile_WData),
				.RD1(regFile_RD1),
				.RD2(regFile_RD2) );

ImmGenUnit ImmUnit(.Instr(A.IF_Instr),
				   .Imm(ImmG) );
	
// B Reg
always_ff@(posedge clk) begin
	if(rst||Stall) begin //PcSel
		B.ALUSrc 	<= 1'b0;
		B.MemToReg 	<= 1'b0;
		B.Branch 	<= 1'b0;
		B.MemWrite 	<= 1'b0;
		B.MemRead 	<= 1'b0;
		B.ALUOp 	<= 2'b0;
		B.RegWrite 	<= 1'b0;
		B.JalrSel 	<= 1'b0;
		B.RWSel 	<= 2'b0;	
		B.PC		<= 32'b0;
		B.Instr		<= 32'b0;
		B.RS1 		<= 5'b0;
		B.RS2 		<= 5'b0;
		B.RD1 		<= 32'b0;
		B.RD2 		<= 32'b0;
		B.rd 		<= 5'b0;
		B.Func3 	<= 3'b0;
		B.Func7 	<= 7'b0;
		B.ImmG 		<= 32'b0;
	end
	else if(IM_Stall||DM_Stall) begin //Stable
		// ControlUnit
		B.ALUSrc 	<= B.ALUSrc;
		B.MemToReg 	<= B.MemToReg;
		B.Branch 	<= B.Branch;
		B.MemWrite 	<= B.MemWrite;
		B.MemRead 	<= B.MemRead;
		B.ALUOp 	<= B.ALUOp;
		B.RegWrite 	<= B.RegWrite;
		B.JalrSel 	<= B.JalrSel;
		B.RWSel 	<= B.RWSel;	
		// Reg
		B.PC		<= B.PC;
		B.Instr		<= B.Instr;
		B.RS1 		<= B.RS1;
		B.RS2 		<= B.RS2;
		B.RD1 		<= B.RD1;
		B.RD2 		<= B.RD2;
		B.rd 		<= B.rd;
		B.Func3 	<= B.Func3;
		B.Func7 	<= B.Func7;
		B.ImmG 		<= B.ImmG;
	end
	else if(PcSel) begin
		B.ALUSrc 	<= 1'b0;
		B.MemToReg 	<= 1'b0;
		B.Branch 	<= 1'b0;
		B.MemWrite 	<= 1'b0;
		B.MemRead 	<= 1'b0;
		B.ALUOp 	<= 2'b0;
		B.RegWrite 	<= 1'b0;
		B.JalrSel 	<= 1'b0;
		B.RWSel 	<= 2'b0;	
		B.PC		<= 32'b0;
		B.Instr		<= 32'b0;
		B.RS1 		<= 5'b0;
		B.RS2 		<= 5'b0;
		B.RD1 		<= 32'b0;
		B.RD2 		<= 32'b0;
		B.rd 		<= 5'b0;
		B.Func3 	<= 3'b0;
		B.Func7 	<= 7'b0;
		B.ImmG 		<= 32'b0;
	end
	else begin //Update
		// ControlUnit
		B.ALUSrc 	<= ALUSrc;
		B.MemToReg 	<= MemToReg;
		B.Branch 	<= Branch;
		B.MemWrite 	<= MemWrite;
		B.MemRead 	<= MemRead;
		B.ALUOp 	<= ALUOp;
		B.RegWrite 	<= RegWrite;
		B.JalrSel 	<= JalrSel;
		B.RWSel 	<= RWSel;	
		// Reg
		B.PC		<= A.IF_PC;
		B.Instr		<= A.IF_Instr;
		B.RS1 		<= A.IF_Instr[19:15];
		B.RS2 		<= A.IF_Instr[24:20];
		B.RD1 		<= regFile_RD1;
		B.RD2 		<= regFile_RD2;
		B.rd 		<= A.IF_Instr[11:7];
		B.Func3 	<= A.IF_Instr[14:12];
		B.Func7 	<= A.IF_Instr[31:25];
		B.ImmG 		<= ImmG;
	end
end

//************************ EX ************************//

// To ALUControl
assign tmp_ALUOp = B.ALUOp;
assign tmp_Func3_B = B.Func3;
assign tmp_Func7_B = B.Func7;

mux4 FA_Mux(.D00(B.RD1),
			.D01(regFile_WData_MEM),
			.D10(regFile_WData),
			.D11(32'b0),
			.sel(FA_Sel),
			.Q(AluSrcA) );
			
mux4 FB_Mux(.D00(B.RD2),
			.D01(regFile_WData_MEM),
			.D10(regFile_WData),
			.D11(32'b0),
			.sel(FB_Sel),
			.Q(AluSrcB_tmp) );

mux2 ALUSrcMux(.D0(AluSrcB_tmp),
			   .D1(B.ImmG),
			   .sel(B.ALUSrc),
			   .Q(AluSrcB) );
			   
ALU ALU(.Src1(AluSrcA),
		.Src2(AluSrcB),
		.Operation(ALUOperation),
		.Result(AluResult) );
		
BranchUnit BranchUnit(.start(start), 
					  .Branch(B.Branch),
					  .JalrSel(B.JalrSel),
					  .PC(B.PC),
					  .ImmG(B.ImmG),
					  .ALUResult(AluResult),
					  .PCSel(PcSel),
					  .BrPC(BrPC),
					  .PC_Imm(PC_Imm),
					  .PC_4(PC_4) );
		
ForwardUnit ForwardUnit(.EX_MEM_rd(C.rd), // Reg-C
						.MEM_WB_rd(D.rd), // Reg-D
						.EX_MEM_RegWrite(C.RegWrite), // Reg-C
						.MEM_WB_RegWrite(tmp_RegWrite), // Reg-D
						.ID_EX_RS1(B.RS1), // Reg-B
						.ID_EX_RS2(B.RS2),
						.FA_Sel(FA_Sel),
						.FB_Sel(FB_Sel) );
						
HazardUnit HazardUnit(.ID_EX_MemRead(B.MemRead),
					  .ID_EX_rd(B.rd),
					  .IF_ID_RS1(A.IF_Instr[19:15]), // Reg-A
					  .IF_ID_RS2(A.IF_Instr[24:20]), // Reg-A
					  .IM_Stall(IM_Stall),
					  .DM_Stall(DM_Stall),
					  .Stall(Stall) );

// C Reg
always_ff@(posedge clk) begin
	if(rst) begin
		C.MemToReg 	<= 1'b0;
		C.MemWrite 	<= 1'b0;
		C.MemRead 	<= 1'b0;
		C.RegWrite 	<= 1'b0;
		C.RWSel 	<= 2'b0;	
		C.PC		<= 32'b0;
		C.Instr		<= 32'b0;
		C.ImmG		<= 32'b0;
		C.PC_Imm 	<= 32'b0;
		C.PC_4 		<= 32'b0;
		C.Func3		<= 3'b0;
		C.rd		<= 5'b0;
		C.AluResult <= 32'b0;
		C.Mem_WData <= 32'b0;
	end
	else if(IM_Stall||DM_Stall) begin //stable		
		// Reg
		C.PC		<= C.PC;
		C.Instr		<= C.Instr;
		C.MemRead 	<= (DM_rDone) ? 1'b0 : C.MemRead;
		C.Mem_WData <= (DM_rDone) ? AluSrcB_tmp : C.Mem_WData;
	end
	else begin //update
		// ControlUnit
		C.MemToReg 	<= B.MemToReg;
		C.MemWrite 	<= B.MemWrite;
		C.MemRead 	<= B.MemRead;
		C.RegWrite 	<= B.RegWrite;
		C.RWSel 	<= B.RWSel;	
		// Reg
		C.PC		<= B.PC;
		C.Instr		<= B.Instr;
		C.ImmG		<= B.ImmG;
		C.PC_Imm 	<= PC_Imm;
		C.PC_4 		<= PC_4;
		C.Func3		<= B.Func3;
		C.rd		<= B.rd;
		C.AluResult <= AluResult;
		C.Mem_WData <= AluSrcB_tmp;
	end
end

//************************ MEM ************************//

// To DM
assign tmp_MemWrite = (C.MemWrite) ? 4'b0000 : 4'b1111; //active low
// assign tmp_MemRead 	= D.MemRead; //for non-AXI bus
assign tmp_MemRead 	= C.MemRead; 
assign DM_Adrs 		= C.AluResult;
assign DM_WData 	= SWTypeResult;

DataType SWType(.Data_in(C.Mem_WData),
				.Func3(C.Func3),
				.index(C.AluResult[1:0]),
				.Data_out(SWTypeResult) );

mux4 C_wrMux(.D00(C.AluResult),
			 .D01(C.PC_4),
			 .D10(C.ImmG),
			 .D11(C.PC_Imm),
			 .sel(C.RWSel),
			 .Q(regFile_WData_MEM) );

// D Reg
always_ff@(posedge clk) begin
	if(rst) begin
		D.MemRead 	<= 1'b0;
		D.MemToReg 	<= 1'b0;
		D.RegWrite 	<= 1'b0;
		tmp_RegWrite <= 1'b0;
		D.RWSel 	<= 2'b0;
		D.PC		<= 32'b0;
		D.Instr		<= 32'b0;
		D.ImmG		<= 32'b0;
		D.PC_Imm 	<= 32'b0;
		D.PC_4 		<= 32'b0;
		D.Func3		<= 3'b0;
		D.rd		<= 5'b0;
		D.MemRData	<= 32'b0;		
		tmp_MemRData <= 32'b0;
	end
	else if(IM_Stall||DM_Stall) begin //stable
		D.PC		<= D.PC;
		D.Instr		<= D.Instr;
		D.RegWrite 	<= (DM_rDone) ? 1'b0 : D.RegWrite;
		D.MemRData  <= (DM_rDone) ? DM_RData : D.MemRData;
	end	
	else begin //update
		// ControlUnit
		D.MemRead 	<= C.MemRead;
		D.MemToReg 	<= C.MemToReg;
		D.RegWrite 	<= C.RegWrite;
		tmp_RegWrite <= C.RegWrite;
		D.RWSel 	<= C.RWSel;	
		// Reg
		D.PC		<= C.PC;
		D.Instr		<= C.Instr;
		D.AluResult <= C.AluResult;
		D.ImmG		<= C.ImmG;
		D.PC_Imm 	<= C.PC_Imm;
		D.PC_4 		<= C.PC_4;
		D.Func3		<= C.Func3;
		D.rd		<= C.rd;
		D.MemRData	<= D.MemRData;
		tmp_MemRData <= D.MemRData;
	end
end

//************************ WB ************************//

// To RegFile
assign regFile_WAdrs = D.rd;

DataType LWType(.Data_in(tmp_MemRData), //DM_RData
				.Func3(D.Func3),
				.index(D.AluResult[1:0]),
				.Data_out(LWTypeResult) );

mux2 regSrc(.D0(D.AluResult),
			.D1(LWTypeResult),
			.sel(D.MemToReg),
			.Q(mem2regSrc) );

mux4 D_wrMux(.D00(mem2regSrc),
			 .D01(D.PC_4),
			 .D10(D.ImmG),
			 .D11(D.PC_Imm),
			 .sel(D.RWSel),
			 .Q(regFile_WData) );


endmodule