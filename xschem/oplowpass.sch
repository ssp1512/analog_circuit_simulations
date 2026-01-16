v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -20 -1080 140 -1080 {lab=vin}
N -20 -1080 -20 -950 {lab=vin}
N -20 -890 -20 -770 {lab=GND}
N 200 -1080 340 -1080 {lab=vn1}
N 500 -1240 710 -1240 {lab=vn2}
N 500 -1240 500 -1080 {lab=vn2}
N -20 -850 500 -850 {lab=GND}
N 500 -850 700 -850 {lab=GND}
N 400 -1080 500 -1080 {lab=vn2}
N 590 -880 590 -850 {lab=GND}
N 500 -1060 700 -1060 {lab=vn2}
N 500 -1080 500 -1060 {lab=vn2}
N 750 -1000 750 -850 {lab=GND}
N 700 -850 750 -850 {lab=GND}
N 590 -1040 700 -1040 {lab=#net1}
N 590 -1040 590 -940 {lab=#net1}
N 810 -1050 980 -1050 {lab=vout}
N 770 -1240 870 -1240 {lab=vout}
N 870 -1240 870 -1050 {lab=vout}
C {res.sym} 370 -1080 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 740 -1240 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} 170 -1080 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -20 -920 0 0 {name=V1 value=" AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {vsource.sym} 590 -910 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -20 -770 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 40 -1080 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} 270 -1080 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 570 -1240 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {simulator_commands_shown.sym} -470 -1100 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.control 
OP
save all
write Complete_ckt.raw
set appendwrite
Ac DEC 100 1 10e6
plot vdb(vout)
plot v(vout)
plot phase(vout)
MEAS AC gain_db MAX vdb(vout) FROM=1 TO=10e6
LET vm3db = gain_db-3.0
print vm3db
MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
** phase measurement
LET phase_deg = cph(vout)*180/PI
MEAS AC phase_zero FIND phase_deg AT=fzero
MEAS AC phase_pole FIND phase_deg AT=fpole
MEAS AC phase_mid FIND phase_deg AT=fmid
** MEAS fero fpole using phase
LET phase_zero_ph = phase_mid - 45
MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
.endc
.end
"}
C {lab_wire.sym} 930 -1050 0 0 {name=p4 sig_type=std_logic lab=vout}
