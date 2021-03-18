package RegPack;
	
	// Pipeline Reg A
	typedef struct packed{
		logic [31:0] IF_PC;
		logic [31:0] IF_Instr;
	} if_id_reg;
	
	// Pipeline Reg B
	typedef struct packed{
		// ControlUnit
		logic ALUSrc;
		logic MemToReg;
		logic Branch;
		logic MemWrite;
		logic MemRead;
		logic [1:0] ALUOp;
		logic RegWrite;
		logic JalrSel;
		logic [1:0] RWSel;
		// Reg	
		logic [31:0] Instr; //for debug
		logic [4:0] RS1;
		logic [4:0] RS2;
		logic [31:0] RD1;
		logic [31:0] RD2;
		logic [4:0] rd;
		logic [2:0] Func3;
		logic [6:0] Func7;
		logic [31:0] PC;
		logic [31:0] ImmG;
	} id_ex_reg;
	
	// Pipeline Reg C
	typedef struct packed{
		// ControlUnit
		logic MemToReg;
		logic MemWrite;
		logic MemRead;
		logic RegWrite;
		logic [1:0] RWSel;
		// Reg
		logic [31:0] PC; //for debug
		logic [31:0] Instr; //for debug
		logic [4:0] rd;
		logic [2:0] Func3;
		logic [31:0] PC_Imm;
		logic [31:0] PC_4;
		logic [31:0] ImmG;
		logic [31:0] AluResult;
		logic [31:0] Mem_WData;
	} ex_mem_reg;
	
	// Pipeline Reg D
	typedef struct packed{
		// ControlUnit
		logic MemRead;
		logic MemToReg;		
		logic RegWrite;
		logic [1:0] RWSel;
		// Reg
		logic [31:0] PC; //for debug
		logic [31:0] Instr; //for debug
		logic [4:0] rd;
		logic [2:0] Func3;
		logic [31:0] PC_Imm;
		logic [31:0] PC_4;
		logic [31:0] ImmG;
		logic [31:0] AluResult;
		logic [31:0] MemRData;
	} mem_wb_reg;


endpackage