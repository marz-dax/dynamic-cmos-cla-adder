*inv_hskew_trans_pex.sp
*bd68@njit.edu 3mar22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post

.param SUPPLY=1.8
.param T=1ns

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/inv-hskew/inv_hskew.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vx x gnd PULSE 0 'SUPPLY' 'T/2' '.1*T' '.1*T' '.8*T/2' 'T' 

*INV_HSKEW X Y
X1 x y gnd vdd INV_HSKEW
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.tran 'T/100' '1.5*T'
.end

