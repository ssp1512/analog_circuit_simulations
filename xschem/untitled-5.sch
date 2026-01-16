v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 630 -190 700 -190 {lab=vinp}
N 850 40 930 40 {lab=AVSS}
N 930 40 930 120 {lab=AVSS}
N 410 120 930 120 {lab=AVSS}
N 850 70 850 120 {lab=AVSS}
N 580 70 580 120 {lab=AVSS}
N 480 40 580 40 {lab=AVSS}
N 480 40 480 120 {lab=AVSS}
N 620 40 810 40 {lab=ib5u}
N 580 -60 580 10 {lab=ib5u}
N 430 -60 580 -60 {lab=ib5u}
N 660 -20 660 40 {lab=ib5u}
N 580 -20 660 -20 {lab=ib5u}
N 740 -160 740 -120 {lab=#net1}
N 740 -120 920 -120 {lab=#net1}
N 920 -120 930 -120 {lab=#net1}
N 930 -160 930 -120 {lab=#net1}
N 740 -330 740 -220 {lab=#net2}
N 930 -330 930 -220 {lab=vout}
N 850 -120 850 10 {lab=#net1}
N 780 -360 890 -360 {lab=#net2}
N 930 -480 930 -390 {lab=AVDD}
N 570 -480 930 -480 {lab=AVDD}
N 740 -480 740 -390 {lab=AVDD}
N 680 -360 740 -360 {lab=AVDD}
N 680 -480 680 -360 {lab=AVDD}
N 930 -360 1010 -360 {lab=AVDD}
N 1010 -480 1010 -360 {lab=AVDD}
N 930 -480 1010 -480 {lab=AVDD}
N 930 -270 1060 -270 {lab=vout}
N 970 -190 1030 -190 {lab=vinm}
N 830 -360 830 -300 {lab=#net2}
N 740 -300 830 -300 {lab=#net2}
N 740 -190 800 -190 {lab=#net1}
N 800 -190 800 -120 {lab=#net1}
N 890 -190 930 -190 {lab=#net1}
N 890 -190 890 -120 {lab=#net1}
C {iopin.sym} 630 -190 2 0 {name=p1 lab=vinp}
C {iopin.sym} 1030 -190 2 1 {name=p2 lab=vinm}
C {iopin.sym} 570 -480 2 0 {name=p5 lab=AVDD}
C {iopin.sym} 410 120 2 0 {name=p6 lab=AVSS}
C {sky130_fd_pr/nfet_01v8.sym} 600 40 0 1 {name=M2
L=1
W=5 
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 830 40 0 0 {name=M1
L=1
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 430 -60 2 0 {name=p7 lab=ib5u}
C {sky130_fd_pr/nfet_01v8.sym} 720 -190 0 0 {name=M3
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 950 -190 0 1 {name=M4
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 760 -360 0 1 {name=M10
L=2
W=5
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 910 -360 0 0 {name=M5
L=2
W=5
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} 1060 -270 0 0 {name=p8 lab=vout}
