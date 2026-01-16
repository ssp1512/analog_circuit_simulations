v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -50 -30 -20 -30 {lab=vip}
N -50 10 -20 10 {lab=vim}
N 20 -70 20 -40 {lab=vop}
N 20 -70 50 -70 {lab=vop}
N 20 20 20 50 {lab=vom}
N 20 50 50 50 {lab=vom}
C {vcvs.sym} 20 -10 0 0 {name=E1 value=1000}
C {iopin.sym} 50 -70 0 0 {name=p1 lab=vop}
C {iopin.sym} 50 50 0 0 {name=p2 lab=vom}
C {iopin.sym} -50 -30 2 0 {name=p3 lab=vip}
C {iopin.sym} -50 10 2 0 {name=p4 lab=vim}
