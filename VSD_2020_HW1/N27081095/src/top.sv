`include "SRAM_wrapper.sv"
`include "CPU.sv"

module top(
	input clk, rst
);

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

endmodule