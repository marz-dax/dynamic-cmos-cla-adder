*nor4_dyn_trans_pex.sp
*bd68@njit.edu 25feb22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/nor4_dyn/nor4_dyn.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' '.1*T' '.1*T' '.8*(T/2)' 'T'

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

X1 clk b1 y1 a1 c1 d1 x1 gnd vdd NOR4_DYN
X2 clk b2 y2 a2 c2 d2 x2 gnd vdd NOR4_DYN
X3 clk b3 y3 a3 c3 d3 x3 gnd vdd NOR4_DYN
X4 clk b4 y4 a4 c4 d4 x4 gnd vdd NOR4_DYN
X5 clk b5 y5 a5 c5 d5 x5 gnd vdd NOR4_DYN
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

