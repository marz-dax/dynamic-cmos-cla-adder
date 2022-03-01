# Schematic
>
> Keepers are implemented the same way as the dynamic 2-Input NOR gate.
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand2-dyn/schematic/nand2_dyn_sch.png" width="800">
>
# HSpice
>
> Transient output voltage waveforms.  
> x1[w/nodes a=b=0].  
> x4[w/nodes a=b=1].
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand2-dyn/hspice/nand2_dyn_trans.png" width="800">
>
> Transient output voltage waveforms (parasitic extraction).   
> Falling propagation delay of 49.9ps. Rising propagation delay of 172.0ps
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/d2b0d88ea8ae8259ddae1725250c8742ba98662b/standard-cells/nor4-dyn/hspice/nor4_dyn_trans_pex.png" width="800">
> 
> VTC (parasitic extraction).  
> Noise Margin LOW = .46 V | Noise Margin HIGH = 1.06 V
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand2-dyn/hspice/nand2_dyn_dc.png" width="800">
> 
# Layout
> Height = 90 lambda | Width = 45 lambda
>
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand2-dyn/layout/nand2_dyn_layout.png" width="800">