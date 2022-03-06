*and3_dom_fo4_pex.sp
*bd68@njit.edu 5mar22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.param H=4
.param SUPPLY=1.8
.param T=2ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/and3-dom/and3_dom.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vclk clk gnd PULSE 0 'SUPPLY' '.25*T' 'T*0.1' 'T*0.1' '0.8*(T/2)' 'T'
Va a1 gnd 'SUPPLY'
Vb b  gnd 'SUPPLY'
Vc c  gnd 'SUPPLY'

*AND3_DOM  CLK C B A Y GND VDD
X1 clk c b a1 y1 gnd vdd AND3_DOM 
X2 clk c b y1 y2 gnd vdd AND3_DOM M='H'
X3 clk c b y2 y3 gnd vdd AND3_DOM M='H**2'
X4 clk c b y3 y4 gnd vdd AND3_DOM M='H**3'
X5 clk c b y4 y5 gnd vdd AND3_DOM M='H**4'
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' 'T+(.25*T)'
.end

