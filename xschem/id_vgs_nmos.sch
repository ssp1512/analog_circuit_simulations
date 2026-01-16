v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 -10 -40 -10 {lab=vg}
N -90 -10 -90 -0 {lab=vg}
N -90 60 110 60 {lab=GND}
N 110 -70 110 -0 {lab=vd}
N 0 -70 110 -70 {lab=vd}
N 0 -70 0 -40 {lab=vd}
N -0 20 -0 60 {lab=GND}
N -20 60 -20 80 {lab=GND}
N -0 30 30 30 {lab=GND}
N 30 -10 30 30 {lab=GND}
N 0 -10 30 -10 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -20 -10 0 0 {name=M1
L=1
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -90 30 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 110 30 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -20 80 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -70 -10 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 50 -70 0 0 {name=p2 sig_type=std_logic lab=vd}
C {simulator_commands_shown.sym} -200 -210 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
 OP 
 DC Vds 0 1.8 0.1 Vgs 0.4 1.0 0.1
 plot abs(vds#branch)
.ENDC
"}
C {devices/code.sym} -300 -50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
