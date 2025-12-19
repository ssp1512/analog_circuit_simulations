.TITLE NMOS experiment

.lib/home/swati/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.global vdd gnd
.temp 27

xmn1 out In gnd gnd sky130_fd_pr__nfet_01v8 w=7 l=2 m=2
Rd vdd out 8k

vgs In gnd dc 0.9
vsup vdd gnd dc 1.8

.op
.control
run
print v(In)
print v(out)
.endc
.end
