module ForwardUnit(
	input logic [4:0] EX_MEM_rd,
	input logic [4:0] MEM_WB_rd,
	input logic EX_MEM_RegWrite,
	input logic MEM_WB_RegWrite,
	input logic [4:0] ID_EX_RS1,
	input logic [4:0] ID_EX_RS2,
	output logic [1:0] FA_Sel,
	output logic [1:0] FB_Sel
);

assign FA_Sel = ((EX_MEM_RegWrite) && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_RS1)) ? 2'b01 :
				   ((MEM_WB_RegWrite) && (MEM_WB_rd != 0) && (MEM_WB_rd == ID_EX_RS1)) ? 2'b10 : 2'b00;
				   
assign FB_Sel = ((EX_MEM_RegWrite) && (EX_MEM_rd != 0) && (EX_MEM_rd == ID_EX_RS2)) ? 2'b01 :
				((MEM_WB_RegWrite) && (MEM_WB_rd != 0) && (MEM_WB_rd == ID_EX_RS2)) ? 2'b10 : 2'b00;

endmodule