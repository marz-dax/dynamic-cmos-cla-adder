*nand4_dyn_trans.sp
*bd68@njit.edu 28feb22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.option scale=90n

.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include 'nand4_dyn.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
*static output inv
.subckt INV x y
.global vdd gnd
M1 y x vdd vdd p W=8 L=2
+ AS=40 PS=26 AD=40 PD=26
M2 y x gnd gnd n W=4 L=2
+ AS=20 PS=18 AD=20 PD=18
.ends

Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' 0 0 '(T/2)' 'T'

Va1 a1 gnd 0
Vb1 b1 gnd 'SUPPLY'
Vc1 c1 gnd 'SUPPLY'
Vd1 d1 gnd 'SUPPLY'
X1 x1 y1 INV

Va2 b2 gnd 'SUPPLY'
Vb2 a2 gnd 0
Vc2 c2 gnd 'SUPPLY'
Vd2 d2 gnd 'SUPPLY'
X2 x2 y2 INV

Va3 a3 gnd 'SUPPLY'
Vb3 b3 gnd 'SUPPLY'
Vc3 c3 gnd 0
Vd3 d3 gnd 'SUPPLY'
X3 x3 y3 INV

Va4 a4 gnd 'SUPPLY'
Vb4 b4 gnd 'SUPPLY'
Vc4 c4 gnd 0
Vd4 d4 gnd 'SUPPLY'
X4 x4 y4 INV

Va5 a5 gnd 'SUPPLY'
Vb5 b5 gnd 'SUPPLY'
Vc5 c5 gnd 'SUPPLY'
Vd5 d5 gnd 'SUPPLY'
X5 x5 y5 INV

*NAND4_DYN  CLK A B C D Y X
X6  clk a1 b1 c1 d1 y1 x1 NAND4_DYN
X7  clk a2 b2 c2 d2 y2 x2 NAND4_DYN
X8  clk a3 b3 c3 d3 y3 x3 NAND4_DYN
X9  clk a4 b4 c4 d4 y4 x4 NAND4_DYN
X10 clk a5 b5 c5 d5 y5 x5 NAND4_DYN
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

