v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 40 -130 60 {lab=GND}
N -130 -50 -130 -20 {lab=vnmic}
N -130 -50 -80 -50 {lab=vnmic}
N -20 -50 10 -50 {lab=vn1}
N 70 -50 90 -50 {lab=xxx}
N 220 -40 220 -20 {lab=GND}
N 170 -140 190 -140 {lab=#net1}
N 170 -140 170 -50 {lab=#net1}
N 170 -200 190 -200 {lab=#net1}
N 170 -200 170 -140 {lab=#net1}
N 150 -50 210 -50 {lab=#net1}
N 250 -140 250 -100 {lab=#net2}
N 250 -200 250 -140 {lab=#net2}
N 200 -80 200 -50 {lab=#net1}
N 200 -90 210 -90 {lab=#net1}
N 200 -90 200 -80 {lab=#net1}
N 200 -50 200 -0 {lab=#net1}
N 200 60 200 90 {lab=GND}
N 370 -20 370 30 {lab=GND}
N 250 -120 370 -120 {lab=#net2}
N 370 -120 370 -80 {lab=#net2}
C {vsource.sym} -130 10 0 0 {name=V1 value=3 savecurrent=false}
C {res.sym} -50 -50 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 40 -50 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 120 -50 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -130 60 0 0 {name=l1 lab=GND}
C {vccs.sym} 250 -70 0 0 {name=G1 value=3
}
C {gnd.sym} -130 60 0 0 {name=l2 lab=GND}
C {gnd.sym} 220 -20 0 0 {name=l3 lab=GND}
C {res.sym} 220 -140 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 220 -200 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 200 30 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} 200 90 0 0 {name=l4 lab=GND}
C {capa.sym} 370 -50 0 0 {name=C3
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 370 30 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -90 -50 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} 0 -50 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 80 -50 0 0 {name=p3 sig_type=std_logic lab=vn2}
