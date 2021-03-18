module RegFile(
	// input clk, rst,
	input rst,
	input start,
	input RegWrite,
	input [4:0] RS1,
	input [4:0] RS2,
	input [4:0] W_Adrs,
	input [31:0] W_Data,
	output logic [31:0] RD1,
	output logic [31:0] RD2
);

logic [31:0] regfiles [31:0];

//write
always_comb begin
	if(rst) begin
		regfiles[0] = 32'b0;
		regfiles[1] = 32'b0;
		regfiles[2] = 32'b0;
		regfiles[3] = 32'b0;
		regfiles[4] = 32'b0;
		regfiles[5] = 32'b0;
		regfiles[6] = 32'b0;
		regfiles[7] = 32'b0;
		regfiles[8] = 32'b0;
		regfiles[9] = 32'b0;
		regfiles[10] = 32'b0;
		regfiles[11] = 32'b0;
		regfiles[12] = 32'b0;
		regfiles[13] = 32'b0;
		regfiles[14] = 32'b0;
		regfiles[15] = 32'b0;
		regfiles[16] = 32'b0;
		regfiles[17] = 32'b0;
		regfiles[18] = 32'b0;
		regfiles[19] = 32'b0;
		regfiles[20] = 32'b0;
		regfiles[21] = 32'b0;
		regfiles[22] = 32'b0;
		regfiles[23] = 32'b0;
		regfiles[24] = 32'b0;
		regfiles[25] = 32'b0;
		regfiles[26] = 32'b0;
		regfiles[27] = 32'b0;
		regfiles[28] = 32'b0;
		regfiles[29] = 32'b0;
		regfiles[30] = 32'b0;
		regfiles[31] = 32'b0;
	end
	else if(RegWrite) begin
		regfiles[W_Adrs] = (W_Adrs==0) ? 32'b0 : W_Data;
	end
end

//read
always_comb begin
	if(rst) begin
		RD1 = 32'b0;
		RD2 = 32'b0;
	end
	// else if(!RegWrite) begin
		// RD1 = (RS1==0) ? 32'b0 : regfiles[RS1];
		// RD2 = (RS2==0) ? 32'b0 : regfiles[RS2];
	// end
	else if(RegWrite) begin //forward value
		RD1 = (W_Adrs==RS1 && W_Adrs!=0) ? W_Data : regfiles[RS1];
		RD2 = (W_Adrs==RS2 && W_Adrs!=0) ? W_Data : regfiles[RS2];
	end
	else begin
		RD1 = (RS1==0) ? 32'b0 : regfiles[RS1];
		RD2 = (RS2==0) ? 32'b0 : regfiles[RS2];
	end
end

/*
// Write
always_ff@(posedge clk) begin
	if(rst) begin
		regfiles[0] <= 32'b0;
		regfiles[1] <= 32'b0;
		regfiles[2] <= 32'b0;
		regfiles[3] <= 32'b0;
		regfiles[4] <= 32'b0;
		regfiles[5] <= 32'b0;
		regfiles[6] <= 32'b0;
		regfiles[7] <= 32'b0;
		regfiles[8] <= 32'b0;
		regfiles[9] <= 32'b0;
		regfiles[10] <= 32'b0;
		regfiles[11] <= 32'b0;
		regfiles[12] <= 32'b0;
		regfiles[13] <= 32'b0;
		regfiles[14] <= 32'b0;
		regfiles[15] <= 32'b0;
		regfiles[16] <= 32'b0;
		regfiles[17] <= 32'b0;
		regfiles[18] <= 32'b0;
		regfiles[19] <= 32'b0;
		regfiles[20] <= 32'b0;
		regfiles[21] <= 32'b0;
		regfiles[22] <= 32'b0;
		regfiles[23] <= 32'b0;
		regfiles[24] <= 32'b0;
		regfiles[25] <= 32'b0;
		regfiles[26] <= 32'b0;
		regfiles[27] <= 32'b0;
		regfiles[28] <= 32'b0;
		regfiles[29] <= 32'b0;
		regfiles[30] <= 32'b0;
		regfiles[31] <= 32'b0;
	end
	else if(RegWrite) begin
		// Adrs=0 cant be set value
		regfiles[W_Adrs] <= (W_Adrs==0) ? 32'b0 : W_Data;
	end
end

// Read
always_ff@(posedge clk) begin
	if(rst) begin
		RD1 <= 32'b0;
		RD2 <= 32'b0;
	end
	else begin //forward value
		RD1 <= (W_Adrs==RS1 && W_Adrs!=0) ? W_Data : regfiles[RS1];
		RD2 <= (W_Adrs==RS2 && W_Adrs!=0) ? W_Data : regfiles[RS2];
	end
end
*/

endmodule