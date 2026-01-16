v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 5 -72.5 -262.5 -67.5 -257.5 {name=vip dir=inout}
B 5 -72.5 -282.5 -67.5 -277.5 {name=vim dir=inout}
N -790 -300 -630 -300 {lab=vin}
N -790 -300 -790 -170 {lab=vin}
N -790 -110 -790 10 {lab=GND}
N -570 -300 -430 -300 {lab=vn1}
N -270 -460 -60 -460 {lab=vn2}
N -270 -460 -270 -300 {lab=vn2}
N -790 -70 -270 -70 {lab=GND}
N -270 -70 -70 -70 {lab=GND}
N -370 -300 -270 -300 {lab=vn2}
N -180 -100 -180 -70 {lab=GND}
N -270 -280 -70 -280 {lab=vn2}
N -270 -300 -270 -280 {lab=vn2}
N -70 -70 -20 -70 {lab=GND}
N -180 -260 -70 -260 {lab=#net1}
N -180 -260 -180 -160 {lab=#net1}
N 0 -460 100 -460 {lab=#net2}
N -0 -230 -0 -70 {lab=GND}
N -20 -70 0 -70 {lab=GND}
N 70 -280 220 -280 {lab=#net2}
N 100 -460 100 -280 {lab=#net2}
C {res.sym} -400 -300 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -30 -460 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -600 -300 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -790 -140 0 0 {name=V1 value=" AC 1 sin(0 1m 1e3 0 0 0)" savecurrent=false}
C {vsource.sym} -180 -130 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -790 10 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -730 -300 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_wire.sym} -500 -300 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -200 -460 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {simulator_commands_shown.sym} -1240 -320 0 0 {name=COMMANDS
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
C {lab_wire.sym} 160 -280 0 0 {name=p4 sig_type=std_logic lab=vout}
C {op3.sym} -90 -150 0 0 {name=x1}
