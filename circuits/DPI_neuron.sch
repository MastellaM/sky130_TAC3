v {xschem version=2.9.9 file_version=1.2 

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 2600 -1130 2630 -1130 { lab=input_UI}
N 2600 -1040 2600 -1010 { lab=vss}
N 2600 -1070 2620 -1070 { lab=vdd}
N 2620 -1070 2670 -1070 { lab=vdd}
N 2870 -1150 2890 -1150 { lab=vdd}
N 2890 -1210 2890 -1150 { lab=vdd}
N 3010 -1150 3020 -1150 { lab=vdd}
N 3020 -1260 3020 -1150 { lab=vdd}
N 3010 -1260 3010 -1240 { lab=vdd}
N 3010 -1210 3020 -1210 { lab=vdd}
N 2840 -1260 3020 -1260 { lab=vdd}
N 2890 -1260 2890 -1210 { lab=vdd}
N 2760 -1260 2840 -1260 { lab=vdd}
N 2830 -1150 2830 -1070 { lab=vmem_VO}
N 2870 -1020 2890 -1020 { lab=vss}
N 2890 -1020 2890 -910 { lab=vss}
N 3010 -1020 3030 -1020 { lab=vss}
N 3010 -960 3030 -960 { lab=vss}
N 2870 -910 3030 -910 { lab=vss}
N 3030 -1020 3030 -910 { lab=vss}
N 2870 -1120 2870 -1050 { lab=vna}
N 2830 -1070 2830 -1020 { lab=vmem_VO}
N 3010 -1120 3010 -1040 { lab=vk}
N 2870 -1080 2970 -1080 { lab=vna}
N 2940 -1210 2970 -1210 { lab=#net1}
N 2940 -1210 2940 -1180 { lab=#net1}
N 2940 -1180 3010 -1180 { lab=#net1}
N 3010 -930 3010 -910 { lab=vss}
N 2590 -980 2620 -980 { lab=vleak_NI}
N 2700 -1070 2830 -1070 { lab=vmem_VO}
N 2800 -1130 2800 -1110 { lab=vna}
N 2720 -1070 2720 -1030 { lab=vmem_VO}
N 2660 -950 2660 -910 { lab=vss}
N 2660 -980 2660 -950 { lab=vss}
N 2660 -910 2870 -910 { lab=vss}
N 2770 -940 2770 -910 { lab=vss}
N 2770 -970 2770 -930 { lab=vss}
N 2700 -970 2700 -910 { lab=vss}
N 3120 -1010 3120 -950 { lab=vss}
N 3010 -1080 3120 -1080 { lab=vk}
N 3120 -1080 3120 -1070 { lab=vk}
N 3120 -950 3120 -910 { lab=vss}
N 3020 -910 3120 -910 { lab=vss}
N 2800 -1110 2800 -1100 { lab=vna}
N 3120 -1090 3120 -1080 { lab=vk}
N 2730 -970 2730 -930 { lab=vk}
N 2530 -1070 2560 -1070 { lab=vgain_NI}
N 2970 -960 2970 -930 { lab=vrefr_NI}
N 2740 -1130 2760 -1130 { lab=vdd}
N 2740 -1260 2740 -1150 { lab=vdd}
N 2740 -1260 2760 -1260 { lab=vdd}
N 2640 -1070 2640 -1050 { lab=vdd}
N 2760 -1180 2760 -1160 { lab=vdd}
N 2740 -1150 2740 -1130 { lab=vdd}
N 2600 -1100 2660 -1100 { lab=input_UI}
N 2700 -1030 2720 -1030 { lab=vmem_VO}
N 2970 -1150 2970 -1080 { lab=vna}
N 2970 -1080 2970 -1020 { lab=vna}
N 2770 -1070 2770 -1000 { lab=vmem_VO}
N 2870 -1180 2890 -1180 { lab=vdd}
N 2760 -1100 2760 -1070 { lab=vmem_VO}
N 2660 -1030 2700 -1030 { lab=vmem_VO}
N 2870 -990 2870 -910 { lab=vss}
N 2630 -1130 2630 -1100 { lab=input_UI}
N 2660 -1040 2660 -1030 { lab=vmem_VO}
N 2760 -1260 2760 -1240 { lab=vdd}
N 2760 -1250 2760 -1170 { lab=vdd}
N 2660 -1010 2680 -1010 {}
N 2680 -1010 2680 -910 {}
C {devices/code.sym} 2220 -1130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/ipin.sym} 2520 -1340 0 0 {name=p1 lab=vdd}
C {devices/ipin.sym} 2520 -1320 0 0 {name=p2 lab=vgain_NI}
C {devices/ipin.sym} 2520 -1300 0 0 {name=p3 lab=vleak_NI}
C {devices/ipin.sym} 2520 -1280 0 0 {name=p4 lab=vrefr_NI}
C {devices/ipin.sym} 2520 -1260 0 0 {name=p5 lab=vss}
C {devices/ipin.sym} 2520 -1360 0 0 {name=p6 lab=input_UI}
C {devices/opin.sym} 2500 -1240 0 0 {name=p7 lab=vmem_VO}
C {sky130_fd_pr/pfet_01v8.sym} 2680 -1070 0 1 {name=M6
L=2
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2580 -1070 0 0 {name=M7
L=2
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2850 -1150 0 0 {name=M9
L=2
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2990 -1150 0 0 {name=M10
L=1
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2990 -1210 0 0 {name=M11
L=1
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2780 -1130 0 1 {name=M13
L=2
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2850 -1020 0 0 {name=M14
L=2
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2990 -1020 0 0 {name=M16
L=2
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2990 -960 0 0 {name=M17
L=2
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2640 -980 0 0 {name=M18
L=2
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2750 -970 0 0 {name=M19
L=1
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 2700 -1000 0 0 {name=C1 model=cap_mim_m3_1 W=20 L=25 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 3120 -1040 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 2600 -1010 0 0 {name=l1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 2940 -1080 0 0 {name=l2 sig_type=std_logic lab=vna}
C {devices/lab_pin.sym} 2810 -1070 0 0 {name=l3 sig_type=std_logic lab=vmem_VO}
C {devices/lab_pin.sym} 3120 -1090 0 0 {name=l5 sig_type=std_logic lab=vk}
C {devices/lab_pin.sym} 2730 -930 0 0 {name=l6 sig_type=std_logic lab=vk}
C {devices/lab_pin.sym} 2760 -1260 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2590 -980 0 0 {name=l13 sig_type=std_logic lab=vleak_NI}
C {devices/lab_pin.sym} 2530 -1070 0 0 {name=l14 sig_type=std_logic lab=vgain_NI}
C {devices/lab_pin.sym} 2970 -930 0 0 {name=l15 sig_type=std_logic lab=vrefr_NI}
C {devices/lab_pin.sym} 2660 -910 0 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 2640 -1050 0 0 {name=l17 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2800 -1100 0 0 {name=l18 sig_type=std_logic lab=vna}
C {devices/lab_pin.sym} 2600 -1130 0 0 {name=l4 sig_type=std_logic lab=input_UI}
