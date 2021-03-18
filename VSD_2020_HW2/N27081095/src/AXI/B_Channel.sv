module B_Channel(
	input clk,rst,
	//slave0
	input [7:0] BID_S0,
	input [3:0] BRESP_S0,
	input BVALID_S0,
	output logic BREADY_S0,
	//slave1
	input [7:0] BID_S1,
	input [3:0] BRESP_S1,
	input BVALID_S1,
	output logic BREADY_S1,
	//master0
	output logic [3:0] BID_M0,
	output logic [3:0] BRESP_M0,
	output logic BVALID_M0,
	input BREADY_M0,
	//master1
	output logic [3:0] BID_M1,
	output logic [3:0] BRESP_M1,
	output logic BVALID_M1,
	input BREADY_M1,
	//B_Channel
	output logic B_done
);

logic [7:0] BID;
logic [3:0] BRESP;
logic BVALID;
logic BREADY;
logic lock;
logic lock_S0, lock_S1;

logic slave_idx;

assign B_done = (lock&&BREADY_M1&&(~BVALID_M1));

always_ff@(posedge clk) begin
	if(rst)
		lock <= 1'b0;
	else if((BVALID_M0&&BREADY_M0) || (BVALID_M1&&BREADY_M1))
		lock <= 1'b1;
	else 
		lock <= 1'b0;
end

/* arbitration */
always_comb begin
	case({BVALID_S0,BVALID_S1})
		2'b00: slave_idx = 1'b0;
		2'b01: slave_idx = 1'b1;
		2'b10: slave_idx = 1'b0;
		2'b11: slave_idx = 1'b1;
	endcase
	// end	
end

always_comb begin
	if(slave_idx) begin
		BID     	= BID_S1;
		BRESP 		= BRESP_S1;
		BVALID 		= BVALID_S1;
		BREADY_S1 	= BREADY;
	end
	else begin
		BID     	= BID_S0;
		BRESP 		= BRESP_S0;
		BVALID 		= BVALID_S0;
		BREADY_S0 	= BREADY;
	end
end

/* decoder */
always_comb begin
	BREADY 		= BREADY_M1;
	//master0
	BID_M0 		= 4'b0;
	BRESP_M0 	= 4'b0;
	BVALID_M0 	= 1'b0;
	//master1
	BID_M1 		= BID[3:0];
	BRESP_M1 	= BRESP;
	BVALID_M1 	= BVALID;	
end

endmodule