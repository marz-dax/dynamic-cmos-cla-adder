# Schematic
>
> Keepers are implemented the same way as the dynamic 2-Input NOR gate.  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/50c9de0080f1d7235a2fab315b4a229ecd22ff2d/standard-cells/nor4-dyn/schematic/nor4_dyn_sch.png" width="800">
>
# HSpice
>
> Transient output voltage waveforms.  
> x1[w/nodes a=1, b=c=d=0, y=1].  
> x5[w/nodes a=b=c=d=0, y=0].  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/50c9de0080f1d7235a2fab315b4a229ecd22ff2d/standard-cells/nor4-dyn/hspice/nor4_dyn_trans.png" width="800">
>
> Transient output voltage waveforms (parasitic extraction).   
> Falling propagation delay of 59.1ps | Rising propagation delay of 111.0ps  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/d2b0d88ea8ae8259ddae1725250c8742ba98662b/standard-cells/nor4-dyn/hspice/nor4_dyn_trans_pex.png" width="800">
> 
> VTC (parasitic extraction).  
> Noise Margin LOW = .50 V. Noise Margin HIGH = 1.01 V  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/cfdefaeaf3453df97635f32967d56953fce392f8/standard-cells/nor4-dyn/hspice/nor4_dyn_dc.png" width="800">
> 
# Layout
>
> Height = 90 lambda | Width = 64 lambda  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/cfdefaeaf3453df97635f32967d56953fce392f8/standard-cells/nor4-dyn/layout/nor4_dyn_layout.png" width="800">