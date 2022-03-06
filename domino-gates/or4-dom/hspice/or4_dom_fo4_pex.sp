*or4_dom_fo4_pex.sp
*bd68@njit.edu 3mar22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param H=4
.param SUPPLY=1.8
.param T=2ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/or4-dom/or4_dom.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' '.25*T' 'T*0.1' 'T*0.1' '0.8*(T/2)' 'T'
Va a1 gnd 'SUPPLY'
Vb b gnd 0
Vc c gnd 0
Vd d gnd 0


*OR4_DOM  CLK B A C D Y GND VDD
X1 clk b a1 c d y1 gnd vdd OR4_DOM 
X2 clk b y1 c d y2 gnd vdd OR4_DOM M='H'
X3 clk b y2 c d y3 gnd vdd OR4_DOM M='H**2'
X4 clk b y3 c d y4 gnd vdd OR4_DOM M='H**3'
X5 clk b y4 c d y5 gnd vdd OR4_DOM M='H**4'
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' 'T+(.25*T)'
.end

