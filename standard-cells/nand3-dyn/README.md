# Schematic
>
> Keepers are implemented the same way as the dynamic 2-Input NOR gate.
> The downfall of a Dynamic NAND gate compared to the Dynamic NOR is that we lose the constant n-channel device size as we increase the number of inputs. 
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand3-dyn/schematic/nand3_dyn_sch.png" width="800">
>
# HSpice
>
> Transient output voltage waveforms.  
> x4[w/nodes a=b=c=1].  
>  x1[w/nodes a=b=c=0].  
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand3-dyn/hspice/nand3_dyn_trans2.png" width="800">
>
> Transient output voltage waveforms (parasitic extraction).   
> Falling propagation delay of 68.4ps. Rising propagation delay of 184.0ps
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand3-dyn/hspice/nand3_dyn_trans_pex.png" width="800">
> 
> VTC (parasitic extraction).  
> Noise Margin LOW = .45 V | Noise Margin HIGH = 1.08 V
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand3-dyn/hspice/nand3_dyn_dc.png" width="800">
> 
# Layout
> Height = 90 lambda | Width = 45 lambda
>
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/84e8756930fa21ed6a13f6c21ddf7534c88607ca/standard-cells/nand3-dyn/layout/nand3_dyn_layout.png" width="800">