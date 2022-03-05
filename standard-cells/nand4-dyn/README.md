# Schematic
>
> Keepers are implemented the same way as the dynamic 2-Input NOR gate.  
> The n-channel devices require folding in order to maintain a standard cell height, and reduce the difusion capacitance at the output.   
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand4-dyn/schematic/nand4_dyn_sch.png" width="800">
>
# HSpice
>
> Transient output voltage waveforms.  
> x1[w/nodes a=b=c=d=0].  
> x4[w/nodes a=b=c=d=1].  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand4-dyn/hspice/nand4_dyn_trans.png" width="800">
>
> Transient output voltage waveforms (parasitic extraction).   
> Unloaded Output | Falling propagation delay of 90.4ps. Rising propagation delay of 291.0ps.  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand4-dyn/hspice/nand4_dyn_trans_pex2.png" width="800">
> 
> Rise Time of 285ps: requiring 43% of the precharge phase with a 1ns clock.   
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand4-dyn/hspice/nand4_dyn_trans_pex.png" width="800">
> 
> VTC (parasitic extraction).  
> Noise Margin LOW = .43 V | Noise Margin HIGH = 1.10 V  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand4-dyn/hspice/nand4_dyn_dc.png" width="800">
> 
# Layout
> Height = 90 lambda | Width = 153 lambda  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand4-dyn/layout/nand4_dyn_layout.png" width="800">
