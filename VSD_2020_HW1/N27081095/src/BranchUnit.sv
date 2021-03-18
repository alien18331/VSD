module BranchUnit (
	input start,
	input Branch,
	input JalrSel,
	input [31:0] PC,
	input [31:0] ImmG,
	input [31:0] ALUResult,
	output logic PCSel,
	output logic [31:0] BrPC,	
	output logic [31:0] PC_Imm,
	output logic [31:0] PC_4);	
	
	assign PC_Imm = PC + ImmG;
	assign PC_4 = PC + 32'b100;
	
	assign PCSel = (!start) ? 1'b0 :
				   (JalrSel || (Branch && ALUResult[0])); 
	
	assign BrPC = (!start) ? 32'b0 :
				  (Branch && ALUResult[0]) ? (PC + ImmG) : // for JAL, ALUResult[0]==1 when Jump
				  (JalrSel) ? ALUResult : 32'b0;
		
endmodule