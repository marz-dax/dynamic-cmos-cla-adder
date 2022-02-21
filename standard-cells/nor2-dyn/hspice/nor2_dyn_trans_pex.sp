*nor2_dyn_trans_pex.sp
*bd68@njit.edu
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post

.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/nor2_dyn/nor2_dyn.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' 'T/2' 'T*0.1' 'T*0.1' '0.8*(T/2)' 'T'
Va1 a1 gnd 'SUPPLY'
Vb1 b1 gnd 0
Va2 a2 gnd 0
Vb2 b2 gnd 0
Vy1 y1 gnd 'SUPPLY'
Vy2 y2 gnd 0
* a=1, b=0, y=1
X1 clk b1 y1 x1 a1 gnd vdd NOR2_DYN
* a=0, b=0, y=0
X2 clk b2 y2 x2 a2 gnd vdd NOR2_DYN
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

