*nand2_dyn_trans_pex.sp
*bd68@njit.edu 27feb22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/nand2-dyn/nand2_dyn.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
*static output inv
.subckt INV x y
.global vdd gnd
M1 y x vdd vdd p W='4*90n' L='2*90n'
M2 y x gnd gnd n W='4*90n' L='2*90n'
.ends

Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' '.1*T' '.1*T' '.8*(T/2)' 'T'

Va1 a1 gnd 0
Vb1 b1 gnd 0
X1 x1 y1 INV

Va2 b2 gnd 0
Vb2 a2 gnd 'SUPPLY'
X2 x2 y2 INV

Va3 a3 gnd 'SUPPLY'
Vb3 b3 gnd 0
X3 x3 y3 INV

Va4 a4 gnd 'SUPPLY'
Vb4 b4 gnd 'SUPPLY'
X4 x4 y4 INV

*NAND2_DYN  CLK B Y A X GND VDD
X5 clk b1 y1 a1 x1 gnd vdd  NAND2_DYN
X6 clk b2 y2 a2 x2 gnd vdd  NAND2_DYN
X7 clk b3 y3 a3 x3 gnd vdd  NAND2_DYN
X8 clk b4 y4 a4 x4 gnd vdd  NAND2_DYN
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

