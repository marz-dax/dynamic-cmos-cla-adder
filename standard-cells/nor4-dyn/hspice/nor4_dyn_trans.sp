*nor4_dyn_trans.sp
*bd68@njit.edu 24feb22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018.sp'
.include 'nor4_dyn.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' 0 0 '(T/2)' 'T'

Va1 a1 gnd 'SUPPLY'
Vb1 b1 gnd 0
Vc1 c1 gnd 0
Vd1 d1 gnd 0
Vy1 y1 gnd 'SUPPLY'

Va2 b2 gnd 'SUPPLY'
Vb2 a2 gnd 0
Vc2 c2 gnd 0
Vd2 d2 gnd 0
Vy2 y2 gnd 'SUPPLY'

Va3 c3 gnd 'SUPPLY'
Vb3 b3 gnd 0
Vc3 a3 gnd 0
Vd3 d3 gnd 0
Vy3 y3 gnd 'SUPPLY'

Va4 d4 gnd 'SUPPLY'
Vb4 b4 gnd 0
Vc4 c4 gnd 0
Vd4 a4 gnd 0
Vy4 y4 gnd 'SUPPLY'

Va5 a5 gnd 0
Vb5 b5 gnd 0
Vc5 c5 gnd 0
Vd5 d5 gnd 0
Vy5 y5 gnd 0

X1 clk a1 b1 c1 d1 y1 x1 vdd gnd NOR4DYN
X2 clk a2 b2 c2 d2 y2 x2 vdd gnd NOR4DYN
X3 clk a3 b3 c3 d3 y3 x3 vdd gnd NOR4DYN
X4 clk a4 b4 c4 d4 y4 x4 vdd gnd NOR4DYN
X5 clk a5 b5 c5 d5 y5 x5 vdd gnd NOR4DYN
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

