v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 10 -10 40 {lab=#net1}
N -120 60 -120 140 {lab=GND}
N -10 -80 -10 -50 {lab=vgds}
N -120 -80 -10 -80 {lab=vgds}
N -120 -80 -120 -0 {lab=vgds}
N -70 -20 -50 -20 {lab=vgds}
N -70 -80 -70 -20 {lab=vgds}
N -10 -20 80 -20 {lab=GND}
N 80 -20 80 140 {lab=GND}
N -120 140 80 140 {lab=GND}
N -10 100 -10 140 {lab=GND}
N -40 140 -40 150 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 -20 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -120 30 0 0 {name=Vds value=1 savecurrent=false}
C {vsource.sym} -10 70 0 0 {name=Vsb value=0 savecurrent=false}
C {gnd.sym} -40 150 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -100 -80 0 0 {name=p1 sig_type=std_logic lab=vgds}
C {simulator_commands_shown.sym} 100 -90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
 OP
 DC Vds 0 1.8 0.05 Vsb 0 0.5 0.1
 plot abs(vds#branch)
 plot sqrt(2*abs(vds#branch))
.ENDC
"}
C {devices/code.sym} -310 150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
