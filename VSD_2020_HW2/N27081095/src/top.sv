`include "SRAM_wrapper.sv"
`include "CPU_wrapper.sv"
`include "./AXI/AXI.sv"
// `include "CPU.sv"

module top(
	input clk, rst
);

// ----------master0---------- //
// AW Channel
wire [3:0]	awid_m0;      // Write address ID tag
wire [31:0] awaddr_m0;    // Write address
wire [3:0]  awlen_m0;     // Write address burst length
wire [2:0]  awsize_m0;    // Write address burst size
wire [1:0]  awburst_m0;   // Write address burst type
wire        awvalid_m0;   // Write address valid
wire        awready_m0;   // Write address ready

// W Channel
wire [31:0]	wdata_m0;     // Write data
wire [3:0]  wstrb_m0;     // Write strobe
wire        wlast_m0;     // Write last
wire        wvalid_m0;    // Write valid
wire        wready_m0;    // Write ready

// B Channel
wire [3:0]	bid_m0;       // Write response ID tag
wire [1:0]  bresp_m0;     // Write response
wire        bvalid_m0;    // Write response valid
wire        bready_m0;    // Write response ready

// AR Channel
wire [3:0]	arid_m0;      // Read address ID tag
wire [31:0] araddr_m0;    // Read address
wire [3:0]  arlen_m0;     // Read address burst length
wire [2:0]  arsize_m0;    // Read address burst size
wire [1:0]  arburst_m0;   // Read address burst type
wire        arvalid_m0;   // Read address valid
wire        arready_m0;   // Read address ready

// R Channel
wire [3:0]	rid_m0;       // Read ID tag
wire [31:0] rdata_m0;     // Read data
wire        rlast_m0;     // Read last
wire        rvalid_m0;    // Read valid
wire        rready_m0;    // Read ready
wire [1:0]  rresp_m0;     // Read response

// ----------master1---------- //
// AW Channel
wire [3:0]	awid_m1;      // Write address ID tag
wire [31:0] awaddr_m1;    // Write address
wire [3:0]  awlen_m1;     // Write address burst length
wire [2:0]  awsize_m1;    // Write address burst size
wire [1:0]  awburst_m1;   // Write address burst type
wire        awvalid_m1;   // Write address valid
wire        awready_m1;   // Write address ready

// W Channel
wire [31:0]	wdata_m1;     // Write data
wire [3:0]  wstrb_m1;     // Write strobe
wire        wlast_m1;     // Write last
wire        wvalid_m1;    // Write valid
wire        wready_m1;    // Write ready

// B Channel
wire [3:0]	bid_m1;       // Write response ID tag
wire [3:0]  bresp_m1;     // Write response
wire        bvalid_m1;    // Write response valid
wire        bready_m1;    // Write response ready

// AR Channel
wire [3:0]	arid_m1;      // Read address ID tag
wire [31:0] araddr_m1;    // Read address
wire [3:0]  arlen_m1;     // Read address burst length
wire [2:0]  arsize_m1;    // Read address burst size
wire [1:0]  arburst_m1;   // Read address burst type
wire        arvalid_m1;   // Read address valid
wire        arready_m1;   // Read address ready

// R Channel
wire [3:0]	rid_m1;       // Read ID tag
wire [31:0] rdata_m1;     // Read data
wire        rlast_m1;     // Read last
wire        rvalid_m1;    // Read valid
wire        rready_m1;    // Read ready
wire [1:0]  rresp_m1;     // Read response

// ----------slave0---------- //
// AW Channel
wire [7:0]	awid_s0;      // Write address ID tag
wire [31:0] awaddr_s0;    // Write address
wire [3:0]  awlen_s0;     // Write address burst length
wire [2:0]  awsize_s0;    // Write address burst size
wire [1:0]  awburst_s0;   // Write address burst type
wire        awvalid_s0;   // Write address valid
wire        awready_s0;   // Write address ready

// W Channel
wire [31:0]	wdata_s0;     // Write data
wire [3:0]  wstrb_s0;     // Write strobe
wire        wlast_s0;     // Write last
wire        wvalid_s0;    // Write valid
wire        wready_s0;    // Write ready

// B Channel
wire [7:0]	bid_s0;       // Write response ID tag
wire [3:0]  bresp_s0;     // Write response
wire        bvalid_s0;    // Write response valid
wire        bready_s0;    // Write response ready

// AR Channel
wire [7:0]	arid_s0;      // Read address ID tag
wire [31:0] araddr_s0;    // Read address
wire [3:0]  arlen_s0;     // Read address burst length
wire [2:0]  arsize_s0;    // Read address burst size
wire [1:0]  arburst_s0;   // Read address burst type
wire        arvalid_s0;   // Read address valid
wire        arready_s0;   // Read address ready

