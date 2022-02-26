# HSpice
>
> Netlist
> 
> ```
> .option scale=90n
> .subckt DUAL_RAIL_AND_NAND  CLK A_L B_L A_H B_H Y_H Y_L
>       MP8 N$71 GND VDD VDD p L=4 W=4
>       MP7 N$70 GND VDD VDD p L=4 W=4
>       MN7 Y_H N$61 GND GND n L=2 W=4
>       MP6 Y_H N$61 VDD VDD p L=2 W=8
>       MN6 Y_L N$62 GND GND n L=2 W=4
>       MP5 Y_L N$62 VDD VDD p L=2 W=8
>       MN5 N$20 CLK GND GND n L=2 W=8
>       MN4 N$15 B_H N$20 GND n L=2 W=16
>       MN3 N$61 A_H N$15 GND n L=2 W=16
>       MN2 N$62 A_L N$20 GND n L=2 W=8
>       MN1 N$62 B_L N$20 GND n L=2 W=8
>       MP4 N$61 CLK VDD VDD p L=2 W=4
>       MP3 N$61 N$62 N$71 VDD p L=2 W=4
>       MP2 N$62 N$61 N$70 VDD p L=2 W=4
>       MP1 N$62 CLK VDD VDD p L=2 W=4
> .ends DUAL_RAIL_AND_NAND
> ```
> 
> Transient output voltage waveforms. 
>
> y1{w/nodes a_h=1, b_h=1, a_l=0, b_l=0}
> y2{w/nodes a_h=1, b_h=0, a_l=0, b_l=1}.
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/b98f1184f7c8af464bbfbccba130b024da2a73d1/standard-cells/dual-rail-and-nand/hspice/dual_rail_and_nand_trans.png" width="800">
> 
# Schematic
>
> A differential keeper is utilized. When one rail evaluates low, the opposite keeper turns on.
>
> The keepers are also split for the reason as in the dynamic 2-Input NOR gate.
> 
> <img src="https://github.com/marz-dax/dynamic-cmos-cla-adder/blob/b98f1184f7c8af464bbfbccba130b024da2a73d1/standard-cells/dual-rail-and-nand/schematic/dual_rail_and_nand_sch.png" width="800">
>