module mux2(
	input [31:0] D0,
	input [31:0] D1,
	input sel,
	output logic [31:0] Q
);

assign Q = (sel) ? D1 : D0;


// always_comb begin
	// case(sel)
		// 1'b0: Q = D0;
		// 1'b1: Q = D1;
	// endcase
// end

endmodule