module R_Channel(
	//slave0
	input [7:0] RID_S0,
	input [31:0] RDATA_S0,
	input [1:0] RRESP_S0,
	input RLAST_S0,
	input RVALID_S0,
	output logic RREADY_S0,
	//slave1
	input [7:0] RID_S1,
	input [31:0] RDATA_S1,
	input [1:0] RRESP_S1,
	input RLAST_S1,
	input RVALID_S1,
	output logic RREADY_S1,
	//master0
	output logic [3:0] RID_M0,
	output logic [31:0] RDATA_M0,
	output logic [1:0] RRESP_M0,
	output logic RLAST_M0,
	output logic RVALID_M0,
	input RREADY_M0,
	//master1
	output logic [3:0] RID_M1,
	output logic [31:0] RDATA_M1,
	output logic [1:0] RRESP_M1,
	output logic RLAST_M1,
	output logic RVALID_M1,
	input RREADY_M1,
	//AR_Channel
	input AR_R2S,
	output logic R_done_M0,
	output logic R_done_M1
);

logic [7:0] RID;
logic [31:0] RDATA;
logic [1:0] RRESP;
logic RLAST;
logic RVALID;
logic RREADY;

assign R_done_M0 = (RVALID_M0&&RREADY_M0);
assign R_done_M1 = (RVALID_M1&&RREADY_M1);

/* arbitration */
// select slave by AR_R2S signal from AR_Channel 
always_comb begin
	if(AR_R2S) begin
		RID     	= RID_S1;
		RDATA 		= RDATA_S1;
		RRESP 		= RRESP_S1; //2'b00 OKAY
		RLAST 		= RLAST_S1; 
		RVALID 		= RVALID_S1;
		RREADY_S1 	= RREADY;
	end
	else begin
		RID			= RID_S0;
		RDATA 		= RDATA_S0;
		RRESP 		= RRESP_S0; //2'b00 OKAY
		RLAST 		= RLAST_S0;
		RVALID 		= RVALID_S0;
		RREADY_S0 	= RREADY;
	end
end

/* decoder */
always_comb begin
	if(RID[7:4]==4'd0) begin //master0
		RREADY 		= RREADY_M0;
		//master0
		RID_M0 		= RID[3:0];
		RDATA_M0 	= RDATA;
		RRESP_M0 	= RRESP;
		RLAST_M0 	= RLAST;
		RVALID_M0 	= RVALID;
		//master1
		RID_M1 		= 4'b0;
		RDATA_M1 	= 32'b0;
		RRESP_M1 	= 2'b0;
		RLAST_M1 	= 1'b0;
		RVALID_M1 	= 1'b0;
	end
	else if(RID[7:4]==4'd1) begin //master1
		RREADY 		= RREADY_M1;
		//master0
		RID_M0 		= 4'b0;
		RDATA_M0 	= 32'b0;
		RRESP_M0 	= 2'b0;
		RLAST_M0 	= 1'b0;
		RVALID_M0 	= 1'b0;
		//master1
		RID_M1 		= RID[3:0];
		RDATA_M1 	= RDATA;
		RRESP_M1 	= RRESP;
		RLAST_M1 	= RLAST;
		RVALID_M1 	= RVALID;
	end
	else begin
		RREADY 		= 1'b0;
		//master0
		RID_M0 		= 4'b0;
		RDATA_M0 	= 32'b0;
		RRESP_M0 	= 2'b0;
		RLAST_M0 	= 1'b0;
		RVALID_M0 	= 1'b0;
		//master1
		RID_M1 		= 4'b0;
		RDATA_M1 	= 32'b0;
		RRESP_M1 	= 2'b0;
		RLAST_M1 	= 1'b0;
		RVALID_M1 	= 1'b0;
	end
end

endmodule