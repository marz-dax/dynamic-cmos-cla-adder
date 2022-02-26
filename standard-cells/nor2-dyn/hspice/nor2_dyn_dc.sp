*nor2_dyn_dc.sp
*bd68@njit.edu
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post

.param SUPPLY=1.8

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/nor2_dyn/nor2_dyn.pex.netlist'
*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd 'SUPPLY'
Va a gnd 0
Vb b gnd 0

X1 clk b y x a gnd vdd NOR2_DYN

*static output inv
M1 y x vdd vdd p W=7.2e-07 L=1.8e-07
M2 y x gnd gnd n W=3.6e-07 L=1.8e-07

*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.dc Va 0 'SUPPLY' 0.01
.PROBE x=deriv('v(x)')
.end