// R Channel
wire [7:0]	rid_s0;       // Read ID tag
wire [31:0] rdata_s0;     // Read data
wire        rlast_s0;     // Read last
wire        rvalid_s0;    // Read valid
wire        rready_s0;    // Read ready
wire [1:0]  rresp_s0;     // Read response

// ----------slave1---------- //
// AW Channel
wire [7:0]	awid_s1;      // Write address ID tag
wire [31:0] awaddr_s1;    // Write address
wire [3:0]  awlen_s1;     // Write address burst length
wire [2:0]  awsize_s1;    // Write address burst size
wire [1:0]  awburst_s1;   // Write address burst type
wire        awvalid_s1;   // Write address valid
wire        awready_s1;   // Write address ready

// W Channel
wire [31:0]	wdata_s1;     // Write data
wire [3:0]  wstrb_s1;     // Write strobe
wire        wlast_s1;     // Write last
wire        wvalid_s1;    // Write valid
wire        wready_s1;    // Write ready

// B Channel
wire [7:0]	bid_s1;       // Write response ID tag
wire [3:0]  bresp_s1;     // Write response
wire        bvalid_s1;    // Write response valid
wire        bready_s1;    // Write response ready

// AR Channel
wire [7:0]	arid_s1;      // Read address ID tag
wire [31:0] araddr_s1;    // Read address
wire [3:0]  arlen_s1;     // Read address burst length
wire [2:0]  arsize_s1;    // Read address burst size
wire [1:0]  arburst_s1;   // Read address burst type
wire        arvalid_s1;   // Read address valid
wire        arready_s1;   // Read address ready

// R Channel
wire [7:0]	rid_s1;       // Read ID tag
wire [31:0] rdata_s1;     // Read data
wire        rlast_s1;     // Read last
wire        rvalid_s1;    // Read valid
wire        rready_s1;    // Read ready
wire [1:0]  rresp_s1;     // Read response

CPU_wrapper i_CPU_wrapper(
	.clk(clk), 
    .rst(rst),
//master0
	//AW Channel
	.AWID_M0(awid_m0),
	.AWADDR_M0(awaddr_m0),
	.AWLEN_M0(awlen_m0),
	.AWSIZE_M0(awsize_m0),
	.AWBURST_M0(awburst_m0),
	.AWVALID_M0(awvalid_m0),
	.AWREADY_M0(awready_m0),
	//W_Channel
	.WDATA_M0(wdata_m0),
	.WSTRB_M0(wstrb_m0),
	.WLAST_M0(wlast_m0),
	.WVALID_M0(wvalid_m0),
	.WREADY_M0(wready_m0),
	//B_Channel
	.BID_M0(bid_m0),
	.BRESP_M0(bresp_m0),
	.BVALID_M0(bvalid_m0),
	.BREADY_M0(bready_m0),
	//AR_Channel
	.ARID_M0(arid_m0),
	.ARADDR_M0(araddr_m0),
	.ARLEN_M0(arlen_m0),
	.ARSIZE_M0(arsize_m0),
	.ARBURST_M0(arburst_m0),
	.ARVALID_M0(arvalid_m0),
	.ARREADY_M0(arready_m0),
	//R_Channel
	.RID_M0(rid_m0),
	.RDATA_M0(rdata_m0),
	.RRESP_M0(rresp_m0),
	.RLAST_M0(rlast_m0),
	.RVALID_M0(rvalid_m0),
	.RREADY_M0(rready_m0),
//master1
	//AW Channel
	.AWID_M1(awid_m1),
	.AWADDR_M1(awaddr_m1),
	.AWLEN_M1(awlen_m1),
	.AWSIZE_M1(awsize_m1),
	.AWBURST_M1(awburst_m1),
	.AWVALID_M1(awvalid_m1),
	.AWREADY_M1(awready_m1),
	//W_Channel
	.WDATA_M1(wdata_m1),
	.WSTRB_M1(wstrb_m1),
	.WLAST_M1(wlast_m1),
	.WVALID_M1(wvalid_m1),
	.WREADY_M1(wready_m1),
	//B_Channel
	.BID_M1(bid_m1),
	.BRESP_M1(bresp_m1),
	.BVALID_M1(bvalid_m1),
	.BREADY_M1(bready_m1),
	//AR_Channel
	.ARID_M1(arid_m1),
	.ARADDR_M1(araddr_m1),
	.ARLEN_M1(arlen_m1),
	.ARSIZE_M1(arsize_m1),
	.ARBURST_M1(arburst_m1),
	.ARVALID_M1(arvalid_m1),
	.ARREADY_M1(arready_m1),
	//R_Channel
	.RID_M1(rid_m1),
	.RDATA_M1(rdata_m1),
	.RRESP_M1(rresp_m1),
	.RLAST_M1(rlast_m1),
	.RVALID_M1(rvalid_m1),
	.RREADY_M1(rready_m1)
);

