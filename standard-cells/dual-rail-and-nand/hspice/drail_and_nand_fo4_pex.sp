*drail_and_nand_fo4_pex.sp
*bd68@njit.edu 5mar22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param H=4
.param SUPPLY=1.8
.param T=3ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/dual-rail-and-nand/dual_rail_and_nand.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd   vdd  gnd 'SUPPLY'
Vclk  clk  gnd PULSE 0 'SUPPLY' '.25*T' 'T*0.1' 'T*0.1' '0.8*(T/2)' 'T'

Va1_l a1_l gnd 0
Vb_l  b_l  gnd 0

Va1_h a1_h gnd 'SUPPLY'
Vb_h  b_h  gnd 'SUPPLY'

*DUAL_RAIL_AND_NAND  Y_L CLK A_L B_L A_H B_H Y_H GND VDD
X1 Y1_L CLK A1_L B_L A1_H B_H Y1_H gnd vdd DUAL_RAIL_AND_NAND 
X2 Y2_L CLK Y1_L B_L Y1_H B_H Y2_H gnd vdd DUAL_RAIL_AND_NAND M='H' 
X3 Y3_L CLK Y2_L B_L Y2_H B_H Y3_H gnd vdd DUAL_RAIL_AND_NAND M='H**2'
X4 Y4_L CLK Y3_L B_L Y3_H B_H Y4_H gnd vdd DUAL_RAIL_AND_NAND M='H**3'
X5 Y5_L CLK Y4_L B_L Y4_H B_H Y5_H gnd vdd DUAL_RAIL_AND_NAND M='H**4'
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' 'T+(.25*T)'
.end

