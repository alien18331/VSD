wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/ms108/alien108/alien/VSD/VSD_2020_HW2/N27081095/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvExpandBus -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvResizeWindow -win $_nWave1 0 23 1920 1017
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvExpandBus -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvExpandBus -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvExpandBus -win $_nWave1 {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 13)}
wvScrollUp -win $_nWave1 12
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoom -win $_nWave1 0.000000 876426.457514
wvZoom -win $_nWave1 0.000000 34963.821443
wvZoomOut -win $_nWave1
wvSelectGroup -win $_nWave1 {G3}
wvRenameGroup -win $_nWave1 {G3} {B}
wvSelectGroup -win $_nWave1 {G2}
wvRenameGroup -win $_nWave1 {G2} {A}
wvSelectGroup -win $_nWave1 {G4}
wvRenameGroup -win $_nWave1 {G4} {C}
wvSelectGroup -win $_nWave1 {G5}
wvRenameGroup -win $_nWave1 {G5} {D}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 4
wvCollapseGroup -win $_nWave1 "B"
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCollapseGroup -win $_nWave1 "A"
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCollapseGroup -win $_nWave1 "C"
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCollapseGroup -win $_nWave1 "D"
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectGroup -win $_nWave1 {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvSelectGroup -win $_nWave1 {G6}
wvSelectGroup -win $_nWave1 {C}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "A"
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "A"
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G6}
wvRenameGroup -win $_nWave1 {G6} {AR}
wvExpandGroup -win $_nWave1 "A"
wvSelectGroup -win $_nWave1 {AR}
wvSetCursor -win $_nWave1 3394.094369 -snap {("AR" 3)}
wvSelectGroup -win $_nWave1 {G7}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetPosition -win $_nWave1 {("G7" 1)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2650.183274 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 3394.094369 -snap {("A" 1)}
wvSetCursor -win $_nWave1 5253.872105 -snap {("A" 1)}
wvSetCursor -win $_nWave1 3580.072142 -snap {("A" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "AR" 3 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvSetPosition -win $_nWave1 {("G7" 2)}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "G7" 2 )} 
wvSetPosition -win $_nWave1 {("G7" 2)}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
}
wvSelectSignal -win $_nWave1 {( "G7" 2 )} 
wvSetPosition -win $_nWave1 {("G7" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 5300.366549 -snap {("G7" 1)}
wvSetCursor -win $_nWave1 3440.588812 -snap {("G7" 1)}
wvSelectGroup -win $_nWave1 {G8}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvSetPosition -win $_nWave1 {("G8" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2650.183274 -snap {("G7" 1)}
wvSelectGroup -win $_nWave1 {G8}
wvSetPosition -win $_nWave1 {("G7" 2)}
wvSelectGroup -win $_nWave1 {G8}
wvSetPosition -win $_nWave1 {("G8" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvSetPosition -win $_nWave1 {("G8" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
}
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvSetPosition -win $_nWave1 {("G8" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvSetCursor -win $_nWave1 3208.116595 -snap {("G8" 2)}
wvSetCursor -win $_nWave1 2603.688831 -snap {("G7" 1)}
wvSelectGroup -win $_nWave1 {G9}
wvSetPosition -win $_nWave1 {("G9" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1/i_SRAM"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G9" 3)}
wvSetPosition -win $_nWave1 {("G9" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G9" 3 )} 
wvSetPosition -win $_nWave1 {("G9" 3)}
wvSetPosition -win $_nWave1 {("G9" 3)}
wvSetPosition -win $_nWave1 {("G9" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G9" \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G9" 3 )} 
wvSetPosition -win $_nWave1 {("G9" 3)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G9}
wvRenameGroup -win $_nWave1 {G9} {R}
wvSelectSignal -win $_nWave1 {( "R" 1 )} 
wvSetPosition -win $_nWave1 {("R" 1)}
wvSetPosition -win $_nWave1 {("R" 2)}
wvSetPosition -win $_nWave1 {("R" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("R" 3)}
wvSetCursor -win $_nWave1 2603.688831 -snap {("R" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSelectSignal -win $_nWave1 {( "R" 1 )} 
wvSetPosition -win $_nWave1 {("R" 4)}
wvSetPosition -win $_nWave1 {("R" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"R" \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/OE} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "R" 4 )} 
wvSetPosition -win $_nWave1 {("R" 4)}
wvSetPosition -win $_nWave1 {("R" 4)}
wvSetPosition -win $_nWave1 {("R" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"R" \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/OE} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "R" 4 )} 
wvSetPosition -win $_nWave1 {("R" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "R" 4 )} 
wvSetPosition -win $_nWave1 {("R" 3)}
wvSetPosition -win $_nWave1 {("R" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("R" 2)}
wvSetPosition -win $_nWave1 {("R" 3)}
wvSetCursor -win $_nWave1 3440.588812 -snap {("R" 3)}
wvSelectGroup -win $_nWave1 {R}
wvRenameGroup -win $_nWave1 {R} {master0}
wvSelectGroup -win $_nWave1 {master0}
wvSetPosition -win $_nWave1 {("master0" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("master0" 5)}
wvSetPosition -win $_nWave1 {("master0" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "master0" 4 5 )} 
wvSetPosition -win $_nWave1 {("master0" 5)}
wvSetPosition -win $_nWave1 {("master0" 5)}
wvSetPosition -win $_nWave1 {("master0" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/AWVALID} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "master0" 4 5 )} 
wvSetPosition -win $_nWave1 {("master0" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "master0" 1 )} 
wvSelectSignal -win $_nWave1 {( "master0" 3 )} 
wvSelectSignal -win $_nWave1 {( "master0" 3 )} 
wvSelectSignal -win $_nWave1 {( "master0" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("master0" 5)}
wvSetPosition -win $_nWave1 {("master0" 4)}
wvSelectSignal -win $_nWave1 {( "master0" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("master0" 4)}
wvSetPosition -win $_nWave1 {("master0" 3)}
wvSelectSignal -win $_nWave1 {( "master0" 5 )} 
wvSelectSignal -win $_nWave1 {( "master0" 6 )} 
wvSetPosition -win $_nWave1 {("master0" 6)}
wvSetPosition -win $_nWave1 {("master0" 4)}
wvSetPosition -win $_nWave1 {("master0" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("master0" 3)}
wvSetPosition -win $_nWave1 {("master0" 4)}
wvSelectSignal -win $_nWave1 {( "master0" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvSelectSignal -win $_nWave1 {( "master0" 7 )} 
wvSetPosition -win $_nWave1 {("master0" 7)}
wvSetPosition -win $_nWave1 {("master0" 11)}
wvSetPosition -win $_nWave1 {("master0" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "master0" 11 )} 
wvSetPosition -win $_nWave1 {("master0" 11)}
wvSetPosition -win $_nWave1 {("master0" 11)}
wvSetPosition -win $_nWave1 {("master0" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
{/top_tb/TOP/IM1/RVALID} \
{/top_tb/TOP/IM1/RREADY} \
{/top_tb/TOP/IM1/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "master0" 11 )} 
wvSetPosition -win $_nWave1 {("master0" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "master0" 9 )} 
wvSelectSignal -win $_nWave1 {( "master0" 1 )} 
wvSelectSignal -win $_nWave1 {( "master0" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} \
           
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("master0" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvSetPosition -win $_nWave1 {("master0" 7)}
wvSetPosition -win $_nWave1 {("master0" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "master0" 7 )} 
wvSetPosition -win $_nWave1 {("master0" 7)}
wvSetPosition -win $_nWave1 {("master0" 7)}
wvSetPosition -win $_nWave1 {("master0" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"AR" \
{/top_tb/TOP/IM1/ARVALID} \
{/top_tb/TOP/IM1/ARREADY} \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "master0" 7 )} 
wvSetPosition -win $_nWave1 {("master0" 7)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "master0" 4 )} 
wvSelectSignal -win $_nWave1 {( "master0" 3 )} 
wvSetCursor -win $_nWave1 2696.677718 -snap {("G7" 1)}
wvSelectGroup -win $_nWave1 {AR}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("master0" 7)}
wvSelectGroup -win $_nWave1 {G7}
wvSetPosition -win $_nWave1 {("G7" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvSetPosition -win $_nWave1 {("G7" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G7" 1 )} 
wvSetPosition -win $_nWave1 {("G7" 1)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1441.327746 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 2557.194387 -snap {("G1" 1)}
wvSelectGroup -win $_nWave1 {G10}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G10" 3)}
wvSetPosition -win $_nWave1 {("G10" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 3 )} 
wvSetPosition -win $_nWave1 {("G10" 3)}
wvSetPosition -win $_nWave1 {("G10" 3)}
wvSetPosition -win $_nWave1 {("G10" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/top_tb/TOP/IM1/ARADDR\[31:0\]} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 3 )} 
wvSetPosition -win $_nWave1 {("G10" 3)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G10}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("master0" 7)}
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectGroup -win $_nWave1 {G11}
wvSetPosition -win $_nWave1 {("G11" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G11" 2)}
wvSetPosition -win $_nWave1 {("G11" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G11" 2 )} 
wvSetPosition -win $_nWave1 {("G11" 2)}
wvSetPosition -win $_nWave1 {("G11" 2)}
wvSetPosition -win $_nWave1 {("G11" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "G11" 2 )} 
wvSetPosition -win $_nWave1 {("G11" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1487.822189 -snap {("G11" 2)}
wvSetCursor -win $_nWave1 3487.083256 -snap {("G11" 2)}
wvSetCursor -win $_nWave1 5393.355435 -snap {("G11" 2)}
wvSetCursor -win $_nWave1 1208.855529 -snap {("G11" 2)}
wvSetCursor -win $_nWave1 3580.072142 -snap {("G11" 2)}
wvSelectGroup -win $_nWave1 {G11}
wvRenameGroup -win $_nWave1 {G11} {IM}
wvSetCursor -win $_nWave1 1348.338859 -snap {("IM" 1)}
wvSelectGroup -win $_nWave1 {IM}
wvSetPosition -win $_nWave1 {("IM" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
}
wvSelectSignal -win $_nWave1 {( "IM" 1 )} 
wvSetPosition -win $_nWave1 {("IM" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 2 )} 
wvSetPosition -win $_nWave1 {("IM" 2)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSetPosition -win $_nWave1 {("IM" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("IM" 0)}
wvSetPosition -win $_nWave1 {("IM" 1)}
wvSelectSignal -win $_nWave1 {( "IM" 2 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2417.711057 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 3394.094369 -snap {("G8" 3)}
wvSetCursor -win $_nWave1 2510.699944 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 3347.599925 -snap {("G8" 3)}
wvSelectSignal -win $_nWave1 {( "G8" 2 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1580.811076 -snap {("G7" 2)}
wvSetCursor -win $_nWave1 5765.310983 -snap {("G8" 3)}
wvSetCursor -win $_nWave1 1441.327746 -snap {("master0" 3)}
wvSetCursor -win $_nWave1 2417.711057 -snap {("master0" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4230.994350 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 6416.233190 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 1534.316632 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 2417.711057 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 3580.072142 -snap {("IM" 2)}
wvSetCursor -win $_nWave1 4277.488794 -snap {("IM" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2510.699944 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 4556.455454 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 1534.316632 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 2510.699944 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 4370.477680 -snap {("IM" 3)}
wvSelectSignal -win $_nWave1 {( "A" 2 )} 
wvSelectGroup -win $_nWave1 {G10}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/ImmUnit"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1/i_SRAM"
wvSetCursor -win $_nWave1 3254.611039 -snap {("IM" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSetPosition -win $_nWave1 {("IM" 3)}
wvExpandBus -win $_nWave1 {("IM" 3)}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSetPosition -win $_nWave1 {("IM" 3)}
wvCollapseBus -win $_nWave1 {("IM" 3)}
wvSetPosition -win $_nWave1 {("IM" 3)}
wvSetPosition -win $_nWave1 {("G10" 0)}
wvSetCursor -win $_nWave1 6044.277643 -snap {("G10" 0)}
wvSelectSignal -win $_nWave1 {( "IM" 2 )} 
wvSelectSignal -win $_nWave1 {( "IM" 3 )} 
wvSetCursor -win $_nWave1 4556.455454 -snap {("IM" 3)}
wvSetCursor -win $_nWave1 2417.711057 -snap {("IM" 3)}
wvSelectGroup -win $_nWave1 {G10}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/i_CPU/DP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/i_CPU_wrapper/master0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1/i_SRAM"
wvSetPosition -win $_nWave1 {("G10" 1)}
wvSetPosition -win $_nWave1 {("G10" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/top_tb/TOP/IM1/i_SRAM/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetPosition -win $_nWave1 {("G10" 1)}
wvSetPosition -win $_nWave1 {("G10" 1)}
wvSetPosition -win $_nWave1 {("G10" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"A" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/A.IF_Instr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"B" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUSrc} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Branch} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ALUOp\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.JalrSel} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS1\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RS2\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD1\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.RD2\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.Func7\[6:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/B.ImmG\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "B"
wvAddSignal -win $_nWave1 -group {"C" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/C.Mem_WData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "C"
wvAddSignal -win $_nWave1 -group {"D" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRead} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemToReg} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RegWrite} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.RWSel\[1:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Instr\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.rd\[4:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.Func3\[2:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_Imm\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.PC_4\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.ImmG\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.AluResult\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/D.MemRData\[31:0\]} \
}
wvCollapseGroup -win $_nWave1 "D"
wvAddSignal -win $_nWave1 -group {"G7" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/start} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/IM_Adrs\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/IM_A\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G8" \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/IM_Stall} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/CurPC\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/i_CPU/DP/NextPC\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"master0" \
{/top_tb/TOP/i_CPU_wrapper/master0/ARVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/ARADDR\[31:0\]} \
{/top_tb/TOP/i_CPU_wrapper/master0/OE} \
{/top_tb/TOP/i_CPU_wrapper/master0/RVALID} \
{/top_tb/TOP/i_CPU_wrapper/master0/RREADY} \
{/top_tb/TOP/i_CPU_wrapper/master0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"IM" \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G10" \
{/top_tb/TOP/IM1/i_SRAM/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G11" \
}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetPosition -win $_nWave1 {("G10" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 5439.849879 -snap {("G11" 0)}
wvSetCursor -win $_nWave1 26036.888309 -snap {("master0" 3)}
wvSetCursor -win $_nWave1 26315.854969 -snap {("master0" 3)}
wvSetCursor -win $_nWave1 7718.077606 -snap {("G11" 0)}
wvSetCursor -win $_nWave1 3533.577699 -snap {("G10" 0)}
wvSetCursor -win $_nWave1 4323.983237 -snap {("G10" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvExpandBus -win $_nWave1 {("G10" 1)}
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSelectSignal -win $_nWave1 {( "G10" 1 )} 
wvSetPosition -win $_nWave1 {("G10" 1)}
wvCollapseBus -win $_nWave1 {("G10" 1)}
wvSetPosition -win $_nWave1 {("G10" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 65138.715216 -snap {("A" 2)}
wvSaveSignal -win $_nWave1 \
           "/home/user2/ms108/alien108/alien/VSD/VSD_2020_HW2/signal.rc"
