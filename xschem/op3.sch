v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -150 -40 -70 -40 {lab=#net1}
N -10 -40 130 -40 {lab=#net2}
N 130 -40 130 -30 {lab=#net2}
N -150 20 -20 20 {lab=#net3}
N -20 20 -20 50 {lab=#net3}
N -20 50 130 50 {lab=#net3}
N 130 10 130 50 {lab=#net3}
N 20 30 20 50 {lab=#net3}
N -260 -30 -190 -30 {lab=vinp}
N -260 10 -190 10 {lab=vinm}
N 170 -40 230 -40 {lab=vop}
N 170 20 230 20 {lab=vom}
N 20 -40 20 -30 {lab=#net2}
C {vcvs.sym} -150 -10 0 0 {name=E1 value=1000}
C {vcvs.sym} 170 -10 0 0 {name=E2 value=1000}
C {res.sym} -40 -40 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 20 0 0 0 {name=C1
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -260 -30 2 0 {name=p1 lab=vinp}
C {iopin.sym} -260 10 2 0 {name=p2 lab=vinm}
C {iopin.sym} 230 -40 0 0 {name=p3 lab=vop}
C {iopin.sym} 230 20 0 0 {name=p4 lab=vom}
