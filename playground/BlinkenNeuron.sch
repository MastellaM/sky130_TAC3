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
T {https://cmucsd.bitbucket.io/bionicblinkenlights/index.html} 550 -80 0 0 0.4 0.4 {}
N 800 -420 920 -420 { lab=mem}
N 800 -420 800 -350 { lab=mem}
N 640 -420 640 -350 { lab=mem}
N 960 -1020 960 -970 { lab=#net1}
N 1120 -1020 1120 -970 { lab=#net2}
N 1440 -180 1520 -180 { lab=#net3}
N 1440 -60 1520 -60 { lab=#net4}
N 1440 -300 1520 -300 { lab=#net5}
N 1440 -780 1520 -780 { lab=#net6}
N 960 -510 960 -440 { lab=dn}
N 960 -750 960 -660 { lab=out}
N 1280 -1020 1280 -970 { lab=#net7}
N 840 -660 960 -660 { lab=out}
N 1180 -660 1240 -660 { lab=slowout}
N 640 -1020 640 -970 { lab=#net8}
N 800 -1020 800 -970 { lab=#net9}
N 1180 -750 1180 -660 { lab=slowout}
N 1440 -420 1520 -420 { lab=#net10}
N 1440 -540 1520 -540 { lab=#net11}
N 800 -120 960 -120 { lab=0}
N 960 -390 960 -120 { lab=0}
N 780 -320 800 -320 { lab=0}
N 780 -320 780 -120 { lab=0}
N 780 -120 800 -120 { lab=0}
N 960 -420 980 -420 { lab=0}
N 980 -420 980 -120 { lab=0}
N 960 -120 980 -120 { lab=0}
N 1280 -150 1280 -120 { lab=0}
N 980 -120 1280 -120 { lab=0}
N 1280 -320 1280 -210 { lab=reset}
N 840 -320 1280 -320 { lab=reset}
N 1180 -840 1180 -810 { lab=vdd}
N 960 -840 1180 -840 { lab=vdd}
N 960 -840 960 -810 { lab=vdd}
N 1280 -840 1280 -690 { lab=vdd}
N 1180 -840 1280 -840 { lab=vdd}
N 1280 -660 1300 -660 { lab=vdd}
N 1300 -840 1300 -660 { lab=vdd}
N 1280 -840 1300 -840 { lab=vdd}
N 800 -840 800 -690 { lab=vdd}
N 800 -840 960 -840 { lab=vdd}
N 780 -660 800 -660 { lab=vdd}
N 780 -840 780 -660 { lab=vdd}
N 780 -840 800 -840 { lab=vdd}
N 640 -840 640 -810 { lab=vdd}
N 640 -420 800 -420 { lab=mem}
N 320 -1020 320 -970 { lab=#net12}
N 480 -1020 480 -970 { lab=#net13}
N 0 -1020 0 -970 { lab=#net14}
N 160 -1020 160 -970 { lab=#net15}
N 1440 -660 1520 -660 { lab=#net16}
N 1440 -900 1520 -900 { lab=#net17}
N 640 -120 780 -120 { lab=0}
N 640 -840 780 -840 { lab=vdd}
N 1140 -660 1180 -660 { lab=slowout}
N 480 -840 640 -840 { lab=vdd}
N 800 -630 800 -570 { lab=dp}
N 800 -510 800 -500 { lab=#net18}
N 800 -440 800 -420 { lab=mem}
N 960 -580 960 -570 { lab=#net19}
N 960 -660 960 -640 { lab=out}
N 1280 -440 1280 -320 { lab=reset}
N 1280 -630 1280 -500 { lab=#net20}
N 960 -660 990 -660 { lab=out}
N 1050 -660 1080 -660 { lab=#net21}
N 640 -290 640 -210 { lab=#net22}
N 640 -150 640 -120 { lab=0}
N 800 -150 800 -120 { lab=0}
N 800 -290 800 -210 { lab=#net23}
N 480 -840 480 -810 { lab=vdd}
N 480 -750 480 -120 { lab=0}
N 480 -120 640 -120 { lab=0}
N 640 -470 640 -420 { lab=mem}
N 640 -750 640 -590 { lab=#net24}
N 480 -520 610 -520 { lab=0}
N 320 -540 610 -540 { lab=pressure}
N 320 -540 320 -210 { lab=pressure}
N 320 -150 320 -120 { lab=0}
N 320 -120 480 -120 { lab=0}
C {devices/code_shown.sym} 0 -890 0 0 {name=ngspice 
only_toplevel=true 
value=" 
.option savecurrents
.control
save all
tran 100u 2
plot v(vdd,mem)/Vin#branch
plot mem dn dp out slowout reset
plot Vin#branch Vout#branch Vlatchup#branch 
+Vreset#branch Vslowout#branch Vcap#branch
+Vdischarge#branch
write BllinkenNeuron.raw
wrdata BlinkenNeuron.csv mem dn dp out slowout reset
.endc
"}
C {sky130_fd_pr/nfet_01v8.sym} 940 -420 0 0 {name=M1
L=0.15
W=10  
nf=1 mult=200
model=nfet_01v8
spiceprefix=X
}
C {devices/capa.sym} 1180 -780 0 0 {name=C2
m=1
value=2u
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 480 -780 0 1 {name=Vdd value="1.8 pwl(0 0 1m 1.8)"
}
C {devices/capa.sym} 640 -320 0 1 {name=C1
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {devices/ammeter.sym} 640 -780 0 0 {name=Vin}
C {sky130_fd_pr/pfet_01v8.sym} 820 -660 0 1 {name=M3
L=0.15
W=10
nf=1 mult=2000
model=pfet_01v8
spiceprefix=X
}
C {devices/res.sym} 1280 -180 0 0 {name=R2
value=10k
footprint=0603
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 820 -320 0 1 {name=M2
L=0.15
W=10
nf=1 mult=2000
model=nfet_01v8
spiceprefix=X
}
C {devices/res.sym} 960 -540 0 0 {name=R6
value=100
footprint=0603
device=resistor
m=1}
C {devices/res.sym} 960 -780 0 0 {name=R1
value=330
footprint=0603
device=resistor
m=1}
C {devices/res.sym} 1110 -660 1 0 {name=R5
value=33k
footprint=0603
device=resistor
m=1}
C {sky130_fd_pr/pfet_01v8.sym} 1260 -660 0 0 {name=M4
L=0.15
W=10
nf=1 mult=200
model=pfet_01v8
spiceprefix=X
}
C {devices/title.sym} 160 0 0 0 {name=l1 author="Christoph Maier"}
C {devices/lab_pin.sym} 320 -120 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 480 -840 0 0 {name=l3 lab=vdd}
C {devices/res.sym} 800 -540 0 0 {name=R4
value=500
footprint=0603
device=resistor
m=1}
C {devices/lab_pin.sym} 640 -420 0 0 {name=l4 lab=mem}
C {devices/lab_pin.sym} 960 -720 0 0 {name=l5 lab=out}
C {devices/lab_pin.sym} 1180 -720 0 0 {name=l6 lab=slowout}
C {devices/lab_pin.sym} 1280 -280 0 0 {name=l7 lab=reset}
C {devices/code.sym} 60 -190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/lab_pin.sym} 960 -480 0 0 {name=l8 lab=dn}
C {devices/lab_pin.sym} 800 -600 0 0 {name=l9 lab=dp}
C {devices/ammeter.sym} 800 -470 0 0 {name=Vlatchup}
C {devices/ammeter.sym} 960 -610 0 0 {name=Vout}
C {devices/ammeter.sym} 1280 -470 0 0 {name=Vreset}
C {devices/ammeter.sym} 1020 -660 3 0 {name=Vslowout}
C {devices/ammeter.sym} 640 -180 0 0 {name=Vcap}
C {devices/ammeter.sym} 800 -180 0 0 {name=Vdischarge}
C {/home/cmaier/.xschem/sky130_TAC3/circuits/piezoresistor.sym} 730 -530 0 0 {name=xR3}
C {devices/vsource.sym} 320 -180 0 1 {name=Vpressure value="50 pwl(0 50 2 1)"
}
C {devices/lab_pin.sym} 320 -540 0 0 {name=l10 lab=pressure}
