v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1610 1120 -1530 1120 {lab=#net1}
N -1470 1120 -1330 1120 {lab=#net2}
N -1330 1120 -1330 1130 {lab=#net2}
N -1610 1180 -1480 1180 {lab=#net3}
N -1480 1180 -1480 1210 {lab=#net3}
N -1480 1210 -1330 1210 {lab=#net3}
N -1330 1170 -1330 1210 {lab=#net3}
N -1440 1190 -1440 1210 {lab=#net3}
N -1720 1130 -1650 1130 {lab=vinp}
N -1720 1170 -1650 1170 {lab=vinm}
N -1290 1120 -1230 1120 {lab=vop}
N -1290 1180 -1230 1180 {lab=vom}
N -1440 1120 -1440 1130 {lab=#net2}
N -2360 1140 -2200 1140 {lab=vin}
N -2360 1140 -2360 1270 {lab=vin}
N -2360 1330 -2360 1450 {lab=GND}
N -2140 1140 -2000 1140 {lab=vn1}
N -1840 980 -1630 980 {lab=vn2}
N -1840 980 -1840 1140 {lab=vn2}
N -2360 1370 -1840 1370 {lab=GND}
N -1840 1370 -1640 1370 {lab=GND}
N -1940 1140 -1840 1140 {lab=vn2}
N -1750 1340 -1750 1370 {lab=GND}
N -1640 1370 -1590 1370 {lab=GND}
N -1570 980 -1470 980 {lab=#net4}
N -1730 1170 -1730 1270 {lab=#net5}
N -1730 1270 -1730 1280 {lab=#net5}
N -1750 1280 -1730 1280 {lab=#net5}
N -1840 1140 -1730 1140 {lab=vn2}
N -1730 1130 -1730 1140 {lab=vn2}
N -1220 980 -1220 1120 {lab=#net4}
N -1470 980 -1220 980 {lab=#net4}
N -1220 1180 -1220 1370 {lab=GND}
N -1590 1370 -1220 1370 {lab=GND}
N -1210 1120 -1070 1120 {lab=vout}
C {vcvs.sym} -1610 1150 0 0 {name=E1 value=1000}
C {vcvs.sym} -1290 1150 0 0 {name=E2 value=1000}
C {res.sym} -1500 1120 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} -1440 1160 0 0 {name=C1
m=1
value=160n
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -1720 1130 2 0 {name=p1 lab=vinp}
C {iopin.sym} -1720 1170 2 0 {name=p2 lab=vinm}
C {iopin.sym} -1230 1120 0 0 {name=p3 lab=vop}
C {iopin.sym} -1230 1180 0 0 {name=p4 lab=vom}
C {res.sym} -1970 1140 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -1600 980 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -2170 1140 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -2360 1300 0 0 {name=V1 value=" AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {vsource.sym} -1750 1310 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -2360 1450 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -2300 1140 0 0 {name=p5 sig_type=std_logic lab=vin}
C {lab_wire.sym} -2070 1140 0 0 {name=p6 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -1770 980 0 0 {name=p7 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -1110 1120 0 0 {name=p8 sig_type=std_logic lab=vout}
