module W_Channel(
	input clk, rst,
	//master1
	input [31:0] WDATA_M1,
	input [3:0] WSTRB_M1,
	input WLAST_M1,
	input WVALID_M1,
	output logic WREADY_M1,
	//slave0
	output logic [31:0] WDATA_S0,
	output logic [3:0] WSTRB_S0,
	output logic WLAST_S0,
	output logic WVALID_S0,
	input WREADY_S0,
	//slave1
	output logic [31:0] WDATA_S1,
	output logic [3:0] WSTRB_S1,
	output logic WLAST_S1,
	output logic WVALID_S1,
	input WREADY_S1,	
	//AW_Channel
	input [1:0] AW_W2S,
	input [1:0] AW_W2S_0,
	//B_Channel
	input B_done
);

/* decoder */
always_comb begin
	if(AW_W2S_0==2'b10) begin
		WREADY_M1	= WREADY_S1;
		//slave0
		WDATA_S0 	= 32'b0;
		WSTRB_S0 	= 4'b0;
		WLAST_S0 	= 1'b1;
		WVALID_S0 	= 1'b0;
		//slave1
		WDATA_S1 	= WDATA_M1;
		WSTRB_S1 	= WSTRB_M1;
		WLAST_S1 	= 1'b1;
		WVALID_S1 	= WVALID_M1;
	end
	else if(AW_W2S_0==2'b01) begin
		WREADY_M1	= WREADY_S0;
		//slave0
		WDATA_S0 	= WDATA_M1;
		WSTRB_S0 	= WSTRB_M1;
		WLAST_S0 	= 1'b1;
		WVALID_S0 	= WVALID_M1;
		//slave1
		WDATA_S1 	= 32'b0;
		WSTRB_S1 	= 4'b0;
		WLAST_S1 	= 1'b1;
		WVALID_S1 	= 1'b0;
	end
	else begin //for stable the slave value
		if(AW_W2S == 2'b01) begin //slave0
			WREADY_M1	= WREADY_S0;
			//slave0
			WDATA_S0 	= WDATA_M1;
			WSTRB_S0 	= WSTRB_M1;
			WLAST_S0 	= 1'b1;
			WVALID_S0 	= WVALID_M1;
			//slave1
			WDATA_S1 	= 32'b0;
			WSTRB_S1 	= 4'b0;
			WLAST_S1 	= 1'b1;
			WVALID_S1 	= 1'b0;
		end
		else if(AW_W2S == 2'b10) begin //slave1
			WREADY_M1	= WREADY_S1;
			//slave0
			WDATA_S0 	= 32'b0;
			WSTRB_S0 	= 4'b0;
			WLAST_S0 	= 1'b1;
			WVALID_S0 	= 1'b0;
			//slave1
			WDATA_S1 	= WDATA_M1;
			WSTRB_S1 	= WSTRB_M1;
			WLAST_S1 	= 1'b1;
			WVALID_S1 	= WVALID_M1;
		end
		else begin
			WREADY_M1	= 1'b0;
			//slave0
			WDATA_S0 	= 32'b0;
			WSTRB_S0 	= 4'b0;
			WLAST_S0 	= 1'b1;
			WVALID_S0 	= 1'b0;
			//slave1
			WDATA_S1 	= 32'b0;
			WSTRB_S1 	= 4'b0;
			WLAST_S1 	= 1'b1;
			WVALID_S1 	= 1'b0;
		end
	end
end

endmodule