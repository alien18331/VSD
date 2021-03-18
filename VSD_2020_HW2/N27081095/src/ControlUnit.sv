module ControlUnit(
	input 		 [6:0] 	OpCode,
	input 		 [2:0]  Func3,
	output logic 		ALUSrc,
	output logic 	 	MemToReg,
	output logic 		Branch,
	output logic 		MemWrite,
	output logic 		MemRead,
	output logic [1:0] 	ALUOp,
	output logic 		RegWrite,
	output logic 		JalrSel,
	output logic [1:0]	RWSel
);

logic [6:0] LW, SW, R_Type, I_Type, BR, JAL, JALR, AUIPC, LUI;

assign LW 		= 7'b0000011; //3
assign SW 		= 7'b0100011; //23
assign R_Type 	= 7'b0110011; //33
assign I_Type 	= 7'b0010011; //13
assign BR 		= 7'b1100011; //63
assign JAL 		= 7'b1101111; //6F
assign JALR 	= 7'b1100111; //67
assign AUIPC 	= 7'b0010111; //17
assign LUI		= 7'b0110111; //37

assign ALUSrc = (OpCode == I_Type || 
				 OpCode == SW || 
				 OpCode == LW || 
				 OpCode == JALR); // JALR -> rs1 + imm(ALUSrc:1 -> rs2=imm)

assign MemToReg = (OpCode == LW);
					 
assign ALUOp[0] = (OpCode == BR || 
				   OpCode == LUI || 
				   OpCode == JAL);				   
assign ALUOp[1] = (OpCode == R_Type || 
				   OpCode == I_Type || 
				   OpCode == LUI || 
				   OpCode == JAL);
				   
assign RWSel[0] = (OpCode == JAL || 
				   OpCode == AUIPC || 
				   OpCode == JALR);
assign RWSel[1] = (OpCode == LUI || 
				   OpCode == AUIPC);

assign Branch = (OpCode == BR || 
				 OpCode == JAL);
				 
assign MemWrite = (OpCode == SW);
assign MemRead = (OpCode == LW);
assign JalrSel = (OpCode == JALR);

assign RegWrite = (OpCode == LW || 
				   OpCode == R_Type || 
				   OpCode == I_Type || 
				   OpCode == JALR || 
				   OpCode == AUIPC || 
				   OpCode == LUI || 
				   OpCode == JAL);

endmodule