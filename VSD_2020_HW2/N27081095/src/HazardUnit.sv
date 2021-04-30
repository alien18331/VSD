module HazardUnit(
	input ID_EX_MemRead,
	input [4:0] ID_EX_rd,
	input [4:0] IF_ID_RS1,
	input [4:0] IF_ID_RS2,
	input IM_Stall,
	input DM_Stall,
	output logic Stall
);
// Stall must work at !IM_Stall && !DM_Stall 
assign Stall = (ID_EX_MemRead&&!IM_Stall&&!DM_Stall) ? ((ID_EX_rd == IF_ID_RS1) || (ID_EX_rd == IF_ID_RS2)) : 1'b0;

endmodule