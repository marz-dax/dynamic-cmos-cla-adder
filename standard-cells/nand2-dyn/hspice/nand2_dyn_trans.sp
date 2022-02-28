*nand2_dyn_trans.sp
*bd68@njit.edu 27feb22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.option scale=90n
.include 'nand2_dyn.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
*static output inv
.subckt INV x y
.global vdd gnd
M1 y x vdd vdd p W=8 L=2
M2 y x gnd gnd n W=4 L=2
.ends

Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' 0 0 '(T/2)' 'T'

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

*NAND2_DYN  CLK A B Y X
X5 clk a1 b1 y1 x1 NAND2_DYN
X6 clk a2 b2 y2 x2 NAND2_DYN
X7 clk a3 b3 y3 x3 NAND2_DYN
X8 clk a4 b4 y4 x4 NAND2_DYN
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

