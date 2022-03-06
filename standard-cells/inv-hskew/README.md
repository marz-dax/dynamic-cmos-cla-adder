# Schematic
>
> The non-critical path was made half the size of an unit transistor. DRC requires a minimum transistor width of 3 lambda so MIN W/L = 6/2 for the high skew inverter.  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/58d9bc64502856923d0a4073e317b10e22199994/standard-cells/inv-hskew/schematic/inv_hskew_sch.png" width="800">
>
# HSpice
>
> Transient output voltage waveforms (parasitic extraction).   
> Unloaded Output | Falling propagation delay of 26.8ps | Rising propagation delay of 30.8ps  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/58d9bc64502856923d0a4073e317b10e22199994/standard-cells/inv-hskew/hspice/inv_hskew_trans_pex.png" width="800">
> 
> VTC (parasitic extraction).  
> Noise Margin LOW = .62 V. Noise Margin HIGH = .64 V  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/58d9bc64502856923d0a4073e317b10e22199994/standard-cells/inv-hskew/hspice/inv_hskew_dc.png" width="800">
> 
# Layout
>
> Height = 90 lambda | Width = 32 lambda  
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/58d9bc64502856923d0a4073e317b10e22199994/standard-cells/inv-hskew/layout/inv_hskew_layout.png" width="800">