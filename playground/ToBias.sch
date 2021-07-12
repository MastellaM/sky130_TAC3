v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 920 -160 920 -100 { lab=vss}
N 740 -250 740 -100 { lab=vss}
N 720 -280 740 -280 { lab=vss}
N 720 -280 720 -100 { lab=vss}
N 900 -480 920 -480 { lab=vdd}
N 920 -540 920 -480 { lab=vdd}
N 900 -540 900 -510 { lab=vdd}
N 740 -340 740 -310 { lab=vbn}
N 800 -480 800 -420 { lab=vbp}
N 780 -480 800 -480 { lab=vbp}
N 840 -480 860 -480 { lab=vbp}
N 840 -420 900 -420 { lab=vbp}
N 800 -280 860 -280 { lab=vbn}
N 800 -340 800 -280 { lab=vbn}
N 740 -340 800 -340 { lab=vbn}
N 900 -450 900 -420 { lab=vbp}
N 780 -280 800 -280 { lab=vbn}
N 720 -480 740 -480 { lab=vdd}
N 720 -540 720 -480 { lab=vdd}
N 740 -540 740 -510 { lab=vdd}
N 900 -280 920 -280 { lab=vss}
N 920 -280 920 -160 { lab=vss}
N 900 -100 920 -100 { lab=vss}
N 900 -540 920 -540 { lab=vdd}
N 740 -100 900 -100 { lab=vss}
N 560 -100 580 -100 { lab=vss}
N 720 -100 740 -100 { lab=vss}
N 580 -100 720 -100 { lab=vss}
N 740 -540 900 -540 { lab=vdd}
N 580 -540 720 -540 { lab=vdd}
N 720 -540 740 -540 { lab=vdd}
N 560 -540 580 -540 { lab=vdd}
N 800 -340 970 -340 { lab=vbn}
N 510 -540 560 -540 { lab=vdd}
N 510 -100 560 -100 { lab=vss}
N 840 -480 840 -420 { lab=vbp}
N 900 -420 970 -420 { lab=vbp}
N 740 -350 740 -340 { lab=vbn}
N 740 -450 740 -410 { lab=#net1}
N 900 -420 900 -410 { lab=vbp}
N 900 -350 900 -310 { lab=#net2}
N 800 -420 840 -420 { lab=vbp}
N 900 -220 970 -220 {}
N 900 -250 900 -220 {}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Christoph Maier"}
C {sky130_fd_pr/nfet_01v8.sym} 880 -280 0 0 {name=M10
L=10
W=1  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 880 -480 0 0 {name=M12
L=10
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 760 -280 0 1 {name=M11
L=10
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 760 -480 0 1 {name=M13
L=10
W=1
nf=1 mult=4
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 520 -100 0 1 {name=p1 lab=vss}
C {devices/iopin.sym} 520 -540 0 1 {name=p2 lab=vdd}
C {devices/iopin.sym} 960 -420 0 0 {name=p3 lab=vbp}
C {devices/iopin.sym} 960 -340 0 0 {name=p4 lab=vbn}
C {devices/iopin.sym} 960 -220 0 0 {name=p5 lab=Rext}
C {devices/ammeter.sym} 900 -380 0 0 {name=Vi1}
C {devices/ammeter.sym} 740 -380 0 0 {name=Vi4}
