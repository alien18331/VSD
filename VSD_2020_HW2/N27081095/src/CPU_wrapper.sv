`include "CPU.sv"
`include "wrapper.sv"

module CPU_wrapper(
	input clk, 
	input rst,
//master0
	//AW_Channel
	output logic [3:0] AWID_M0,
	output logic [31:0] AWADDR_M0,
	output logic [3:0] AWLEN_M0,
	output logic [2:0] AWSIZE_M0,
	output logic [1:0] AWBURST_M0,
	output logic AWVALID_M0,
	input AWREADY_M0,
	//W_Channel
	output logic [31:0] WDATA_M0,
	output logic [3:0] WSTRB_M0,
	output logic WLAST_M0,
	output logic WVALID_M0,
	input WREADY_M0,
	//B_Channel
	input [3:0] BID_M0,
	input [1:0] BRESP_M0,
	input BVALID_M0,
	output logic BREADY_M0,
	//AR_Channel
	output logic [3:0] ARID_M0,
	output logic [31:0] ARADDR_M0,
	output logic [3:0] ARLEN_M0,
	output logic [2:0] ARSIZE_M0,
	output logic [1:0] ARBURST_M0,
	output logic ARVALID_M0,
	input ARREADY_M0,
	//R_Channel
	input [3:0] RID_M0,
	input [31:0] RDATA_M0,
	input [1:0] RRESP_M0,
	input RLAST_M0,
	input RVALID_M0,
	output logic RREADY_M0,
	
//master1
	//AW_Channel
	output logic [3:0] AWID_M1,
	output logic [31:0] AWADDR_M1,
	output logic [3:0] AWLEN_M1,
	output logic [2:0] AWSIZE_M1,
	output logic [1:0] AWBURST_M1,
	output logic AWVALID_M1,
	input AWREADY_M1,
	//W_Channel
	output logic [31:0] WDATA_M1,
	output logic [3:0] WSTRB_M1,
	output logic WLAST_M1,
	output logic WVALID_M1,
	input WREADY_M1,
	//B_Channel
	input [3:0] BID_M1,
	input [1:0] BRESP_M1,
	input BVALID_M1,
	output logic BREADY_M1,
	//AR_Channel
	output logic [3:0] ARID_M1,
	output logic [31:0] ARADDR_M1,
	output logic [3:0] ARLEN_M1,
	output logic [2:0] ARSIZE_M1,
	output logic [1:0] ARBURST_M1,
	output logic ARVALID_M1,
	output ARREADY_M1,
	//R_Channel
	input [3:0] RID_M1,
	input [31:0] RDATA_M1,
	input [1:0] RRESP_M1,
	input RLAST_M1,
	input RVALID_M1,
	output logic RREADY_M1
);

//IM
logic [31:0] IM_A;
logic [31:0] IM_DO;

//DM
logic DM_OE;
logic [3:0] DM_WEB;
logic [31:0] DM_A;
logic [31:0] DM_DI;
logic [31:0] DM_DO;

CPU i_CPU(.clk(clk),
		  .rst(rst),
		  .IM_Instr(IM_DO),
		  .DM_RData(DM_DO),
		  .IM_Adrs(IM_A),
		  .DM_MemRead(DM_OE),
		  .DM_MemWrite(DM_WEB),
		  .DM_Adrs(DM_A),
		  .DM_WData(DM_DI),
		  .IM_Stall(IM_Stall),
		  .DM_Stall(DM_Stall)
);


wrapper master0(.clk(clk),
				.rst(rst),
				//CPU
				.CS(1'b1),
				.OE(1'b1),
				.WEB(4'b1111),
				.A(IM_A),
				.DI('b0),
				.DO(IM_DO),
				//AW
				.AWID(AWID_M0),
				.AWADDR(AWADDR_M0),
				.AWLEN(AWLEN_M0),
				.AWSIZE(AWSIZE_M0),
				.AWBURST(AWBURST_M0),
				.AWVALID(AWVALID_M0),
				.AWREADY(AWREADY_M0),
				//W
				.WDATA(WDATA_M0),
				.WSTRB(WSTRB_M0),
				.WLAST(WLAST_M0),
				.WVALID(WVALID_M0),
				.WREADY(WREADY_M0),
				//B
				.BID(BID_M0),
				.BRESP(BRESP_M0),
				.BVALID(BVALID_M0),
				.BREADY(BREADY_M0), 
				//AR
				.ARID(ARID_M0),
				.ARADDR(ARADDR_M0),
				.ARLEN(ARLEN_M0),
				.ARSIZE(ARSIZE_M0),
				.ARBURST(ARBURST_M0),
				.ARVALID(ARVALID_M0),
				.ARREADY(ARREADY_M0),
				//R
				.RID(RID_M0),
				.RDATA(RDATA_M0),
				.RRESP(RRESP_M0),
				.RLAST(RLAST_M0),
				.RVALID(RVALID_M0),
				.RREADY(RREADY_M0),
				//other
				.Stall(IM_Stall)
);

wrapper master1(.clk(clk),
				.rst(rst),
				//CPU
				.CS(1'b1),
				.OE(DM_OE),
				.WEB(DM_WEB),
				.A(DM_A),
				.DI(DM_DI),
				.DO(DM_DO),
				//AW
				.AWID(AWID_M1),
				.AWADDR(AWADDR_M1),
				.AWLEN(AWLEN_M1),
				.AWSIZE(AWSIZE_M1),
				.AWBURST(AWBURST_M1),
				.AWVALID(AWVALID_M1),
				.AWREADY(AWREADY_M1),
				//W
				.WDATA(WDATA_M1),
				.WSTRB(WSTRB_M1),
				.WLAST(WLAST_M1),
				.WVALID(WVALID_M1),
				.WREADY(WREADY_M1),
				//B
				.BID(BID_M1),
				.BRESP(BRESP_M1),
				.BVALID(BVALID_M1),
				.BREADY(BREADY_M1),
				//AR
				.ARID(ARID_M1),
				.ARADDR(ARADDR_M1),
				.ARLEN(ARLEN_M1),
				.ARSIZE(ARSIZE_M1),
				.ARBURST(ARBURST_M1),
				.ARVALID(ARVALID_M1),
				.ARREADY(ARREADY_M1),
				//R
				.RID(RID_M1),
				.RDATA(RDATA_M1),
				.RRESP(RRESP_M1),
				.RLAST(RLAST_M1),
				.RVALID(RVALID_M1),
				.RREADY(RREADY_M1),
				//other
				.Stall(DM_Stall)
);

		
//Instruction memory
// SRAM_wrapper IM1(clk, 			//clk
				// 1'b1, 			//sel (active high)
				// 1'b1, 			//output enable (active high)
				// 4'b1111,		//write enable (active low)
				// IM_Adrs[15:2],	//address (16-bit, add 4 every cycle, W_PC[1:0] always 0)
				// 32'b0,			//data input
				// IM_Instr);		//data output
				
//Data memory
// SRAM_wrapper DM1(clk, 			//clk
				// 1'b1, 			//sel (active high)
				// DM_MemRead, 	//output enable (active high)
				// DM_MemWrite,	//write enable (active low)
				// DM_Adrs[15:2],	//address (16-bit, add 4 every cycle, W_PC[1:0] always 0)
				// DM_WData,		//data input
				// DM_RData);		//data output

endmodule