AXI i_AXI(
		.ACLK(clk),
		.ARESETn(~rst),
//master
	//master0
		//AR-master0
		.ARID_M0(arid_m0),
		.ARADDR_M0(araddr_m0),
		.ARLEN_M0(arlen_m0),
		.ARSIZE_M0(arsize_m0),
		.ARBURST_M0(arburst_m0),
		.ARVALID_M0(arvalid_m0),
		.ARREADY_M0(arready_m0),
		//R-master0
		.RID_M0(rid_m0),
		.RDATA_M0(rdata_m0),
		.RRESP_M0(rresp_m0),
		.RLAST_M0(rlast_m0),
		.RVALID_M0(rvalid_m0),
		.RREADY_M0(rready_m0),
	//master1
		//AW Channel
		.AWID_M1(awid_m1),
		.AWADDR_M1(awaddr_m1),
		.AWLEN_M1(awlen_m1),
		.AWSIZE_M1(awsize_m1),
		.AWBURST_M1(awburst_m1),
		.AWVALID_M1(awvalid_m1),
		.AWREADY_M1(awready_m1),
		//W Channel
		.WDATA_M1(wdata_m1),
		.WSTRB_M1(wstrb_m1),
		.WLAST_M1(wlast_m1),
		.WVALID_M1(wvalid_m1),
		.WREADY_M1(wready_m1),
		//B Channel
		.BID_M1(bid_m1),
		.BRESP_M1(bresp_m1),
		.BVALID_M1(bvalid_m1),
		.BREADY_M1(bready_m1),	
		//AR Channel
		.ARID_M1(arid_m1),
		.ARADDR_M1(araddr_m1),
		.ARLEN_M1(arlen_m1),
		.ARSIZE_M1(arsize_m1),
		.ARBURST_M1(arburst_m1),
		.ARVALID_M1(arvalid_m1),
		.ARREADY_M1(arready_m1),	
		//R Channel
		.RID_M1(rid_m1),
		.RDATA_M1(rdata_m1),
		.RRESP_M1(rresp_m1),
		.RLAST_M1(rlast_m1),
		.RVALID_M1(rvalid_m1),
		.RREADY_M1(rready_m1),
//slave
	//slave0
		//AW Channel
		.AWID_S0(awid_s0),
		.AWADDR_S0(awaddr_s0),
		.AWLEN_S0(awlen_s0),
		.AWSIZE_S0(awsize_s0),
		.AWBURST_S0(awburst_s0),
		.AWVALID_S0(awvalid_s0),
		.AWREADY_S0(awready_s0),
		//W Channel
		.WDATA_S0(wdata_s0),
		.WSTRB_S0(wstrb_s0),
		.WLAST_S0(wlast_s0),
		.WVALID_S0(wvalid_s0),
		.WREADY_S0(wready_s0),
		//B Channel
		.BID_S0(bid_s0),
		.BRESP_S0(bresp_s0),
		.BVALID_S0(bvalid_s0),
		.BREADY_S0(bready_s0),
		//AR Channel
		.ARID_S0(arid_s0),
		.ARADDR_S0(araddr_s0),
		.ARLEN_S0(arlen_s0),
		.ARSIZE_S0(arsize_s0),
		.ARBURST_S0(arburst_s0),
		.ARVALID_S0(arvalid_s0),
		.ARREADY_S0(arready_s0),
		//R Channel
		.RID_S0(rid_s0),
		.RDATA_S0(rdata_s0),
		.RRESP_S0(rresp_s0),
		.RLAST_S0(rlast_s0),
		.RVALID_S0(rvalid_s0),
		.RREADY_S0(rready_s0),		
	//slave1
		//AW Channel
		.AWID_S1(awid_s1),
		.AWADDR_S1(awaddr_s1),
		.AWLEN_S1(awlen_s1),
		.AWSIZE_S1(awsize_s1),
		.AWBURST_S1(awburst_s1),
		.AWVALID_S1(awvalid_s1),
		.AWREADY_S1(awready_s1),
		//W Channel
		.WDATA_S1(wdata_s1),
		.WSTRB_S1(wstrb_s1),
		.WLAST_S1(wlast_s1),
		.WVALID_S1(wvalid_s1),
		.WREADY_S1(wready_s1),
		//B Channel
		.BID_S1(bid_s1),
		.BRESP_S1(bresp_s1),
		.BVALID_S1(bvalid_s1),
		.BREADY_S1(bready_s1),
		//AR Channel
		.ARID_S1(arid_s1),
		.ARADDR_S1(araddr_s1),
		.ARLEN_S1(arlen_s1),
		.ARSIZE_S1(arsize_s1),
		.ARBURST_S1(arburst_s1),
		.ARVALID_S1(arvalid_s1),
		.ARREADY_S1(arready_s1),
		//R Channel
		.RID_S1(rid_s1),
		.RDATA_S1(rdata_s1),
		.RRESP_S1(rresp_s1),
		.RLAST_S1(rlast_s1),
		.RVALID_S1(rvalid_s1),
		.RREADY_S1(rready_s1)
);

