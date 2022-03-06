# Schematic
>
> A differential keeper is utilized. When one rail evaluates low, the opposite keeper turns on.  
> The keepers are also split for the same reason as in the Dynamic 2-Input NOR gate.  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/b98f1184f7c8af464bbfbccba130b024da2a73d1/standard-cells/dual-rail-and-nand/schematic/dual_rail_and_nand_sch.png" width="800">
>
# HSpice
> 
> Transient output voltage waveforms.  
> y1_h & y1_l [w/nodes a_h=1, b_h=1, a_l=0, b_l=0].  
> y2_h & y2_l [w/nodes a_h=1, b_h=0, a_l=0, b_l=1].  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/b98f1184f7c8af464bbfbccba130b024da2a73d1/standard-cells/dual-rail-and-nand/hspice/dual_rail_and_nand_trans.png" width="800">
> 
> FO4 Delay | HIGH Output (parasitic extraction).  
y3_h is the output of the DUT with a load 4x larger than the gate.  
y2_h is the output of a pair of FO4 gates.   
> Falling propagation delay of 199ps | Rising propagation delay of 418ps  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/095779e9928753a9e5c5a4dff1bf0159bd0fa376/standard-cells/dual-rail-and-nand/hspice/drail_and_nand_fo4_pex.png" width="800">
> 
> FO4 Delay | LOW Output (parasitic extraction).  
y3_l is the output of the DUT with a load 4x larger than the gate.  
y2_l is the output of a pair of FO4 gates.   
> Falling propagation delay of 319ps | Rising propagation delay of 138ps  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/095779e9928753a9e5c5a4dff1bf0159bd0fa376/standard-cells/dual-rail-and-nand/hspice/drail_and_nand_fo4_pex_LOW.png" width="800">
> 
# Layout
>
> Height = 90 lambda | Width = 89 lambda  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/71cd1d605386c93648f7bb15641db786b0bb9842/standard-cells/dual-rail-and-nand/layout/dual_rail_and_nand_layout.png" width="800">