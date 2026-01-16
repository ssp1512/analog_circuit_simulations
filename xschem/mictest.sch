v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 30 -200 60 {lab=GND}
N -200 -70 -200 -30 {lab=vnmic}
N -200 -70 -140 -70 {lab=vnmic}
N -80 -70 -40 -70 {lab=vn1}
N 20 -70 50 -70 {lab=vn2}
N 110 -70 160 -70 {lab=#net1}
N 120 -200 160 -200 {lab=#net1}
N 200 -120 280 -120 {lab=vout}
N 280 -120 280 -80 {lab=vout}
N 120 -200 120 -70 {lab=#net1}
N 120 -150 160 -150 {lab=#net1}
N 220 -200 250 -200 {lab=vout}
N 250 -200 250 -120 {lab=vout}
N 220 -150 250 -150 {lab=vout}
N 140 -110 160 -110 {lab=#net2}
N 140 -110 140 -0 {lab=#net2}
N 140 60 140 90 {lab=GND}
N 280 -20 280 20 {lab=GND}
N 280 -20 330 -20 {lab=GND}
N 280 -80 330 -80 {lab=vout}
N 200 -60 200 -30 {lab=GND}
C {vsource.sym} -200 0 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {res.sym} -110 -70 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -10 -70 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 80 -70 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 190 -150 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 190 -200 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 330 -50 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vcvs.sym} 200 -90 0 0 {name=E1 value=1000}
C {vsource.sym} 140 30 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -200 60 0 0 {name=l1 lab=GND}
C {gnd.sym} 140 90 0 0 {name=l2 lab=GND}
C {gnd.sym} 280 20 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -180 -70 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -40 -70 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 50 -70 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {simulator_commands_shown.sym} -690 -450 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control
op
save all
write mictest.raw
.endc
"}
C {lab_wire.sym} 300 -80 0 0 {name=p4 sig_type=std_logic lab=vout}
C {gnd.sym} 200 -30 0 0 {name=l4 lab=GND}
