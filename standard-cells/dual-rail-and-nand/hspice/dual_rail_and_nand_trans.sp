*dual_rail_and_nand_trans.sp
*bd68@njit.edu 26feb22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.option scale = 90n
.include 'dual_rail_and_nand.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' 0 0 '(T/2)' 'T'

Va1_l a1_l gnd 0
Vb1_l b1_l gnd 0
Va1_h a1_h gnd 'SUPPLY'
Vb1_h b1_h gnd 'SUPPLY'

Va2_l a2_l gnd 0
Vb2_l b2_l gnd 'SUPPLY'
Va2_h a2_h gnd 'SUPPLY'
Vb2_h b2_h gnd 0

Va3_l a3_l gnd 'SUPPLY'
Vb3_l b3_l gnd 0
Va3_h a3_h gnd 0
Vb3_h b3_h gnd 'SUPPLY'

Va4_l a4_l gnd 'SUPPLY'
Vb4_l b4_l gnd 'SUPPLY'
Va4_h a4_h gnd 0
Vb4_h b4_h gnd 0

*DUAL_RAIL_AND_NAND  CLK A_L B_L A_H B_H Y_H Y_L
X1 clk a1_l b1_l a1_h b1_h y1_h y1_l DUAL_RAIL_AND_NAND
X2 clk a2_l b2_l a2_h b2_h y2_h y2_l DUAL_RAIL_AND_NAND
X3 clk a3_l b3_l a3_h b3_h y3_h y3_l DUAL_RAIL_AND_NAND
X4 clk a4_l b4_l a4_h b4_h y4_h y4_l DUAL_RAIL_AND_NAND

*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

