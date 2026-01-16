v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -20 410 -20 {lab=#net1}
N 410 -20 410 -10 {lab=#net1}
N 130 40 260 40 {lab=GND}
N 260 40 260 70 {lab=GND}
N 260 70 410 70 {lab=GND}
N 410 30 410 70 {lab=GND}
N 300 50 300 70 {lab=GND}
N 450 40 510 40 {lab=GND}
N 300 -20 300 -10 {lab=#net1}
N -530 -10 -370 -10 {lab=vin}
N -530 -10 -530 120 {lab=vin}
N -530 180 -530 300 {lab=GND}
N -310 -10 -170 -10 {lab=vn1}
N -10 -170 200 -170 {lab=vn2}
N -10 -170 -10 -10 {lab=vn2}
N -530 220 -10 220 {lab=GND}
N -10 220 190 220 {lab=GND}
N -110 -10 -10 -10 {lab=vn2}
N 80 190 80 220 {lab=GND}
N 190 220 240 220 {lab=GND}
N 20 130 80 130 {lab=#net2}
N 260 -170 500 -170 {lab=vout}
N 500 -170 500 -20 {lab=vout}
N 450 -20 500 -20 {lab=vout}
N 510 40 510 220 {lab=GND}
N 240 220 510 220 {lab=GND}
N 500 -20 590 -20 {lab=vout}
N 20 -10 90 -10 {lab=#net2}
N -10 -10 -10 30 {lab=vn2}
N -10 30 90 30 {lab=vn2}
N 20 -10 20 130 {lab=#net2}
N 130 -40 130 -20 {lab=#net3}
N 130 -40 210 -40 {lab=#net3}
N 210 -40 210 -20 {lab=#net3}
N 270 70 270 90 {lab=GND}
C {vcvs.sym} 130 10 0 0 {name=E1 value=1000}
C {vcvs.sym} 450 10 0 0 {name=E2 value=1}
C {res.sym} 240 -20 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 300 20 0 0 {name=C1
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {res.sym} -140 -10 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 230 -170 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -340 -10 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -530 150 0 0 {name=V1 value=" 0 AC 1" savecurrent=false}
C {vsource.sym} 80 160 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -530 300 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -470 -10 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} -240 -10 0 0 {name=p6 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 60 -170 0 0 {name=p7 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 560 -20 0 0 {name=p1 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -500 -330 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
.op
save all
AC DEC 100 1 10e6
plot vdb(vout)
.endc
.end
"}
C {gnd.sym} 270 90 0 0 {name=l2 lab=GND}
