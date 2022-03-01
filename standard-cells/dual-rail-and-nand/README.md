# Schematic
>
> A differential keeper is utilized. When one rail evaluates low, the opposite keeper turns on.  
> The keepers are also split for the reason as in the Dynamic 2-Input NOR gate.  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/b98f1184f7c8af464bbfbccba130b024da2a73d1/standard-cells/dual-rail-and-nand/schematic/dual_rail_and_nand_sch.png" width="800">
>
# HSpice
> 
> Transient output voltage waveforms.  
> y1_h & y1_l [w/nodes a_h=1, b_h=1, a_l=0, b_l=0].  
> y2_h & y2_l [w/nodes a_h=1, b_h=0, a_l=0, b_l=1].  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/b98f1184f7c8af464bbfbccba130b024da2a73d1/standard-cells/dual-rail-and-nand/hspice/dual_rail_and_nand_trans.png" width="800">
> 
> Transient output voltage waveforms (parasitic extraction).   
> y1_h & y1_l [w/nodes a_h=1, b_h=1, a_l=0, b_l=0].  
> Falling propagation delay of 256.0ps | Rising propagation delay of 102.0ps  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/71cd1d605386c93648f7bb15641db786b0bb9842/standard-cells/dual-rail-and-nand/hspice/dual_rail_and_nand_trans_pex2.png" width="800">
> 
# Layout
>
> Height = 90 lambda | Width = 89 lambda  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/71cd1d605386c93648f7bb15641db786b0bb9842/standard-cells/dual-rail-and-nand/layout/dual_rail_and_nand_layout.png" width="800">