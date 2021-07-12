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
N 1120 -140 1140 -140 { lab=vss}
N 1140 -140 1140 -80 { lab=vss}
N 1140 -80 1240 -80 { lab=vss}
N 1120 -110 1120 -80 { lab=vss}
N 1120 -440 1140 -440 { lab=vdd}
N 1120 -500 1140 -500 { lab=vdd}
N 1120 -500 1120 -470 { lab=vdd}
N 1240 -200 1240 -170 { lab=out}
N 1240 -140 1260 -140 { lab=vss}
N 1260 -140 1260 -80 { lab=vss}
N 1240 -80 1260 -80 { lab=vss}
N 1240 -110 1240 -80 { lab=vss}
N 1240 -440 1260 -440 { lab=vdd}
N 1240 -500 1260 -500 { lab=vdd}
N 1240 -500 1240 -470 { lab=vdd}
N 1020 -280 1060 -280 { lab=mem}
N 1140 -500 1140 -440 { lab=vdd}
N 1260 -500 1260 -440 { lab=vdd}
N 1140 -500 1240 -500 { lab=vdd}
N 1120 -80 1140 -80 { lab=vss}
N 1180 -140 1200 -140 { lab=inv}
N 1060 -140 1080 -140 { lab=mem}
N 1060 -440 1080 -440 { lab=mem}
N 1180 -440 1200 -440 { lab=inv}
N 1180 -240 1180 -140 { lab=inv}
N 1060 -280 1060 -140 { lab=mem}
N 1120 -240 1120 -170 { lab=inv}
N 1240 -410 1240 -200 { lab=out}
N 1000 -140 1020 -140 { lab=out}
N 1020 -200 1020 -140 { lab=out}
N 1020 -200 1240 -200 { lab=out}
N 940 -140 960 -140 { lab=vss}
N 940 -140 940 -80 { lab=vss}
N 960 -110 960 -80 { lab=vss}
N 940 -80 960 -80 { lab=vss}
N 960 -80 1120 -80 { lab=vss}
N 1120 -240 1180 -240 { lab=inv}
N 960 -280 960 -170 { lab=mem}
N 1020 -210 1020 -200 { lab=out}
N 1020 -280 1020 -270 { lab=mem}
N 840 -110 840 -80 { lab=vss}
N 840 -80 940 -80 { lab=vss}
N 840 -280 840 -170 { lab=mem}
N 840 -280 960 -280 { lab=mem}
N 1060 -440 1060 -280 { lab=mem}
N 1120 -410 1120 -240 { lab=inv}
N 1180 -440 1180 -240 { lab=inv}
N 960 -280 1020 -280 { lab=mem}
N 660 -440 680 -440 { lab=vdd}
N 660 -500 660 -440 { lab=vdd}
N 860 -500 1120 -500 { lab=vdd}
N 680 -500 680 -470 { lab=vdd}
N 840 -440 860 -440 { lab=vdd}
N 840 -500 860 -500 { lab=vdd}
N 840 -500 840 -470 { lab=vdd}
N 860 -500 860 -440 { lab=vdd}
N 660 -500 680 -500 { lab=vdd}
N 680 -500 840 -500 { lab=vdd}
N 740 -440 800 -440 { lab=mir}
N 740 -440 740 -380 { lab=mir}
N 680 -380 740 -380 { lab=mir}
N 680 -410 680 -380 { lab=mir}
N 520 -500 660 -500 { lab=vdd}
N 520 -500 520 -470 { lab=vdd}
N 520 -320 520 -290 { lab=gcasc}
N 520 -230 520 -80 { lab=vss}
N 700 -80 840 -80 { lab=vss}
N 680 -380 680 -350 { lab=mir}
N 520 -320 640 -320 { lab=gcasc}
N 680 -290 680 -260 { lab=sens}
N 680 -320 700 -320 { lab=vss}
N 700 -320 700 -80 { lab=vss}
N 500 -260 520 -260 { lab=vss}
N 500 -260 500 -80 { lab=vss}
N 500 -80 520 -80 { lab=vss}
N 380 -500 520 -500 { lab=vdd}
N 380 -500 380 -470 { lab=vdd}
N 380 -410 380 -80 { lab=vss}
N 380 -80 500 -80 { lab=vss}
N 720 -440 740 -440 { lab=mir}
N 520 -410 520 -320 { lab=gcasc}
N 680 -80 700 -80 { lab=vss}
N 520 -80 680 -80 { lab=vss}
N 840 -410 840 -380 { lab=#net1}
N 840 -320 840 -280 { lab=mem}
N 560 -260 600 -260 { lab=#net2}
N 660 -260 680 -260 { lab=sens}
N 520 -160 550 -160 { lab=vss}
N 460 -100 460 -80 { lab=vss}
N 580 -260 580 -230 { lab=#net2}
N 580 -110 580 -80 { lab=vss}
N 460 -180 550 -180 { lab=pressure}
N 460 -180 460 -160 { lab=pressure}
C {devices/code_shown.sym} 0 -670 0 0 {name=ngspice 
only_toplevel=true 
value="
.options gmin=1e-15 abstol=1p
.option savecurrents
vvss vss 0 0
.control
save all
tran 10n 5m
write Axon_hillock.raw
plot mem out sens gcasc mir inv
*plot "Input"
plot vsens#branch
plot vin#branch
op
write Axon_hillock_op.raw
wrdata spikes_AH.csv out

.endc
"}
C {sky130_fd_pr/nfet_01v8.sym} 1100 -140 0 0 {name=M2
L=0.15
W=2  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1100 -440 0 0 {name=M11
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1220 -140 0 0 {name=M1
L=0.15
W=2  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1220 -440 0 0 {name=M3
L=0.15
W=4
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/capa.sym} 1020 -240 2 0 {name=C2
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 380 -80 0 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 840 -280 0 0 {name=l1 lab=mem}
C {devices/lab_pin.sym} 1240 -200 2 0 {name=l2 lab=out
}
C {devices/code.sym} 30 -230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/vsource.sym} 380 -440 0 1 {name=V1 value=1.8
}
C {devices/lab_pin.sym} 680 -260 0 1 {name=l12 lab=sens}
C {devices/lab_pin.sym} 380 -500 0 0 {name=l13 sig_type=std_logic lab=vdd}
C {devices/isource.sym} 520 -440 0 1 {name=I2 value=1n}
C {devices/capa.sym} 840 -140 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/ammeter.sym} 630 -260 1 1 {name=Vsens}
C {sky130_fd_pr/pfet_01v8.sym} 820 -440 0 0 {name=M5
L=0.4
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 700 -440 0 1 {name=M6
L=0.4
W=96
nf=1 mult=640
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 520 -320 0 0 {name=l10 lab=gcasc}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 980 -140 0 1 {name=M4
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 660 -320 0 0 {name=M7
L=0.15
W=20  
nf=1 mult=20
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 -260 0 1 {name=M8
L=20
W=0.5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 840 -350 0 1 {name=Vin}
C {devices/lab_pin.sym} 680 -380 0 0 {name=l3 lab=mir}
C {devices/lab_pin.sym} 1180 -240 0 1 {name=l4 lab=inv}
C {devices/title.sym} 160 0 0 0 {name=l5 author="Sahil?, Christoph Maier"}
C {/home/cmaier/.xschem/sky130_TAC3/circuits/piezoresistor.sym} 670 -170 0 0 {name=x1}
C {devices/vsource.sym} 460 -130 0 1 {name=Vpressure value="50 pwl(0 1 2m 140 4m 1)"}
C {devices/lab_pin.sym} 460 -180 0 0 {name=l6 lab=pressure}
