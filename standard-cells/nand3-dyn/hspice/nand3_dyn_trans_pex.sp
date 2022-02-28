*nand3_dyn_trans_pex.sp
*bd68@njit.edu 28feb22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/nand3-dyn/nand3_dyn.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
*static output inv
.subckt INV x y vdd gnd
M1 y x vdd vdd p W=7.2e-7 L=1.8e-7
+ AS=40 PS=26 AD=40 PD=26
M2 y x gnd gnd n W=3.6e-7 L=1.8e-7
+ AS=20 PS=18 AD=20 PD=18
.ends

Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' '.1*T' '.1*T' '.8*(T/2)' 'T'
*Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' 0 0 '(T/2)' 'T'

Va1 a1 gnd 0
Vb1 b1 gnd 'SUPPLY'
Vc1 c1 gnd 'SUPPLY'
X1 x1 y1 vdd gnd INV

Va2 b2 gnd 'SUPPLY'
Vb2 a2 gnd 0
Vc2 c2 gnd 'SUPPLY'
X2 x2 y2 vdd gnd INV

Va3 a3 gnd 'SUPPLY'
Vb3 b3 gnd 'SUPPLY'
Vc3 c3 gnd 0
X3 x3 y3 vdd gnd INV

Va4 a4 gnd 'SUPPLY'
Vb4 b4 gnd 'SUPPLY'
Vc4 c4 gnd 'SUPPLY'
X4 x4 y4 vdd gnd INV
*Vy4 y4 gnd 'SUPPLY'

*NAND3_DYN  CLK C Y B A X GND VDD
X5 clk c1 y1 b1 a1 x1 GND VDD NAND3_DYN
X6 clk c2 y2 b2 a2 x2 GND VDD NAND3_DYN
X7 clk c3 y3 b3 a3 x3 GND VDD NAND3_DYN
X8 clk c4 y4 b4 a4 x4 GND VDD NAND3_DYN
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

