*nand4_dyn_dc.sp
*bd68@njit.edu
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post

.param SUPPLY=1.8

.param P=8
.param N=4
.param LAMBDA=90n

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/nand4-dyn/nand4_dyn.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd 'SUPPLY'
Va a gnd 0
Vb b gnd 'SUPPLY'
Vc c gnd 'SUPPLY'
Vd d gnd 'SUPPLY'

*NAND4_DYN  CLK D C Y B A X GND VDD
X1 clk d c y b a x gnd vdd NAND4_DYN

*static output inv
M1 y x vdd vdd p W='P*LAMBDA' L='2*LAMBDA'
+ AS='(P*5)*LAMBDA' PS='(2*P+10)*LAMBDA' AD='(P*5)*LAMBDA' PD='(2*P+10)*LAMBDA'
M2 y x gnd gnd n W='N*LAMBDA' L='2*LAMBDA'
+ AS='(N*5)*LAMBDA' PS='(2*N+10)*LAMBDA' AD='(N*5)*LAMBDA' PD='(2*N+10)*LAMBDA'

*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.dc Va 0 'SUPPLY' 0.01
.PROBE x=deriv('v(x)')
.end

