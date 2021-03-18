module ALU (
	input [31:0] Src1,
	input [31:0] Src2,
	input [3:0] Operation,	
	output logic [31:0] Result);
	
	always_comb begin
		case(Operation) 
			//AND
			4'b0000: Result = Src1 & Src2;
			//OR
			4'b0001: Result = Src1 | Src2;
			//ADD
			4'b0010: Result = Src1 + Src2;
			//XOR
			4'b0011: Result = Src1 ^ Src2;
			//equal
			4'b0100: Result = (Src1 == Src2) ? 1 : 0;
			//not equal
			4'b0101: Result = (Src1 != Src2) ? 1 : 0;
			//Subtract
			4'b0110: Result = Src1 - Src2;
			//shift left <<
			4'b0111: Result = $unsigned(Src1) << Src2[4:0];
			//shift right >>
			4'b1000: Result = $unsigned(Src1) >> Src2[4:0];
			//shift right Arithmetic (MSB補 signed bit) >>>
			4'b1001: Result = $signed(Src1) >>> Src2[4:0];
			//less than
			4'b1010: Result = ($signed(Src1) < $signed(Src2)) ? 1 : 0;
			//greater than
			4'b1011: Result = ($signed(Src1) >= $signed(Src2)) ? 1 : 0;
			//less than Unsigned
			4'b1100: Result = ($unsigned(Src1) < $unsigned(Src2)) ? 1 : 0;
			//greater than Unsigned
			4'b1101: Result = ($unsigned(Src1) >= $unsigned(Src2)) ? 1 : 0;
			4'b1111: Result = 1; //LUI/JAL
			default: Result = 0; 
		
		endcase	
	end

endmodule