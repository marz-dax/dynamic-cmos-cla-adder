*inv_hskew_trans_pex.sp
*bd68@njit.edu 3mar22
*------------------------------------------------------------------------
* Parameters and Models
*------------------------------------------------------------------------
.option post

.param SUPPLY=1.8

.temp 70

.include '../../models/tsmc_018_pex.sp'
.include '../../pex/inv-hskew/inv_hskew.pex.netlist'

*------------------------------------------------------------------------
* Simulation Netlist 
*------------------------------------------------------------------------
Vdd  vdd gnd 'SUPPLY'
Vx x gnd 0

*INV_HSKEW X Y
X1 x y gnd vdd INV_HSKEW
*------------------------------------------------------------------------
* Stimulus 
*------------------------------------------------------------------------
.dc Vx 0 'SUPPLY' 0.01
.PROBE y=deriv('v(y)')
.end

