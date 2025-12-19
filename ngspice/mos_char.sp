.TITLE NMOS experiment

.lib /home/swati/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.global vdd gnd
.temp 27

xmn1 out In gnd gnd sky130_fd_pr__nfet_01v8 w=7 l=2 m=2
Rd vdd out 8K

Vgs In gnd dc 0.9
Vsup vdd gnd dc 1.8

*.op
.dc Vgs 0 1.8 0.01
.control
run

plot v(out)
plot v(In)
.endc

.end
