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
N 30 -140 30 -120 { lab=vdd}
N 30 40 30 60 { lab=vss}
N 460 40 460 60 { lab=vss}
N 460 -150 460 -120 { lab=#net1}
N 370 -50 380 -50 { lab=vgain_NI}
N 370 -30 380 -30 { lab=vleak_NI}
N 370 -10 380 -10 { lab=vrefr_NI}
N -30 -50 -20 -50 { lab=vbiasp}
N -30 -30 -20 -30 { lab=vbiasn}
N -30 -10 -20 -10 { lab=pressure_in}
N -660 -80 -660 -50 { lab=vdd}
N -490 -80 -490 -50 { lab=vdd}
N -320 -80 -320 -50 { lab=vdd}
N -490 -80 -320 -80 { lab=vdd}
N -660 -80 -490 -80 { lab=vdd}
N -660 10 -660 30 { lab=vleak_NI}
N -490 10 -490 30 { lab=vgain_NI}
N -320 10 -320 40 { lab=vrefr_NI}
N -320 70 -320 100 { lab=vss}
N -490 60 -490 90 { lab=vss}
N -660 60 -660 90 { lab=vss}
N -700 20 -700 60 { lab=vleak_NI}
N -700 20 -660 20 { lab=vleak_NI}
N -530 20 -530 60 { lab=vgain_NI}
N -530 20 -490 20 { lab=vgain_NI}
N -360 30 -360 70 { lab=vrefr_NI}
N -360 30 -320 30 { lab=vrefr_NI}
N -660 100 -320 100 { lab=vss}
N -660 90 -660 100 { lab=vss}
N -490 90 -490 100 { lab=vss}
N -190 -150 -190 -110 { lab=vdd}
N -190 -50 -190 -20 { lab=vss}
N -680 100 -660 100 { lab=vss}
N 540 -70 570 -70 { lab=vmem}
N 570 -90 570 -70 { lab=vmem}
N 350 -70 380 -70 { lab=#net2}
N -450 290 -450 320 { lab=vbiasp}
N -450 380 -450 400 { lab=vss}
N -450 160 -450 200 { lab=vdd}
N -490 230 -490 290 { lab=vbiasp}
N -490 290 -450 290 { lab=vbiasp}
N -450 260 -450 290 { lab=vbiasp}
N -590 170 -590 200 { lab=vdd}
N -590 350 -590 380 { lab=vss}
N -590 260 -590 320 { lab=vbiasn}
N -630 300 -630 350 { lab=vbiasn}
N -630 300 -590 300 { lab=vbiasn}
N -590 380 -450 380 { lab=vss}
N -590 160 -590 170 { lab=vdd}
N -590 160 -450 160 { lab=vdd}
N -450 200 -450 230 { lab=vdd}
N 80 -70 90 -70 { lab=#net3}
N 90 -70 90 -40 { lab=#net3}
N 90 -40 130 -40 { lab=#net3}
N 130 -40 130 -10 { lab=#net3}
N 90 20 170 20 { lab=vss}
N 170 -70 170 -40 { lab=#net4}
N 210 -100 230 -100 { lab=#net4}
N 220 -100 220 -60 { lab=#net4}
N 170 -60 220 -60 { lab=#net4}
N 170 -130 270 -130 { lab=vdd}
N 270 -70 290 -70 { lab=#net5}
N 270 -130 270 -100 { lab=vdd}
N 170 -130 170 -100 { lab=vdd}
N 210 -150 210 -130 { lab=vdd}
N 150 20 150 50 { lab=vss}
N 170 -10 170 20 { lab=vss}
N 90 -10 90 20 { lab=vss}
N 460 -240 460 -210 { lab=vdd}
C {DPI_neuron.sym} 530 -40 0 0 {name=x2}
C {devices/lab_pin.sym} 30 -140 0 0 {name=l4 lab=vdd}
C {devices/lab_pin.sym} 30 60 0 0 {name=l1 lab=vss}
C {devices/lab_pin.sym} 460 60 0 0 {name=l3 lab=vss}
C {devices/lab_pin.sym} 370 -50 0 0 {name=l5 sig_type=std_logic lab=vgain_NI}
C {devices/lab_pin.sym} 370 -30 0 0 {name=l6 sig_type=std_logic lab=vleak_NI}
C {devices/lab_pin.sym} 370 -10 0 0 {name=l7 sig_type=std_logic lab=vrefr_NI}
C {devices/lab_pin.sym} -30 -50 0 0 {name=l8 sig_type=std_logic lab=vbiasp}
C {devices/lab_pin.sym} -30 -30 0 0 {name=l9 sig_type=std_logic lab=vbiasn}
C {devices/lab_pin.sym} -30 -10 0 0 {name=l10 sig_type=std_logic lab=pressure_in}
C {devices/isource.sym} -320 -20 0 0 {name=I0 value="pulse(0 0.1n 1u 1u 1u 1 1)"}
C {devices/isource.sym} -490 -20 0 0 {name=I1 value="pulse(0 10n 1u 1u 1u 1 1)"}
C {devices/isource.sym} -660 -20 0 0 {name=I2 value="pulse(0 0.01n 1u 1u 1u 1 1)"}
C {sky130_fd_pr/nfet_01v8.sym} -680 60 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -510 60 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -340 70 0 0 {name=M3
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
C {devices/lab_pin.sym} -700 20 0 0 {name=l11 sig_type=std_logic lab=vleak_NI}
C {devices/lab_pin.sym} -530 20 0 0 {name=l12 sig_type=std_logic lab=vgain_NI}
C {devices/lab_pin.sym} -360 30 0 0 {name=l13 sig_type=std_logic lab=vrefr_NI}
C {devices/lab_pin.sym} -660 -80 0 0 {name=l14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -680 100 0 0 {name=l15 lab=vss}
C {devices/vsource.sym} -190 -80 0 0 {name=V4 value="pulse(0 1.2 0.1u 1u 1u 1 1)"}
C {devices/lab_pin.sym} -190 -150 0 0 {name=l20 lab=vdd}
C {devices/lab_pin.sym} -190 -20 0 0 {name=l21 lab=vss}
C {piezoresistive_synapse.sym} 30 -30 0 0 {name=x1}
C {devices/code_shown.sym} 610 -190 0 0 {name=ngspice only_toplevel=false value=".option savecurrents
.option gmin = 1e-18
vvss vss 0 0
v5 pressure_in 0 40
.control
save all

*let i=0.01

*while i le 200
*alter pressure_in i
*tran 1u 1
*plot "vmem" vs "time"
*plot "vout" vs "time"
*let i=i+10
*end
tran 100u 5

plot all.vmem
plot vsyn
plot all.vmeas#branch
plot all.vmeas2#branch
plot pressure_in

op

*wrdata pressure_in.csv all.pressure_in
wrdata spikes_DPI_coll.csv all.vmem
wrdata power_consumption.csv all.vmeas2#branch
.endc
"}
C {devices/lab_pin.sym} 570 -90 0 0 {name=l43 lab=vmem}
C {devices/ammeter.sym} 320 -70 3 0 {name=vmeas}
C {devices/code.sym} -890 -120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/noconn.sym} 570 -90 0 0 {name=l22}
C {devices/lab_pin.sym} -630 300 0 0 {name=l19 lab=vbiasn}
C {devices/lab_pin.sym} -450 300 0 0 {name=l25 lab=vbiasp}
C {devices/lab_pin.sym} -450 400 0 0 {name=l26 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} -470 230 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} -610 350 0 0 {name=M10
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
C {devices/isource.sym} -590 230 0 0 {name=I3 value="pulse(0 100u 1u 1u 1u 10 10)"}
C {devices/lab_pin.sym} -590 160 0 0 {name=l47 sig_type=std_logic lab=vdd}
C {devices/isource.sym} -450 350 0 0 {name=I4 value="pulse(0 100u 1u 1u 1u 10 10)"}
C {sky130_fd_pr/nfet_01v8.sym} 110 -10 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 150 -10 0 0 {name=M5
L=2
W=4
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
C {sky130_fd_pr/pfet_01v8.sym} 190 -100 0 1 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 250 -100 0 0 {name=M7
L=2
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
C {devices/lab_pin.sym} 210 -150 0 0 {name=l17 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 150 50 0 0 {name=l23 sig_type=std_logic lab=vss}
C {devices/ammeter.sym} 460 -180 0 0 {name=Vmeas2}
C {devices/lab_pin.sym} 460 -240 0 0 {name=l2 sig_type=std_logic lab=vdd}
