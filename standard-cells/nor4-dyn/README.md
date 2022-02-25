# HSpice
>
> Netlist
> 
> ```
> .option scale=90n
> .param K_LEN=4
>
> .subckt NOR4DYN clk a b c d y x vdd vss
> *pullup network
> M1 x  clk vdd  vdd CMOSP W=4 L=2
> M2 d2 vss vdd  vdd CMOSP W=4 L='K_LEN-2'
> M3 x  y  d2    vdd CMOSP W=4 L=2
> *pulldown network
> M4 x  a   d6  vss CMOSN W=8 L=2
> M5 x  b   d6  vss CMOSN W=8 L=2
> M6 x  c   d6  vss CMOSN W=8 L=2
> M7 x  d   d6  vss CMOSN W=8 L=2
> M8 d6 clk vss vss CMOSN W=8 L=2
> .ends
> ```
> 
> Transient output voltage waveforms. 
>
> x1{w/nodes a=1, b=c=d=0, y=1]}
> x5{w/nodes a=b=c=d=0, y=0]}.
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/d9610a9983a75f9d7ac80f93380ec7d4152fe163/standard-cells/nor4-dyn/hspice/nor4_dyn_trans.png" width="800">
>
# Schematic
> Keepers are implemented the same way as the dynamic 2-input NOR gate.
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/f2d99f658f488e8e83a77c1b8d590519ab6af029/standard-cells/nor4-dyn/nor4_dyn_sch.png" width="800">
>