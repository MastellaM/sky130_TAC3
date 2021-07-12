v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 840 -400 840 -360 { lab=vdd}
N 660 -400 840 -400 { lab=vdd}
N 660 -400 660 -200 { lab=vdd}
N 660 -140 660 -100 { lab=0}
N 740 -140 740 -100 { lab=0}
N 740 -260 740 -200 { lab=#net1}
N 760 -260 760 -100 { lab=0}
N 780 -260 780 -100 { lab=0}
N 800 -260 800 -100 { lab=0}
N 820 -260 820 -100 { lab=0}
N 840 -260 840 -100 { lab=0}
N 860 -260 860 -100 { lab=0}
N 880 -260 880 -100 { lab=0}
N 900 -260 900 -100 { lab=0}
N 920 -260 920 -100 { lab=0}
N 940 -260 940 -100 { lab=0}
N 660 -100 940 -100 { lab=0}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {/home/cmaier/.xschem/sky130_TAC3/playground/dividerchain.sym} 840 -320 0 0 {name=xdut}
C {devices/vsource.sym} 660 -170 0 1 {name=Vdd value=1.2}
C {devices/isource.sym} 740 -170 0 1 {name=Iref value=100n}
C {devices/lab_pin.sym} 660 -100 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 660 -400 0 0 {name=lvdd lab=vdd}
C {devices/code.sym} 10 -210 0 0 {name=TT_MODELS
spice_ignore=false
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/code_shown.sym} 0 -730 0 0 {name=ngspice 
only_toplevel=true 
value=" 
.options gmin=1e-15 abstol=1f
.option savecurrents
.control
save all
op
write test_dividerchain.op.raw
dc Iref 10u 100u 1u
write test_dividerchain.raw
plot v.xdut.viin#branch/v.xdut.vi0#branch
plot v.xdut.vi0#branch/v.xdut.vi1#branch
plot v.xdut.vi1#branch/v.xdut.vi2#branch
plot v.xdut.vi2#branch/v.xdut.vi3#branch
plot v.xdut.vi3#branch/v.xdut.vi4#branch
plot v.xdut.vi4#branch/v.xdut.vi5#branch
plot v.xdut.vi5#branch/v.xdut.vi6#branch
plot v.xdut.vi6#branch/v.xdut.vi7#branch
plot v.xdut.vi7#branch/v.xdut.vi8#branch
plot v.xdut.vi8#branch/v.xdut.vi9#branch
.endc
"}
