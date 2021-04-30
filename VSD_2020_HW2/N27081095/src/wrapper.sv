module wrapper(
	input clk,
	input rst,
//CPU
	input CS,
	input OE,
	input [3:0] WEB, //active low 4'b0000
	input [31:0] A,
	input [31:0] DI,
	output logic [31:0] DO,
//AXI
	//AW_Channel
	output logic [3:0] AWID,
	output logic [31:0] AWADDR,
	output logic [3:0] AWLEN,
	output logic [2:0] AWSIZE,
	output logic [1:0] AWBURST,
	output logic AWVALID,
	input AWREADY,
	//W_Channel
	output logic [31:0] WDATA,
	output logic [3:0] WSTRB,
	output logic WLAST,
	output logic WVALID,
	input WREADY,
	//B_Channel
	input [3:0] BID,
	input [3:0] BRESP,
	input BVALID,
	output logic BREADY,

	//AR_Channel
	output logic [3:0] ARID,
	output logic [31:0] ARADDR,
	output logic [3:0] ARLEN,
	output logic [2:0] ARSIZE,
	output logic [1:0] ARBURST,
	output logic ARVALID,
	input ARREADY,
	//R_Channel
	input [3:0] RID,
	input [31:0] RDATA,
	input [1:0] RRESP,
	input RLAST,
	input RVALID,
	output logic RREADY,
	//other
	output logic Stall,
	output logic rDone
);

enum logic [1:0] {_RIDLE,_AR_CH,_R_CH}rcs,rns;
enum logic [1:0] {_WIDLE,_AW_CH,_W_CH,_B_CH}wcs,wns;

assign rDone = RVALID&&RREADY&&rcs==_R_CH;

//Stall
always_comb begin
	if(OE)
		Stall <= (RVALID) ? 1'b0 : 1'b1;
	else if(!(&WEB))
		Stall <= (WREADY && wcs==_W_CH) ? 1'b0 : 1'b1;
	else
		Stall <= 1'b0;
end

//Write
always_ff@(posedge clk) begin
	if(rst) wcs <= _WIDLE;
	else wcs <= wns;
end

always_comb begin
	case(wcs)
		_WIDLE: wns = _AW_CH;
		_AW_CH: wns = (AWVALID&&AWREADY) ? _W_CH : _AW_CH;
		_W_CH: 	wns = (WVALID&&WREADY) ? _B_CH : _W_CH;
		_B_CH: 	wns = (BVALID&&BREADY) ? _AW_CH : _B_CH;
	endcase
end

logic lock_aw;
always_ff@(posedge clk) begin
	if(rst) lock_aw <= 'b0;
	else begin
		if(AWVALID&&!AWREADY) 
			lock_aw <= 'b1;
		else lock_aw <= 'b0;
	end
end

logic lock_w;
always_ff@(posedge clk) begin
	if(rst) lock_w <= 'b0;
	else begin
		if(WVALID&&(~WREADY)) 
			lock_w <= 'b1;
		else lock_w <= 'b0;
	end
end

