module HazardUnit(
	input ID_EX_MemRead,
	input [4:0] ID_EX_rd,
	input [4:0] IF_ID_RS1,
	input [4:0] IF_ID_RS2,
	output logic Stall
);

assign Stall = (ID_EX_MemRead) ? ((ID_EX_rd == IF_ID_RS1) || (ID_EX_rd == IF_ID_RS2)) : 1'b0;

endmodule