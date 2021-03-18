
/////////////////////////
// ALUOp
// 00 SW/LW/AUIPC/JALR
// 01 beq
// 10 R-Type
// 11 LUI/JAL
/////////////////////////
 
module ALUControlUnit(
	input [1:0] ALUOp,
	input [2:0] Func3,
	input [6:0] Func7,
	output logic [3:0] Operation
);
		
	always@(*) begin
		case(ALUOp)
			2'b00: Operation = 4'b0010; // +
			2'b01: begin
				case(Func3) 
					3'b000: Operation = 4'b0100; // ==
					3'b001: Operation = 4'b0101; // !=
					3'b100: Operation = 4'b1010; // < - signed
					3'b101: Operation = 4'b1011; // > - signed
					3'b110: Operation = 4'b1100; // < - unsigned
					3'b111: Operation = 4'b1101; // > - unsigned
					default: Operation = 4'b0000;
				endcase
			end
			2'b10: begin 
				case(Func3) 
					3'b000: begin
						if(Func7 == 7'b0100000) Operation = 4'b0110; // - 
						else Operation = 4'b0010; // +
					end
					3'b001: Operation = 4'b0111; // <<
					3'b010: Operation = 4'b1010; // < - signed
					3'b011: Operation = 4'b1100; // < - unsigned
					3'b100: Operation = 4'b0011; // ^
					3'b101: begin
						if(Func7 == 7'b0100000) Operation = 4'b1001; // >> - signed
						else Operation = 4'b1000; // >> - unsigned
					end
					3'b110: Operation = 4'b0001; // |
					3'b111: Operation = 4'b0000; // &
					// default: Operation = 4'b0000;
				endcase				
			end	
			2'b11: Operation = 4'b1111;
		endcase	
	end
endmodule