always_comb begin
	case(wcs)
		_WIDLE: begin
			//AW Channel
			AWID 	= 'b0;
			AWADDR 	= 'b0;
			AWLEN 	= 'b0;
			AWSIZE 	= 'b0;
			AWBURST = 'b0;
			AWVALID = 'b0;
			//W Channel
			WDATA 	= 'b0;
			WSTRB 	= 'b1111;
			WLAST 	= 'b0;
			WVALID 	= 'b0;
			//B	Channel	
			BREADY 	= 'b0;
		end
		_AW_CH: begin
			//AW Channel
			AWID 	= 'b0;
			AWADDR 	= (lock_aw) ? AWADDR : A;
			AWLEN 	= 'b0;
			AWSIZE 	= 'b0;
			AWBURST = 2'b01;
			AWVALID = (lock_aw) ? AWVALID : (WEB==4'b0);
			//W Channel
			WDATA 	= 'b0;
			WSTRB 	= 'b1111;
			WLAST 	= 'b0;
			WVALID 	= 'b0;
			//B	Channel
			BREADY 	= 'b0;
		end
		_W_CH: begin
			//AW Channel
			AWID 	= 'b0;
			AWADDR 	= AWADDR;
			AWLEN 	= 'b0;
			AWSIZE 	= 'b0;
			AWBURST = 'b0;
			AWVALID = 'b0;
			//W Channel
			WDATA 	= (lock_w) ? WDATA : DI;
			WSTRB 	= (lock_w) ? WSTRB : WEB;
			WLAST 	= 'b1;
			WVALID 	= 'b1;
			//B	 Channel	
			BREADY 	= 'b0;
		end
		_B_CH: begin
			//AW Channel
			AWID 	= 'b0;
			AWADDR 	= 'b0;
			AWLEN 	= 'b0;
			AWSIZE 	= 'b0;
			AWBURST = 'b0;
			AWVALID = 'b0;
			//W Channel
			WDATA 	= 'b0;
			WSTRB 	= 'b1111;
			WLAST 	= 'b0;
			WVALID 	= 'b0;
			//B	Channel
			BREADY 	= 'b1;
		end
		default: begin
			//AW Channel
			AWID 	= 'b0;
			AWADDR 	= 'b0;
			AWLEN 	= 'b0;
			AWSIZE 	= 'b0;
			AWBURST = 'b0;
			AWVALID = 'b0;
			//W Channel
			WDATA 	= 'b0;
			WSTRB 	= 'b1111;
			WLAST 	= 'b0;
			WVALID 	= 'b0;
			//B	Channel	
			BREADY 	= 'b0;
		end
	endcase
end


//Read
always_ff@(posedge clk) begin
	if(rst) rcs <= _RIDLE;
	else rcs <= rns;
end

always_comb begin
	case(rcs)
		_RIDLE: rns = _AR_CH;
		_AR_CH: rns = (ARVALID&&ARREADY) ? _R_CH : _AR_CH;
		_R_CH: 	rns = (RVALID&&RREADY) ? _AR_CH : _R_CH;
	endcase
end
 
logic lock_ar;
always_ff@(posedge clk) begin
	if(rst) lock_ar <= 'b0;
	else begin
		if(ARVALID&&(~ARREADY)) 
			lock_ar <= 'b1;
		else lock_ar <= 'b0;
	end
end

always_comb begin
	case(rcs)
		_RIDLE: begin
			//CPU
			DO 		<= 'b0;
			//AR Channel
			ARID 	<= 'b0;
			ARADDR 	<= 'b0;
			ARLEN 	<= 'b0;
			ARSIZE 	<= 'b0;
			ARBURST <= 'b0;
			ARVALID <= 'b0;
			//R Channel
			RREADY 	<= 'b0;			
		end
		_AR_CH: begin
			//CPU
			DO 		<= DO;
			//AR Channel
			ARID 	<= 'b0;
			ARADDR 	<= (lock_ar) ? ARADDR : A;
			ARLEN 	<= 'b0;
			ARSIZE 	<= 'b0;
			ARBURST <= 2'b01; //INCR
			ARVALID <= (lock_ar) ? ARVALID : OE;
			//R Channel
			RREADY 	<= 'b0;	 		
		end
		_R_CH: begin
			//CPU
			DO 		<= RDATA;
			//AR Channel
			ARID 	<= 'b0;
			ARADDR 	<= ARADDR;
			ARLEN 	<= 'b0;
			ARSIZE 	<= 'b0;
			ARBURST <= 2'b01; //INCR
			ARVALID <= 'b0;
			//R Channel
			RREADY 	<= 'b1;			
		end
		default: begin
			//CPU
			DO 		<= 'b0;
			//AR Channel
			ARID 	<= 'b0;
			ARADDR 	<= 'b0;
			ARLEN 	<= 'b0;
			ARSIZE 	<= 'b0;
			ARBURST <= 2'b01; //INCR
			ARVALID <= 'b0;
			//R Channel
			RREADY 	<= 'b0;		
		end
	endcase
end



endmodule