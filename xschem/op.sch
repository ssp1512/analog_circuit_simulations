v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -180 -410 60 -280 {}
L 4 -180 -410 -180 -120 {}
L 4 -180 -120 60 -280 {}
L 4 -180 -410 60 -280 {}
L 4 -180 -410 -180 -120 {}
L 4 -180 -120 60 -280 {}
L 7 50 -280 70 -280 {}
L 7 -200 -320 -180 -320 {}
L 7 -200 -240 -180 -240 {}
L 7 -60 -210 -60 -190 {}
L 7 50 -280 70 -280 {}
L 7 -200 -320 -180 -320 {}
L 7 -200 -240 -180 -240 {}
L 7 -60 -210 -60 -190 {}
B 5 67.5 -282.5 72.5 -277.5 {name=vop dir=inout}
B 5 -202.5 -322.5 -197.5 -317.5 {name=vip dir=inout}
B 5 -202.5 -242.5 -197.5 -237.5 {name=vim dir=inout}
B 5 -62.5 -192.5 -57.5 -187.5 {name=vom dir=inout}
B 5 67.5 -282.5 72.5 -277.5 {name=vop dir=inout}
B 5 -202.5 -322.5 -197.5 -317.5 {name=vip dir=inout}
B 5 -202.5 -242.5 -197.5 -237.5 {name=vim dir=inout}
B 5 -62.5 -192.5 -57.5 -187.5 {name=vom dir=inout}
T {vop} 75 -276 2 1 0.2 0.2 {}
T {vip} -175 -316 2 1 0.2 0.2 {}
T {vim} -175 -236 2 1 0.2 0.2 {}
T {vom} -56 -215 1 1 0.2 0.2 {}
T {@symname} -137.5 -276 0 0 0.3 0.3 {}
T {vop} 75 -276 2 1 0.2 0.2 {}
T {vip} -175 -316 2 1 0.2 0.2 {}
T {vim} -175 -236 2 1 0.2 0.2 {}
T {vom} -56 -215 1 1 0.2 0.2 {}
T {@symname} -137.5 -276 0 0 0.3 0.3 {}
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
N 140 -110 140 0 {lab=#net2}
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
C {vsource.sym} 140 30 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -200 60 0 0 {name=l1 lab=GND}
C {gnd.sym} 140 90 0 0 {name=l2 lab=GND}
C {gnd.sym} 280 20 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -180 -70 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -40 -70 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 50 -70 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {simulator_commands_shown.sym} -330 -300 0 0 {name=COMMANDS
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
C {vsource.sym} -200 0 0 0 {name=V3 value="0 AC 1" savecurrent=false}
C {res.sym} -110 -70 3 0 {name=R4
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -10 -70 3 0 {name=C4
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 80 -70 3 0 {name=R5
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 190 -150 3 0 {name=R6
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 190 -200 3 0 {name=C5
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 330 -50 0 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 140 30 0 0 {name=V4 value=1.5 savecurrent=false}
C {gnd.sym} -200 60 0 0 {name=l5 lab=GND}
C {gnd.sym} 140 90 0 0 {name=l6 lab=GND}
C {gnd.sym} 280 20 0 0 {name=l7 lab=GND}
C {lab_wire.sym} -180 -70 0 0 {name=p5 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -40 -70 0 0 {name=p6 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 50 -70 0 0 {name=p7 sig_type=std_logic lab=vn2}
C {simulator_commands_shown.sym} -330 -300 0 0 {name=COMMANDS1
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
C {lab_wire.sym} 300 -80 0 0 {name=p8 sig_type=std_logic lab=vout}
C {gnd.sym} 200 -30 0 0 {name=l8 lab=GND}
C {vsource.sym} -200 0 0 0 {name=V5 value="0 AC 1" savecurrent=false}
C {res.sym} -110 -70 3 0 {name=R7
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -10 -70 3 0 {name=C7
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 80 -70 3 0 {name=R8
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} 190 -150 3 0 {name=R9
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 190 -200 3 0 {name=C8
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 330 -50 0 0 {name=C9
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 140 30 0 0 {name=V6 value=1.5 savecurrent=false}
C {gnd.sym} -200 60 0 0 {name=l9 lab=GND}
C {gnd.sym} 140 90 0 0 {name=l10 lab=GND}
C {gnd.sym} 280 20 0 0 {name=l11 lab=GND}
C {lab_wire.sym} -180 -70 0 0 {name=p9 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -40 -70 0 0 {name=p10 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 50 -70 0 0 {name=p11 sig_type=std_logic lab=vn2}
C {simulator_commands_shown.sym} -330 -300 0 0 {name=COMMANDS2
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
C {lab_wire.sym} 300 -80 0 0 {name=p12 sig_type=std_logic lab=vout}
C {gnd.sym} 200 -30 0 0 {name=l12 lab=GND}
