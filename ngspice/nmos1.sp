.TITLE NMOS characterization
.lib /home/swati/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.global vdd gnd
.temp 27

XMN1    out  in  gnd gnd  sky130_fd_pr__nfet_01v8  w=7u l=2u m=2
VSUP    vdd gnd  dc 1.8
VM      n1  out  dc 0    
VDS 	VM  gnd  dc 0
VGS     in  gnd  dc 0

.save v(in) v(out) i(VM)


.op
.dc VGS 0 1.8 0.01
.control
Run
plot i(VM) vs v(in)
Plot: Id vs VDS (= node out voltage across device drain-to-source)
plot i(VM) vs v(out)


.endc

.end

