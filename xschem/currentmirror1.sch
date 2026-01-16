v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 710 -370 780 -370 {lab=vinp}
N 930 -140 1010 -140 {lab=AVSS}
N 1010 -140 1010 -60 {lab=AVSS}
N 490 -60 1010 -60 {lab=AVSS}
N 930 -110 930 -60 {lab=AVSS}
N 660 -110 660 -60 {lab=AVSS}
N 560 -140 660 -140 {lab=AVSS}
N 560 -140 560 -60 {lab=AVSS}
N 700 -140 890 -140 {lab=ib5u}
N 660 -240 660 -170 {lab=ib5u}
N 510 -240 660 -240 {lab=ib5u}
N 740 -200 740 -140 {lab=ib5u}
N 660 -200 740 -200 {lab=ib5u}
N 820 -340 820 -300 {lab=#net1}
N 820 -300 1000 -300 {lab=#net1}
N 1000 -300 1010 -300 {lab=#net1}
N 1010 -340 1010 -300 {lab=#net1}
N 820 -510 820 -400 {lab=#net2}
N 1010 -510 1010 -400 {lab=vout}
N 930 -300 930 -170 {lab=#net1}
N 860 -540 970 -540 {lab=#net2}
N 1010 -660 1010 -570 {lab=AVDD}
N 650 -660 1010 -660 {lab=AVDD}
N 820 -660 820 -570 {lab=AVDD}
N 760 -540 820 -540 {lab=AVDD}
N 760 -660 760 -540 {lab=AVDD}
N 1010 -540 1090 -540 {lab=AVDD}
N 1090 -660 1090 -540 {lab=AVDD}
N 1010 -660 1090 -660 {lab=AVDD}
N 1010 -450 1140 -450 {lab=vout}
N 1050 -370 1110 -370 {lab=vinm}
N 910 -540 910 -480 {lab=#net2}
N 820 -480 910 -480 {lab=#net2}
N 820 -370 880 -370 {lab=#net1}
N 880 -370 880 -300 {lab=#net1}
N 970 -370 1010 -370 {lab=#net1}
N 970 -370 970 -300 {lab=#net1}
C {iopin.sym} 710 -370 2 0 {name=p1 lab=vinp}
C {iopin.sym} 1110 -370 2 1 {name=p2 lab=vinm}
C {iopin.sym} 650 -660 2 0 {name=p5 lab=AVDD}
C {iopin.sym} 490 -60 2 0 {name=p6 lab=AVSS}
C {sky130_fd_pr/nfet_01v8.sym} 680 -140 0 1 {name=M5
L=1
W=5 
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 910 -140 0 0 {name=M6
L=1
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 510 -240 2 0 {name=p7 lab=ib5u}
C {sky130_fd_pr/nfet_01v8.sym} 800 -370 0 0 {name=M3
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1030 -370 0 1 {name=M4
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 840 -540 0 1 {name=M1
L=2
W=5
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 990 -540 0 0 {name=M2
L=2
W=5
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} 1140 -450 0 0 {name=p8 lab=vout}