SRAM_wrapper IM1(
	.CK(clk),
	.RST(rst),
	.CS(1'b1),
	
	//AW Channel
	.AWID(awid_s0),
	.AWADDR(awaddr_s0),
	.AWLEN(awlen_s0),
	.AWSIZE(awsize_s0),
	.AWBURST(awburst_s0),
	.AWVALID(awvalid_s0),
	.AWREADY(awready_s0),
	//W_Channel
	.WDATA(wdata_s0),
	.WSTRB(wstrb_s0),
	.WLAST(wlast_s0),
	.WVALID(wvalid_s0),
	.WREADY(wready_s0),
	//B_Channel
	.BID(bid_s0),
	.BRESP(bresp_s0),
	.BVALID(bvalid_s0),
	.BREADY(bready_s0),
	
	//AR_Channel
	.ARID(arid_s0),
	.ARADDR(araddr_s0),
	.ARLEN(arlen_s0),
	.ARSIZE(arsize_s0),
	.ARBURST(arburst_s0),
	.ARVALID(arvalid_s0),
	.ARREADY(arready_s0),
	//R_Channel
	.RID(rid_s0),
	.RDATA(rdata_s0),
	.RRESP(rresp_s0),
	.RLAST(rlast_s0),
	.RVALID(rvalid_s0),
	.RREADY(rready_s0)
);


SRAM_wrapper DM1(
	.CK(clk),
	.RST(rst),
	.CS(1'b1),
	
	//AW Channel
	.AWID(awid_s1),
	.AWADDR(awaddr_s1),
	.AWLEN(awlen_s1),
	.AWSIZE(awsize_s1),
	.AWBURST(awburst_s1),
	.AWVALID(awvalid_s1),
	.AWREADY(awready_s1),
	//W_Channel
	.WDATA(wdata_s1),
	.WSTRB(wstrb_s1),
	.WLAST(wlast_s1),
	.WVALID(wvalid_s1),
	.WREADY(wready_s1),
	//B_Channel
	.BID(bid_s1),
	.BRESP(bresp_s1),
	.BVALID(bvalid_s1),
	.BREADY(bready_s1),
	
	//AR_Channel
	.ARID(arid_s1),
	.ARADDR(araddr_s1),
	.ARLEN(arlen_s1),
	.ARSIZE(arsize_s1),
	.ARBURST(arburst_s1),
	.ARVALID(arvalid_s1),
	.ARREADY(arready_s1),
	//R_Channel
	.RID(rid_s1),
	.RDATA(rdata_s1),
	.RRESP(rresp_s1),
	.RLAST(rlast_s1),
	.RVALID(rvalid_s1),
	.RREADY(rready_s0)
);
/*
//IM
logic [31:0] IM_Adrs;
logic [31:0] IM_Instr;

//DM
logic DM_MemRead;
logic [3:0] DM_MemWrite;
logic [31:0] DM_Adrs;
logic [31:0] DM_WData;
logic [31:0] DM_RData;
 
CPU CPU(.clk(clk),
		.rst(rst),
		.IM_Instr(IM_Instr),
		.DM_RData(DM_RData),
		.IM_Adrs(IM_Adrs),
		.DM_MemRead(DM_MemRead),
		.DM_MemWrite(DM_MemWrite),
		.DM_Adrs(DM_Adrs),
		.DM_WData(DM_WData) );

		
		
//Instruction memory
SRAM_wrapper IM1(clk, 			//clk
				1'b1, 			//sel (active high)
				1'b1, 			//output enable (active high)
				4'b1111,		//write enable (active low)
				IM_Adrs[15:2],	//address (16-bit, add 4 every cycle, W_PC[1:0] always 0)
				32'b0,			//data input
				IM_Instr);		//data output
				
//Data memory
SRAM_wrapper DM1(clk, 			//clk
				1'b1, 			//sel (active high)
				DM_MemRead, 	//output enable (active high)
				DM_MemWrite,	//write enable (active low)
				DM_Adrs[15:2],	//address (16-bit, add 4 every cycle, W_PC[1:0] always 0)
				DM_WData,		//data input
				DM_RData);		//data output
				
				
*/

endmodule