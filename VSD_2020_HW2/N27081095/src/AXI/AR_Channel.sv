module AR_Channel(
	input clk,rst,
	// master0
	input [3:0] ARID_M0,
	input [31:0] ARADDR_M0,
	input [3:0] ARLEN_M0,
	input [2:0] ARSIZE_M0,
	input [1:0] ARBURST_M0,
	input ARVALID_M0,
	output logic ARREADY_M0,
	// master1
	input [3:0] ARID_M1,
	input [31:0] ARADDR_M1,
	input [3:0] ARLEN_M1,
	input [2:0] ARSIZE_M1,
	input [1:0] ARBURST_M1,
	input ARVALID_M1,
	output logic ARREADY_M1,
	// slave0
	output logic [7:0] ARID_S0,
	output logic [31:0] ARADDR_S0,
	output logic [3:0] ARLEN_S0,
	output logic [2:0] ARSIZE_S0,
	output logic [1:0] ARBURST_S0,
	output logic ARVALID_S0,
	input ARREADY_S0,
	// slave1
	output logic [7:0] ARID_S1,
	output logic [31:0] ARADDR_S1,
	output logic [3:0] ARLEN_S1,
	output logic [2:0] ARSIZE_S1,
	output logic [1:0] ARBURST_S1,
	output logic ARVALID_S1,
	input ARREADY_S1,
	//R_Channel
	input R_done_M0,
	input R_done_M1,
	output logic AR_R2S
	// output logic master_idx
);
logic [7:0] ARID;
logic [31:0] ARADDR;
logic [3:0] ARLEN;
logic [2:0] ARSIZE;
logic [1:0] ARBURST;
logic ARVALID;
logic ARREADY;

logic master_idx;
logic lock;
logic lock_M0, lock_M1;

//AR_R2S
//To R_Channel select slave
always_ff@(posedge clk) begin
	if(rst) 
		AR_R2S <= 1'b0;
	else if(ARVALID_S1 && ARREADY_S1)
		AR_R2S <= 1'b1;
	else if(R_done_M0 || R_done_M1)
		AR_R2S <= 1'b0;
end

//lock
always_ff@(posedge clk) begin
	if(rst) begin
		lock <= 1'b0;
	end
	else if((ARVALID_S0 && ARREADY_S0) || (ARVALID_S1 && ARREADY_S1)) begin
		lock <= 1'b1;
	end
	else if(R_done_M0 || R_done_M1) begin
		lock <= 1'b0;
	end
end

//lock_master
always_ff@(posedge clk) begin
	if(rst) begin
		lock_M0 <= 1'b0;
		lock_M1 <= 1'b0;
	end
	//TODO: reset lock
	else if(R_done_M0 || R_done_M1) begin
		lock_M0 <= (R_done_M0) ? 1'b0 : ARVALID_M0;
		lock_M1 <= (R_done_M1) ? 1'b0 : ARVALID_M1;
	end
	//TODO: stable lock
	else if(lock_M0 || lock_M1) begin
		lock_M0 <= lock_M0;
		lock_M1 <= lock_M1;
	end
	//TODO: lock mechanism 
	else begin
		case({ARVALID_M0,ARVALID_M1})
			2'b00: begin
				lock_M0 <= 1'b0;
				lock_M1 <= 1'b0;
			end
			2'b01: begin
				lock_M0 <= 1'b0;
				lock_M1 <= 1'b1;
			end
			2'b10: begin
				lock_M0 <= 1'b1;
				lock_M1 <= 1'b0;
			end
			2'b11: begin
				lock_M0 <= 1'b0;
				lock_M1 <= 1'b1;
			end
		endcase
	end
end

/* Arbitration */
always_comb begin
	//TODO: master1 is priority 1
	if(lock_M1) 
		master_idx <= 1'b1;
	//TODO: master1 is priority 2
	else if(lock_M0)
		master_idx <= 1'b0;
	else begin
		case({ARVALID_M0,ARVALID_M1})
			2'b00: master_idx = 1'b0;
			2'b01: master_idx = 1'b1;
			2'b10: master_idx = 1'b0;
			2'b11: master_idx = 1'b1;
		endcase
	end	
end

always_comb begin
	if(master_idx) begin 
		ARREADY_M0	= 1'b0;
		ARREADY_M1 	= (lock) ? 1'b0 : ARREADY;
		// master1
		ARID 		= {4'd1,ARID_M1};
		ARADDR 		= ARADDR_M1;
		ARLEN 		= ARLEN_M1;
		ARSIZE 		= ARSIZE_M1;
		ARBURST 	= ARBURST_M1;
		ARVALID 	= ARVALID_M1;		
	end
	else begin 
		ARREADY_M0 	= (lock) ? 1'b0 : ARREADY;
		ARREADY_M1	= 1'b0;
		// master0
		ARID 		= {4'd0,ARID_M0};
		ARADDR 		= ARADDR_M0;
		ARLEN 		= ARLEN_M0;
		ARSIZE 		= ARSIZE_M0;
		ARBURST 	= ARBURST_M0;
		ARVALID 	= ARVALID_M0;
		
	end
end

/* Decoder */
always_comb begin
	if(ARADDR[31:16]==16'd0) begin //slave0
		ARREADY 	= ARREADY_S0;
		//slave0
		ARID_S0 	= ARID;
		ARADDR_S0 	= (master_idx) ? ARADDR_M1 : ARADDR_M0;
		ARLEN_S0 	= ARLEN;
		ARSIZE_S0 	= ARSIZE;
		ARBURST_S0 	= ARBURST;
		ARVALID_S0 	= ARVALID;
		//slave1
		ARID_S1 	= 8'b0;
		// ARADDR_S1 	= 32'b0;
		ARADDR_S1 	= (master_idx) ? ARADDR_M0 : ARADDR_M1;
		ARLEN_S1 	= 4'b0;
		ARSIZE_S1 	= 3'b0;
		ARBURST_S1 	= 2'b0;
		ARVALID_S1 	= 1'b0;
	end
	else if(ARADDR[31:16]==16'd1) begin //slave1
		ARREADY 	= ARREADY_S1;
		//slave0
		ARID_S0 	= 8'b0;
		// ARADDR_S0 	= 32'b0;
		ARADDR_S0 	= (master_idx) ? ARADDR_M0 : ARADDR_M1;
		ARLEN_S0 	= 4'b0;
		ARSIZE_S0 	= 3'b0;
		ARBURST_S0 	= 2'b0;
		ARVALID_S0 	= 1'b0;
		//slave1
		ARID_S1 	= ARID;
		ARADDR_S1	= (master_idx) ? ARADDR_M1 : ARADDR_M0;
		ARLEN_S1 	= ARLEN;
		ARSIZE_S1 	= ARSIZE;
		ARBURST_S1 	= ARBURST;
		ARVALID_S1 	= ARVALID;	
	end
	else begin
		ARREADY 	= 1'b0;
		//slave0
		ARID_S0 	= 8'b0;
		ARADDR_S0 	= 32'b0;
		ARLEN_S0 	= 4'b0;
		ARSIZE_S0 	= 3'b0;
		ARBURST_S0 	= 2'b0;
		ARVALID_S0 	= 1'b0;
		//slave1
		ARID_S1 	= 8'b0;
		ARADDR_S1 	= 32'b0;
		ARLEN_S1 	= 4'b0;
		ARSIZE_S1 	= 3'b0;
		ARBURST_S1 	= 2'b0;
		ARVALID_S1 	= 1'b0;
	end
end


endmodule