*inv_hskew_trans.sp
*bd68@njit.edu 3mar22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post
.option scale=90n

.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include 'inv_hskew.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vx x gnd PULSE 0 'SUPPLY' 'T/2' 0 0 'T/2' 'T' 

*INV_HSKEW X Y
X1 x y INV_HSKEW
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '2*T'
.end

