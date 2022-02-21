# HSpice
>
> Netlist
> 
> ```
> .subckt NOR2D clk a b y x vdd vss
> .param K_LEN=8
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
> <img src="https://github.com/marz-dax/vlsi/blob/17cc37f1b42bfdc290ab3d8e605193e8295cdeb8/dynamic-cmos-cla-adder/standard-cells/or2-dyn/hspice/or2_dyn_trans.png" width="800">
> 
> transient output voltage waveforms (parasitic extraction).
> 
> <img src="https://github.com/marz-dax/vlsi/blob/17cc37f1b42bfdc290ab3d8e605193e8295cdeb8/dynamic-cmos-cla-adder/standard-cells/or2-dyn/hspice/or2_dyn_trans_pex.png" width="800">
> 
# Schematic
>
> <img src="https://github.com/marz-dax/vlsi/blob/17cc37f1b42bfdc290ab3d8e605193e8295cdeb8/dynamic-cmos-cla-adder/standard-cells/or2-dyn/schematic/or2_dyn_sch.png" width="800">
>
# Layout
>
> <img src="https://github.com/marz-dax/vlsi/blob/17cc37f1b42bfdc290ab3d8e605193e8295cdeb8/dynamic-cmos-cla-adder/standard-cells/or2-dyn/layout/or2_dyn_layout.png" width="800">