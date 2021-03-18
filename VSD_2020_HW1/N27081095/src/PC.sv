module PC(
	input clk, rst,
	input start,
	input Stall,
	input [31:0] NextPC,
	output logic [31:0] CurPC
);

always_ff@(posedge clk) begin
	if(rst || !start)
	// if(rst)
		CurPC <= 32'b0;
	else if(Stall) 
		CurPC <= CurPC;
	else 
		CurPC <= NextPC;
end

endmodule