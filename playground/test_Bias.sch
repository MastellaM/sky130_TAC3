v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 600 -360 620 -360 { lab=vbp}
N 620 -420 620 -360 { lab=vbp}
N 620 -420 840 -420 { lab=vbp}
N 840 -420 840 -360 { lab=vbp}
N 820 -360 840 -360 { lab=vbp}
N 600 -340 640 -340 { lab=vbn}
N 640 -340 640 -260 { lab=vbn}
N 840 -340 840 -260 { lab=vbn}
N 760 -300 760 -200 { lab=0}
N 540 -200 760 -200 { lab=0}
N 540 -300 540 -200 { lab=0}
N 540 -500 540 -380 { lab=vdd}
N 540 -500 760 -500 { lab=vdd}
N 760 -500 760 -380 { lab=vdd}
N 440 -200 540 -200 { lab=0}
N 380 -200 380 -180 { lab=0}
N 380 -420 380 -200 { lab=0}
N 380 -500 380 -480 { lab=vdd}
N 380 -500 540 -500 { lab=vdd}
N 440 -320 440 -300 { lab=disable}
N 440 -240 440 -200 { lab=0}
N 440 -320 480 -320 { lab=disable}
N 820 -340 840 -340 { lab=vbn}
N 640 -260 840 -260 { lab=vbn}
N 380 -200 440 -200 { lab=0}
N 880 -320 880 -280 { lab=Rext}
N 820 -320 880 -320 { lab=Rext}
N 880 -220 880 -200 { lab=0}
N 760 -200 880 -200 { lab=0}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {ToBias.sym} 760 -340 0 0 {name=xbias}
C {ToBiasStartup.sym} 540 -340 0 0 {name=xstart}
C {devices/gnd.sym} 380 -180 0 0 {name=l2 lab=0}
C {devices/vsource.sym} 380 -450 0 1 {name=VDD value="dc 1.2 pwl(0 0 100m 1.2)" }
C {devices/vsource.sym} 440 -270 0 1 {name=Voff value=0}
C {devices/lab_wire.sym} 470 -500 0 0 {name=l3 lab=vdd}
C {devices/lab_wire.sym} 470 -320 0 0 {name=l5 lab=disable}
C {devices/lab_wire.sym} 690 -420 0 0 {name=l6 lab=vbp}
C {devices/lab_wire.sym} 690 -260 0 0 {name=l7 lab=vbn}
C {devices/lab_wire.sym} 880 -320 0 0 {name=l8 lab=vres}
C {devices/code_shown.sym} 0 -750 0 0 {name=ngspice 
only_toplevel=true 
value=" 
.options gmin=1e-15 abstol=1p
.option savecurrents
.nodeset v(vbp)=200m
.control
save all
op
write test_Bias.op.raw
tran 10u 2
write test_Bias.raw
plot vdd vbp vbn vres
plot v.xbias.vi1#branch v.xbias.vi4#branch
.endc
"}
C {devices/code.sym} 110 -210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/res.sym} 880 -250 0 1 {name=Rext
value=10Meg
footprint=0603
device=resistor
m=1}
C {devices/lab_wire.sym} 600 -320 2 0 {name=l4 lab=vbr}
