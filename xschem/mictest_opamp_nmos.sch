v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -430 40 -370 40 {lab=vnmic}
N -430 40 -430 80 {lab=vnmic}
N -430 140 -430 190 {lab=GND}
N -310 40 -250 40 {lab=vn1}
N -190 40 -130 40 {lab=vn2}
N -70 40 -20 40 {lab=virt}
N -70 90 -20 90 {lab=#net1}
N -70 90 -70 130 {lab=#net1}
N -70 190 -70 220 {lab=GND}
N 50 -40 50 20 {lab=ib5u}
N 40 100 40 140 {lab=GND}
N 180 -40 180 10 {lab=GND}
N 100 60 200 60 {lab=vout}
N 200 60 200 90 {lab=vout}
N 200 150 200 200 {lab=GND}
N 30 -120 30 10 {lab=AVDD}
N 30 -120 180 -120 {lab=AVDD}
N 180 -120 180 -100 {lab=AVDD}
N 50 -120 50 -100 {lab=AVDD}
N -40 -150 0 -150 {lab=virt}
N -40 -150 -40 40 {lab=virt}
N -40 -220 -0 -220 {lab=virt}
N -40 -220 -40 -150 {lab=virt}
N 60 -150 90 -150 {lab=vout}
N 90 -150 120 -150 {lab=vout}
N 120 -150 120 60 {lab=vout}
N 60 -220 120 -220 {lab=vout}
N 120 -220 120 -150 {lab=vout}
C {currentmirror1.sym} -140 -80 0 0 {name=x1}
C {res.sym} -340 40 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} -100 40 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -220 40 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -430 110 0 0 {name=V1 value= " 0 AC 1 sin(0 100m 1e3 0 0 0)" savecurrent=false}
C {isource.sym} 50 -70 0 0 {name=I0 value=5u}
C {vsource.sym} -70 160 0 0 {name=V2 value=1.5 savecurrent=false}
C {capa.sym} 200 120 0 0 {name=C2
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 180 -70 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -430 190 0 0 {name=l1 lab=GND}
C {gnd.sym} -70 220 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 140 0 0 {name=l3 lab=GND}
C {gnd.sym} 200 200 0 0 {name=l4 lab=GND}
C {gnd.sym} 180 10 0 0 {name=l5 lab=GND}
C {res.sym} 30 -150 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 30 -220 3 0 {name=C3
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -390 40 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} -260 40 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} -150 40 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} -40 -90 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} 150 -120 0 0 {name=p5 sig_type=std_logic lab=AVDD}
C {lab_wire.sym} 170 60 0 0 {name=p6 sig_type=std_logic lab=vout}
C {lab_wire.sym} 50 -20 0 0 {name=p7 sig_type=std_logic lab=ib5u}
C {devices/code.sym} -290 -560 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -910 -690 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
 SAVE ALL
 OP
 WRITE mictest_opa_nmos.raw
 SET APPENDWRITE
 AC DEC 100 1 10e6
 WRITE mictest_opa_nmos.raw
 **
 MEAS AC gain_db MAX vdb(vout) FROM=0.1 TO=10e6
 LET vm3db = gain_db - 3.0 
 print vm3db
 MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
 MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
 **MEAS AC fmid WHEN vdb(vout)=gain_db
 **Phase Measurement
 LET phase_deg = cph(vout)*180/PI
 MEAS AC phase_zero FIND phase_deg AT=fzero
 MEAS AC phase_pole FIND phase_deg AT=fpole
 **MEAS AC phase_mid FIND phase_deg AT=fmid
 **MEAS fzero fpole using phase
 **LET phase_zero_ph = phase_mid-45
 **MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph
 
**

 TRAN 1u 6m
 MEAS TRAN voutpp PP v(vout) FROM=1m TO=4m
 MEAS TRAN vinpp PP v(vout) FROM=1m TO=4m
let gaintran=voutpp/vinpp
 print gaintran
FOURIER 1k v(vout)
 plot v(vout)
 plot (vnmic)


.ENDC
.end
"}
