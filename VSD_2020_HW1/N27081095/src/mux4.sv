module mux4(
	input [31:0] D00,
	input [31:0] D01,
	input [31:0] D10,
	input [31:0] D11,
	input [1:0] sel,
	output logic [31:0] Q
);

always_comb begin
	case(sel)
		2'b00: Q = D00;
		2'b01: Q = D01;
		2'b10: Q = D10;
		2'b11: Q = D11;
	endcase
end

endmodule