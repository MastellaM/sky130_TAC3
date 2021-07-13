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
N 1720 -1270 1790 -1270 { lab=pp}
N 1720 -1250 1790 -1250 { lab=vss}
N 1520 -1340 1520 -1310 { lab=vdd}
N 1520 -1250 1520 -1230 { lab=vss}
N 1660 -1270 1660 -1240 { lab=pp}
N 1660 -1270 1720 -1270 { lab=pp}
N 1690 -1250 1720 -1250 { lab=vss}
N 1820 -1490 1820 -1450 { lab=vtest}
N 1760 -1520 1780 -1520 { lab=vbiasp}
N 1350 -1320 1350 -1290 { lab=vbiasp}
N 1350 -1230 1350 -1210 { lab=vss}
N 1750 -1420 1780 -1420 { lab=vbiasn}
N 1820 -1390 1820 -1350 { lab=#net1}
N 1820 -1420 1850 -1420 { lab=vss}
N 1820 -1520 1840 -1520 { lab=vdd}
N 1990 -1500 2000 -1500 { lab=vbiasp}
N 1970 -1390 2000 -1390 { lab=vbiasn}
N 1940 -1260 2010 -1260 { lab=pp2}
N 1940 -1240 2010 -1240 { lab=vss}
N 1880 -1260 1940 -1260 { lab=pp2}
N 1910 -1240 1940 -1240 { lab=vss}
N 1910 -1240 1910 -1150 { lab=vss}
N 1880 -1150 1910 -1150 { lab=vss}
N 2040 -1320 2040 -1310 { lab=#net2}
N 2040 -1500 2060 -1500 { lab=vdd}
N 2040 -1360 2040 -1320 { lab=#net2}
N 2040 -1470 2040 -1420 { lab=vtest2}
N 2130 -1490 2130 -1470 { lab=vtest2}
N 2060 -1440 2090 -1440 { lab=vtest}
N 2130 -1440 2150 -1440 { lab=vdd}
N 2130 -1410 2130 -1390 { lab=vtest3}
N 2130 -1330 2130 -1320 { lab=vss}
N 1820 -1350 1820 -1320 { lab=#net1}
N 1820 -1200 1820 -1170 { lab=#net3}
N 1690 -1250 1690 -1180 { lab=vss}
N 1660 -1180 1690 -1180 { lab=vss}
N 1880 -1260 1880 -1230 { lab=pp2}
N 1880 -1170 1880 -1150 { lab=vss}
N 2040 -1560 2040 -1530 { lab=vdd}
N 1820 -1560 2040 -1560 { lab=vdd}
N 1820 -1560 1820 -1540 { lab=vdd}
N 2040 -1390 2060 -1390 { lab=vss}
N 2130 -1320 2130 -1280 { lab=vss}
N 1820 -1110 1820 -1090 { lab=vss}
N 2040 -1190 2040 -1160 { lab=#net4}
N 2040 -1100 2040 -1080 { lab=vss}
N 1820 -1080 2040 -1080 { lab=vss}
N 1820 -1090 1820 -1080 { lab=vss}
N 1350 -1450 1350 -1410 { lab=vdd}
N 1310 -1380 1310 -1320 { lab=vbiasp}
N 1310 -1320 1350 -1320 { lab=vbiasp}
N 1350 -1350 1350 -1320 { lab=vbiasp}
N 1210 -1440 1210 -1410 { lab=vdd}
N 1210 -1260 1210 -1230 { lab=vss}
N 1210 -1350 1210 -1290 { lab=vbiasn}
N 1170 -1310 1170 -1260 { lab=vbiasn}
N 1170 -1310 1210 -1310 { lab=vbiasn}
N 1210 -1230 1350 -1230 { lab=vss}
N 1210 -1450 1210 -1440 { lab=vdd}
N 1210 -1450 1350 -1450 { lab=vdd}
N 1350 -1410 1350 -1380 { lab=vdd}
C {piezoresistor.sym} 1910 -1260 0 0 {name=x1}
C {devices/vsource.sym} 1520 -1280 0 0 {name=V3 value=1.2}
C {devices/lab_pin.sym} 1520 -1330 0 0 {name=l4 lab=vdd}
C {devices/lab_pin.sym} 1520 -1230 0 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1170 -1310 0 0 {name=l6 lab=vbiasn}
C {devices/code_shown.sym} 2300 -1550 0 0 {name=ngspice only_toplevel=false value=".option savecurrents
.option gmin = 1e-18
vvss vss 0 0
.control
save all


dc v1 0 50 1

plot all.vtest all.vtest2
plot vtest3
plot pp
plot all.vmeas#branch
plot all.vmeas1#branch
plot all.vmeas2#branch

op
wrdata current_stage.csv all.vmeas#branch
wrdata voltage_piezo.csv all.vtest
wrdata current_piezo.csv all.vmeas1#branch
wrdata voltage_reference.csv all.vtest2
wrdata current_reference.csv all.vmeas2#branch
.endc
"}
C {devices/vsource.sym} 1660 -1210 0 0 {name=V1 value=0}
C {devices/code.sym} 1520 -1460 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/lab_pin.sym} 1730 -1270 0 0 {name=l9 sig_type=std_logic lab=pp}
C {sky130_fd_pr/nfet_01v8.sym} 1800 -1420 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 1800 -1520 0 0 {name=M2
L=0.15
W=8
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
C {devices/lab_pin.sym} 1820 -1470 0 0 {name=l2 sig_type=std_logic lab=vtest}
C {devices/isource.sym} 1350 -1260 0 0 {name=I4 value=100u}
C {devices/lab_pin.sym} 1350 -1310 0 0 {name=l10 lab=vbiasp}
C {devices/lab_pin.sym} 1350 -1210 0 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1760 -1520 0 0 {name=l12 sig_type=std_logic lab=vbiasp}
C {devices/lab_pin.sym} 1850 -1420 0 0 {name=l14 lab=vss}
C {devices/lab_pin.sym} 1840 -1520 0 0 {name=l1 lab=vdd}
C {devices/lab_pin.sym} 1750 -1420 0 0 {name=l13 lab=vbiasn}
C {sky130_fd_pr/nfet_01v8.sym} 2020 -1390 0 0 {name=M3
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 2020 -1500 0 0 {name=M4
L=0.15
W=8
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
C {devices/lab_pin.sym} 1970 -1390 0 0 {name=l18 sig_type=std_logic lab=vbiasn}
C {piezoresistor.sym} 2130 -1250 0 0 {name=x2}
C {devices/vsource.sym} 1880 -1200 0 0 {name=V5 value=10}
C {devices/lab_pin.sym} 1950 -1260 0 0 {name=l19 sig_type=std_logic lab=pp2}
C {devices/lab_pin.sym} 1990 -1500 0 0 {name=l20 sig_type=std_logic lab=vbiasp}
C {devices/lab_pin.sym} 2060 -1500 0 0 {name=l16 lab=vdd}
C {devices/lab_pin.sym} 2040 -1450 0 0 {name=l21 lab=vtest2}
C {sky130_fd_pr/pfet_01v8.sym} 2110 -1440 0 0 {name=M5
L=0.15
W=20
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
C {devices/lab_pin.sym} 2130 -1490 0 0 {name=l22 lab=vtest2}
C {devices/lab_pin.sym} 2150 -1440 0 0 {name=l24 lab=vdd}
C {devices/ammeter.sym} 2130 -1360 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 2130 -1400 0 0 {name=l25 sig_type=std_logic lab=vtest3}
C {devices/lab_pin.sym} 1740 -1250 0 0 {name=l3 lab=vss}
C {devices/lab_pin.sym} 1970 -1240 0 0 {name=l8 lab=vss}
C {devices/lab_pin.sym} 1930 -1560 0 0 {name=l23 lab=vdd}
C {devices/lab_pin.sym} 2080 -1440 0 0 {name=l26 sig_type=std_logic lab=vtest}
C {devices/lab_pin.sym} 2130 -1280 0 0 {name=l27 lab=vss}
C {devices/lab_pin.sym} 2060 -1390 0 0 {name=l28 lab=vss}
C {devices/ammeter.sym} 1820 -1140 0 0 {name=Vmeas1}
C {devices/ammeter.sym} 2040 -1130 0 0 {name=Vmeas2}
C {devices/lab_pin.sym} 1820 -1080 0 0 {name=l15 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 1330 -1380 0 0 {name=M6
L=0.15
W=8
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
C {sky130_fd_pr/nfet_01v8.sym} 1190 -1260 0 0 {name=M7
L=0.15
W=1
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
C {devices/isource.sym} 1210 -1380 0 0 {name=I1 value=100u}
C {devices/lab_pin.sym} 1210 -1450 0 0 {name=l17 sig_type=std_logic lab=vdd}
