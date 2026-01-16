v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1230 440 -1230 470 {lab=GND}
N -1230 340 -1230 380 {lab=vnmic}
N -1230 340 -1170 340 {lab=vnmic}
N -1110 340 -1070 340 {lab=vn1}
N -1010 340 -980 340 {lab=vn2}
N -890 470 -890 500 {lab=GND}
N -750 390 -750 430 {lab=GND}
N -750 390 -700 390 {lab=GND}
N -890 340 -850 340 {lab=#net1}
N -890 340 -890 410 {lab=#net1}
N -920 340 -920 360 {lab=#net2}
N -920 360 -850 360 {lab=#net2}
N -900 110 -850 110 {lab=#net2}
N -900 110 -900 360 {lab=#net2}
N -900 160 -850 160 {lab=#net2}
N -740 330 -740 350 {lab=#net3}
N -740 330 -700 330 {lab=#net3}
N -790 110 -730 110 {lab=#net3}
N -730 110 -730 330 {lab=#net3}
N -790 160 -730 160 {lab=#net3}
N -800 400 -800 440 {lab=GND}
C {vsource.sym} -1230 410 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {res.sym} -1140 340 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} -1040 340 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} -950 340 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {res.sym} -820 160 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} -820 110 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -700 360 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -890 440 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -1230 470 0 0 {name=l1 lab=GND}
C {gnd.sym} -890 500 0 0 {name=l2 lab=GND}
C {gnd.sym} -750 430 0 0 {name=l3 lab=GND}
C {lab_wire.sym} -1210 340 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -1070 340 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -980 340 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {gnd.sym} -800 440 0 0 {name=l4 lab=GND}
C {opamp_model.sym} -700 520 0 0 {name=x1}
C {simulator_commands_shown.sym} -550 230 0 0 {name=COMMANDS
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
"
"}
