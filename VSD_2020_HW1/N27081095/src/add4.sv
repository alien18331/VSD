module add4(
	input [31:0] D,
	output logic [31:0] Q
);

assign Q = D + 32'd4;

endmodule