# Schematic
>
> Keepers are used to hold the output at the correct level when it would otherwise float.  
> The effective length of the keeper is increased to make it weaker than a minimum-sized transistor.  
> The keepers are split to reduce the capacitive load on the input node Y.
> note: MP2 should be W=4 and L=4. The effective length is 4  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/f2d99f658f488e8e83a77c1b8d590519ab6af029/standard-cells/nor2-dyn/schematic/nor2_dyn_sch.png" width="800">
>
# HSpice
> 
> Transient output voltage waveforms.  
> x1[w/nodes a=1 b=0 y=1].  
> x2[w/nodes a=0 b=0 y=0].  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/d9610a9983a75f9d7ac80f93380ec7d4152fe163/standard-cells/nor2-dyn/hspice/nor2_dyn_trans.png" width="800">
> 
> Transient output voltage waveforms (parasitic extraction).  
Falling propagation delay of 44.5ps | Rising propagation delay of 85.4ps  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/d9610a9983a75f9d7ac80f93380ec7d4152fe163/standard-cells/nor2-dyn/hspice/nor2_dyn_trans_pex.png" width="800">
> 
> VTC (parasitic extraction).  
> Noise Margin LOW = .48 V | Noise Margin HIGH = 1.04 V  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/e4f01d1bea20cecfa7ab043177d7a40bf2c98f14/standard-cells/nor2-dyn/hspice/nor2_dyn_dc.png" width="800">
> 
# Layout
>
> Height = 90 lambda | Width = 44 lambda  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/e4f01d1bea20cecfa7ab043177d7a40bf2c98f14/standard-cells/nor2-dyn/layout/nor2_dyn_layout.png" width="800">