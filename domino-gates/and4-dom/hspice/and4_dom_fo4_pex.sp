*and4_dom_fo4_pex.sp
*bd68@njit.edu 5mar22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param H=4
.param SUPPLY=1.8
.param T=3ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/and4-dom/and4_dom.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' '.25*T' 'T*0.1' 'T*0.1' '0.8*(T/2)' 'T'
Va a1 gnd 'SUPPLY'
Vb b  gnd 'SUPPLY'
Vc c  gnd 'SUPPLY'
Vd d  gnd 'SUPPLY'

*AND4_DOM  CLK D C B A Y GND VDD
X1 clk d c b a1 y1 gnd vdd AND4_DOM 
X2 clk d c b y1 y2 gnd vdd AND4_DOM M='H'
X3 clk d c b y2 y3 gnd vdd AND4_DOM M='H**2'
X4 clk d c b y3 y4 gnd vdd AND4_DOM M='H**3'
X5 clk d c b y4 y5 gnd vdd AND4_DOM M='H**4'
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' 'T+(.25*T)'
.end

