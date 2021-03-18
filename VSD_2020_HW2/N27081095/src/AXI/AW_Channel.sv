module AW_Channel(
	input clk,rst,
	//master1
	input [3:0] AWID_M1,
	input [31:0] AWADDR_M1,
	input [3:0] AWLEN_M1,
	input [2:0] AWSIZE_M1,
	input [1:0] AWBURST_M1,
	input AWVALID_M1,
	output logic AWREADY_M1,
	//slave0
	output logic [7:0] AWID_S0,
	output logic [31:0] AWADDR_S0,
	output logic [3:0] AWLEN_S0,
	output logic [2:0] AWSIZE_S0,
	output logic [1:0] AWBURST_S0,
	output logic AWVALID_S0,
	input AWREADY_S0,
	//slave1
	output logic [7:0] AWID_S1,
	output logic [31:0] AWADDR_S1,
	output logic [3:0] AWLEN_S1,
	output logic [2:0] AWSIZE_S1,
	output logic [1:0] AWBURST_S1,
	output logic AWVALID_S1,
	input AWREADY_S1,
	//W_Channel
	output logic [1:0] AW_W2S_0, //combinatial
	output logic [1:0] AW_W2S,	 //sequential
	//B_Channel
	input B_done
);

logic lock;

//for stable W_channel value
always_comb begin
    if(AWVALID_S1&&AWREADY_S1)
        AW_W2S_0 = 2'b10;
    else if(AWVALID_S0&&AWREADY_S0)
        AW_W2S_0 = 2'b01;
    else 
        AW_W2S_0 = 2'b00;
end

//AW_W2S: arbitration slave
always_ff@(posedge clk) begin
	if(rst) begin
		AW_W2S <= 2'b00;
	end
	else if(AWVALID_S1 && AWREADY_S1) begin //slave1
		AW_W2S <= 2'b10;
	end
	else if(AWVALID_S0 && AWREADY_S0) begin //slave0
		AW_W2S <= 2'b01;
	end	
	else if(B_done) begin
		AW_W2S <= 2'b0;
	end
end

//lock
always_ff@(posedge clk) begin
	if(rst) begin
		lock <= 1'b0;
	end
	else if((AWVALID_S0 && AWREADY_S0) || (AWVALID_S1 && AWREADY_S1)) begin
		lock <= 1'b1;
	end
	else if(B_done) begin
		lock <= 1'b0;
	end
end

/* decoder 
// using address to decode the slave index
*/
always_comb begin
	if(AWADDR_M1[31:16]==16'd1) begin //slave1
		AWREADY_M1	= (lock) ? 1'b0 : AWREADY_S1;
		// slave0
		AWID_S0 	= 8'b0;
		AWADDR_S0 	= 32'b0;
		AWLEN_S0 	= 4'b0;
		AWSIZE_S0 	= 3'b0;
		AWBURST_S0 	= 2'b0;
		AWVALID_S0 	= 1'b0;
		// slave1
		AWID_S1 	= {4'd1,AWID_M1};
		AWADDR_S1 	= AWADDR_M1;
		AWLEN_S1 	= AWLEN_M1;
		AWSIZE_S1 	= AWSIZE_M1;
		AWBURST_S1 	= AWBURST_M1;
		AWVALID_S1 	= (lock) ? 1'b0 : AWVALID_M1;
	end
	else begin
		AWREADY_M1	= (lock) ? 1'b0 : AWREADY_S0;
		// slave0
		AWID_S0 	= {4'd0,AWID_M1};
		AWADDR_S0 	= AWADDR_M1;
		AWLEN_S0 	= AWLEN_M1;
		AWSIZE_S0 	= AWSIZE_M1;
		AWBURST_S0 	= AWBURST_M1;
		AWVALID_S0 	= (lock) ? 1'b0 : AWVALID_M1;	
		// slave1
		AWID_S1 	= 8'b0;
		AWADDR_S1 	= 32'b0;
		AWLEN_S1 	= 4'b0;
		AWSIZE_S1 	= 3'b0;
		AWBURST_S1 	= 2'b0;
		AWVALID_S1 	= 1'b0;
	end
end

endmodule