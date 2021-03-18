module SRAM_wrapper (
	input CK,
	input RST,
	input CS,	
  
	//AW_Channel
	input [7:0] AWID,
	input [31:0] AWADDR,
	input [3:0] AWLEN,
	input [2:0] AWSIZE,
	input [1:0] AWBURST,
	input AWVALID,	
	output logic AWREADY, 
	//W_Channel
	input [31:0] WDATA,
	input [3:0] WSTRB,
	input WLAST,
	input WVALID,	
	output logic WREADY,
	//B_Channel
	output logic [7:0] BID,
	output logic [1:0] BRESP,
	output logic BVALID,	
	input BREADY,

	//AR_Channel
	input [7:0] ARID,
	input [31:0] ARADDR,
	input [3:0] ARLEN,
	input [2:0] ARSIZE,
	input [1:0] ARBURST,
	input ARVALID,
	output logic ARREADY,
	//R_Channel
	output logic [7:0] RID,
	output logic [31:0] RDATA,
	output logic [1:0] RRESP,
	output logic RLAST,
	output logic RVALID,
	input RREADY
);

logic OE;
logic [3:0] WEB;
logic [13:0] A;
logic [31:0] DI;
logic [31:0] DO;

//SRAM
assign OE 	= (ARVALID&&ARREADY) ? 1'b1 : 
			  (RVALID&&RREADY) ? 1'b1 : 1'b0;
assign WEB 	= (WVALID&&WREADY) ? WSTRB : 4'b1111;
assign A 	= (OE) ? ARADDR[15:2] : 
		      (AWVALID) ? AWADDR[15:2] : 14'b0;		   
assign DI 	= (WVALID&&WREADY) ? WDATA : 32'b0;

//R Channel
assign RRESP = 2'b0;
assign RLAST = OE ? 1'b1 : 1'b0;

//B Channel
assign BRESP = 2'b0;
 
//lock_R
logic lock_R;
always_comb begin
	if(RVALID&&(~RREADY)) 
		lock_R <= 'b1;
	else lock_R <= 'b0;
end

//AR_READY
always_ff@(posedge CK) begin
	if(RST)
		ARREADY <= 'b0;
	else if(AWVALID&&AWREADY) 
		ARREADY <= 'b0;
	else if(WVALID&&WREADY) 
		ARREADY <= 'b0;	
	else
		ARREADY <= 'b1;
end

//AW_READY
always_ff@(posedge CK) begin
	if(RST)
		AWREADY <= 'b0;
	else if(ARVALID&&ARREADY) 
		AWREADY <= 'b0;
	else if(WVALID&&WREADY) 
		AWREADY <= 'b0;	
	else if(BVALID&&BREADY) 
		AWREADY <= 'b0;	
	else
		AWREADY <= 'b1;
end

//W_READY
always_ff@(posedge CK) begin
	if(RST)
		WREADY <= 'b0;
	else if(ARVALID&&ARREADY) 
		WREADY <= 'b0;
	else if(AWVALID&&AWREADY) 
		WREADY <= 'b0;	
	else if(BVALID&&BREADY) 
		WREADY <= 'b0;	
	else
		WREADY <= 'b1;
end

//R Channel
always_ff@(posedge CK) begin
	if(RST) begin
		RVALID 	<= 'b0;
		RID 	<= 'b0;
		RDATA 	<= 'b0;
	end
	else if(lock_R) begin // Stable
		RVALID 	<= RVALID;
		RID 	<= RID;
		RDATA 	<= RDATA;
	end
	else if(RVALID&&RREADY) begin // Read done
		RVALID 	<= 'b0;
		RID 	<= 'b0;
		RDATA 	<= 'b0;
	end
	else if(AWVALID&&AWREADY) begin // Write case
		RVALID 	<= 'b0;
		RID 	<= 'b0;
		RDATA 	<= 'b0;
	end
	else if(ARVALID&&ARREADY) begin // Update
		RVALID 	<= OE;	
		RID 	<= ARID;
		RDATA 	<= DO;
	end
end

//B Channel
always_ff@(posedge CK) begin
	if(RST) begin
		BVALID 	<= 'b0;
		BID 	<= 'b0;
	end
	else if(BVALID&&BREADY) begin // Response done
		BVALID 	<= 'b0;	
		BID 	<= 'b0;
	end
	else if(AWVALID&&AWREADY) begin // Adrs write done, update ID
		BVALID 	<= 'b0;	
		BID 	<= AWID;
	end
	else if(WVALID&&WREADY) begin // write done, update valid
		BVALID 	<= 'b1;	
		BID 	<= BID;
	end
end

//SRAM
SRAM i_SRAM (
    .A0   (A[0]  ),
    .A1   (A[1]  ),
    .A2   (A[2]  ),
    .A3   (A[3]  ),
    .A4   (A[4]  ),
    .A5   (A[5]  ),
    .A6   (A[6]  ),
    .A7   (A[7]  ),
    .A8   (A[8]  ),
    .A9   (A[9]  ),
    .A10  (A[10] ),
    .A11  (A[11] ),
    .A12  (A[12] ),
    .A13  (A[13] ),
    .DO0  (DO[0] ),
    .DO1  (DO[1] ),
    .DO2  (DO[2] ),
    .DO3  (DO[3] ),
    .DO4  (DO[4] ),
    .DO5  (DO[5] ),
    .DO6  (DO[6] ),
    .DO7  (DO[7] ),
    .DO8  (DO[8] ),
    .DO9  (DO[9] ),
    .DO10 (DO[10]),
    .DO11 (DO[11]),
    .DO12 (DO[12]),
    .DO13 (DO[13]),
    .DO14 (DO[14]),
    .DO15 (DO[15]),
    .DO16 (DO[16]),
    .DO17 (DO[17]),
    .DO18 (DO[18]),
    .DO19 (DO[19]),
    .DO20 (DO[20]),
    .DO21 (DO[21]),
    .DO22 (DO[22]),
    .DO23 (DO[23]),
    .DO24 (DO[24]),
    .DO25 (DO[25]),
    .DO26 (DO[26]),
    .DO27 (DO[27]),
    .DO28 (DO[28]),
    .DO29 (DO[29]),
    .DO30 (DO[30]),
    .DO31 (DO[31]),
    .DI0  (DI[0] ),
    .DI1  (DI[1] ),
    .DI2  (DI[2] ),
    .DI3  (DI[3] ),
    .DI4  (DI[4] ),
    .DI5  (DI[5] ),
    .DI6  (DI[6] ),
    .DI7  (DI[7] ),
    .DI8  (DI[8] ),
    .DI9  (DI[9] ),
    .DI10 (DI[10]),
    .DI11 (DI[11]),
    .DI12 (DI[12]),
    .DI13 (DI[13]),
    .DI14 (DI[14]),
    .DI15 (DI[15]),
    .DI16 (DI[16]),
    .DI17 (DI[17]),
    .DI18 (DI[18]),
    .DI19 (DI[19]),
    .DI20 (DI[20]),
    .DI21 (DI[21]),
    .DI22 (DI[22]),
    .DI23 (DI[23]),
    .DI24 (DI[24]),
    .DI25 (DI[25]),
    .DI26 (DI[26]),
    .DI27 (DI[27]),
    .DI28 (DI[28]),
    .DI29 (DI[29]),
    .DI30 (DI[30]),
    .DI31 (DI[31]),
    .CK   (CK    ),
    .WEB0 (WEB[0]),
    .WEB1 (WEB[1]),
    .WEB2 (WEB[2]),
    .WEB3 (WEB[3]),
    .OE   (OE    ),
    .CS   (CS    )
);

endmodule
