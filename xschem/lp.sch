v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1060 -310 -900 -310 {lab=vin}
N -1060 -310 -1060 -180 {lab=vin}
N -1060 -120 -1060 0 {lab=GND}
N -840 -310 -700 -310 {lab=vn1}
N -540 -470 -330 -470 {lab=vn2}
N -540 -470 -540 -310 {lab=vn2}
N -1060 -80 -540 -80 {lab=GND}
N -540 -80 -340 -80 {lab=GND}
N -640 -310 -540 -310 {lab=vn2}
N -450 -110 -450 -80 {lab=GND}
N -540 -310 -540 -290 {lab=vn2}
N -290 -230 -290 -80 {lab=GND}
N -340 -80 -290 -80 {lab=GND}
N -450 -270 -450 -170 {lab=#net1}
N -220 -380 -50 -380 {lab=vout}
N -270 -470 -170 -470 {lab=vout}
N -170 -470 -170 -380 {lab=vout}
N -220 -360 -120 -360 {lab=#net1}
N -120 -360 -120 -270 {lab=#net1}
N -450 -270 -120 -270 {lab=#net1}
N -290 -230 -220 -230 {lab=GND}
N -540 -290 -220 -290 {lab=vn2}
N -220 -320 -220 -290 {lab=vn2}
N -220 -230 -180 -310 {lab=GND}
N -220 -340 -180 -310 {lab=GND}
C {op3.sym} -370 -350 0 0 {name=x1}
C {res.sym} -670 -310 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -300 -470 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -870 -310 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1060 -150 0 0 {name=V1 value=" AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {vsource.sym} -450 -140 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -1060 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -1000 -310 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -770 -310 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -470 -470 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -90 -380 0 0 {name=p4 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} 200 -420 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control 
.OP
AC DEC 100 1 10e6
plot v(vout)
.ENDC

"
}
