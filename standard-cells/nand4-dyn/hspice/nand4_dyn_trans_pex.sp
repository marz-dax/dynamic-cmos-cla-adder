*nand4_dyn_trans.sp
*bd68@njit.edu 28feb22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param LAMBDA=90n
.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/nand4-dyn/nand4_dyn.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
*static output inv
.subckt INV x y P=8 N=4
.global vdd gnd 
M1 y x vdd vdd p W='P*LAMBDA' L='2*LAMBDA'
+ AS='(P*5)*LAMBDA' PS='(2*P+10)*LAMBDA' AD='(P*5)*LAMBDA' PD='(2*P+10)*LAMBDA'
M2 y x gnd gnd n W='N*LAMBDA' L='2*LAMBDA'
+ AS='(N*5)*LAMBDA' PS='(2*N+10)*LAMBDA' AD='(N*5)*LAMBDA' PD='(2*N+10)*LAMBDA'
.ends

Vdd  vdd gnd 'SUPPLY'
*Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' 0 0 '(T/2)' 'T'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' '0.1*T' '0.1*T' '.8*(T/2)' 'T'

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
Vc4 c4 gnd 'SUPPLY'
Vd4 d4 gnd 0
X4 x4 y4 INV

Va5 a5 gnd 'SUPPLY'
Vb5 b5 gnd 'SUPPLY'
Vc5 c5 gnd 'SUPPLY'
Vd5 d5 gnd 'SUPPLY'
X5 x5 y5 INV

*NAND4_DYN  CLK D C Y B A X GND VDD
X6   clk d1 c1 y1 b1 a1 x1 gnd vdd NAND4_DYN
X7   clk d2 c2 y2 b2 a2 x2 gnd vdd NAND4_DYN
X8   clk d3 c3 y3 b3 a3 x3 gnd vdd NAND4_DYN
X9   clk d4 c4 y4 b4 a4 x4 gnd vdd NAND4_DYN
X10  clk d5 c5 y5 b5 a5 x5 gnd vdd NAND4_DYN
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

