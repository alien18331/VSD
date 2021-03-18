module DataType(
	input [31:0] Data_in,
	input [2:0] Func3,
	input [1:0] index,
	output logic [31:0] Data_out
);

always_comb begin
	case(Func3)
		3'b010: begin //word
			Data_out = Data_in;			
		end
		3'b001: begin //half word
			if(index==2'b01) 
				Data_out = {{16{Data_in[15]}},{Data_in[15:0]}};
			else if(index==2'b10) 
				Data_out = {{Data_in[15:0]},16'b0};
			else if(index==2'b00)
				Data_out = {{16{Data_in[15]}},{Data_in[15:0]}};
			else
				Data_out = Data_in;
		end
		3'b101: begin //half word unsigned
			if(index==2'b01) 
				Data_out = {16'b0,{Data_in[15:0]}};
			else if(index==2'b10) 
				Data_out = {{Data_in[15:0]},16'b0};
			else if(index==2'b00)
				Data_out = {{16'b0},{Data_in[15:0]}};
			else
				Data_out = Data_in;
		end
		3'b000: begin //byte (從Data_in[7:0]存到目的地的4個Byte之一, 由ALU[1:0]決定位置)
			case(index)
				2'b00: Data_out = {{24{Data_in[7]}},{Data_in[7:0]}};
				2'b01: Data_out = {{16{Data_in[7]}},{Data_in[7:0]},{8'b0}};
				2'b10: Data_out = {{8{Data_in[7]}},{Data_in[7:0]},{16'b0}};
				2'b11: Data_out = {{Data_in[7:0]},{24'b0}};
			endcase
		end
		3'b100: begin //byte unsigned
			case(index)
				2'b00: Data_out = {{24'b0},{Data_in[7:0]}};
				2'b01: Data_out = {{16'b0},{Data_in[7:0]},{8'b0}};
				2'b10: Data_out = {{8'b0},{Data_in[7:0]},{16'b0}};
				2'b11: Data_out = {{Data_in[7:0]},{24'b0}};
			endcase
		end
		default: begin //default
			Data_out = Data_in;
		end
	endcase
end


endmodule