*nor2_dyn_trans.sp
*bd68@njit.edu
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post

.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018.sp'
.include 'nor2_dyn.netlist'

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
X1 clk a1 b1 y1 x1 vdd gnd NOR2D
* a=1, b=0, y=1
X2 clk a2 b2 y2 x2 vdd gnd NOR2D
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

