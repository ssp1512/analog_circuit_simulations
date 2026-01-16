v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -60 0 30 {lab=vout}
N -80 -90 -40 -90 {lab=Vin}
N -80 -90 -80 60 {lab=Vin}
N -80 60 -40 60 {lab=Vin}
N -0 90 -0 140 {lab=GND}
N -170 -10 -80 -10 {lab=Vin}
N 0 -10 150 -10 {lab=vout}
N 0 -90 100 -90 {lab=#net1}
N 100 -160 100 -90 {lab=#net1}
N 0 -160 100 -160 {lab=#net1}
N -0 60 100 60 {lab=GND}
N 100 60 100 120 {lab=GND}
N 0 120 100 120 {lab=GND}
N -170 -10 -170 20 {lab=Vin}
N -170 80 -170 120 {lab=GND}
N -170 120 10 120 {lab=GND}
N -140 -220 0 -220 {lab=#net1}
N 0 -220 0 -160 {lab=#net1}
N 0 -160 0 -120 {lab=#net1}
N -250 -160 -140 -160 {lab=GND}
N -250 -160 -250 120 {lab=GND}
N -250 120 -170 120 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 60 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -90 0 0 {name=M10
L=0.35
W=1
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} 0 140 0 0 {name=l1 lab=GND}
C {devices/code.sym} 420 -180 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {opin.sym} 150 -10 0 0 {name=p2 lab=vout}
C {simulator_commands_shown.sym} 310 40 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value=
"
.control
run
tran 0.1n 50n
*dc V2 0 1.8 0.1
plot v(vin) v(vout)
.endc
.end"
}
C {vsource.sym} -140 -190 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -170 50 0 0 {name=V2 value="0 PULSE(0 1.8 0 1n 1n 10n 20n)" savecurrent=false}
C {lab_wire.sym} -170 -10 0 0 {name=p1 sig_type=std_logic lab=Vin}
