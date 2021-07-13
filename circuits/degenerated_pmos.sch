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
N 1720 -1660 1790 -1660 { lab=pp}
N 1720 -1640 1790 -1640 { lab=vss}
N 1520 -1340 1520 -1310 { lab=vdd}
N 1520 -1250 1520 -1230 { lab=gnd}
N 1580 -1340 1580 -1310 { lab=vbiasn}
N 1580 -1250 1580 -1230 { lab=gnd}
N 1660 -1660 1660 -1630 { lab=pp}
N 1660 -1570 1660 -1550 { lab=vss}
N 1660 -1660 1720 -1660 { lab=pp}
N 1690 -1640 1720 -1640 { lab=vss}
N 1690 -1640 1690 -1550 { lab=vss}
N 1660 -1550 1690 -1550 { lab=vss}
N 1820 -1590 1820 -1550 { lab=#net1}
N 1820 -1490 1820 -1450 { lab=vtest}
N 1760 -1520 1780 -1520 { lab=vbiasp}
N 1450 -1340 1450 -1310 { lab=vbiasp}
N 1450 -1250 1450 -1230 { lab=gnd}
N 1820 -1750 1820 -1710 { lab=vdd}
N 1750 -1420 1780 -1420 { lab=vbiasn}
N 1820 -1390 1820 -1350 { lab=vss}
N 1820 -1420 1850 -1420 { lab=vss}
N 1820 -1520 1840 -1520 { lab=vdd}
N 1990 -1610 1990 -1560 { lab=#net2}
N 1940 -1530 1950 -1530 { lab=vbiasp}
N 1990 -1420 1990 -1390 { lab=vss}
N 1820 -1350 1940 -1350 { lab=vss}
N 1920 -1420 1950 -1420 { lab=vbiasn}
N 1890 -1680 1960 -1680 { lab=pp2}
N 1890 -1660 1960 -1660 { lab=vss}
N 1830 -1680 1830 -1650 { lab=pp2}
N 1830 -1590 1830 -1570 { lab=vss}
N 1830 -1680 1890 -1680 { lab=pp2}
N 1860 -1660 1890 -1660 { lab=vss}
N 1860 -1660 1860 -1570 { lab=vss}
N 1830 -1570 1860 -1570 { lab=vss}
N 1990 -1740 1990 -1730 { lab=vdd}
N 1820 -1740 1990 -1740 { lab=vdd}
N 1990 -1530 2010 -1530 { lab=vdd}
N 1940 -1350 1990 -1350 { lab=vss}
N 1990 -1390 1990 -1350 { lab=vss}
N 1990 -1500 1990 -1450 { lab=vtest2}
N 2080 -1520 2080 -1500 { lab=vtest}
N 2010 -1470 2040 -1470 { lab=vtest2}
N 2080 -1470 2100 -1470 { lab=vdd}
N 1990 -1350 2080 -1350 { lab=vss}
N 2080 -1440 2080 -1420 { lab=vtest3}
N 2080 -1360 2080 -1350 { lab=vss}
C {/home/mast/Progetti/Telluride2021/sky130_TAC3/circuits/piezoresistor.sym} 1910 -1650 0 0 {name=x1}
C {devices/vsource.sym} 1580 -1280 0 0 {name=V2 value="pulse(0 0.8 10u 1u 1u 1 1)"}
C {devices/vsource.sym} 1520 -1280 0 0 {name=V3 value="pulse(0 1.2 10u 1u 1u 1 1)"}
C {devices/lab_pin.sym} 1520 -1330 0 0 {name=l4 lab=vdd}
C {devices/lab_pin.sym} 1520 -1230 0 0 {name=l5 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1580 -1330 0 0 {name=l6 lab=vbiasn}
C {devices/lab_pin.sym} 1580 -1230 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {devices/code_shown.sym} 2130 -1550 0 0 {name=ngspice only_toplevel=false value=".option savecurrents
.option gmin = 1e-18
vvss vss 0 0
.control
save all

tran 100n 500m

plot all.vtest all.vtest2
plot vtest3
plot pp
plot all.vmeas#branch

op

.endc
"}
C {devices/vsource.sym} 1660 -1600 0 0 {name=V1 value="pwl(0 0 50m 100 400m 200)"}
C {devices/code.sym} 1520 -1460 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/lab_pin.sym} 1660 -1550 0 0 {name=l8 lab=vss}
C {devices/lab_pin.sym} 1730 -1660 0 0 {name=l9 sig_type=std_logic lab=pp}
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
W=4
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
C {devices/vsource.sym} 1450 -1280 0 0 {name=V4 value="pulse(0 0 10u 1u 1u 1 1)"}
C {devices/lab_pin.sym} 1450 -1330 0 0 {name=l10 lab=vbiasp}
C {devices/lab_pin.sym} 1450 -1230 0 0 {name=l11 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 1760 -1520 0 0 {name=l12 sig_type=std_logic lab=vbiasp}
C {devices/lab_pin.sym} 1850 -1420 0 0 {name=l14 lab=vss}
C {devices/lab_pin.sym} 1840 -1520 0 0 {name=l1 lab=vdd}
C {devices/lab_pin.sym} 1820 -1350 0 0 {name=l3 lab=vss}
C {devices/lab_pin.sym} 1820 -1740 0 0 {name=l15 lab=vdd}
C {devices/lab_pin.sym} 1750 -1420 0 0 {name=l13 lab=vbiasn}
C {sky130_fd_pr/nfet_01v8.sym} 1970 -1420 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 1970 -1530 0 0 {name=M4
L=0.15
W=4
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
C {devices/lab_pin.sym} 1920 -1420 0 0 {name=l18 sig_type=std_logic lab=vbiasn}
C {/home/mast/Progetti/Telluride2021/sky130_TAC3/circuits/piezoresistor.sym} 2080 -1670 0 0 {name=x2}
C {devices/vsource.sym} 1830 -1620 0 0 {name=V5 value="pwl(0 10 50m 10 400m 10)"}
C {devices/lab_pin.sym} 1830 -1570 0 0 {name=l17 lab=vss}
C {devices/lab_pin.sym} 1900 -1680 0 0 {name=l19 sig_type=std_logic lab=pp2}
C {devices/lab_pin.sym} 1940 -1530 0 0 {name=l20 sig_type=std_logic lab=vbiasp}
C {devices/lab_pin.sym} 2010 -1530 0 0 {name=l16 lab=vdd}
C {devices/lab_pin.sym} 1990 -1480 0 0 {name=l21 lab=vtest2}
C {sky130_fd_pr/pfet_01v8.sym} 2060 -1470 0 0 {name=M5
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
C {devices/lab_pin.sym} 2080 -1520 0 0 {name=l22 sig_type=std_logic lab=vtest}
C {devices/lab_pin.sym} 2030 -1470 0 0 {name=l23 lab=vtest2}
C {devices/lab_pin.sym} 2100 -1470 0 0 {name=l24 lab=vdd}
C {devices/ammeter.sym} 2080 -1390 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 2080 -1430 0 0 {name=l25 sig_type=std_logic lab=vtest3}
