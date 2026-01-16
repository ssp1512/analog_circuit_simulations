v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -2500 1530 -2420 1530 {lab=#net1}
N -2360 1530 -2220 1530 {lab=#net2}
N -2220 1530 -2220 1540 {lab=#net2}
N -2500 1590 -2370 1590 {lab=#net3}
N -2370 1590 -2370 1620 {lab=#net3}
N -2370 1620 -2220 1620 {lab=#net3}
N -2220 1580 -2220 1620 {lab=#net3}
N -2330 1600 -2330 1620 {lab=#net3}
N -2180 1530 -2120 1530 {lab=vop}
N -2180 1590 -2120 1590 {lab=vom}
N -2330 1530 -2330 1540 {lab=#net2}
N -3400 1550 -3250 1550 {lab=vin}
N -3400 1550 -3400 1660 {lab=vin}
N -3190 1550 -2980 1550 {lab=vn1}
N -2920 1540 -2540 1540 {lab=vn2}
N -2920 1540 -2920 1550 {lab=vn2}
N -2660 1580 -2540 1580 {lab=#net4}
N -2660 1580 -2660 1650 {lab=#net4}
N -2660 1410 -2320 1410 {lab=vn2}
N -2660 1410 -2660 1540 {lab=vn2}
N -2110 1410 -2110 1530 {lab=vout}
N -2260 1410 -2110 1410 {lab=vout}
N -2110 1530 -1950 1530 {lab=vout}
N -3400 1720 -3400 1780 {lab=GND}
N -2660 1710 -2660 1760 {lab=GND}
N -3400 1760 -2660 1760 {lab=GND}
N -2110 1590 -2110 1760 {lab=GND}
N -2660 1760 -2110 1760 {lab=GND}
C {res.sym} -2950 1550 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -2290 1410 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -3220 1550 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -3400 1690 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -2660 1680 0 0 {name=V2 value=1.5 savecurrent=false}
C {lab_wire.sym} -3340 1550 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -3070 1550 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -2710 1540 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -1980 1530 0 0 {name=p4 sig_type=std_logic lab=vout}
C {vcvs.sym} -2500 1560 0 0 {name=E1 value=1000}
C {vcvs.sym} -2180 1560 0 0 {name=E2 value=1000}
C {res.sym} -2390 1530 3 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -2330 1570 0 0 {name=C2
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -2120 1530 0 0 {name=p7 lab=vop}
C {iopin.sym} -2120 1590 0 0 {name=p8 lab=vom}
C {gnd.sym} -3400 1780 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -1670 1190 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control 
.op
AC DEC 100 1 10e6
plot v(vout)
.endc
"}
