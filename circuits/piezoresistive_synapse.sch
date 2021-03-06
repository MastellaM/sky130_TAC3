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
N 1720 -1270 1790 -1270 { lab=pressure_in}
N 1720 -1250 1790 -1250 { lab=vss}
N 1660 -1270 1720 -1270 { lab=pressure_in}
N 1690 -1250 1720 -1250 { lab=vss}
N 1820 -1490 1820 -1450 { lab=active_piezoresistor}
N 1760 -1520 1780 -1520 { lab=vbiasp}
N 1750 -1420 1780 -1420 { lab=vbiasn}
N 1820 -1390 1820 -1350 { lab=#net1}
N 1820 -1420 1850 -1420 { lab=vss}
N 1820 -1520 1840 -1520 { lab=vdd}
N 2040 -1190 2040 -1140 { lab=vss}
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
N 2040 -1470 2040 -1420 { lab=reference}
N 2360 -1550 2360 -1530 { lab=reference}
N 2290 -1500 2320 -1500 { lab=active_piezoresistor}
N 2360 -1500 2380 -1500 { lab=vdd}
N 2360 -1470 2360 -1450 { lab=syn_UO}
N 1820 -1350 1820 -1320 { lab=#net1}
N 1820 -1200 1820 -1170 { lab=vss}
N 1880 -1260 1880 -1230 { lab=pp2}
N 1880 -1170 1880 -1150 { lab=vss}
N 1820 -1170 1820 -1150 { lab=vss}
N 2040 -1560 2040 -1530 { lab=vdd}
N 1820 -1560 2040 -1560 { lab=vdd}
N 1820 -1560 1820 -1540 { lab=vdd}
N 2040 -1390 2060 -1390 { lab=vss}
C {piezoresistor.sym} 1910 -1260 0 0 {name=x1}
C {devices/code.sym} 1520 -1460 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/lab_pin.sym} 1730 -1270 0 0 {name=l9 sig_type=std_logic lab=pressure_in}
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
C {devices/lab_pin.sym} 1820 -1470 0 0 {name=l2 sig_type=std_logic lab=active_piezoresistor}
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
C {devices/vsource.sym} 1880 -1200 0 0 {name=V5 value="pwl(0 50 50m 50 400m 50)"}
C {devices/lab_pin.sym} 1950 -1260 0 0 {name=l19 sig_type=std_logic lab=pp2}
C {devices/lab_pin.sym} 1990 -1500 0 0 {name=l20 sig_type=std_logic lab=vbiasp}
C {devices/lab_pin.sym} 2060 -1500 0 0 {name=l16 lab=vdd}
C {devices/lab_pin.sym} 2040 -1450 0 0 {name=l21 lab=reference}
C {sky130_fd_pr/pfet_01v8.sym} 2340 -1500 0 0 {name=M5
L=0.15
W=50
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
C {devices/lab_pin.sym} 2360 -1550 0 0 {name=l22 lab=reference}
C {devices/lab_pin.sym} 2380 -1500 0 0 {name=l24 lab=vdd}
C {devices/lab_pin.sym} 1740 -1250 0 0 {name=l3 lab=vss}
C {devices/lab_pin.sym} 1970 -1240 0 0 {name=l8 lab=vss}
C {devices/lab_pin.sym} 1820 -1160 0 0 {name=l15 lab=vss}
C {devices/lab_pin.sym} 2040 -1150 0 0 {name=l17 lab=vss}
C {devices/lab_pin.sym} 1930 -1560 0 0 {name=l23 lab=vdd}
C {devices/lab_pin.sym} 2310 -1500 0 0 {name=l26 sig_type=std_logic lab=active_piezoresistor}
C {devices/lab_pin.sym} 2360 -1450 0 0 {name=l27 lab=syn_UO}
C {devices/lab_pin.sym} 2060 -1390 0 0 {name=l28 lab=vss}
C {devices/ipin.sym} 1610 -1670 0 0 {name=p1 lab=vbiasn}
C {devices/ipin.sym} 1610 -1610 0 0 {name=p3 lab=pressure_in}
C {devices/opin.sym} 1590 -1550 0 0 {name=p4 lab=syn_UO}
C {devices/ipin.sym} 1610 -1700 0 0 {name=p5 lab=vbiasp}
C {devices/ipin.sym} 1610 -1730 0 0 {name=p6 lab=vdd}
C {devices/ipin.sym} 1610 -1580 0 0 {name=p7 lab=vss}
