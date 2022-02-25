# HSpice
>
> Netlist
> 
> ```
> .option scale=90n
> .param K_LEN=4
>
> .subckt NOR2D clk a b y x vdd vss
> *pullup network
> M1 x  clk vdd  vdd CMOSP W=4 L=2
> M2 d2 vss vdd  vdd CMOSP W=4 L='K_LEN-2'
> M3 x  y  d2    vdd CMOSP W=4 L=2
> *pulldown network
> M4 x  a   d6  vss CMOSN W=8 L=2
> M5 x  b   d6  vss CMOSN W=8 L=2
> M6 d6 clk vss vss CMOSN W=8 L=2
> .ends
> ```
> 
> Transient output voltage waveforms. x1{w/nodes a=1 b=0 y=1]} x2{w/nodes a=0 b=0 y=0]}.
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/d9610a9983a75f9d7ac80f93380ec7d4152fe163/standard-cells/nor2-dyn/hspice/nor2_dyn_trans.png" width="800">
> 
> Transient output voltage waveforms (parasitic extraction). 
> Falling propagation delay of 44.5ps. Rising propagation delay of 85.4ps
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/d9610a9983a75f9d7ac80f93380ec7d4152fe163/standard-cells/nor2-dyn/hspice/nor2_dyn_trans_pex.png" width="800">
> 
# Schematic
> Keepers are used to hold the output at the correct level when it would otherwise float.
> 
> Increasing the length of the keeper will make it weaker than a minimum-sized transistor. 
> 
> A long keeper will increase the capacitive load on the input node Y, however by splitting the keeper this is avoided. 
> 
> note: MP2 should be W=4 and L=4. The effective length is 6
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/f2d99f658f488e8e83a77c1b8d590519ab6af029/standard-cells/nor2-dyn/schematic/nor2_dyn_sch.png" width="800">
>
# Layout
>
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/f2d99f658f488e8e83a77c1b8d590519ab6af029/standard-cells/nor2-dyn/layout/nor2_dyn_layout.png" width="800">
